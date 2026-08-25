#include "common.h"
#include "GObj.h"
#include "SPObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/save_file.h"
#include "buffers.h"

extern s32 D_8018E030_ovl5[];
extern u8 D_8018E22C_ovl5[];
extern f32 D_80186950_ovl5[];
extern Gfx D_801860A8_ovl5[];
void func_800BB3F0(void);
extern u8 D_8018E258_ovl5;
extern s32 D_80186934_ovl5[];
extern f32 D_80186940_ovl5[];
void func_800A7F74(s32, s32, s32, f32, f32, f32);
extern u8 D_8018E220_ovl5;
void func_8016253C_ovl5(struct GObj *);
/* D_8018E050_ovl5[slot]: racer SLOT (0-3, the controller/setup index used
 * throughout this file as arg0/arg1/i) -> that racer's live GObj objId.
 * Evidence: every reader wraps a slot in this before using it as an index
 * into the objId-keyed entity arrays (gEntitiesNextPosXArray[..], etc), e.g.
 * `gEntitiesNextPosYArray[D_8018E050_ovl5[rec->target]]` right after `rec->target` is
 * documented below as a target SLOT. */
extern s32 D_8018E050_ovl5[];

/* Per-racer AI/action record, 12 bytes/racer, indexed by racer SLOT
 * (0-3). D_8018E22C_ovl5 below is a linker splinter of this same array at
 * +4 (the `action` byte) used directly by func_80160088_ovl5 with the same
 * *12 stride -- same memory, different compiled symbol name (see the
 * "Data note" / splat comment above about split symbols).
 * Field evidence is func_8015ED9C_ovl5 / func_80160120_ovl5 /
 * func_8016050C_ovl5 (matching MIPS_TO_C and PORT arms) plus the bare,
 * already-matched func_8015F67C_ovl5 and func_8016050C_ovl5. */
typedef struct RacerAI {
    s32 timer;   /* countdown in ticks; hitting 0 resets `action` to 0
                  * (idle / time to roll a new action) */
    u8 action;   /* 0 idle/reroll picks a new action below; 1 walk toward
                  * -X; 2 walk toward +X; 3 rest; 4 jump/attack (sets
                  * D_800E9FE0[objId].as_u32=1, i.e. "attacking"); 6
                  * overtake-adjust; 7 squeeze-past; 8 chase, re-rolling
                  * whether to actually attack once close (personality
                  * roll idx*6+3) */
    u8 side;     /* 0/1: which of `left`/`right` below is this action's
                  * target neighbour */
    u8 target;   /* racer SLOT (0-3) being chased or reacted to; index
                  * D_8018E050_ovl5[] with it to get that racer's objId */
    u8 left;     /* nearest racer slot with lower X (0xFF = none this
                  * tick); refreshed every func_8015ED9C_ovl5 call */
    u8 right;    /* nearest racer slot with higher X (0xFF = none this
                  * tick); refreshed every func_8015ED9C_ovl5 call */
    u8 unk9[3];  /* unreferenced by any decompiled code so far */
} RacerAI;

extern RacerAI D_8018E228_ovl5[];
extern u8 D_8018E208_ovl5[];
s32 func_8015F4C4_ovl5(s32, s32);
f32 func_801619E0_ovl5(s32);
void func_801642A4_ovl5(s32, s32, s32, s32);
typedef union Unk28Words {
    s32 unk0[10];
} Unk28Words;

extern Unk28Words D_80185FF8_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
extern u8 D_8018E1E0_ovl5[];
extern u8 D_8018E1E1_ovl5;
extern void *D_80186900_ovl5;
extern void *D_80186908_ovl5;
extern void *D_80186910_ovl5;
void func_800A9864(void *, s32, s32);
void func_800AA018(void *);
void func_800AF27C(void);
extern u8 D_8018E1E2_ovl5;
extern u8 D_8018E1E3_ovl5;
extern s32 D_800D6B24;
extern u32 D_800D6B68;
extern s32 D_8018E020_ovl5;
#include "main/contpad.h"
#include "ovl1/game.h"
/* Per-racer setup record, filled once in func_80164EA8_ovl5 from pointer
 * tables read out of the save/controller-setup data (D_80186068/78/88_ovl5,
 * dereferenced per-racer). Evidence: every reader names its copy "kind" or
 * "frame" locally (func_8015DA24_ovl5/func_8015DFC8_ovl5 and others). */
typedef struct RacerSetup {
    s32 kind;   /* character/colour select, 0-3: indexes the per-kind anim
                 * id-pair tables (D_8018664C_ovl5 etc) and size table
                 * D_80186950_ovl5 used for race-order comparisons */
    s32 frame;  /* per-racer value read alongside `kind`; only consumed as
                 * an animation frame argument so far (func_8015DA24_ovl5/
                 * func_8015DFC8_ovl5 local var name "frame") */
} RacerSetup;

extern RacerSetup D_8018E1E8_ovl5[];

typedef union Unk16Bytes {
    s32 unk0[4];
} Unk16Bytes;

extern Unk16Bytes D_80185FB0_ovl5;

#ifdef PORT
/* PORT-only prototypes and helpers for the arms below.
 *
 * Calling convention note: the ROM dispatcher (func_8015CD00_ovl5) keeps the
 * proc's GObj in $a0 untouched while loading only the payload into $a1; the
 * NON_MATCHING draft of it therefore calls these entry points with the
 * payload as the ONLY C argument. The PORT arms adopt exactly those C call
 * shapes and recover the GObj from omCurrentObj, which is the same object
 * for these om-thread mains.
 *
 * Data note: tools/pc/gen_data.py emits each splat symbol as its own C
 * object, padded and aligned by the host compiler, so N64 cross-symbol
 * indexing (base[i] running past a splinter boundary) does not land where it
 * did on the console. The helpers below re-derive those accesses per symbol:
 *   - ovl5_idpair_ reads word i of the 8-word (id,id) pair tables that splat
 *     split 1/7 (D_8018664C/D_80186650, D_8018674C/D_80186750,
 *     D_8018676C/D_80186770, D_8018678C/D_80186790).
 *   - ovl5_pers_ reads byte i of the AI-personality table that splat split
 *     2/3/19 (D_80186918/D_8018691A/D_8018691D). */
void func_8015CE74_ovl5(void);
void func_8015DFC8_ovl5(GObj *gobj, u32 arg1);
void func_80161B4C_ovl5(GObj *gobj, s32 arg1);
void func_80163CC0_ovl5(GObj *gobj, u32 arg1);
void func_80164A34_ovl5(void);
void func_8015DA24_ovl5(GObj *arg0, u32 arg1);
s32 func_8015EAB4_ovl5(s32 arg0);
void func_8015F804_ovl5(s32 arg0);
void func_80164174_ovl5(GObj *arg0);
void func_80162A44_ovl5(GObj *arg0);
/* D_8018E224_ovl5[slot]: per-racer CONTROL/PERSONALITY index (0-4-ish),
 * set once in func_80164EA8_ovl5 from the difficulty-keyed personality
 * ROW table: value 4 means "human, read gPlayerControllers[slot]
 * directly" (see func_8015DA24_ovl5/func_8015DFC8_ovl5 branching on
 * `D_8018E224_ovl5[arg1] == 4`); values 0-3 are a CPU personality row and
 * index the 6-byte-per-row table below via ovl5_pers_(idx*6 + N). */
extern u8 D_8018E224_ovl5[];
void func_800AD1A0(void);
void func_800A9F98(void *, f32);
s32 func_800AA934(void *);
void *func_800A9AA8(u32, s32);
s32 func_800BB4E4(s32, s32, s32);
void animUpdateModelTreeAnimation(GObj *);
void animResetTextureAnimation(GObj *);
void animResetModelAnimation(GObj *);
f32 random_soft_f32(void);
void func_8000BBE0(GObj *, GObj *);
void func_800AA49C(struct DObj *, s32, f32, u32, f32);
s32 func_800AA368(struct DObj *);

static u32 ovl5_idpair_(u32 *first, u32 *rest, s32 i) {
    return (i == 0) ? first[0] : rest[i - 1];
}

/* AI-personality roll ladder: `ovl5_pers_(idx*6 + N)` reads row `idx`
 * (D_8018E224_ovl5[slot], a 0-3 CPU personality picked from the
 * difficulty table) of a 6-byte-per-row table; every reader compares it
 * against `random_soft_s32_range(0x10)` (a 0-15 roll) as a probability
 * out of 16. Evidence per offset, from every decompiled/matched call site:
 *   N=0  func_8015ED9C_ovl5: roll<row[0] -> give up and REST (action 3)
 *        instead of picking a target this cycle.
 *   N=1  func_80160120_ovl5 / func_8016050C_ovl5 (3 sequential rolls,
 *        same offset each time): roll<row[1] -> react to the racer ahead
 *        (squeeze past / overtake / chase); all 3 rolls failing -> REST.
 *   N=2  func_8015F67C_ovl5 (already matched; reads the table directly,
 *        not through this helper): roll<row[2] -> jump/attack (action 4).
 *   N=3  func_8015ED9C_ovl5, action 8 (chase): roll<row[3] -> actually
 *        attack the neighbour once adjacent, else just stop chasing.
 *   N=4  not read by any decompiled code found so far.
 *   N=5  func_8015DA24_ovl5 / func_8015DFC8_ovl5: NOTE this call passes
 *        `D_8018E258_ovl5` (the current STAGE/round index, 0-3), not a
 *        racer's personality slot -- roll>=row[5] keeps a lingering CPU
 *        racer near an item pickup one more tick. Confirmed by reading
 *        both call sites; not a transcription error. */
static u8 ovl5_pers_(s32 i) {
    extern u8 D_80186918_ovl5[];
    extern u8 D_8018691A_ovl5[];
    extern u8 D_8018691D_ovl5[];

    if (i < 2) {
        return D_80186918_ovl5[i];
    }
    if (i < 5) {
        return D_8018691A_ovl5[i - 2];
    }
    return D_8018691D_ovl5[i - 5];
}
#endif
/* Dispatcher for the mini-game object procs. The proc's GObj stays in $a0
 * across every call, so each of these entry points takes it as its first
 * argument and the payload word as the second. */
void func_8015CE74_ovl5(void);
void func_8015DFC8_ovl5(GObj *, u32);
void func_80160AF8_ovl5(GObj *, s32);
void func_80160E6C_ovl5(GObj *, s32);
void func_801611A8_ovl5(GObj *, s32);
void func_8016179C_ovl5(GObj *);
void func_80161B4C_ovl5(GObj *, s32);
void func_80162B1C_ovl5(GObj *arg0, f32 arg1, f32 arg2, f32 arg3);
void func_80162C68_ovl5(GObj *arg0);
void func_80162CCC_ovl5(GObj *arg0);
void func_80163CC0_ovl5(GObj *, u32);
void func_80164490_ovl5(GObj *);
void func_80164A34_ovl5(void);

void func_8015CD00_ovl5(GObj *arg0) {
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 1:
        func_8015CE74_ovl5();
        return;
    case 11:
        func_80162C68_ovl5(arg0);
        return;
    case 3:
        func_80160AF8_ovl5(arg0, (s32) D_800E9AA0[omCurrentObj->objId].as_u32);
        return;
    case 4:
        func_80160E6C_ovl5(arg0, (s32) D_800E9AA0[omCurrentObj->objId].as_u32);
        return;
    case 5:
        func_801611A8_ovl5(arg0, (s32) D_800E9AA0[omCurrentObj->objId].as_u32);
        return;
    case 2:
        func_8015DFC8_ovl5(arg0, D_800E9AA0[omCurrentObj->objId].as_u32);
        return;
    case 7:
        func_80163CC0_ovl5(arg0, D_800E9AA0[omCurrentObj->objId].as_u32);
        return;
    case 6:
        func_80162CCC_ovl5(arg0);
        return;
    case 8:
        func_80164490_ovl5(arg0);
        return;
    case 9:
        func_8016179C_ovl5(arg0);
        return;
    case 10:
        func_80161B4C_ovl5(arg0, D_800E9E20[omCurrentObj->objId]);
        return;
    case 12:
        func_80162B1C_ovl5(arg0, D_800EA6E0[omCurrentObj->objId], D_800EA8A0[omCurrentObj->objId], D_800EAA60[omCurrentObj->objId]);
        return;
    case 0:
        func_80164A34_ovl5();
        /* fallthrough */
    default:
        return;
    }
}

/* splat folded this into func_8015CD00_ovl5's `.size`; it is a real,
 * separate empty function at 0x8015CE6C. */
void func_8015CE6C_ovl5(void) {
}

/* FACTORY: 270/277, STRUCTURAL -- measured 2026-08-23, correcting a
 * stale note (previously read "7/277"; the note's own body already said
 * "residue high (270/277)", this just fixes the header to match).
 * Diverges from word 0: ROM frame -0x68 with the tbl[] copy loop
 * unrolled off ONE shared `hi/lo(D_80185FA0_ovl5)` base and 6 saved
 * slots incl. $f20/$f22; this draft's frame is -0x70 with three
 * separate lui bases for the same array and a different register set.
 * One confirmed real defect already fixed over the PORT arm: the missing
 * local prototype for func_800AD1A0 (its PORT-only file-scope prototype
 * is invisible to the N64 build). Needs a fresh m2c derivation off the
 * listing (the tbl[] unroll and the infinite wobble loop especially),
 * not a register sweep. */
#ifdef MIPS_TO_C
void func_8015CE74_ovl5(void) {
    extern void *D_80185FA0_ovl5[];
    extern struct UnkStruct8015C740 D_80186220_ovl5;
    extern struct UnkStruct8015C740 D_801862E4_ovl5;
    extern u16 D_80186240_ovl5[];
    void func_800AD1A0(void);
    GObj *arg0 = omCurrentObj;
    struct UnkStruct8015C740 *tbl[4];
    SPObj *sp1 = NULL;
    SPObj *sp2 = NULL;
    SPObj *t;
    s32 i;

    for (i = 0; i < 4; i++) {
        tbl[i] = D_80185FA0_ovl5[i];
    }
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, (void (*)(GObj *)) func_800AD1A0, 0x12, 0x80000000, 0x12);
    if (D_8018E258_ovl5 == 3) {
        func_8015C740_ovl5(arg0, tbl[D_8018E258_ovl5]);
        t = func_8015C740_ovl5(arg0, tbl[D_8018E258_ovl5]);
        t->unk5A |= 1;
        t->unkBA |= 1;
        t->xOffset = 160.0f;
        t->yOffset = 10.0f;
        sp1 = func_8015C740_ovl5(arg0, &D_801862E4_ovl5);
        sp2 = func_8015C740_ovl5(arg0, &D_801862E4_ovl5);
        sp2->unk5A |= 1;
        sp2->unkBA |= 1;
        sp2->xOffset = sp1->xOffset + (f32) sp1->width;
    } else {
        func_8015C740_ovl5(arg0, tbl[D_8018E258_ovl5]);
        t = func_8015C740_ovl5(arg0, tbl[D_8018E258_ovl5]);
        t->unk5A |= 1;
        t->unkBA |= 1;
        t->xOffset = 160.0f;
        t->yOffset = 60.0f;
        sp1 = func_8015C740_ovl5(arg0, &D_80186220_ovl5);
        sp1->primColorRed = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 0];
        sp1->primColorGreen = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 1];
        sp1->primColorBlue = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 2];
        sp1->envColorRed = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 3];
        sp1->envColorGreen = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 4];
        sp1->envColorBlue = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 5];
    }
    while (1) {
        if (D_8018E220_ovl5 != 0) {
            if (D_8018E258_ovl5 == 3) {
                for (i = 0; i < 1; i++) { sp1->xOffset += 2.0f; sp2->xOffset += 2.0f; ohSleep(1); }
                for (i = 0; i < 2; i++) { sp1->xOffset -= 2.0f; sp2->xOffset -= 2.0f; ohSleep(1); }
                for (i = 0; i < 1; i++) { sp1->xOffset += 2.0f; sp2->xOffset += 2.0f; ohSleep(1); }
            } else {
                for (i = 0; i < 1; i++) { sp1->xOffset += 1.0f; ohSleep(1); }
                for (i = 0; i < 2; i++) { sp1->xOffset -= 1.0f; ohSleep(1); }
                for (i = 0; i < 1; i++) { sp1->xOffset += 1.0f; ohSleep(1); }
            }
        } else {
            ohSleep(1);
        }
    }
}
#elif defined(PORT)
/* Round-banner thread: spawns the "round N" banner sprite pair for stage
 * D_8018E258_ovl5 (index 3 gets a two-part banner at y=10, the others a
 * single banner at y=60 recolored from D_80186240_ovl5), then wobbles the
 * banner x offset forever while D_8018E220_ovl5 (round running) is set. */
void func_8015CE74_ovl5(void) {
    extern void *D_80185FA0_ovl5[];
    extern struct UnkStruct8015C740 D_80186220_ovl5;
    extern struct UnkStruct8015C740 D_801862E4_ovl5;
    extern u16 D_80186240_ovl5[];
    GObj *arg0 = omCurrentObj;
    struct UnkStruct8015C740 *tbl[4];
    SPObj *sp1 = NULL;
    SPObj *sp2 = NULL;
    SPObj *t;
    s32 i;

    for (i = 0; i < 4; i++) {
        tbl[i] = D_80185FA0_ovl5[i];
    }
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, (void (*)(GObj *)) func_800AD1A0, 0x12, 0x80000000, 0x12);
    if (D_8018E258_ovl5 == 3) {
        func_8015C740_ovl5(arg0, tbl[D_8018E258_ovl5]);
        t = func_8015C740_ovl5(arg0, tbl[D_8018E258_ovl5]);
        t->unk5A |= 1;
        t->unkBA |= 1;
        t->xOffset = 160.0f;
        t->yOffset = 10.0f;
        sp1 = func_8015C740_ovl5(arg0, &D_801862E4_ovl5);
        sp2 = func_8015C740_ovl5(arg0, &D_801862E4_ovl5);
        sp2->unk5A |= 1;
        sp2->unkBA |= 1;
        sp2->xOffset = sp1->xOffset + (f32) sp1->width;
    } else {
        func_8015C740_ovl5(arg0, tbl[D_8018E258_ovl5]);
        t = func_8015C740_ovl5(arg0, tbl[D_8018E258_ovl5]);
        t->unk5A |= 1;
        t->unkBA |= 1;
        t->xOffset = 160.0f;
        t->yOffset = 60.0f;
        sp1 = func_8015C740_ovl5(arg0, &D_80186220_ovl5);
        sp1->primColorRed = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 0];
        sp1->primColorGreen = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 1];
        sp1->primColorBlue = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 2];
        sp1->envColorRed = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 3];
        sp1->envColorGreen = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 4];
        sp1->envColorBlue = D_80186240_ovl5[D_8018E258_ovl5 * 6 + 5];
    }
    while (1) {
        if (D_8018E220_ovl5 != 0) {
            if (D_8018E258_ovl5 == 3) {
                for (i = 0; i < 1; i++) { sp1->xOffset += 2.0f; sp2->xOffset += 2.0f; ohSleep(1); }
                for (i = 0; i < 2; i++) { sp1->xOffset -= 2.0f; sp2->xOffset -= 2.0f; ohSleep(1); }
                for (i = 0; i < 1; i++) { sp1->xOffset += 2.0f; sp2->xOffset += 2.0f; ohSleep(1); }
            } else {
                for (i = 0; i < 1; i++) { sp1->xOffset += 1.0f; ohSleep(1); }
                for (i = 0; i < 2; i++) { sp1->xOffset -= 1.0f; ohSleep(1); }
                for (i = 0; i < 1; i++) { sp1->xOffset += 1.0f; ohSleep(1); }
            }
        } else {
            ohSleep(1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015CE74_ovl5.s")
#endif

extern void *D_8018666C_ovl5[][2];
extern void *D_8018668C_ovl5[][2];
extern void *D_801866CC_ovl5[][2];
extern void *D_801866EC_ovl5[][2];
void func_80161610_ovl5(s32);

void func_8015D2A8_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    RacerSetup sp30 = D_8018E1E8_ovl5[arg1];
    s32 i;

    if (arg2 != 0) {
        if (D_800EAA60[omCurrentObj->objId] < 0.0f) {
            func_800AA018(D_8018668C_ovl5[sp30.kind][0]);
            func_800AA018(D_8018668C_ovl5[sp30.kind][1]);
        } else {
            func_800AA018(D_8018666C_ovl5[sp30.kind][0]);
            func_800AA018(D_8018666C_ovl5[sp30.kind][1]);
        }
    } else {
        if (D_800EAA60[omCurrentObj->objId] < 0.0f) {
            func_800AA018(D_801866EC_ovl5[sp30.kind][0]);
            func_800AA018(D_801866EC_ovl5[sp30.kind][1]);
        } else {
            func_800AA018(D_801866CC_ovl5[sp30.kind][0]);
            func_800AA018(D_801866CC_ovl5[sp30.kind][1]);
        }
    }
    for (i = 0; i != 10; i++) {
        func_80161610_ovl5(arg1);
        ohSleep(1);
    }
}

extern s32 func_800AF230(void);

void func_8015D458_ovl5(GObj *arg0, s32 arg1) {
    RacerSetup sp78 = D_8018E1E8_ovl5[arg1];
    f32 x = D_800EAA60[omCurrentObj->objId];
    s32 pad0;
    s32 pad1;

    while (func_800AF230() == 0) {
        if (6 != D_800EA520[omCurrentObj->objId]) {
            return;
        }
        D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] + x;
        if (D_800EAA60[omCurrentObj->objId] < 0.0f) {
            D_800E9C60[omCurrentObj->objId] = 1;
            if (D_800EA6E0[omCurrentObj->objId] < -900.0f) {
                D_800EA6E0[omCurrentObj->objId] = -900.0f;
            }
        } else {
            D_800E9C60[omCurrentObj->objId] = 2;
            if (900.0f < D_800EA6E0[omCurrentObj->objId]) {
                D_800EA6E0[omCurrentObj->objId] = 900.0f;
            }
        }
        ohSleep(1);
    }
}

void func_8015D62C_ovl5(GObj *arg0, s32 arg1) {
    RacerSetup sp68 = D_8018E1E8_ovl5[arg1];
    f32 x = D_800EAA60[omCurrentObj->objId];

    if (x < 0.0f) {
        func_800AA018(D_801866EC_ovl5[sp68.kind][0]);
        func_800AA018(D_801866EC_ovl5[sp68.kind][1]);
    } else {
        func_800AA018(D_801866CC_ovl5[sp68.kind][0]);
        func_800AA018(D_801866CC_ovl5[sp68.kind][1]);
    }
    while (func_800AF230() == 0) {
        if (7 != D_800EA520[omCurrentObj->objId]) {
            return;
        }
        D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] + x;
        if (x < 0.0f) {
            D_800E9C60[omCurrentObj->objId] = 1;
            if (D_800EA6E0[omCurrentObj->objId] < -900.0f) {
                D_800EA6E0[omCurrentObj->objId] = -900.0f;
            }
        } else {
            D_800E9C60[omCurrentObj->objId] = 2;
            if (900.0f < D_800EA6E0[omCurrentObj->objId]) {
                D_800EA6E0[omCurrentObj->objId] = 900.0f;
            }
        }
        ohSleep(1);
    }
}

