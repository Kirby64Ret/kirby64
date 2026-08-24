#include "common.h"
#include "GObj.h"
#include "Player.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
extern FUNCLIST D_80196990_ovl3;
extern FUNCLIST D_80196CA8_ovl3;

extern s16 D_80198824_ovl3;
extern s32 D_80196CB8_ovl3[];

typedef struct Unk80196C74 {
    u8 unk0[7];
} Unk80196C74;

extern Unk80196C74 D_80196C74_ovl3;

extern s32 func_80151E94_ovl3(void *);
extern s32 func_80153984_ovl3(void);
extern s32 func_801217B8(void);
extern s32 func_80121658(void);
extern void func_8011D67C(void);
extern void func_8011E548(void);
extern s32 D_800EB4E0[];
/* D_801974EC_ovl3 now emitted by this TU */

extern void func_80122FB0(s32);
extern s32 random_soft_s32_range(s32);
extern void play_sound(s32);
extern void func_80122B40(void);
extern s32 D_80196C98_ovl3;
extern GObj *D_800D79B0[];
extern s32 func_800AA888(s32);
extern void func_80122F08(s32);
extern s32 func_80121194(void);
extern void func_801230E8(s32, s32, s32);
extern void func_80120A28(void);
extern void func_800AF27C(void);
extern u8 *D_8012BCA0[];
extern s32 func_80123170(void);
extern void func_800FB914(s32);
extern void func_800A7F74(s32, s32, s32, f32, f32, f32);
extern s32 func_8010DF9C(f32 *);
extern Unk80196C74 D_80196C5C_ovl3;
extern s32 func_801215DC(void);
extern void func_8011ED68(void);
extern void omGMoveObjDL(struct GObj *, u8, s32);
extern void func_801762E0_ovl3(struct GObj *);
extern void func_80174AEC_ovl3(s32, s32, f32);
extern struct GObjProcess *gEntityGObjProcessArray4[];
extern s32 D_800DDE10[];
extern void func_801770E0_ovl3(struct GObj *);
extern void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
extern void func_8011CF58(void);

/* D_801974E0_ovl3 now emitted by this TU */
/* D_801974E4_ovl3 now emitted by this TU */
/* D_801974E8_ovl3 now emitted by this TU */
extern s32 D_800DE190[];
extern s32 D_8012E7E8;
extern char D_80190F2C_ovl3[];
extern s32 func_80111A04(char *, s32);
extern void func_80111C4C(s32);
extern void set_kirby_action_1(s32, s32);
extern f32 *D_801926E8_ovl3[];
extern f32 *D_80192704_ovl3[];
extern u8 D_80190358_ovl3[];
extern s32 D_800DFA10[];
/* src/ovl1/ovl1_7.c:407 defines void func_800AFA54(GObj *); the s32 here
 * follows D_800DFA10[], which this file declares s32[]. */
extern void func_800AFA54(s32);
extern void func_801708A0_ovl3(s32, s32, f32);
extern void func_8017492C_ovl3(s32, s32, f32);
extern s32 func_80179060_ovl3(f32);
extern s32 D_8012E860;
/* D_80197504_ovl3 now emitted by this TU */
/* D_80197508_ovl3 now emitted by this TU */
extern void func_8011D614(void);
/* D_80197528_ovl3 now emitted by this TU */
/* D_801973A8_ovl3 now emitted by this TU */
extern void func_800AA78C(s32, u32, f32);   /* src/ovl1/ovl1_3.c:3028 */
extern void func_80122CA0(s32, s32, f32);
extern s32 D_800E9560[];
extern s32 func_80153FC8_ovl3(void);
extern void func_80152348_ovl3(f32);
/* D_80197500_ovl3 now emitted by this TU */
extern f32 *D_801928BC_ovl3[];
extern void func_8011DC04(s32);
extern void func_8011DC30(s32);
extern void func_800AA154(s32);
extern s32 func_801BBFE4_ovl7(void);
extern s32 func_801BC27C_ovl7(s32, s32);
extern void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern void func_801A9618_ovl7(struct GObj *);
extern s32 D_800E8220[];
/* D_80197434_ovl3 now emitted by this TU */
extern u16 D_80196D68_ovl3;
extern void func_8017404C_ovl3(s32, s32, f32);
extern struct GObjProcess *gEntityGObjProcessArray[];
extern void func_8012310C(s32);
extern void func_80174680_ovl3(s32, s32, f32);
/* src/ovl1/ovl1_2_2.c:367 defines Ovl1Generator *func_800A8100(s32, s32,
 * s32, struct DObj *). This file deliberately declares arg3 s32 and casts the
 * function pointer at the sites that want the DObj width (see the notes
 * around func_8017AA34_ovl3); ovl3_6.c/plyshot.c declare the DObj form. */
extern s32 func_800A8100(s32, s32, s32, s32);
extern s32 func_801632B8_ovl3(s32);

/* Player-state helpers (ovl1_3 / ovl1_7 / plylib) and this overlay's own
 * entry points. m2c emitted a copy of each of these inside every function
 * body that called it -- func_800BB468 eleven times over. A block-scope
 * function declaration has file-scope linkage in C, so none of those copies
 * was ever local; one prototype apiece belongs here. */
extern s32 change_kirby_hp(f32);            /* src/ovl1/ovl1_13.c:69 */
extern void change_kirby_lives(s32);
extern void func_800AA018(s32);
extern void func_800AA5C4(s32, u32, f32);
extern s32 func_800AA368(struct DObj *);
extern s32 func_800AA934(s32);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern s32 func_800AF230(void);
extern void func_800B26D8(Vector *, struct DObj *, u32);
extern void func_800BB468(s32, s32);
extern f32 func_800F8824(Vector *, f32);
extern s32 func_8011D858(void *, s32, f32);
extern void func_8011DC5C(void);
extern void func_8011E0E8(void);
extern void func_8011E190(void);
extern s32 func_8011E1E8(s32, s32);
extern void func_8011E234(void);
extern f32 func_8011E374(void);
extern void func_8011EBD4(void);
extern s32 func_8011F690(void);
extern s32 func_8011FEF8(void);
extern s32 func_801210B4(void);
extern u32 func_801210FC(void);             /* src/ovl2/plylib.c:3846 */
extern s32 func_80121828(f32, f32, f32, f32);
extern void func_801219C8(void);
extern s32 func_80121C90(void);
extern void func_80121F14(void);
extern s32 func_80122460(void);
extern void func_80122A10(s32);
extern f32 func_80123144(f32);
extern s32 func_801231D8(void);
extern s32 func_80123240(void);
extern s32 func_80153B98_ovl3(void);        /* src/ovl3/ovl3_1.c:1158 */
extern void func_8015449C_ovl3(void *, s32);
extern void func_80154578_ovl3(void *, s32, f32);
extern s32 func_8016854C_ovl3(s32, s32, f32);
extern s32 func_80179130_ovl3(void);
extern void func_8017A2C0_ovl3(s32, s32, f32);
extern s32 func_801BC580_ovl7(s32);

#ifdef MIPS_TO_C
/* FACTORY: 10/363, whole-function callee-saved permutation (same floor class documented across this cluster). Renames the shadow-particle record to struct Ovl2Particle (matching the real N64 type in src/ovl2/ovl2_5.c, a plain 4-byte-pointer struct on this 32-bit target) instead of the PORT arm's host-only PcOvl2Particle mirror, dropping the now-unneeded uintptr_t round-trip. Queued for the permuter. */
/* PORT: the ovl3 player init -- the function that actually creates Kirby,
 * from asm/nonmatchings/ovl3/kirby/func_8016BF60_ovl3.s. Reached through
 * plylib's func_8011C720 on the player track object's first tick. It
 * installs the per-frame hit callback (func_8016C558_ovl3, still asm-only:
 * its weak stub logs once under KIRBY_PC_TRACE) and the player state
 * machine process (func_80177000_ovl3), runs plyInit (func_8011C8F8, which
 * seats Kirby on the start node and registers func_800B531C as the motion
 * callback), loads the ability model via func_800A9864, allocates the
 * shadow particle from ovl2_5's pool, and dispatches the MapIn entry
 * action through D_80196990_ovl3.
 *
 * Port notes: the N64's `lhu D_800D6F58+0x58` is the cross-symbol read of
 * D_800D6FB0 (plylib's entry-mode word) and is spelled directly; the two
 * halfword pokes at D_80198830_ovl3+0/+2 stay sub-word stores into that
 * word-sized bss cell; D_8012E944 is the shadow Ovl2Particle, viewed here
 * through an LP64 mirror of ovl2_5.c's struct. */
extern u16 D_800D6FB0;
extern u32 D_800BE514;
extern u32 D_800BE4FC;
extern u32 D_80196D48_ovl3[];
extern u8 D_80198830_ovl3[];

/* Shadow-particle record (N64 layout: struct Ovl2Particle in
 * src/ovl2/ovl2_5.c) -- the real pointer field is 4 bytes on this
 * (32-bit MIPS) build, so no host-width mirror is needed here. */
struct Ovl2Particle {
    struct Ovl2Particle *unk0;
    Vector unk4;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    f32 unk1C;
    u8 unk20;
    u8 unk21;
};
extern u32 D_8012E944;
#define PC_KIRBY_SHADOW ((struct Ovl2Particle *) D_8012E944)

void func_8016C558_ovl3(struct GObj *arg0);
void func_801DB1E0_ovl10(void);
void curObjSleepForever(void);
void func_8011C8F8(void);
void func_800A9864(u32 animId, s32 arg1, s32 arg2);
void func_80227F38_ovl19(void);
void func_800F8E6C(GObj *arg0);
/* Ovl2Particle vs the PORT arm's PcOvl2Particle mirror below: the two
 * spellings are a deliberate N64/host divergence, not a disagreement -- the
 * N64 record is a plain 4-byte-pointer struct (src/ovl2/ovl2_5.c) and the
 * PORT arm's mirror is its LP64 widening. Each arm is guarded. */
struct Ovl2Particle *func_800FF144(void);
s32 func_8011CCB8(void);
void func_80177000_ovl3(s32);

void func_8016BF60_ovl3(GObj *arg0) {
    s32 objId;
    u16 mode;
    u32 raw;
    u32 num;

    if (gKirbyState.unk28 != 0) {
        gKirbyState.action = 0x1F;
        gKirbyState.previousAction = 0x1F;
        func_801DB1E0_ovl10();
        curObjSleepForever();
    }
    D_800DF150[omCurrentObj->objId] = func_8016C558_ovl3;
    assign_new_process_entry(gEntityGObjProcessArray3[omCurrentObj->objId],
                             (void (*)(struct GObj *)) func_80177000_ovl3);
    func_8011C8F8();
    func_800A9864(D_80196D48_ovl3[gKirbyState.unk4], 0x20, 0x10);
    gKirbyState.unk154 = 2;
    mode = D_800D6FB0;
    if (mode != 0) {
        s32 hi = (s16) mode >> 8;

        gKirbyState.inhaledEntityData = 0;
        gKirbyState.isHoldingEntity = 0;
        gKirbyState.unk4 = 0;
        if (hi == 1) {
            func_80227F38_ovl19();
        } else if (hi == 2) {
            gKirbyState.abilityState = 0x4B;
        }
    }
    if (gKirbyState.unk4 == 1) {
        D_800E0490[omCurrentObj->objId] = D_80192704_ovl3;
    } else {
        D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    }
    func_800F8E6C(arg0);
    func_80152348_ovl3(20.0f);
    D_8012E944 = (u32) (uintptr_t) func_800FF144();
    if (PC_KIRBY_SHADOW != NULL) {
        PC_KIRBY_SHADOW->unk10 = 18.0f;
        PC_KIRBY_SHADOW->unk14 = 20.0f;
        PC_KIRBY_SHADOW->unk18 = -240.0f;
        PC_KIRBY_SHADOW->unk21 = 0;
    }
    if (gKirbyState.unk4 != 0) {
        func_8011CCB8();
    }
    gKirbyState.floatTimer = 0xF0;
    *(s16 *) &D_80198830_ovl3[0] = 0;
    *(s16 *) &D_80198830_ovl3[2] = 2;
    objId = omCurrentObj->objId;
    if (D_800BE4FC == 2) {
        raw = D_800BE514;
        num = raw & 0x7FFFFFFF;
        if (num < 12) {
            switch (num) {
                case 1:
                    gEntityFuncListIDArray[objId] = 0;
                    break;
                case 0:
                case 9:
                    if ((s32) raw < 0) {
                        D_800E6A10[objId] = -1.0f;
                        gKirbyState.unkB = 4;
                    } else {
                        D_800E6A10[objId] = 1.0f;
                        gKirbyState.unkB = 3;
                    }
                    gEntityFuncListIDArray[objId] = 0x47;
                    break;
                case 4:
                case 11:
                    if ((s32) raw < 0) {
                        D_800E6A10[objId] = -1.0f;
                    } else {
                        D_800E6A10[objId] = 1.0f;
                    }
                    gKirbyState.unkB = 1;
                    gEntityFuncListIDArray[objId] = 0x47;
                    break;
                case 2:
                case 3:
                case 10:
                    gKirbyState.unk3C = num;
                    if ((s32) raw < 0) {
                        D_800E6A10[objId] = -1.0f;
                    } else {
                        D_800E6A10[objId] = 1.0f;
                    }
                    gKirbyState.unkB = 2;
                    gEntityFuncListIDArray[objId] = 0x47;
                    break;
                case 5:
                case 6:
                    if (gKirbyState.unk4 == 0) {
                        gKirbyState.unk3C = num;
                        gKirbyState.unkB = 5;
                    } else {
                        gKirbyState.unk3C = 0;
                        gKirbyState.unkB = (num == 5) ? 2 : 1;
                    }
                    if ((s32) raw < 0) {
                        D_800E6A10[objId] = -1.0f;
                    } else {
                        D_800E6A10[objId] = 1.0f;
                    }
                    gEntityFuncListIDArray[objId] = 0x47;
                    break;
                case 7:
                case 8:
                    if (gKirbyState.unk4 == 0) {
                        gKirbyState.unk3C = num;
                        gKirbyState.unkB = 6;
                    } else {
                        gKirbyState.unk3C = 0;
                        gKirbyState.unkB = 1;
                    }
                    if ((s32) raw < 0) {
                        D_800E6A10[objId] = -1.0f;
                    } else {
                        D_800E6A10[objId] = 1.0f;
                    }
                    gEntityFuncListIDArray[objId] = 0x47;
                    break;
            }
        } else {
            utilPrintf("No MapIn Action Number[kirby.cc]:%d\n", num);
            gEntityFuncListIDArray[objId] = 0;
        }
    } else {
        gEntityFuncListIDArray[objId] = 0;
    }
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x56,
                      &D_80196990_ovl3);
}
#elif defined(PORT)
/* PORT: the ovl3 player init -- the function that actually creates Kirby,
 * from asm/nonmatchings/ovl3/kirby/func_8016BF60_ovl3.s. Reached through
 * plylib's func_8011C720 on the player track object's first tick. It
 * installs the per-frame hit callback (func_8016C558_ovl3, still asm-only:
 * its weak stub logs once under KIRBY_PC_TRACE) and the player state
 * machine process (func_80177000_ovl3), runs plyInit (func_8011C8F8, which
 * seats Kirby on the start node and registers func_800B531C as the motion
 * callback), loads the ability model via func_800A9864, allocates the
 * shadow particle from ovl2_5's pool, and dispatches the MapIn entry
 * action through D_80196990_ovl3.
 *
 * Port notes: the N64's `lhu D_800D6F58+0x58` is the cross-symbol read of
 * D_800D6FB0 (plylib's entry-mode word) and is spelled directly; the two
 * halfword pokes at D_80198830_ovl3+0/+2 stay sub-word stores into that
 * word-sized bss cell; D_8012E944 is the shadow Ovl2Particle, viewed here
 * through an LP64 mirror of ovl2_5.c's struct. */
extern u16 D_800D6FB0;
extern u32 D_800BE514;
extern u32 D_800BE4FC;
extern u32 D_80196D48_ovl3[];
extern u8 D_80198830_ovl3[];

struct PcOvl2Particle {
    /* layout mirror of src/ovl2/ovl2_5.c's Ovl2Particle on LP64 */
    void *unk0;
    Vector unk4;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    f32 unk1C;
    u8 unk20;
    u8 unk21;
};
/* The shadow-particle slot is a 32-BIT pointer cell: the N64 block packs
 * the pointer at +0 with floats right after, ovl3_1.c's compiled writers
 * reach those floats through the defsym D_8012E948 = D_8012E944+4, and
 * ovl3_4.c passes the slot by value as s32. A host-width pointer here got
 * its top half shredded by the +4 float writes (measured crash in
 * func_800FF200). All game-visible statics sit below 4 GiB, so 32 bits
 * hold the real pointer. */
extern u32 D_8012E944;
#define PC_KIRBY_SHADOW ((struct PcOvl2Particle *) (uintptr_t) D_8012E944)

void func_8016C558_ovl3(struct GObj *);
void func_801DB1E0_ovl10(void);
void curObjSleepForever(void);
void func_8011C8F8(void);
void func_800A9864(u32, s32, s32);
void func_80227F38_ovl19(void);
void func_800F8E6C(GObj *);
struct PcOvl2Particle *func_800FF144(void);
s32 func_8011CCB8(void);
void func_80177000_ovl3(s32);

void func_8016BF60_ovl3(GObj *arg0) {
    s32 objId;
    u16 mode;
    u32 raw;
    u32 num;

    if (gKirbyState.unk28 != 0) {
        gKirbyState.action = 0x1F;
        gKirbyState.previousAction = 0x1F;
        func_801DB1E0_ovl10();
        curObjSleepForever();
    }
    D_800DF150[omCurrentObj->objId] = func_8016C558_ovl3;
    assign_new_process_entry(gEntityGObjProcessArray3[omCurrentObj->objId],
                             (void (*)(struct GObj *)) func_80177000_ovl3);
    func_8011C8F8();
    func_800A9864(D_80196D48_ovl3[gKirbyState.unk4], 0x20, 0x10);
    gKirbyState.unk154 = 2;
    mode = D_800D6FB0;
    if (mode != 0) {
        s32 hi = (s16) mode >> 8;

        gKirbyState.inhaledEntityData = 0;
        gKirbyState.isHoldingEntity = 0;
        gKirbyState.unk4 = 0;
        if (hi == 1) {
            func_80227F38_ovl19();
        } else if (hi == 2) {
            gKirbyState.abilityState = 0x4B;
        }
    }
    if (gKirbyState.unk4 == 1) {
        D_800E0490[omCurrentObj->objId] = D_80192704_ovl3;
    } else {
        D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    }
    func_800F8E6C(arg0);
    func_80152348_ovl3(20.0f);
    D_8012E944 = (u32) (uintptr_t) func_800FF144();
    if (PC_KIRBY_SHADOW != NULL) {
        PC_KIRBY_SHADOW->unk10 = 18.0f;
        PC_KIRBY_SHADOW->unk14 = 20.0f;
        PC_KIRBY_SHADOW->unk18 = -240.0f;
        PC_KIRBY_SHADOW->unk21 = 0;
    }
    if (gKirbyState.unk4 != 0) {
        func_8011CCB8();
    }
    gKirbyState.floatTimer = 0xF0;
    *(s16 *) &D_80198830_ovl3[0] = 0;
    *(s16 *) &D_80198830_ovl3[2] = 2;
    objId = omCurrentObj->objId;
    if (D_800BE4FC == 2) {
        raw = D_800BE514;
        num = raw & 0x7FFFFFFF;
        if (num < 12) {
            switch (num) {
                case 1:
                    gEntityFuncListIDArray[objId] = 0;
                    break;
                case 0:
                case 9:
                    if ((s32) raw < 0) {
                        D_800E6A10[objId] = -1.0f;
                        gKirbyState.unkB = 4;
                    } else {
                        D_800E6A10[objId] = 1.0f;
                        gKirbyState.unkB = 3;
                    }
                    gEntityFuncListIDArray[objId] = 0x47;
                    break;
                case 4:
                case 11:
                    if ((s32) raw < 0) {
                        D_800E6A10[objId] = -1.0f;
                    } else {
                        D_800E6A10[objId] = 1.0f;
                    }
                    gKirbyState.unkB = 1;
                    gEntityFuncListIDArray[objId] = 0x47;
                    break;
                case 2:
                case 3:
                case 10:
                    gKirbyState.unk3C = num;
                    if ((s32) raw < 0) {
                        D_800E6A10[objId] = -1.0f;
                    } else {
                        D_800E6A10[objId] = 1.0f;
                    }
                    gKirbyState.unkB = 2;
                    gEntityFuncListIDArray[objId] = 0x47;
                    break;
                case 5:
                case 6:
                    if (gKirbyState.unk4 == 0) {
                        gKirbyState.unk3C = num;
                        gKirbyState.unkB = 5;
                    } else {
                        gKirbyState.unk3C = 0;
                        gKirbyState.unkB = (num == 5) ? 2 : 1;
                    }
                    if ((s32) raw < 0) {
                        D_800E6A10[objId] = -1.0f;
                    } else {
                        D_800E6A10[objId] = 1.0f;
                    }
                    gEntityFuncListIDArray[objId] = 0x47;
                    break;
                case 7:
                case 8:
                    if (gKirbyState.unk4 == 0) {
                        gKirbyState.unk3C = num;
                        gKirbyState.unkB = 6;
                    } else {
                        gKirbyState.unk3C = 0;
                        gKirbyState.unkB = 1;
                    }
                    if ((s32) raw < 0) {
                        D_800E6A10[objId] = -1.0f;
                    } else {
                        D_800E6A10[objId] = 1.0f;
                    }
                    gEntityFuncListIDArray[objId] = 0x47;
                    break;
            }
        } else {
            utilPrintf("No MapIn Action Number[kirby.cc]:%d\n", num);
            gEntityFuncListIDArray[objId] = 0;
        }
    } else {
        gEntityFuncListIDArray[objId] = 0;
    }
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x56,
                      &D_80196990_ovl3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016BF60_ovl3.s")
#endif

void func_8016C510_ovl3(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 86, &D_80196990_ovl3);
}

#ifdef MIPS_TO_C
/* FACTORY: 128/334, whole-function callee-saved permutation (same floor class documented across this cluster). Redeclares the shadow-particle record as struct Ovl2Particle (the real N64 layout from src/ovl2/ovl2_5.c) with ANSI-prototyped helpers instead of the PORT arm's host-only PcOvl2Particle mirror, since neither is reachable here without a file-scope move. Queued for the permuter. */
/* PORT: Kirby's per-frame service callback (installed in D_800DF150 by the
 * init above; dispatched by func_800B0D90 every tick), from
 * asm/nonmatchings/ovl3/kirby/func_8016C558_ovl3.s. Runs the turn-around
 * handler, the per-ability tick table (D_80196AE8_ovl3), model palette and
 * shadow upkeep, gravity capping on ceiling hits, the idle-fidget timers on
 * the D_80198830 block (its +8 half lives in the split D_80198838_ovl3 bss
 * cell on this build, same spelling as plyInit's PORT arm), and the
 * shadow-particle sync. func_8011E548 / func_8012209C / func_8011D4A4 are
 * still asm-only; their weak stubs log once and return 0 under
 * KIRBY_PC_TRACE (no turn-around animation / ice check / scale pulse). */
/* Shadow-particle record (N64 layout: struct Ovl2Particle in
 * src/ovl2/ovl2_5.c). This TU has no shared header for it, so it is
 * redeclared here with real field types/offsets rather than through the
 * host-only PcOvl2Particle mirror the PORT arm above uses. */
struct Ovl2Particle {
    struct Ovl2Particle *unk0;
    Vector unk4;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    f32 unk1C;
    u8 unk20;
    u8 unk21;
};
extern u32 D_8012E944;
#define PC_KIRBY_SHADOW ((struct Ovl2Particle *) D_8012E944)

extern FUNCLIST D_80196AE8_ovl3;
extern u8 D_80193168_ovl3[];
extern s16 D_80198838_ovl3;
extern u8 D_80198830_ovl3[];
extern s32 gGameTampered;
extern f32 D_800EC660[];
extern struct DObj **D_800DFBD0[];
extern f32 D_800E3750[];
extern f32 D_800E3C90[];
extern s32 D_800E8920[];
extern s32 D_800E8AE0[];
extern s32 D_800D6B54;
extern f32 gKirbyHp;

void func_8011E548(void);
void func_8011DAF8(void);
s32 func_8012209C(void);
void func_8015A9F8_ovl3(void);
void func_80121BCC(s32 arg0);
void func_80121A04(void);
void func_80121D3C(void);
void func_801212A4(void);
void func_8011D4A4(f32 arg0);
void func_80121F50(void);
void func_800B2340(Vector *out, struct DObj *dobj, u32 arg2);
void func_800FF200(struct Ovl2Particle *particle);
s32 func_801693C4_ovl3(s32 arg0);

void func_8016C558_ovl3(struct GObj *arg0) {
    s32 objId;
    u8 act;
    u32 abil;
    Vector pos;

    (void) arg0;
    func_8011E548();
    func_8011DAF8();
    if (gKirbyState.unk17 != 0) {
        gKirbyState.unkA = 0;
    }
    if (gKirbyState.unk68 == 2) {
        func_8015449C_ovl3(D_80193168_ovl3, 0);
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 0x53, &D_80196AE8_ovl3);
    if (func_8012209C() != 0) {
        gKirbyState.unk17 = 1;
    }
    if (gKirbyState.unk17 != 0) {
        func_8015A9F8_ovl3();
    }
    if ((gKirbyState.abilityInUse == 0xF) && (gKirbyState.unk38 == 0.4f)) {
        func_80121BCC(0xF9);
    } else {
        func_80121BCC(0xFB);
    }
    func_80121A04();
    func_80121D3C();
    func_801212A4();
    if ((D_800D6B54 == 0) && (gKirbyHp != 0.0f)) {
        if ((gKirbyState.unk15C != 0) && (gKirbyState.unk14 == 0)) {
            func_8011D4A4(gKirbyState.unk158);
        }
        func_80121F50();
    }
    objId = omCurrentObj->objId;
    if (D_800E3210[objId] <= 0.0f) {
        gKirbyState.isTurning &= ~4;
    }
    if ((gKirbyState.ceilingCollisionNext != 0) && (8.0f < gKirbyState.vel[1]) &&
        (gKirbyState.action != 0xD) && (gKirbyState.action != 9)) {
        s32 slot = func_801693C4_ovl3(1);

        if (slot != -1) {
            f32 **tbl = (f32 **) D_800E0490[omCurrentObj->objId];
            f32 *anim = tbl[1];

            D_800EC2E0[slot].as_s32 = 0;
            D_800EC660[slot] = anim[0] + anim[1];
        }
    }
    objId = omCurrentObj->objId;
    if (gKirbyState.action == 0xB) {
        func_800B2340(&pos, D_800DFBD0[objId][2], 0xFFFF);
        PC_KIRBY_SHADOW->unk4.x = pos.x;
        PC_KIRBY_SHADOW->unk4.y = pos.y;
        PC_KIRBY_SHADOW->unk4.z = pos.z;
        PC_KIRBY_SHADOW->unk1C = gEntitiesAngleYArray[objId];
    } else if (gEntityFuncListIDArray[objId] != 0x50) {
        func_800FF200(PC_KIRBY_SHADOW);
    }
    act = gKirbyState.action;
    if ((act != 0xD) && (act != 6) && (gKirbyState.ceilingCollisionNext != 0) &&
        (0.0f < D_800E3210[objId])) {
        D_800E3750[objId] = 0.0f;
        D_800E3210[objId] = D_800E3750[objId];
        D_800E3C90[objId] = 65535.0f;
    }
    if (gKirbyState.unk15 != 0) {
        gKirbyState.unk15--;
    }
    if (gKirbyState.unk16 != 0) {
        gKirbyState.unk16--;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        if (gGameTampered != 0) {
            gKirbyState.floatTimer = random_soft_s32_range(0x3C) + 0x5A;
        } else {
            gKirbyState.floatTimer = 0xF0;
        }
        gKirbyState.unkBA = 0;
    }
    if ((gKirbyState.action != 0x17) && (gKirbyState.unkD == -2)) {
        set_kirby_action_1(0x10, 1);
    }
    abil = gKirbyState.abilityInUse;
    if (abil != 1) {
        s16 *w = (s16 *) D_80198830_ovl3;

        if (w[0] == 0) {
            w[1]++;
            if (w[1] >= 2) {
                w[0] = 0;
                w[1] = 2;
            } else {
                w[0] = 0x1E;
            }
        } else if (w[0] > 0) {
            w[0]--;
        }
    }
    if (abil != 0xC) {
        s16 *w2 = &D_80198838_ovl3;

        if (w2[1] != 0) {
            w2[1]--;
        } else {
            objId = omCurrentObj->objId;
            if ((D_800E8920[objId] != 0) || (D_800E8AE0[objId] & 6)) {
                w2[0] = 3;
            }
        }
    }
}
#elif defined(PORT)
/* PORT: Kirby's per-frame service callback (installed in D_800DF150 by the
 * init above; dispatched by func_800B0D90 every tick), from
 * asm/nonmatchings/ovl3/kirby/func_8016C558_ovl3.s. Runs the turn-around
 * handler, the per-ability tick table (D_80196AE8_ovl3), model palette and
 * shadow upkeep, gravity capping on ceiling hits, the idle-fidget timers on
 * the D_80198830 block (its +8 half lives in the split D_80198838_ovl3 bss
 * cell on this build, same spelling as plyInit's PORT arm), and the
 * shadow-particle sync. func_8011E548 / func_8012209C / func_8011D4A4 are
 * still asm-only; their weak stubs log once and return 0 under
 * KIRBY_PC_TRACE (no turn-around animation / ice check / scale pulse). */