extern void *D_801867AC_ovl5[][2];
extern void *D_8018664C_ovl5[][2];
extern void *D_8018662C_ovl5[];
void func_800AA608(void *, void *, f32, void *, f32);
void func_8015E850_ovl5(GObj *);

void func_8015D864_ovl5(GObj *arg0, s32 arg1) {
    RacerSetup sp30 = D_8018E1E8_ovl5[arg1];
    s32 pad0;
    s32 pad1;

    D_800DF150[omCurrentObj->objId] = NULL;
    if (D_8018E1E0_ovl5[arg1] != 0) {
        s32 t = request_track_general(6, 0, 0x70);

        D_800E98E0[t] = 5;
        ((s32 *) D_800E9AA0)[t] = arg1;
    }
    D_8018E1E0_ovl5[arg1] = 0;
    func_800AA018(D_801867AC_ovl5[sp30.kind][0]);
    func_800AA018(D_801867AC_ovl5[sp30.kind][1]);
    func_800AF27C();
    func_800AA608(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild, D_8018664C_ovl5[sp30.kind][0],
                  0.0f, D_8018662C_ovl5[sp30.kind], 6.0f);
    func_800AA018(D_8018664C_ovl5[sp30.kind][0]);
    if (D_8018664C_ovl5[sp30.kind][1] != NULL) {
        func_800AA018(D_8018664C_ovl5[sp30.kind][1]);
    }
    D_800EA520[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_8015E850_ovl5;
}


/* FACTORY: 364/366, STRUCTURAL -- measured 2026-08-23, correcting a stale
 * note (previously read "2/366", which does not match this draft: it
 * diverges from the ROM from word 0 -- different frame size (-0x88 vs
 * the ROM's -0x60), different register set and prologue shape, and a
 * wholesale reordering of the green-thread state-machine body. Not a
 * LEVERS-fixable residue; needs a fresh m2c derivation off the listing. */
#ifdef MIPS_TO_C
void func_8015DA24_ovl5(GObj *arg0, u32 arg1) {
    extern u32 D_801867CC_ovl5[];
    extern u32 D_801867EC_ovl5[];
    extern u32 D_80186650_ovl5[];
    extern u8 D_8018E224_ovl5[];
    s32 kind = D_8018E1E8_ovl5[arg1].kind;
    s32 i;

    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    func_800AA018((void *) (uintptr_t) D_801867CC_ovl5[kind * 2]);
    func_800AA018((void *) (uintptr_t) D_801867CC_ovl5[kind * 2 + 1]);
    if (func_800AF230() == 0) {
        while (1) {
            ohSleep(1);
            if (D_800EA520[omCurrentObj->objId] != 8) {
                return;
            }
            if (func_800AF230() != 0) {
                break;
            }
        }
    }
    D_800EA520[omCurrentObj->objId] = 9;
    i = 0;
    if (D_8018E224_ovl5[arg1] == 4) {
        while (gPlayerControllers[arg1].buttonHeld & 0x400) {
            i += 1;
            ohSleep(1);
            if (i == 0x1E) {
                break;
            }
        }
    } else {
        RacerAI *rec = &D_8018E228_ovl5[arg1];
        f32 d;

        d = gEntitiesNextPosXArray[omCurrentObj->objId] - func_801619E0_ovl5(rec->target);
        if (d < 0.0f) {
            d = -d;
        }
        if ((d < 100.0f) && (gEntitiesNextPosYArray[D_8018E050_ovl5[rec->target]] > 350.0f)) {
            while (random_soft_s32_range(0x10) >= ovl5_pers_(D_8018E258_ovl5 * 6 + 5)) {
                ohSleep(1);
                d = gEntitiesNextPosXArray[omCurrentObj->objId] - func_801619E0_ovl5(rec->target);
                if (d < 0.0f) {
                    d = -d;
                }
                if (!((d < 100.0f) && (gEntitiesNextPosYArray[D_8018E050_ovl5[rec->target]] > 350.0f))) {
                    break;
                }
            }
        }
    }
    D_800EA520[omCurrentObj->objId] = 0xA;
    if ((kind == 0) || (kind == 2)) {
        func_800AA018((void *) (uintptr_t) D_801867EC_ovl5[kind * 2]);
        func_800AA018((void *) (uintptr_t) D_801867EC_ovl5[kind * 2 + 1]);
        if (func_800AF230() == 0) {
            while (D_800EA520[omCurrentObj->objId] == 0xA) {
                ohSleep(1);
                if (func_800AF230() != 0) {
                    goto done;
                }
            }
            return;
        }
        goto done;
    } else {
        func_800AA49C(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild,
                      ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2), 0.0f,
                      ((u32 *) D_8018662C_ovl5)[kind], 6.0f);
        if (func_800AA368(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild) == 0) {
            while (D_800EA520[omCurrentObj->objId] == 0xA) {
                ohSleep(1);
                if (func_800AA368(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild) != 0) {
                    goto anim_done;
                }
            }
            return;
        }
    anim_done:
        func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2));
        if (ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2 + 1) != 0) {
            func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2 + 1));
        }
    }
done:
    if (D_800EA520[omCurrentObj->objId] == 0xA) {
        D_800EA520[omCurrentObj->objId] = 0;
    }
    D_800DF150[omCurrentObj->objId] = func_8015E850_ovl5;
}
#elif defined(PORT)
/* Eat/attack action for racer arg1 (green-thread helper of func_8015DFC8):
 * plays the mouth-open animation pair, waits for it, holds while a human
 * player keeps C-down (or, for a CPU, while it lingers near its target with
 * a personality roll), then plays the release animation (kind 0/2) or a
 * node-level animation (kind 1/3) and returns the command state to 0. */
void func_8015DA24_ovl5(GObj *arg0, u32 arg1) {
    extern u32 D_801867CC_ovl5[];
    extern u32 D_801867EC_ovl5[];
    extern u32 D_80186650_ovl5[];
    s32 kind = D_8018E1E8_ovl5[arg1].kind;
    s32 i;

    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    func_800AA018((void *) (uintptr_t) D_801867CC_ovl5[kind * 2]);
    func_800AA018((void *) (uintptr_t) D_801867CC_ovl5[kind * 2 + 1]);
    if (func_800AF230() == 0) {
        while (1) {
            ohSleep(1);
            if (D_800EA520[omCurrentObj->objId] != 8) {
                return;
            }
            if (func_800AF230() != 0) {
                break;
            }
        }
    }
    D_800EA520[omCurrentObj->objId] = 9;
    i = 0;
    if (D_8018E224_ovl5[arg1] == 4) {
        while (gPlayerControllers[arg1].buttonHeld & 0x400) {
            i += 1;
            ohSleep(1);
            if (i == 0x1E) {
                break;
            }
        }
    } else {
        RacerAI *rec = &D_8018E228_ovl5[arg1];
        f32 d;

        d = gEntitiesNextPosXArray[omCurrentObj->objId] - func_801619E0_ovl5(rec->target);
        if (d < 0.0f) {
            d = -d;
        }
        if ((d < 100.0f) && (gEntitiesNextPosYArray[D_8018E050_ovl5[rec->target]] > 350.0f)) {
            while (random_soft_s32_range(0x10) >= ovl5_pers_(D_8018E258_ovl5 * 6 + 5)) {
                ohSleep(1);
                d = gEntitiesNextPosXArray[omCurrentObj->objId] - func_801619E0_ovl5(rec->target);
                if (d < 0.0f) {
                    d = -d;
                }
                if (!((d < 100.0f) && (gEntitiesNextPosYArray[D_8018E050_ovl5[rec->target]] > 350.0f))) {
                    break;
                }
            }
        }
    }
    D_800EA520[omCurrentObj->objId] = 0xA;
    if ((kind == 0) || (kind == 2)) {
        func_800AA018((void *) (uintptr_t) D_801867EC_ovl5[kind * 2]);
        func_800AA018((void *) (uintptr_t) D_801867EC_ovl5[kind * 2 + 1]);
        if (func_800AF230() == 0) {
            while (D_800EA520[omCurrentObj->objId] == 0xA) {
                ohSleep(1);
                if (func_800AF230() != 0) {
                    goto done;
                }
            }
            return;
        }
        goto done;
    } else {
        func_800AA49C(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild,
                      ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2), 0.0f,
                      ((u32 *) D_8018662C_ovl5)[kind], 6.0f);
        if (func_800AA368(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild) == 0) {
            while (D_800EA520[omCurrentObj->objId] == 0xA) {
                ohSleep(1);
                if (func_800AA368(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild) != 0) {
                    goto anim_done;
                }
            }
            return;
        }
    anim_done:
        func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2));
        if (ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2 + 1) != 0) {
            func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2 + 1));
        }
    }
done:
    if (D_800EA520[omCurrentObj->objId] == 0xA) {
        D_800EA520[omCurrentObj->objId] = 0;
    }
    D_800DF150[omCurrentObj->objId] = func_8015E850_ovl5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015DA24_ovl5.s")
#endif

/* FACTORY: 586/602 [was noted 11/594], UNCERTAIN -- PORT-seeded, time-boxed. Added the
 * missing local `extern u8 D_8018E224_ovl5[];`. Compiles, word count
 * matches (594/594), residue extreme (583/594) -- broad register/frame
 * relabeling from word 0 (ROM keeps 2 saved regs at this point, $s1/$s2;
 * this draft reaches for more). Worth a fresh m2c pass before feeding
 * to the permuter. */
#ifdef MIPS_TO_C
void func_8015DFC8_ovl5(GObj *gobj, u32 arg1) {
    extern u8 D_8018E224_ovl5[];
    extern u32 D_8018663C_ovl5[];
    extern u32 D_80186650_ovl5[];
    extern u32 D_8018670C_ovl5[];
    extern u32 D_8018672C_ovl5[];
    extern u32 D_8018674C_ovl5[];
    extern u32 D_80186750_ovl5[];
    extern u32 D_8018676C_ovl5[];
    extern u32 D_80186770_ovl5[];
    extern u32 D_8018678C_ovl5[];
    extern u32 D_80186790_ovl5[];
    extern f32 D_8018680C_ovl5[];
    GObj *arg0 = omCurrentObj;
    void (*cb)(GObj *) = func_8015E850_ovl5;
    s32 kind;
    s32 frame;
    s32 state;
    s32 nosleep;
    u32 t;

    D_8018E030_ovl5[arg1] = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_u32 = arg1;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    if (D_8018E224_ovl5[arg1] != 4) {
        D_8018E228_ovl5[arg1].timer = 5;
        D_8018E228_ovl5[arg1].action = 0;
    }
    kind = D_8018E1E8_ovl5[arg1].kind;
    frame = D_8018E1E8_ovl5[arg1].frame;
    D_800DF150[omCurrentObj->objId] = cb;
    func_800A9864((void *) (uintptr_t) ((u32 *) D_8018662C_ovl5)[kind], 0x1869F, 0x10);
    if (kind == 1) {
        gEntitiesScaleXArray[omCurrentObj->objId] = 0.85f;
        gEntitiesScaleYArray[omCurrentObj->objId] = 0.85f;
        gEntitiesScaleZArray[omCurrentObj->objId] = 0.85f;
    }
    func_800A9F98((void *) (uintptr_t) D_8018663C_ovl5[kind], (f32) (u32) frame);
    if (frame == 0) {
        animUpdateModelTreeAnimation(arg0);
    }
    animResetTextureAnimation(arg0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_8018680C_ovl5[arg1];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    state = D_800EA520[omCurrentObj->objId];
    while (1) {
        nosleep = 0;
        if (state != 3) {
            gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
            state = D_800EA520[omCurrentObj->objId];
        }
        switch (state) {
            case 0:
                if (func_800AA934((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2)) == 0) {
                    func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2));
                    t = ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2 + 1);
                    if (t != 0) {
                        func_800AA018((void *) (uintptr_t) t);
                    }
                }
                break;
            case 2:
                if ((func_800AA934((void *) (uintptr_t) D_8018670C_ovl5[kind * 2]) == 0) &&
                    (func_800AA934((void *) (uintptr_t) D_8018672C_ovl5[kind * 2]) == 0)) {
                    func_800AA018((void *) (uintptr_t) D_8018670C_ovl5[kind * 2]);
                    func_800AA018((void *) (uintptr_t) D_8018670C_ovl5[kind * 2 + 1]);
                }
                if ((func_800AA934((void *) (uintptr_t) D_8018670C_ovl5[kind * 2]) != 0) && (func_800AF230() != 0)) {
                    func_800AA018((void *) (uintptr_t) D_8018672C_ovl5[kind * 2]);
                    func_800AA018((void *) (uintptr_t) D_8018672C_ovl5[kind * 2 + 1]);
                }
                break;
            case 4:
                play_sound(0x22E);
                D_800DF150[omCurrentObj->objId] = NULL;
                func_8015D2A8_ovl5(arg0, arg1, 1);
                D_800DF150[omCurrentObj->objId] = cb;
                if (D_800EA520[omCurrentObj->objId] == 4) {
                    D_800EA520[omCurrentObj->objId] = 0;
                    D_800E98E0[omCurrentObj->objId] = 4;
                } else {
                    state = D_800EA520[omCurrentObj->objId];
                    nosleep = 1;
                }
                break;
            case 5:
                D_800DF150[omCurrentObj->objId] = NULL;
                func_8015D2A8_ovl5(arg0, arg1, 0);
                if (D_800EA520[omCurrentObj->objId] != 5) {
                    D_800DF150[omCurrentObj->objId] = cb;
                    state = D_800EA520[omCurrentObj->objId];
                    nosleep = 1;
                    break;
                }
                D_800EA520[omCurrentObj->objId] = 6;
                /* fallthrough */
            case 6:
                func_8015D458_ovl5(arg0, arg1);
                D_800DF150[omCurrentObj->objId] = cb;
                if (D_800EA520[omCurrentObj->objId] == 6) {
                    D_800EA520[omCurrentObj->objId] = 0;
                } else {
                    state = D_800EA520[omCurrentObj->objId];
                    nosleep = 1;
                }
                break;
            case 7:
                D_800DF150[omCurrentObj->objId] = NULL;
                func_8015D62C_ovl5(arg0, arg1);
                D_800DF150[omCurrentObj->objId] = cb;
                if (D_800EA520[omCurrentObj->objId] == 7) {
                    D_800EA520[omCurrentObj->objId] = 0;
                } else {
                    state = D_800EA520[omCurrentObj->objId];
                    nosleep = 1;
                }
                break;
            case 1:
                if (D_800E9C60[omCurrentObj->objId] == 1) {
                    if (func_800AA934((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018676C_ovl5, D_80186770_ovl5, kind * 2)) == 0) {
                        func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018676C_ovl5, D_80186770_ovl5, kind * 2));
                        func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018676C_ovl5, D_80186770_ovl5, kind * 2 + 1));
                    }
                } else if ((D_800E9C60[omCurrentObj->objId] == 2) &&
                           (func_800AA934((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018674C_ovl5, D_80186750_ovl5, kind * 2)) == 0)) {
                    func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018674C_ovl5, D_80186750_ovl5, kind * 2));
                    func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018674C_ovl5, D_80186750_ovl5, kind * 2 + 1));
                }
                break;
            case 3:
                if (func_800AA934((void *) (uintptr_t) D_8018672C_ovl5[kind * 2]) == 0) {
                    func_800AA018((void *) (uintptr_t) D_8018672C_ovl5[kind * 2]);
                    func_800AA018((void *) (uintptr_t) D_8018672C_ovl5[kind * 2 + 1]);
                }
                if (D_800E9C60[omCurrentObj->objId] == 1) {
                    gEntitiesAngleYArray[omCurrentObj->objId] = -0.34906587f;
                } else if (D_800E9C60[omCurrentObj->objId] == 2) {
                    gEntitiesAngleYArray[omCurrentObj->objId] = 0.34906587f;
                }
                break;
            case 12:
                func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018678C_ovl5, D_80186790_ovl5, kind * 2));
                func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018678C_ovl5, D_80186790_ovl5, kind * 2 + 1));
                if (func_800AF230() == 0) {
                    while (D_800EA520[omCurrentObj->objId] == 0xC) {
                        ohSleep(1);
                        if (func_800AF230() != 0) {
                            break;
                        }
                    }
                }
                if (D_800EA520[omCurrentObj->objId] == 0xC) {
                    D_800EA520[omCurrentObj->objId] = 0;
                } else {
                    state = D_800EA520[omCurrentObj->objId];
                    nosleep = 1;
                }
                break;
            case 11:
                if (D_8018E224_ovl5[arg1] == 4) {
                    func_800BB4E4(arg1, 4, 0x28);
                }
                func_8015D864_ovl5(arg0, arg1);
                break;
            case 8:
                func_8015DA24_ovl5(arg0, arg1);
                state = D_800EA520[omCurrentObj->objId];
                nosleep = 1;
                break;
            case 13:
                while (1) {
                    func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018678C_ovl5, D_80186790_ovl5, kind * 2));
                    func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018678C_ovl5, D_80186790_ovl5, kind * 2 + 1));
                    func_800AF27C();
                }
                break;
            default:
                break;
        }
        if (!nosleep) {
            ohSleep(1);
            state = D_800EA520[omCurrentObj->objId];
        }
    }
}
#elif defined(PORT)
/* Racer entity main for slot arg1 (gourmet-race style minigame): registers
 * the objId in D_8018E030_ovl5[arg1], spawns the racer model + start pose,
 * then loops on the command state in D_800EA520[objId]: 0 idle pose,
 * 1 walk poses, 2 run-in poses, 3 lean toward the walk direction, 4 round
 * intro jingle, 5/6 win poses, 7 lose poses, 8 eat action (func_8015DA24),
 * 11 knockback (func_8015D864), 12 stun pose, 13 endless stun. */
void func_8015DFC8_ovl5(GObj *gobj, u32 arg1) {
    extern u32 D_8018663C_ovl5[];
    extern u32 D_80186650_ovl5[];
    extern u32 D_8018670C_ovl5[];
    extern u32 D_8018672C_ovl5[];
    extern u32 D_8018674C_ovl5[];
    extern u32 D_80186750_ovl5[];
    extern u32 D_8018676C_ovl5[];
    extern u32 D_80186770_ovl5[];
    extern u32 D_8018678C_ovl5[];
    extern u32 D_80186790_ovl5[];
    extern f32 D_8018680C_ovl5[];
    GObj *arg0 = omCurrentObj;
    void (*cb)(GObj *) = func_8015E850_ovl5;
    s32 kind;
    s32 frame;
    s32 state;
    s32 nosleep;
    u32 t;

    D_8018E030_ovl5[arg1] = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_u32 = arg1;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    if (D_8018E224_ovl5[arg1] != 4) {
        D_8018E228_ovl5[arg1].timer = 5;
        D_8018E228_ovl5[arg1].action = 0;
    }
    kind = D_8018E1E8_ovl5[arg1].kind;
    frame = D_8018E1E8_ovl5[arg1].frame;
    D_800DF150[omCurrentObj->objId] = cb;
    func_800A9864((void *) (uintptr_t) ((u32 *) D_8018662C_ovl5)[kind], 0x1869F, 0x10);
    if (kind == 1) {
        gEntitiesScaleXArray[omCurrentObj->objId] = 0.85f;
        gEntitiesScaleYArray[omCurrentObj->objId] = 0.85f;
        gEntitiesScaleZArray[omCurrentObj->objId] = 0.85f;
    }
    func_800A9F98((void *) (uintptr_t) D_8018663C_ovl5[kind], (f32) (u32) frame);
    if (frame == 0) {
        animUpdateModelTreeAnimation(arg0);
    }
    animResetTextureAnimation(arg0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_8018680C_ovl5[arg1];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    state = D_800EA520[omCurrentObj->objId];
    while (1) {
        nosleep = 0;
        if (state != 3) {
            gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
            state = D_800EA520[omCurrentObj->objId];
        }
        switch (state) {
            case 0:
                if (func_800AA934((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2)) == 0) {
                    func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2));
                    t = ovl5_idpair_((u32 *) D_8018664C_ovl5, D_80186650_ovl5, kind * 2 + 1);
                    if (t != 0) {
                        func_800AA018((void *) (uintptr_t) t);
                    }
                }
                break;
            case 2:
                if ((func_800AA934((void *) (uintptr_t) D_8018670C_ovl5[kind * 2]) == 0) &&
                    (func_800AA934((void *) (uintptr_t) D_8018672C_ovl5[kind * 2]) == 0)) {
                    func_800AA018((void *) (uintptr_t) D_8018670C_ovl5[kind * 2]);
                    func_800AA018((void *) (uintptr_t) D_8018670C_ovl5[kind * 2 + 1]);
                }
                if ((func_800AA934((void *) (uintptr_t) D_8018670C_ovl5[kind * 2]) != 0) && (func_800AF230() != 0)) {
                    func_800AA018((void *) (uintptr_t) D_8018672C_ovl5[kind * 2]);
                    func_800AA018((void *) (uintptr_t) D_8018672C_ovl5[kind * 2 + 1]);
                }
                break;
            case 4:
                play_sound(0x22E);
                D_800DF150[omCurrentObj->objId] = NULL;
                func_8015D2A8_ovl5(arg0, arg1, 1);
                D_800DF150[omCurrentObj->objId] = cb;
                if (D_800EA520[omCurrentObj->objId] == 4) {
                    D_800EA520[omCurrentObj->objId] = 0;
                    D_800E98E0[omCurrentObj->objId] = 4;
                } else {
                    state = D_800EA520[omCurrentObj->objId];
                    nosleep = 1;
                }
                break;
            case 5:
                D_800DF150[omCurrentObj->objId] = NULL;
                func_8015D2A8_ovl5(arg0, arg1, 0);
                if (D_800EA520[omCurrentObj->objId] != 5) {
                    D_800DF150[omCurrentObj->objId] = cb;
                    state = D_800EA520[omCurrentObj->objId];
                    nosleep = 1;
                    break;
                }
                D_800EA520[omCurrentObj->objId] = 6;
                /* fallthrough */
            case 6:
                func_8015D458_ovl5(arg0, arg1);
                D_800DF150[omCurrentObj->objId] = cb;
                if (D_800EA520[omCurrentObj->objId] == 6) {
                    D_800EA520[omCurrentObj->objId] = 0;
                } else {
                    state = D_800EA520[omCurrentObj->objId];
                    nosleep = 1;
                }
                break;
            case 7:
                D_800DF150[omCurrentObj->objId] = NULL;
                func_8015D62C_ovl5(arg0, arg1);
                D_800DF150[omCurrentObj->objId] = cb;
                if (D_800EA520[omCurrentObj->objId] == 7) {
                    D_800EA520[omCurrentObj->objId] = 0;
                } else {
                    state = D_800EA520[omCurrentObj->objId];
                    nosleep = 1;
                }
                break;
            case 1:
                if (D_800E9C60[omCurrentObj->objId] == 1) {
                    if (func_800AA934((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018676C_ovl5, D_80186770_ovl5, kind * 2)) == 0) {
                        func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018676C_ovl5, D_80186770_ovl5, kind * 2));
                        func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018676C_ovl5, D_80186770_ovl5, kind * 2 + 1));
                    }
                } else if ((D_800E9C60[omCurrentObj->objId] == 2) &&
                           (func_800AA934((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018674C_ovl5, D_80186750_ovl5, kind * 2)) == 0)) {
                    func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018674C_ovl5, D_80186750_ovl5, kind * 2));
                    func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018674C_ovl5, D_80186750_ovl5, kind * 2 + 1));
                }
                break;
            case 3:
                if (func_800AA934((void *) (uintptr_t) D_8018672C_ovl5[kind * 2]) == 0) {
                    func_800AA018((void *) (uintptr_t) D_8018672C_ovl5[kind * 2]);
                    func_800AA018((void *) (uintptr_t) D_8018672C_ovl5[kind * 2 + 1]);
                }
                if (D_800E9C60[omCurrentObj->objId] == 1) {
                    gEntitiesAngleYArray[omCurrentObj->objId] = -0.34906587f;
                } else if (D_800E9C60[omCurrentObj->objId] == 2) {
                    gEntitiesAngleYArray[omCurrentObj->objId] = 0.34906587f;
                }
                break;
            case 12:
                func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018678C_ovl5, D_80186790_ovl5, kind * 2));
                func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018678C_ovl5, D_80186790_ovl5, kind * 2 + 1));
                if (func_800AF230() == 0) {
                    while (D_800EA520[omCurrentObj->objId] == 0xC) {
                        ohSleep(1);
                        if (func_800AF230() != 0) {
                            break;
                        }
                    }
                }
                if (D_800EA520[omCurrentObj->objId] == 0xC) {
                    D_800EA520[omCurrentObj->objId] = 0;
                } else {
                    state = D_800EA520[omCurrentObj->objId];
                    nosleep = 1;
                }
                break;
            case 11:
                if (D_8018E224_ovl5[arg1] == 4) {
                    func_800BB4E4(arg1, 4, 0x28);
                }
                func_8015D864_ovl5(arg0, arg1);
                break;
            case 8:
                func_8015DA24_ovl5(arg0, arg1);
                state = D_800EA520[omCurrentObj->objId];
                nosleep = 1;
                break;
            case 13:
                while (1) {
                    func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018678C_ovl5, D_80186790_ovl5, kind * 2));
                    func_800AA018((void *) (uintptr_t) ovl5_idpair_((u32 *) D_8018678C_ovl5, D_80186790_ovl5, kind * 2 + 1));
                    func_800AF27C();
                }
                break;
            default:
                break;
        }
        if (!nosleep) {
            ohSleep(1);
            state = D_800EA520[omCurrentObj->objId];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015DFC8_ovl5.s")
#endif

extern u8 D_8018E024_ovl5;
extern u8 D_8018E025_ovl5;
extern u8 D_8018E224_ovl5[];
s32 func_80160810_ovl5(s32);
void func_8015ED9C_ovl5(s32);

void func_8015E850_ovl5(GObj *arg0) {
    s32 idx = ((s32 *) D_800E9AA0)[omCurrentObj->objId];
    f32 temp;

    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
        return;
    }
    if (D_8018E025_ovl5 != 0) {
        return;
    }
    if (D_8018E024_ovl5 != 0) {
        return;
    }
    if (func_80160810_ovl5(idx) == 0) {
        return;
    }
    if (D_8018E1E0_ovl5[idx] >= 0xA) {
        temp = 24.0f;
    } else if (D_8018E1E0_ovl5[idx] >= 5) {
        temp = 32.0f;
    } else {
        temp = 40.0f;
    }
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    if (D_8018E224_ovl5[idx] != 4) {
        func_8015ED9C_ovl5(idx);
        return;
    }
    if (gPlayerControllers[idx].buttonPressed & A_BUTTON) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    }
    if (gPlayerControllers[idx].buttonHeld & R_JPAD) {
        D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] + temp;
        if (900.0f < D_800EA6E0[omCurrentObj->objId]) {
            D_800EA6E0[omCurrentObj->objId] = 900.0f;
        }
        D_800E9C60[omCurrentObj->objId] = 2;
    } else if (gPlayerControllers[idx].buttonHeld & L_JPAD) {
        D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] - temp;
        if (D_800EA6E0[omCurrentObj->objId] < -900.0f) {
            D_800EA6E0[omCurrentObj->objId] = -900.0f;
        }
        D_800E9C60[omCurrentObj->objId] = 1;
    }
}

/* FACTORY: 0/186, frame-size floor. Derived fresh from the .s (the old
 * PORT arm implemented a DIFFERENT algorithm -- a plain selection sort --
 * which cannot seed a byte-exact draft; this rewrite follows the ROM's
 * actual shape instead: the same selection sort, but with the inner
 * scan unrolled two comparisons per pass, matching the listing's
 * `bc1fl`-paired compares). Every field, branch and constant checks out
 * against the listing (verified instruction-by-instruction while
 * writing this). The two arrays' sizes (`slots[40]`, `dist[40]`) were
 * sized from the ROM's own frame budget: 0x168 total minus 4 saved regs
 * + arg/scratch spill (0x28) leaves exactly 0x140 = 40*(4+4) bytes.
 * Residue: this draft's IDO frame comes out far larger (0x1D8, mostly
 * extra saved registers) despite matching sizes -- a frame/register-
 * pressure floor, not a further algorithm-shape defect. Worth a fresh
 * pass hoisting fewer locals live across the sqrtf call before feeding
 * to the permuter. */
#ifdef MIPS_TO_C
s32 func_8015EAB4_ovl5(s32 arg0) {
    s32 func_8015F300_ovl5(s32, s32);
    f32 sqrtf(f32);
    s32 slots[40];
    f32 dist[40];
    s32 count;
    s32 slot;
    s32 objId;
    s32 itemObjId;
    s32 me;
    s32 j;
    s32 k;
    s32 minIdx;
    f32 dx;
    f32 dy;
    f32 tmpDist;
    s32 tmpSlot;

    /* Collect every falling item's slot index. The ROM stops scanning at
     * the first unused (0xFF) slot once it has already found one -- the
     * item table is packed, so a gap means the rest is empty. */
    count = 0;
    for (slot = 0; slot < 0x64; slot++) {
        objId = D_8018E050_ovl5[slot];
        if ((count != 0) && (objId == 0xFF)) {
            break;
        }
        if ((objId != 0xFF) && (D_800E9FE0[objId].as_u32 == 3)) {
            slots[count] = slot;
            count++;
        }
    }
    if (count == 0) {
        return 0xFF;
    }
    if (count == 1) {
        return slots[0];
    }

    /* Distance from this racer to each candidate. */
    for (j = 0; j < count; j++) {
        itemObjId = D_8018E050_ovl5[slots[j]];
        me = D_8018E030_ovl5[arg0];
        dy = gEntitiesNextPosYArray[itemObjId] - gEntitiesNextPosYArray[me];
        dx = gEntitiesNextPosXArray[itemObjId] - gEntitiesNextPosXArray[me];
        dist[j] = sqrtf((dy * dy) + (dx * dx));
    }

    /* Selection sort ascending by distance, unrolled two comparisons per
     * inner-loop pass (matches the ROM's unrolled scan). minIdx tracks the
     * slot already settled by the previous pass. */
    minIdx = 0;
    for (j = 1; j < count; j++) {
        k = j;
        if ((count - j) & 1) {
            if (dist[j] < dist[minIdx]) {
                tmpDist = dist[minIdx];
                tmpSlot = slots[minIdx];
                dist[minIdx] = dist[j];
                slots[minIdx] = slots[j];
                dist[j] = tmpDist;
                slots[j] = tmpSlot;
            }
            k = j + 1;
        }
        for (; k != count; k += 2) {
            if (dist[k] < dist[minIdx]) {
                tmpDist = dist[minIdx];
                tmpSlot = slots[minIdx];
                dist[minIdx] = dist[k];
                slots[minIdx] = slots[k];
                dist[k] = tmpDist;
                slots[k] = tmpSlot;
            }
            if (dist[k + 1] < dist[minIdx]) {
                tmpDist = dist[minIdx];
                tmpSlot = slots[minIdx];
                dist[minIdx] = dist[k + 1];
                slots[minIdx] = slots[k + 1];
                dist[k + 1] = tmpDist;
                slots[k + 1] = tmpSlot;
            }
        }
        minIdx = j;
    }

    if (func_8015F300_ovl5(arg0, slots[1]) < func_8015F300_ovl5(arg0, slots[0])) {
        return slots[1];
    }
    return slots[0];
}
#elif defined(PORT)
/* Target picker for racer arg0: collects the item slots whose entity is in
 * the falling state (D_800E9FE0 == 3, scan stops at the first 0xFF slot once
 * something was found), sorts them by 2D distance to the racer, and lets
 * func_8015F300_ovl5 arbitrate between the two nearest. Returns the item
 * slot index, or 0xFF when nothing is falling. The ROM's unrolled
 * bubble-sort pass is replaced by a plain selection sort (same ordering up
 * to ties). */
s32 func_8015EAB4_ovl5(s32 arg0) {
    s32 func_8015F300_ovl5(s32, s32);
    f32 sqrtf(f32);
    s32 list[40];
    f32 dist[40];
    s32 n;
    s32 i;
    s32 j;

    n = 0;
    for (i = 0; i < 0x64; i++) {
        s32 v;

        if ((n != 0) && (D_8018E050_ovl5[i] == 0xFF)) {
            break;
        }
        v = D_8018E050_ovl5[i];
        if ((v != 0xFF) && (D_800E9FE0[v].as_u32 == 3)) {
            if (n < 40) {
                list[n] = i;
                n += 1;
            }
        }
    }
    if (n == 0) {
        return 0xFF;
    }
    if (n == 1) {
        return list[0];
    }
    for (i = 0; i < n; i++) {
        s32 obj = D_8018E050_ovl5[list[i]];
        s32 me = D_8018E030_ovl5[arg0];
        f32 dy = gEntitiesNextPosYArray[obj] - gEntitiesNextPosYArray[me];
        f32 dx = gEntitiesNextPosXArray[obj] - gEntitiesNextPosXArray[me];

        dist[i] = sqrtf((dy * dy) + (dx * dx));
    }
    for (i = 0; i < n - 1; i++) {
        for (j = i + 1; j < n; j++) {
            if (dist[j] < dist[i]) {
                f32 fd = dist[i];
                s32 td = list[i];

                dist[i] = dist[j];
                dist[j] = fd;
                list[i] = list[j];
                list[j] = td;
            }
        }
    }
    if (func_8015F300_ovl5(arg0, list[1]) >= func_8015F300_ovl5(arg0, list[0])) {
        return list[0];
    }
    return list[1];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015EAB4_ovl5.s")
#endif

/* FACTORY: 274/345 [was noted 71/345], UNCERTAIN -- PORT-seeded, time-boxed. Added the
 * missing local prototype for func_8015F67C_ovl5 (implicit-int trap
 * against its real later definition). Compiles, word count matches
 * (345/345), residue high (274/345). Broad register/frame relabeling.
 * Worth a fresh m2c pass before feeding to the permuter. */
#ifdef MIPS_TO_C
void func_8015ED9C_ovl5(s32 arg0) {
    void func_8015F67C_ovl5(s32);
    RacerAI *rec = &D_8018E228_ovl5[arg0];
    s32 idx = D_8018E224_ovl5[arg0];
    f32 speed;
    s32 i;
    s32 t;

    t = rec->timer;
    if (t != 0) {
        t -= 1;
        rec->timer = t;
        if (t == 0) {
            rec->action = 0;
        }
    }
    rec->left = 0xFF;
    rec->right = 0xFF;
    for (i = 0; i < 4; i++) {
        if ((i != arg0) && (func_801612D0_ovl5(arg0, i) != 0)) {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] < gEntitiesNextPosXArray[D_8018E030_ovl5[i]]) {
                rec->right = i;
            } else {
                rec->left = i;
            }
        }
    }
    if (D_8018E1E0_ovl5[arg0] >= 0xA) {
        speed = 24.0f;
    } else if (D_8018E1E0_ovl5[arg0] >= 5) {
        speed = 32.0f;
    } else {
        speed = 40.0f;
    }
    if (rec->action == 0) {
        rec->timer = random_soft_s32_range(5) + 1;
        if (random_soft_s32_range(0x10) < ovl5_pers_(idx * 6)) {
            rec->action = 3;
            rec->timer = random_soft_s32_range(6) + 5;
            return;
        }
        t = func_8015EAB4_ovl5(arg0);
        if (t != 0xFF) {
            rec->target = t;
            if (D_800E9C60[D_8018E050_ovl5[t]] == 0) {
                func_8015F67C_ovl5(arg0);
            } else {
                func_8015F804_ovl5(arg0);
            }
        } else {
            if (random_soft_s32_range(2) != 0) {
                rec->action = 2;
            } else {
                rec->action = 1;
            }
            rec->timer = random_soft_s32_range(6) + 5;
        }
    }
    switch (rec->action) {
        case 2:
            D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] + speed;
            if (D_800EA6E0[omCurrentObj->objId] > 900.0f) {
                D_800EA6E0[omCurrentObj->objId] = 900.0f;
            }
            D_800E9C60[omCurrentObj->objId] = 2;
            return;
        case 1:
            D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] - speed;
            if (D_800EA6E0[omCurrentObj->objId] < -900.0f) {
                D_800EA6E0[omCurrentObj->objId] = -900.0f;
            }
            D_800E9C60[omCurrentObj->objId] = 1;
            return;
        case 4:
            D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
            if (random_soft_s32_range(2) != 0) {
                D_800E9C60[omCurrentObj->objId] = 2;
            } else {
                D_800E9C60[omCurrentObj->objId] = 1;
            }
            rec->action = 0;
            return;
        case 7:
            if (rec->side == 1) {
                rec->action = 2;
            } else {
                rec->action = 1;
            }
            rec->timer = random_soft_s32_range(0xA) + 6;
            return;
        case 6:
            if (((rec->side == 1) && (func_801608BC_ovl5(rec->right) != 0)) ||
                ((rec->side == 0) && (func_801608BC_ovl5(rec->left) != 0))) {
                rec->action = 0;
                return;
            }
            if (rec->side == 1) {
                rec->action = 2;
            } else {
                rec->action = 1;
            }
            rec->timer = random_soft_s32_range(0xA) + 6;
            return;
        case 8:
            if (random_soft_s32_range(0x10) < ovl5_pers_(idx * 6 + 3)) {
                if (((rec->side == 1) && (func_801608BC_ovl5(rec->right) != 0)) ||
                    ((rec->side == 0) && (func_801608BC_ovl5(rec->left) != 0))) {
                    D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
                    if (rec->side == 1) {
                        D_800E9C60[omCurrentObj->objId] = 2;
                    } else {
                        D_800E9C60[omCurrentObj->objId] = 1;
                    }
                }
            }
            rec->action = 0;
            return;
        default:
            return;
    }
}
#elif defined(PORT)
/* Per-tick CPU brain for racer arg0: ticks down the action timer, refreshes
 * the left/right neighbour bytes, and when idle rolls a new action from the
 * personality row (rest, walk toward the item picked by func_8015EAB4_ovl5,
 * or wander); then applies the current action to D_800EA6E0/D_800E9C60. */
void func_8015ED9C_ovl5(s32 arg0) {
    RacerAI *rec = &D_8018E228_ovl5[arg0];
    s32 idx = D_8018E224_ovl5[arg0];
    f32 speed;
    s32 i;
    s32 t;

    t = rec->timer;
    if (t != 0) {
        t -= 1;
        rec->timer = t;
        if (t == 0) {
            rec->action = 0;
        }
    }
    rec->left = 0xFF;
    rec->right = 0xFF;
    for (i = 0; i < 4; i++) {
        if ((i != arg0) && (func_801612D0_ovl5(arg0, i) != 0)) {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] < gEntitiesNextPosXArray[D_8018E030_ovl5[i]]) {
                rec->right = i;
            } else {
                rec->left = i;
            }
        }
    }
    if (D_8018E1E0_ovl5[arg0] >= 0xA) {
        speed = 24.0f;
    } else if (D_8018E1E0_ovl5[arg0] >= 5) {
        speed = 32.0f;
    } else {
        speed = 40.0f;
    }
    if (rec->action == 0) {
        rec->timer = random_soft_s32_range(5) + 1;
        if (random_soft_s32_range(0x10) < ovl5_pers_(idx * 6)) {
            rec->action = 3;
            rec->timer = random_soft_s32_range(6) + 5;
            return;
        }
        t = func_8015EAB4_ovl5(arg0);
        if (t != 0xFF) {
            rec->target = t;
            if (D_800E9C60[D_8018E050_ovl5[t]] == 0) {
                func_8015F67C_ovl5(arg0);
            } else {
                func_8015F804_ovl5(arg0);
            }
        } else {
            if (random_soft_s32_range(2) != 0) {
                rec->action = 2;
            } else {
                rec->action = 1;
            }
            rec->timer = random_soft_s32_range(6) + 5;
        }
    }
    switch (rec->action) {
        case 2:
            D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] + speed;
            if (D_800EA6E0[omCurrentObj->objId] > 900.0f) {
                D_800EA6E0[omCurrentObj->objId] = 900.0f;
            }
            D_800E9C60[omCurrentObj->objId] = 2;
            return;
        case 1:
            D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] - speed;
            if (D_800EA6E0[omCurrentObj->objId] < -900.0f) {
                D_800EA6E0[omCurrentObj->objId] = -900.0f;
            }
            D_800E9C60[omCurrentObj->objId] = 1;
            return;
        case 4:
            D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
            if (random_soft_s32_range(2) != 0) {
                D_800E9C60[omCurrentObj->objId] = 2;
            } else {
                D_800E9C60[omCurrentObj->objId] = 1;
            }
            rec->action = 0;
            return;
        case 7:
            if (rec->side == 1) {
                rec->action = 2;
            } else {
                rec->action = 1;
            }
            rec->timer = random_soft_s32_range(0xA) + 6;
            return;
        case 6:
            if (((rec->side == 1) && (func_801608BC_ovl5(rec->right) != 0)) ||
                ((rec->side == 0) && (func_801608BC_ovl5(rec->left) != 0))) {
                rec->action = 0;
                return;
            }
            if (rec->side == 1) {
                rec->action = 2;
            } else {
                rec->action = 1;
            }
            rec->timer = random_soft_s32_range(0xA) + 6;
            return;
        case 8:
            if (random_soft_s32_range(0x10) < ovl5_pers_(idx * 6 + 3)) {
                if (((rec->side == 1) && (func_801608BC_ovl5(rec->right) != 0)) ||
                    ((rec->side == 0) && (func_801608BC_ovl5(rec->left) != 0))) {
                    D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
                    if (rec->side == 1) {
                        D_800E9C60[omCurrentObj->objId] = 2;
                    } else {
                        D_800E9C60[omCurrentObj->objId] = 1;
                    }
                }
            }
            rec->action = 0;
            return;
        default:
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015ED9C_ovl5.s")
#endif

// 8 diffs: $s6/$s7 are swapped -- the ROM gives $s7 to the CSE'd
// &D_8018E030_ovl5[arg0] base and $s6 to `dir`; IDO does the reverse.
s32 func_8015F300_ovl5(s32 arg0, s32 arg1)
{
  s32 dir;
  s32 count;
  f32 *new_var;
  s32 i;
  if (gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]] < gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]])
  {
    dir = 1;
  }
  else
  {
    dir = 0;
  }
  count = 0;
  for (i = 0; i != 4; i++)
  {
    if (i == arg0)
    {
      continue;
    }
    if (dir != 0)
    {
      if (((gEntitiesNextPosXArray[D_8018E030_ovl5[i]] < gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]]) && (gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]] < gEntitiesNextPosXArray[D_8018E030_ovl5[i]])) || (func_8015F4C4_ovl5(i, arg1) == 2))
      {
 do { } while (0);
        count++;
      }
    }
    else
    {
      new_var = gEntitiesNextPosXArray;
      if (((new_var[D_8018E030_ovl5[arg0]] < gEntitiesNextPosXArray[D_8018E030_ovl5[i]]) && (gEntitiesNextPosXArray[D_8018E030_ovl5[i]] < gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]])) || (func_8015F4C4_ovl5(i, arg1) == 2))
      {
        count++;
      }
    }
  }

  return count;
}

s32 func_8015F4C4_ovl5(s32 arg0, s32 arg1) {
    f32 diff;

    diff = (gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] < func_801619E0_ovl5(arg1))
               ? -(gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] - func_801619E0_ovl5(arg1))
               : (gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] - func_801619E0_ovl5(arg1));
    if (diff < 100.0f) {
        return 2;
    }
    if (gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] < gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]]) {
        return 1;
    }
    return 0;
}

s32 func_8015F5DC_ovl5(s32 arg0, s32 arg1) {
    if (ABSF(gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] - gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]]) < 200.0f) {
        return 2;
    }
    if (gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] < gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]]) {
        return 1;
    }
    return 0;
}

// 2 diffs: the `sw $v1` spill of `p` and the `addiu $a0,0xA` swap places
// around the second random_soft_s32_range call (delay-slot fill only).
extern u8 D_8018691A_ovl5[];
s32 random_soft_s32_range(s32);
void func_80160088_ovl5(s32);
void func_80160120_ovl5(s32);
void func_8016050C_ovl5(s32);

void func_8015F67C_ovl5(s32 arg0)
{
  s32 sp2C = D_8018E224_ovl5[arg0];
  RacerAI *p = &D_8018E228_ovl5[arg0];
  s32 v0;
  v0 = func_8015F4C4_ovl5(arg0, p->target);
  if ((D_800EA520[omCurrentObj->objId] == 2) || (D_800EA520[omCurrentObj->objId] == 3))
  {
    if (v0 == 2)
    {
      func_80160088_ovl5(arg0);
    }
    else
      if (((v0 == 0) && (D_8018E228_ovl5[arg0].left != 0xFF)) || ((v0 == 1) && (D_8018E228_ovl5[arg0].right != 0xFF)))
    {
      func_80160120_ovl5(arg0);
    }
    else
    {
      func_8016050C_ovl5(arg0);
    }
  }
  else
    if (random_soft_s32_range(0x10) < D_8018691A_ovl5[sp2C * 6])
  {
    D_8018E228_ovl5[arg0].action = 4;
  }
  else
    if (v0 == 0)
  {
    D_8018E228_ovl5[arg0].action = 1;
  }
  else
    if (v0 == 1)
  {
    D_8018E228_ovl5[arg0].action = 2;
  }
  else
  {
    p->action = 3;
    p->timer = random_soft_s32_range(0xA) + 5;
  }
}

/* FACTORY: 208/221 [was noted 13/221], UNCERTAIN -- cross-checked against a fresh m2c pass
 * (matches the PORT arm's shape closely: same side==0/1/2 arms and
 * random_soft_s32_range offsets). Compiles, word count matches (221/221),
 * residue high (208/221). Register/frame allocation diverges broadly
 * (frame 0x30 target vs 0x40 here). Worth a fresh source-shape pass
 * before feeding to the permuter. */