/* Shadow-particle record (N64 layout: struct Ovl2Particle in
 * src/ovl2/ovl2_5.c). This TU has no shared header for it, so it is
 * redeclared here with real field types/offsets rather than through the
 * host-only PcOvl2Particle mirror the PORT arm above uses. */
extern FUNCLIST D_80196AE8_ovl3;
extern u8 D_80193168_ovl3[];
extern s16 D_80198838_ovl3;
extern s32 gGameTampered;
extern f32 D_800EC660[];
extern struct DObj **D_800DFBD0[];
extern f32 D_800E3750[];
extern f32 D_800E3C90[];
extern s32 D_800E8920[];
extern s32 D_800E8AE0[];
extern s32 D_800D6B54;
extern f32 gKirbyHp;

void func_8011E548(void);
void func_8011DAF8(void);
s32 func_8012209C(void);
void func_8015A9F8_ovl3(void);
void func_80121BCC(s32);
void func_80121A04(void);
void func_80121D3C(void);
void func_801212A4(void);
void func_8011D4A4(f32);
void func_80121F50(void);
void func_800B2340(Vector *, struct DObj *, u32);
void func_800FF200(struct PcOvl2Particle *);
s32 func_801693C4_ovl3(s32);

void func_8016C558_ovl3(struct GObj *arg0) {
    s32 objId;
    u8 act;
    u32 abil;
    Vector pos;

    (void) arg0;
    func_8011E548();
    func_8011DAF8();
    if (gKirbyState.unk17 != 0) {
        gKirbyState.unkA = 0;
    }
    if (gKirbyState.unk68 == 2) {
        func_8015449C_ovl3(D_80193168_ovl3, 0);
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 0x53, &D_80196AE8_ovl3);
    if (func_8012209C() != 0) {
        gKirbyState.unk17 = 1;
    }
    if (gKirbyState.unk17 != 0) {
        func_8015A9F8_ovl3();
    }
    if ((gKirbyState.abilityInUse == 0xF) && (gKirbyState.unk38 == 0.4f)) {
        func_80121BCC(0xF9);
    } else {
        func_80121BCC(0xFB);
    }
    func_80121A04();
    func_80121D3C();
    func_801212A4();
    if ((D_800D6B54 == 0) && (gKirbyHp != 0.0f)) {
        if ((gKirbyState.unk15C != 0) && (gKirbyState.unk14 == 0)) {
            func_8011D4A4(gKirbyState.unk158);
        }
        func_80121F50();
    }
    objId = omCurrentObj->objId;
    if (D_800E3210[objId] <= 0.0f) {
        gKirbyState.isTurning &= ~4;
    }
    if ((gKirbyState.ceilingCollisionNext != 0) && (8.0f < gKirbyState.vel[1]) &&
        (gKirbyState.action != 0xD) && (gKirbyState.action != 9)) {
        s32 slot = func_801693C4_ovl3(1);

        if (slot != -1) {
            f32 **tbl = (f32 **) D_800E0490[omCurrentObj->objId];
            f32 *anim = tbl[1];

            D_800EC2E0[slot].as_s32 = 0;
            D_800EC660[slot] = anim[0] + anim[1];
        }
    }
    objId = omCurrentObj->objId;
    if (gKirbyState.action == 0xB) {
        func_800B2340(&pos, D_800DFBD0[objId][2], 0xFFFF);
        PC_KIRBY_SHADOW->unk4.x = pos.x;
        PC_KIRBY_SHADOW->unk4.y = pos.y;
        PC_KIRBY_SHADOW->unk4.z = pos.z;
        PC_KIRBY_SHADOW->unk1C = gEntitiesAngleYArray[objId];
    } else if (gEntityFuncListIDArray[objId] != 0x50) {
        func_800FF200(PC_KIRBY_SHADOW);
    }
    act = gKirbyState.action;
    if ((act != 0xD) && (act != 6) && (gKirbyState.ceilingCollisionNext != 0) &&
        (0.0f < D_800E3210[objId])) {
        D_800E3750[objId] = 0.0f;
        D_800E3210[objId] = D_800E3750[objId];
        D_800E3C90[objId] = 65535.0f;
    }
    if (gKirbyState.unk15 != 0) {
        gKirbyState.unk15--;
    }
    if (gKirbyState.unk16 != 0) {
        gKirbyState.unk16--;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        if (gGameTampered != 0) {
            gKirbyState.floatTimer = random_soft_s32_range(0x3C) + 0x5A;
        } else {
            gKirbyState.floatTimer = 0xF0;
        }
        gKirbyState.unkBA = 0;
    }
    if ((gKirbyState.action != 0x17) && (gKirbyState.unkD == -2)) {
        set_kirby_action_1(0x10, 1);
    }
    abil = gKirbyState.abilityInUse;
    if (abil != 1) {
        s16 *w = (s16 *) D_80198830_ovl3;

        if (w[0] == 0) {
            w[1]++;
            if (w[1] >= 2) {
                w[0] = 0;
                w[1] = 2;
            } else {
                w[0] = 0x1E;
            }
        } else if (w[0] > 0) {
            w[0]--;
        }
    }
    if (abil != 0xC) {
        s16 *w2 = &D_80198838_ovl3;

        if (w2[1] != 0) {
            w2[1]--;
        } else {
            objId = omCurrentObj->objId;
            if ((D_800E8920[objId] != 0) || (D_800E8AE0[objId] & 6)) {
                w2[0] = 3;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016C558_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 32/471, whole-function callee-saved permutation (same floor class documented across this cluster). Adds a local extern for D_800D6B54 (declared elsewhere in this TU inside a different #ifdef PORT block). Queued for the permuter. */
/* PORT: the idle action coroutine (D_80196990_ovl3[0], run on the player's
 * action thread process), from asm/nonmatchings/ovl3/kirby/
 * func_8016CA8C_ovl3.s. Picks the stand animation for the current ability
 * (special sets for low HP / underwater / mix ability), plays the random
 * fidget cycle while nothing is requested, and runs the pre-walk wind-up
 * once plylib's input scan latches a movement request into
 * gKirbyState.unk150. All animation ids are literal, as in the ROM. */
extern u8 D_801903E0_ovl3[];
extern f32 D_800E7B20[];
extern u32 D_80196C34_ovl3[];
extern s32 D_800D6B54;
s32 func_800AA888(s32);
void func_80122F08(s32);
void func_80123004(void *, f32, s32);

void func_8016CA8C_ovl3(GObj *arg0) {
    s32 objId;
    s32 i;
    s32 n;
    s32 r;

    (void) arg0;
    gKirbyState.unk30 = 0;
    gKirbyState.unk2C = 0;
    func_8011CF58();
    objId = omCurrentObj->objId;
    D_800DDFD0[objId] = 0;
    if (gKirbyState.unk4 == 1) {
        D_800E0490[objId] = D_80192704_ovl3;
        gKirbyState.unk15C = (u32) (uintptr_t) D_801903E0_ovl3;
    } else {
        D_800E0490[objId] = D_801926E8_ovl3;
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
    }
    D_800E6690[objId] = 0.0f;
    D_800E64D0[objId] = D_800E6690[objId];
    D_800E6850[objId] = 65535.0f;
    if (gKirbyState.unk4 == 2) {
        if (func_800AA888(0x20007) == 0) {
            func_80122F08(0x20007);
        }
    }
    if ((gKirbyState.unk150 == 0) ||
        (D_800E8AE0[omCurrentObj->objId] & 6)) {
        /* stand still: pick the ability's idle animation set */
        if (gKirbyState.unk4 == 2) {
            if ((gKirbyState.previousAction != 0) &&
                (gKirbyState.previousAction != 0x11)) {
                func_800AA78C(0x200C3, 0x20007, 12.0f);
            }
            func_801230E8(0x200C3, 0x200C4, 0);
            curObjSleepForever();
        }
        if (gKirbyState.unk4 == 0) {
            if (D_800E7B20[omCurrentObj->objId] <= 1.9f) {
                if (gKirbyState.previousAction != 0) {
                    func_800AA78C(0x200D3, 0x20007, 12.0f);
                }
                func_801230E8(0x200D3, 0x200D4, 0);
                curObjSleepForever();
            }
        }
        if (gKirbyState.unk4 == 1) {
            if (gKirbyState.previousAction != 0) {
                func_800AA78C(0x20169, 0x20009, 12.0f);
            }
            func_801230E8(0x20169, 0x2016A, 0);
            curObjSleepForever();
        }
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            /* underwater idle */
            if (gKirbyState.previousAction != 0) {
                func_800AA78C(0x2009B, 0x20007, 12.0f);
            }
            func_801230E8(0x2009B, 0x2009C, 0);
            curObjSleepForever();
        }
        /* grounded idle: random fidget cycle */
        if (gKirbyState.previousAction != 0) {
            func_800AA78C(0x2009B, 0x20007, 12.0f);
        }
        gKirbyState.unk44 = -1;
        for (;;) {
            n = random_soft_s32_range(8) + 8;
            for (i = 0; i < n; i++) {
                func_801230E8(0x2009B, 0x2009C, 1);
            }
            do {
                r = random_soft_s32_range(3);
            } while (r == gKirbyState.unk44);
            {
                extern s32 D_8012E7FC;

                (&D_8012E7FC)[2] = r;
            }
            func_800AA78C(D_80196C34_ovl3[r * 2], 0x20007, 12.0f);
            func_80123004(&D_80196C34_ovl3[r * 2], 0.0f, 0);
            for (;;) {
                if (gKirbyState.isTurning & 1) {
                    break;
                }
                if (func_800AF230() != 0) {
                    break;
                }
                ohSleep(1);
            }
            func_800AA78C(0x2009B, 0x20007, 12.0f);
        }
    }
    /* movement requested: pre-walk wind-up */
    gKirbyState.unk3C = 0;
    objId = omCurrentObj->objId;
    D_800E9AA0[objId].as_s32 = gKirbyState.turnDirection;
    gKirbyState.isTurning |= 2;
    for (;;) {
        gKirbyState.unk30 = (gKirbyState.unk150 == 2) ? 1 : 0;
        if (gKirbyState.unk3C != 0) {
            if (gKirbyState.unk30 == 0) {
                switch (gKirbyState.unk4) {
                    case 0:
                        func_800AA78C(0x20017, 0x20007, 3.0f);
                        break;
                    case 1:
                        func_800AA78C(0x2015B, 0x20009, 3.0f);
                        break;
                    case 2:
                        if (gKirbyState.previousAction != 0x11) {
                            func_800AA78C(0x200B9, 0x20007, 3.0f);
                        }
                        break;
                }
            } else {
                switch (gKirbyState.unk4) {
                    case 0:
                        func_800AA78C(0x20015, 0x20007, 3.0f);
                        break;
                    case 1:
                        func_800AA78C(0x20159, 0x20009, 3.0f);
                        break;
                    case 2:
                        if (gKirbyState.previousAction != 0x11) {
                            func_800AA78C(0x200B7, 0x20007, 3.0f);
                        }
                        break;
                }
            }
        } else {
            gKirbyState.unk3C++;
        }
        if (gKirbyState.unk30 == 0) {
            switch (gKirbyState.unk4) {
                case 0:
                    func_801230E8(0x20017, 0x20018, 0);
                    break;
                case 1:
                    func_801230E8(0x2015B, 0x2015C, 0);
                    break;
                case 2:
                    func_801230E8(0x200B9, 0x200BA, 0);
                    break;
            }
        } else {
            switch (gKirbyState.unk4) {
                case 0:
                    func_801230E8(0x20015, 0x20016, 0);
                    break;
                case 1:
                    func_801230E8(0x20159, 0x2015A, 0);
                    break;
                case 2:
                    func_801230E8(0x200B7, 0x200B8, 0);
                    break;
            }
        }
        objId = omCurrentObj->objId;
        D_800E9720[objId] = 0xF;
        for (;;) {
            s32 t = D_800E9720[objId];

            D_800E9720[objId] = t - 1;
            if (t == 0) {
                break;
            }
            ohSleep(1);
            objId = omCurrentObj->objId;
        }
        if (D_800D6B54 == 0) {
            play_sound(0xEB);
        }
        while (!(gKirbyState.isTurning & 1)) {
            ohSleep(1);
        }
    }
}
#elif defined(PORT)
/* PORT: the idle action coroutine (D_80196990_ovl3[0], run on the player's
 * action thread process), from asm/nonmatchings/ovl3/kirby/
 * func_8016CA8C_ovl3.s. Picks the stand animation for the current ability
 * (special sets for low HP / underwater / mix ability), plays the random
 * fidget cycle while nothing is requested, and runs the pre-walk wind-up
 * once plylib's input scan latches a movement request into
 * gKirbyState.unk150. All animation ids are literal, as in the ROM. */
extern u8 D_801903E0_ovl3[];
extern f32 D_800E7B20[];
extern u32 D_80196C34_ovl3[];
extern s32 D_800D6B54;
s32 func_800AA888(s32);
void func_80122F08(s32);
void func_80123004(void *, f32, s32);

void func_8016CA8C_ovl3(GObj *arg0) {
    s32 objId;
    s32 i;
    s32 n;
    s32 r;

    (void) arg0;
    gKirbyState.unk30 = 0;
    gKirbyState.unk2C = 0;
    func_8011CF58();
    objId = omCurrentObj->objId;
    D_800DDFD0[objId] = 0;
    if (gKirbyState.unk4 == 1) {
        D_800E0490[objId] = D_80192704_ovl3;
        gKirbyState.unk15C = (u32) (uintptr_t) D_801903E0_ovl3;
    } else {
        D_800E0490[objId] = D_801926E8_ovl3;
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
    }
    D_800E6690[objId] = 0.0f;
    D_800E64D0[objId] = D_800E6690[objId];
    D_800E6850[objId] = 65535.0f;
    if (gKirbyState.unk4 == 2) {
        if (func_800AA888(0x20007) == 0) {
            func_80122F08(0x20007);
        }
    }
    if ((gKirbyState.unk150 == 0) ||
        (D_800E8AE0[omCurrentObj->objId] & 6)) {
        /* stand still: pick the ability's idle animation set */
        if (gKirbyState.unk4 == 2) {
            if ((gKirbyState.previousAction != 0) &&
                (gKirbyState.previousAction != 0x11)) {
                func_800AA78C(0x200C3, 0x20007, 12.0f);
            }
            func_801230E8(0x200C3, 0x200C4, 0);
            curObjSleepForever();
        }
        if (gKirbyState.unk4 == 0) {
            if (D_800E7B20[omCurrentObj->objId] <= 1.9f) {
                if (gKirbyState.previousAction != 0) {
                    func_800AA78C(0x200D3, 0x20007, 12.0f);
                }
                func_801230E8(0x200D3, 0x200D4, 0);
                curObjSleepForever();
            }
        }
        if (gKirbyState.unk4 == 1) {
            if (gKirbyState.previousAction != 0) {
                func_800AA78C(0x20169, 0x20009, 12.0f);
            }
            func_801230E8(0x20169, 0x2016A, 0);
            curObjSleepForever();
        }
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            /* underwater idle */
            if (gKirbyState.previousAction != 0) {
                func_800AA78C(0x2009B, 0x20007, 12.0f);
            }
            func_801230E8(0x2009B, 0x2009C, 0);
            curObjSleepForever();
        }
        /* grounded idle: random fidget cycle */
        if (gKirbyState.previousAction != 0) {
            func_800AA78C(0x2009B, 0x20007, 12.0f);
        }
        gKirbyState.unk44 = -1;
        for (;;) {
            n = random_soft_s32_range(8) + 8;
            for (i = 0; i < n; i++) {
                func_801230E8(0x2009B, 0x2009C, 1);
            }
            do {
                r = random_soft_s32_range(3);
            } while (r == gKirbyState.unk44);
            {
                extern s32 D_8012E7FC;

                (&D_8012E7FC)[2] = r;
            }
            func_800AA78C(D_80196C34_ovl3[r * 2], 0x20007, 12.0f);
            func_80123004(&D_80196C34_ovl3[r * 2], 0.0f, 0);
            for (;;) {
                if (gKirbyState.isTurning & 1) {
                    break;
                }
                if (func_800AF230() != 0) {
                    break;
                }
                ohSleep(1);
            }
            func_800AA78C(0x2009B, 0x20007, 12.0f);
        }
    }
    /* movement requested: pre-walk wind-up */
    gKirbyState.unk3C = 0;
    objId = omCurrentObj->objId;
    D_800E9AA0[objId].as_s32 = gKirbyState.turnDirection;
    gKirbyState.isTurning |= 2;
    for (;;) {
        gKirbyState.unk30 = (gKirbyState.unk150 == 2) ? 1 : 0;
        if (gKirbyState.unk3C != 0) {
            if (gKirbyState.unk30 == 0) {
                switch (gKirbyState.unk4) {
                    case 0:
                        func_800AA78C(0x20017, 0x20007, 3.0f);
                        break;
                    case 1:
                        func_800AA78C(0x2015B, 0x20009, 3.0f);
                        break;
                    case 2:
                        if (gKirbyState.previousAction != 0x11) {
                            func_800AA78C(0x200B9, 0x20007, 3.0f);
                        }
                        break;
                }
            } else {
                switch (gKirbyState.unk4) {
                    case 0:
                        func_800AA78C(0x20015, 0x20007, 3.0f);
                        break;
                    case 1:
                        func_800AA78C(0x20159, 0x20009, 3.0f);
                        break;
                    case 2:
                        if (gKirbyState.previousAction != 0x11) {
                            func_800AA78C(0x200B7, 0x20007, 3.0f);
                        }
                        break;
                }
            }
        } else {
            gKirbyState.unk3C++;
        }
        if (gKirbyState.unk30 == 0) {
            switch (gKirbyState.unk4) {
                case 0:
                    func_801230E8(0x20017, 0x20018, 0);
                    break;
                case 1:
                    func_801230E8(0x2015B, 0x2015C, 0);
                    break;
                case 2:
                    func_801230E8(0x200B9, 0x200BA, 0);
                    break;
            }
        } else {
            switch (gKirbyState.unk4) {
                case 0:
                    func_801230E8(0x20015, 0x20016, 0);
                    break;
                case 1:
                    func_801230E8(0x20159, 0x2015A, 0);
                    break;
                case 2:
                    func_801230E8(0x200B7, 0x200B8, 0);
                    break;
            }
        }
        objId = omCurrentObj->objId;
        D_800E9720[objId] = 0xF;
        for (;;) {
            s32 t = D_800E9720[objId];

            D_800E9720[objId] = t - 1;
            if (t == 0) {
                break;
            }
            ohSleep(1);
            objId = omCurrentObj->objId;
        }
        if (D_800D6B54 == 0) {
            play_sound(0xEB);
        }
        while (!(gKirbyState.isTurning & 1)) {
            ohSleep(1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016CA8C_ovl3.s")
#endif

typedef struct Unk80196C4C {
    u8 unk0[5];
} Unk80196C4C;

extern Unk80196C4C D_80196C4C_ovl3;

void func_8016D1E8_ovl3(GObj *arg0) {
    Unk80196C4C sp28 = D_80196C4C_ovl3;

    D_800E98E0[omCurrentObj->objId] = gKirbyState.unk150;
    func_80153984_ovl3();
    func_8011CF58();
    if ((func_80151E94_ovl3(&sp28) != 0) || (gKirbyState.unk17 != 0)) {
        gKirbyState.isTurning &= ~2;
    } else if (gKirbyState.unk150 != 0) {
        if (gKirbyState.turnDirection == 0) {
            if (gKirbyState.unk150 != D_800E98E0[omCurrentObj->objId]) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016C510_ovl3);
            }
        } else if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016C510_ovl3);
        }
        D_800E9AA0[omCurrentObj->objId].as_s32 = gKirbyState.turnDirection;
    } else if (gKirbyState.unk150 != D_800E98E0[omCurrentObj->objId]) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016C510_ovl3);
    }
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_8016D3A8_ovl3(s32 arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f0;
    f32 var_f2;
    f32 var_f2_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u8 temp_v0_3;

    gKirbyState.unk44 = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    } else {
        func_800AECC0(3.0f);
        func_800AED20(3.0f);
    }
    D_800DDFD0[omCurrentObj->objId] = 1;
    if (gKirbyState.previousAction == 1) {
        temp_v0 = omCurrentObj->objId;
        if (!(D_800E8AE0[temp_v0] & 6)) {
            var_f2 = 0.75f;
        } else {
            var_f2 = 0.375f;
        }
        D_800E64D0[temp_v0] = var_f2 * D_800E6A10[temp_v0];
        temp_v0_2 = omCurrentObj->objId;
        if (!(D_800E8AE0[temp_v0_2] & 6)) {
            var_f0 = 0.625f;
        } else {
            var_f0 = 0.3125f;
        }
        D_800E6690[temp_v0_2] = var_f0 * D_800E6A10[temp_v0_2];
        D_800E6850[omCurrentObj->objId] = 5.0f;
        switch (gKirbyState.unk4) {                 /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            func_801230E8(0x2009D, 0x2009E, 0);
            break;
        case 1:                                     /* switch 1 */
            func_801230E8(0x2016B, 0x2016C, 0);
            break;
        case 2:                                     /* switch 1 */
            func_801230E8(0x200C5, 0x200C6, 0);
            break;
        }
        if (!(gKirbyController.buttonHeld & 0x300)) {
            do {
                ohSleep(1);
            } while (!(gKirbyController.buttonHeld & 0x300));
        }
    }
    temp_v0_3 = gKirbyState.unk4;
loop_20:
    switch (temp_v0_3) {                            /* switch 2; irregular */
    case 0:                                         /* switch 2 */
        func_801230E8(0x20141, 0x20142, 0);
        break;
    case 1:                                         /* switch 2 */
        func_801230E8(0x2017F, 0x20180, 0);
        break;
    case 2:                                         /* switch 2 */
        func_801230E8(0x200D1, 0x200D2, 0);
        break;
    }
    if (temp_v0_3 == 0) {
loop_29:
        if (gKirbyState.unk44 != 0) {
block_40:
            ohSleep(1);
            goto loop_29;
        }
        if (gKirbyState.isTurning & 1) {
            goto block_40;
        }
        temp_v0_4 = omCurrentObj->objId;
        temp_f0 = D_800E6A10[temp_v0_4];
        if (((temp_f0 != 1.0f) || !(gKirbyState.rightCollisionNext & 1)) && ((temp_f0 != -1.0f) || !(gKirbyState.leftCollisionNext & 8))) {
            goto block_40;
        }
        temp_f0_2 = D_800E64D0[temp_v0_4];
        if (temp_f0_2 < 0.0f) {
            var_f2_2 = -temp_f0_2;
        } else {
            var_f2_2 = temp_f0_2;
        }
        if (!(var_f2_2 > 2.0f)) {
            gKirbyState.unk44 = 1;
            goto block_40;
        }
        gKirbyState.unk44 += 1;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        temp_v0_5 = omCurrentObj->objId;
        D_800E64D0[temp_v0_5] = D_800E6690[temp_v0_5];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        func_801230E8(0x200FF, 0x20100, 1);
        goto loop_20;
    }
    curObjSleepForever();
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016D3A8_ovl3.s")
#endif

typedef struct Unk80196C54 {
    u8 unk0[8];
} Unk80196C54;

extern Unk80196C54 D_80196C54_ovl3;

void func_8016D81C_ovl3(GObj *arg0) {
    Unk80196C54 sp20 = D_80196C54_ovl3;

    func_80153984_ovl3();
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    } else {
        func_800AECC0(3.0f);
        func_800AED20(3.0f);
    }
    if (func_80151E94_ovl3(&sp20) == 0) {
        func_801219C8();
        if (!(gKirbyState.isTurning & 1)) {
            if (func_801210FC() == 0) {
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    if (D_800E9720[omCurrentObj->objId] < 0xA) {
                        D_800E9720[omCurrentObj->objId] = D_800E9720[omCurrentObj->objId] + 1;
                    }
                }
            } else if (gKirbyController.buttonHeld & 0x300) {
                if ((D_800E9720[omCurrentObj->objId] > 0) && (D_800E9720[omCurrentObj->objId] < 7)) {
                    gKirbyState.unk38 = arg0->animTimer * 0.5f;
                    if (25.0f <= gKirbyState.unk38) {
                        gKirbyState.unk38 = gKirbyState.unk38 - 25.0f;
                    }
                    set_kirby_action_1(2, 4);
                } else {
                    D_800E9720[omCurrentObj->objId] = 0;
                }
            }
        } else {
            gKirbyState.unk44 = 0;
            D_800E9720[omCurrentObj->objId] = 0;
        }
    }
    func_8011ED68();
}

extern void func_80122A80(void);
extern void func_8012307C(s32, s32, f32, s32);

#ifdef NON_MATCHING
/* FACTORY: 1/190, constant-materialisation SCHEDULING floor -- re-confirmed
   2026-08-23. Only `addiu $a2, $zero, 1` vs `move $a2, $s2` for the third
   argument of the tail func_801230E8(0x200FF, 0x20100, 1); the ROM
   re-materialises the literal 1 as a fresh addiu scheduled early
   (unconditionally, right after the D_800E6850 = 65535.0f store, well
   before the switch even branches), while IDO here instead moves it out of
   the callee-saved $s2 that already holds constant 1 (used for the case-1/
   case-2 compares, the ohSleep(1) call, and the unk44=1 store). Swept, all
   reproduce the identical 1/190 diff: (u32)1, 1L, (s16)1, and an
   unprototyped local declaration of func_801230E8 -- none forks the
   constant node or blocks the $s2 reuse. This is a pure IDO scheduling
   choice, not a source spelling; good permuter seed. */
void func_8016DA14_ovl3(GObj *arg0) {
    f32 temp;
    f32 temp2;

    gKirbyState.unk7 = 1;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_80122A80();
    while (1) {
        switch (gKirbyState.unk4) {
        case 0:
            func_8012307C(0x2005D, 0x2005E, gKirbyState.unk38, 0);
            break;
        case 1:
            func_8012307C(0x20175, 0x20176, gKirbyState.unk38, 0);
            curObjSleepForever();
        case 2:
            func_8012307C(0x200CD, 0x200CE, gKirbyState.unk38, 0);
            curObjSleepForever();
        }
        if (gKirbyState.unk4 != 0) {
            break;
        }
        if (gKirbyState.unk44 != 0) {
            break;
        }
        while (1) {
            if ((!(gKirbyState.isTurning & 1) && (gKirbyState.unk44 == 0) && (1.0f == D_800E6A10[omCurrentObj->objId]) && (gKirbyState.rightCollisionNext & 1)) || ((-1.0f == D_800E6A10[omCurrentObj->objId]) && (gKirbyState.leftCollisionNext & 8))) {
                temp = D_800E64D0[omCurrentObj->objId];
                if (temp < 0.0f) {
                    temp2 = -temp;
                } else {
                    temp2 = temp;
                }
                if (2.0f < temp2) {
                    break;
                }
                gKirbyState.unk44 = 1;
            }
            ohSleep(1);
        }
        gKirbyState.unk44 = gKirbyState.unk44 + 1;
        D_800E6690[omCurrentObj->objId] = 0;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x200FF, 0x20100, 1);
            break;
        case 1:
            break;
        case 2:
            break;
        }
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016DA14_ovl3.s")
#endif

void func_8016DD0C_ovl3(s32 arg0) {
    Unk80196C74 sp18 = D_80196C5C_ovl3;

    func_80153984_ovl3();
    func_8011CF58();
    if (func_80151E94_ovl3(&sp18) == 0) {
        if ((0.0f == D_800E64D0[omCurrentObj->objId]) && !(gKirbyController.buttonHeld & 0x300)) {
            gKirbyState.unk7 = 0;
            set_kirby_action_1(0, 1);
        } else if (func_801215DC() == 2) {
            gKirbyState.isTurning |= 1;
        }
        func_8011ED68();
    }
}

extern u8 D_801903E0_ovl3[];

#ifdef NON_MATCHING
/* 214/221: same instruction COUNT and same shape; this C hoists
   &D_800E3210 into a third callee-saved register ($s1) where the ROM
   re-materialises %hi/%lo at each of its four uses, so the frame is 8
   bytes larger and everything renumbers. Swept: the (x & 6) == 6 flag as a
   local vs inline (no change to the count). */