#ifdef MIPS_TO_C
void func_8015F804_ovl5(s32 arg0) {
    s32 func_8015F5DC_ovl5(s32, s32);
    RacerAI *rec = &D_8018E228_ovl5[arg0];
    f32 range;
    f32 d;
    s32 t;

    range = (random_soft_f32() * 100.0f) + 600.0f;
    d = gEntitiesNextPosXArray[D_8018E050_ovl5[rec->target]] - gEntitiesNextPosXArray[omCurrentObj->objId];
    if (d < 0.0f) {
        d = -d;
    }
    if (d < range) {
        s32 side = func_8015F5DC_ovl5(arg0, rec->target);

        if (side == 0) {
            t = D_8018E050_ovl5[rec->target];
            if ((gEntitiesNextPosXArray[t] + range) > 900.0f) {
                if (gEntitiesNextPosYArray[t] > 500.0f) {
                    if (rec->left == 0xFF) {
                        rec->action = 1;
                        return;
                    }
                    rec->action = 8;
                    rec->side = 0;
                    return;
                }
                rec->action = 3;
                rec->timer = random_soft_s32_range(6) + 1;
                return;
            }
            if (rec->right == 0xFF) {
                rec->action = 2;
                return;
            }
            rec->action = 8;
            rec->side = 1;
            return;
        }
        if (side == 1) {
            t = D_8018E050_ovl5[rec->target];
            if ((gEntitiesNextPosXArray[t] - range) < -900.0f) {
                if (gEntitiesNextPosYArray[t] > 500.0f) {
                    if (rec->left == 0xFF) {
                        rec->action = 2;
                        return;
                    }
                    rec->action = 8;
                    rec->side = 1;
                    return;
                }
                rec->action = 3;
                rec->timer = random_soft_s32_range(6) + 1;
                return;
            }
            if (rec->left == 0xFF) {
                rec->action = 1;
                return;
            }
            rec->action = 8;
            rec->side = 0;
            return;
        }
        if (side == 2) {
            f32 x = gEntitiesNextPosXArray[omCurrentObj->objId];
            f32 dl = -900.0f - x;
            f32 dr = 900.0f - x;

            if (dl < 0.0f) {
                dl = -dl;
            }
            if (dr < 0.0f) {
                dr = -dr;
            }
            if (dl < dr) {
                rec->action = 2;
            } else {
                rec->action = 1;
            }
            rec->timer = random_soft_s32_range(6) + 0xA;
        }
        return;
    }
    rec->action = 3;
    rec->timer = random_soft_s32_range(6) + 1;
}
#elif defined(PORT)
/* Chase planner used when the picked item is already claimed by another
 * racer: if the target is within 600..700 units, ask func_8015F5DC_ovl5
 * which side to attack from and set walk/chase state accordingly (watching
 * the +-900 walls and the 500 height); otherwise rest for a while. */
void func_8015F804_ovl5(s32 arg0) {
    s32 func_8015F5DC_ovl5(s32, s32);
    RacerAI *rec = &D_8018E228_ovl5[arg0];
    f32 range;
    f32 d;
    s32 t;

    range = (random_soft_f32() * 100.0f) + 600.0f;
    d = gEntitiesNextPosXArray[D_8018E050_ovl5[rec->target]] - gEntitiesNextPosXArray[omCurrentObj->objId];
    if (d < 0.0f) {
        d = -d;
    }
    if (d < range) {
        s32 side = func_8015F5DC_ovl5(arg0, rec->target);

        if (side == 0) {
            t = D_8018E050_ovl5[rec->target];
            if ((gEntitiesNextPosXArray[t] + range) > 900.0f) {
                if (gEntitiesNextPosYArray[t] > 500.0f) {
                    if (rec->left == 0xFF) {
                        rec->action = 1;
                        return;
                    }
                    rec->action = 8;
                    rec->side = 0;
                    return;
                }
                rec->action = 3;
                rec->timer = random_soft_s32_range(6) + 1;
                return;
            }
            if (rec->right == 0xFF) {
                rec->action = 2;
                return;
            }
            rec->action = 8;
            rec->side = 1;
            return;
        }
        if (side == 1) {
            t = D_8018E050_ovl5[rec->target];
            if ((gEntitiesNextPosXArray[t] - range) < -900.0f) {
                if (gEntitiesNextPosYArray[t] > 500.0f) {
                    if (rec->left == 0xFF) {
                        rec->action = 2;
                        return;
                    }
                    rec->action = 8;
                    rec->side = 1;
                    return;
                }
                rec->action = 3;
                rec->timer = random_soft_s32_range(6) + 1;
                return;
            }
            if (rec->left == 0xFF) {
                rec->action = 1;
                return;
            }
            rec->action = 8;
            rec->side = 0;
            return;
        }
        if (side == 2) {
            f32 x = gEntitiesNextPosXArray[omCurrentObj->objId];
            f32 dl = -900.0f - x;
            f32 dr = 900.0f - x;

            if (dl < 0.0f) {
                dl = -dl;
            }
            if (dr < 0.0f) {
                dr = -dr;
            }
            if (dl < dr) {
                rec->action = 2;
            } else {
                rec->action = 1;
            }
            rec->timer = random_soft_s32_range(6) + 0xA;
        }
        return;
    }
    rec->action = 3;
    rec->timer = random_soft_s32_range(6) + 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F804_ovl5.s")
#endif

#ifdef NON_MATCHING
// 156/166: IDO hoists the loop constants 1 and 4 and the sp24 pointer into
// callee-saved registers (s1..s4); the ROM keeps only s0=i, s1=arg0 and
// spills the sp24 pointer in $v1 around the call. Index and pointer-walker
// forms compile identically.
extern u8 D_8018E22E_ovl5[];
s32 func_801612D0_ovl5(s32, s32);

s32 func_8015FB78_ovl5(s32 arg0) {
    s32 t;
    u8 sp24[4];
    s32 i;
    u8 *p;
    f32 x;

    t = D_8018E050_ovl5[D_8018E22E_ovl5[arg0 * 12]];
    p = sp24;
    for (i = 0; i < 4; i++) {
        if (arg0 != i && func_801612D0_ovl5(arg0, i) != 0) {
            *p = 1;
        } else {
            *p = 0;
        }
        p++;
    }
    x = gEntitiesNextPosXArray[omCurrentObj->objId];
    if (gEntitiesNextPosXArray[t] < x) {
        if (sp24[0] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[0]]) {
            return 1;
        }
        if (sp24[1] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[1]]) {
            return 1;
        }
        if (sp24[2] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[2]]) {
            return 1;
        }
        if (sp24[3] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[3]]) {
            return 1;
        }
        return 0;
    }
    if (sp24[0] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[0]] < x) {
        return 1;
    }
    if (sp24[1] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[1]] < x) {
        return 1;
    }
    if (sp24[2] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[2]] < x) {
        return 1;
    }
    if (sp24[3] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[3]] < x) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015FB78_ovl5.s")
#endif


/* FACTORY: 156/166 [was noted 10/166], register-pressure floor. Derived from the ASM (not the
 * PORT arm): the PORT's `for` loops were wrong shape -- the ROM builds
 * the flag array with a `do { } while` (a single conditional branch to
 * a shared "false" fallthrough, not a rolled-loop-of-4 for the second
 * half) and the tail is fully UNROLLED into four `D_8018E030_ovl5[0..3]`
 * literal-index checks per branch (matches sibling func_8015FB78_ovl5's
 * unrolled shape), not `D_8018E030_ovl5[i]` in a loop. Every field and
 * branch checks out once shaped this way. Residue: the ROM keeps only 2
 * saved regs ($s0=i, $s1=arg0, frame 0x30) across the func_801612D0_ovl5
 * call; this draft's IDO reaches for 5 ($s0-$s4, frame 0x48), relabeling
 * most of the body downstream. Register-pressure floor (LEVERS: no
 * source spelling reaches it). */
#ifdef MIPS_TO_C
s32 func_8015FE00_ovl5(s32 arg0) {
    s32 t;
    u8 sp24[4];
    s32 i;
    f32 x;

    t = D_8018E050_ovl5[D_8018E228_ovl5[arg0].target];
    i = 0;
    do {
        if (arg0 != i && func_801612D0_ovl5(arg0, i) != 0) {
            sp24[i] = 1;
        } else {
            sp24[i] = 0;
        }
        i++;
    } while (i < 4);
    x = gEntitiesNextPosXArray[omCurrentObj->objId];
    if (gEntitiesNextPosXArray[t] < x) {
        if (sp24[0] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[0]] < x) {
            return 1;
        }
        if (sp24[1] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[1]] < x) {
            return 1;
        }
        if (sp24[2] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[2]] < x) {
            return 1;
        }
        if (sp24[3] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[3]] < x) {
            return 1;
        }
        return 0;
    }
    if (sp24[0] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[0]]) {
        return 1;
    }
    if (sp24[1] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[1]]) {
        return 1;
    }
    if (sp24[2] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[2]]) {
        return 1;
    }
    if (sp24[3] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[3]]) {
        return 1;
    }
    return 0;
}
#elif defined(PORT)
/* Sibling of func_8015FB78_ovl5 above, with the same body shape: returns 1
 * when any touching neighbour racer stands between this racer and its
 * current target item (the ROM reads the target byte through the split
 * symbol D_8018E22E; the PORT reads the same record byte through the
 * canonical D_8018E228 base so it pairs with the writers above). */
s32 func_8015FE00_ovl5(s32 arg0) {
    s32 t;
    u8 sp24[4];
    s32 i;
    f32 x;

    t = D_8018E050_ovl5[D_8018E228_ovl5[arg0].target];
    for (i = 0; i < 4; i++) {
        if (arg0 != i && func_801612D0_ovl5(arg0, i) != 0) {
            sp24[i] = 1;
        } else {
            sp24[i] = 0;
        }
    }
    x = gEntitiesNextPosXArray[omCurrentObj->objId];
    if (gEntitiesNextPosXArray[t] < x) {
        for (i = 0; i < 4; i++) {
            if (sp24[i] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[i]] < x) {
                return 1;
            }
        }
        return 0;
    }
    for (i = 0; i < 4; i++) {
        if (sp24[i] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[i]]) {
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015FE00_ovl5.s")
#endif

void func_80160088_ovl5(s32 arg0) {
    D_8018E22C_ovl5[arg0 * 12] = 3;
}

s32 func_801600A8_ovl5(s32 arg0, s32 arg1) {
    if (func_8015F4C4_ovl5((arg1 == 1) ? D_8018E228_ovl5[arg0].right : D_8018E228_ovl5[arg0].left,
                           D_8018E228_ovl5[arg0].target) == 2) {
        return 1;
    }
    return 0;
}

/* FACTORY: 245/250, STRUCTURAL -- measured 2026-08-23, correcting a
 * stale note. Re-derived 2026-08-25 against the matched sibling
 * func_8016050C_ovl5 below (LEVERS lever 1) and two real defects fixed:
 * the draft CALLED ovl5_pers_, a PORT-only static, so in the N64 arm every
 * roll was an implicit `int f()` to a symbol that does not exist there
 * (LEVERS lever 55); it now reads D_80186918_ovl5[idx*6+1] directly the
 * way the matched sibling does, and the `RacerAI *rec` pointer is written
 * out as D_8018E228_ovl5[arg0] which brings the FRAME to the ROM's -0x30.
 * What remains is one register-allocation floor and it shifts every word:
 * the ROM spends NO saved register -- it keeps `idx` in its home slot at
 * 0x2C($sp), the row pointer at 0x20($sp) and &D_8018E228_ovl5[arg0] at
 * 0x1C($sp), spilling and reloading both around each of the five calls --
 * where IDO here holds `idx` in $s0 and rematerialises. That costs the
 * draft 14 words and puts `lui %hi(D_8018E224_ovl5)` after the stack
 * adjust instead of in word 0, so the raw count (248/250) is a shift, not
 * 248 independent diffs. Swept and inert: an explicit `u8 *row =
 * &D_80186918_ovl5[idx*6]` (frame grows to 0x38), an explicit `rec`
 * pointer, `u8 idx`, `(&D_80186918_ovl5[idx*6])[1]`, splitting idx's
 * declaration from its assignment, and hoisting `dir`'s initialiser.
 * The listing also swallows the next, unnamed function of the TU inside its
 * own `.size` (`jr $ra; nop` at 0x80160504 -- padtrap.py class 'swallowed'),
 * which a conversion writes out as `void func_80160504_ovl5(void) {}` after
 * this one, as done for func_80160A70_ovl5 below. Not a padding trap and not
 * what blocks this site: measured with the stub, still 245 of 250. */
#ifdef MIPS_TO_C
void func_80160120_ovl5(s32 arg0) {
    extern u8 D_80186918_ovl5[];
    s32 idx = D_8018E224_ovl5[arg0];

    if (random_soft_s32_range(0x10) < D_80186918_ovl5[idx * 6 + 1]) {
        s32 dir = 0;

        if (gEntitiesNextPosXArray[omCurrentObj->objId] <
            gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]]) {
            dir = 1;
        }
        if (func_801600A8_ovl5(arg0, dir) != 0) {
            if (gEntitiesNextPosYArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]] < 400.0f) {
                D_8018E228_ovl5[arg0].action = 8;
                if (func_8015FE00_ovl5(arg0) != 0) {
                    if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                        gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]]) {
                        D_8018E228_ovl5[arg0].side = 1;
                    } else {
                        D_8018E228_ovl5[arg0].side = 0;
                    }
                } else {
                    if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                        gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]]) {
                        D_8018E228_ovl5[arg0].side = 0;
                    } else {
                        D_8018E228_ovl5[arg0].side = 1;
                    }
                }
                return;
            }
            D_8018E228_ovl5[arg0].action = 3;
            return;
        }
    }
    if (random_soft_s32_range(0x10) < D_80186918_ovl5[idx * 6 + 1]) {
        D_8018E228_ovl5[arg0].action = 8;
        if (func_8015FE00_ovl5(arg0) != 0) {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]]) {
                D_8018E228_ovl5[arg0].side = 1;
            } else {
                D_8018E228_ovl5[arg0].side = 0;
            }
        } else {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]]) {
                D_8018E228_ovl5[arg0].side = 0;
            } else {
                D_8018E228_ovl5[arg0].side = 1;
            }
        }
        return;
    }
    if (random_soft_s32_range(0x10) < D_80186918_ovl5[idx * 6 + 1]) {
        D_8018E228_ovl5[arg0].action = 6;
        if (gEntitiesNextPosXArray[omCurrentObj->objId] <
            gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]]) {
            D_8018E228_ovl5[arg0].side = 1;
        } else {
            D_8018E228_ovl5[arg0].side = 0;
        }
        return;
    }
    D_8018E228_ovl5[arg0].action = 3;
    D_8018E228_ovl5[arg0].timer = random_soft_s32_range(6) + 5;
}
#elif defined(PORT)
/* Sibling of func_8016050C_ovl5 below (same personality-roll ladder, byte
 * [row*6+1]): reaction picker used when this racer bumps the racer holding
 * its target -- try a legal squeeze-past (func_801600A8_ovl5), else pick
 * chase (8), overtake (6), or give up and rest (3). */
void func_80160120_ovl5(s32 arg0) {
    s32 idx = D_8018E224_ovl5[arg0];
    RacerAI *rec = &D_8018E228_ovl5[arg0];

    if (random_soft_s32_range(0x10) < ovl5_pers_(idx * 6 + 1)) {
        s32 dir = 0;

        if (gEntitiesNextPosXArray[omCurrentObj->objId] <
            gEntitiesNextPosXArray[D_8018E050_ovl5[rec->target]]) {
            dir = 1;
        }
        if (func_801600A8_ovl5(arg0, dir) != 0) {
            if (gEntitiesNextPosYArray[D_8018E050_ovl5[rec->target]] < 400.0f) {
                rec->action = 8;
                if (func_8015FE00_ovl5(arg0) != 0) {
                    if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                        gEntitiesNextPosXArray[D_8018E050_ovl5[rec->target]]) {
                        rec->side = 1;
                    } else {
                        rec->side = 0;
                    }
                } else {
                    if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                        gEntitiesNextPosXArray[D_8018E050_ovl5[rec->target]]) {
                        rec->side = 0;
                    } else {
                        rec->side = 1;
                    }
                }
                return;
            }
            rec->action = 3;
            return;
        }
    }
    if (random_soft_s32_range(0x10) < ovl5_pers_(idx * 6 + 1)) {
        rec->action = 8;
        if (func_8015FE00_ovl5(arg0) != 0) {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                gEntitiesNextPosXArray[D_8018E050_ovl5[rec->target]]) {
                rec->side = 1;
            } else {
                rec->side = 0;
            }
        } else {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                gEntitiesNextPosXArray[D_8018E050_ovl5[rec->target]]) {
                rec->side = 0;
            } else {
                rec->side = 1;
            }
        }
        return;
    }
    if (random_soft_s32_range(0x10) < ovl5_pers_(idx * 6 + 1)) {
        rec->action = 6;
        if (gEntitiesNextPosXArray[omCurrentObj->objId] <
            gEntitiesNextPosXArray[D_8018E050_ovl5[rec->target]]) {
            rec->side = 1;
        } else {
            rec->side = 0;
        }
        return;
    }
    rec->action = 3;
    rec->timer = random_soft_s32_range(6) + 5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160120_ovl5.s")
#endif

extern u8 D_80186918_ovl5[];
s32 func_8015FB78_ovl5(s32);
s32 func_8015FE00_ovl5(s32);

void func_8016050C_ovl5(s32 arg0) {
    s32 idx = D_8018E224_ovl5[arg0];

    if (random_soft_s32_range(0x10) < D_80186918_ovl5[idx * 6 + 1]) {
        if (func_8015FB78_ovl5(arg0) == 0) {
            D_8018E228_ovl5[arg0].action = 7;
            if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]]) {
                D_8018E228_ovl5[arg0].side = 0;
            } else {
                D_8018E228_ovl5[arg0].side = 1;
            }
            return;
        }
    }
    if (random_soft_s32_range(0x10) < D_80186918_ovl5[idx * 6 + 1]) {
        D_8018E228_ovl5[arg0].action = 6;
        if (gEntitiesNextPosXArray[omCurrentObj->objId] <
            gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]]) {
            D_8018E228_ovl5[arg0].side = 1;
        } else {
            D_8018E228_ovl5[arg0].side = 0;
        }
        return;
    }
    if (random_soft_s32_range(0x10) < D_80186918_ovl5[idx * 6 + 1]) {
        D_8018E228_ovl5[arg0].action = 8;
        if (func_8015FE00_ovl5(arg0) != 0) {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]]) {
                D_8018E228_ovl5[arg0].side = 1;
            } else {
                D_8018E228_ovl5[arg0].side = 0;
            }
        } else {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0].target]]) {
                D_8018E228_ovl5[arg0].side = 0;
            } else {
                D_8018E228_ovl5[arg0].side = 1;
            }
        }
        return;
    }
    D_8018E228_ovl5[arg0].action = 3;
    D_8018E228_ovl5[arg0].timer = random_soft_s32_range(6) + 5;
}

s32 func_80160810_ovl5(s32 arg0) {
    switch (D_800EA520[D_8018E030_ovl5[arg0]]) {
        case 4:
        case 5:
        case 6:
        case 7:
        case 9:
        case 0xB:
        case 0xC:
        case 0xD:
            return 0;
    }
    return 1;
}

s32 func_80160868_ovl5(s32 arg0) {
    switch (D_800EA520[D_8018E030_ovl5[arg0]]) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 6:
        case 7:
            return 1;
    }
    return 0;
}

s32 func_801608BC_ovl5(s32 arg0) {
    if (arg0 == 0xFF) {
        return 0;
    }
    switch (D_800EA520[D_8018E030_ovl5[arg0]]) {
        case 2:
        case 3:
        case 6:
        case 7:
        case 0xA:
        case 0xC:
            return 1;
    }
    return 0;
}

s32 func_80160924_ovl5(s32 arg0) {
    s32 temp = D_800EA520[D_8018E030_ovl5[arg0]];

    if (temp == 0 || temp == 1 || temp == 2 || temp == 3) {
        return 1;
    }
    return 0;
}

s32 func_8016097C_ovl5(s32 arg0) {
    switch (D_800EA520[D_8018E030_ovl5[arg0]]) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
        case 7:
        case 0xC:
            return 1;
    }
    return 0;
}

s32 func_801609D0_ovl5(s32 arg0) {
    s32 temp = D_800EA520[D_8018E030_ovl5[arg0]];

    if (temp == 4 || temp == 5 || temp == 0xB) {
        return 0;
    }
    return 1;
}

/* The "dead epilogue" this function's listing carries (a second `jr $ra; nop`
   at 0x80160A70, inside func_80160A20_ovl5's .size, with the next real
   function at 0x80160A78) is a separate UNNAMED EMPTY FUNCTION that splat
   folded into this symbol because nothing branches to it. Earlier passes
   read it as a control-flow residue and chased C shapes for it; it is not
   one, and neither is it a splat task -- symbol_addrs.txt entries and
   explicit `size:` both leave the listing unchanged (measured, twice).
   It is simply the NEXT function in the translation unit, so writing it out
   below closes both. A/B'd on a scratch copy of the TU before un-guarding:
   .text, .rodata, .data and .bss are all byte-identical to the pragma
   build, the only object difference being the new label at 0x3D70. */
s32 func_80160A20_ovl5(s32 arg0) {
    switch (D_800EA520[D_8018E030_ovl5[arg0]]) {
        case 4:
        case 5:
        case 0xB:
            return 0;
    }
    return 1;
}

void func_80160A70_ovl5(void) {
}

s32 func_80160A78_ovl5(s32 arg0) {
    Unk16Bytes sp8 = D_80185FB0_ovl5;
    s32 pad;
    s32 idx;

    idx = D_8018E1E8_ovl5[arg0].kind;
    return D_800DFBD0[D_8018E030_ovl5[arg0]][sp8.unk0[idx]];
}

extern s32 D_8018E040_ovl5[];
extern void *D_801868CC_ovl5;
extern u32 D_801868D0_ovl5[2];
extern u32 D_801868D8_ovl5[2];
extern u32 D_801868E0_ovl5[2];
extern u32 D_801868E8_ovl5[2];
void func_80160D50_ovl5(GObj *);

void func_80160AF8_ovl5(GObj *arg0, s32 arg1) {
    D_800E98E0[omCurrentObj->objId] = arg1;
    D_8018E040_ovl5[arg1] = omCurrentObj->objId;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    D_800DF150[omCurrentObj->objId] = func_80160D50_ovl5;
    func_800A9864(D_801868CC_ovl5, 0x1869F, 0x10);
    while (1) {
        switch (D_800EA520[D_8018E030_ovl5[arg1]]) {
        case 8:
            func_800AA018((void *) D_801868D0_ovl5[0]);
            if (D_801868D0_ovl5[1] != 0) {
                func_800AA018((void *) D_801868D0_ovl5[1]);
            }
            func_800AF27C();
            break;
        case 10:
            func_800AA018((void *) D_801868D8_ovl5[0]);
            if (D_801868D8_ovl5[1] != 0) {
                func_800AA018((void *) D_801868D8_ovl5[1]);
            }
            func_800AF27C();
            break;
        case 11:
            func_800AA018((void *) D_801868E0_ovl5[0]);
            if (D_801868E0_ovl5[1] != 0) {
                func_800AA018((void *) D_801868E0_ovl5[1]);
            }
            func_800AF27C();
            while (11 == D_800EA520[D_8018E030_ovl5[arg1]]) {
                ohSleep(1);
            }
            break;
        case 12:
            func_800AA018((void *) D_801868E8_ovl5[0]);
            if (D_801868E8_ovl5[1] != 0) {
                func_800AA018((void *) D_801868E8_ovl5[1]);
            }
            func_800AF27C();
            break;
        }
        ohSleep(1);
    }
}