void func_8016DDE8_ovl3(GObj *arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.isFullJump = 0;
    gKirbyState.jumpHeight = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 3;
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
        play_sound(0x10B);
        gKirbyState.unkCC = 4.0f;
        D_800E3210[omCurrentObj->objId] = 8.5f;
        D_800E3750[omCurrentObj->objId] = -0.4f;
        D_800E3C90[omCurrentObj->objId] = 8.5f;
    } else {
        play_sound(0xF7);
        gKirbyState.unkCC = 8.0f;
        D_800E3210[omCurrentObj->objId] = func_80123144(17.0f);
        D_800E3750[omCurrentObj->objId] = -0.9806650281f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    }
    D_800E83E0[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    if (gKirbyState.previousAction == 0xB) {
        func_800AA78C(0x2009F, 0x20007, 3.0f);
    } else {
        func_800AFA54(D_800DFA10[omCurrentObj->objId]);
    }
    switch (gKirbyState.unk4) {
    case 0:
        func_801230E8(0x2009F, 0x200A0, 0);
        break;
    case 1:
        func_801230E8(0x2016D, 0x2016E, 0);
        break;
    case 2:
        func_801230E8(0x200C7, 0x200C8, 0);
        break;
    }
    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    gKirbyState.isFullJump = gKirbyState.isFullJump + 1;
    switch (gKirbyState.unk4) {
    case 0:
        func_801230E8(0x200A1, 0x200A2, 1);
        break;
    case 1:
        func_801230E8(0x2016F, 0x20170, 1);
        break;
    case 2:
        func_801230E8(0x200C9, 0x200CA, 1);
        break;
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016DDE8_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 31/310, whole-function callee-saved permutation (same floor class documented across this cluster). Gives func_8015449C_ovl3 a local s32-returning extern (dropping the PORT arm's function-pointer cast, which triggered an unrelated cfe redeclaration error against a later unguarded call site) and drops list[] as a literal initializer instead of a struct copy -- both real, not just register-shaped; a residual defect for whoever continues is that the ROM copies the 7-byte predicate list via an unaligned lwr/swr pair from its rodata source, not a byte-literal local array (same class of issue as func_8016F240_ovl3's D_80196C6C_ovl3). Queued for the permuter. */
/* Airborne action handler (via m2c, deps all compiled): the predicate list
 * is D_80196C64_ovl3's big-endian bytes {1,5,9,8,7,6,0xF} (the PC data emits
 * the two native words, same treatment as D_80196C6C_ovl3); the collision
 * flags word clear is whole-word and endian-neutral; the ability-anim call
 * follows the compiled sibling's (list, firstChild, 1.0f) convention. */
void func_8016E15C_ovl3(GObj *arg0) {
    extern u8 D_801903E0_ovl3[];
    extern s32 D_800E8AE0[];
    extern f32 D_800E6690[], D_800E64D0[], D_800E6850[];
    extern f32 D_800E3750[], D_800E3210[], D_800E3C90[];
    extern u8 D_8019395C_ovl3[];
    u8 list[8] = { 1, 5, 9, 8, 7, 6, 0xF, 0 };
    s32 id;

    func_80153984_ovl3();
    if (func_80151E94_ovl3(list) != 0) {
        if (gKirbyState.unk4 == 1) {
            gKirbyState.unk15C = (u32) (uintptr_t) D_801903E0_ovl3;
        } else {
            gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
        }
        return;
    }
    if (gKirbyState.ceilingCollisionNext != 0) {
        if (func_80122460() != 0) {
            id = omCurrentObj->objId;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = 0.0f;
            D_800E6850[id] = 65535.0f;
            D_800E3750[id] = 0.0f;
            D_800E3210[id] = 0.0f;
            D_800E3C90[id] = 65535.0f;
            *(u32 *) D_8012BCA0 &= 7;
            if (gKirbyState.unk4 == 1) {
                gKirbyState.unk15C = (u32) (uintptr_t) D_801903E0_ovl3;
            } else {
                gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
            }
            set_kirby_action_1(0xA, 0xD);
            if (gKirbyState.unk4 == 2) {
                gKirbyState.unk4 = 0;
                gKirbyState.unkD = -3;
            }
            return;
        }
        id = omCurrentObj->objId;
        if (!(D_800E8AE0[id] & 6) && gKirbyState.unk68 == 0
            /* Through the function-pointer cast, as the PORT arm below does:
             * ovl3_1.c:1679 defines func_8015449C_ovl3 void, but the ROM reads
             * its $v0 here. This arm used to rely on the symbol having no
             * declaration in scope at all (an implicit `int f()`), which stopped
             * being true when this file's prototypes were collected at the top.
             * Costs the direct jal -- IDO emits jalr for the cast. */
            && ((s32 (*)(void *, s32)) func_8015449C_ovl3)(D_8019395C_ovl3, 0) != 0
            && gKirbyState.unkD == 2) {
            gKirbyState.unk4 = 0;
            gKirbyState.unkD = -3;
        }
        D_800E3210[id] = 0.0f;
        func_800BB468(0xB, 0xA);
        if (func_80179130_ovl3() == 0) {
            set_kirby_action_1(6, 6);
        }
    } else if (gKirbyState.unk30 != 0) {
        if (func_80179130_ovl3() == 0) {
            set_kirby_action_1(6, 6);
        }
    } else {
        if (gKirbyState.isFullJump == 0) {
            func_8011EBD4();
        }
        id = omCurrentObj->objId;
        if ((D_800E83E0[id] & 0xFFFF) == 2) {
            D_800E3750[id] = 0.0f;
            D_800E3210[id] = 0.0f;
            D_800E3C90[id] = 65535.0f;
            func_800BB468(0xB, 0xA);
            if (func_80179130_ovl3() == 0) {
                set_kirby_action_1(6, 6);
            }
        } else if (!(D_800E8AE0[id] & 6) && !(gKirbyState.unk9 & 1)
                   && gKirbyState.unkCC < D_800E3210[id] && gKirbyState.unk4 == 0) {
            func_8016854C_ovl3((s32) (uintptr_t) D_80190F2C_ovl3,
                               (s32) (uintptr_t) arg0->data.dobj->firstChild, 1.0f);
        }
    }
    id = omCurrentObj->objId;
    if (gKirbyState.horizontalCollision == 0) {
        func_8011ED68();
    } else {
        D_800E6690[id] = 0.0f;
        D_800E64D0[id] = 0.0f;
        D_800E6850[id] = 65535.0f;
    }
    if (D_800E8AE0[id] & 6) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        return;
    }
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
}
#elif defined(PORT)
/* Airborne action handler (via m2c, deps all compiled): the predicate list
 * is D_80196C64_ovl3's big-endian bytes {1,5,9,8,7,6,0xF} (the PC data emits
 * the two native words, same treatment as D_80196C6C_ovl3); the collision
 * flags word clear is whole-word and endian-neutral; the ability-anim call
 * follows the compiled sibling's (list, firstChild, 1.0f) convention. */
void func_8016E15C_ovl3(GObj *arg0) {
    extern u8 D_801903E0_ovl3[];
    extern s32 D_800E8AE0[];
    extern f32 D_800E6690[], D_800E64D0[], D_800E6850[];
    extern f32 D_800E3750[], D_800E3210[], D_800E3C90[];
    extern u8 D_8019395C_ovl3[];
    u8 list[8] = { 1, 5, 9, 8, 7, 6, 0xF, 0 };
    s32 id;

    func_80153984_ovl3();
    if (func_80151E94_ovl3(list) != 0) {
        if (gKirbyState.unk4 == 1) {
            gKirbyState.unk15C = (u32) (uintptr_t) D_801903E0_ovl3;
        } else {
            gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
        }
        return;
    }
    if (gKirbyState.ceilingCollisionNext != 0) {
        if (func_80122460() != 0) {
            id = omCurrentObj->objId;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = 0.0f;
            D_800E6850[id] = 65535.0f;
            D_800E3750[id] = 0.0f;
            D_800E3210[id] = 0.0f;
            D_800E3C90[id] = 65535.0f;
            *(u32 *) D_8012BCA0 &= 7;
            if (gKirbyState.unk4 == 1) {
                gKirbyState.unk15C = (u32) (uintptr_t) D_801903E0_ovl3;
            } else {
                gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
            }
            set_kirby_action_1(0xA, 0xD);
            if (gKirbyState.unk4 == 2) {
                gKirbyState.unk4 = 0;
                gKirbyState.unkD = -3;
            }
            return;
        }
        id = omCurrentObj->objId;
        if (!(D_800E8AE0[id] & 6) && gKirbyState.unk68 == 0
            && ((s32 (*)(void *, s32)) func_8015449C_ovl3)(D_8019395C_ovl3, 0) != 0
            && gKirbyState.unkD == 2) {
            gKirbyState.unk4 = 0;
            gKirbyState.unkD = -3;
        }
        D_800E3210[id] = 0.0f;
        func_800BB468(0xB, 0xA);
        if (func_80179130_ovl3() == 0) {
            set_kirby_action_1(6, 6);
        }
    } else if (gKirbyState.unk30 != 0) {
        if (func_80179130_ovl3() == 0) {
            set_kirby_action_1(6, 6);
        }
    } else {
        if (gKirbyState.isFullJump == 0) {
            func_8011EBD4();
        }
        id = omCurrentObj->objId;
        if ((D_800E83E0[id] & 0xFFFF) == 2) {
            D_800E3750[id] = 0.0f;
            D_800E3210[id] = 0.0f;
            D_800E3C90[id] = 65535.0f;
            func_800BB468(0xB, 0xA);
            if (func_80179130_ovl3() == 0) {
                set_kirby_action_1(6, 6);
            }
        } else if (!(D_800E8AE0[id] & 6) && !(gKirbyState.unk9 & 1)
                   && gKirbyState.unkCC < D_800E3210[id] && gKirbyState.unk4 == 0) {
            func_8016854C_ovl3((s32) (uintptr_t) D_80190F2C_ovl3,
                               (s32) (uintptr_t) arg0->data.dobj->firstChild, 1.0f);
        }
    }
    id = omCurrentObj->objId;
    if (gKirbyState.horizontalCollision == 0) {
        func_8011ED68();
    } else {
        D_800E6690[id] = 0.0f;
        D_800E64D0[id] = 0.0f;
        D_800E6850[id] = 65535.0f;
    }
    if (D_800E8AE0[id] & 6) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        return;
    }
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016E15C_ovl3.s")
#endif

#ifdef NON_MATCHING
/* 46/154: instruction-for-instruction exact, same length, same branches; every
   $t register is exactly ONE lower than the ROM's ($t7->$t6 for the `3`, and so
   on uniformly through both switches and the ohSleep loop), so IDO started the
   temp cycle one slot earlier. Swept: `s32 arg0` instead of `GObj *arg0`, and
   the unk4 test written `!= 1` with the arms swapped (byte-identical output --
   the polarity of this if does NOT reach codegen here). Nothing in the source
   changes the count of values, which is what the cycle start follows. */
extern u8 D_801903E0_ovl3[];

void func_8016E638_ovl3(GObj *arg0) {
    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E8920[omCurrentObj->objId] = 0;
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    D_800E83E0[omCurrentObj->objId] = 0;
    if (gKirbyState.previousAction == 0xB) {
        func_800AA78C(0x2009F, 0x20007, 3.0f);
    } else {
        func_800AFA54(D_800DFA10[omCurrentObj->objId]);
    }
    switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x2009F, 0x200A0, 0);
            break;
        case 1:
            func_801230E8(0x2016D, 0x2016E, 0);
            break;
        case 2:
            func_801230E8(0x200C7, 0x200C8, 0);
            break;
    }
    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    gKirbyState.isFullJump = gKirbyState.isFullJump + 1;
    switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x200A1, 0x200A2, 1);
            break;
        case 1:
            func_801230E8(0x2016F, 0x20170, 1);
            break;
        case 2:
            func_801230E8(0x200C9, 0x200CA, 1);
            break;
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016E638_ovl3.s")
#endif

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_8016E8A0_ovl3(s32 arg0) {
    GObj *temp_a2;
    s32 *temp_v0_2;
    s32 var_v0;
    s32 var_v1;
    s32 var_v1_2;
    u32 temp_a0;
    u32 temp_v1;
    u32 temp_v1_10;
    u32 temp_v1_11;
    u32 temp_v1_12;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 temp_v1_9;
    u8 temp_v0;

    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    gKirbyState.isFullJump = 1;
    func_8011CF58();
    temp_a2 = omCurrentObj;
    D_800DDFD0[temp_a2->objId] = 4;
    temp_v0 = gKirbyState.unk4;
    if (temp_v0 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    temp_v1 = temp_a2->objId;
    D_800EA6E0[temp_v1] = D_800E3210[temp_v1];
    temp_v1_2 = temp_a2->objId;
    D_800EA8A0[temp_v1_2] = D_800E64D0[temp_v1_2];
    temp_v1_3 = temp_a2->objId;
    D_800EAA60[temp_v1_3] = D_800E6690[temp_v1_3];
    temp_v1_4 = temp_a2->objId;
    D_800EAC20[temp_v1_4] = D_800E6850[temp_v1_4];
    D_800E3750[temp_a2->objId] = 0.0f;
    temp_v1_5 = temp_a2->objId;
    D_800E3210[temp_v1_5] = D_800E3750[temp_v1_5];
    D_800E3C90[temp_a2->objId] = 65535.0f;
    D_800E6690[temp_a2->objId] = 0.0f;
    temp_v1_6 = temp_a2->objId;
    D_800E64D0[temp_v1_6] = D_800E6690[temp_v1_6];
    D_800E6850[temp_a2->objId] = 65535.0f;
    D_800E9720[temp_a2->objId] = 0;
    temp_v1_7 = temp_a2->objId;
    var_v1 = temp_v1_7 * 4;
    if (D_800E9720[temp_v1_7] < 2) {
        do {
            ohSleep(1, D_800E9720, temp_a2);
            temp_v0_2 = &D_800E9720[omCurrentObj->objId];
            *temp_v0_2 += 1;
            temp_v1_8 = omCurrentObj->objId;
            var_v1 = temp_v1_8 * 4;
        } while (D_800E9720[temp_v1_8] < 2);
    }
    *(D_800E3210 + var_v1) = *(D_800EA6E0 + var_v1);
    temp_v1_9 = temp_a2->objId;
    D_800E64D0[temp_v1_9] = D_800EA8A0[temp_v1_9];
    temp_v1_10 = temp_a2->objId;
    D_800E6690[temp_v1_10] = D_800EAA60[temp_v1_10];
    temp_v1_11 = temp_a2->objId;
    D_800E6850[temp_v1_11] = D_800EAC20[temp_v1_11];
    D_800DDFD0[temp_a2->objId] = 3;
    D_800E8920[temp_a2->objId] = 0;
    if (temp_v0 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    temp_v1_12 = temp_a2->objId;
    var_v1_2 = temp_v1_12 * 4;
    temp_a0 = D_800EC2E0[temp_v1_12].as_u32;
    if (temp_a0 != 0x80000000) {
        play_sound((s32) temp_a0);
        var_v1_2 = omCurrentObj->objId * 4;
    }
    var_v0 = 0;
    if ((*(D_800E8AE0 + var_v1_2) & 6) == 6) {
        var_v0 = 1;
    }
    if (var_v0 != 0) {
        gKirbyState.unkCC = 4.0f;
        *(D_800E3750 + (temp_a2->objId * 4)) = -0.4f;
        D_800E3C90[temp_a2->objId] = 8.5f;
    } else {
        gKirbyState.unkCC = 8.0f;
        *(D_800E3750 + (temp_a2->objId * 4)) = -0.980665f;
        if (func_80123144(17.0f) < 0.0f) {
            D_800E3C90[omCurrentObj->objId] = -func_80123144(17.0f);
        } else {
            D_800E3C90[omCurrentObj->objId] = func_80123144(17.0f);
        }
    }
    func_800AFA54(D_800DFA10[temp_a2->objId]);
    switch (gKirbyState.unk4) {                     /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        func_801230E8(0x2009F, 0x200A0, 0);
        break;
    case 1:                                         /* switch 1 */
        func_801230E8(0x2016D, 0x2016E, 0);
        break;
    case 2:                                         /* switch 1 */
        func_801230E8(0x200C7, 0x200C8, 0);
        break;
    }
    if (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
        do {
            ohSleep(1);
        } while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]);
    }
    switch (gKirbyState.unk4) {                     /* switch 2; irregular */
    case 0:                                         /* switch 2 */
        func_801230E8(0x200A1, 0x200A2, 1);
        break;
    case 1:                                         /* switch 2 */
        func_801230E8(0x2016F, 0x20170, 1);
        break;
    case 2:                                         /* switch 2 */
        func_801230E8(0x200C9, 0x200CA, 1);
        break;
    }
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016E8A0_ovl3.s")
#endif

void func_8016EE5C_ovl3(GObj *arg0) {
    if ((gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) && (gKirbyState.unk4 == 0)) {
        func_80111C4C(func_80111A04(D_80190F2C_ovl3, omCurrentObj->objId));
    }
    if (gKirbyController.buttonHeld & 0x8000) {
        D_800E64D0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
        D_800E6690[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
        set_kirby_action_1(3, 5);
    }
}

extern u8 D_801903E0_ovl3[];

void func_8016EF5C_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 5;
    /* the collapsed form of this if/else is load-bearing: expanded over five
       lines IDO fills the branch delay slot with the other arm's lui (2/185) */
    if (gKirbyState.unk4 == 1) { D_800E0490[omCurrentObj->objId] = D_80192704_ovl3; } else { D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3; }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    D_800E83E0[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0x17;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        func_80120A28();
        D_800E3750[omCurrentObj->objId] = -0.4f;
        D_800E3C90[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.9806650281f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    }
    switch (gKirbyState.unk4) {
        case 0:
            if (func_800AA888(0x20007) == 0) {
                func_80122F08(0x20007);
            }
            if (gKirbyState.previousAction == 0x1B) {
                func_800AA78C(0x20089, 0x20007, 12.0f);
            }
            func_801230E8(0x20089, 0x2008A, 0);
            break;
        case 1:
            if (func_800AA888(0x20009) == 0) {
                func_80122F08(0x20009);
            }
            if (gKirbyState.previousAction == 0x1B) {
                func_800AA78C(0x20165, 0x20009, 12.0f);
            }
            func_801230E8(0x20165, 0x20166, 0);
            break;
        case 2:
            if (func_800AA888(0x20007) == 0) {
                func_80122F08(0x20007);
            }
            if (gKirbyState.previousAction == 0x1B) {
                func_800AA78C(0x200C1, 0x20007, 12.0f);
            }
            func_801230E8(0x200C1, 0x200C2, 0);
            break;
    }
    curObjSleepForever();
}

struct UnkD6F58 {
    u8 pad0[0x50];
    u32 unk50;
    u32 unk54;
    u32 unk58;
};

extern struct UnkD6F58 D_800D6F58;

/* FACTORY: 264/295 words differ (N = words DIFFERING; this file's other
 * notes use the opposite convention and measure_seeds.py disagrees with all
 * of them). Re-derived from asm/nonmatchings/ovl3/kirby/func_8016F240_ovl3.s,
 * not from the PORT arm. The previous draft sat apart from its pragma, so
 * neither measure_seeds.py nor refound_status.py could see it and it scored
 * as BARE; measured un-guarded in place it was 275/294, i.e. its `12/294`
 * note was the opposite of the truth.
 *
 * Three findings from the listing, each measured:
 *   - The 7-byte predicate list is an AGGREGATE COPY, not seven byte stores.
 *     The ROM's `lw/sw` + `lwr/swr` at offset 6 is IDO copying a 7-byte
 *     object: word 0..3, then bytes 4..6 (LWR at A loads from the word start
 *     through A, right-justified). `Unk80196C74 sp30 = D_80196C6C_ovl3;` --
 *     the same idiom the matched func_8016DD0C_ovl3 above uses -- reproduces
 *     the first 15 words exactly.
 *   - Branch polarity: the ROM tests `func_80151E94_ovl3(&sp30) == 0` and
 *     puts `gKirbyState.unk7 = 0` in the else, which is `bnez $v0` with the
 *     else block laid at the end. The `!= 0` spelling emits `beqz` (1 word).
 *   - objId is re-read, not cached, inside the grounded arm. The ROM's
 *     `D_800E3210[objId] = D_800E3750[objId]` re-loads objId between the two
 *     statements, so IDO cannot forward the 0.0f it just stored; with a
 *     cached local it does, and the `lwc1` disappears. Writing
 *     `omCurrentObj->objId` inline at those three statements was worth 10
 *     words and aligned words 66..160 exactly.
 *
 * Residue, in two parts:
 *   - Word count is 300 vs the ROM's 295. All five are the same shape: IDO
 *     fills each `b .L8016F64C` delay slot from the target block, copying
 *     `lui $a3, %hi(gKirbyState)` into five predecessors where the ROM
 *     materialises &gKirbyState once at the join. No source spelling found
 *     that stops it (tried the tail as if/else vs an early return).
 *   - One-word desync from word 20: the ROM hoists
 *     `lui $t9, %hi(D_800E8920)` above the `beqz $a2` that starts the body,
 *     scheduling it into the load-use gap after `lbu $a2, 0x17($a3)`.
 *
 * Both are scheduling/register-allocation shaped. Queued for the permuter. */
/* FACTORY: 264/295 words differ. */
#ifdef MIPS_TO_C
void func_8016F240_ovl3(GObj *arg0) {
    extern Unk80196C74 D_80196C6C_ovl3;
    extern s32 D_800D6B54;
    Unk80196C74 sp30 = D_80196C6C_ovl3;
    s32 objId;
    u8 held;

    func_80153984_ovl3();
    func_8011CF58();
    if (func_80151E94_ovl3(&sp30) == 0) {
        held = gKirbyState.unk17;
        if ((held == 0) || (gKirbyState.unkB != 2)) {
            if ((held == 0) && (gKirbyController.buttonPressed & 0x8000)) {
                D_800E9560[omCurrentObj->objId] = 2;
            } else {
                objId = omCurrentObj->objId;
                if (D_800E9560[objId] != 0) {
                    D_800E9560[objId] = D_800E9560[objId] - 1;
                }
            }
            objId = omCurrentObj->objId;
            if (D_800E8920[objId] != 0) {
                D_800E3750[objId] = 0.0f;
                D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                if (D_800D6B54 == 0) {
                    play_sound(0x149);
                    held = gKirbyState.unk17;
                }
                if (held != 0) {
                    D_800E9560[omCurrentObj->objId] = 0;
                }
                objId = omCurrentObj->objId;
                if (D_800E9560[objId] != 0) {
                    func_80122B40();
                    set_kirby_action_1(3, 5);
                } else if (D_800E64D0[objId] == 0.0f) {
                    gKirbyState.unk7 = 0;
                    if ((held == 0) && (D_800D6F58.unk54 == 0) &&
                        (gKirbyController.buttonHeld & 0x400) && (gKirbyState.unk4 == 1)) {
                        set_kirby_action_1(0xB, 0x10);
                    } else {
                        set_kirby_action_1(7, 7);
                    }
                } else {
                    gKirbyState.unk44 = 0;
                    if (gKirbyState.unk7 == 0) {
                        func_80122B40();
                        set_kirby_action_1(1, 3);
                    } else {
                        gKirbyState.unk38 = 0.0f;
                        set_kirby_action_1(2, 4);
                    }
                    func_80122FB0(1);
                }
            } else if ((D_800E83E0[objId] & 0xFFFF) == 2) {
                D_800EC2E0[0].as_u32 = 0x80000000;
                gKirbyState.unk7 = 0;
                objId = omCurrentObj->objId;
                if (!(D_800E8AE0[objId] & 6)) {
                    D_800E3210[objId] = 8.0f;
                } else {
                    D_800E3210[objId] = 4.0f;
                }
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3C90[omCurrentObj->objId] = 0.0f;
                set_kirby_action_1(5, 5);
            } else if (func_80179130_ovl3() != 0) {
                gKirbyState.unk7 = 0;
            } else {
                objId = omCurrentObj->objId;
                if (D_800E8AE0[objId] & 6) {
                    D_800E3750[objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 1.0f;
                } else if (gKirbyState.unk4 == 0) {
                    s32 t = D_800E9720[objId];

                    D_800E9720[objId] = t - 1;
                    if (t == 0) {
                        set_kirby_action_1(8, 8);
                    }
                }
            }
        }
    } else {
        gKirbyState.unk7 = 0;
    }
    if (gKirbyState.horizontalCollision == 0) {
        func_8011ED68();
        return;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    objId = omCurrentObj->objId;
    D_800E64D0[objId] = D_800E6690[objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
}
#elif defined(PORT)
/* PORT: the ground/landing action handler (D_80196990_ovl3's slot for
 * action 1), from asm/nonmatchings/ovl3/kirby/func_8016F240_ovl3.s. Runs
 * the transition-predicate list, services the double-tap run counter at
 * D_800E9560, and picks the landing outcome: grounded -> stop/run/crouchjump
 * (with the landing thud sound), water surface -> the swim bob, otherwise the
 * coyote-time countdown at D_800E9720 into the fall action. The tail seeds
 * the walk-speed track cells whenever a horizontal collision is standing.
 *
 * struct UnkD6F58 is declared just above this site (it used to sit further
 * down the file, which is why this arm used to live apart from its pragma).
 * The ROM's 7-byte
 * predicate list D_80196C6C_ovl3 is emitted on PC as two native u32 words
 * (build/pc/data/ovl3_ovl3.data.c), so a struct copy would hand
 * func_80151E94_ovl3 byte-swapped ids; the list is spelled literally
 * instead ({1,5,9,8,7,6,0xF}, the big-endian bytes of 0x01050908
 * 0x07060F00), matching the u8-array callers in ovl19_3.c. */
void func_8016F240_ovl3(GObj *arg0) {
    u8 cmd[7];
    s32 objId;
    u8 held;

    (void) arg0;
    cmd[0] = 1;
    cmd[1] = 5;
    cmd[2] = 9;
    cmd[3] = 8;
    cmd[4] = 7;
    cmd[5] = 6;
    cmd[6] = 0xF;
    func_80153984_ovl3();
    func_8011CF58();
    if (func_80151E94_ovl3(cmd) != 0) {
        gKirbyState.unk7 = 0;
    } else {
        held = gKirbyState.unk17;
        if ((held == 0) || (gKirbyState.unkB != 2)) {
            if ((held == 0) && (gKirbyController.buttonPressed & 0x8000)) {
                D_800E9560[omCurrentObj->objId] = 2;
            } else {
                objId = omCurrentObj->objId;
                if (D_800E9560[objId] != 0) {
                    D_800E9560[objId] = D_800E9560[objId] - 1;
                }
            }
            objId = omCurrentObj->objId;
            if (D_800E8920[objId] != 0) {
                D_800E3750[objId] = 0.0f;
                D_800E3210[objId] = D_800E3750[objId];
                D_800E3C90[objId] = 65535.0f;
                if (D_800D6B54 == 0) {
                    play_sound(0x149);
                    held = gKirbyState.unk17;
                }
                if (held != 0) {
                    D_800E9560[omCurrentObj->objId] = 0;
                }
                objId = omCurrentObj->objId;
                if (D_800E9560[objId] != 0) {
                    func_80122B40();
                    set_kirby_action_1(3, 5);
                } else if (D_800E64D0[objId] == 0.0f) {
                    gKirbyState.unk7 = 0;
                    if ((held == 0) && (D_800D6F58.unk54 == 0) &&
                        (gKirbyController.buttonHeld & 0x400) && (gKirbyState.unk4 == 1)) {
                        set_kirby_action_1(0xB, 0x10);
                    } else {
                        set_kirby_action_1(7, 7);
                    }
                } else {
                    gKirbyState.unk44 = 0;
                    if (gKirbyState.unk7 == 0) {
                        func_80122B40();
                        set_kirby_action_1(1, 3);
                    } else {
                        gKirbyState.unk38 = 0.0f;
                        set_kirby_action_1(2, 4);
                    }
                    func_80122FB0(1);
                }
            } else if ((D_800E83E0[objId] & 0xFFFF) == 2) {
                D_800EC2E0[0].as_u32 = 0x80000000;
                gKirbyState.unk7 = 0;
                objId = omCurrentObj->objId;
                if (!(D_800E8AE0[objId] & 6)) {
                    D_800E3210[objId] = 8.0f;
                } else {
                    D_800E3210[objId] = 4.0f;
                }
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3C90[omCurrentObj->objId] = 0.0f;
                set_kirby_action_1(5, 5);
            } else if (func_80179130_ovl3() != 0) {
                gKirbyState.unk7 = 0;
            } else {
                objId = omCurrentObj->objId;
                if (D_800E8AE0[objId] & 6) {
                    D_800E3750[objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 1.0f;
                } else if (gKirbyState.unk4 == 0) {
                    s32 t = D_800E9720[objId];

                    D_800E9720[objId] = t - 1;
                    if (t == 0) {
                        set_kirby_action_1(8, 8);
                    }
                }
            }
        }
    }
    if (gKirbyState.horizontalCollision == 0) {
        func_8011ED68();
        return;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    objId = omCurrentObj->objId;
    D_800E64D0[objId] = D_800E6690[objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016F240_ovl3.s")
#endif

void func_8016F6DC_ovl3(GObj *arg0) {
    *(s32 *) ((u8 *) &D_8012E7E8 + 8) = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_80122B40();
    switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x200B5, 0x200B6, 1);
            break;
        case 1:
            func_801230E8(0x20171, 0x20172, 1);
            break;
        case 2:
            func_801230E8(0x200CB, 0x200CC, 1);
            break;
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

void func_8016F7C8_ovl3(s32 arg0) {
    Unk80196C74 sp18 = D_80196C74_ovl3;

    func_80153984_ovl3();
    func_80151E94_ovl3(&sp18);
}

#ifdef NON_MATCHING
/* 29/211: instruction-for-instruction exact; the ROM keeps the reloaded
   omCurrentObj pointer in $v0 and the scaled index in $v1, this C swaps the
   pair. Swept: local declared before/after the inner prototypes, block-scoped
   local, and an s32 return on func_8011CF58 (which regressed two matched
   functions). */
void func_8016F80C_ovl3(GObj *arg0) {

    D_800E83E0[omCurrentObj->objId] = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk44 = 0;
    func_801230E8(0x20021, 0x20022, 0);
    while (func_800AF230() == 0) {
        if (gKirbyState.unk44 == 2) {
            goto done;
        }
        ohSleep(1);
    }
    gKirbyState.unk44 = 1;
    func_801230E8(0x20023, 0x20024, 0);
    while (gKirbyState.unk44 != 2) {
        ohSleep(1);
    }
done:
    if (D_800E8920[omCurrentObj->objId] != 0) {
        s32 temp = func_801693C4_ovl3(1);
        if (temp != -1) {
            D_800EC660[temp] = 0;
            D_800EC2E0[temp].as_s32 = 1;
        }
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800BB468(0xB, 0xA);
    play_sound(0x110);
    func_801230E8(0x20025, 0x20026, 0);
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        ohSleep(4);
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E3750[omCurrentObj->objId] = -0.9806650281f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    } else {
        ohSleep(6);
        D_800E3210[omCurrentObj->objId] = 3.0f;
        D_800E3750[omCurrentObj->objId] = -0.25f;
        D_800E3C90[omCurrentObj->objId] = 3.0f;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    gKirbyState.unk44 = 3;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016F80C_ovl3.s")
#endif

typedef struct Unk80196C7C {
    u8 unk0[6];
} Unk80196C7C;

extern Unk80196C7C D_80196C7C_ovl3;
extern u8 D_80190F94_ovl3[];

void func_8016FB58_ovl3(GObj *arg0) {
    Unk80196C7C sp20 = D_80196C7C_ovl3;

    func_80153984_ovl3();
    if (func_80151E94_ovl3(&sp20) == 0) {
        if ((gKirbyState.unk17 == 0) || (gKirbyState.unkB != 2)) {
            if (gKirbyState.unk44 == 1) {
                func_8016854C_ovl3((s32) D_80190F94_ovl3, (s32) arg0->data.dobj->firstChild, 1.0f);
            }
            if (gKirbyState.unk44 == 3) {
                if (D_800E3210[omCurrentObj->objId] <= 0.0f) {
                    set_kirby_action_1(6, 6);
                }
            } else {
                if ((D_800E8920[omCurrentObj->objId] != 0) || ((D_800E83E0[omCurrentObj->objId] & 0xFFFF) == 2)) {
                    gKirbyState.unk44 = 2;
                }
                if (D_800E8AE0[omCurrentObj->objId] & 6) {
                    func_8011CF58();
                    D_800E3750[omCurrentObj->objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 4.0f;
                }
            }
        }
    } else {
        gKirbyState.unk7 = 0;
    }
    if (gKirbyState.horizontalCollision == 0) {
        func_8011ED68();
    } else {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
}

#ifdef NON_MATCHING
/* 137/155: shape and every call/loop are right, but the ROM keeps the
   gKirbyState base in CALLER-saved registers as two short ranges ($v0 for the
   unk30/unkA pair, $a3 for the unk15C/abilityInUse pair) and spends its one
   callee-saved register ($s0) on the hoisted 0x20105 argument and then on
   &gKirbyController; this C hands $s0 to the gKirbyState base instead and
   everything downstream renumbers. Swept: a temp for the abilityInUse read
   (no change). The two-group split is not reachable from any spelling of the
   field accesses tried -- D_8012E7DC/D_8012E80C-style separate symbols cannot
   apply here because the ROM's two groups each SHARE one base register. */
extern u8 D_80190448_ovl3[];

void func_8016FD88_ovl3(GObj *arg0) {
    extern s32 D_800D6F10;

    gKirbyState.unk30 = 0;
    gKirbyState.unkA = 0;
    D_800E9720[omCurrentObj->objId] = 5;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 8;
    func_80120A28();
    gKirbyState.unk15C = (u32) D_80190448_ovl3;
    D_800E98E0[omCurrentObj->objId] = gKirbyState.abilityInUse;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    if (gKirbyState.abilityInUse == 0x12) {
        func_801693C4_ovl3(9);
        func_801230E8(0x20109, 0x2010A, 1);
        func_801230E8(0x2010B, 0x2010C, 0);
        D_800D6F10 = 1;
        while (gKirbyController.buttonHeld & 0x400) {
            ohSleep(1);
        }
        D_800D6F10 = 0;
        D_800E98E0[omCurrentObj->objId] = 0;
        D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 + 1;
        func_801230E8(0x2010D, 0x2010E, 1);
    } else {
        func_800AA78C(0x20105, 0x20007, 3.0f);
        func_801230E8(0x20105, 0x20106, 0);
        D_800D6F10 = 1;
        while (gKirbyController.buttonHeld & 0x400) {
            ohSleep(1);
        }
        D_800D6F10 = 0;
        D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 + 1;
        func_801230E8(0x20107, 0x20108, 1);
    }
    *(s32 *) ((u8 *) &D_8012E7E8 + 8) = *(s32 *) ((u8 *) &D_8012E7E8 + 8) + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016FD88_ovl3.s")
#endif

typedef struct Unk80196C84 {
    u8 unk0[3];
} Unk80196C84;

extern Unk80196C84 D_80196C84_ovl3;

void func_8016FFF8_ovl3(GObj *arg0) {
    Unk80196C84 sp24 = D_80196C84_ovl3;
    extern s32 D_800D6F10;

    func_80153984_ovl3();
    if (func_80151E94_ovl3(&sp24) != 0) {
        D_800D6F10 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
        return;
    }
    if (D_800E8920[omCurrentObj->objId] == 0) {
        if (D_800E98E0[omCurrentObj->objId] == 0x12) {
            func_8011CF58();
            func_801217B8();
            return;
        }
        D_800D6F10 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
        set_kirby_action_1(6, 6);
        return;
    }
    if ((gKirbyState.unk30 != 0) || (gKirbyState.unk17 != 0)) {
        D_800D6F10 = 0;
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
        }
        set_kirby_action_1(0, 1);
        return;
    }
    if ((D_800D6F58.unk54 == 0) && (D_800E9720[omCurrentObj->objId] == 0) && (func_80122460() != 0)
        && (gKirbyController.buttonHeld & 0x400) && (gKirbyState.unk4 == 0)) {
        D_800D6F10 = 0;
        gKirbyState.unkA = 0;
        *(u16 *) &D_8012BCA0 = *(u16 *) &D_8012BCA0 & 7;
        set_kirby_action_1(0xA, 0xD);
        return;
    }
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        if ((gKirbyState.unk17 == 0) && (gKirbyController.buttonPressed & 0x4000)) {
            gKirbyState.unkA = 1;
        }
    } else if ((gKirbyController.buttonHeld & 0x400) && (gKirbyController.buttonPressed & 0x8000)) {
        gKirbyState.unkA = 2;
    }
    if (!(gKirbyState.isTurning & 1)) {
        if (gKirbyState.unkA == 2) {
            D_800D6F10 = 0;
            gKirbyState.unkA = 0;
            set_kirby_action_1(0x19, 0xF);
        }
    }
    if (D_800E9720[omCurrentObj->objId] != 0) {
        D_800E9720[omCurrentObj->objId] = D_800E9720[omCurrentObj->objId] - 1;
    }
}

void func_801702F0_ovl3(GObj *arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 9;
    if (gKirbyState.unk68 != 3) { gKirbyState.unk68 = 1; } else { gKirbyState.unk68 = 3; }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    if (gKirbyState.ceilingCollisionNext != 0) {
        play_sound(0xFF);
        if ((gKirbyState.unk4 == 1) || (gKirbyState.previousAction == 9)) {
            D_800E3210[omCurrentObj->objId] = 5.0f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3C90[omCurrentObj->objId] = 5.0f;
        } else {
            D_800E3210[omCurrentObj->objId] = 3.6f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3C90[omCurrentObj->objId] = 3.6f;
        }
        if (-1.0f == D_800E6A10[omCurrentObj->objId]) {
            if (gKirbyState.unk4 == 1) {
                func_801230E8(0x20177, 0x20178, 1);
            } else {
                func_801230E8(0x200F7, 0x200F8, 1);
            }
        } else {
            if (gKirbyState.unk4 == 1) {
                func_801230E8(0x20179, 0x2017A, 1);
            } else {
                func_801230E8(0x200FB, 0x200FC, 1);
            }
        }
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 0.0f;
    } else {
        play_sound(0x101);
        D_800E3210[omCurrentObj->objId] = -5.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 5.0f;
        if (-1.0f == D_800E6A10[omCurrentObj->objId]) {
            func_801230E8(0x200F9, 0x200FA, 1);
        } else {
            func_801230E8(0x200FD, 0x200FE, 1);
        }
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

void func_80170638_ovl3(GObj *arg0) {
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk68 != 3) {
            gKirbyState.unk68 = 0;
        } else {
            gKirbyState.unk68 = 3;
        }
        if (gKirbyState.ceilingCollisionNext != 0) {
            func_80153FC8_ovl3();
            func_80152348_ovl3(10.0f);
        } else {
            D_800E8920[omCurrentObj->objId] = 0;
        }
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3210[omCurrentObj->objId] = 0;
            set_kirby_action_1(0, 1);
        } else {
            set_kirby_action_1(6, 6);
        }
    } else if (func_80153FC8_ovl3() != 0) {
        D_800E6690[omCurrentObj->objId] = 0;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    } else {
        func_8011ED68();
    }
}

void func_80170794_ovl3(GObj *arg0) {
    *(s32 *) ((u8 *) &D_8012E7E8 + 8) = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0xA;
    func_80120A28();
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    if (func_800AA888(0x20009) == 0) {
        func_80122F08(0x20009);
    } else {
        func_800AFA54(D_800DFA10[omCurrentObj->objId]);
    }
    func_801230E8(0x20167, 0x20168, 0);
    D_800DF310[omCurrentObj->objId] = func_801708A0_ovl3;
    func_800AF27C();
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

#ifdef NON_MATCHING
/* FACTORY: 3/97, shared FP-constant REGISTER floor -- re-confirmed
   2026-08-23. Instruction-for-instruction exact; the shared 0.0f constant
   lands in $f14 where the ROM uses $f0 for both the `arg2 == 0.0f` and
   `temp != 0.0f` compares (which the ROM also spells in OPPOSITE
   c.eq.s operand order between the two uses: $f12,$f0 then $f0,$f12).
   Swept, all reproduce the identical 3/97 or worse: `||` vs two early
   returns, nesting instead of returns, a named `zero` local, swapping the
   two guards, `0.0f != temp` (no change, still 3/97), `arg2 == 0` int
   (worse, 7/97 -- forces an int/float conversion path), `arg2 == 0.0`
   double (much worse, 94/99 -- forks a whole cvt.d.s/c.eq.d compare chain),
   `temp != 0.0` double (much worse, 89/99, same class), and dropping the
   change_kirby_hp prototype (77 diffs). The integer `0` in `temp < 0` IS
   load-bearing -- it forks the second zero the ROM materialises
   separately. Good permuter seed for the $f0/$f14 register floor. */
extern f32 gKirbyHp;

void func_801708A0_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    f32 temp;
    s32 flags;

    if (arg1 != 0) {
        return;
    }
    if (arg2 == 0.0f) {
        return;
    }
    temp = *(f32 *) &gKirbyState.unk84;
    if (temp != 0.0f) {
        if (temp < 0) {
            if (1.0f <= gKirbyHp + temp) {
                change_kirby_hp(temp);
            } else {
                change_kirby_hp(-(gKirbyHp - 1.0f));
            }
            play_sound(0xDA);
        } else {
            change_kirby_hp(temp);
        }
        *(f32 *) &gKirbyState.unk84 = 0.0f;
    }
    flags = gKirbyState.unk8C;
    if (flags & 0xFFFF) {
        if (flags & 1) {
            play_sound(0xCA);
            func_80121F14();
        } else if (flags & 2) {
            play_sound(0xCB);
        }
    } else if (gKirbyState.unk88 != 0) {
        play_sound(1);
        change_kirby_lives(gKirbyState.unk88);
        gKirbyState.unk88 = 0;
    } else if (gKirbyState.unk8 != 0) {
        play_sound(0xCA);
    }
    func_8011E190();
    play_sound(0xE8);
    gKirbyState.unk4 = 0;
    gKirbyState.unk8 = 0;
    gKirbyState.numberInhaled = 0;
    gKirbyState.unkD = 7;
    func_800BB468(0xB, 0xA);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801708A0_ovl3.s")
#endif

void func_80170A24_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        if (func_800AA888(0x20007) == 0) {
            func_80122F08(0x20007);
        }
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
    }
}

extern f32 *D_80192720_ovl3[];
extern u8 D_801903E0_ovl3[];
/* D_801973AC_ovl3 now emitted by this TU */
void func_80170AC4_ovl3(s32 arg0) {
    f32 val; f32 step;
    void func_800AECC0(f32); void func_800AED20(f32);
    switch (gKirbyState.unk44) {
    case 0:
        gKirbyState.unkA = 0;
        gKirbyState.unk4C = 0;
        func_8011CF58();
        D_800DDFD0[omCurrentObj->objId] = 0xB;
        D_800E0490[omCurrentObj->objId] = D_80192720_ovl3;
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        func_800AFA54(D_800DFA10[omCurrentObj->objId]);
        func_801230E8(0x20093, 0x20094, 1);
        if ((s32) gKirbyState.floatTimer < 0x3C) {
            gKirbyState.unk44 = 2;
            goto case2;
        }
        gKirbyState.unk44 = 1;
    case 1:
        play_sound(0xE0);
        gKirbyState.unk2C = 3;
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E3750[omCurrentObj->objId] = -1.0f;
        D_800E3C90[omCurrentObj->objId] = 8.0f;
        func_801230E8(0x20095, 0x20096, 1);
        D_800E3750[omCurrentObj->objId] = -0.125f;
        D_800E3C90[omCurrentObj->objId] = 2.0f;
        func_801230E8(0x20097, 0x20098, 0);
        break;
    case 2:
    case2:
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = -0.125f;
        D_800E3C90[omCurrentObj->objId] = 2.0f;
        func_801230E8(0x20099, 0x2009A, 0);
        val = 2.0; /* double: load-bearing, forks IDO's shared 0x40000000 */
        step = 0.06666667f;
        while (1) {
            func_800AECC0(val);
            func_800AED20(val);
            val = val + step;
            ohSleep(1);
        }
    }
    curObjSleepForever();
}
#ifdef MIPS_TO_C
/* FACTORY: 31/347, whole-function callee-saved permutation (same floor class documented across this cluster). Declares func_8011E0E8 as ANSI void(void) rather than leaving it implicit: the PORT arm's comment claims a local prototype would clash with later int()-folded calls, but the already-matched func_80173AF4_ovl3 further down this TU declares it void(void) explicitly, and letting this earlier function's call go implicit-int instead conflicts with THAT declaration and breaks the TU. Queued for the permuter. */
/* PORT: the hover (puffed-up flight) per-tick action handler, from
 * asm/nonmatchings/ovl3/kirby/func_80170D88_ovl3.s (via m2c). Runs the
 * shared tick prologue, clears the ground flag while ascending, feeds the
 * {1}-predicate transition list, and bails to action 6 on scripted control.
 * Otherwise it burns down gKirbyState.floatTimer (spawning the strain
 * effect func_800A8100(2,1,0xB) below 0x5B ticks and switching to the
 * tired flap process func_8016C510_ovl3 at 0x3C), deflates into action
 * pair 0x1A/0x19 on B press / timer out / landing / water, handles the
 * ceiling bonk (func_80122460 -> action 0xA/0xD) and the flap re-trigger
 * on A, and finally applies the air drift accel (0.225f free / 0.175f
 * capped at 2.5f when steering) or kills the velocity on a wall hit.
 *
 * Port notes: the N64 seeds the predicate list by copying the u16
 * D_80196C88_ovl3 (big-endian bytes {1, 0xF}) to the stack; PC spells the
 * list as local bytes like the func_8016E15C_ovl3 arm. m2c's
 * `func_8011E0E8(D_800E3750)` is a leftover argument register -- the
 * callee is void(void) in plylib. `D_800DFBD0[...]->unk24` is really
 * entry [9] of the track's DObj pointer list (0x24 / 4-byte N64
 * pointers), and func_800A8100 goes through a pointer cast so that DObj*
 * keeps its 64-bit width past this file's (s32,s32,s32,s32) declaration. */
void func_80170D88_ovl3(s32 arg0) {
    extern s32 D_800D6B54;
    u8 list[2] = { 1, 0xF };
    s32 id;

    func_80153984_ovl3();
    id = omCurrentObj->objId;
    if (D_800E3210[id] >= 0.0f) {
        D_800E8920[id] = 0;
    }
    func_80151E94_ovl3(list);
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        func_8011E0E8();
        return;
    }
    if ((gKirbyState.unk17 == 0) || ((gKirbyState.unkB != 1) && (gKirbyState.unkB != 2))) {
        if (gKirbyState.floatTimer != 0) {
            if (gKirbyState.unk44 == 1) {
                if (gKirbyState.unk4C == 0) {
                    if ((s32) gKirbyState.floatTimer < 0x5B) {
                        gKirbyState.unk4C = ((s32 (*)(s32, s32, s32, struct DObj *)) func_800A8100)(
                            2, 1, 0xB, D_800DFBD0[omCurrentObj->objId][9]);
                    }
                } else if (gKirbyState.floatTimer == 0x3C) {
                    gKirbyState.unk44 = 2;
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                             func_8016C510_ovl3);
                }
            }
            gKirbyState.floatTimer -= 1;
        }
        if (gKirbyState.isTurning & 1) {
            if (gKirbyController.buttonPressed & 0x4000) {
                gKirbyState.unkA = 1;
            }
        } else {
            id = omCurrentObj->objId;
            if ((gKirbyController.buttonPressed & 0x4000) || (gKirbyState.unk17 != 0)
                || (gKirbyState.floatTimer == 0) || (gKirbyState.unkA == 1)
                || (D_800E8920[id] != 0) || (D_800E8AE0[id] & 6)) {
                if (D_800E8920[id] == 0) {
                    D_800E3210[id] = 0.0f;
                    D_800E3750[id] = 0.0f;
                    D_800E3C90[id] = 16.0f;
                } else {
                    D_800E3750[id] = 0.0f;
                    D_800E3210[id] = D_800E3750[id];
                    D_800E3C90[id] = 65535.0f;
                }
                func_8011E0E8();
                gKirbyState.unkA = 0;
                set_kirby_action_1(0x1A, 0x19);
                return;
            }
        }
        if (gKirbyState.unk44 == 1) {
            if ((gKirbyState.ceilingCollisionNext != 0) && (func_80122460() != 0)) {
                id = omCurrentObj->objId;
                D_800E6690[id] = 0.0f;
                D_800E64D0[id] = D_800E6690[id];
                D_800E6850[id] = 65535.0f;
                D_800E3750[id] = 0.0f;
                D_800E3210[id] = D_800E3750[id];
                D_800E3C90[id] = 65535.0f;
                func_8011E0E8();
                set_kirby_action_1(0xA, 0xD);
            } else if (gKirbyState.unk2C == 0) {
                if ((gKirbyState.ceilingCollisionNext == 0)
                    && (gKirbyController.buttonPressed & 0x8000)) {
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                             func_8016C510_ovl3);
                }
            } else {
                gKirbyState.unk2C -= 1;
            }
        }
        if (gKirbyState.unk17 == 0) {
            id = omCurrentObj->objId;
            if (gKirbyState.horizontalCollision == 0) {
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    D_800E6690[id] = D_800E6A10[id] * 0.225f;
                    D_800E6850[id] = 0.0f;
                } else {
                    D_800E6690[id] = D_800E6A10[id] * 0.175f;
                    D_800E6850[id] = 2.5f;
                }
            } else {
                D_800E6690[id] = 0.0f;
                D_800E64D0[id] = D_800E6690[id];
                D_800E6850[id] = 65535.0f;
            }
        }
    }
}
#elif defined(PORT)
/* PORT: the hover (puffed-up flight) per-tick action handler, from
 * asm/nonmatchings/ovl3/kirby/func_80170D88_ovl3.s (via m2c). Runs the
 * shared tick prologue, clears the ground flag while ascending, feeds the
 * {1}-predicate transition list, and bails to action 6 on scripted control.
 * Otherwise it burns down gKirbyState.floatTimer (spawning the strain
 * effect func_800A8100(2,1,0xB) below 0x5B ticks and switching to the
 * tired flap process func_8016C510_ovl3 at 0x3C), deflates into action
 * pair 0x1A/0x19 on B press / timer out / landing / water, handles the
 * ceiling bonk (func_80122460 -> action 0xA/0xD) and the flap re-trigger
 * on A, and finally applies the air drift accel (0.225f free / 0.175f
 * capped at 2.5f when steering) or kills the velocity on a wall hit.
 *
 * Port notes: the N64 seeds the predicate list by copying the u16
 * D_80196C88_ovl3 (big-endian bytes {1, 0xF}) to the stack; PC spells the
 * list as local bytes like the func_8016E15C_ovl3 arm. m2c's
 * `func_8011E0E8(D_800E3750)` is a leftover argument register -- the
 * callee is void(void) in plylib. `D_800DFBD0[...]->unk24` is really
 * entry [9] of the track's DObj pointer list (0x24 / 4-byte N64
 * pointers), and func_800A8100 goes through a pointer cast so that DObj*
 * keeps its 64-bit width past this file's (s32,s32,s32,s32) declaration. */
void func_80170D88_ovl3(s32 arg0) {
    extern s32 D_800D6B54;
    /* func_8011E0E8 stays implicitly declared (void(void) in plylib):
     * later PC-visible functions in this TU call it without a prototype,
     * and a local prototype here would clash with those int() folds. */
    u8 list[2] = { 1, 0xF };
    s32 id;

    func_80153984_ovl3();
    id = omCurrentObj->objId;
    if (D_800E3210[id] >= 0.0f) {
        D_800E8920[id] = 0;
    }
    func_80151E94_ovl3(list);
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        func_8011E0E8();
        return;
    }
    if ((gKirbyState.unk17 == 0) || ((gKirbyState.unkB != 1) && (gKirbyState.unkB != 2))) {
        if (gKirbyState.floatTimer != 0) {
            if (gKirbyState.unk44 == 1) {
                if (gKirbyState.unk4C == 0) {
                    if ((s32) gKirbyState.floatTimer < 0x5B) {
                        gKirbyState.unk4C = ((s32 (*)(s32, s32, s32, struct DObj *)) func_800A8100)(
                            2, 1, 0xB, D_800DFBD0[omCurrentObj->objId][9]);
                    }
                } else if (gKirbyState.floatTimer == 0x3C) {
                    gKirbyState.unk44 = 2;
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                             func_8016C510_ovl3);
                }
            }
            gKirbyState.floatTimer -= 1;
        }
        if (gKirbyState.isTurning & 1) {
            if (gKirbyController.buttonPressed & 0x4000) {
                gKirbyState.unkA = 1;
            }
        } else {
            id = omCurrentObj->objId;
            if ((gKirbyController.buttonPressed & 0x4000) || (gKirbyState.unk17 != 0)
                || (gKirbyState.floatTimer == 0) || (gKirbyState.unkA == 1)
                || (D_800E8920[id] != 0) || (D_800E8AE0[id] & 6)) {
                if (D_800E8920[id] == 0) {
                    D_800E3210[id] = 0.0f;
                    D_800E3750[id] = 0.0f;
                    D_800E3C90[id] = 16.0f;
                } else {
                    D_800E3750[id] = 0.0f;
                    D_800E3210[id] = D_800E3750[id];
                    D_800E3C90[id] = 65535.0f;
                }
                func_8011E0E8();
                gKirbyState.unkA = 0;
                set_kirby_action_1(0x1A, 0x19);
                return;
            }
        }
        if (gKirbyState.unk44 == 1) {
            if ((gKirbyState.ceilingCollisionNext != 0) && (func_80122460() != 0)) {
                id = omCurrentObj->objId;
                D_800E6690[id] = 0.0f;
                D_800E64D0[id] = D_800E6690[id];
                D_800E6850[id] = 65535.0f;
                D_800E3750[id] = 0.0f;
                D_800E3210[id] = D_800E3750[id];
                D_800E3C90[id] = 65535.0f;
                func_8011E0E8();
                set_kirby_action_1(0xA, 0xD);
            } else if (gKirbyState.unk2C == 0) {
                if ((gKirbyState.ceilingCollisionNext == 0)
                    && (gKirbyController.buttonPressed & 0x8000)) {
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                             func_8016C510_ovl3);
                }
            } else {
                gKirbyState.unk2C -= 1;
            }
        }
        if (gKirbyState.unk17 == 0) {
            id = omCurrentObj->objId;
            if (gKirbyState.horizontalCollision == 0) {
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    D_800E6690[id] = D_800E6A10[id] * 0.225f;
                    D_800E6850[id] = 0.0f;
                } else {
                    D_800E6690[id] = D_800E6A10[id] * 0.175f;
                    D_800E6850[id] = 2.5f;
                }
            } else {
                D_800E6690[id] = 0.0f;
                D_800E64D0[id] = D_800E6690[id];
                D_800E6850[id] = 65535.0f;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80170D88_ovl3.s")
#endif

#ifdef NON_MATCHING
/* 45/318: every instruction and both switch shapes are right; the residue is a
   two-register swap plus its knock-on. The ROM gives $a1 to the D_800E6690 base
   and $a2 to the gKirbyState base; this C gives $a1 to gKirbyState and $a2 to
   D_800E6690, and correspondingly $f0/$f2 are swapped between the shared 0.0f
   and the 65535.0f literal (which pushes 6.0f into $f12 in the case 1/5 arms).
   Measured: spelling BOTH gKirbyState.floatTimer and the case 4 store as
   gKirbyState fields costs 59; using D_8012E7DC/D_8012E80C for those two (the
   spelling src/ovl2/plylib.c uses for the same words) takes it to 45 by cutting
   the gKirbyState base to four uses. Also swept: moving `gKirbyState.unk4C = 0`
   one statement later (88), two later (94), before D_800DDFD0 (101), and an
   integer 0 for D_800E6690 (266 -- the two 0.0f stores must share one mtc1). */
void func_801712F8_ovl3(GObj *arg0) {
    extern s16 D_80198838_ovl3;
    extern u32 D_8012E7DC;
    extern s32 D_8012E80C;

    if (*(s32 *) ((u8 *) &D_8012E7E8 + 8) == 0) {
        D_8012E7DC = 0xF0;
        D_80198838_ovl3 = 3;
        func_8011CF58();
        D_800DDFD0[omCurrentObj->objId] = 0xC;
        gKirbyState.unk4C = 0;
        D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
        D_800E98E0[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (gKirbyState.previousAction != 0x1E) {
            play_sound(0x103);
        }
        D_800E9720[omCurrentObj->objId] = 0;
        gKirbyState.unk30 = gKirbyState.unk30 + 1;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 1:
            D_800E3210[omCurrentObj->objId] = 0.0f;
            D_800E3C90[omCurrentObj->objId] = 0.0f;
            func_800AA78C(0x200B1, 0x20007, 6.0f);
            func_801230E8(0x200B1, 0x200B2, 0);
            break;
        case 2:
            D_800E8920[omCurrentObj->objId] = 0;
            if (func_800AA934(0x200AD) != 0) {
                func_800AA78C(0x200B1, 0x20007, 3.0f);
            }
            func_800AA78C(0x200AB, 0x20007, 3.0f);
            func_801230E8(0x200AB, 0x200AC, 0);
            break;
        case 3:
            if (func_800AA934(0x200AB) != 0) {
                func_800AA78C(0x200B1, 0x20007, 3.0f);
            }
            func_800AA78C(0x200AD, 0x20007, 3.0f);
            func_801230E8(0x200AD, 0x200AE, 0);
            break;
        case 4:
            func_800AA78C(0x200AF, 0x20007, 3.0f);
            func_801230E8(0x200AF, 0x200B0, 0);
            func_8011DC04(0x100);
            D_8012E80C = func_800A8100(5, 1, 0x2B, (s32) D_800DFBD0[omCurrentObj->objId][2]);
            break;
        case 5:
            D_800E8920[omCurrentObj->objId] = 0;
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.5f;
                D_800E6850[omCurrentObj->objId] = 1.5f;
                D_800E3210[omCurrentObj->objId] = 6.0f;
                D_800E3750[omCurrentObj->objId] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 6.0f;
            } else {
                D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
                D_800E6850[omCurrentObj->objId] = 3.0f;
                D_800E3210[omCurrentObj->objId] = 12.0f;
                D_800E3750[omCurrentObj->objId] = -0.9806650281f;
                D_800E3C90[omCurrentObj->objId] = 17.0f;
            }
            play_sound(0xEA);
            func_801230E8(0x200B3, 0x200B4, 1);
            D_800E98E0[omCurrentObj->objId] = 6;
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801712F8_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 4/387, whole-function callee-saved permutation (same floor class documented across this cluster). Adds an ANSI void(void) prototype for func_8011E0E8 (see func_80170D88_ovl3's note -- the already-matched func_80173AF4_ovl3 further down this TU declares it void(void), so leaving it implicit here conflicts). Queued for the permuter. */
/* PORT: the slide-attack (action 0xC) per-tick handler, from
 * asm/nonmatchings/ovl3/kirby/func_801717F0_ovl3.s (via m2c). While
 * uncontrolled it runs the plain tick prologue in phase 5 (recovery,
 * predicate list {5,9}) and the attack prologue func_80153B98_ovl3
 * otherwise (list {2,9}); when a predicate fires it tears the slide down
 * (hitbox off, physics reset), snaps the vertical track on B, and either
 * launches the backward recoil hop (-2/-6 by water, forward drift
 * 0.2/0.125, clearing isTurning bit 4) or freezes in place setting it;
 * coming from action 0xA it arms the 8-tick grace word unk15. With no
 * transition it re-triggers the flap process on the jump edge
 * (func_8011F690) or keeps the hitbox/physics cleared outside phase 0xA.
 * Under scripted control (unk17) it bails to action 6 when unkB clears,
 * else freezes the entity and drives the scripted rise/fall speeds
 * (+/-4, water-halved, -10/-5 in phase 4) with anim speed 3/1.5, and
 * when the shared countdown at D_8012E7E8+4 has already hit zero posts
 * D_800BE4F8 = 2 and drops the hitbox.
 *
 * Port notes: the N64 seeds the two predicate lists by copying the words
 * D_80196C8C_ovl3/D_80196C90_ovl3 (big-endian bytes {2,9,0xF} / {5,9,0xF})
 * to the stack; PC spells them as local byte arrays. func_80153B98_ovl3
 * takes no arguments -- m2c's `&gKirbyState` is a leftover $a2. m2c also
 * mis-folds the countdown: the asm tests the PRE-decrement word (sltiu
 * against the value loaded before the -1 store), and its double-ABSF
 * ladder is a plain |speed|. func_8011E0E8 stays implicitly declared like
 * the file's other PC-visible callers. */
void func_801717F0_ovl3(s32 arg0) {
    extern u8 D_8012E7C5;
    extern s32 D_800BE4F8;
    u8 list2[4] = { 2, 9, 0xF, 0 };
    u8 list5[4] = { 5, 9, 0xF, 0 };
    s32 id;
    s32 water;
    s32 pre;
    f32 spd;
    f32 anim;

    if (gKirbyState.unk17 == 0) {
        if (D_800E98E0[omCurrentObj->objId] != 5) {
            func_80153B98_ovl3();
        } else {
            func_80153984_ovl3();
        }
        if (D_800E98E0[omCurrentObj->objId] == 5) {
            id = func_80151E94_ovl3(list5);
        } else {
            id = func_80151E94_ovl3(list2);
        }
        if (id != 0) {
            func_8011CF58();
            func_8011DC5C();
            func_8011E234();
            func_8011E0E8();
            if (gKirbyController.buttonPressed & 0x4000) {
                id = omCurrentObj->objId;
                D_800E3750[id] = 0.0f;
                D_800E3210[id] = D_800E3750[id];
                D_800E3C90[id] = 65535.0f;
            }
            if (func_80121194() != 0) {
                id = omCurrentObj->objId;
                if (D_800E8AE0[id] & 6) {
                    D_800E64D0[id] = D_800E6A10[id] * -2.0f;
                    D_800E6690[id] = D_800E6A10[id] * 0.2f;
                    D_800E6850[id] = 2.0f;
                } else {
                    D_800E64D0[id] = D_800E6A10[id] * -6.0f;
                    D_800E6690[id] = D_800E6A10[id] * 0.125f;
                    D_800E6850[id] = 6.0f;
                }
                gKirbyState.isTurning &= ~4;
            } else {
                id = omCurrentObj->objId;
                D_800E6690[id] = 0.0f;
                D_800E64D0[id] = D_800E6690[id];
                D_800E6850[id] = 65535.0f;
                gKirbyState.isTurning |= 4;
            }
            if (gKirbyState.previousAction == 0xA) {
                gKirbyState.unk15 = 8;
            }
        } else if (func_8011F690() != 0) {
            func_8011DC5C();
            func_8011E0E8();
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                     func_8016C510_ovl3);
        } else if (D_8012E7C5 != 0xA) {
            func_8011E0E8();
            func_8011DC5C();
        }
    } else {
        if (gKirbyState.unkB == 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        id = omCurrentObj->objId;
        water = D_800E8AE0[id] & 6;
        if (gKirbyState.unkB == 1) {
            spd = (water == 0) ? 4.0f : 2.0f;
        } else if (D_800E98E0[id] != 4) {
            spd = (water == 0) ? -4.0f : -2.0f;
        } else {
            spd = (water == 0) ? -10.0f : -5.0f;
        }
        anim = (water == 0) ? 3.0f : 1.5f;
        D_800E6690[id] = 0.0f;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[id] = 65535.0f;
        func_800AECC0(anim);
        func_800AED20(anim);
        D_800E3210[id] = spd;
        D_800E3C90[id] = ABSF(spd);
        pre = *(s32 *) ((u8 *) &D_8012E7E8 + 4);
        *(s32 *) ((u8 *) &D_8012E7E8 + 4) = pre - 1;
        if (pre == 0) {
            D_800BE4F8 = 2;
            func_8011DC5C();
            func_8011E0E8();
        }
    }
}
#elif defined(PORT)
/* PORT: the slide-attack (action 0xC) per-tick handler, from
 * asm/nonmatchings/ovl3/kirby/func_801717F0_ovl3.s (via m2c). While
 * uncontrolled it runs the plain tick prologue in phase 5 (recovery,
 * predicate list {5,9}) and the attack prologue func_80153B98_ovl3
 * otherwise (list {2,9}); when a predicate fires it tears the slide down
 * (hitbox off, physics reset), snaps the vertical track on B, and either
 * launches the backward recoil hop (-2/-6 by water, forward drift
 * 0.2/0.125, clearing isTurning bit 4) or freezes in place setting it;
 * coming from action 0xA it arms the 8-tick grace word unk15. With no
 * transition it re-triggers the flap process on the jump edge
 * (func_8011F690) or keeps the hitbox/physics cleared outside phase 0xA.
 * Under scripted control (unk17) it bails to action 6 when unkB clears,
 * else freezes the entity and drives the scripted rise/fall speeds
 * (+/-4, water-halved, -10/-5 in phase 4) with anim speed 3/1.5, and
 * when the shared countdown at D_8012E7E8+4 has already hit zero posts
 * D_800BE4F8 = 2 and drops the hitbox.
 *
 * Port notes: the N64 seeds the two predicate lists by copying the words
 * D_80196C8C_ovl3/D_80196C90_ovl3 (big-endian bytes {2,9,0xF} / {5,9,0xF})
 * to the stack; PC spells them as local byte arrays. func_80153B98_ovl3
 * takes no arguments -- m2c's `&gKirbyState` is a leftover $a2. m2c also
 * mis-folds the countdown: the asm tests the PRE-decrement word (sltiu
 * against the value loaded before the -1 store), and its double-ABSF
 * ladder is a plain |speed|. func_8011E0E8 stays implicitly declared like
 * the file's other PC-visible callers. */
void func_801717F0_ovl3(s32 arg0) {
    extern u8 D_8012E7C5;
    extern s32 D_800BE4F8;
    u8 list2[4] = { 2, 9, 0xF, 0 };
    u8 list5[4] = { 5, 9, 0xF, 0 };
    s32 id;
    s32 water;
    s32 pre;
    f32 spd;
    f32 anim;

    if (gKirbyState.unk17 == 0) {
        if (D_800E98E0[omCurrentObj->objId] != 5) {
            func_80153B98_ovl3();
        } else {
            func_80153984_ovl3();
        }
        if (D_800E98E0[omCurrentObj->objId] == 5) {
            id = func_80151E94_ovl3(list5);
        } else {
            id = func_80151E94_ovl3(list2);
        }
        if (id != 0) {
            func_8011CF58();
            func_8011DC5C();
            func_8011E234();
            func_8011E0E8();
            if (gKirbyController.buttonPressed & 0x4000) {
                id = omCurrentObj->objId;
                D_800E3750[id] = 0.0f;
                D_800E3210[id] = D_800E3750[id];
                D_800E3C90[id] = 65535.0f;
            }
            if (func_80121194() != 0) {
                id = omCurrentObj->objId;
                if (D_800E8AE0[id] & 6) {
                    D_800E64D0[id] = D_800E6A10[id] * -2.0f;
                    D_800E6690[id] = D_800E6A10[id] * 0.2f;
                    D_800E6850[id] = 2.0f;
                } else {
                    D_800E64D0[id] = D_800E6A10[id] * -6.0f;
                    D_800E6690[id] = D_800E6A10[id] * 0.125f;
                    D_800E6850[id] = 6.0f;
                }
                gKirbyState.isTurning &= ~4;
            } else {
                id = omCurrentObj->objId;
                D_800E6690[id] = 0.0f;
                D_800E64D0[id] = D_800E6690[id];
                D_800E6850[id] = 65535.0f;
                gKirbyState.isTurning |= 4;
            }
            if (gKirbyState.previousAction == 0xA) {
                gKirbyState.unk15 = 8;
            }
        } else if (func_8011F690() != 0) {
            func_8011DC5C();
            func_8011E0E8();
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                     func_8016C510_ovl3);
        } else if (D_8012E7C5 != 0xA) {
            func_8011E0E8();
            func_8011DC5C();
        }
    } else {
        if (gKirbyState.unkB == 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        id = omCurrentObj->objId;
        water = D_800E8AE0[id] & 6;
        if (gKirbyState.unkB == 1) {
            spd = (water == 0) ? 4.0f : 2.0f;
        } else if (D_800E98E0[id] != 4) {
            spd = (water == 0) ? -4.0f : -2.0f;
        } else {
            spd = (water == 0) ? -10.0f : -5.0f;
        }
        anim = (water == 0) ? 3.0f : 1.5f;
        D_800E6690[id] = 0.0f;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[id] = 65535.0f;
        func_800AECC0(anim);
        func_800AED20(anim);
        D_800E3210[id] = spd;
        D_800E3C90[id] = ABSF(spd);
        pre = *(s32 *) ((u8 *) &D_8012E7E8 + 4);
        *(s32 *) ((u8 *) &D_8012E7E8 + 4) = pre - 1;
        if (pre == 0) {
            D_800BE4F8 = 2;
            func_8011DC5C();
            func_8011E0E8();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801717F0_ovl3.s")
#endif

#ifdef NON_MATCHING
/* FACTORY: 6/269, instruction-SCHEDULING floor -- re-confirmed 2026-08-23,
   identical 6/269. Every instruction is present and the whole prologue,
   switch and the other five arms are exact. In the case 0/1 arm the ROM
   schedules `li $t3,1` and `lui $at,%hi(D_800E9AA0)` into the block BEFORE
   the `bnez`, filling the delay slot with `ori $a0`; this C leaves both
   inside the taken block and the delay slot takes `lui $at`. Swept: as_s32
   vs as_u32, `== 0` vs an inverted `!= 0`/empty-then, and the body
   collapsed onto one line -- all 6/269. The integer `0` (not `0.0f`) in
   the two arm stores and in the angle.v.y store IS load-bearing: it forks
   the zero the ROM materialises per store, and `0.0f` there CSEs into one
   register and costs 210 diffs. Both instructions being hoisted (li $t3,1
   and lui $at) have no side effects, so this is pure IDO delay-slot/
   scheduling choice, not reachable by restructuring the guarded store
   (which would change semantics on the false path). Good permuter seed. */
void func_80171E00_ovl3(GObj *arg0) {
    extern s16 D_80198838_ovl3;

    if (gKirbyState.unk30 == 0) {
        gKirbyState.floatTimer = 0xF0;
        D_80198838_ovl3 = 3;
        func_8011CF58();
        D_800DDFD0[omCurrentObj->objId] = 0xD;
        gKirbyState.unk3C = 0;
        gKirbyState.unk4C = 0;
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        D_800E98E0[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32;
        arg0->data.dobj->firstChild->angle.v.y = 0;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (gKirbyState.previousAction != 0x1E) {
            play_sound(0x103);
        }
        D_800E9720[omCurrentObj->objId] = 0;
        gKirbyState.unk30 = gKirbyState.unk30 + 1;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
        case 1:
            D_800E3210[omCurrentObj->objId] = 0;
            D_800E3C90[omCurrentObj->objId] = 0;
            func_800AA78C(0x200DB, 0x20007, 6.0f);
            if (D_800E98E0[omCurrentObj->objId] == 0) { D_800E9AA0[omCurrentObj->objId].as_s32 = 1; D_800E98E0[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32; }
            func_801230E8(0x200DB, 0x200DC, 0);
            break;
        case 2:
            gKirbyState.unk7 = 0;
            D_800E8920[omCurrentObj->objId] = 0;
            if (func_800AA934(0x200D7) != 0) {
                func_800AA78C(0x200DB, 0x20007, 3.0f);
            }
            func_800AA78C(0x200D5, 0x20007, 3.0f);
            func_801230E8(0x200D5, 0x200D6, 0);
            break;
        case 3:
            gKirbyState.unk7 = 0;
            if (func_800AA934(0x200D5) != 0) {
                func_800AA78C(0x200DB, 0x20007, 3.0f);
            }
            func_800AA78C(0x200D7, 0x20007, 3.0f);
            func_801230E8(0x200D7, 0x200D8, 0);
            break;
        case 4:
            gKirbyState.unk7 = 0;
            func_800AA78C(0x200D9, 0x20007, 3.0f);
            func_801230E8(0x200D9, 0x200DA, 0);
            func_8011DC04(0x100);
            gKirbyState.unk4C = func_800A8100(5, 1, 0x29, (s32) D_800DFBD0[omCurrentObj->objId][1]);
            break;
        case 5:
            func_8011E234();
            func_800AA78C(0x2009B, 0x20007, 3.0f);
            D_800E98E0[omCurrentObj->objId] = 6;
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80171E00_ovl3.s")
#endif


#ifdef MIPS_TO_C
/* FACTORY: 7/360, whole-function callee-saved permutation (same floor class documented across this cluster). Adds an ANSI void(void) prototype for func_8011E0E8 (the PORT arm leaves it implicit; this earlier-in-file call needs it explicit so it doesn't conflict with the already-matched func_80173AF4_ovl3's void(void) declaration further down the TU, same issue as func_80170D88_ovl3). Queued for the permuter. */
/* PORT: the pole/door slide (action 0xD, coroutine func_80171E00_ovl3)
 * per-tick handler, from asm/nonmatchings/ovl3/kirby/func_80172234_ovl3.s
 * (via m2c). Twin of func_801717F0_ovl3: in phases 5/6 while grounded it
 * runs the plain prologue, otherwise the attack prologue
 * func_80153B98_ovl3; past phase 0 (and unless unk3C latches the pose) it
 * feeds predicate list {9,2} and on a transition tears the move down,
 * doing the backward recoil hop only when the new action is 5, arming the
 * 8-tick unk15 grace when leaving action 0xB. Without a transition it
 * re-triggers the flap process on func_8011FEF8's jump edge, or clears
 * pose/hitbox/vertical state while not in action 0xB. Under scripted
 * control it drives the rise/fall speeds (+4 / -4 / -10 in phase 4,
 * halved in water along with the anim speed 3), and when the unk2C
 * countdown has already expired posts D_800BE4F8 = 2 and drops the
 * hitbox; unkB == 0 here is the ROM's hard "Pole Door Error!" hang.
 *
 * Port notes: the predicate word D_80196C94_ovl3 is big-endian bytes
 * {9,2,0xF}, spelled as a local list; func_80153B98_ovl3 takes no
 * arguments (m2c's &gKirbyState is a leftover $a2), utilPrintf gets only
 * the string; the unk2C countdown tests the PRE-decrement value like the
 * sibling, and the double-ABSF ladder is |speed|. */
void func_80172234_ovl3(s32 arg0) {
    extern s32 D_800BE4F8;
    u8 list[4] = { 9, 2, 0xF, 0 };
    s32 id;
    s32 phase;
    s32 pre;
    f32 spd;
    f32 anim;

    if (gKirbyState.unk17 == 0) {
        id = omCurrentObj->objId;
        phase = D_800E98E0[id];
        if (((phase == 6) || (phase == 5)) && (D_800E8920[id] != 0)) {
            func_80153984_ovl3();
        } else {
            func_80153B98_ovl3();
        }
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            if ((gKirbyState.unk3C == 0) && (func_80151E94_ovl3(list) != 0)) {
                func_8011CF58();
                func_8011E234();
                func_8011DC5C();
                func_8011E0E8();
                if (gKirbyController.buttonPressed & 0x4000) {
                    id = omCurrentObj->objId;
                    D_800E3750[id] = 0.0f;
                    D_800E3210[id] = D_800E3750[id];
                    D_800E3C90[id] = 65535.0f;
                }
                if (gKirbyState.action == 5) {
                    if (func_80121194() != 0) {
                        gKirbyState.isTurning &= ~4;
                        id = omCurrentObj->objId;
                        if (D_800E8AE0[id] & 6) {
                            D_800E64D0[id] = D_800E6A10[id] * -2.0f;
                            D_800E6690[id] = D_800E6A10[id] * 0.2f;
                            D_800E6850[id] = 2.0f;
                        } else {
                            D_800E64D0[id] = D_800E6A10[id] * -6.0f;
                            D_800E6690[id] = D_800E6A10[id] * 0.125f;
                            D_800E6850[id] = 6.0f;
                        }
                    } else {
                        id = omCurrentObj->objId;
                        D_800E6690[id] = 0.0f;
                        D_800E64D0[id] = D_800E6690[id];
                        D_800E6850[id] = 65535.0f;
                        gKirbyState.isTurning |= 4;
                    }
                } else {
                    gKirbyState.isTurning &= ~4;
                }
                if (gKirbyState.previousAction == 0xB) {
                    gKirbyState.unk15 = 8;
                }
            } else if (func_8011FEF8() != 0) {
                func_8011DC5C();
                func_8011E0E8();
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                         func_8016C510_ovl3);
            } else if (gKirbyState.action != 0xB) {
                func_8011E234();
                func_8011DC5C();
                func_8011E0E8();
            }
        }
    } else {
        if (gKirbyState.unkB == 0) {
            utilPrintf("Pole Door Error![kirby.cc]\n");
            for (;;) {
            }
        }
        id = omCurrentObj->objId;
        if (gKirbyState.unkB == 1) {
            spd = 4.0f;
        } else if (D_800E98E0[id] != 4) {
            spd = -4.0f;
        } else {
            spd = -10.0f;
        }
        anim = 3.0f;
        if (D_800E8AE0[id] & 6) {
            spd *= 0.5f;
            anim = 3.0f * 0.5f;
        }
        func_800AECC0(anim);
        func_800AED20(anim);
        D_800E3210[id] = spd;
        D_800E3C90[id] = ABSF(spd);
        pre = gKirbyState.unk2C;
        gKirbyState.unk2C = pre - 1;
        if (pre == 0) {
            D_800BE4F8 = 2;
            func_8011DC5C();
            func_8011E0E8();
        }
    }
}
#elif defined(PORT)
/* PORT: the pole/door slide (action 0xD, coroutine func_80171E00_ovl3)
 * per-tick handler, from asm/nonmatchings/ovl3/kirby/func_80172234_ovl3.s
 * (via m2c). Twin of func_801717F0_ovl3: in phases 5/6 while grounded it
 * runs the plain prologue, otherwise the attack prologue
 * func_80153B98_ovl3; past phase 0 (and unless unk3C latches the pose) it
 * feeds predicate list {9,2} and on a transition tears the move down,
 * doing the backward recoil hop only when the new action is 5, arming the
 * 8-tick unk15 grace when leaving action 0xB. Without a transition it
 * re-triggers the flap process on func_8011FEF8's jump edge, or clears
 * pose/hitbox/vertical state while not in action 0xB. Under scripted
 * control it drives the rise/fall speeds (+4 / -4 / -10 in phase 4,
 * halved in water along with the anim speed 3), and when the unk2C
 * countdown has already expired posts D_800BE4F8 = 2 and drops the
 * hitbox; unkB == 0 here is the ROM's hard "Pole Door Error!" hang.
 *
 * Port notes: the predicate word D_80196C94_ovl3 is big-endian bytes
 * {9,2,0xF}, spelled as a local list; func_80153B98_ovl3 takes no
 * arguments (m2c's &gKirbyState is a leftover $a2), utilPrintf gets only
 * the string; the unk2C countdown tests the PRE-decrement value like the
 * sibling, and the double-ABSF ladder is |speed|. */
void func_80172234_ovl3(s32 arg0) {
    extern s32 D_800BE4F8;
    u8 list[4] = { 9, 2, 0xF, 0 };
    s32 id;
    s32 phase;
    s32 pre;
    f32 spd;
    f32 anim;

    if (gKirbyState.unk17 == 0) {
        id = omCurrentObj->objId;
        phase = D_800E98E0[id];
        if (((phase == 6) || (phase == 5)) && (D_800E8920[id] != 0)) {
            func_80153984_ovl3();
        } else {
            func_80153B98_ovl3();
        }
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            if ((gKirbyState.unk3C == 0) && (func_80151E94_ovl3(list) != 0)) {
                func_8011CF58();
                func_8011E234();
                func_8011DC5C();
                func_8011E0E8();
                if (gKirbyController.buttonPressed & 0x4000) {
                    id = omCurrentObj->objId;
                    D_800E3750[id] = 0.0f;
                    D_800E3210[id] = D_800E3750[id];
                    D_800E3C90[id] = 65535.0f;
                }
                if (gKirbyState.action == 5) {
                    if (func_80121194() != 0) {
                        gKirbyState.isTurning &= ~4;
                        id = omCurrentObj->objId;
                        if (D_800E8AE0[id] & 6) {
                            D_800E64D0[id] = D_800E6A10[id] * -2.0f;
                            D_800E6690[id] = D_800E6A10[id] * 0.2f;
                            D_800E6850[id] = 2.0f;
                        } else {
                            D_800E64D0[id] = D_800E6A10[id] * -6.0f;
                            D_800E6690[id] = D_800E6A10[id] * 0.125f;
                            D_800E6850[id] = 6.0f;
                        }
                    } else {
                        id = omCurrentObj->objId;
                        D_800E6690[id] = 0.0f;
                        D_800E64D0[id] = D_800E6690[id];
                        D_800E6850[id] = 65535.0f;
                        gKirbyState.isTurning |= 4;
                    }
                } else {
                    gKirbyState.isTurning &= ~4;
                }
                if (gKirbyState.previousAction == 0xB) {
                    gKirbyState.unk15 = 8;
                }
            } else if (func_8011FEF8() != 0) {
                func_8011DC5C();
                func_8011E0E8();
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                         func_8016C510_ovl3);
            } else if (gKirbyState.action != 0xB) {
                func_8011E234();
                func_8011DC5C();
                func_8011E0E8();
            }
        }
    } else {
        if (gKirbyState.unkB == 0) {
            utilPrintf("Pole Door Error![kirby.cc]\n");
            for (;;) {
            }
        }
        id = omCurrentObj->objId;
        if (gKirbyState.unkB == 1) {
            spd = 4.0f;
        } else if (D_800E98E0[id] != 4) {
            spd = -4.0f;
        } else {
            spd = -10.0f;
        }
        anim = 3.0f;
        if (D_800E8AE0[id] & 6) {
            spd *= 0.5f;
            anim = 3.0f * 0.5f;
        }
        func_800AECC0(anim);
        func_800AED20(anim);
        D_800E3210[id] = spd;
        D_800E3C90[id] = ABSF(spd);
        pre = gKirbyState.unk2C;
        gKirbyState.unk2C = pre - 1;
        if (pre == 0) {
            D_800BE4F8 = 2;
            func_8011DC5C();
            func_8011E0E8();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80172234_ovl3.s")
#endif

/* D_8019741C_ovl3 now emitted by this TU */
/* D_80197420_ovl3 now emitted by this TU */
/* D_80197424_ovl3 now emitted by this TU */

void func_801727D8_ovl3(s32 arg0) {
    *(s32 *) ((u8 *) &D_8012E7E8 + 8) = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0xE;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        if (ABSF(D_800E64D0[omCurrentObj->objId]) < 1.0f) {
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 1.0f;
        }
        D_800E3210[omCurrentObj->objId] = 6.0f;
        D_800E3750[omCurrentObj->objId] = -0.4f;
        D_800E3C90[omCurrentObj->objId] = 6.0f;
    } else {
        if (ABSF(D_800E64D0[omCurrentObj->objId]) < 3.0f) {
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
            D_800E6850[omCurrentObj->objId] = 3.0f;
        }
        D_800E3210[omCurrentObj->objId] = 9.0f;
        D_800E3750[omCurrentObj->objId] = -0.980665f;
        D_800E3C90[omCurrentObj->objId] = 17.0f;
    }
    play_sound(0xEA);
    func_801230E8(0x200B3, 0x200B4, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

void func_80172A3C_ovl3(s32 arg0) {
    s32 sp1C = D_80196C98_ovl3;

    func_80153984_ovl3();
    if (func_80151E94_ovl3(&sp1C) == 0) {
        if (!(gKirbyState.isTurning & 1)) {
            if (func_80121194() != 0) {
                D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
            }
        }
    }
    if (gKirbyState.unk30 != 0) {
        set_kirby_action_1(6, 6);
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 13/479, whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* PORT: the swallow action coroutine (track action 0x16), from
 * asm/nonmatchings/ovl3/kirby/func_80172AE4_ovl3.s (via m2c, re-derived
 * against the raw asm). Clears the whole inhale bookkeeping block, plays
 * the gulp animation pair 0x20148/0x20149, then runs a small three-state
 * turn machine (state word gKirbyState.unk44): state 1 holds the neutral
 * swallow loop 0x2014A/0x2014B and hops to 2 or 3 when the entity starts
 * moving with or against its facing (D_800E64D0 velocity vs D_800E6A10
 * facing), states 2/3 hold the two turning loops 0x20156/0x20157 and
 * 0x20154/0x20155 and hop back when the motion stops or flips. Each state
 * ohSleep(1)-polls until plylib's inhale counters agree (numberInhaled !=
 * 0 && == numberInhaling), then the coroutine finishes the swallow: kicks
 * the mouth generator (func_800A8100 type 3 in water/splash contexts per
 * D_800E8AE0's bit 6, else type 2, anchored on the track's DObj list entry
 * [2]), computes the resulting copy ability from the two inhaled kinds via
 * func_8011E1E8, and for a double swallow spawns the mix-roulette object
 * through ovl7 (func_801BC580_ovl7 for plain abilities < 8, else
 * func_801BC27C_ovl7) hooked to func_801A9618_ovl7.
 *
 * Port notes: m2c's `&D_8019273C_ovl3` scalar garble is really the
 * two-slot pointer table (PC data emits it as a native void*[]), matching
 * the D_80192704_ovl3 store at the end; func_800AA5C4's third argument is
 * the raw float 0x40C00000 = 6.0f (blend frames); `arg0->unk3C->unk10` is
 * arg0->data.dobj->firstChild (LP64-safe field names); func_800A8100 is
 * called through a pointer cast so the DObj argument keeps its full
 * 64-bit width past this file's (s32, s32, s32, s32) declaration; the
 * swc1 that seeds gKirbyState.unk84 stores the bits of the just-cleared
 * D_80198820_ovl3 float, i.e. 0. */
void func_80172AE4_ovl3(GObj *arg0) {
    extern f32 *D_8019273C_ovl3[];
    extern f32 D_80198820_ovl3;
    /* ohSleep stays implicitly declared: later PC-visible functions in this
     * TU call it without a prototype, and gnu90 folds those to int(). */
    s32 objId;
    s32 slot;
    f32 vel;
    f32 facing;

    gKirbyState.unk30 = 0;
    gKirbyState.unk44 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x16;
    gKirbyState.numberInhaled = 0;
    D_80198820_ovl3 = 0.0f;
    gKirbyState.currentInhale = 0;
    gKirbyState.firstInhale = 0;
    gKirbyState.secondInhale = 0;
    gKirbyState.unk8C = 0;
    gKirbyState.unk8 = 0;
    gKirbyState.unkD = -1;
    gKirbyState.isInhaling = 0;
    gKirbyState.isInhalingBlock = 0;
    gKirbyState.unk84 = 0; /* float bits of the just-cleared D_80198820_ovl3 */
    gKirbyState.numberInhaling = gKirbyState.numberInhaled;
    D_800E8060[omCurrentObj->objId] = -2;
    func_80120A28();
    func_80122F08(0x20008);
    func_801693C4_ovl3(0);
    D_800E0490[omCurrentObj->objId] = D_8019273C_ovl3;
    gKirbyState.unk154 = 2;
    func_801230E8(0x20148, 0x20149, 1);
    gKirbyState.isInhaling += 1;
    gKirbyState.unk44 = 1;
    for (;;) {
        if (gKirbyState.unk44 == 1) {
            func_800AA5C4(0x2014A, 0x20008, 6.0f);
            while (func_800AA368(arg0->data.dobj->firstChild) == 0) {
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
            func_801230E8(0x2014A, 0x2014B, 0);
            for (;;) {
                objId = omCurrentObj->objId;
                if (D_800E8920[objId] != 0) {
                    vel = D_800E64D0[objId];
                    if (vel != 0.0f) {
                        facing = D_800E6A10[objId];
                        if ((facing == 1.0f && vel > 0.0f) || (facing == -1.0f && vel < 0.0f)) {
                            gKirbyState.unk44 = 2;
                        } else {
                            gKirbyState.unk44 = 3;
                        }
                        break;
                    }
                }
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
        } else if (gKirbyState.unk44 == 2) {
            func_800AA5C4(0x20156, 0x20008, 6.0f);
            while (func_800AA368(arg0->data.dobj->firstChild) == 0) {
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
            func_801230E8(0x20156, 0x20157, 0);
            for (;;) {
                objId = omCurrentObj->objId;
                if (D_800E8920[objId] == 0 || (vel = D_800E64D0[objId]) == 0.0f) {
                    gKirbyState.unk44 = 1;
                    break;
                }
                if (D_800E6850[objId] != 0.0f) {
                    facing = D_800E6A10[objId];
                    if ((facing == 1.0f && vel < 0.0f) || (facing == -1.0f && vel > 0.0f)) {
                        gKirbyState.unk44 = 3;
                        break;
                    }
                }
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
        } else if (gKirbyState.unk44 == 3) {
            func_800AA5C4(0x20154, 0x20008, 6.0f);
            while (func_800AA368(arg0->data.dobj->firstChild) == 0) {
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
            func_801230E8(0x20154, 0x20155, 0);
            for (;;) {
                objId = omCurrentObj->objId;
                if (D_800E8920[objId] == 0 || (vel = D_800E64D0[objId]) == 0.0f) {
                    gKirbyState.unk44 = 1;
                    break;
                }
                if (D_800E6850[objId] != 0.0f) {
                    facing = D_800E6A10[objId];
                    if ((facing == 1.0f && vel > 0.0f) || (facing == -1.0f && vel < 0.0f)) {
                        gKirbyState.unk44 = 2;
                        break;
                    }
                }
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
        } else {
            goto done;
        }
    }
done:
    objId = omCurrentObj->objId;
    if (D_800E8AE0[objId] & 6) {
        ((void (*)(s32, s32, s32, struct DObj *)) func_800A8100)(1, 1, 3, D_800DFBD0[objId][2]);
    } else {
        ((void (*)(s32, s32, s32, struct DObj *)) func_800A8100)(1, 1, 2, D_800DFBD0[objId][2]);
    }
    func_8011CF58();
    gKirbyState.unk4 = 1;
    gKirbyState.currentInhale = func_8011E1E8(gKirbyState.secondInhale, gKirbyState.firstInhale);
    if (gKirbyState.numberInhaled >= 2) {
        if ((s32) gKirbyState.currentInhale < 8) {
            slot = func_801BC580_ovl7((s32) gKirbyState.currentInhale);
        } else {
            slot = func_801BC27C_ovl7((s32) gKirbyState.currentInhale, 0);
        }
        if (slot != -1) {
            D_800E8220[slot] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[slot], func_801A9618_ovl7);
        }
    }
    play_sound(0xE5);
    objId = omCurrentObj->objId;
    if (D_800E8920[objId] != 0) {
        D_800E6690[objId] = 0.0f;
        D_800E64D0[objId] = D_800E6690[objId];
        D_800E6850[objId] = 65535.0f;
    }
    func_80122F08(0x20009);
    gKirbyState.unk154 = 2;
    if (gKirbyState.unk8 == 0) {
        func_801230E8(0x20163, 0x20164, 1);
    }
    D_800E0490[omCurrentObj->objId] = D_80192704_ovl3;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the swallow action coroutine (track action 0x16), from
 * asm/nonmatchings/ovl3/kirby/func_80172AE4_ovl3.s (via m2c, re-derived
 * against the raw asm). Clears the whole inhale bookkeeping block, plays
 * the gulp animation pair 0x20148/0x20149, then runs a small three-state
 * turn machine (state word gKirbyState.unk44): state 1 holds the neutral
 * swallow loop 0x2014A/0x2014B and hops to 2 or 3 when the entity starts
 * moving with or against its facing (D_800E64D0 velocity vs D_800E6A10
 * facing), states 2/3 hold the two turning loops 0x20156/0x20157 and
 * 0x20154/0x20155 and hop back when the motion stops or flips. Each state
 * ohSleep(1)-polls until plylib's inhale counters agree (numberInhaled !=
 * 0 && == numberInhaling), then the coroutine finishes the swallow: kicks
 * the mouth generator (func_800A8100 type 3 in water/splash contexts per
 * D_800E8AE0's bit 6, else type 2, anchored on the track's DObj list entry
 * [2]), computes the resulting copy ability from the two inhaled kinds via
 * func_8011E1E8, and for a double swallow spawns the mix-roulette object
 * through ovl7 (func_801BC580_ovl7 for plain abilities < 8, else
 * func_801BC27C_ovl7) hooked to func_801A9618_ovl7.
 *
 * Port notes: m2c's `&D_8019273C_ovl3` scalar garble is really the
 * two-slot pointer table (PC data emits it as a native void*[]), matching
 * the D_80192704_ovl3 store at the end; func_800AA5C4's third argument is
 * the raw float 0x40C00000 = 6.0f (blend frames); `arg0->unk3C->unk10` is
 * arg0->data.dobj->firstChild (LP64-safe field names); func_800A8100 is
 * called through a pointer cast so the DObj argument keeps its full
 * 64-bit width past this file's (s32, s32, s32, s32) declaration; the
 * swc1 that seeds gKirbyState.unk84 stores the bits of the just-cleared
 * D_80198820_ovl3 float, i.e. 0. */
void func_80172AE4_ovl3(GObj *arg0) {
    extern f32 *D_8019273C_ovl3[];
    extern f32 D_80198820_ovl3;
    /* ohSleep stays implicitly declared: later PC-visible functions in this
     * TU call it without a prototype, and gnu90 folds those to int(). */
    s32 objId;
    s32 slot;
    f32 vel;
    f32 facing;

    gKirbyState.unk30 = 0;
    gKirbyState.unk44 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x16;
    gKirbyState.numberInhaled = 0;
    D_80198820_ovl3 = 0.0f;
    gKirbyState.currentInhale = 0;
    gKirbyState.firstInhale = 0;
    gKirbyState.secondInhale = 0;
    gKirbyState.unk8C = 0;
    gKirbyState.unk8 = 0;
    gKirbyState.unkD = -1;
    gKirbyState.isInhaling = 0;
    gKirbyState.isInhalingBlock = 0;
    gKirbyState.unk84 = 0; /* float bits of the just-cleared D_80198820_ovl3 */
    gKirbyState.numberInhaling = gKirbyState.numberInhaled;
    D_800E8060[omCurrentObj->objId] = -2;
    func_80120A28();
    func_80122F08(0x20008);
    func_801693C4_ovl3(0);
    D_800E0490[omCurrentObj->objId] = D_8019273C_ovl3;
    gKirbyState.unk154 = 2;
    func_801230E8(0x20148, 0x20149, 1);
    gKirbyState.isInhaling += 1;
    gKirbyState.unk44 = 1;
    for (;;) {
        if (gKirbyState.unk44 == 1) {
            func_800AA5C4(0x2014A, 0x20008, 6.0f);
            while (func_800AA368(arg0->data.dobj->firstChild) == 0) {
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
            func_801230E8(0x2014A, 0x2014B, 0);
            for (;;) {
                objId = omCurrentObj->objId;
                if (D_800E8920[objId] != 0) {
                    vel = D_800E64D0[objId];
                    if (vel != 0.0f) {
                        facing = D_800E6A10[objId];
                        if ((facing == 1.0f && vel > 0.0f) || (facing == -1.0f && vel < 0.0f)) {
                            gKirbyState.unk44 = 2;
                        } else {
                            gKirbyState.unk44 = 3;
                        }
                        break;
                    }
                }
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
        } else if (gKirbyState.unk44 == 2) {
            func_800AA5C4(0x20156, 0x20008, 6.0f);
            while (func_800AA368(arg0->data.dobj->firstChild) == 0) {
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
            func_801230E8(0x20156, 0x20157, 0);
            for (;;) {
                objId = omCurrentObj->objId;
                if (D_800E8920[objId] == 0 || (vel = D_800E64D0[objId]) == 0.0f) {
                    gKirbyState.unk44 = 1;
                    break;
                }
                if (D_800E6850[objId] != 0.0f) {
                    facing = D_800E6A10[objId];
                    if ((facing == 1.0f && vel < 0.0f) || (facing == -1.0f && vel > 0.0f)) {
                        gKirbyState.unk44 = 3;
                        break;
                    }
                }
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
        } else if (gKirbyState.unk44 == 3) {
            func_800AA5C4(0x20154, 0x20008, 6.0f);
            while (func_800AA368(arg0->data.dobj->firstChild) == 0) {
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
            func_801230E8(0x20154, 0x20155, 0);
            for (;;) {
                objId = omCurrentObj->objId;
                if (D_800E8920[objId] == 0 || (vel = D_800E64D0[objId]) == 0.0f) {
                    gKirbyState.unk44 = 1;
                    break;
                }
                if (D_800E6850[objId] != 0.0f) {
                    facing = D_800E6A10[objId];
                    if ((facing == 1.0f && vel > 0.0f) || (facing == -1.0f && vel < 0.0f)) {
                        gKirbyState.unk44 = 2;
                        break;
                    }
                }
                if (gKirbyState.numberInhaled != 0
                    && gKirbyState.numberInhaled == gKirbyState.numberInhaling) {
                    goto done;
                }
                ohSleep(1);
            }
        } else {
            goto done;
        }
    }
done:
    objId = omCurrentObj->objId;
    if (D_800E8AE0[objId] & 6) {
        ((void (*)(s32, s32, s32, struct DObj *)) func_800A8100)(1, 1, 3, D_800DFBD0[objId][2]);
    } else {
        ((void (*)(s32, s32, s32, struct DObj *)) func_800A8100)(1, 1, 2, D_800DFBD0[objId][2]);
    }
    func_8011CF58();
    gKirbyState.unk4 = 1;
    gKirbyState.currentInhale = func_8011E1E8(gKirbyState.secondInhale, gKirbyState.firstInhale);
    if (gKirbyState.numberInhaled >= 2) {
        if ((s32) gKirbyState.currentInhale < 8) {
            slot = func_801BC580_ovl7((s32) gKirbyState.currentInhale);
        } else {
            slot = func_801BC27C_ovl7((s32) gKirbyState.currentInhale, 0);
        }
        if (slot != -1) {
            D_800E8220[slot] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[slot], func_801A9618_ovl7);
        }
    }
    play_sound(0xE5);
    objId = omCurrentObj->objId;
    if (D_800E8920[objId] != 0) {
        D_800E6690[objId] = 0.0f;
        D_800E64D0[objId] = D_800E6690[objId];
        D_800E6850[objId] = 65535.0f;
    }
    func_80122F08(0x20009);
    gKirbyState.unk154 = 2;
    if (gKirbyState.unk8 == 0) {
        func_801230E8(0x20163, 0x20164, 1);
    }
    D_800E0490[omCurrentObj->objId] = D_80192704_ovl3;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80172AE4_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 24/278, whole-function callee-saved permutation (same floor
 * class documented in ovl3_1.c/plyshot.c -- correct instruction count
 * and control flow, near-total register/local-slot naming mismatch).
 * Queued for the permuter. */
/* PORT: the inhale-hold (action 0x18) per-tick handler, from
 * asm/nonmatchings/ovl3/kirby/func_80173260_ovl3.s (via m2c). Mirrors the
 * mouth DObj's pitch from the shared D_80198820_ovl3 word every tick,
 * clamps upward velocity on a ceiling hit, and decides when the inhale
 * ends: immediately under scripted control (also parking the hit timer
 * and D_80198838_ovl3 = 3), or -- while holding something (unk4 == 1,
 * unk8 == 0) -- when a jump/deflate/attack/duck input reroutes the action
 * (anything but staying in 0x18 clears the inhale flags and returns), or
 * when unk30 fires, or when the suction goes idle with B released. On
 * the end path it swaps the mouth sound bank by D_80196D48_ovl3[unk4],
 * clears the inhale flags and dispatches the follow-up action (carry
 * 0xB/0x10, or idle/walk/run by ground state and stick); otherwise it
 * keeps gravity applied and scales the anim speed for water and for an
 * active grounded suction.
 *
 * Port notes: m2c's `sp18->unk30` is D_800DFBD0[objId][8]->angle.v.x
 * (N64 DObj offset 0x30) on the entry [8] of the track's DObj pointer
 * list (0x20 / 4-byte N64 pointers); `*(&D_80196D48_ovl3 + unk4 * 4)` is
 * the u32 table D_80196D48_ovl3[unk4]. */
void func_80173260_ovl3(s32 arg0) {
    extern u32 D_80196D48_ovl3[];
    extern f32 D_80198820_ovl3;
    extern s16 D_80198838_ovl3;
    struct DObj *mouth;
    s32 done = 0;
    s32 id;
    s32 onGround;

    mouth = D_800DFBD0[omCurrentObj->objId][8];
    func_80153984_ovl3();
    mouth->angle.v.x = D_80198820_ovl3;
    if ((func_801217B8() == 0) && (gKirbyState.ceilingCollisionNext != 0)) {
        id = omCurrentObj->objId;
        if (D_800E3210[id] > 0.0f) {
            D_800E3210[id] = 0.0f;
        }
    }
    if (gKirbyState.unk17 != 0) {
        gKirbyState.isInhaling = 0;
        done = 1;
        D_800E8060[omCurrentObj->objId] = -1U;
        D_80198838_ovl3 = 3;
    } else {
        if ((gKirbyState.unk4 == 1) && (gKirbyState.unk8 == 0)) {
            onGround = D_800E8920[omCurrentObj->objId];
            if ((onGround != 0) && !(gKirbyController.buttonHeld & 0x400)
                && (gKirbyController.buttonPressed & 0x8000)) {
                set_kirby_action_1(3, 5);
            } else if (gKirbyController.buttonPressed & 0x4000) {
                set_kirby_action_1(0x1A, 0x19);
            } else if (gKirbyController.buttonHeld & 0x3F) {
                gKirbyState.unk7 = 0;
                set_kirby_action_1(0x11, 0x11);
            } else if ((onGround != 0) && (gKirbyController.buttonHeld & 0x400)) {
                set_kirby_action_1(0xB, 0x10);
            }
            if (gKirbyState.action != 0x18) {
                gKirbyState.isInhalingBlock = 0;
                gKirbyState.isInhaling = 0;
                return;
            }
        }
        if (gKirbyState.unk30 != 0) {
            done = 1;
        } else if ((gKirbyState.isInhaling != 0) && (gKirbyState.numberInhaling == 0)
                   && !(gKirbyController.buttonHeld & 0x4000)) {
            if (gKirbyState.unk8 != 0) {
                gKirbyState.unk8 = 0;
            }
            done = 1;
        }
    }
    if (done != 0) {
        func_80122F08(D_80196D48_ovl3[gKirbyState.unk4]);
        gKirbyState.unk154 = 2;
        gKirbyState.isInhalingBlock = 0;
        gKirbyState.isInhaling = 0;
        if (gKirbyState.unk8 == 0) {
            if (D_800E8920[omCurrentObj->objId] == 0) {
                set_kirby_action_1(6, 6);
            } else if (!(gKirbyController.buttonHeld & 0x300)) {
                set_kirby_action_1(0, 1);
            } else {
                set_kirby_action_1(1, 3);
            }
        } else {
            set_kirby_action_1(0xB, 0x10);
        }
        return;
    }
    func_8011ED68();
    id = omCurrentObj->objId;
    if ((D_800E8920[id] != 0) && (gKirbyState.unk4 != 1) && (gKirbyState.isInhaling != 0)) {
        if (D_800E8AE0[id] & 6) {
            func_800AECC0(0.5f);
            func_800AED20(0.5f);
        } else {
            func_800AECC0(1.25f);
            func_800AED20(1.25f);
        }
    } else if (D_800E8AE0[id] & 6) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    }
}
#elif defined(PORT)
/* PORT: the inhale-hold (action 0x18) per-tick handler, from
 * asm/nonmatchings/ovl3/kirby/func_80173260_ovl3.s (via m2c). Mirrors the
 * mouth DObj's pitch from the shared D_80198820_ovl3 word every tick,
 * clamps upward velocity on a ceiling hit, and decides when the inhale
 * ends: immediately under scripted control (also parking the hit timer
 * and D_80198838_ovl3 = 3), or -- while holding something (unk4 == 1,
 * unk8 == 0) -- when a jump/deflate/attack/duck input reroutes the action
 * (anything but staying in 0x18 clears the inhale flags and returns), or
 * when unk30 fires, or when the suction goes idle with B released. On
 * the end path it swaps the mouth sound bank by D_80196D48_ovl3[unk4],
 * clears the inhale flags and dispatches the follow-up action (carry
 * 0xB/0x10, or idle/walk/run by ground state and stick); otherwise it
 * keeps gravity applied and scales the anim speed for water and for an
 * active grounded suction.
 *
 * Port notes: m2c's `sp18->unk30` is D_800DFBD0[objId][8]->angle.v.x
 * (N64 DObj offset 0x30) on the entry [8] of the track's DObj pointer
 * list (0x20 / 4-byte N64 pointers); `*(&D_80196D48_ovl3 + unk4 * 4)` is
 * the u32 table D_80196D48_ovl3[unk4]. */
void func_80173260_ovl3(s32 arg0) {
    extern u32 D_80196D48_ovl3[];
    extern f32 D_80198820_ovl3;
    extern s16 D_80198838_ovl3;
    struct DObj *mouth;
    s32 done = 0;
    s32 id;
    s32 onGround;

    mouth = D_800DFBD0[omCurrentObj->objId][8];
    func_80153984_ovl3();
    mouth->angle.v.x = D_80198820_ovl3;
    if ((func_801217B8() == 0) && (gKirbyState.ceilingCollisionNext != 0)) {
        id = omCurrentObj->objId;
        if (D_800E3210[id] > 0.0f) {
            D_800E3210[id] = 0.0f;
        }
    }
    if (gKirbyState.unk17 != 0) {
        gKirbyState.isInhaling = 0;
        done = 1;
        D_800E8060[omCurrentObj->objId] = -1U;
        D_80198838_ovl3 = 3;
    } else {
        if ((gKirbyState.unk4 == 1) && (gKirbyState.unk8 == 0)) {
            onGround = D_800E8920[omCurrentObj->objId];
            if ((onGround != 0) && !(gKirbyController.buttonHeld & 0x400)
                && (gKirbyController.buttonPressed & 0x8000)) {
                set_kirby_action_1(3, 5);
            } else if (gKirbyController.buttonPressed & 0x4000) {
                set_kirby_action_1(0x1A, 0x19);
            } else if (gKirbyController.buttonHeld & 0x3F) {
                gKirbyState.unk7 = 0;
                set_kirby_action_1(0x11, 0x11);
            } else if ((onGround != 0) && (gKirbyController.buttonHeld & 0x400)) {
                set_kirby_action_1(0xB, 0x10);
            }
            if (gKirbyState.action != 0x18) {
                gKirbyState.isInhalingBlock = 0;
                gKirbyState.isInhaling = 0;
                return;
            }
        }
        if (gKirbyState.unk30 != 0) {
            done = 1;
        } else if ((gKirbyState.isInhaling != 0) && (gKirbyState.numberInhaling == 0)
                   && !(gKirbyController.buttonHeld & 0x4000)) {
            if (gKirbyState.unk8 != 0) {
                gKirbyState.unk8 = 0;
            }
            done = 1;
        }
    }
    if (done != 0) {
        func_80122F08(D_80196D48_ovl3[gKirbyState.unk4]);
        gKirbyState.unk154 = 2;
        gKirbyState.isInhalingBlock = 0;
        gKirbyState.isInhaling = 0;
        if (gKirbyState.unk8 == 0) {
            if (D_800E8920[omCurrentObj->objId] == 0) {
                set_kirby_action_1(6, 6);
            } else if (!(gKirbyController.buttonHeld & 0x300)) {
                set_kirby_action_1(0, 1);
            } else {
                set_kirby_action_1(1, 3);
            }
        } else {
            set_kirby_action_1(0xB, 0x10);
        }
        return;
    }
    func_8011ED68();
    id = omCurrentObj->objId;
    if ((D_800E8920[id] != 0) && (gKirbyState.unk4 != 1) && (gKirbyState.isInhaling != 0)) {
        if (D_800E8AE0[id] & 6) {
            func_800AECC0(0.5f);
            func_800AED20(0.5f);
        } else {
            func_800AECC0(1.25f);
            func_800AED20(1.25f);
        }
    } else if (D_800E8AE0[id] & 6) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80173260_ovl3.s")
#endif

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801736BC_ovl3(s32 arg0) {
    f32 sp5C;
    f32 sp54;
    GObj *temp_v0;
    f32 *temp_a0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f0;
    f32 var_f2;
    s32 *temp_a0;
    s32 *temp_v0_2;
    s32 temp_a1;
    s32 var_v1;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;

    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x17;
    func_80120AF8(&sp54);
    temp_v1 = omCurrentObj->objId;
    if (!(D_800E8AE0[temp_v1] & 6)) {
        var_f2 = 9.0f;
    } else {
        var_f2 = 4.5f;
    }
    D_800E64D0[temp_v1] = var_f2 * sp54 * D_800E6A10[temp_v1];
    temp_f0 = 9.0f * sp54;
    if (temp_f0 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E6850[omCurrentObj->objId] = temp_f0;
    }
    sp5C = 0.0f;
    D_800E9720[omCurrentObj->objId] = 4;
    D_800E83E0[omCurrentObj->objId] = 0;
    func_80122C30();
    func_801230E8(0x200F5, 0x200F6, 0);
    ohSleep(1);
    temp_v0 = omCurrentObj;
    temp_v1_2 = temp_v0->objId;
    var_v1 = temp_v1_2 * 4;
    var_f0 = D_800E64D0[temp_v1_2];
    if (var_f0 != 0.0f) {
loop_7:
        temp_a0 = var_v1 + D_800E9720;
        temp_a1 = *temp_a0;
        if (temp_a1 == 0) {
            if (sp5C == 0.0f) {
                func_80120AF8(&sp54, temp_a1);
                temp_v1_3 = omCurrentObj->objId;
                D_800E6690[temp_v1_3] = D_800E6A10[temp_v1_3] * (2.0f * sp5C);
                D_800E6850[omCurrentObj->objId] = 0.0f;
                temp_v1_4 = omCurrentObj->objId;
                var_v1 = temp_v1_4 * 4;
                var_f0 = D_800E64D0[temp_v1_4];
            }
        } else {
            *temp_a0 = temp_a1 - 1;
            temp_v1_5 = temp_v0->objId;
            var_v1 = temp_v1_5 * 4;
            var_f0 = D_800E64D0[temp_v1_5];
        }
        if ((!(var_f0 > 0.0f) || !(gKirbyState.rightCollisionNext & 1)) && ((temp_v0_2 = var_v1 + D_800E83E0, !(var_f0 < 0.0f)) || !(gKirbyState.leftCollisionNext & 8)) && (*temp_v0_2 != 6)) {
            *temp_v0_2 = 0;
            ohSleep(1);
            temp_v1_6 = omCurrentObj->objId;
            var_v1 = temp_v1_6 * 4;
            var_f0 = D_800E64D0[temp_v1_6];
            if (var_f0 == 0.0f) {
                goto block_17;
            }
            goto loop_7;
        }
    } else {
block_17:
        func_8011E0E8();
        gKirbyState.unk30 += 1;
        curObjSleepForever();
    }
    func_8011E0E8();
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 16.0f;
    func_800AFA54(D_800DFA10[omCurrentObj->objId]);
    func_801230E8(0x20089, 0x2008A, 0);
    temp_a0_2 = &D_800E64D0[omCurrentObj->objId];
    *temp_a0_2 = -*temp_a0_2;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_v1_7 = omCurrentObj->objId;
    temp_f0_2 = -D_800E64D0[temp_v1_7];
    if (temp_f0_2 < 0.0f) {
        D_800E6850[temp_v1_7] = -temp_f0_2;
    } else {
        D_800E6850[temp_v1_7] = temp_f0_2;
    }
    gKirbyState.unk44 += 1;
    ohSleep(8);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801736BC_ovl3.s")
#endif

typedef struct Unk80196C9C {
    u16 unk0;
} Unk80196C9C;

extern Unk80196C9C D_80196C9C_ovl3;
extern s32 D_8012E7FC;
extern u8 D_801930CC_ovl3[];
extern u8 D_801910AC_ovl3[];
/* D_80197430_ovl3 now emitted by this TU */

void func_80173AF4_ovl3(s32 arg0) {
    Unk80196C9C sp1C = D_80196C9C_ovl3;

    if ((*(s32 *) ((u8 *) &D_8012E7E8 + 8) == 0) && (*(s32 *) ((u8 *) &D_8012E7FC + 8) == 0) &&
        (D_800E8920[omCurrentObj->objId] != 0)) {
        func_8015449C_ovl3(D_801930CC_ovl3, 0);
    }
    func_80153984_ovl3();
    if (func_80151E94_ovl3(&sp1C) != 0) {
        func_8011E0E8();
    }
    if (*(s32 *) ((u8 *) &D_8012E7E8 + 8) == 0) {
        if (*(s32 *) ((u8 *) &D_8012E7FC + 8) != 0) {
            return;
        }
        if (D_800E8920[omCurrentObj->objId] == 0) {
            return;
        }
        func_8016854C_ovl3((s32) D_801910AC_ovl3, (s32) D_800DFBD0[omCurrentObj->objId][7], 1.0f);
        return;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (gKirbyController.buttonHeld & 0x400) {
        set_kirby_action_1(9, 0xE);
    } else if (D_800E8920[omCurrentObj->objId] != 0) {
        set_kirby_action_1(0, 1);
    } else {
        set_kirby_action_1(6, 6);
    }
}

void func_80173CB4_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x18;
    func_80120A28();
    gKirbyState.unkD = 6;
    func_80122F08(0x20008);
    gKirbyState.unk154 = 2;
    if (gKirbyState.unk4 == 1) {
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            func_800A8100(1, 1, 9, (s32) D_800DFBD0[omCurrentObj->objId][2]);
        } else {
            func_800A8100(1, 1, 8, (s32) D_800DFBD0[omCurrentObj->objId][2]);
        }
    } else {
        D_800EC2E0[func_801632B8_ovl3(0)].as_s32 = (s32) D_800DFBD0[omCurrentObj->objId][2];
    }
    gKirbyState.unk4 = 0;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    func_801230E8(0x20152, 0x20153, 1);
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_80173E40_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            func_8011D67C();
        }
    }
}

void func_80173EC0_ovl3(GObj *arg0) {
    f32 temp;

    gKirbyState.unk30 = 0;
    if (gKirbyState.unkD != -2) {
        gKirbyState.unkD = 4;
    }
    func_8011CF58();
    temp = 65535.0f;
    D_800DDFD0[omCurrentObj->objId] = 0x19;
    D_800E6690[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp;
    if ((s8) gKirbyState.unkE == 0) {
        func_801230E8(0x20113, 0x20114, 0);
    } else {
        func_801230E8(0x20115, 0x20116, 0);
    }
    D_800DF310[omCurrentObj->objId] = func_8017404C_ovl3;
    func_800AF27C();
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

void func_8017404C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            temp = *(s8 *) &gKirbyState.unkE;
            if (temp == 0) {
                if (random_soft_s32_range(3) & 2) {
                    play_sound(0xDE);
                } else {
                    play_sound(0xDF);
                }
                play_sound(0xE7);
                gKirbyState.unk4 = 0;
                gKirbyState.unkD = 5;
            } else if (temp == (s8) arg2) {
                if (random_soft_s32_range(3) & 2) {
                    play_sound(0xDE);
                } else {
                    play_sound(0xDF);
                }
                play_sound(0xE7);
                gKirbyState.unk4 = 0;
                gKirbyState.unkD = 5;
            }
        }
    }
}

void func_80174144_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    if (gKirbyState.unkD != 4) {
        func_801217B8();
        if (gKirbyState.unk30 != 0) {
            if (D_800E8920[omCurrentObj->objId] == 0) {
                set_kirby_action_1(6, 6);
            } else {
                set_kirby_action_1(0, 1);
            }
        }
    }
}

void func_801741DC_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0xF;
    gKirbyState.unk4 = 0;
    gKirbyState.unk68 = 0;
    gKirbyState.unkD = -1;
    if (func_800AA888(0x20007) == 0) {
        func_80122F08(0x20007);
    }
    func_801230E8(0x2010F, 0x20110, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_80174284_ovl3(GObj *arg0) {

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.ceilingCollisionNext != 0) {
        if (func_80122460() != 0) {
            if (gKirbyState.unk24 != 0) {
                gKirbyState.unk24 = 0;
                D_800E7CE0[omCurrentObj->objId] = 0x2D;
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            if (0 < D_800E3210[omCurrentObj->objId]) {
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
            }
            *(u16 *) &D_8012BCA0 = *(u16 *) &D_8012BCA0 & 7;
            set_kirby_action_1(0xA, 0xD);
            return;
        }
        D_800E3210[omCurrentObj->objId] = 0.0f;
    }
    if (gKirbyState.horizontalCollision != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    if ((gKirbyState.unk17 != 0) && ((gKirbyState.unkB == 1) || (gKirbyState.unkB == 2))) {
        if (gKirbyState.unk24 != 0) {
            gKirbyState.unk24 = 0;
        }
        return;
    }
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk24 != 0) {
            gKirbyState.unk24 = 0;
            D_800E7CE0[omCurrentObj->objId] = 0x2D;
        }
        func_8011D67C();
    }
}

void func_80174504_ovl3(GObj *arg0) {
    s32 temp;

    gKirbyState.unk30 = 0;
    gKirbyState.unkA = 0;
    gKirbyState.unkD = 0;
    gKirbyState.firstInhale = gKirbyState.secondInhale = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x10;
    func_80120A28();
    func_80122F08(0x20008);
    gKirbyState.unk154 = 2;
    if (gKirbyState.unk4 == 1) {
        func_801230E8(0x20146, 0x20147, 0);
    } else {
        if ((s32) gKirbyState.ability < 8) {
            temp = func_801BBFE4_ovl7();
        } else {
            temp = func_801BC27C_ovl7(gKirbyState.ability, 0);
        }
        if (temp != -1) {
            D_800E8220[temp] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[temp], func_801A9618_ovl7);
            gKirbyState.unk4 = 1;
            gKirbyState.currentInhale = gKirbyState.ability;
        }
        gKirbyState.ability = 0;
        func_8012310C(0);
        func_801230E8(0x20144, 0x20145, 0);
    }
    D_800DF310[omCurrentObj->objId] = func_80174680_ovl3;
    func_800AF27C();
    gKirbyState.unkD = 2;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

void func_80174680_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            play_sound(0xE6);
            gKirbyState.unk4 = 2;
            gKirbyState.currentInhale = 0;
            gKirbyState.unkD = 1;
        }
    }
}

void func_801746E0_ovl3(GObj *arg0) {
    func_80153984_ovl3();
    if (func_801217B8() != 0) {
        func_80122B40();
        func_80122FB0(1);
    }
    if (gKirbyState.unk30 != 0) {
        if ((gKirbyState.unkB8 == 6) && (func_80179060_ovl3(40.0f) == 0)
         && (gKirbyState.unkA == 0) && (gKirbyState.unkBA == 0)) {
            set_kirby_action_1(0x1F, 0x14);
            return;
        }
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
    } else if (gKirbyController.buttonPressed & 0x3F) {
        gKirbyState.unkA = 3;
    }
}

void func_801747F0_ovl3(GObj *arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x11;
    func_80120A28();
    if (gKirbyState.unkD != -2) {
        gKirbyState.unkD = 3;
    }
    func_80122F08(0x20008);
    gKirbyState.unk154 = 2;
    func_801230E8(0x2014E, 0x2014F, 0);
    D_800DF310[omCurrentObj->objId] = func_8017492C_ovl3;
    func_800AF27C();
    if (gKirbyState.unkD != -2) {
        func_80122F08(0x20009);
        func_801230E8(0x20173, 0x20174, 0);
        gKirbyState.unk154 = 2;
        D_800E0490[omCurrentObj->objId] = D_80192704_ovl3;
    } else {
        gKirbyState.unk4 = 0;
        gKirbyState.unkD = -1;
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

void func_8017492C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (gKirbyState.unkD != -2) {
                play_sound(0xE5);
                gKirbyState.unk4 = 1;
                gKirbyState.unkD = -1;
            }
        }
    }
}

void func_8017499C_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    if (func_801217B8() != 0) {
        func_80122B40();
    }
    if (gKirbyState.unk30 != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
    }
}

void func_80174A30_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x12;
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    func_80120A28();
    func_801230E8(0x200DF, 0x200E0, 0);
    D_800DF310[omCurrentObj->objId] = func_80174AEC_ovl3;
    func_800AF27C();
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_80174AEC_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (random_soft_s32_range(3) & 2) {
                play_sound(0xDE);
            } else {
                play_sound(0xDF);
            }
            play_sound(0xE7);
            gKirbyState.unk4 = 0;
            if (gKirbyState.unkD != -2) {
                gKirbyState.unkD = 8;
            }
        }
    }
}

void func_80174B7C_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    if (func_801217B8() != 0) {
        func_80122B40();
    }
    if (gKirbyState.unk30 != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 11/720, whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* PORT: the damage/knockback coroutine (track action 0x13), from
 * asm/nonmatchings/ovl3/kirby/func_80174C10_ovl3.s (via m2c). Resets the
 * whole player kit for a hit -- anim speed by water, squash scale 0.2,
 * pointer/anim tables by carry state, inhale and turn flags, mouth sound
 * to the 0x20007/0x20009 loop, physics tracks -- normalises the mix
 * counter unkD, latches whether the hit came from the facing side
 * (unk44, via the D_800E85A0 direction word), and resolves damageType
 * from unk140 or the track's contact word. A plain hit (unk140 == 0 or
 * damageType < 2) replays the flinch-in pair when interrupted out of
 * 0xA/0xB, spawns the hit particle on the body DObj, launches the +/-8
 * (halved in any special-terrain cell) knockback and plays the carry
 * (0x20161), ability (0x200BF) or plain flinch anims to completion,
 * adding the airborne fall pair when off the ground. A heavy hit
 * (damageType >= 2) instead pops Kirby up 18 (suppressed by unk140 bit
 * 16, water-halved), optionally launches the +/-5 by bits 18/19 or stops
 * the track, and plays the heavy-launch anims. After the anims finish it
 * kills the remaining velocity, drops the invuln latch unk68 and parks.
 *
 * Port notes: m2c's func_800BB468(0x3F800000, ...) is leftover
 * registers -- the asm zeroes $a0/$a1 only, so it is the (0, 0) channel
 * stop; `D_800DFBD0[...]->unk8` is entry [2] of the track's DObj list
 * (func_80122A10 goes through a pointer cast to keep the DObj's width);
 * D_800E85A0 is the s32 facing word converted through cvt.s.w before the
 * 1.0f compare; the two ABSF ladders m2c unrolls are |speed|; the
 * unk15C anim-bank stores take the (u32)(uintptr_t) spelling of the
 * compiled siblings. */
void func_80174C10_ovl3(s32 arg0) {
    extern s16 D_80198838_ovl3;
    extern s32 D_800E85A0[];
    extern s32 D_800D6F10;
    f32 animSpd;
    f32 spd;
    f32 drift;
    f32 up;
    f32 grav;
    f32 cap;
    s32 anim;
    s32 id;

    gKirbyState.unk30 = 0;
    id = omCurrentObj->objId;
    if (D_800E8AE0[id] & 6) {
        animSpd = 2.0f;
    } else {
        animSpd = 4.0f;
    }
    func_800AECC0(animSpd);
    func_800AED20(animSpd);
    D_800DDFD0[id] = 0x13;
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    if (gKirbyState.unk4 == 1) {
        D_800E0490[id] = D_80192704_ovl3;
    } else {
        D_800E0490[id] = D_801926E8_ovl3;
    }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) (uintptr_t) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
    }
    D_800DF310[id] = 0;
    D_800D6F10 = 0;
    gEntitiesAngleXArray[id] = 0.0f;
    gKirbyState.isTurning = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.isInhaling = 0;
    D_800E8060[id] = -1U;
    func_8011DC5C();
    func_8011E0E8();
    func_8011E234();
    gKirbyState.floatTimer = 0xF0;
    if (gKirbyState.abilityInUse != 0x12) {
        gKirbyState.abilityInUse = 0;
        D_80198838_ovl3 = 3;
    }
    switch (gKirbyState.unkD) {
        case 0:
            gKirbyState.unkD = -1;
            break;
        case 1:
        case 3:
        case 4:
            gKirbyState.unkD = 2;
            break;
        case -1:
            if ((gKirbyState.previousAction == 0x18) && (gKirbyState.unk4 == 0)) {
                gKirbyState.unkD = -3;
            }
            break;
    }
    if (gKirbyState.unk4 == 1) {
        if (func_800AA888(0x20009) == 0) {
            func_80122F08(0x20009);
        }
    } else if (func_800AA888(0x20007) == 0) {
        func_80122F08(0x20007);
    }
    gKirbyState.unk154 = 2;
    id = omCurrentObj->objId;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[id] = 65535.0f;
    gKirbyState.unk68 = 1;
    if ((((f32) D_800E85A0[id] == 1.0f) && (D_800E6A10[id] == 1.0f))
        || (((f32) D_800E85A0[id] == -1.0f) && (D_800E6A10[id] == -1.0f))) {
        gKirbyState.unk44 = 1;
    } else {
        gKirbyState.unk44 = 0;
    }
    if (gKirbyState.unk140 == 0) {
        gKirbyState.damageType = (s16) ((s32) (D_800E83E0[id] & 0xFF0000) >> 0x10);
    } else {
        gKirbyState.damageType = (s16) gKirbyState.unk140;
    }
    func_800BB468(0, 0);
    if ((gKirbyState.unk140 == 0) || (gKirbyState.damageType < 2)) {
        if ((gKirbyState.previousAction == 0xB) || (gKirbyState.previousAction == 0xA)) {
            anim = 0x20071;
            if (gKirbyState.unk44 != 0) {
                anim = 0x2006B;
            }
            func_8011CF58();
            func_800AA78C(anim, 0x20007, 3.0f);
            func_800AECC0(animSpd);
            func_800AED20(animSpd);
        }
        ((void (*)(struct DObj *)) func_80122A10)(D_800DFBD0[omCurrentObj->objId][2]);
        id = omCurrentObj->objId;
        if ((f32) D_800E85A0[id] == 1.0f) {
            spd = 8.0f;
            drift = -0.4f;
        } else {
            spd = -8.0f;
            drift = 0.4f;
        }
        if (D_800E8AE0[id] != 0) {
            spd *= 0.5f;
            drift *= 0.5f;
        }
        D_800E64D0[id] = spd;
        D_800E6690[id] = drift;
        D_800E6850[id] = ABSF(spd);
        switch (gKirbyState.unk4) {
            case 0:
                if (gKirbyState.damageType >= 2) {
                    play_sound(0xD9);
                } else {
                    play_sound(0xD8);
                }
                if (gKirbyState.unk44 != 0) {
                    func_801230E8(0x2006B, 0x2006C, 1);
                } else {
                    func_801230E8(0x20071, 0x20072, 1);
                }
                id = omCurrentObj->objId;
                if (D_800E8920[id] == 0) {
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[id] = 1.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[id] = 16.0f;
                    }
                    if (gKirbyState.unk44 != 0) {
                        func_801230E8(0x2006F, 0x20070, 1);
                    } else {
                        func_801230E8(0x20075, 0x20076, 1);
                    }
                } else if (gKirbyState.unk44 != 0) {
                    func_801230E8(0x2006D, 0x2006E, 1);
                } else {
                    func_801230E8(0x20073, 0x20074, 1);
                }
                break;
            case 2:
                if (gKirbyState.damageType >= 2) {
                    play_sound(0xD9);
                } else {
                    play_sound(0xD8);
                }
                func_801230E8(0x200BF, 0x200C0, 1);
                break;
            case 1:
                play_sound(0xDB);
                func_801230E8(0x20161, 0x20162, 1);
                break;
        }
    } else {
        D_800E8920[omCurrentObj->objId] = 0;
        ((void (*)(struct DObj *)) func_80122A10)(D_800DFBD0[omCurrentObj->objId][2]);
        if (gKirbyState.unk4 != 1) {
            play_sound(0xD9);
        } else {
            play_sound(0xDB);
        }
        if (gKirbyState.unk140 & 0x10000) {
            up = 0.0f;
        } else {
            up = 18.0f;
        }
        id = omCurrentObj->objId;
        if (D_800E8AE0[id] & 6) {
            grav = -0.4f;
            cap = 1.0f;
            up *= 0.5f;
        } else {
            grav = -0.980665f;
            cap = 18.0f;
        }
        D_800E3210[id] = up;
        D_800E3750[id] = grav;
        D_800E3C90[id] = ABSF(cap);
        if (gKirbyState.unk140 & 0xC0000) {
            if (gKirbyState.unk140 & 0x40000) {
                spd = -5.0f;
            } else {
                spd = 5.0f;
            }
            id = omCurrentObj->objId;
            D_800E64D0[id] = spd;
            D_800E6690[id] = 0.0f;
            D_800E6850[id] = ABSF(spd);
        } else {
            func_80120A28();
        }
        switch (gKirbyState.unk4) {
            case 0:
                func_801230E8(0x20067, 0x20068, 1);
                func_801230E8(0x20069, 0x2006A, 1);
                break;
            case 1:
                func_801230E8(0x2016D, 0x2016E, 1);
                break;
            case 2:
                func_801230E8(0x200C7, 0x200C8, 1);
                break;
        }
    }
    id = omCurrentObj->objId;
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[id] = 65535.0f;
    gKirbyState.unk68 = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the damage/knockback coroutine (track action 0x13), from
 * asm/nonmatchings/ovl3/kirby/func_80174C10_ovl3.s (via m2c). Resets the
 * whole player kit for a hit -- anim speed by water, squash scale 0.2,
 * pointer/anim tables by carry state, inhale and turn flags, mouth sound
 * to the 0x20007/0x20009 loop, physics tracks -- normalises the mix
 * counter unkD, latches whether the hit came from the facing side
 * (unk44, via the D_800E85A0 direction word), and resolves damageType
 * from unk140 or the track's contact word. A plain hit (unk140 == 0 or
 * damageType < 2) replays the flinch-in pair when interrupted out of
 * 0xA/0xB, spawns the hit particle on the body DObj, launches the +/-8
 * (halved in any special-terrain cell) knockback and plays the carry
 * (0x20161), ability (0x200BF) or plain flinch anims to completion,
 * adding the airborne fall pair when off the ground. A heavy hit
 * (damageType >= 2) instead pops Kirby up 18 (suppressed by unk140 bit
 * 16, water-halved), optionally launches the +/-5 by bits 18/19 or stops
 * the track, and plays the heavy-launch anims. After the anims finish it
 * kills the remaining velocity, drops the invuln latch unk68 and parks.
 *
 * Port notes: m2c's func_800BB468(0x3F800000, ...) is leftover
 * registers -- the asm zeroes $a0/$a1 only, so it is the (0, 0) channel
 * stop; `D_800DFBD0[...]->unk8` is entry [2] of the track's DObj list
 * (func_80122A10 goes through a pointer cast to keep the DObj's width);
 * D_800E85A0 is the s32 facing word converted through cvt.s.w before the
 * 1.0f compare; the two ABSF ladders m2c unrolls are |speed|; the
 * unk15C anim-bank stores take the (u32)(uintptr_t) spelling of the
 * compiled siblings. */
void func_80174C10_ovl3(s32 arg0) {
    extern s16 D_80198838_ovl3;
    extern s32 D_800E85A0[];
    extern s32 D_800D6F10;
    f32 animSpd;
    f32 spd;
    f32 drift;
    f32 up;
    f32 grav;
    f32 cap;
    s32 anim;
    s32 id;

    gKirbyState.unk30 = 0;
    id = omCurrentObj->objId;
    if (D_800E8AE0[id] & 6) {
        animSpd = 2.0f;
    } else {
        animSpd = 4.0f;
    }
    func_800AECC0(animSpd);
    func_800AED20(animSpd);
    D_800DDFD0[id] = 0x13;
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    if (gKirbyState.unk4 == 1) {
        D_800E0490[id] = D_80192704_ovl3;
    } else {
        D_800E0490[id] = D_801926E8_ovl3;
    }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) (uintptr_t) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
    }
    D_800DF310[id] = 0;
    D_800D6F10 = 0;
    gEntitiesAngleXArray[id] = 0.0f;
    gKirbyState.isTurning = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.isInhaling = 0;
    D_800E8060[id] = -1U;
    func_8011DC5C();
    func_8011E0E8();
    func_8011E234();
    gKirbyState.floatTimer = 0xF0;
    if (gKirbyState.abilityInUse != 0x12) {
        gKirbyState.abilityInUse = 0;
        D_80198838_ovl3 = 3;
    }
    switch (gKirbyState.unkD) {
        case 0:
            gKirbyState.unkD = -1;
            break;
        case 1:
        case 3:
        case 4:
            gKirbyState.unkD = 2;
            break;
        case -1:
            if ((gKirbyState.previousAction == 0x18) && (gKirbyState.unk4 == 0)) {
                gKirbyState.unkD = -3;
            }
            break;
    }
    if (gKirbyState.unk4 == 1) {
        if (func_800AA888(0x20009) == 0) {
            func_80122F08(0x20009);
        }
    } else if (func_800AA888(0x20007) == 0) {
        func_80122F08(0x20007);
    }
    gKirbyState.unk154 = 2;
    id = omCurrentObj->objId;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[id] = 65535.0f;
    gKirbyState.unk68 = 1;
    if ((((f32) D_800E85A0[id] == 1.0f) && (D_800E6A10[id] == 1.0f))
        || (((f32) D_800E85A0[id] == -1.0f) && (D_800E6A10[id] == -1.0f))) {
        gKirbyState.unk44 = 1;
    } else {
        gKirbyState.unk44 = 0;
    }
    if (gKirbyState.unk140 == 0) {
        gKirbyState.damageType = (s16) ((s32) (D_800E83E0[id] & 0xFF0000) >> 0x10);
    } else {
        gKirbyState.damageType = (s16) gKirbyState.unk140;
    }
    func_800BB468(0, 0);
    if ((gKirbyState.unk140 == 0) || (gKirbyState.damageType < 2)) {
        if ((gKirbyState.previousAction == 0xB) || (gKirbyState.previousAction == 0xA)) {
            anim = 0x20071;
            if (gKirbyState.unk44 != 0) {
                anim = 0x2006B;
            }
            func_8011CF58();
            func_800AA78C(anim, 0x20007, 3.0f);
            func_800AECC0(animSpd);
            func_800AED20(animSpd);
        }
        ((void (*)(struct DObj *)) func_80122A10)(D_800DFBD0[omCurrentObj->objId][2]);
        id = omCurrentObj->objId;
        if ((f32) D_800E85A0[id] == 1.0f) {
            spd = 8.0f;
            drift = -0.4f;
        } else {
            spd = -8.0f;
            drift = 0.4f;
        }
        if (D_800E8AE0[id] != 0) {
            spd *= 0.5f;
            drift *= 0.5f;
        }
        D_800E64D0[id] = spd;
        D_800E6690[id] = drift;
        D_800E6850[id] = ABSF(spd);
        switch (gKirbyState.unk4) {
            case 0:
                if (gKirbyState.damageType >= 2) {
                    play_sound(0xD9);
                } else {
                    play_sound(0xD8);
                }
                if (gKirbyState.unk44 != 0) {
                    func_801230E8(0x2006B, 0x2006C, 1);
                } else {
                    func_801230E8(0x20071, 0x20072, 1);
                }
                id = omCurrentObj->objId;
                if (D_800E8920[id] == 0) {
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[id] = 1.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[id] = 16.0f;
                    }
                    if (gKirbyState.unk44 != 0) {
                        func_801230E8(0x2006F, 0x20070, 1);
                    } else {
                        func_801230E8(0x20075, 0x20076, 1);
                    }
                } else if (gKirbyState.unk44 != 0) {
                    func_801230E8(0x2006D, 0x2006E, 1);
                } else {
                    func_801230E8(0x20073, 0x20074, 1);
                }
                break;
            case 2:
                if (gKirbyState.damageType >= 2) {
                    play_sound(0xD9);
                } else {
                    play_sound(0xD8);
                }
                func_801230E8(0x200BF, 0x200C0, 1);
                break;
            case 1:
                play_sound(0xDB);
                func_801230E8(0x20161, 0x20162, 1);
                break;
        }
    } else {
        D_800E8920[omCurrentObj->objId] = 0;
        ((void (*)(struct DObj *)) func_80122A10)(D_800DFBD0[omCurrentObj->objId][2]);
        if (gKirbyState.unk4 != 1) {
            play_sound(0xD9);
        } else {
            play_sound(0xDB);
        }
        if (gKirbyState.unk140 & 0x10000) {
            up = 0.0f;
        } else {
            up = 18.0f;
        }
        id = omCurrentObj->objId;
        if (D_800E8AE0[id] & 6) {
            grav = -0.4f;
            cap = 1.0f;
            up *= 0.5f;
        } else {
            grav = -0.980665f;
            cap = 18.0f;
        }
        D_800E3210[id] = up;
        D_800E3750[id] = grav;
        D_800E3C90[id] = ABSF(cap);
        if (gKirbyState.unk140 & 0xC0000) {
            if (gKirbyState.unk140 & 0x40000) {
                spd = -5.0f;
            } else {
                spd = 5.0f;
            }
            id = omCurrentObj->objId;
            D_800E64D0[id] = spd;
            D_800E6690[id] = 0.0f;
            D_800E6850[id] = ABSF(spd);
        } else {
            func_80120A28();
        }
        switch (gKirbyState.unk4) {
            case 0:
                func_801230E8(0x20067, 0x20068, 1);
                func_801230E8(0x20069, 0x2006A, 1);
                break;
            case 1:
                func_801230E8(0x2016D, 0x2016E, 1);
                break;
            case 2:
                func_801230E8(0x200C7, 0x200C8, 1);
                break;
        }
    }
    id = omCurrentObj->objId;
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[id] = 65535.0f;
    gKirbyState.unk68 = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174C10_ovl3.s")
#endif

void func_80175754_ovl3(GObj *arg0) {

    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.horizontalCollision != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk8 != 0) {
            set_kirby_action_1(0xB, 0x10);
        } else if (func_80179130_ovl3() == 0) {
            if (D_800E8920[omCurrentObj->objId] == 0) {
                set_kirby_action_1(6, 6);
            } else {
                switch (gKirbyState.unk4) {
                    case 0:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(9, 0xE);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 1:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(0xB, 0x10);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 2:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(0x12, 0x12);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                }
            }
        }
        gKirbyState.unk24 = 0;
        D_800E7CE0[omCurrentObj->objId] = 0x2D;
        if (gKirbyState.unk4 != 0) {
            if (gKirbyState.damageType >= 2) {
                D_800E7CE0[omCurrentObj->objId] = D_800E7CE0[omCurrentObj->objId] + 0x1A;
            }
        }
    }
    func_8011ED68();
}

#ifdef MIPS_TO_C
/* FACTORY: 15/471, whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* PORT: the light-hit coroutine (track action 0x14 -- the no-damage-word
 * flinch, e.g. gas/contact stagger), from asm/nonmatchings/ovl3/kirby/
 * func_8017599C_ovl3.s (via m2c). A trimmed twin of func_80174C10_ovl3:
 * same player-kit reset (anim speed by water, 0.2 squash scale, table
 * swaps by carry state, inhale/turn clears, unkD normalisation, mouth
 * loop), then plays the squeak 0x263, latches the facing-side flag
 * unk44, stops the channel pair, replays the flinch-in when interrupted
 * out of 0xA/0xB, launches the same +/-8 knockback (halved on special
 * terrain) and plays the carry/ability/plain flinch anims -- with no
 * damage-type resolution, no hit particle and no heavy-launch path --
 * before killing the velocity and parking.
 *
 * Port notes: identical m2c garbles to the sibling -- func_800BB468's
 * real arguments are the zeroed $a0/$a1 (0, 0); D_800E85A0 is the s32
 * facing word through cvt.s.w; |speed| for the ladder; (u32)(uintptr_t)
 * for the unk15C anim-bank stores. */
void func_8017599C_ovl3(s32 arg0) {
    extern s16 D_80198838_ovl3;
    extern s32 D_800E85A0[];
    extern s32 D_800D6F10;
    f32 animSpd;
    f32 spd;
    f32 drift;
    s32 anim;
    s32 id;

    gKirbyState.unk30 = 0;
    id = omCurrentObj->objId;
    if (D_800E8AE0[id] & 6) {
        animSpd = 2.0f;
    } else {
        animSpd = 4.0f;
    }
    func_800AECC0(animSpd);
    func_800AED20(animSpd);
    D_800DDFD0[id] = 0x14;
    if (gKirbyState.unk4 == 1) {
        D_800E0490[id] = D_80192704_ovl3;
    } else {
        D_800E0490[id] = D_801926E8_ovl3;
    }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) (uintptr_t) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
    }
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    D_800DF310[id] = 0;
    gEntitiesAngleXArray[id] = 0.0f;
    D_800D6F10 = 0;
    gKirbyState.isTurning = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.isInhaling = 0;
    D_800E8060[id] = -1U;
    func_8011DC5C();
    func_8011E0E8();
    func_8011E234();
    gKirbyState.floatTimer = 0xF0;
    if (gKirbyState.abilityInUse != 0x12) {
        gKirbyState.abilityInUse = 0;
        D_80198838_ovl3 = 3;
    }
    switch (gKirbyState.unkD) {
        case 0:
            gKirbyState.unkD = -1;
            break;
        case 1:
        case 3:
        case 4:
            gKirbyState.unkD = 2;
            break;
        case -1:
            if ((gKirbyState.previousAction == 0x18) && (gKirbyState.unk4 == 0)) {
                gKirbyState.unkD = -3;
            }
            break;
    }
    if (gKirbyState.unk4 == 1) {
        if (func_800AA888(0x20009) == 0) {
            func_80122F08(0x20009);
        }
    } else if (func_800AA888(0x20007) == 0) {
        func_80122F08(0x20007);
    }
    gKirbyState.unk154 = 2;
    id = omCurrentObj->objId;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[id] = 65535.0f;
    play_sound(0x263);
    gKirbyState.unk68 = 1;
    if ((((f32) D_800E85A0[id] == 1.0f) && (D_800E6A10[id] == 1.0f))
        || (((f32) D_800E85A0[id] == -1.0f) && (D_800E6A10[id] == -1.0f))) {
        gKirbyState.unk44 = 1;
    } else {
        gKirbyState.unk44 = 0;
    }
    func_800BB468(0, 0);
    if ((gKirbyState.previousAction == 0xB) || (gKirbyState.previousAction == 0xA)) {
        anim = 0x20071;
        if (gKirbyState.unk44 != 0) {
            anim = 0x2006B;
        }
        func_8011CF58();
        func_800AA78C(anim, 0x20007, 3.0f);
        func_800AECC0(animSpd);
        func_800AED20(animSpd);
    }
    id = omCurrentObj->objId;
    if ((f32) D_800E85A0[id] == 1.0f) {
        spd = 8.0f;
        drift = -0.4f;
    } else {
        spd = -8.0f;
        drift = 0.4f;
    }
    if (D_800E8AE0[id] != 0) {
        spd *= 0.5f;
        drift *= 0.5f;
    }
    D_800E64D0[id] = spd;
    D_800E6690[id] = drift;
    D_800E6850[id] = ABSF(spd);
    switch (gKirbyState.unk4) {
        case 0:
            if (gKirbyState.unk44 != 0) {
                func_801230E8(0x2006B, 0x2006C, 1);
            } else {
                func_801230E8(0x20071, 0x20072, 1);
            }
            id = omCurrentObj->objId;
            if (D_800E8920[id] == 0) {
                if (D_800E8AE0[id] & 6) {
                    D_800E3750[id] = -0.4f;
                    D_800E3C90[id] = 1.0f;
                } else {
                    D_800E3750[id] = -0.980665f;
                    D_800E3C90[id] = 16.0f;
                }
                if (gKirbyState.unk44 != 0) {
                    func_801230E8(0x2006F, 0x20070, 1);
                } else {
                    func_801230E8(0x20075, 0x20076, 1);
                }
            } else if (gKirbyState.unk44 != 0) {
                func_801230E8(0x2006D, 0x2006E, 1);
            } else {
                func_801230E8(0x20073, 0x20074, 1);
            }
            break;
        case 2:
            func_801230E8(0x200BF, 0x200C0, 1);
            break;
        case 1:
            func_801230E8(0x20161, 0x20162, 1);
            break;
    }
    id = omCurrentObj->objId;
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[id] = 65535.0f;
    gKirbyState.unk68 = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the light-hit coroutine (track action 0x14 -- the no-damage-word
 * flinch, e.g. gas/contact stagger), from asm/nonmatchings/ovl3/kirby/
 * func_8017599C_ovl3.s (via m2c). A trimmed twin of func_80174C10_ovl3:
 * same player-kit reset (anim speed by water, 0.2 squash scale, table
 * swaps by carry state, inhale/turn clears, unkD normalisation, mouth
 * loop), then plays the squeak 0x263, latches the facing-side flag
 * unk44, stops the channel pair, replays the flinch-in when interrupted
 * out of 0xA/0xB, launches the same +/-8 knockback (halved on special
 * terrain) and plays the carry/ability/plain flinch anims -- with no
 * damage-type resolution, no hit particle and no heavy-launch path --
 * before killing the velocity and parking.
 *
 * Port notes: identical m2c garbles to the sibling -- func_800BB468's
 * real arguments are the zeroed $a0/$a1 (0, 0); D_800E85A0 is the s32
 * facing word through cvt.s.w; |speed| for the ladder; (u32)(uintptr_t)
 * for the unk15C anim-bank stores. */
void func_8017599C_ovl3(s32 arg0) {
    extern s16 D_80198838_ovl3;
    extern s32 D_800E85A0[];
    extern s32 D_800D6F10;
    f32 animSpd;
    f32 spd;
    f32 drift;
    s32 anim;
    s32 id;

    gKirbyState.unk30 = 0;
    id = omCurrentObj->objId;
    if (D_800E8AE0[id] & 6) {
        animSpd = 2.0f;
    } else {
        animSpd = 4.0f;
    }
    func_800AECC0(animSpd);
    func_800AED20(animSpd);
    D_800DDFD0[id] = 0x14;
    if (gKirbyState.unk4 == 1) {
        D_800E0490[id] = D_80192704_ovl3;
    } else {
        D_800E0490[id] = D_801926E8_ovl3;
    }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) (uintptr_t) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
    }
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    D_800DF310[id] = 0;
    gEntitiesAngleXArray[id] = 0.0f;
    D_800D6F10 = 0;
    gKirbyState.isTurning = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.isInhaling = 0;
    D_800E8060[id] = -1U;
    func_8011DC5C();
    func_8011E0E8();
    func_8011E234();
    gKirbyState.floatTimer = 0xF0;
    if (gKirbyState.abilityInUse != 0x12) {
        gKirbyState.abilityInUse = 0;
        D_80198838_ovl3 = 3;
    }
    switch (gKirbyState.unkD) {
        case 0:
            gKirbyState.unkD = -1;
            break;
        case 1:
        case 3:
        case 4:
            gKirbyState.unkD = 2;
            break;
        case -1:
            if ((gKirbyState.previousAction == 0x18) && (gKirbyState.unk4 == 0)) {
                gKirbyState.unkD = -3;
            }
            break;
    }
    if (gKirbyState.unk4 == 1) {
        if (func_800AA888(0x20009) == 0) {
            func_80122F08(0x20009);
        }
    } else if (func_800AA888(0x20007) == 0) {
        func_80122F08(0x20007);
    }
    gKirbyState.unk154 = 2;
    id = omCurrentObj->objId;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[id] = 65535.0f;
    play_sound(0x263);
    gKirbyState.unk68 = 1;
    if ((((f32) D_800E85A0[id] == 1.0f) && (D_800E6A10[id] == 1.0f))
        || (((f32) D_800E85A0[id] == -1.0f) && (D_800E6A10[id] == -1.0f))) {
        gKirbyState.unk44 = 1;
    } else {
        gKirbyState.unk44 = 0;
    }
    func_800BB468(0, 0);
    if ((gKirbyState.previousAction == 0xB) || (gKirbyState.previousAction == 0xA)) {
        anim = 0x20071;
        if (gKirbyState.unk44 != 0) {
            anim = 0x2006B;
        }
        func_8011CF58();
        func_800AA78C(anim, 0x20007, 3.0f);
        func_800AECC0(animSpd);
        func_800AED20(animSpd);
    }
    id = omCurrentObj->objId;
    if ((f32) D_800E85A0[id] == 1.0f) {
        spd = 8.0f;
        drift = -0.4f;
    } else {
        spd = -8.0f;
        drift = 0.4f;
    }
    if (D_800E8AE0[id] != 0) {
        spd *= 0.5f;
        drift *= 0.5f;
    }
    D_800E64D0[id] = spd;
    D_800E6690[id] = drift;
    D_800E6850[id] = ABSF(spd);
    switch (gKirbyState.unk4) {
        case 0:
            if (gKirbyState.unk44 != 0) {
                func_801230E8(0x2006B, 0x2006C, 1);
            } else {
                func_801230E8(0x20071, 0x20072, 1);
            }
            id = omCurrentObj->objId;
            if (D_800E8920[id] == 0) {
                if (D_800E8AE0[id] & 6) {
                    D_800E3750[id] = -0.4f;
                    D_800E3C90[id] = 1.0f;
                } else {
                    D_800E3750[id] = -0.980665f;
                    D_800E3C90[id] = 16.0f;
                }
                if (gKirbyState.unk44 != 0) {
                    func_801230E8(0x2006F, 0x20070, 1);
                } else {
                    func_801230E8(0x20075, 0x20076, 1);
                }
            } else if (gKirbyState.unk44 != 0) {
                func_801230E8(0x2006D, 0x2006E, 1);
            } else {
                func_801230E8(0x20073, 0x20074, 1);
            }
            break;
        case 2:
            func_801230E8(0x200BF, 0x200C0, 1);
            break;
        case 1:
            func_801230E8(0x20161, 0x20162, 1);
            break;
    }
    id = omCurrentObj->objId;
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[id] = 65535.0f;
    gKirbyState.unk68 = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017599C_ovl3.s")
#endif

void func_801760FC_ovl3(GObj *arg0) {

    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.horizontalCollision != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk8 != 0) {
            set_kirby_action_1(0xB, 0x10);
        } else if (func_80179130_ovl3() == 0) {
            if (D_800E8920[omCurrentObj->objId] == 0) {
                set_kirby_action_1(6, 6);
            } else {
                switch (gKirbyState.unk4) {
                    case 0:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(9, 0xE);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 1:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(0xB, 0x10);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 2:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(0x12, 0x12);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                }
            }
        }
        gKirbyState.unk24 = 0;
    }
}

#include <PR/gbi.h>
#include "main/gtl.h"
extern u8 D_80198825_ovl3;

void func_801762E0_ovl3(struct GObj *arg0) {
    Gfx *gfx = gDisplayListHeads[0];

    gDPPipeSync(gfx++);
    gDPSetRenderMode(gfx++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
    gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, D_80198825_ovl3);
    gDPSetCombineMode(gfx++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPFillRectangle(gfx++, 10, 10, 310, 230);
    gDPPipeSync(gfx++);
    gDPSetRenderMode(gfx++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gDisplayListHeads[0] = gfx;
}

void func_80176398_ovl3(void) {
    GObj *obj = HS64_omMakeGObj(2, NULL, 0x19, 0x80000000);

    if (obj != NULL) {
        omLinkGObjDL(obj, func_801762E0_ovl3, 0xC, 0x80000000, -1);
    }
    D_80198824_ovl3 = 1;
    omGMoveObjDL(D_800DE350[omCurrentObj->objId], 0xC, 0x80000000);
    D_800D79B0[1]->flags &= ~1;
    ((s32 *) D_800D79B0[1]->data.ptr)[0x20] |= 1;
}

void func_8017644C_ovl3(void) {
    if (D_80198824_ovl3 != 0) {
        D_80198824_ovl3 += 5;
        if (D_80198824_ovl3 >= 0xFF) {
            D_80198824_ovl3 = 0xFF;
        }
    }
}

void func_80176484_ovl3(void) {
    D_80198824_ovl3 = 0;
}

extern f32 gKirbyHp;
extern s32 D_800D6B54;
extern s32 D_800D6B58;
extern s32 D_800BE4F8;
extern void func_800B1870(struct GObj *);
extern void auFunc80020C88(void);
extern void func_800A7EB4(void);
extern void func_8011DA34(void);
extern void func_800BB498(void);
extern void auSetBGMVolume(s32, s32);
extern void play_music(s32, s32);
void func_80176814_ovl3(s32);

#ifdef NON_MATCHING
/* 61/225: same instruction COUNT and same shape; the ROM puts 65535.0f in
   $f12 and the shared mtc1-zero in $f2 (this C swaps them), and every $t
   register from the -1 onward is one slot lower. Swept: integer 0 vs 0.0f
   for the two shared zero stores. */
void func_80176490_ovl3(GObj *arg0) {
    extern s32 D_800D6F10;

    gKirbyState.unk30 = 1;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DF150[omCurrentObj->objId] = func_80176814_ovl3;
    func_80122FB0(0);
    setProcessMain(gEntityGObjProcessArray4[omCurrentObj->objId], func_800B1870);
    func_80122F08(0x20007);
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    gKirbyState.unk15C = 0;
    D_800DF310[omCurrentObj->objId] = 0;
    D_800D6F10 = 0;
    gKirbyState.numberInhaled = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk4 = 0;
    gKirbyState.isInhaling = 0;
    gKirbyState.isInhalingBlock = 0;
    gKirbyState.numberInhaling = gKirbyState.numberInhaled;
    D_800E8060[omCurrentObj->objId] = -1;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = 0;
    if (!(gKirbyState.isTurning & 1)) {
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    }
    func_800FB914(0);
    auFunc80020C88();
    func_800A7EB4();
    if ((gKirbyState.floorCollisionNext != 0) && (gKirbyState.ceilingCollisionNext != 0)) {
        gKirbyState.unk30 = 0;
    }
    if ((0.0f == gKirbyHp) && !(0.0f == D_800E7B20[omCurrentObj->objId])) {
        play_sound(0xDC);
    } else if (gKirbyState.damageType >= 2) {
        play_sound(0xD9);
    } else {
        play_sound(0xD8);
    }
    func_8011DA34();
    auSetBGMVolume(0, 0x7800);
    play_music(0, 5);
    func_80176398_ovl3();
    func_800BB498();
    func_800BB468(2, 0);
    D_800D6B58 = 0x400;
    D_800D6B54 = 1;
    D_800BE4F8 = 6;
    func_801230E8(0x20065, 0x20066, 1);
    D_800D6B58 = 0x5A;
    D_800D6B54 = 1;
    D_800BE4F8 = 6;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80176490_ovl3.s")
#endif

void func_80176814_ovl3(s32 arg0) {
    if (gKirbyState.unk30 != 0) {
        func_80153984_ovl3();
        if (func_80121658() != 0) {
            gKirbyState.unk30 = 0;
        }
    }
    func_8011E548();
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_80176860_ovl3(s32 arg0) {
    f32 *temp_a0;
    f32 temp_f0;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;

    D_800E9720[omCurrentObj->objId] = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x15;
    temp_v1 = omCurrentObj->objId;
    temp_a0 = &D_800E3210[temp_v1];
    if (D_800E8AE0[temp_v1] & 0x80) {
        temp_f0 = *temp_a0;
        if ((temp_f0 < 0.0f) && (temp_f0 < -1.0f)) {
            *temp_a0 = -1.0f;
            D_800E3750[omCurrentObj->objId] = -0.4f;
            D_800E3C90[omCurrentObj->objId] = 1.0f;
        }
    }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    if (gKirbyState.previousAction != 0x1E) {
        if (gKirbyState.unk44 != 0) {
            D_800E3210[omCurrentObj->objId] = 6.0f;
            D_800E3750[omCurrentObj->objId] = -0.4f;
            D_800E3C90[omCurrentObj->objId] = 1.0f;
        }
        play_sound(0x10B);
        switch (gKirbyState.unk4) {                 /* irregular */
        case 0:
            func_800AA78C(0x20111, 0x20007, 6.0f);
            func_801230E8(0x20111, 0x20112, 0);
            break;
        case 1:
            func_800AA78C(0x2017D, 0x20009, 6.0f);
            func_801230E8(0x2017D, 0x2017E, 0);
            break;
        case 2:
            func_800AA78C(0x200CF, 0x20007, 6.0f);
            func_801230E8(0x200CF, 0x200D0, 0);
            break;
        }
        D_800DF310[omCurrentObj->objId] = func_80122CA0;
        if (gKirbyState.unk44 != 0) {
            D_800E9720[omCurrentObj->objId] = 9;
            func_800AECC0(4.0f);
            func_800AED20(4.0f);
        }
    }
loop_20:
    if ((gKirbyState.unk17 == 0) && (gKirbyController.buttonPressed & 0x8000)) {
        D_800E9720[omCurrentObj->objId] = 0xF;
        play_sound(0x10B);
        func_800AECC0(4.0f);
        func_800AED20(4.0f);
        D_800E3210[omCurrentObj->objId] = 6.0f;
        D_800E3750[omCurrentObj->objId] = -0.4f;
        D_800E3C90[omCurrentObj->objId] = 6.0f;
    } else if (D_800E9720[omCurrentObj->objId] == 0) {
        if ((gKirbyState.unk17 == 0) && (gKirbyController.buttonHeld & 0x400)) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
            temp_v1_2 = omCurrentObj->objId;
            if (D_800E3C90[temp_v1_2] != 2.5f) {
                D_800E3210[temp_v1_2] = -2.5f;
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3C90[omCurrentObj->objId] = 2.5f;
            }
        } else if ((gKirbyState.unk17 == 0) && (gKirbyController.buttonHeld & 0x800)) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
            temp_v1_3 = omCurrentObj->objId;
            if (D_800E3C90[temp_v1_3] != 1.5f) {
                D_800E3210[temp_v1_3] = 1.5f;
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3C90[omCurrentObj->objId] = 1.5f;
            }
        } else {
            func_800AECC0(1.0f);
            func_800AED20(1.0f);
            D_800E3750[omCurrentObj->objId] = -0.4f;
            D_800E3C90[omCurrentObj->objId] = 1.0f;
        }
    }
    ohSleep(1);
    goto loop_20;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80176860_ovl3.s")
#endif

typedef struct Unk80196CA0 {
    u8 unk0[6];
} Unk80196CA0;

extern Unk80196CA0 D_80196CA0_ovl3;
extern u8 D_8012E7D7;
extern s32 D_800D6B54;
/* D_801974D0_ovl3 now emitted by this TU */
/* D_801974D4_ovl3 now emitted by this TU */
/* D_801974D8_ovl3 now emitted by this TU */
/* D_801974DC_ovl3 now emitted by this TU */

void func_80176DE0_ovl3(s32 arg0) {
    Unk80196CA0 sp28 = D_80196CA0_ovl3;

    D_800E8920[omCurrentObj->objId] = 0;
    func_80153984_ovl3();
    if ((D_8012E7D7 == 0) && (gKirbyController.buttonHeld & 0xF00)) {
        D_800E9560[omCurrentObj->objId] = 0x1E;
    } else if (0.0f < D_800E3210[omCurrentObj->objId]) {
        D_800E9560[omCurrentObj->objId] = 0x1E;
    } else {
        D_800E9560[omCurrentObj->objId]--;
    }
    if (func_80151E94_ovl3(&sp28) == 0) {
        if (D_800E9720[omCurrentObj->objId] != 0) {
            D_800E9720[omCurrentObj->objId]--;
        }
        if (D_8012E7D7 == 0) {
            if (!(gKirbyController.buttonHeld & 0x300)) {
                D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.35f;
                D_800E6850[omCurrentObj->objId] = 0.0f;
            } else {
                D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.24f;
                D_800E6850[omCurrentObj->objId] = 3.4f;
            }
        } else if (D_800D6B54 != 0) {
            D_800E6690[omCurrentObj->objId] = 0.35f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
        }
    }
}

void func_80177000_ovl3(s32 arg0) {
    setProcessMain(gEntityGObjProcessArray4[omCurrentObj->objId], func_801770E0_ovl3);
    D_800DE190[omCurrentObj->objId] = 0;
    D_800DDE10[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800DDE10[omCurrentObj->objId], 2, D_80196CA8_ovl3);
}

void func_80177098_ovl3(GObj *arg0) {
    utilFuncTableJump(D_800DDE10[omCurrentObj->objId], 2, &D_80196CA8_ovl3);
}

extern FUNCLIST D_80196CB0_ovl3;
void func_80120E74(struct GObj *);

void func_801770E0_ovl3(struct GObj *arg0) {
    utilFuncTableJump(D_800DE190[omCurrentObj->objId], 2, &D_80196CB0_ovl3);
    func_80120E74(arg0);
}

void func_80177130_ovl3(s32 arg0) {
    D_800DE190[omCurrentObj->objId] = 0;
    curObjSleepForever();
}

void func_8017716C_ovl3(s32 arg0) {
}

void func_80177174_ovl3(GObj *arg0) {
    D_800EB4E0[omCurrentObj->objId] = 0;
    D_800DE190[omCurrentObj->objId] = 1;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] + -0.05f;
    ohSleep(2);
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] + 0.05f;
    ohSleep(2);
    D_800EB4E0[omCurrentObj->objId] = D_800EB4E0[omCurrentObj->objId] + 1;
    curObjSleepForever();
}

void func_80177270_ovl3(s32 arg0) {
    if (D_800EB4E0[omCurrentObj->objId] != 0) {
        gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
        func_80122FB0(0);
    }
}

s32 func_801772CC_ovl3(s32 arg0) {
    return D_80196CB8_ovl3[arg0];
}

void func_801772E0_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1A;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3750[omCurrentObj->objId] = gKirbyState.unkC4;
    if (gKirbyState.unkC8 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -gKirbyState.unkC8;
    } else {
        D_800E3C90[omCurrentObj->objId] = gKirbyState.unkC8;
    }
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
    if (gKirbyState.unkC0 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
    } else {
        D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
    }
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

typedef struct Unk80196D60 {
    u8 unk0[2];
} Unk80196D60;

extern Unk80196D60 D_80196D60_ovl3;

void func_80177438_ovl3(GObj *arg0) {
    Unk80196D60 sp24 = D_80196D60_ovl3;
    extern s32 D_800D6B54;

    func_80153984_ovl3();
    if ((gKirbyState.unkB == 1) || (gKirbyState.unkB == 2)) {
        return;
    }
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        return;
    }
    if (func_80151E94_ovl3(&sp24) != 0) {
        return;
    }
    if ((gKirbyState.unkB9 == 0) && !(gKirbyState.isTurning & 1)) {
        if (func_80121194() != 0) {
            gKirbyState.isTurning |= 1;
        }
    }
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkB == 4) || (gKirbyState.unkB == 3)) {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(6, 6);
        return;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        set_kirby_action_1(1, 3);
        func_80122FB0(1);
        return;
    }
    if (func_80179060_ovl3(40.0f) != 0) {
        set_kirby_action_1(0x17, 0x1B);
    }
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
    if (gKirbyState.unkC0 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
    } else {
        D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
    }
}

void func_801776E8_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1B;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    if (!(gKirbyController.buttonHeld & 0x300)) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -gKirbyState.unkBC;
        D_800E6850[omCurrentObj->objId] = 0;
    }
    D_800E3750[omCurrentObj->objId] = gKirbyState.unkC4;
    if (gKirbyState.unkC8 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -gKirbyState.unkC8;
    } else {
        D_800E3C90[omCurrentObj->objId] = gKirbyState.unkC8;
    }
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

typedef struct Unk80196D64 {
    u8 unk0[2];
} Unk80196D64;

extern Unk80196D64 D_80196D64_ovl3;

void func_8017782C_ovl3(GObj *arg0) {
    Unk80196D64 sp24 = D_80196D64_ovl3;
    extern s32 D_800D6B54;

    func_80153984_ovl3();
    if ((gKirbyState.unkB == 1) || (gKirbyState.unkB == 2)) {
        return;
    }
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        return;
    }
    if (func_80151E94_ovl3(&sp24) != 0) {
        return;
    }
    if ((gKirbyState.unkB9 == 0) && !(gKirbyState.isTurning & 1)) {
        if (func_80121194() != 0) {
            gKirbyState.isTurning |= 1;
        }
    }
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkB == 4) || (gKirbyState.unkB == 3)) {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(6, 6);
        return;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (!(gKirbyController.buttonHeld & 0x300)) {
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(1, 3);
        func_80122FB0(1);
        return;
    }
    if (func_80179060_ovl3(40.0f) != 0) {
        set_kirby_action_1(6, 6);
    }
    if (gKirbyController.buttonHeld & 0x300) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
        if (gKirbyState.unkC0 < 0.0f) {
            D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
        } else {
            D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
        }
    } else {
        D_800E6850[omCurrentObj->objId] = 0.0f;
    }
}