void func_80160D50_ovl5(GObj *arg0) {
    s32 t;
    Vector sp30;
    Vector sp24;
    void *dobj;

    t = D_800E98E0[omCurrentObj->objId];
    dobj = func_80160A78_ovl5(t);
    func_800B2340(&sp30, dobj, D_8018E030_ovl5[t]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp30.z;
    func_800B26D8(&sp24, dobj, D_8018E030_ovl5[t]);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp24.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp24.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp24.z;
}

#ifdef NON_MATCHING
// 58/131, same length: a one-slot rotation of the callee-saved file.
// ROM: s0=prev, s1=3, s2=&D_8018E258, s3=&omCurrentObj, s4=&D_801868F4.
// IDO: s0=3, s1=&D_8018E258, s2=&omCurrentObj, s3=&D_801868F4, s4=prev.
extern void *D_801868F0_ovl5;
extern void *D_801868F4_ovl5[2];
void func_800A9F98(void *, f32);
void func_80161078_ovl5(GObj *);

void func_80160E6C_ovl5(GObj *arg0, s32 arg1) {
    s32 prev;
    f32 vol;

    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    prev = D_8018E1E0_ovl5[arg1] + 1;
    D_800DF150[omCurrentObj->objId] = func_80161078_ovl5;
    func_800A9864(D_801868F0_ovl5, 0x1869F, 0x10);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    while (1) {
        s32 v = D_8018E1E0_ovl5[arg1];

        if (prev != v) {
            prev = v;
            if (v < 10) {
                if (prev < 5) {
                    func_800AFBB4(0, omCurrentObj);
                    if (3 == D_8018E258_ovl5) {
                        vol = 2.0f;
                    } else {
                        vol = 0.0f;
                    }
                } else {
                    func_800AFBB4(1, omCurrentObj);
                    if (3 == D_8018E258_ovl5) {
                        vol = 2.0f;
                    } else {
                        vol = 0.0f;
                    }
                }
            } else {
                func_800AFBB4(1, omCurrentObj);
                if (3 == D_8018E258_ovl5) {
                    vol = 3.0f;
                } else {
                    vol = 1.0f;
                }
            }
            if (D_801868F4_ovl5[0] != NULL) {
                func_800A9F98(D_801868F4_ovl5[0], vol);
            }
            func_800A9F98(D_801868F4_ovl5[1], vol);
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160E6C_ovl5.s")
#endif

// Draft, 14/76, verify.py-confirmed. Instruction-exact; the ROM keeps
// D_800E98E0[objId] in $v0 with no stack home, we need an `s32 t` local to
// get $v0 and that grows the frame 0x40 -> 0x48. All 24 declaration
// permutations swept, with and without t.
// Wave 10: DROPPING `t` and writing the index inline gives the ROM's exact
// frame (0x40) and spill slots with declaration order dobj, sp30, sp24, p --
// 38 diffs, ALL of them the same one-slot temp rotation ($t9/$t0/$t1 where the
// ROM has $v0/$t9/$t0), i.e. IDO never uses $v0 at all.  Every local costs a
// word here because sp30/sp24 are address-taken, so no 5th local can buy $v0.
// Also swept at that order: pointer arithmetic instead of &arr[i], a (u8 *)
// byte bias, and reusing the parameter as the scratch (72). Floor.
#ifdef NON_MATCHING
extern s32 D_8018E040_ovl5[];
extern s32 D_801868FC_ovl5;

void func_80161078_ovl5(GObj *arg0) {
    void *dobj;
    s32 *p;
    s32 t;
    Vector sp30;
    Vector sp24;

    t = D_800E98E0[omCurrentObj->objId];
    p = &D_8018E040_ovl5[t];
    dobj = D_800DFBD0[*p][D_801868FC_ovl5];
    func_800B2340(&sp30, dobj, *p);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp30.z;
    func_800B26D8(&sp24, dobj, *p);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp24.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp24.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp24.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161078_ovl5.s")
#endif
void func_801611A8_ovl5(GObj *arg0, s32 arg1) {
    func_800A9864(D_80186900_ovl5, 0x1869F, 0x10);
    func_800AA018(D_80186908_ovl5);
    if (D_80186910_ovl5 != NULL) {
        func_800AA018(D_80186910_ovl5);
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_8018E030_ovl5[arg1]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_8018E030_ovl5[arg1]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_8018E030_ovl5[arg1]];
    func_800AF27C();
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

f32 func_80161298_ovl5(s32 arg0, s32 arg1) {
    return D_80186950_ovl5[arg0] * 0.5f + D_80186950_ovl5[arg1] * 0.5f;
}

extern f32 D_800EA6E0[];

/* FACTORY: 4/60 differ (measured this pass, was 8/60). The stack half of
   the old residue is SOLVED: the struct block sat 4 bytes high because all
   three f32 scalars were declared AFTER the structs. LEVERS lever 32 --
   scalars declared BEFORE a run of structs slide the whole block down, 4
   bytes each. Measured here: 0 scalars before -> sp2C/sp24 at 0x30/0x28;
   3 before -> 0x24/0x1C; exactly ONE before -> the ROM's 0x2C/0x24, frame
   0x38. (A pad local, which the previous note reached for, only grows the
   frame -- it is a declaration-ORDER knob, not a size knob.)
   Remaining 4: the two index `addu` pairs are issued arg1-before-arg0 by
   the ROM's scheduler and arg0-before-arg1 here; the register assignment
   is already identical, only the two adjacent independent instructions are
   transposed. Swept this pass and rejected: swapping the a/b assignment
   order (7/60 -- it also swaps the $f2/$f12 roles, since the
   first-assigned float takes $f2 and the ROM's $f2 is the arg0 value);
   naming both indices in locals read arg1-first (fixes the first pair but
   costs 8 bytes of frame, 5/60); naming only arg1's index (7/60, frame
   0x40). Adjacent-instruction transposition -- permuter food. */
s32 func_801612D0_ovl5(s32 arg0, s32 arg1)
{
  f32 r;
  RacerSetup sp2C;
  RacerSetup sp24;
  f32 a;
  f32 b;
  sp2C = D_8018E1E8_ovl5[arg0];
  sp24 = D_8018E1E8_ovl5[arg1];
  r = func_80161298_ovl5(sp2C.kind, sp24.kind);
 do { a = D_800EA6E0[D_8018E030_ovl5[arg0]]; b = D_800EA6E0[D_8018E030_ovl5[arg1]]; } while (0);
  if (((a < b) ? (-(a - b)) : ((a * 1.0f) - b)) <= r)
  {
    return 1;
  }
  return 0;
}
/* Same shape as func_80160A20_ovl5 above: the trailing `jr $ra; nop` at
   0x80161424 inside this symbol's .size is the unnamed empty function that
   follows it (the next real function starts at 0x8016142C), so it is written
   out below rather than chased in C. Same scratch-copy A/B: every section
   byte-identical to the pragma build. */
s32 func_801613C0_ovl5(s32 arg0, s32 arg1) {
    if (D_800EA6E0[D_8018E030_ovl5[arg0]] < D_800EA6E0[D_8018E030_ovl5[arg1]]) {
        return arg0;
    }
    return arg1;
}

void func_80161424_ovl5(void) {
}

f32 func_8016142C_ovl5(s32 arg0) {
    return (D_800EA6E0[D_8018E030_ovl5[arg0]] - gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]]) * 0.5f;
}

void func_80161470_ovl5(s32 arg0, s32 arg1) {
    D_800EA520[D_8018E030_ovl5[arg0]] = 4;
    D_800EA520[D_8018E030_ovl5[arg1]] = 5;
    if (gEntitiesNextPosXArray[D_8018E030_ovl5[arg1]] < gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]]) {
        D_800EA6E0[D_8018E030_ovl5[arg0]] =
            gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] - D_80186950_ovl5[D_8018E1E8_ovl5[arg1].kind];
        D_800EA6E0[D_8018E030_ovl5[arg1]] =
            gEntitiesNextPosXArray[D_8018E030_ovl5[arg1]] + D_80186950_ovl5[D_8018E1E8_ovl5[arg0].kind];
    } else {
        D_800EA6E0[D_8018E030_ovl5[arg0]] =
            gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] + D_80186950_ovl5[D_8018E1E8_ovl5[arg1].kind];
        D_800EA6E0[D_8018E030_ovl5[arg1]] =
            gEntitiesNextPosXArray[D_8018E030_ovl5[arg1]] - D_80186950_ovl5[D_8018E1E8_ovl5[arg0].kind];
    }
    D_800EAA60[D_8018E030_ovl5[arg0]] =
        (D_800EA6E0[D_8018E030_ovl5[arg0]] - gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]]) / 10.0f;
    D_800EAA60[D_8018E030_ovl5[arg1]] =
        (D_800EA6E0[D_8018E030_ovl5[arg1]] - gEntitiesNextPosXArray[D_8018E030_ovl5[arg1]]) / 10.0f;
}

void func_801615D8_ovl5(s32 arg0, f32 arg1) {
    D_800EA520[D_8018E030_ovl5[arg0]] = 7;
    D_800EAA60[D_8018E030_ovl5[arg0]] = arg1;
}

void func_80161610_ovl5(s32 arg0) {
    s32 idx = D_8018E030_ovl5[arg0];
    f32 *p = &gEntitiesNextPosXArray[idx];

    *p += D_800EAA60[idx];
    if (D_800EAA60[idx] < 0.0f) {
        if (*p <= D_800EA6E0[idx]) {
            *p = D_800EA6E0[idx];
        }
    } else {
        if (D_800EA6E0[idx] <= *p) {
            *p = D_800EA6E0[idx];
        }
    }
}

s32 func_801616A8_ovl5(void) {
    s32 i;

    for (i = 0; i < 20; i++) {
        if (D_8018E208_ovl5[i] == 0) {
            return 0;
        }
    }
    return 1;
}

s32 func_80161720_ovl5(void) {
    s32 i;

    for (i = 0; i < 20; i++) {
        if (D_8018E208_ovl5[i] != 2) {
            return 0;
        }
    }
    return 1;
}

#ifdef NON_MATCHING
// 31/118, same length. Residue is one scheduling root: the ROM materialises
// the 35.0f into $f4 before the u32->f32 conversion of `n`, IDO after it,
// which rotates the whole FP register file. Both multiply operand orders
// compile identically.
extern s32 D_8018E21C_ovl5;
extern u8 D_8018E220_ovl5;
extern u8 D_8018E221_ovl5;
extern void *D_8018681C_ovl5;
s32 func_800BB4E4(s32, s32, s32);
void func_800A9760(void *);