void func_80177B40_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1C;
    gKirbyState.unk3C = gKirbyState.turnDirection;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
    if (gKirbyState.unkC0 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
    } else {
        D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
    }
    func_801230E8(0x200CF, 0x200D0, 0);
    D_800DF310[omCurrentObj->objId] = func_80122CA0;
    curObjSleepForever();
}

void func_80177CBC_ovl3(GObj *arg0) {
    s16 sp24[2];

    sp24[0] = D_80196D68_ovl3;
    D_800E8920[omCurrentObj->objId] = 0;
    func_80153984_ovl3();
    if (func_80151E94_ovl3(sp24) == 0) {
        if ((gKirbyState.unkB9 == 0) && !(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
            gKirbyState.isTurning |= 1;
        }
        if (((gKirbyState.unk17 != 0) && (gKirbyState.unkB == 4)) || (gKirbyState.unkB == 3)) {
            set_kirby_action_1(6, 6);
            return;
        }
        if (func_80179060_ovl3(60.0f) == 0) {
            if (D_800E8920[omCurrentObj->objId] != 0) {
                set_kirby_action_1(1, 3);
            } else {
                set_kirby_action_1(6, 6);
            }
        }
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
        if (gKirbyState.unkC0 < 0.0f) {
            D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
        } else {
            D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
        }
    }
}

void func_80177E78_ovl3(GObj *arg0) {
    f32 temp;

    *(s16 *) ((u8 *) &D_8012E860 + 0x1A) = 1;
    func_8011D614();
    D_800DDFD0[omCurrentObj->objId] = 0x1D;
    D_800E8920[omCurrentObj->objId] = 0;
    play_sound(0x245);
    temp = 2.35f;
    D_800E3210[omCurrentObj->objId] = 12.0f;
    D_800E3750[omCurrentObj->objId] = -0.325f;
    D_800E3C90[omCurrentObj->objId] = 3.5f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * temp;
    D_800E6690[omCurrentObj->objId] = 0;
    D_800E6850[omCurrentObj->objId] = temp;
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

extern Unk80196D64 D_80196D6C_ovl3;

void func_80177FB4_ovl3(GObj *arg0) {
    Unk80196D64 sp24 = D_80196D6C_ovl3;
    extern s32 D_800D6B54;

    func_80153984_ovl3();
    if ((gKirbyState.unkB == 1) || (gKirbyState.unkB == 2)) {
        return;
    }
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        return;
    }
    if (func_80151E94_ovl3(&sp24) != 0) {
        return;
    }
    if (gKirbyController.buttonHeld & 0x300) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.125f;
        if (func_801210FC() != 0) {
            D_800E6850[omCurrentObj->objId] = 4.05f;
        } else {
            D_800E6850[omCurrentObj->objId] = 1.5f;
        }
    } else {
        D_800E6850[omCurrentObj->objId] = 2.35f;
    }
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkB == 4) || (gKirbyState.unkB == 3)) {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(6, 6);
        return;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (!(gKirbyController.buttonHeld & 0x300)) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(1, 3);
        func_80122FB0(1);
        return;
    }
    if (func_80179060_ovl3(40.0f) != 0) {
        set_kirby_action_1(0x17, 0x1B);
    }
}

void func_801782C8_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1E;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3750[omCurrentObj->objId] = gKirbyState.unkC4;
    if (gKirbyState.unkC8 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -gKirbyState.unkC8;
    } else {
        D_800E3C90[omCurrentObj->objId] = gKirbyState.unkC8;
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkC0;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
    D_800E6850[omCurrentObj->objId] = 0;
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

typedef struct Unk80196D70 {
    u8 unk0[2];
} Unk80196D70;

extern Unk80196D70 D_80196D70_ovl3;

void func_80178420_ovl3(GObj *arg0) {
    Unk80196D70 sp24 = D_80196D70_ovl3;
    extern s32 D_800D6B54;

    func_80153984_ovl3();
    if ((gKirbyState.unkB == 1) || (gKirbyState.unkB == 2)) {
        return;
    }
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        return;
    }
    if (func_80151E94_ovl3(&sp24) != 0) {
        return;
    }
    if ((gKirbyState.unkB9 == 0) && !(gKirbyState.isTurning & 1)) {
        if (func_80121194() != 0) {
            gKirbyState.isTurning |= 1;
        }
    }
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkB == 4) || (gKirbyState.unkB == 3)) {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(6, 6);
        return;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (!(gKirbyController.buttonHeld & 0x300)) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(1, 3);
        func_80122FB0(1);
        return;
    }
    if (func_80179060_ovl3(40.0f) != 0) {
        set_kirby_action_1(0x17, 0x1B);
        return;
    }
    /* the integer 0 here is load-bearing: `0.0f` shares the earlier blocks'
       constant and rotates this block's FP registers down one slot (7/194) */
    if (0 == D_800E64D0[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = -0.9806650281f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    }
}