void func_8016179C_ovl5(GObj *arg0) {
    u32 i;
    u32 n;
    s32 j;
    s32 t;
    f32 target;

    i = 0;
    n = 0;
    D_8018E21C_ovl5 = omCurrentObj->objId;
    func_800A9760(D_8018681C_ovl5);
    ohSleep(0x1E);
    target = 35.0f * n;
    while (1) {
        if (target == (f32) i) {
            if (func_801616A8_ovl5() != 0) {
                D_8018E221_ovl5 = n;
                for (j = 0; j != 4; j++) {
                    if (4 == D_8018E224_ovl5[j]) {
                        func_800BB4E4(j, 0xB, 0x3C);
                    }
                }
                play_sound(0x22F);
                D_8018E220_ovl5 = 1;
                curObjSleepForever();
            }
            t = request_track_general(6, 0, 0x70);
            D_800E98E0[t] = 10;
            D_800E9E20[t] = n;
            n++;
            target = 35.0f * n;
        }
        i++;
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016179C_ovl5.s")
#endif

extern u8 D_8018E208_ovl5[];
extern s32 random_soft_s32_range(s32);

s32 func_80161974_ovl5(void) {
    s32 sp28[20];
    s32 count;
    s32 i;

    count = 0;
    for (i = 0; i < 20; i++) {
        if (D_8018E208_ovl5[i] == 0) {
            sp28[count] = i;
            count++;
        }
    }
    return sp28[random_soft_s32_range(count)];
}

extern s32 D_8018E050_ovl5[];

#ifdef NON_MATCHING
/* 2 diffs: the spilled pointer lands at 0x18($sp), the ROM uses 0x1C -- the
   known frame-layout anomaly, unaffected by local count/order. */
f32 func_801619E0_ovl5(s32 arg0) {
    s32 *p = &D_8018E050_ovl5[arg0];

    return gEntitiesNextPosXArray[*p] + (sinf(*(f32 *) ((u8 *) D_800DE350[*p]->data.dobj->firstChild + 0x38)) * 50.0f);
}
#else
extern f32 sinf(f32);

f32 func_801619E0_ovl5(s32 arg0) {
    return gEntitiesNextPosXArray[D_8018E050_ovl5[arg0]] + sinf(D_800DE350[D_8018E050_ovl5[arg0]]->data.dobj->firstChild->angle.v.z) * 50.0f;
}
#endif

s32 func_80161A54_ovl5(s32 arg0) {
    s32 i;
    f32 diff;

    for (i = 0; i < 4; i++) {
        diff = (gEntitiesNextPosXArray[D_8018E030_ovl5[i]] < func_801619E0_ovl5(arg0))
                   ? -(gEntitiesNextPosXArray[D_8018E030_ovl5[i]] - func_801619E0_ovl5(arg0))
                   : (gEntitiesNextPosXArray[D_8018E030_ovl5[i]] - func_801619E0_ovl5(arg0));
        if (diff < 100.0f) {
            return i;
        }
    }
    return 0xFF;
}

/* FACTORY: 631/644 [was noted 162/643], UNCERTAIN -- PORT-seeded, time-boxed. Added two
 * missing local decls (`func_80162A44_ovl5` prototype, `D_8018E21C_ovl5`
 * extern -- both PORT-only/NON_MATCHING-only at file scope) and fixed
 * all five func_800B1900 kills to read objId as a HALF-WORD off the
 * pointer (`*(u16*)((u8*)omCurrentObj+2)`, `lhu` in the listing), not a
 * `(u16)` cast. Real remaining defect spotted but NOT fixed (time-box):
 * the ROM has only TWO func_800B1900 call sites (two `jal` at listing
 * offsets 0x498/0x50C, one falling into the other's target via `b`),
 * while this draft's flattened control flow calls it FIVE times --
 * needs the shared-tail/goto shape restored, not just a register sweep.
 * Compiles, word count matches (643/643), residue high (481/643). */
#ifdef MIPS_TO_C
void func_80161B4C_ovl5(GObj *gobj, s32 arg1) {
    void func_80162A44_ovl5(GObj *);
    extern s32 D_8018E21C_ovl5;
    extern u32 D_80186820_ovl5[];
    extern u32 D_80186870_ovl5[];
    extern u32 D_8018687C_ovl5[];
    extern u32 D_80186888_ovl5[];
    extern u32 D_8018688C_ovl5[];
    extern u32 D_801868A4_ovl5[];
    extern u32 D_801868B0_ovl5[];
    extern u32 D_801868BC_ovl5[];
    extern u8 D_8018694C_ovl5[];
    extern void *D_80186894_ovl5[];
    extern struct DObj **D_800DFBD0[];
    GObj *arg0 = omCurrentObj;
    Vector vec;
    s32 *slotp;
    s32 type;
    s32 node;
    s32 i;
    f32 lim;

    slotp = &D_8018E050_ovl5[arg1];
    *slotp = omCurrentObj->objId;
    type = random_soft_s32_range(3);
    D_800E9AA0[omCurrentObj->objId].as_u32 = type;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = arg1;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    D_800DF150[omCurrentObj->objId] = func_80162A44_ovl5;
    if (D_8018E258_ovl5 == 3) {
        func_800A9864((void *) (uintptr_t) D_8018687C_ovl5[type], 0x1869F, 0x10);
        func_800AA018((void *) (uintptr_t) D_80186888_ovl5[0]);
    } else {
        func_800A9864((void *) (uintptr_t) D_80186870_ovl5[type], 0x1869F, 0x10);
    }
    node = func_80161974_ovl5();
    D_800E98E0[omCurrentObj->objId] = node;
    D_8018E208_ovl5[node] = 1;
    func_800B2340(&vec, D_800DFBD0[D_8018E21C_ovl5][D_80186820_ovl5[node]], D_8018E21C_ovl5);
    gEntitiesNextPosXArray[omCurrentObj->objId] = vec.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = vec.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = vec.z;
    func_800AA018((void *) (uintptr_t) D_8018688C_ovl5[0]);
    if (D_8018688C_ovl5[1] != 0) {
        func_800AA018((void *) (uintptr_t) D_8018688C_ovl5[1]);
    }
    func_800AF27C();
    D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
    lim = 12.0f * (f32) arg1;
    if (lim > 0.0f) {
        for (i = 0; (f32) i < lim;) {
            ohSleep(1);
            i += 1;
        }
    }
    D_800E9FE0[omCurrentObj->objId].as_u32 = 2;
    func_800AA018((void *) (uintptr_t) ((u32 *) D_80186894_ovl5)[0]);
    if (((u32 *) D_80186894_ovl5)[1] != 0) {
        func_800AA018((void *) (uintptr_t) ((u32 *) D_80186894_ovl5)[1]);
    }
    for (i = 0; (f32) i < 60.0f;) {
        ohSleep(1);
        i += 1;
    }
    ohSleep(random_soft_s32_range(0xA) + 1);
    if (D_8018E220_ovl5 == 0) {
        f32 vel;
        f32 mag;

        D_800E9FE0[omCurrentObj->objId].as_u32 = 3;
        gEntitiesNextPosZArray[omCurrentObj->objId] += 10.0f;
        animResetModelAnimation(arg0);
        vel = ((250.0f - gEntitiesNextPosYArray[omCurrentObj->objId]) / 90.0f) - (random_soft_f32() * 3.0f);
        D_800E3210[omCurrentObj->objId] = vel;
        D_800E3750[omCurrentObj->objId] = -0.05f;
        mag = vel * 1.5f;
        if (mag < 0.0f) {
            mag = -mag;
        }
        D_800E3C90[omCurrentObj->objId] = mag;
        D_8018E208_ovl5[node] = 0;
        if (random_soft_s32_range(0x10) < D_8018694C_ovl5[D_8018E258_ovl5]) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
            D_800E9C60[omCurrentObj->objId] = 1;
            func_8000BBE0(D_800DE350[omCurrentObj->objId], omCurrentObj);
            if (D_8018E258_ovl5 == 3) {
                func_800A9760((void *) (uintptr_t) D_801868B0_ovl5[type]);
            } else {
                func_800A9760((void *) (uintptr_t) D_801868A4_ovl5[type]);
            }
            if (D_801868BC_ovl5[0] != 0) {
                func_800AA018((void *) (uintptr_t) D_801868BC_ovl5[0]);
            }
            if (D_801868BC_ovl5[1] != 0) {
                func_800AA018((void *) (uintptr_t) D_801868BC_ovl5[1]);
            }
        }
    }
    while (gEntitiesNextPosYArray[omCurrentObj->objId] > 250.0f) {
        ohSleep(1);
    }
    for (i = 0; i != 3; i++) {
        s32 idx = func_80161A54_ovl5(arg1);

        if (idx != 0xFF) {
            if (D_800E9C60[omCurrentObj->objId] != 0) {
                if (func_801609D0_ovl5(idx) != 0) {
                    s32 track;

                    D_800EA520[D_8018E030_ovl5[idx]] = 0xB;
                    track = request_track_general(6, 0, 0x70);
                    D_800E98E0[track] = 0xC;
                    D_800EA6E0[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
                    D_800EA8A0[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
                    D_800EAA60[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
                    D_800E3750[omCurrentObj->objId] = 0.0f;
                    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                    D_800E3C90[omCurrentObj->objId] = 65535.0f;
                    func_800AFBB4(0, omCurrentObj);
                    ohSleep(0x12);
                    *slotp = 0xFF;
                    func_800B1900(*(u16 *)((u8 *)omCurrentObj + 2));
                    *slotp = 0xFF;
                    func_800B1900(*(u16 *)((u8 *)omCurrentObj + 2));
                    ohSleep(1);
                }
            } else if (func_8016097C_ovl5(idx) != 0) {
                play_sound(0xF1);
                if (D_8018E224_ovl5[idx] == 4) {
                    func_800BB4E4(idx, 0xB, 0xA);
                }
                if (D_8018E1E0_ovl5[idx] < 0x63) {
                    D_8018E1E0_ovl5[idx] += 1;
                }
                if (D_800EA520[D_8018E030_ovl5[idx]] != 4) {
                    D_800EA520[D_8018E030_ovl5[idx]] = 0xC;
                }
                *slotp = 0xFF;
                func_800B1900(*(u16 *)((u8 *)omCurrentObj + 2));
                ohSleep(1);
            }
        } else {
            ohSleep(1);
        }
    }
    while (gEntitiesNextPosYArray[omCurrentObj->objId] > 110.0f) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        s32 track = request_track_general(6, 0, 0x70);

        D_800E98E0[track] = 0xC;
        D_800EA6E0[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
        D_800EA8A0[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
        D_800EAA60[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
        func_800AFBB4(0, omCurrentObj);
        ohSleep(0x12);
        *slotp = 0xFF;
        func_800B1900(*(u16 *)((u8 *)omCurrentObj + 2));
    } else {
        for (i = 0x14; i >= 0; i--) {
            gEntitiesScaleYArray[omCurrentObj->objId] = (f32) i * 0.05f;
            D_800E3210[omCurrentObj->objId] = -5.0f;
            ohSleep(1);
        }
    }
    *slotp = 0xFF;
    func_800B1900(*(u16 *)((u8 *)omCurrentObj + 2));
}
#elif defined(PORT)
/* Falling-food thread for item slot arg1 (sibling of func_8016253C_ovl5
 * below, which is the template for the drop half): registers the objId in
 * D_8018E050_ovl5[arg1], picks one of three food models, teleports to the
 * spawn node chosen by func_80161974_ovl5, dangles, may be grabbed by the
 * shark (func_8000BBE0 attach + chomp roll), then drops; while falling it
 * can be eaten by up to three racers (func_80161A54/func_8016097C), and on
 * the ground it either splashes (shark path) or shrinks away. */
void func_80161B4C_ovl5(GObj *gobj, s32 arg1) {
    extern u32 D_80186820_ovl5[];
    extern u32 D_80186870_ovl5[];
    extern u32 D_8018687C_ovl5[];
    extern u32 D_80186888_ovl5[];
    extern u32 D_8018688C_ovl5[];
    extern u32 D_801868A4_ovl5[];
    extern u32 D_801868B0_ovl5[];
    extern u32 D_801868BC_ovl5[];
    extern u8 D_8018694C_ovl5[];
    extern void *D_80186894_ovl5[];
    extern struct DObj **D_800DFBD0[];
    GObj *arg0 = omCurrentObj;
    Vector vec;
    s32 *slotp;
    s32 type;
    s32 node;
    s32 i;
    f32 lim;

    slotp = &D_8018E050_ovl5[arg1];
    *slotp = omCurrentObj->objId;
    type = random_soft_s32_range(3);
    D_800E9AA0[omCurrentObj->objId].as_u32 = type;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = arg1;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    D_800DF150[omCurrentObj->objId] = func_80162A44_ovl5;
    if (D_8018E258_ovl5 == 3) {
        func_800A9864((void *) (uintptr_t) D_8018687C_ovl5[type], 0x1869F, 0x10);
        func_800AA018((void *) (uintptr_t) D_80186888_ovl5[0]);
    } else {
        func_800A9864((void *) (uintptr_t) D_80186870_ovl5[type], 0x1869F, 0x10);
    }
    node = func_80161974_ovl5();
    D_800E98E0[omCurrentObj->objId] = node;
    D_8018E208_ovl5[node] = 1;
    func_800B2340(&vec, D_800DFBD0[D_8018E21C_ovl5][D_80186820_ovl5[node]], D_8018E21C_ovl5);
    gEntitiesNextPosXArray[omCurrentObj->objId] = vec.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = vec.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = vec.z;
    func_800AA018((void *) (uintptr_t) D_8018688C_ovl5[0]);
    if (D_8018688C_ovl5[1] != 0) {
        func_800AA018((void *) (uintptr_t) D_8018688C_ovl5[1]);
    }
    func_800AF27C();
    D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
    lim = 12.0f * (f32) arg1;
    if (lim > 0.0f) {
        for (i = 0; (f32) i < lim;) {
            ohSleep(1);
            i += 1;
        }
    }
    D_800E9FE0[omCurrentObj->objId].as_u32 = 2;
    func_800AA018((void *) (uintptr_t) ((u32 *) D_80186894_ovl5)[0]);
    if (((u32 *) D_80186894_ovl5)[1] != 0) {
        func_800AA018((void *) (uintptr_t) ((u32 *) D_80186894_ovl5)[1]);
    }
    for (i = 0; (f32) i < 60.0f;) {
        ohSleep(1);
        i += 1;
    }
    ohSleep(random_soft_s32_range(0xA) + 1);
    if (D_8018E220_ovl5 == 0) {
        f32 vel;
        f32 mag;

        D_800E9FE0[omCurrentObj->objId].as_u32 = 3;
        gEntitiesNextPosZArray[omCurrentObj->objId] += 10.0f;
        animResetModelAnimation(arg0);
        vel = ((250.0f - gEntitiesNextPosYArray[omCurrentObj->objId]) / 90.0f) - (random_soft_f32() * 3.0f);
        D_800E3210[omCurrentObj->objId] = vel;
        D_800E3750[omCurrentObj->objId] = -0.05f;
        mag = vel * 1.5f;
        if (mag < 0.0f) {
            mag = -mag;
        }
        D_800E3C90[omCurrentObj->objId] = mag;
        D_8018E208_ovl5[node] = 0;
        if (random_soft_s32_range(0x10) < D_8018694C_ovl5[D_8018E258_ovl5]) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
            D_800E9C60[omCurrentObj->objId] = 1;
            func_8000BBE0(D_800DE350[omCurrentObj->objId], omCurrentObj);
            if (D_8018E258_ovl5 == 3) {
                func_800A9760((void *) (uintptr_t) D_801868B0_ovl5[type]);
            } else {
                func_800A9760((void *) (uintptr_t) D_801868A4_ovl5[type]);
            }
            if (D_801868BC_ovl5[0] != 0) {
                func_800AA018((void *) (uintptr_t) D_801868BC_ovl5[0]);
            }
            if (D_801868BC_ovl5[1] != 0) {
                func_800AA018((void *) (uintptr_t) D_801868BC_ovl5[1]);
            }
        }
    }
    while (gEntitiesNextPosYArray[omCurrentObj->objId] > 250.0f) {
        ohSleep(1);
    }
    for (i = 0; i != 3; i++) {
        s32 idx = func_80161A54_ovl5(arg1);

        if (idx != 0xFF) {
            if (D_800E9C60[omCurrentObj->objId] != 0) {
                if (func_801609D0_ovl5(idx) != 0) {
                    s32 track;

                    D_800EA520[D_8018E030_ovl5[idx]] = 0xB;
                    track = request_track_general(6, 0, 0x70);
                    D_800E98E0[track] = 0xC;
                    D_800EA6E0[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
                    D_800EA8A0[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
                    D_800EAA60[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
                    D_800E3750[omCurrentObj->objId] = 0.0f;
                    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                    D_800E3C90[omCurrentObj->objId] = 65535.0f;
                    func_800AFBB4(0, omCurrentObj);
                    ohSleep(0x12);
                    *slotp = 0xFF;
                    func_800B1900((u16) omCurrentObj->objId);
                    *slotp = 0xFF;
                    func_800B1900((u16) omCurrentObj->objId);
                    ohSleep(1);
                }
            } else if (func_8016097C_ovl5(idx) != 0) {
                play_sound(0xF1);
                if (D_8018E224_ovl5[idx] == 4) {
                    func_800BB4E4(idx, 0xB, 0xA);
                }
                if (D_8018E1E0_ovl5[idx] < 0x63) {
                    D_8018E1E0_ovl5[idx] += 1;
                }
                if (D_800EA520[D_8018E030_ovl5[idx]] != 4) {
                    D_800EA520[D_8018E030_ovl5[idx]] = 0xC;
                }
                *slotp = 0xFF;
                func_800B1900((u16) omCurrentObj->objId);
                ohSleep(1);
            }
        } else {
            ohSleep(1);
        }
    }
    while (gEntitiesNextPosYArray[omCurrentObj->objId] > 110.0f) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        s32 track = request_track_general(6, 0, 0x70);

        D_800E98E0[track] = 0xC;
        D_800EA6E0[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
        D_800EA8A0[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
        D_800EAA60[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
        func_800AFBB4(0, omCurrentObj);
        ohSleep(0x12);
        *slotp = 0xFF;
        func_800B1900((u16) omCurrentObj->objId);
    } else {
        for (i = 0x14; i >= 0; i--) {
            gEntitiesScaleYArray[omCurrentObj->objId] = (f32) i * 0.05f;
            D_800E3210[omCurrentObj->objId] = -5.0f;
            ohSleep(1);
        }
    }
    *slotp = 0xFF;
    func_800B1900((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161B4C_ovl5.s")
#endif

/* Faithful, not byte-exact (304/324, 2 instructions long). The decode is
   verified against the listing statement by statement; the residue is a
   whole-function $v0/$v1 role swap (the ROM parks omCurrentObj in $v0 and
   objId*4 in $v1) which shifts every later scheduling decision. Swept:
   declaration order and count, prologue statement order, declaration-
   initializer form, and return-type flips on every prototype this function
   introduces. */
#ifdef NON_MATCHING
extern void *D_80186894_ovl5[];
extern u8 D_8018E221_ovl5;
extern f32 D_8018D5D0_ovl5;
extern f32 D_8018D5D4_ovl5;
extern f32 D_8018D5D8_ovl5;
extern f32 D_8018D5DC_ovl5;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B1900(u16);
s32 func_800BB4E4(s32, s32, s32);
void animResetModelAnimation(GObj *);
f32 random_soft_f32(void);
s32 func_8016097C_ovl5(s32);

void func_8016253C_ovl5(GObj *arg0) {
    s32 base;
    s32 i;
    s32 n;
    s32 idx;
    f32 r;
    s32 track;
    s32 pad;

    D_800DF150[omCurrentObj->objId] = NULL;
    track = D_800E9E20[omCurrentObj->objId];
    base = D_800E98E0[omCurrentObj->objId];
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8018D5D0_ovl5;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 2;
    func_800AA018(D_80186894_ovl5[0]);
    if (D_80186894_ovl5[1] != NULL) {
        func_800AA018(D_80186894_ovl5[1]);
    }
    ohSleep(0x3C);
    n = (s32) ((D_8018E221_ovl5 - track) * 20.0f);
    for (i = 0; i < n; i++) {
        ohSleep(1);
    }
    ohSleep(random_soft_s32_range(0xA) + 1);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 3;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId] + 10.0f;
    animResetModelAnimation(arg0);
    r = random_soft_f32();
    D_800E3210[omCurrentObj->objId] = (250.0f - gEntitiesNextPosYArray[omCurrentObj->objId]) / 90.0f - r * 3.0f;
    D_800E3750[omCurrentObj->objId] = D_8018D5D4_ovl5;
    D_800E3C90[omCurrentObj->objId] = ABSF(D_800E3210[omCurrentObj->objId] * 1.5f);
    while (250.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        ohSleep(1);
    }
    for (i = 0; i != 3; i++) {
        idx = func_80161A54_ovl5(track);
        if (idx == 0xFF) {
            continue;
        }
        if (func_8016097C_ovl5(idx) == 0) {
            continue;
        }
        play_sound(0xF1);
        if (4 != D_8018E224_ovl5[idx]) {
            func_800BB4E4(idx, 0xB, 0xA);
        }
        if (D_8018E1E0_ovl5[idx] < 0x63) {
            D_8018E1E0_ovl5[idx] = D_8018E1E0_ovl5[idx] + 1;
        }
        if (4 != D_800EA520[D_8018E030_ovl5[idx]]) {
            D_800EA520[D_8018E030_ovl5[idx]] = 0xC;
        }
        D_8018E208_ovl5[base] = 2;
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
    while (110.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8018D5D8_ovl5;
    for (i = 0x14; i >= 0; i--) {
        gEntitiesScaleYArray[omCurrentObj->objId] = i * D_8018D5DC_ovl5;
        D_800E3210[omCurrentObj->objId] = -5.0f;
        ohSleep(1);
    }
    D_8018E208_ovl5[base] = 2;
    func_800B1900(((u16 *) omCurrentObj)[1]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016253C_ovl5.s")
#endif

void func_80162A44_ovl5(GObj *arg0) {
    if (D_8018E220_ovl5 != 0) {
        if (D_800E9FE0[omCurrentObj->objId].as_s32 != 3 && D_800E9FE0[omCurrentObj->objId].as_s32 != 4) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016253C_ovl5);
        }
    }
}

s32 func_80162AB0_ovl5(s32 arg0, f32 arg1, f32 arg2) {
    f32 temp = gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]];
    f32 diff = (temp < arg1) ? -(temp - arg1) : (temp - arg1);

    if (diff < arg2) {
        return 1;
    }
    return 0;
}

s32 func_80160A20_ovl5(s32);

void func_80162B1C_ovl5(GObj *arg0, f32 arg1, f32 arg2, f32 arg3) {
    s32 i;
    s32 j;

    func_800A7F74(1, 0, 3, arg1, arg2, arg3);
    play_sound(0xE);
    for (j = 0; j != 0x12; j++) {
        for (i = 0; i != 4; i++) {
            if (func_80160A20_ovl5(i) != 0) {
                if (func_80162AB0_ovl5(i, arg1, (j < 8) ? 50.0f : 200.0f) != 0) {
                    D_800EA520[D_8018E030_ovl5[i]] = 0xB;
                }
            }
        }
        ohSleep(1);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_80162C68_ovl5(GObj *arg0) {
    func_800A7F74(1, 0, D_80186934_ovl5[D_8018E258_ovl5], D_80186940_ovl5[0], D_80186940_ovl5[1], D_80186940_ovl5[2]);
    curObjSleepForever();
}

void func_80162E30_ovl5(GObj *);
s32 func_80164914_ovl5(s32);

void func_80162CCC_ovl5(GObj *arg0) {
    s32 i;

    D_800DF150[omCurrentObj->objId] = func_80162E30_ovl5;
    D_800DDA90[omCurrentObj->objId] = 0x24;
    while (1) {
        if (D_8018E220_ovl5 != 0) {
            if (func_80161720_ovl5() != 0) {
                if (D_8018E020_ovl5 == 0) {
                    D_8018E020_ovl5 = 0x3C;
                    D_8018E024_ovl5 = 1;
                    for (i = 0; i != 4; i++) {
                        if (func_80164914_ovl5(i) == 0) {
                            D_800EA520[D_8018E030_ovl5[i]] = 0xD;
                        }
                    }
                    curObjSleepForever();
                }
            }
        }
        ohSleep(1);
    }
}

/* FACTORY: 913/932 [was noted 19/932], UNCERTAIN -- PORT-seeded, time-boxed. Compiles, word
 * count matches (932/932), residue extreme (913/932) -- broad register/
 * frame relabeling from word 0 (ROM: 8 saved slots incl. $f20/$f22,
 * frame 0xD0; this draft's IDO allocation differs). The largest
 * function in this file -- prime permuter fuel given its size, but
 * worth a fresh m2c pass first. */
#ifdef MIPS_TO_C
void func_80162E30_ovl5(GObj *arg0) {
    s32 ord[4];
    s32 i;
    s32 j;

#define OBJ5_(k) D_8018E030_ovl5[ord[(k)]]
#define KIND5_(k) D_8018E1E8_ovl5[ord[(k)]].kind
    for (i = 0; i < 4; i++) {
        ord[i] = i;
    }
    for (i = 0; i < 4; i++) {
        for (j = i; j < 4; j++) {
            if (func_801613C0_ovl5(ord[i], ord[j]) == ord[j]) {
                s32 t = ord[i];

                ord[i] = ord[j];
                ord[j] = t;
            }
        }
    }
    for (i = 0; i < 4; i++) {
        D_800E9E20[OBJ5_(i)] = 0;
    }
    for (i = 0; i < 4; i++) {
        if (func_80160868_ovl5(ord[i]) == 0) {
            continue;
        }
        if (D_800E9C60[OBJ5_(i)] != 1) {
            continue;
        }
        if ((i != 0) && (func_801612D0_ovl5(ord[i], ord[i - 1]) != 0)) {
            D_800E9E20[OBJ5_(i)] = 1;
            if (func_80160868_ovl5(ord[i - 1]) != 0) {
                s32 st = D_800E9C60[OBJ5_(i - 1)];

                if (st == 1 || st == 2) {
                    gEntitiesNextPosXArray[OBJ5_(i)] =
                        func_80161298_ovl5(KIND5_(i), KIND5_(i - 1)) + D_800EA6E0[OBJ5_(i - 1)];
                    if (st == 2) {
                        gEntitiesNextPosXArray[OBJ5_(i)] =
                            func_80161298_ovl5(KIND5_(i), KIND5_(i - 1)) + gEntitiesNextPosXArray[OBJ5_(i - 1)];
                    }
                } else {
                    f32 push;

                    gEntitiesNextPosXArray[OBJ5_(i)] =
                        func_80161298_ovl5(KIND5_(i), KIND5_(i - 1)) + D_800EA6E0[OBJ5_(i - 1)];
                    push = func_8016142C_ovl5(ord[i]);
                    if ((i >= 2) && (func_801612D0_ovl5(ord[i - 1], ord[i - 2]) != 0)) {
                        if (func_80160868_ovl5(ord[i - 2]) != 0) {
                            s32 st2 = D_800E9C60[OBJ5_(i - 2)];

                            if (st2 == 1) {
                                gEntitiesNextPosXArray[OBJ5_(i)] =
                                    func_80161298_ovl5(KIND5_(i), KIND5_(i - 1)) + D_800EA6E0[OBJ5_(i - 1)];
                            } else if (st2 == 0) {
                                if ((i >= 3) && (func_801612D0_ovl5(ord[i - 2], ord[i - 3]) != 0)) {
                                    if (func_80160868_ovl5(ord[i - 3]) != 0) {
                                        s32 st3 = D_800E9C60[OBJ5_(i - 3)];

                                        if (st3 == 1) {
                                            gEntitiesNextPosXArray[OBJ5_(i)] =
                                                func_80161298_ovl5(KIND5_(i), KIND5_(i - 1)) + D_800EA6E0[OBJ5_(i - 1)];
                                        } else if (st3 == 0) {
                                            f32 x = gEntitiesNextPosXArray[OBJ5_(i - 3)];

                                            if (x + push < -900.0f) {
                                                push = -900.0f - x;
                                            }
                                            gEntitiesNextPosXArray[OBJ5_(i - 3)] = x + push;
                                            D_800EA6E0[OBJ5_(i - 3)] = gEntitiesNextPosXArray[OBJ5_(i - 3)];
                                            gEntitiesNextPosXArray[OBJ5_(i - 2)] += push;
                                            D_800EA6E0[OBJ5_(i - 2)] = gEntitiesNextPosXArray[OBJ5_(i - 2)];
                                            gEntitiesNextPosXArray[OBJ5_(i - 1)] += push;
                                            D_800EA6E0[OBJ5_(i - 1)] = gEntitiesNextPosXArray[OBJ5_(i - 1)];
                                            gEntitiesNextPosXArray[OBJ5_(i)] += push;
                                        }
                                    }
                                } else {
                                    f32 x = gEntitiesNextPosXArray[OBJ5_(i - 2)];

                                    if (x + push < -900.0f) {
                                        push = -900.0f - x;
                                    }
                                    gEntitiesNextPosXArray[OBJ5_(i - 2)] = x + push;
                                    D_800EA6E0[OBJ5_(i - 2)] = gEntitiesNextPosXArray[OBJ5_(i - 2)];
                                    gEntitiesNextPosXArray[OBJ5_(i - 1)] += push;
                                    D_800EA6E0[OBJ5_(i - 1)] = gEntitiesNextPosXArray[OBJ5_(i - 1)];
                                    gEntitiesNextPosXArray[OBJ5_(i)] += push;
                                }
                            }
                        }
                    } else {
                        f32 x = gEntitiesNextPosXArray[OBJ5_(i - 1)];

                        if (x + push < -900.0f) {
                            push = -900.0f - x;
                        }
                        gEntitiesNextPosXArray[OBJ5_(i - 1)] = x + push;
                        D_800EA6E0[OBJ5_(i - 1)] = gEntitiesNextPosXArray[OBJ5_(i - 1)];
                        gEntitiesNextPosXArray[OBJ5_(i)] += push;
                    }
                }
            }
            D_800EA6E0[OBJ5_(i)] = gEntitiesNextPosXArray[OBJ5_(i)];
        } else {
            gEntitiesNextPosXArray[OBJ5_(i)] = D_800EA6E0[OBJ5_(i)];
        }
    }
    for (i = 3; i >= 0; i--) {
        if (func_80160868_ovl5(ord[i]) == 0) {
            continue;
        }
        if (D_800E9C60[OBJ5_(i)] != 2) {
            continue;
        }
        if ((i != 3) && (func_801612D0_ovl5(ord[i], ord[i + 1]) != 0)) {
            D_800E9E20[OBJ5_(i)] = 1;
            if (func_80160868_ovl5(ord[i + 1]) != 0) {
                s32 st = D_800E9C60[OBJ5_(i + 1)];

                if (st != 0) {
                    if (st == 2) {
                        gEntitiesNextPosXArray[OBJ5_(i)] =
                            D_800EA6E0[OBJ5_(i + 1)] - func_80161298_ovl5(KIND5_(i), KIND5_(i + 1));
                    }
                } else {
                    f32 push;

                    gEntitiesNextPosXArray[OBJ5_(i)] =
                        D_800EA6E0[OBJ5_(i + 1)] - func_80161298_ovl5(KIND5_(i), KIND5_(i + 1));
                    push = func_8016142C_ovl5(ord[i]);
                    if ((i < 2) && (func_801612D0_ovl5(ord[i + 1], ord[i + 2]) != 0)) {
                        if (func_80160868_ovl5(ord[i + 2]) != 0) {
                            s32 st2 = D_800E9C60[OBJ5_(i + 2)];

                            if (st2 != 0) {
                                if (st2 == 2) {
                                    gEntitiesNextPosXArray[OBJ5_(i)] =
                                        D_800EA6E0[OBJ5_(i + 1)] - func_80161298_ovl5(KIND5_(i), KIND5_(i + 1));
                                }
                            } else if ((i < 1) && (func_801612D0_ovl5(ord[i + 2], ord[i + 3]) != 0)) {
                                if (func_80160868_ovl5(ord[i + 3]) != 0) {
                                    s32 st3 = D_800E9C60[OBJ5_(i + 3)];

                                    if (st3 != 0) {
                                        if (st3 == 2) {
                                            gEntitiesNextPosXArray[OBJ5_(i)] =
                                                D_800EA6E0[OBJ5_(i + 1)] - func_80161298_ovl5(KIND5_(i), KIND5_(i + 1));
                                        }
                                    } else {
                                        f32 x = gEntitiesNextPosXArray[OBJ5_(i + 3)];

                                        if (x + push > 900.0f) {
                                            push = 900.0f - x;
                                        }
                                        gEntitiesNextPosXArray[OBJ5_(i + 3)] = x + push;
                                        D_800EA6E0[OBJ5_(i + 3)] = gEntitiesNextPosXArray[OBJ5_(i + 3)];
                                        gEntitiesNextPosXArray[OBJ5_(i + 2)] += push;
                                        D_800EA6E0[OBJ5_(i + 2)] = gEntitiesNextPosXArray[OBJ5_(i + 2)];
                                        gEntitiesNextPosXArray[OBJ5_(i + 1)] += push;
                                        D_800EA6E0[OBJ5_(i + 1)] = gEntitiesNextPosXArray[OBJ5_(i + 1)];
                                        gEntitiesNextPosXArray[OBJ5_(i)] += push;
                                    }
                                }
                            } else {
                                f32 x = gEntitiesNextPosXArray[OBJ5_(i + 2)];

                                if (x + push > 900.0f) {
                                    push = 900.0f - x;
                                }
                                gEntitiesNextPosXArray[OBJ5_(i + 2)] = x + push;
                                D_800EA6E0[OBJ5_(i + 2)] = gEntitiesNextPosXArray[OBJ5_(i + 2)];
                                gEntitiesNextPosXArray[OBJ5_(i + 1)] += push;
                                D_800EA6E0[OBJ5_(i + 1)] = gEntitiesNextPosXArray[OBJ5_(i + 1)];
                                gEntitiesNextPosXArray[OBJ5_(i)] += push;
                            }
                        }
                    } else {
                        f32 x = gEntitiesNextPosXArray[OBJ5_(i + 1)];

                        if (x + push > 900.0f) {
                            push = 900.0f - x;
                        }
                        gEntitiesNextPosXArray[OBJ5_(i + 1)] = x + push;
                        D_800EA6E0[OBJ5_(i + 1)] = gEntitiesNextPosXArray[OBJ5_(i + 1)];
                        gEntitiesNextPosXArray[OBJ5_(i)] += push;
                    }
                }
            }
            D_800EA6E0[OBJ5_(i)] = gEntitiesNextPosXArray[OBJ5_(i)];
        } else {
            gEntitiesNextPosXArray[OBJ5_(i)] = D_800EA6E0[OBJ5_(i)];
        }
    }
    for (i = 0; i < 4; i++) {
        if (func_80160810_ovl5(ord[i]) == 0) {
            continue;
        }
        if (D_800E9FE0[OBJ5_(i)].as_u32 != 1) {
            continue;
        }
        switch (D_800E9C60[OBJ5_(i)]) {
            case 1:
                if ((i >= 1) && (D_800E9E20[OBJ5_(i)] != 0)) {
                    if (func_801608BC_ovl5(ord[i - 1]) != 0) {
                        func_80161470_ovl5(ord[i], ord[i - 1]);
                    } else {
                        func_801615D8_ovl5(ord[i], 20.0f);
                    }
                } else {
                    func_801615D8_ovl5(ord[i], -20.0f);
                }
                break;
            case 2:
                if ((i < 3) && (D_800E9E20[OBJ5_(i)] != 0)) {
                    if (func_801608BC_ovl5(ord[i + 1]) != 0) {
                        func_80161470_ovl5(ord[i], ord[i + 1]);
                    } else {
                        func_801615D8_ovl5(ord[i], -20.0f);
                    }
                } else {
                    func_801615D8_ovl5(ord[i], 20.0f);
                }
                break;
        }
    }
    for (i = 0; i < 4; i++) {
        if (((i != 0) && (func_801612D0_ovl5(ord[i], ord[i - 1]) != 0)) ||
            ((i != 3) && (func_801612D0_ovl5(ord[i], ord[i + 1]) != 0))) {
            if (func_80160924_ovl5(ord[i]) != 0) {
                if (D_800E9C60[OBJ5_(i)] == 0) {
                    D_800EA520[OBJ5_(i)] = 2;
                } else {
                    D_800EA520[OBJ5_(i)] = 3;
                }
            }
        } else if (func_80160868_ovl5(ord[i]) != 0) {
            s32 st = D_800EA520[OBJ5_(i)];

            if ((st != 6) && (st != 7)) {
                if (D_800E9C60[OBJ5_(i)] == 0) {
                    D_800EA520[OBJ5_(i)] = 0;
                } else {
                    D_800EA520[OBJ5_(i)] = 1;
                }
            }
        }
    }
#undef OBJ5_
#undef KIND5_
}
#elif defined(PORT)
/* Per-frame racer separation resolver (draw callback installed by
 * func_80162CCC_ovl5 above): sorts the four racers left-to-right with
 * func_801613C0_ovl5, then runs a left-push pass (walking-left racers shove
 * chains of idle racers, clamped at -900), a mirrored right-push pass
 * (clamped at +900), a shove-reaction pass (bump the toucher, or squeeze at
 * +-20), and finally promotes/demotes the command state (2/3 push poses vs
 * 0/1 idle/walk) for racers in contact. */
void func_80162E30_ovl5(GObj *arg0) {
    s32 ord[4];
    s32 i;
    s32 j;

#define OBJ5_(k) D_8018E030_ovl5[ord[(k)]]
#define KIND5_(k) D_8018E1E8_ovl5[ord[(k)]].kind
    for (i = 0; i < 4; i++) {
        ord[i] = i;
    }
    for (i = 0; i < 4; i++) {
        for (j = i; j < 4; j++) {
            if (func_801613C0_ovl5(ord[i], ord[j]) == ord[j]) {
                s32 t = ord[i];

                ord[i] = ord[j];
                ord[j] = t;
            }
        }
    }
    for (i = 0; i < 4; i++) {
        D_800E9E20[OBJ5_(i)] = 0;
    }
    for (i = 0; i < 4; i++) {
        if (func_80160868_ovl5(ord[i]) == 0) {
            continue;
        }
        if (D_800E9C60[OBJ5_(i)] != 1) {
            continue;
        }
        if ((i != 0) && (func_801612D0_ovl5(ord[i], ord[i - 1]) != 0)) {
            D_800E9E20[OBJ5_(i)] = 1;
            if (func_80160868_ovl5(ord[i - 1]) != 0) {
                s32 st = D_800E9C60[OBJ5_(i - 1)];

                if (st == 1 || st == 2) {
                    gEntitiesNextPosXArray[OBJ5_(i)] =
                        func_80161298_ovl5(KIND5_(i), KIND5_(i - 1)) + D_800EA6E0[OBJ5_(i - 1)];
                    if (st == 2) {
                        gEntitiesNextPosXArray[OBJ5_(i)] =
                            func_80161298_ovl5(KIND5_(i), KIND5_(i - 1)) + gEntitiesNextPosXArray[OBJ5_(i - 1)];
                    }
                } else {
                    f32 push;

                    gEntitiesNextPosXArray[OBJ5_(i)] =
                        func_80161298_ovl5(KIND5_(i), KIND5_(i - 1)) + D_800EA6E0[OBJ5_(i - 1)];
                    push = func_8016142C_ovl5(ord[i]);
                    if ((i >= 2) && (func_801612D0_ovl5(ord[i - 1], ord[i - 2]) != 0)) {
                        if (func_80160868_ovl5(ord[i - 2]) != 0) {
                            s32 st2 = D_800E9C60[OBJ5_(i - 2)];

                            if (st2 == 1) {
                                gEntitiesNextPosXArray[OBJ5_(i)] =
                                    func_80161298_ovl5(KIND5_(i), KIND5_(i - 1)) + D_800EA6E0[OBJ5_(i - 1)];
                            } else if (st2 == 0) {
                                if ((i >= 3) && (func_801612D0_ovl5(ord[i - 2], ord[i - 3]) != 0)) {
                                    if (func_80160868_ovl5(ord[i - 3]) != 0) {
                                        s32 st3 = D_800E9C60[OBJ5_(i - 3)];

                                        if (st3 == 1) {
                                            gEntitiesNextPosXArray[OBJ5_(i)] =
                                                func_80161298_ovl5(KIND5_(i), KIND5_(i - 1)) + D_800EA6E0[OBJ5_(i - 1)];
                                        } else if (st3 == 0) {
                                            f32 x = gEntitiesNextPosXArray[OBJ5_(i - 3)];

                                            if (x + push < -900.0f) {
                                                push = -900.0f - x;
                                            }
                                            gEntitiesNextPosXArray[OBJ5_(i - 3)] = x + push;
                                            D_800EA6E0[OBJ5_(i - 3)] = gEntitiesNextPosXArray[OBJ5_(i - 3)];
                                            gEntitiesNextPosXArray[OBJ5_(i - 2)] += push;
                                            D_800EA6E0[OBJ5_(i - 2)] = gEntitiesNextPosXArray[OBJ5_(i - 2)];
                                            gEntitiesNextPosXArray[OBJ5_(i - 1)] += push;
                                            D_800EA6E0[OBJ5_(i - 1)] = gEntitiesNextPosXArray[OBJ5_(i - 1)];
                                            gEntitiesNextPosXArray[OBJ5_(i)] += push;
                                        }
                                    }
                                } else {
                                    f32 x = gEntitiesNextPosXArray[OBJ5_(i - 2)];

                                    if (x + push < -900.0f) {
                                        push = -900.0f - x;
                                    }
                                    gEntitiesNextPosXArray[OBJ5_(i - 2)] = x + push;
                                    D_800EA6E0[OBJ5_(i - 2)] = gEntitiesNextPosXArray[OBJ5_(i - 2)];
                                    gEntitiesNextPosXArray[OBJ5_(i - 1)] += push;
                                    D_800EA6E0[OBJ5_(i - 1)] = gEntitiesNextPosXArray[OBJ5_(i - 1)];
                                    gEntitiesNextPosXArray[OBJ5_(i)] += push;
                                }
                            }
                        }
                    } else {
                        f32 x = gEntitiesNextPosXArray[OBJ5_(i - 1)];

                        if (x + push < -900.0f) {
                            push = -900.0f - x;
                        }
                        gEntitiesNextPosXArray[OBJ5_(i - 1)] = x + push;
                        D_800EA6E0[OBJ5_(i - 1)] = gEntitiesNextPosXArray[OBJ5_(i - 1)];
                        gEntitiesNextPosXArray[OBJ5_(i)] += push;
                    }
                }
            }
            D_800EA6E0[OBJ5_(i)] = gEntitiesNextPosXArray[OBJ5_(i)];
        } else {
            gEntitiesNextPosXArray[OBJ5_(i)] = D_800EA6E0[OBJ5_(i)];
        }
    }
    for (i = 3; i >= 0; i--) {
        if (func_80160868_ovl5(ord[i]) == 0) {
            continue;
        }
        if (D_800E9C60[OBJ5_(i)] != 2) {
            continue;
        }
        if ((i != 3) && (func_801612D0_ovl5(ord[i], ord[i + 1]) != 0)) {
            D_800E9E20[OBJ5_(i)] = 1;
            if (func_80160868_ovl5(ord[i + 1]) != 0) {
                s32 st = D_800E9C60[OBJ5_(i + 1)];

                if (st != 0) {
                    if (st == 2) {
                        gEntitiesNextPosXArray[OBJ5_(i)] =
                            D_800EA6E0[OBJ5_(i + 1)] - func_80161298_ovl5(KIND5_(i), KIND5_(i + 1));
                    }
                } else {
                    f32 push;

                    gEntitiesNextPosXArray[OBJ5_(i)] =
                        D_800EA6E0[OBJ5_(i + 1)] - func_80161298_ovl5(KIND5_(i), KIND5_(i + 1));
                    push = func_8016142C_ovl5(ord[i]);
                    if ((i < 2) && (func_801612D0_ovl5(ord[i + 1], ord[i + 2]) != 0)) {
                        if (func_80160868_ovl5(ord[i + 2]) != 0) {
                            s32 st2 = D_800E9C60[OBJ5_(i + 2)];

                            if (st2 != 0) {
                                if (st2 == 2) {
                                    gEntitiesNextPosXArray[OBJ5_(i)] =
                                        D_800EA6E0[OBJ5_(i + 1)] - func_80161298_ovl5(KIND5_(i), KIND5_(i + 1));
                                }
                            } else if ((i < 1) && (func_801612D0_ovl5(ord[i + 2], ord[i + 3]) != 0)) {
                                if (func_80160868_ovl5(ord[i + 3]) != 0) {
                                    s32 st3 = D_800E9C60[OBJ5_(i + 3)];

                                    if (st3 != 0) {
                                        if (st3 == 2) {
                                            gEntitiesNextPosXArray[OBJ5_(i)] =
                                                D_800EA6E0[OBJ5_(i + 1)] - func_80161298_ovl5(KIND5_(i), KIND5_(i + 1));
                                        }
                                    } else {
                                        f32 x = gEntitiesNextPosXArray[OBJ5_(i + 3)];

                                        if (x + push > 900.0f) {
                                            push = 900.0f - x;
                                        }
                                        gEntitiesNextPosXArray[OBJ5_(i + 3)] = x + push;
                                        D_800EA6E0[OBJ5_(i + 3)] = gEntitiesNextPosXArray[OBJ5_(i + 3)];
                                        gEntitiesNextPosXArray[OBJ5_(i + 2)] += push;
                                        D_800EA6E0[OBJ5_(i + 2)] = gEntitiesNextPosXArray[OBJ5_(i + 2)];
                                        gEntitiesNextPosXArray[OBJ5_(i + 1)] += push;
                                        D_800EA6E0[OBJ5_(i + 1)] = gEntitiesNextPosXArray[OBJ5_(i + 1)];
                                        gEntitiesNextPosXArray[OBJ5_(i)] += push;
                                    }
                                }
                            } else {
                                f32 x = gEntitiesNextPosXArray[OBJ5_(i + 2)];

                                if (x + push > 900.0f) {
                                    push = 900.0f - x;
                                }
                                gEntitiesNextPosXArray[OBJ5_(i + 2)] = x + push;
                                D_800EA6E0[OBJ5_(i + 2)] = gEntitiesNextPosXArray[OBJ5_(i + 2)];
                                gEntitiesNextPosXArray[OBJ5_(i + 1)] += push;
                                D_800EA6E0[OBJ5_(i + 1)] = gEntitiesNextPosXArray[OBJ5_(i + 1)];
                                gEntitiesNextPosXArray[OBJ5_(i)] += push;
                            }
                        }
                    } else {
                        f32 x = gEntitiesNextPosXArray[OBJ5_(i + 1)];

                        if (x + push > 900.0f) {
                            push = 900.0f - x;
                        }
                        gEntitiesNextPosXArray[OBJ5_(i + 1)] = x + push;
                        D_800EA6E0[OBJ5_(i + 1)] = gEntitiesNextPosXArray[OBJ5_(i + 1)];
                        gEntitiesNextPosXArray[OBJ5_(i)] += push;
                    }
                }
            }
            D_800EA6E0[OBJ5_(i)] = gEntitiesNextPosXArray[OBJ5_(i)];
        } else {
            gEntitiesNextPosXArray[OBJ5_(i)] = D_800EA6E0[OBJ5_(i)];
        }
    }
    for (i = 0; i < 4; i++) {
        if (func_80160810_ovl5(ord[i]) == 0) {
            continue;
        }
        if (D_800E9FE0[OBJ5_(i)].as_u32 != 1) {
            continue;
        }
        switch (D_800E9C60[OBJ5_(i)]) {
            case 1:
                if ((i >= 1) && (D_800E9E20[OBJ5_(i)] != 0)) {
                    if (func_801608BC_ovl5(ord[i - 1]) != 0) {
                        func_80161470_ovl5(ord[i], ord[i - 1]);
                    } else {
                        func_801615D8_ovl5(ord[i], 20.0f);
                    }
                } else {
                    func_801615D8_ovl5(ord[i], -20.0f);
                }
                break;
            case 2:
                if ((i < 3) && (D_800E9E20[OBJ5_(i)] != 0)) {
                    if (func_801608BC_ovl5(ord[i + 1]) != 0) {
                        func_80161470_ovl5(ord[i], ord[i + 1]);
                    } else {
                        func_801615D8_ovl5(ord[i], -20.0f);
                    }
                } else {
                    func_801615D8_ovl5(ord[i], 20.0f);
                }
                break;
        }
    }
    for (i = 0; i < 4; i++) {
        if (((i != 0) && (func_801612D0_ovl5(ord[i], ord[i - 1]) != 0)) ||
            ((i != 3) && (func_801612D0_ovl5(ord[i], ord[i + 1]) != 0))) {
            if (func_80160924_ovl5(ord[i]) != 0) {
                if (D_800E9C60[OBJ5_(i)] == 0) {
                    D_800EA520[OBJ5_(i)] = 2;
                } else {
                    D_800EA520[OBJ5_(i)] = 3;
                }
            }
        } else if (func_80160868_ovl5(ord[i]) != 0) {
            s32 st = D_800EA520[OBJ5_(i)];

            if ((st != 6) && (st != 7)) {
                if (D_800E9C60[OBJ5_(i)] == 0) {
                    D_800EA520[OBJ5_(i)] = 0;
                } else {
                    D_800EA520[OBJ5_(i)] = 1;
                }
            }
        }
    }
#undef OBJ5_
#undef KIND5_
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80162E30_ovl5.s")
#endif

/* FACTORY: 299/301, STRUCTURAL -- measured 2026-08-23, correcting a stale
 * note (previously read "2/301"; the note's own body already said
 * 299/301, this just fixes the header to match). Diverges from word 0:
 * ROM frame is -0xC0 with $fp held as a base pointer into the stack copy
 * of the badges[]/digits[] tables (sw $t6,0($fp) etc, an UNROLLED
 * pointer-walk copy using a moving cursor and sw -0xC/-8/-4/0($t9)); this
 * draft's frame is -0xC8, no $fp use, and the two setup `for` loops
 * compile to indexed bounds-checked loops instead of the pointer walk.
 * Real fixes already folded in over the PORT arm: (1) the LP64
 * `gfx[i].b.tlut.tlut.image/flag` union fields rewritten as raw
 * unk40/unkA0+0x2C/+0x38 offsets (SPObj.h has no such union on N64); (2)
 * three missing local prototypes (func_80164174_ovl5, func_800AD1A0,
 * func_800ACB7C) added to avoid an implicit-int/void mismatch. Needs a
 * pointer-walk rewrite of the two setup loops using $fp as a stack base,
 * not a register sweep -- out of scope for a LEVERS substitution pass. */
#ifdef MIPS_TO_C
void func_80163CC0_ovl5(GObj *gobj, u32 arg1) {
    extern void *D_80185FC0_ovl5[];
    extern void *D_80185FD0_ovl5[];
    void func_80164174_ovl5(GObj *);
    void func_800AD1A0(void);
    void func_800ACB7C(SPObj *);
    GObj *arg0 = omCurrentObj;
    struct UnkStruct8015C740 *badges[4];
    struct UnkStruct8015C740 *digits[10];
    SPObj *badge;
    SPObj *t;
    void *tlA;
    void *tlB;
    void *tlC;
    s32 lastState;
    s32 st;
    u8 disp;
    u8 cur;
    s32 i;

    for (i = 0; i < 4; i++) {
        badges[i] = D_80185FC0_ovl5[i];
    }
    for (i = 0; i < 10; i++) {
        digits[i] = D_80185FD0_ovl5[i];
    }
    D_800E98E0[omCurrentObj->objId] = arg1;
    disp = D_8018E1E0_ovl5[arg1];
    D_800DEF90[omCurrentObj->objId] = NULL;
    lastState = D_800EA520[D_8018E030_ovl5[arg1]];
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = func_80164174_ovl5;
    D_800DDA90[omCurrentObj->objId] = 0x26;
    omLinkGObjDL(arg0, (void (*)(GObj *)) func_800AD1A0, 0x12, 0x80000000, 0x12);
    tlA = func_800A9AA8(0x3000F, 3);
    tlB = func_800A9AA8(0x30010, 3);
    tlC = func_800A9AA8(0x30011, 3);
    badge = func_8015C740_ovl5(arg0, badges[arg1]);
    D_800E9AA0[omCurrentObj->objId].as_u32 = (u32) (uintptr_t) badge;
    badge->yOffset = 205.0f;
    t = func_8015C740_ovl5(arg0, digits[disp / 10]);
    t->yOffset = 208.0f;
    t = func_8015C740_ovl5(arg0, digits[disp % 10]);
    t->yOffset = 208.0f;
    cur = D_8018E1E0_ovl5[arg1];
    while (1) {
        if (disp == cur) {
            st = D_800EA520[D_8018E030_ovl5[arg1]];
            if ((lastState == st) || (st != 0xB)) {
                lastState = st;
                ohSleep(1);
                cur = D_8018E1E0_ovl5[arg1];
                continue;
            }
        }
        /* score changed (or a 0xB knock just landed): redraw the digits */
        {
            SPObj *sp = (SPObj *) (uintptr_t) badge->unk8;

            while (sp != NULL) {
                func_800ACB7C(sp);
                sp = (SPObj *) (uintptr_t) sp->unk8;
            }
        }
        disp = cur;
        t = func_8015C740_ovl5(arg0, digits[disp / 10]);
        t->yOffset = 208.0f;
        t = func_8015C740_ovl5(arg0, digits[disp % 10]);
        t->yOffset = 208.0f;
        for (i = 0; i < 4; i++) {
            void *tl = (i & 1) ? tlC : tlB;

            *(u32 *)((u8 *) badge->unk40 + 0x2C) = (u32)(uintptr_t) tl;
            *(u32 *)((u8 *) badge->unk40 + 0x38) = (u32)(uintptr_t) tl;
            *(u32 *)((u8 *) badge->unkA0 + 0x2C) = (u32)(uintptr_t) tl;
            *(u32 *)((u8 *) badge->unkA0 + 0x38) = (u32)(uintptr_t) tl;
            ohSleep(3);
            cur = D_8018E1E0_ovl5[arg1];
            if (disp != cur) {
                break;
            }
        }
        if (i < 4) {
            continue;
        }
        *(u32 *)((u8 *) badge->unk40 + 0x2C) = (u32)(uintptr_t) tlA;
        *(u32 *)((u8 *) badge->unk40 + 0x38) = (u32)(uintptr_t) tlA;
        *(u32 *)((u8 *) badge->unkA0 + 0x2C) = (u32)(uintptr_t) tlA;
        *(u32 *)((u8 *) badge->unkA0 + 0x38) = (u32)(uintptr_t) tlA;
        lastState = D_800EA520[D_8018E030_ovl5[arg1]];
        cur = D_8018E1E0_ovl5[arg1];
    }
}
#elif defined(PORT)
/* Score HUD thread for racer arg1: local copies of the badge (per-racer)
 * and digit image-descriptor tables (D_80185FC0/D_80185FD0), spawns the
 * badge sprite plus two score digits at y=205/208, then watches the score
 * byte D_8018E1E0_ovl5[arg1] (and command state 0xB): on change it deletes
 * the digit sprites, redraws them, and flashes the badge palette between
 * the 0x30010/0x30011 TLUTs before settling on 0x3000F. */
void func_80163CC0_ovl5(GObj *gobj, u32 arg1) {
    extern void *D_80185FC0_ovl5[];
    extern void *D_80185FD0_ovl5[];
    GObj *arg0 = omCurrentObj;
    struct UnkStruct8015C740 *badges[4];
    struct UnkStruct8015C740 *digits[10];
    SPObj *badge;
    SPObj *t;
    void *tlA;
    void *tlB;
    void *tlC;
    s32 lastState;
    s32 st;
    u8 disp;
    u8 cur;
    s32 i;

    for (i = 0; i < 4; i++) {
        badges[i] = D_80185FC0_ovl5[i];
    }
    for (i = 0; i < 10; i++) {
        digits[i] = D_80185FD0_ovl5[i];
    }
    D_800E98E0[omCurrentObj->objId] = arg1;
    disp = D_8018E1E0_ovl5[arg1];
    D_800DEF90[omCurrentObj->objId] = NULL;
    lastState = D_800EA520[D_8018E030_ovl5[arg1]];
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = func_80164174_ovl5;
    D_800DDA90[omCurrentObj->objId] = 0x26;
    omLinkGObjDL(arg0, (void (*)(GObj *)) func_800AD1A0, 0x12, 0x80000000, 0x12);
    tlA = func_800A9AA8(0x3000F, 3);
    tlB = func_800A9AA8(0x30010, 3);
    tlC = func_800A9AA8(0x30011, 3);
    badge = func_8015C740_ovl5(arg0, badges[arg1]);
    D_800E9AA0[omCurrentObj->objId].as_u32 = (u32) (uintptr_t) badge;
    badge->yOffset = 205.0f;
    t = func_8015C740_ovl5(arg0, digits[disp / 10]);
    t->yOffset = 208.0f;
    t = func_8015C740_ovl5(arg0, digits[disp % 10]);
    t->yOffset = 208.0f;
    cur = D_8018E1E0_ovl5[arg1];
    while (1) {
        if (disp == cur) {
            st = D_800EA520[D_8018E030_ovl5[arg1]];
            if ((lastState == st) || (st != 0xB)) {
                lastState = st;
                ohSleep(1);
                cur = D_8018E1E0_ovl5[arg1];
                continue;
            }
        }
        /* score changed (or a 0xB knock just landed): redraw the digits */
        {
            SPObj *sp = (SPObj *) (uintptr_t) badge->unk8;

            while (sp != NULL) {
                func_800ACB7C(sp);
                sp = (SPObj *) (uintptr_t) sp->unk8;
            }
        }
        disp = cur;
        t = func_8015C740_ovl5(arg0, digits[disp / 10]);
        t->yOffset = 208.0f;
        t = func_8015C740_ovl5(arg0, digits[disp % 10]);
        t->yOffset = 208.0f;
        for (i = 0; i < 4; i++) {
            void *tl = (i & 1) ? tlC : tlB;

            badge->gfx[0].b.tlut.tlut.image = (u64 *) tl;
            badge->gfx[0].b.tlut.tlut.flag = (u32) (uintptr_t) tl;
            badge->gfx[1].b.tlut.tlut.image = (u64 *) tl;
            badge->gfx[1].b.tlut.tlut.flag = (u32) (uintptr_t) tl;
            ohSleep(3);
            cur = D_8018E1E0_ovl5[arg1];
            if (disp != cur) {
                break;
            }
        }
        if (i < 4) {
            continue;
        }
        badge->gfx[0].b.tlut.tlut.image = (u64 *) tlA;
        badge->gfx[0].b.tlut.tlut.flag = (u32) (uintptr_t) tlA;
        badge->gfx[1].b.tlut.tlut.image = (u64 *) tlA;
        badge->gfx[1].b.tlut.tlut.flag = (u32) (uintptr_t) tlA;
        lastState = D_800EA520[D_8018E030_ovl5[arg1]];
        cur = D_8018E1E0_ovl5[arg1];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80163CC0_ovl5.s")
#endif

/* Faithful, not byte-exact (60/76), verify.py-confirmed. Frame, locals
   and every instruction are right; the residue is the one-slot temp
   rotation -- the ROM parks the D_800E98E0 value in $a2 and shifts
   D_8018E030's load in place in $v0, this C takes $t7/$t8 and every
   later temp follows. Swept: 16 declaration and statement orders, five
   callee-prototype forms, and the parameter-as-scratch form (71).
   Floor. */
#ifdef NON_MATCHING
struct UnkStruct8015C9B4;
struct UnkStruct8015C9B4 *func_800A6F40(s32);
void func_8015C9B4_ovl5(struct UnkStruct8015C9B4 *, Vector *, f32 *, f32 *);

void func_80164174_ovl5(GObj *arg0) {
    s32 t;
    SPObj *sp;
    f32 x;
    f32 y;
    Vector pos;

    t = D_8018E030_ovl5[D_800E98E0[omCurrentObj->objId]];
    sp = D_800E9AA0[omCurrentObj->objId].as_ptr;
    pos.x = gEntitiesNextPosXArray[t];
    pos.y = gEntitiesNextPosYArray[t];
    pos.z = gEntitiesNextPosZArray[t];
    func_8015C9B4_ovl5(func_800A6F40(0x10), &pos, &x, &y);
    sp->xOffset = (x * 150.0f + 160.0f) - sp->width * 0.5f;
    ((SPObj *) sp->unk8)->xOffset = sp->xOffset + 8.0f;
    ((SPObj *) ((SPObj *) sp->unk8)->unk8)->xOffset = sp->xOffset + 15.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164174_ovl5.s")
#endif

void func_801642A4_ovl5(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
#ifdef PORT
    /* D_80185FF8 is ten N64 pointer words; the PC data generator emits the
       region as part of a native void*[] (8-byte slots), so the word-struct
       copy reads pointer halves. Index the live table instead. */
    void **sp20 = (void **) &D_80185FF8_ovl5;
#else
    Unk28Words sp20 = D_80185FF8_ovl5;
#endif
    SPObj *spobj;

#ifdef PORT
    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20[arg1]);
#else
    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20.unk0[arg1]);
#endif
    spobj->xOffset = arg2;
    spobj->yOffset = arg3;
}

void func_80164344_ovl5(s32 arg0, s32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    s32 pad;

    if (arg1 >= 100) {
        arg1 = 99;
    }
    func_801642A4_ovl5(arg0, arg1 % 10, (s32) (arg2 + 7.0f), (s32) arg3);
    func_801642A4_ovl5(arg0, arg1 / 10, (s32) arg2, (s32) arg3);
}

u16 func_801643E8_ovl5(s32 arg0) {
    switch (arg0) {
        case 0x1D:
            return gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord;
        case 0x1F:
            return gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord;
        case 0x1E:
            return gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord;
    }
}

typedef union Unk12Colors {
    u16 unk0[6];
} Unk12Colors;

typedef union Unk12Defs {
    struct UnkStruct8015C740 *unk0[3];
} Unk12Defs;

extern Unk12Colors D_80186020_ovl5;
extern Unk12Colors D_8018602C_ovl5;
extern Unk12Colors D_80186038_ovl5;
extern Unk12Colors D_80186044_ovl5;
extern Unk12Colors D_80186050_ovl5;
extern Unk12Defs D_8018605C_ovl5;
extern struct UnkStruct8015C740 D_801865E4_ovl5;
extern struct UnkStruct8015C740 D_80186200_ovl5;
extern f32 D_80186624_ovl5[2];
void func_800ACB7C(SPObj *);
void func_8015C804_ovl5(SPObj *, f32, f32);
void func_801648D8_ovl5(u8 *, u16 *);
void func_800AD1A0(void);

void func_80164490_ovl5(GObj *arg0) {
    struct UnkStruct8015C740 **p;
    SPObj *spobj;
    f32 scale;
    f32 step;
    Unk12Colors spA4 = D_80186020_ovl5;
    Unk12Colors sp98 = D_8018602C_ovl5;
    Unk12Colors sp8C = D_80186038_ovl5;
    Unk12Colors sp80 = D_80186044_ovl5;
    Unk12Colors sp74 = D_80186050_ovl5;
    Unk12Defs sp68 = D_8018605C_ovl5;
    f32 last;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_8015C740_ovl5(arg0, &D_801865E4_ovl5);
    func_80164344_ovl5((s32) arg0, func_801643E8_ovl5(0x1F), D_80186624_ovl5[0], D_80186624_ovl5[1], 2.0f);
    ohSleep(0xF);
    for (p = &sp68.unk0[2]; p >= &sp68.unk0[0]; p--) {
        spobj = (SPObj *) func_8015C740_ovl5(arg0, *p);
        scale = 1.0f;
        play_sound(0x111);
        while (scale < 1.5f) {
            spobj->yScale = scale;
            spobj->xScale = scale;
            func_8015C804_ovl5(spobj, (*p)->xOffset + (spobj->width / 2), (*p)->yOffset + (spobj->height / 2));
            ohSleep(1);
            scale += 0.25f;
        }
        last = spobj->xScale;
        if (1.0f < scale) {
            step = (last - 1.0f) * 0.5f;
            do {
                spobj->yScale = scale;
                spobj->xScale = scale;
                func_8015C804_ovl5(spobj, (*p)->xOffset + (spobj->width / 2), (*p)->yOffset + (spobj->height / 2));
                ohSleep(1);
                scale -= step;
            } while (1.0f < scale);
        }
        spobj->yScale = 1.0f;
        spobj->xScale = 1.0f;
        spobj->xOffset = (*p)->xOffset;
        spobj->yOffset = (*p)->yOffset;
        ohSleep(0x10);
        spobj->renderFlags |= 8;
        ohSleep(0xA);
        spobj->renderFlags &= ~8;
        func_800ACB7C(spobj);
    }
    spobj = (SPObj *) func_8015C740_ovl5(arg0, &D_80186200_ovl5);
    play_sound(0xB9);
    play_music(0, 0x21);
    D_8018E025_ovl5 = 0;
    func_801648D8_ovl5((u8 *) spobj, spA4.unk0);
    ohSleep(2);
    func_801648D8_ovl5((u8 *) spobj, sp98.unk0);
    ohSleep(2);
    func_801648D8_ovl5((u8 *) spobj, sp8C.unk0);
    ohSleep(2);
    func_801648D8_ovl5((u8 *) spobj, sp80.unk0);
    ohSleep(2);
    func_801648D8_ovl5((u8 *) spobj, sp74.unk0);
    func_800ACBDC(arg0);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_801648D8_ovl5(u8 *arg0, u16 *arg1) {
    arg0[0x14] = arg1[0];
    arg0[0x15] = arg1[1];
    arg0[0x16] = arg1[2];
    arg0[0x18] = arg1[3];
    arg0[0x19] = arg1[4];
    arg0[0x1A] = arg1[5];
}

void func_8016490C_ovl5(void) {
}

s32 func_80164914_ovl5(s32 arg0) {
    s32 count = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((arg0 != i) && (D_8018E1E0_ovl5[arg0] < D_8018E1E0_ovl5[i])) {
            count++;
        }
    }
    return count;
}

typedef struct Unk10Bytes {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
} Unk10Bytes;

extern Unk10Bytes D_800D7178[];
extern u8 D_8018E224_ovl5[];
s32 func_80164914_ovl5(s32);

/* Clone of the matched func_80176108_ovl5 in ovl5_5.c: the ROM's dead
   induction over D_8018E224_ovl5 is a DOUBLY nested empty `if`, and the inner
   `if ((!i) && (!i)) {}` is what keeps the `sw` ahead of the counter
   increment. 2/26 -> MATCH by copying the donor verbatim. */
void func_801649CC_ovl5(void)
{
  s32 i;
  for (i = 0; i < 4; i++)
  {
    D_800D7178[i].unkC = func_80164914_ovl5(i);
    if (D_8018E224_ovl5[i] != 0)
    {
      if ((!i) && (!i))
      {
      }
    }
  }
}
/* FACTORY: 135/223 [was noted 88/223], UNCERTAIN -- PORT-seeded, time-boxed. Fixed two real
 * defects: (1) `D_800D7178_words_[] __asm__("D_800D7178")` used a GCC
 * asm-label alias IDO's cc rejects (Syntax Error) -- rewritten using the
 * file's own existing typed decl, `D_800D7178[7].unk8`, which lands on
 * the same byte address (word 0x1E == byte 0x78 == element 7's unk8 in
 * the 16-byte Unk10Bytes layout); (2) the func_800B1900 kill reads objId
 * as a HALF-WORD off the pointer (`*(u16*)((u8*)omCurrentObj+2)`, `lhu`
 * in the listing), not a `(u16)` cast on the full read. Compiles, word
 * count matches (223/223), residue high (135/223) -- broad register/
 * frame relabeling, same shape as the ovl19 state-machine functions.
 * Worth a fresh m2c pass before feeding to the permuter. */
#ifdef MIPS_TO_C
void func_80164A34_ovl5(void) {
    extern struct UnkStruct8015C740 D_801864C4_ovl5;
    extern struct UnkStruct8015C740 D_801864E4_ovl5;
    extern struct UnkStruct8015C740 D_80186504_ovl5;
    extern struct UnkStruct8015C740 D_80186524_ovl5;
    extern struct UnkStruct8015C740 D_80186544_ovl5;
    extern struct UnkStruct8015C740 D_80186564_ovl5;
    extern struct UnkStruct8015C740 D_80186584_ovl5;
    extern struct UnkStruct8015C740 D_801865A4_ovl5;
    extern f32 D_801865C4_ovl5[];
    extern u8 D_8018E259_ovl5;
    void func_80164DB0_ovl5(void);
    GObj *arg0 = omCurrentObj;
    SPObj *panel;
    SPObj *cursor;
    s32 counter;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_8018E259_ovl5 = 0;
    omLinkGObjDL(arg0, (void (*)(GObj *)) func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_800BB3F0();
    panel = func_8015C740_ovl5(arg0, &D_80186544_ovl5);
    panel->xScale = 52.0f;
    panel->yScale = 1.33f;
    func_8015C740_ovl5(arg0, &D_801864C4_ovl5);
    func_8015C740_ovl5(arg0, &D_801864E4_ovl5);
    func_8015C740_ovl5(arg0, &D_80186504_ovl5);
    func_8015C740_ovl5(arg0, &D_80186524_ovl5);
    func_8015C740_ovl5(arg0, &D_80186564_ovl5);
    func_8015C740_ovl5(arg0, &D_80186584_ovl5);
    cursor = func_8015C740_ovl5(arg0, &D_801865A4_ovl5);
    cursor->xOffset = D_801865C4_ovl5[D_8018E259_ovl5 * 2];
    cursor->yOffset = D_801865C4_ovl5[D_8018E259_ovl5 * 2 + 1];
    ohSleep(6);
    counter = 5;
    while (1) {
        if (counter != 0) {
            counter--;
            if ((gPlayerControllers[0].buttonHeld & 0xF00) == 0) {
                counter = 0;
            }
        } else {
            if (gPlayerControllers[0].buttonPressed & 0x9000) {
                D_800D7178[7].unk8 = 1;
                switch (D_8018E259_ovl5) {
                    case 0:
                        D_800D7178[7].unk8 = 2;
                        play_sound(0x113);
                        func_800ACBDC(arg0);
                        func_800B1900(*(u16 *)((u8 *)omCurrentObj + 2));
                        break;
                    case 1:
                        play_sound(0xED);
                        gGameState = 0x1F;
                        break;
                    case 2:
                        play_sound(0xED);
                        D_800D6B68 = gGameState;
                        gGameState = 0x1B;
                        break;
                    case 3:
                        play_sound(0x2B);
                        D_800D6B68 = gGameState;
                        gGameState = 0xA;
                        break;
                }
                func_80164DB0_ovl5();
                curObjSleepForever();
            } else if (gPlayerControllers[0].buttonHeld & 0x800) {
                play_sound(0x113);
                counter = 5;
                if (D_8018E259_ovl5 == 0) {
                    D_8018E259_ovl5 = 3;
                } else {
                    D_8018E259_ovl5--;
                }
            } else if (gPlayerControllers[0].buttonHeld & 0x400) {
                play_sound(0x113);
                counter = 5;
                if (D_8018E259_ovl5 == 3) {
                    D_8018E259_ovl5 = 0;
                } else {
                    D_8018E259_ovl5++;
                }
            }
            cursor->xOffset = D_801865C4_ovl5[D_8018E259_ovl5 * 2];
            cursor->yOffset = D_801865C4_ovl5[D_8018E259_ovl5 * 2 + 1];
        }
        ohSleep(1);
    }
}
#elif defined(PORT)
/* Pause-menu thread (near-clone of func_8016EF78_ovl5 in ovl5_4 and
 * func_80176170_ovl5 in ovl5_5): draws the pause panel and the four menu
 * entries, moves the cursor sprite along D_801865C4_ovl5 with C-up/C-down,
 * and on A/Start resumes (0), quits to 0x1F (1), the option screen 0x1B (2)
 * or the sound room 0xA (3). */
void func_80164A34_ovl5(void) {
    extern struct UnkStruct8015C740 D_801864C4_ovl5;
    extern struct UnkStruct8015C740 D_801864E4_ovl5;
    extern struct UnkStruct8015C740 D_80186504_ovl5;
    extern struct UnkStruct8015C740 D_80186524_ovl5;
    extern struct UnkStruct8015C740 D_80186544_ovl5;
    extern struct UnkStruct8015C740 D_80186564_ovl5;
    extern struct UnkStruct8015C740 D_80186584_ovl5;
    extern struct UnkStruct8015C740 D_801865A4_ovl5;
    extern f32 D_801865C4_ovl5[];
    extern u8 D_8018E259_ovl5;
    void func_80164DB0_ovl5(void);
    GObj *arg0 = omCurrentObj;
    SPObj *panel;
    SPObj *cursor;
    s32 counter;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_8018E259_ovl5 = 0;
    omLinkGObjDL(arg0, (void (*)(GObj *)) func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_800BB3F0();
    panel = func_8015C740_ovl5(arg0, &D_80186544_ovl5);
    panel->xScale = 52.0f;
    panel->yScale = 1.33f;
    func_8015C740_ovl5(arg0, &D_801864C4_ovl5);
    func_8015C740_ovl5(arg0, &D_801864E4_ovl5);
    func_8015C740_ovl5(arg0, &D_80186504_ovl5);
    func_8015C740_ovl5(arg0, &D_80186524_ovl5);
    func_8015C740_ovl5(arg0, &D_80186564_ovl5);
    func_8015C740_ovl5(arg0, &D_80186584_ovl5);
    cursor = func_8015C740_ovl5(arg0, &D_801865A4_ovl5);
    cursor->xOffset = D_801865C4_ovl5[D_8018E259_ovl5 * 2];
    cursor->yOffset = D_801865C4_ovl5[D_8018E259_ovl5 * 2 + 1];
    ohSleep(6);
    counter = 5;
    while (1) {
        if (counter != 0) {
            counter--;
            if ((gPlayerControllers[0].buttonHeld & 0xF00) == 0) {
                counter = 0;
            }
        } else {
            if (gPlayerControllers[0].buttonPressed & 0x9000) {
                extern u32 D_800D7178_words_[] __asm__("D_800D7178");

                D_800D7178_words_[0x1E] = 1;
                switch (D_8018E259_ovl5) {
                    case 0:
                        D_800D7178_words_[0x1E] = 2;
                        play_sound(0x113);
                        func_800ACBDC(arg0);
                        func_800B1900((u16) omCurrentObj->objId);
                        break;
                    case 1:
                        play_sound(0xED);
                        gGameState = 0x1F;
                        break;
                    case 2:
                        play_sound(0xED);
                        D_800D6B68 = gGameState;
                        gGameState = 0x1B;
                        break;
                    case 3:
                        play_sound(0x2B);
                        D_800D6B68 = gGameState;
                        gGameState = 0xA;
                        break;
                }
                func_80164DB0_ovl5();
                curObjSleepForever();
            } else if (gPlayerControllers[0].buttonHeld & 0x800) {
                play_sound(0x113);
                counter = 5;
                if (D_8018E259_ovl5 == 0) {
                    D_8018E259_ovl5 = 3;
                } else {
                    D_8018E259_ovl5--;
                }
            } else if (gPlayerControllers[0].buttonHeld & 0x400) {
                play_sound(0x113);
                counter = 5;
                if (D_8018E259_ovl5 == 3) {
                    D_8018E259_ovl5 = 0;
                } else {
                    D_8018E259_ovl5++;
                }
            }
            cursor->xOffset = D_801865C4_ovl5[D_8018E259_ovl5 * 2];
            cursor->yOffset = D_801865C4_ovl5[D_8018E259_ovl5 * 2 + 1];
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164A34_ovl5.s")
#endif

void func_80164DB0_ovl5(void) {
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D71D0;
extern s32 D_800D71D4;
extern s32 D_800D71D8;
extern s32 D_800D71DC;
void func_801649CC_ovl5(void);

void func_80164DF0_ovl5(GObj *arg0) {
    if (D_800D6B24 == 0) {
        if (D_8018E020_ovl5 != 0) {
            if ((--D_8018E020_ovl5 == 0) || (gPlayerControllers[0].buttonPressed & (A_BUTTON | START_BUTTON))) {
                D_800D6B68 = gGameState;
                gGameState = 0x20;
                func_801649CC_ovl5();
                D_800D71D0 = D_8018E1E0_ovl5[0];
                D_800D71D4 = D_8018E1E1_ovl5;
                D_800D71D8 = D_8018E1E2_ovl5;
                D_800D71DC = D_8018E1E3_ovl5;
                func_80164DB0_ovl5();
            }
        }
    }
}

/* FACTORY: 9 of 134 words DIFFER (measured 2026-08-25; the old header read
   "125/134", which is the same measurement written the other way round).
   Everything but the final clear loop is exact; there the ROM puts the
   induction pointer in $v0 and the 0xFF constant in $v1 and IDO swaps them --
   the named $v0/$v1 CSE-into-neighbouring-register floor (LEVERS
   "guard on the second variant"). NOT lever 55: this function calls nothing
   at all, so no implicit `int f()` is available to blame.
   Swept: all 24 scalar declaration orders, all 6 loop-variable assignments,
   index vs pointer walk, do/while, reverse iteration, (u32) and byte-bias
   forms; re-swept 2026-08-25 with the unbraced loop body (LEVERS lever 56),
   `k < 100`, the `while` form and the constant spelled `255` -- all 9/134,
   and moving `k` to the head of the declaration list is 16/134. */
#ifdef NON_MATCHING
typedef struct Unk16Ptrs {
    s32 *unk0[4];
} Unk16Ptrs;

extern Unk16Ptrs D_80186068_ovl5;
extern Unk16Ptrs D_80186078_ovl5;
extern Unk16Ptrs D_80186088_ovl5;
extern Unk16Bytes D_80186098_ovl5;
extern u8 D_8018E024_ovl5;
extern u8 D_8018E025_ovl5;

void func_80164EA8_ovl5(void) {
    s32 i;
    s32 temp;
    Unk16Ptrs sp50 = D_80186068_ovl5;
    Unk16Ptrs sp40 = D_80186078_ovl5;
    Unk16Ptrs sp30 = D_80186088_ovl5;
    Unk16Bytes sp20 = D_80186098_ovl5;
    s32 j;
    s32 k;

    D_8018E020_ovl5 = 0;
    D_8018E024_ovl5 = 0;
    D_8018E025_ovl5 = 1;
    temp = ((s32 *) D_800D7178)[0x10];
    D_8018E258_ovl5 = temp;
    D_8018E220_ovl5 = 0;
    for (i = 0; i != 0x14; i++) {
        D_8018E208_ovl5[i] = 0;
    }
    for (j = 0; j != 4; j++) {
        D_8018E1E0_ovl5[j] = 0;
        D_8018E1E8_ovl5[j].kind = *sp50.unk0[j];
        D_8018E1E8_ovl5[j].frame = *sp40.unk0[j];
        if (1 == *sp30.unk0[j]) {
            D_8018E224_ovl5[j] = sp20.unk0[temp];
        } else {
            D_8018E224_ovl5[j] = 4;
        }
    }
    for (k = 0; k != 100; k++) {
        D_8018E050_ovl5[k] = 0xFF;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164EA8_ovl5.s")
#endif

void gameSetUpdateRate(f32);
void func_800AAF34(s32, s32, f32);
extern s32 D_80186930_ovl5;

void func_801650C0_ovl5(void) {
    s32 i;
    s32 t;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    func_800AE048(0x100);
    func_800AE0F0();
    func_800A6E64();
    func_800A78D0(0);
    func_800A8724(1);
    func_80164EA8_ovl5();
    func_800A6BC0(7);
    func_800AAF34(0x10, D_80186930_ovl5, 0.0f);
    func_800A71A0(0x10);
    func_800A7A70(1, 0x30012, 0x30013);
    D_800E98E0[request_track_3(6, 0, 0x70)] = 1;
    if (3 != D_8018E258_ovl5) {
        D_800E98E0[request_track_general(6, 0, 0x70)] = 0xB;
    }
    D_800E98E0[request_track_3(6, 0, 0x70)] = 8;
    for (i = 0; i != 4; i++) {
        t = request_track_general(6, 0, 0x70);
        D_800E98E0[t] = 2;
        ((s32 *) D_800E9AA0)[t] = i;
        t = request_track_3(6, 0, 0x70);
        D_800E98E0[t] = 7;
        ((s32 *) D_800E9AA0)[t] = i;
        t = request_track_general(6, 0, 0x70);
        D_800E98E0[t] = 3;
        ((s32 *) D_800E9AA0)[t] = i;
        t = request_track_general(6, 0, 0x70);
        D_800E98E0[t] = 4;
        ((s32 *) D_800E9AA0)[t] = i;
    }
    D_800E98E0[func_800AEA64(6, 0, 0x70)] = 9;
    D_800E98E0[func_800AEA64(6, 0, 0x70)] = 6;
    HS64_omMakeGObj(0, &func_80164DF0_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_8016534C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_801860A8_ovl5);
}

// PADDING TRAP (padtrap: trap, 5 words after .size) -- converting this would
// shorten the TU and shift the segment, so the pragma must stay. The body below
// is the framebuffer-clear form proved byte-exact on func_8017CC3C_ovl5 (the
// vu16 casts are what stop IDO hoisting the D_803D6900 induction bump); it is
// kept live for the PC port, which builds with NON_MATCHING.

#include "main/vi.h"
#include "main/gtl.h"

extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_801860D8_ovl5;
extern SceneSetup D_801860F4_ovl5;

void func_80165370_ovl5(void) {
    s32 i;

    func_800A74D8();
    ((s32 *) D_800D7178)[0x1D] = 0;
    ((s32 *) D_800D7178)[0x1E] = 0;
    D_801860D8_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_801860D8_ovl5);
    D_801860F4_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_801860F4_ovl5);
}