void func_80178728_ovl3(GObj *arg0) {
    gKirbyState.unkBA = 1;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1F;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3210[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = gKirbyState.unkC4;
    if (gKirbyState.unkC8 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -gKirbyState.unkC8;
    } else {
        D_800E3C90[omCurrentObj->objId] = gKirbyState.unkC8;
    }
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

extern Unk80196C9C D_80196D74_ovl3;

void func_8017883C_ovl3(s32 arg0) {
    Unk80196C9C sp24 = D_80196D74_ovl3;

    D_800E8920[omCurrentObj->objId] = 0;
    func_80153984_ovl3();
    if (gKirbyState.unkB == 1) {
        return;
    }
    if (gKirbyState.unkB == 2) {
        return;
    }
    if (func_80151E94_ovl3(&sp24) != 0) {
        return;
    }
    if (gKirbyState.unkB9 == 0) {
        if (!(gKirbyState.isTurning & 1)) {
            if (func_80121194() != 0) {
                gKirbyState.isTurning |= 1;
            }
        }
    }
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkB == 4) || (gKirbyState.unkB == 3)) {
        set_kirby_action_1(6, 6);
        return;
    }
    if (gKirbyController.buttonHeld & 0x300) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
        if (gKirbyState.unkC0 < 0.0f) {
            D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
        } else {
            D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
        }
    } else {
        D_800E6850[omCurrentObj->objId] = 0.0f;
    }
}

void func_801789D8_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x20;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gKirbyState.unk44 = 0;
    gKirbyState.unk3C = 2;
    D_800E9560[omCurrentObj->objId] = 8;
    func_800AA78C(0x200CF, 0x20007, 3.0f);
    func_801230E8(0x200CF, 0x200D0, 0);
    D_800DF310[omCurrentObj->objId] = func_80122CA0;
    curObjSleepForever();
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern u16 D_80196D78_ovl3;

void func_80178B18_ovl3(s32 arg0) {
    u16 sp24;
    s32 sp20;
    s32 *var_a0;
    s32 var_t3;
    s32 var_v1;
    struct Player *var_a2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;

    sp24 = D_80196D78_ovl3;
    D_800E8920[omCurrentObj->objId] = 0;
    func_80153984_ovl3();
    if (func_80151E94_ovl3(&sp24) == 0) {
        sp20 = 0;
        if (((gKirbyState.unk17 != 0) && (gKirbyState.unkB == 4)) || (gKirbyState.unkB == 3)) {
            set_kirby_action_1(6, 6);
            return;
        }
        temp_v1 = omCurrentObj->objId;
        var_v1 = temp_v1 * 4;
        if (!(D_800E8AE0[temp_v1] & 6) || ((var_a2 = &gKirbyState, (func_80179060_ovl3(60.0f) == 0)) && (temp_v1_2 = omCurrentObj->objId, var_v1 = temp_v1_2 * 4, (D_800E8920[temp_v1_2] != 0)))) {
            if (*(D_800E8920 + var_v1) != 0) {
                set_kirby_action_1(1, 3);
            } else {
                set_kirby_action_1(6, 6);
            }
            var_a2 = &gKirbyState;
        }
        if (var_a2->unk44 == 0) {
            var_a2 = &gKirbyState;
            if ((func_80179060_ovl3(60.0f) == 0) || (temp_v1_3 = omCurrentObj->objId, (D_800E9560[temp_v1_3] == 0))) {
                D_800E3750[omCurrentObj->objId] = 0.0f;
                temp_v1_4 = omCurrentObj->objId;
                D_800E3210[temp_v1_4] = D_800E3750[temp_v1_4];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                D_800E9560[omCurrentObj->objId] = 8;
                gKirbyState.unk44 = 1;
            } else if (gKirbyState.unk3C == 2) {
                sp20 = 1;
                D_800E3210[temp_v1_3] = 1.0f;
                D_800E3750[omCurrentObj->objId] = -0.015f;
                D_800E3C90[omCurrentObj->objId] = 0.0f;
                gKirbyState.unk3C = 0;
                var_a0 = &D_800E9560[omCurrentObj->objId];
                var_t3 = *var_a0 - 1;
                goto block_22;
            }
        } else {
            temp_v1_5 = omCurrentObj->objId;
            if (D_800E8920[temp_v1_5] != 0) {
                D_800E3750[temp_v1_5] = 0.0f;
                temp_v1_6 = omCurrentObj->objId;
                D_800E3210[temp_v1_6] = D_800E3750[temp_v1_6];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                D_800E9560[omCurrentObj->objId] = 8;
                var_a2->unk44 = 0;
            } else if (var_a2->unk3C == 1) {
                sp20 = 1;
                D_800E3210[temp_v1_5] = -1.0f;
                D_800E3750[omCurrentObj->objId] = 0.015f;
                D_800E3C90[omCurrentObj->objId] = 0.0f;
                var_a2->unk3C = 0;
                var_a0 = &D_800E9560[omCurrentObj->objId];
                var_t3 = *var_a0 - 1;
block_22:
                *var_a0 = var_t3;
            }
        }
        if ((var_a2->unkB9 == 0) && !(var_a2->isTurning & 1) && (func_80121194() != 0)) {
            gKirbyState.isTurning |= 1;
        }
        if (sp20 != 0) {
            if (!(gKirbyController.buttonHeld & 0x300)) {
                if (random_soft_s32_range(3) & 1) {
                    D_800E64D0[omCurrentObj->objId] = 0.5f;
                    D_800E6690[omCurrentObj->objId] = -0.0085f;
                    D_800E6850[omCurrentObj->objId] = 0.0f;
                    return;
                }
                D_800E64D0[omCurrentObj->objId] = -0.5f;
                D_800E6690[omCurrentObj->objId] = 0.0085f;
                D_800E6850[omCurrentObj->objId] = 0.0f;
                return;
            }
            temp_v1_7 = omCurrentObj->objId;
            D_800E64D0[temp_v1_7] = D_800E6A10[temp_v1_7] * 0.5f;
            temp_v1_8 = omCurrentObj->objId;
            D_800E6690[temp_v1_8] = D_800E6A10[temp_v1_8] * -0.0085f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
        }
    }
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80178B18_ovl3.s")
#endif

s32 func_80179060_ovl3(f32 arg0) {
    f32 sp28[4];
    s32 count;
    s32 i;

    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        sp28[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp28[1] = gEntitiesNextPosYArray[omCurrentObj->objId] + arg0;
        sp28[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
        count = func_8010DF9C(sp28);
        for (i = 0; (u32) i < (u32) count; i++) {
            if (D_8012BCA0[i + 0x10][4] == 1) {
                return 1;
            }
        }
    }
    return 0;
}

s32 func_80179130_ovl3(void) {
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkD != 2) || (gKirbyState.action == 0x14)) {
        return 0;
    }
    switch (gKirbyState.unkB8) {
        case 0:
        case 1:
        case 2:
        default:
            return 0;
        case 3:
            if ((func_80179060_ovl3(40.0f) != 0) || (D_800E8920[omCurrentObj->objId] != 0)) {
                return 0;
            }
            set_kirby_action_1(0x1C, 0x14);
            break;
        case 4:
            if ((func_80179060_ovl3(40.0f) != 0) || (D_800E8920[omCurrentObj->objId] != 0)) {
                return 0;
            }
            set_kirby_action_1(0x1D, 0x14);
            break;
        case 5:
            if (func_80179060_ovl3(60.0f) == 0) {
                return 0;
            }
            set_kirby_action_1(0x1E, 0x14);
            break;
        case 6:
            return 0;
        case 7:
            if ((func_80179060_ovl3(40.0f) != 0) || (D_800E8920[omCurrentObj->objId] != 0)) {
                return 0;
            }
            set_kirby_action_1(0x20, 0x14);
            break;
        case 8:
            if (gKirbyState.unkBA == 0) {
                if (func_80179060_ovl3(40.0f) != 0) {
                    return 0;
                }
                set_kirby_action_1(0x21, 0x14);
            }
            break;
        case 9:
            if (func_80179060_ovl3(60.0f) == 0) {
                return 0;
            }
            set_kirby_action_1(0x22, 0x14);
            break;
    }
    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    return 1;
}
