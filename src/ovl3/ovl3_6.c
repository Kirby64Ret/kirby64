#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "Player.h"

extern u8 D_801957D4_ovl3[];

extern void func_80153984_ovl3(void);
extern s32 func_801217B8(void);
extern void func_8011D67C(void);
extern void func_8011DC5C(void);
extern void func_8011DC04(s32);
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_2_2.h"

extern u8 D_8019338C_ovl3[];
extern u8 D_8019154C_ovl3[];
extern s32 D_8012E80C[];

extern s32 func_801ACCA0_ovl7(s32, s32, f32, f32);
extern s32 func_800A8234(s32, s32, s32);
extern s32 func_80123170(void);
extern void func_800FB914(s32);
extern void func_800A7F74(s32, s32, s32, f32, f32, f32);

extern void func_8011CF58(void);
extern s32 func_80111A04(u8 *, s32);
extern void func_80111C4C(s32);
extern s32 func_801693C4_ovl3(s32);
extern s32 func_800A8100(s32, s32, s32, struct DObj *);
extern void func_80122F08(s32);
extern void func_801230E8(s32, s32, s32);
extern s32 func_801632B8_ovl3(s32);
extern s32 random_soft_s32_range(s32);
extern s32 D_8012E7FC;
#include "DObj.h"
#include "unk_structs/D_800E1B50.h"
extern void func_8015449C_ovl3(u8 *, s32);

#ifdef MIPS_TO_C
/* FACTORY: 27/308, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming, the goto done: label is a shared cleanup path, not a ladder) so it seals verbatim. Queued for the permuter. */
/* PORT: the ability dash-attack coroutine (track action 0x28, model
 * 0x20013), from asm/nonmatchings/ovl3/ovl3_6/func_8017CF60_ovl3.s (via
 * m2c). Arms the ability, installs the 0x28 anim-pointer table and the
 * D_80190580 PlyEntry handle, kills vertical motion, gives Kirby a 0.5
 * forward drift with a 10.0 speed cap (5.0 in water), and one-shots anim
 * 0x201B8. It then rides two func_800AF230-polled anim phases (0x201B8
 * windup, then 0x201B9 with state word unk44 = 1) into a D_800E9720
 * countdown (0x14 frames on land, 0xF in water); a scripted-control grab
 * (unk17) at any point zeroes the drive and skips ahead. The exit path
 * plays 0x201BA, releases the sound/ability locks, triples the leftover
 * drift out of water, burns the ability charge via func_8011D614 and
 * parks on the skid pair 0x20188/0x20189.
 *
 * Port notes: the ROM's redundant ABS ladder is just the positive dash
 * speed; all four 65535.0f caps are the D_80197664..70 rodata cells
 * inlined; func_800AA018/func_800AA154 take one s32 (m2c's extra float
 * and GObj args are leftover registers); the second func_800AA018 arg is
 * the float-bit garble 0x201B9. */
void func_8017CF60_ovl3(s32 arg0) {
    extern f32 *D_801928D8_ovl3[];
    extern u8 D_80190580_ovl3[];
    /* func_800AA018/func_800AA154 stay implicitly declared: later PC-visible
     * functions in this TU call them without a prototype, and gnu90 folds
     * those to int(). */
    s32 func_800AF230(void);
    void func_8011E0E8(void);
    void func_80120A28(void);
    void func_8011D614(void);
    void ohSleep(s32);
    void curObjSleepForever(void);
    s32 id;
    s32 pre;
    f32 spd;

    gKirbyState.unk30 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk7 = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    id = omCurrentObj->objId;
    D_800DDFD0[id] = 0x28;
    D_800E0490[id] = D_801928D8_ovl3;
    gKirbyState.unk15C = (u32) (uintptr_t) D_80190580_ovl3;
    gKirbyState.unk44 = 0;
    func_8011DC04(0xAA);
    func_80122F08(0x20013);
    gKirbyState.unk154 = 2;
    id = omCurrentObj->objId;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[id] = 65535.0f;
    id = omCurrentObj->objId;
    D_800E6690[id] = D_800E6A10[id] * 0.5f;
    id = omCurrentObj->objId;
    if (!(D_800E8AE0[id] & 6)) {
        spd = 10.0f;
    } else {
        spd = 5.0f;
    }
    D_800E6850[id] = spd;
    func_800AA018(0x201B8);
    while (func_800AF230() == 0) {
        if (gKirbyState.unk17 != 0) {
            id = omCurrentObj->objId;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[id] = 65535.0f;
            goto done;
        }
        ohSleep(1);
    }
    gKirbyState.unk44 = 1;
    func_800AA018(0x201B9);
    while (func_800AF230() == 0) {
        if (gKirbyState.unk17 != 0) {
            id = omCurrentObj->objId;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[id] = 65535.0f;
            goto done;
        }
        ohSleep(1);
    }
    id = omCurrentObj->objId;
    if (!(D_800E8AE0[id] & 6)) {
        D_800E9720[id] = 0x14;
    } else {
        D_800E9720[id] = 0xF;
    }
    pre = D_800E9720[id];
    D_800E9720[id] = pre - 1;
    while (pre != 0) {
        if (gKirbyState.unk17 != 0) {
            id = omCurrentObj->objId;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[id] = 65535.0f;
            break;
        }
        ohSleep(1);
        id = omCurrentObj->objId;
        pre = D_800E9720[id];
        D_800E9720[id] = pre - 1;
    }
done:
    gKirbyState.unk44 = -1;
    func_800AA154(0x201BA);
    func_8011DC5C();
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    func_80120A28();
    id = omCurrentObj->objId;
    if (!(D_800E8AE0[id] & 6)) {
        D_800E6690[id] *= 3.0f;
    }
    func_8011D614();
    func_801230E8(0x20188, 0x20189, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the ability dash-attack coroutine (track action 0x28, model
 * 0x20013), from asm/nonmatchings/ovl3/ovl3_6/func_8017CF60_ovl3.s (via
 * m2c). Arms the ability, installs the 0x28 anim-pointer table and the
 * D_80190580 PlyEntry handle, kills vertical motion, gives Kirby a 0.5
 * forward drift with a 10.0 speed cap (5.0 in water), and one-shots anim
 * 0x201B8. It then rides two func_800AF230-polled anim phases (0x201B8
 * windup, then 0x201B9 with state word unk44 = 1) into a D_800E9720
 * countdown (0x14 frames on land, 0xF in water); a scripted-control grab
 * (unk17) at any point zeroes the drive and skips ahead. The exit path
 * plays 0x201BA, releases the sound/ability locks, triples the leftover
 * drift out of water, burns the ability charge via func_8011D614 and
 * parks on the skid pair 0x20188/0x20189.
 *
 * Port notes: the ROM's redundant ABS ladder is just the positive dash
 * speed; all four 65535.0f caps are the D_80197664..70 rodata cells
 * inlined; func_800AA018/func_800AA154 take one s32 (m2c's extra float
 * and GObj args are leftover registers); the second func_800AA018 arg is
 * the float-bit garble 0x201B9. */
void func_8017CF60_ovl3(s32 arg0) {
    extern f32 *D_801928D8_ovl3[];
    extern u8 D_80190580_ovl3[];
    /* func_800AA018/func_800AA154 stay implicitly declared: later PC-visible
     * functions in this TU call them without a prototype, and gnu90 folds
     * those to int(). */
    s32 func_800AF230(void);
    void func_8011E0E8(void);
    void func_80120A28(void);
    void func_8011D614(void);
    void ohSleep(s32);
    void curObjSleepForever(void);
    s32 id;
    s32 pre;
    f32 spd;

    gKirbyState.unk30 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk7 = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    id = omCurrentObj->objId;
    D_800DDFD0[id] = 0x28;
    D_800E0490[id] = D_801928D8_ovl3;
    gKirbyState.unk15C = (u32) (uintptr_t) D_80190580_ovl3;
    gKirbyState.unk44 = 0;
    func_8011DC04(0xAA);
    func_80122F08(0x20013);
    gKirbyState.unk154 = 2;
    id = omCurrentObj->objId;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[id] = 65535.0f;
    id = omCurrentObj->objId;
    D_800E6690[id] = D_800E6A10[id] * 0.5f;
    id = omCurrentObj->objId;
    if (!(D_800E8AE0[id] & 6)) {
        spd = 10.0f;
    } else {
        spd = 5.0f;
    }
    D_800E6850[id] = spd;
    func_800AA018(0x201B8);
    while (func_800AF230() == 0) {
        if (gKirbyState.unk17 != 0) {
            id = omCurrentObj->objId;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[id] = 65535.0f;
            goto done;
        }
        ohSleep(1);
    }
    gKirbyState.unk44 = 1;
    func_800AA018(0x201B9);
    while (func_800AF230() == 0) {
        if (gKirbyState.unk17 != 0) {
            id = omCurrentObj->objId;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[id] = 65535.0f;
            goto done;
        }
        ohSleep(1);
    }
    id = omCurrentObj->objId;
    if (!(D_800E8AE0[id] & 6)) {
        D_800E9720[id] = 0x14;
    } else {
        D_800E9720[id] = 0xF;
    }
    pre = D_800E9720[id];
    D_800E9720[id] = pre - 1;
    while (pre != 0) {
        if (gKirbyState.unk17 != 0) {
            id = omCurrentObj->objId;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[id] = 65535.0f;
            break;
        }
        ohSleep(1);
        id = omCurrentObj->objId;
        pre = D_800E9720[id];
        D_800E9720[id] = pre - 1;
    }
done:
    gKirbyState.unk44 = -1;
    func_800AA154(0x201BA);
    func_8011DC5C();
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    func_80120A28();
    id = omCurrentObj->objId;
    if (!(D_800E8AE0[id] & 6)) {
        D_800E6690[id] *= 3.0f;
    }
    func_8011D614();
    func_801230E8(0x20188, 0x20189, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017CF60_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 122/301, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming) so it seals verbatim. Queued for the permuter. */
/* PORT: the dash-attack per-frame render/service routine (paired with the
 * 0x28 coroutine above), from asm/nonmatchings/ovl3/ovl3_6/
 * func_8017D430_ovl3.s (via m2c). On a level-transition tick (D_8012E7E8
 * word +8) it just services the base tracks and bails. While the whirl
 * state word (D_8012E7FC word +8) is >= 0 it enters the D_8019139C
 * particle-shape set on the body DObj scaled by the ramp cell D_800EA6E0
 * (rescaling each shape's first three body floats by the ramp), draws the
 * D_80193D70 matrix overlay via func_801521F0_ovl3/func_8015449C_ovl3,
 * and ramps D_800EA6E0 up by 0.04 toward 1.0. Every tick it applies the
 * base motion, subtracts the global sink D_800EC9E4 from the Y track,
 * re-asserts the 0.5 drift/10-or-5 speed cap while the ability is armed,
 * zeroes X velocity on a wall hit, and falls back to the plain model when
 * 0x20007 is resident. In debug mode (D_8012E860, state 0) it emits the
 * frame-indexed afterimage: pair table D_80191424 (two floats per entry,
 * 65535.0f = none) positions a D_80191404 one-shot shape anchored on the
 * body DObj, and D_80194348[frame] picks an extra overlay for
 * func_8015449C_ovl3; indexes past 0x18 utilPrintf the "data over"
 * message.
 *
 * Port notes: the shape header/record layout is plyshot.c's Unk80168408
 * pair (N64 offsets kept: count at header +0x1C, record array pointer at
 * +0x20, 0x28-stride records); func_80168408_ovl3 keeps this file's
 * (f32 *, void *, f32) spelling and its s32 result comes back through
 * (uintptr_t) (static data sits below 4GB on this build, same deal as the
 * plyshot arms' (s32)(uintptr_t) handles); D_80191424 is pair-indexed
 * (N64 stride 8 = two f32s); D_80194348 is a native pointer array on PC;
 * D_80197674/D_80197678 are 0.04f/65535.0f inlined; func_800AA888 takes
 * one s32 (m2c's &gKirbyState is a leftover register). */
typedef struct PcO36Shape {
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
} PcO36Shape;

typedef struct PcO36ShapeHdr {
    u8 pad0[0x1C];
    s32 unk1C;
    PcO36Shape *unk20;
} PcO36ShapeHdr;

void func_8017D430_ovl3(void *arg0) {
    extern s32 D_8012E7E8;
    extern s32 D_8012E860;
    extern f32 D_800EC9E4;
    extern f32 D_8019139C_ovl3[];
    extern f32 D_80191404_ovl3[];
    extern f32 D_80191424_ovl3[];
    extern f32 D_80193D70_ovl3[][4];
    extern u8 D_80193DC0_ovl3[];
    extern void *D_80194348_ovl3[];
    extern char D_80197570_ovl3[];
    extern s32 func_80168408_ovl3(f32 *, void *, f32);
    extern s32 func_801521F0_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    s32 func_800AA888(s32);
    void utilPrintf(char *, ...);
    PcO36ShapeHdr *hdr;
    PcO36Shape *rec;
    s32 i;
    s32 id;
    s32 frame;
    f32 *pair;
    u8 *ovl;

    if (*(s32 *) ((u8 *) &D_8012E7E8 + 8) != 0) {
        func_80153984_ovl3();
        func_801217B8();
        func_8011D67C();
        return;
    }
    if (*(s32 *) ((u8 *) &D_8012E7FC + 8) >= 0) {
        id = omCurrentObj->objId;
        hdr = (PcO36ShapeHdr *) (uintptr_t) func_80168408_ovl3(
            D_8019139C_ovl3, D_800DFBD0[id][2], D_800EA6E0[id]);
        if (hdr != NULL) {
            rec = hdr->unk20;
            for (i = 0; i < hdr->unk1C; i++, rec++) {
                rec->unkC *= D_800EA6E0[omCurrentObj->objId];
                rec->unk10 *= D_800EA6E0[omCurrentObj->objId];
                rec->unk14 *= D_800EA6E0[omCurrentObj->objId];
            }
            func_80111C4C((s32) (uintptr_t) hdr);
        }
        func_801521F0_ovl3(D_80193D70_ovl3, (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                           D_80193DC0_ovl3[0], D_800EA6E0[omCurrentObj->objId]);
        func_8015449C_ovl3(D_80193DC0_ovl3, 0);
        if (D_800EA6E0[omCurrentObj->objId] != 1.0f) {
            D_800EA6E0[omCurrentObj->objId] += 0.04f;
            if (D_800EA6E0[omCurrentObj->objId] > 1.0f) {
                D_800EA6E0[omCurrentObj->objId] = 1.0f;
            }
        }
    }
    func_80153984_ovl3();
    gEntitiesNextPosYArray[omCurrentObj->objId] -= D_800EC9E4;
    func_8011CF58();
    if (gKirbyState.abilityInUse != 0) {
        f32 spd;

        id = omCurrentObj->objId;
        D_800E6690[id] = D_800E6A10[id] * 0.5f;
        id = omCurrentObj->objId;
        if (!(D_800E8AE0[id] & 6)) {
            spd = 10.0f;
        } else {
            spd = 5.0f;
        }
        D_800E6850[id] = spd;
    }
    if (gKirbyState.horizontalCollision != 0) {
        D_800E64D0[omCurrentObj->objId] = 0.0f;
    }
    if (func_800AA888(0x20007) == 0) {
        D_800E8920[omCurrentObj->objId] = 0;
    } else {
        func_801217B8();
    }
    if ((D_8012E860 != 0) && (*(s32 *) ((u8 *) &D_8012E7FC + 8) == 0)) {
        /* m2c's arg0->unk40 is the GObj's animTimer (the raw +0x40 only
         * holds on the N64 layout -- LP64 moves it). */
        frame = (s32) (((GObj *) arg0)->animTimer * 0.5f);
        if (frame >= 0x18) {
            utilPrintf(D_80197570_ovl3, frame);
        } else {
            pair = &D_80191424_ovl3[frame * 2];
            if (pair[0] != 65535.0f) {
                hdr = (PcO36ShapeHdr *) (uintptr_t) func_80168408_ovl3(
                    D_80191404_ovl3, NULL, D_800EA6E0[omCurrentObj->objId]);
                hdr->unk20->unkC = 0.0f;
                hdr->unk20->unk10 = 0.0f;
                hdr->unk20->unk14 = pair[0];
                hdr->unk20->unk18 = pair[1];
                hdr->unk20->unk8 =
                    (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][2];
                func_80111C4C((s32) (uintptr_t) hdr);
            }
        }
        ovl = D_80194348_ovl3[frame];
        if (ovl != NULL) {
            func_8015449C_ovl3(ovl, 0);
        }
    }
}
#elif defined(PORT)
/* PORT: the dash-attack per-frame render/service routine (paired with the
 * 0x28 coroutine above), from asm/nonmatchings/ovl3/ovl3_6/
 * func_8017D430_ovl3.s (via m2c). On a level-transition tick (D_8012E7E8
 * word +8) it just services the base tracks and bails. While the whirl
 * state word (D_8012E7FC word +8) is >= 0 it enters the D_8019139C
 * particle-shape set on the body DObj scaled by the ramp cell D_800EA6E0
 * (rescaling each shape's first three body floats by the ramp), draws the
 * D_80193D70 matrix overlay via func_801521F0_ovl3/func_8015449C_ovl3,
 * and ramps D_800EA6E0 up by 0.04 toward 1.0. Every tick it applies the
 * base motion, subtracts the global sink D_800EC9E4 from the Y track,
 * re-asserts the 0.5 drift/10-or-5 speed cap while the ability is armed,
 * zeroes X velocity on a wall hit, and falls back to the plain model when
 * 0x20007 is resident. In debug mode (D_8012E860, state 0) it emits the
 * frame-indexed afterimage: pair table D_80191424 (two floats per entry,
 * 65535.0f = none) positions a D_80191404 one-shot shape anchored on the
 * body DObj, and D_80194348[frame] picks an extra overlay for
 * func_8015449C_ovl3; indexes past 0x18 utilPrintf the "data over"
 * message.
 *
 * Port notes: the shape header/record layout is plyshot.c's Unk80168408
 * pair (N64 offsets kept: count at header +0x1C, record array pointer at
 * +0x20, 0x28-stride records); func_80168408_ovl3 keeps this file's
 * (f32 *, void *, f32) spelling and its s32 result comes back through
 * (uintptr_t) (static data sits below 4GB on this build, same deal as the
 * plyshot arms' (s32)(uintptr_t) handles); D_80191424 is pair-indexed
 * (N64 stride 8 = two f32s); D_80194348 is a native pointer array on PC;
 * D_80197674/D_80197678 are 0.04f/65535.0f inlined; func_800AA888 takes
 * one s32 (m2c's &gKirbyState is a leftover register). */
typedef struct PcO36Shape {
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
} PcO36Shape;

typedef struct PcO36ShapeHdr {
    u8 pad0[0x1C];
    s32 unk1C;
    PcO36Shape *unk20;
} PcO36ShapeHdr;

void func_8017D430_ovl3(void *arg0) {
    extern s32 D_8012E7E8;
    extern s32 D_8012E860;
    extern f32 D_800EC9E4;
    extern f32 D_8019139C_ovl3[];
    extern f32 D_80191404_ovl3[];
    extern f32 D_80191424_ovl3[];
    extern f32 D_80193D70_ovl3[][4];
    extern u8 D_80193DC0_ovl3[];
    extern void *D_80194348_ovl3[];
    extern char D_80197570_ovl3[];
    extern s32 func_80168408_ovl3(f32 *, void *, f32);
    extern s32 func_801521F0_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    s32 func_800AA888(s32);
    void utilPrintf(char *, ...);
    PcO36ShapeHdr *hdr;
    PcO36Shape *rec;
    s32 i;
    s32 id;
    s32 frame;
    f32 *pair;
    u8 *ovl;

    if (*(s32 *) ((u8 *) &D_8012E7E8 + 8) != 0) {
        func_80153984_ovl3();
        func_801217B8();
        func_8011D67C();
        return;
    }
    if (*(s32 *) ((u8 *) &D_8012E7FC + 8) >= 0) {
        id = omCurrentObj->objId;
        hdr = (PcO36ShapeHdr *) (uintptr_t) func_80168408_ovl3(
            D_8019139C_ovl3, D_800DFBD0[id][2], D_800EA6E0[id]);
        if (hdr != NULL) {
            rec = hdr->unk20;
            for (i = 0; i < hdr->unk1C; i++, rec++) {
                rec->unkC *= D_800EA6E0[omCurrentObj->objId];
                rec->unk10 *= D_800EA6E0[omCurrentObj->objId];
                rec->unk14 *= D_800EA6E0[omCurrentObj->objId];
            }
            func_80111C4C((s32) (uintptr_t) hdr);
        }
        func_801521F0_ovl3(D_80193D70_ovl3, (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                           D_80193DC0_ovl3[0], D_800EA6E0[omCurrentObj->objId]);
        func_8015449C_ovl3(D_80193DC0_ovl3, 0);
        if (D_800EA6E0[omCurrentObj->objId] != 1.0f) {
            D_800EA6E0[omCurrentObj->objId] += 0.04f;
            if (D_800EA6E0[omCurrentObj->objId] > 1.0f) {
                D_800EA6E0[omCurrentObj->objId] = 1.0f;
            }
        }
    }
    func_80153984_ovl3();
    gEntitiesNextPosYArray[omCurrentObj->objId] -= D_800EC9E4;
    func_8011CF58();
    if (gKirbyState.abilityInUse != 0) {
        f32 spd;

        id = omCurrentObj->objId;
        D_800E6690[id] = D_800E6A10[id] * 0.5f;
        id = omCurrentObj->objId;
        if (!(D_800E8AE0[id] & 6)) {
            spd = 10.0f;
        } else {
            spd = 5.0f;
        }
        D_800E6850[id] = spd;
    }
    if (gKirbyState.horizontalCollision != 0) {
        D_800E64D0[omCurrentObj->objId] = 0.0f;
    }
    if (func_800AA888(0x20007) == 0) {
        D_800E8920[omCurrentObj->objId] = 0;
    } else {
        func_801217B8();
    }
    if ((D_8012E860 != 0) && (*(s32 *) ((u8 *) &D_8012E7FC + 8) == 0)) {
        /* m2c's arg0->unk40 is the GObj's animTimer (the raw +0x40 only
         * holds on the N64 layout -- LP64 moves it). */
        frame = (s32) (((GObj *) arg0)->animTimer * 0.5f);
        if (frame >= 0x18) {
            utilPrintf(D_80197570_ovl3, frame);
        } else {
            pair = &D_80191424_ovl3[frame * 2];
            if (pair[0] != 65535.0f) {
                hdr = (PcO36ShapeHdr *) (uintptr_t) func_80168408_ovl3(
                    D_80191404_ovl3, NULL, D_800EA6E0[omCurrentObj->objId]);
                hdr->unk20->unkC = 0.0f;
                hdr->unk20->unk10 = 0.0f;
                hdr->unk20->unk14 = pair[0];
                hdr->unk20->unk18 = pair[1];
                hdr->unk20->unk8 =
                    (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][2];
                func_80111C4C((s32) (uintptr_t) hdr);
            }
        }
        ovl = D_80194348_ovl3[frame];
        if (ovl != NULL) {
            func_8015449C_ovl3(ovl, 0);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017D430_ovl3.s")
#endif

extern void func_8011E0E8(void);
extern void func_80120A28(void);
extern void ohSleep(s32);
extern void play_sound(s32);
extern void curObjSleepForever(void);
void func_8017DAD8_ovl3(s32, s32, f32);

void func_8017D8E8_ovl3(s32 arg0) {
    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.unk3C = -1;
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk4C = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x29;
    D_800EA8A0[omCurrentObj->objId] = 1.0f;
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    gKirbyState.unk44 = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_80120A28();
    func_801230E8(0x201A7, 0x201A8, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20010);
    gKirbyState.unk154 = 7;
    gKirbyState.unk4C = func_800A8234(2, 1, 0x2C);
    func_801230E8(0x201A5, 0x201A6, 0);
    D_800DF310[omCurrentObj->objId] = func_8017DAD8_ovl3;
    while (1) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        if ((gKirbyController.buttonHeld & 0x4000) == 0) {
            break;
        }
        ohSleep(1);
    }
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_801230E8(0x201A9, 0x201AA, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8017DAD8_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 idx;
    s32 rnd;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            idx = func_801632B8_ovl3(3);
            D_800E1B50[idx + 0x70] = (struct EnemyRecord *) arg0;
            do {
                rnd = random_soft_s32_range(5);
            } while (rnd == gKirbyState.unk3C);
            D_8012E7FC = rnd;
            // The volatile read is load-bearing: it stops IDO CSEing this load
            // with the loop's own compare, which the ROM re-reads.
            D_800EC2E0[idx].as_s32 = *(vs32 *) &gKirbyState.unk3C;
            D_800EC660[idx] = D_800EA8A0[omCurrentObj->objId];
            D_800EA8A0[omCurrentObj->objId] = -D_800EA8A0[omCurrentObj->objId];
        }
    }
}

extern f32 D_8019767C_ovl3;
extern f32 D_80197680_ovl3;
extern f32 D_80197684_ovl3;
extern f32 D_80197688_ovl3;
extern u8 D_80191508_ovl3[];
extern u8 D_80193250_ovl3[];

void func_8017DBB8_ovl3(s32 arg0) {
    s32 flag;
    Vector sp30;
    s32 *p;
    s32 func_80120CCC(f32, f32);
    void func_800B2340(Vector *, s32, s32);
    s32 func_800AA888(s32);
    void func_8017DF60_ovl3(s32);
    extern s32 D_8012E7E8;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (*(s32 *) ((u8 *) &D_8012E7E8 + 8) != 0) {
        func_8011D67C();
        return;
    }
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        flag = func_80120CCC(D_8019767C_ovl3, D_80197680_ovl3);
    } else {
        flag = func_80120CCC(D_80197684_ovl3, D_80197688_ovl3);
    }
    if (gKirbyState.unk4C != 0) {
        p = (s32 *) gKirbyState.unk4C;
        func_800B2340(&sp30, D_800DFBD0[omCurrentObj->objId][10], 0xFFFF);
        ((f32 *) p[0x13])[1] = sp30.x;
        ((f32 *) p[0x13])[2] = sp30.y;
        ((f32 *) p[0x13])[3] = sp30.z;
    }
    if (flag == 0) {
        if (gKirbyState.unk44 == 0) {
            if (gKirbyController.buttonHeld & 0x100) {
                gKirbyState.unk44 = 1;
            } else {
                gKirbyState.unk44 = -1;
            }
        } else if (gKirbyState.unk44 == 1) {
            if (gKirbyController.buttonHeld & 0x100) {
                func_8017DF60_ovl3(1);
            } else {
                func_8017DF60_ovl3(0);
            }
            if (D_800EA6E0[omCurrentObj->objId] == 0.0f) {
                if (gKirbyController.buttonHeld & 0x200) {
                    *(s32 *) ((u8 *) &D_8012E7FC + 8) = -1;
                }
            }
            D_800DFBD0[omCurrentObj->objId][7]->angle.v.y = D_800EA6E0[omCurrentObj->objId];
            D_800DFBD0[omCurrentObj->objId][7]->angle.v.z = -D_800EA6E0[omCurrentObj->objId];
            D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = D_800EA6E0[omCurrentObj->objId];
        } else {
            if (gKirbyController.buttonHeld & 0x200) {
                func_8017DF60_ovl3(1);
            } else {
                func_8017DF60_ovl3(0);
            }
            if (D_800EA6E0[omCurrentObj->objId] == 0.0f) {
                if (gKirbyController.buttonHeld & 0x100) {
                    *(s32 *) ((u8 *) &D_8012E7FC + 8) = 1;
                }
            }
            D_800DFBD0[omCurrentObj->objId][7]->angle.v.y = -D_800EA6E0[omCurrentObj->objId];
            D_800DFBD0[omCurrentObj->objId][7]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
            D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = -D_800EA6E0[omCurrentObj->objId];
        }
    }
    if (func_800AA888(0x20010) != 0) {
        func_8015449C_ovl3(D_80193250_ovl3, 0);
        func_80111C4C(func_80111A04(D_80191508_ovl3, omCurrentObj->objId));
    }
}

extern f32 D_8019768C_ovl3;
extern f32 D_80197690_ovl3;
extern f32 D_80197694_ovl3;
extern f32 D_80197698_ovl3;
extern f32 D_8019769C_ovl3;

void func_8017DF60_ovl3(s32 arg0) {
    f32 step;
    f32 limit;

    if (arg0 != 0) {
        if ((D_800E8AE0[omCurrentObj->objId] & 6) == 0) {
            step = D_8019768C_ovl3;
        } else {
            step = D_80197690_ovl3;
        }
        limit = D_80197694_ovl3;
        D_800EA6E0[omCurrentObj->objId] = step + D_800EA6E0[omCurrentObj->objId];
        if (limit < D_800EA6E0[omCurrentObj->objId]) {
            D_800EA6E0[omCurrentObj->objId] = limit;
        }
    } else {
        if ((D_800E8AE0[omCurrentObj->objId] & 6) == 0) {
            step = D_80197698_ovl3;
        } else {
            step = D_8019769C_ovl3;
        }
        D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] - step;
        if (D_800EA6E0[omCurrentObj->objId] <= 0.0f) {
            D_800EA6E0[omCurrentObj->objId] = 0.0f;
            *(s32 *) ((u8 *) &D_8012E7FC + 8) = 0;
        }
    }
}

extern s32 func_800AF230(void);
extern void func_8011DC30(s32);

void func_8017E074_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x2A;
    func_80120A28();
    func_8011DC04(0xAB);
    func_8011DC30(0x26D);
    D_800EC2E0[func_801693C4_ovl3(7)].as_s32 = 0;
    D_800EC2E0[func_801693C4_ovl3(7)].as_s32 = 2;
    func_801230E8(0x201AE, 0x201AF, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20011);
    gKirbyState.unk154 = 2;
    D_800EC2E0[func_801693C4_ovl3(7)].as_s32 = 1;
    func_801230E8(0x201AC, 0x201AD, 0);
    while (gKirbyState.unk17 == 0) {
        if (func_800AF230() != 0) {
            break;
        }
        ohSleep(1);
    }
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201B0, 0x201B1, 1);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8017E1EC_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C();
        func_8011D67C();
    } else if (gKirbyState.abilityInUse != 0) {
        func_8015449C_ovl3(D_8019338C_ovl3, 0);
        func_80111C4C(func_80111A04(D_8019154C_ovl3, omCurrentObj->objId));
    }
}

/* 3/178: exact except that the ROM's scheduler sinks the `lim` load past the
   two loop-invariant base addiu's (gEntitiesAngleXArray, gKirbyController)
   and IDO emits it first. Swept: declaration order, one-line form, blank
   line, moving the assignment across func_800AA018 and into the loop. */
extern u8 D_801905E8_ovl3[];
extern f32 D_801976A0_ovl3;
extern f32 D_801976A4_ovl3;

void func_8017E284_ovl3(s32 arg0)
{
  int new_var;
  f32 step;
  f32 lim;
  s32 idx;
  gKirbyState.unk30 = 0;
  gKirbyState.unk7 = 0;
  gKirbyState.unk4C = 0;
  gKirbyState.jumpHeight = (gKirbyState.isFullJump = 0);
  gKirbyState.unk40 = 0.0f;
  D_800E98E0[omCurrentObj->objId] = 1;
  func_8011CF58();
  D_800DDFD0[omCurrentObj->objId] = 0x2B;
  gKirbyState.unk44 = 0;
  func_80120A28();
  gKirbyState.unk15C = (u32) D_801905E8_ovl3;
  func_801230E8(0x201B4, 0x201B5, 1);
  gKirbyState.abilityInUse = gKirbyState.ability;
  func_80122F08(0x20012);
  gKirbyState.unk154 = 5;
  gKirbyState.unk4C = func_800A8100(1, 1, 0x2A, D_800DFBD0[omCurrentObj->objId][4]);
  D_800E9720[omCurrentObj->objId] = 0;
  func_800AA018(0x201B2);
  step = D_801976A0_ovl3;
 lim = D_801976A4_ovl3; while (1) {
    if (gKirbyState.unk17 != 0)
    {
      break;
    }
    if (lim != gKirbyState.unk40)
    {
      gEntitiesAngleXArray[omCurrentObj->objId] = -gKirbyState.unk40;
      gKirbyState.unk40 = gKirbyState.unk40 + step;
      if (lim <= gKirbyState.unk40)
      {
        gKirbyState.unk40 = lim;
      }
      D_800E9720[omCurrentObj->objId]++;
    }
    if (gKirbyController.buttonHeld & 0x4000)
    {
      ohSleep(1);
    }
    else
    {
      idx = func_801632B8_ovl3(4);
      new_var = 0x70;
      D_800E1B50[idx + new_var] = (struct EnemyRecord *) D_800DFBD0[omCurrentObj->objId][4];
      D_800EC660[idx] = gKirbyState.unk40;
      play_sound(0xB5);
      play_sound(0xB6);
      D_800E98E0[omCurrentObj->objId] = 0;
      func_800AA154(0x201B3);
      break;
    }
  }

  func_8011E0E8();
  gKirbyState.abilityInUse = 0;
  func_80122F08(0x20007);
  gKirbyState.unk154 = 2;
  func_801230E8(0x201B6, 0x201B7, 1);
  gKirbyState.unk30 += 1;
  curObjSleepForever();
}
#ifdef MIPS_TO_C
/* FACTORY: 29/303, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming) so it seals verbatim. Queued for the permuter. */
/* PORT: the ability ride/jump per-tick handler (paired with the 0x2B
 * coroutine above), from asm/nonmatchings/ovl3/ovl3_6/func_8017E54C_ovl3.s
 * (via m2c). Services base motion (skipping input service while the state
 * word unk44 is 1), levels the pitch and hands off when the coroutine has
 * finished (unk30). While the ability is armed it releases the anim lock
 * once DObj [3]'s flags byte reaches 2; otherwise it decays the windup
 * pitch gKirbyState.unk40 back to zero. On the ground it kills the drive
 * and resets unk44; then the jump machine: A (0x8000) pressed on the
 * ground launches (unk44 = 1) -- a fully submerged launch (water bits
 * == 6) plays 0x10B with an 8.5 fixed rise, a dry one plays 0xF7 with a
 * func_80123144(17.0f)-scaled rise -- while airborne it flips to the
 * descent state (unk44 = 2) at apex, on a ceiling hit, or once rising
 * speed drops under the unkCC threshold (arming isFullJump). Airborne
 * with upward speed and no full-jump flag it runs the variable-jump-
 * height service func_8011EBD4, and always the gravity service
 * func_8011ED68.
 *
 * Port notes: func_8011EBD4/func_8011ED68 are (void) and func_80123144 is
 * f32(f32) with the float-bit literal 0x41880000 = 17.0f (m2c's
 * &gKirbyState args are leftover registers); m2c's *(D_800E3210 + id*4)
 * pointer math is plain D_800E3210[id]; the D_800E8920 value is re-read
 * fresh at the tail (only this handler writes it in between, so the
 * re-read equals m2c's threaded var_a0); D_801976A8 is 0.13089969754f
 * (pi/24) -- kept as the rodata extern spelling the N64 arm above uses;
 * D_801976AC is 65535.0f and D_801976B0/B4 are the 8.5f/17.0f rise pair
 * inlined. */
void func_8017E54C_ovl3(s32 arg0) {
    extern f32 D_801976A8_ovl3;
    void func_8011EBD4(void);
    void func_8011ED68(void);
    f32 func_80123144(f32);
    void func_8011E0E8(void);
    s32 id;

    func_80153984_ovl3();
    if (gKirbyState.unk44 != 1) {
        func_801217B8();
    }
    if (gKirbyState.unk30 != 0) {
        gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
        func_8011D67C();
        return;
    }
    if (gKirbyState.abilityInUse != 0) {
        if (D_800DFBD0[omCurrentObj->objId][3]->flags == 2) {
            func_8011E0E8();
        }
    } else if (gKirbyState.unk40 != 0.0f) {
        gKirbyState.unk40 -= D_801976A8_ovl3;
        if (gKirbyState.unk40 <= 0.0f) {
            gKirbyState.unk40 = 0.0f;
        }
        gEntitiesAngleXArray[omCurrentObj->objId] = -gKirbyState.unk40;
    }
    id = omCurrentObj->objId;
    if (D_800E8920[id] != 0) {
        D_800E6690[id] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        gKirbyState.unk44 = 0;
    }
    id = omCurrentObj->objId;
    if (D_800E98E0[id] != 0) {
        if (D_800E8920[id] != 0) {
            if (gKirbyState.isFullJump == 0) {
                if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 1;
                    D_800E8920[omCurrentObj->objId] = 0;
                    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                        play_sound(0x10B);
                        gKirbyState.unkCC = 4.0f;
                        D_800E3210[omCurrentObj->objId] = 8.5f;
                        D_800E3750[omCurrentObj->objId] = 8.5f;
                        D_800E3C90[omCurrentObj->objId] = 8.5f;
                    } else {
                        play_sound(0xF7);
                        gKirbyState.unkCC = 8.0f;
                        D_800E3210[omCurrentObj->objId] = func_80123144(17.0f);
                        D_800E3750[omCurrentObj->objId] = 17.0f;
                        D_800E3C90[omCurrentObj->objId] = 16.0f;
                    }
                }
            } else {
                gKirbyState.isFullJump = 0;
                gKirbyState.jumpHeight = 0;
            }
        } else {
            f32 vel = D_800E3210[id];

            if (vel > 0.0f) {
                if ((vel < gKirbyState.unkCC) && (gKirbyState.isFullJump == 0)) {
                    gKirbyState.isFullJump += 1;
                    gKirbyState.unk44 = 2;
                }
                if (gKirbyState.ceilingCollisionNext != 0) {
                    D_800E3210[omCurrentObj->objId] = 0.0f;
                    gKirbyState.unk44 = 2;
                }
            } else if (gKirbyState.isFullJump != 0) {
                gKirbyState.unk44 = 2;
            }
        }
    } else if ((D_800E8920[id] != 0) && (gKirbyState.isFullJump != 0)) {
        gKirbyState.isFullJump = 0;
        gKirbyState.jumpHeight = 0;
    }
    id = omCurrentObj->objId;
    if (D_800E8920[id] == 0) {
        if ((D_800E3210[id] > 0.0f) && (gKirbyState.isFullJump == 0)) {
            func_8011EBD4();
        }
        func_8011ED68();
    }
}
#elif defined(PORT)
/* PORT: the ability ride/jump per-tick handler (paired with the 0x2B
 * coroutine above), from asm/nonmatchings/ovl3/ovl3_6/func_8017E54C_ovl3.s
 * (via m2c). Services base motion (skipping input service while the state
 * word unk44 is 1), levels the pitch and hands off when the coroutine has
 * finished (unk30). While the ability is armed it releases the anim lock
 * once DObj [3]'s flags byte reaches 2; otherwise it decays the windup
 * pitch gKirbyState.unk40 back to zero. On the ground it kills the drive
 * and resets unk44; then the jump machine: A (0x8000) pressed on the
 * ground launches (unk44 = 1) -- a fully submerged launch (water bits
 * == 6) plays 0x10B with an 8.5 fixed rise, a dry one plays 0xF7 with a
 * func_80123144(17.0f)-scaled rise -- while airborne it flips to the
 * descent state (unk44 = 2) at apex, on a ceiling hit, or once rising
 * speed drops under the unkCC threshold (arming isFullJump). Airborne
 * with upward speed and no full-jump flag it runs the variable-jump-
 * height service func_8011EBD4, and always the gravity service
 * func_8011ED68.
 *
 * Port notes: func_8011EBD4/func_8011ED68 are (void) and func_80123144 is
 * f32(f32) with the float-bit literal 0x41880000 = 17.0f (m2c's
 * &gKirbyState args are leftover registers); m2c's *(D_800E3210 + id*4)
 * pointer math is plain D_800E3210[id]; the D_800E8920 value is re-read
 * fresh at the tail (only this handler writes it in between, so the
 * re-read equals m2c's threaded var_a0); D_801976A8 is 0.13089969754f
 * (pi/24) -- kept as the rodata extern spelling the N64 arm above uses;
 * D_801976AC is 65535.0f and D_801976B0/B4 are the 8.5f/17.0f rise pair
 * inlined. */
void func_8017E54C_ovl3(s32 arg0) {
    extern f32 D_801976A8_ovl3;
    void func_8011EBD4(void);
    void func_8011ED68(void);
    f32 func_80123144(f32);
    void func_8011E0E8(void);
    s32 id;

    func_80153984_ovl3();
    if (gKirbyState.unk44 != 1) {
        func_801217B8();
    }
    if (gKirbyState.unk30 != 0) {
        gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
        func_8011D67C();
        return;
    }
    if (gKirbyState.abilityInUse != 0) {
        if (D_800DFBD0[omCurrentObj->objId][3]->flags == 2) {
            func_8011E0E8();
        }
    } else if (gKirbyState.unk40 != 0.0f) {
        gKirbyState.unk40 -= D_801976A8_ovl3;
        if (gKirbyState.unk40 <= 0.0f) {
            gKirbyState.unk40 = 0.0f;
        }
        gEntitiesAngleXArray[omCurrentObj->objId] = -gKirbyState.unk40;
    }
    id = omCurrentObj->objId;
    if (D_800E8920[id] != 0) {
        D_800E6690[id] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        gKirbyState.unk44 = 0;
    }
    id = omCurrentObj->objId;
    if (D_800E98E0[id] != 0) {
        if (D_800E8920[id] != 0) {
            if (gKirbyState.isFullJump == 0) {
                if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 1;
                    D_800E8920[omCurrentObj->objId] = 0;
                    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                        play_sound(0x10B);
                        gKirbyState.unkCC = 4.0f;
                        D_800E3210[omCurrentObj->objId] = 8.5f;
                        D_800E3750[omCurrentObj->objId] = 8.5f;
                        D_800E3C90[omCurrentObj->objId] = 8.5f;
                    } else {
                        play_sound(0xF7);
                        gKirbyState.unkCC = 8.0f;
                        D_800E3210[omCurrentObj->objId] = func_80123144(17.0f);
                        D_800E3750[omCurrentObj->objId] = 17.0f;
                        D_800E3C90[omCurrentObj->objId] = 16.0f;
                    }
                }
            } else {
                gKirbyState.isFullJump = 0;
                gKirbyState.jumpHeight = 0;
            }
        } else {
            f32 vel = D_800E3210[id];

            if (vel > 0.0f) {
                if ((vel < gKirbyState.unkCC) && (gKirbyState.isFullJump == 0)) {
                    gKirbyState.isFullJump += 1;
                    gKirbyState.unk44 = 2;
                }
                if (gKirbyState.ceilingCollisionNext != 0) {
                    D_800E3210[omCurrentObj->objId] = 0.0f;
                    gKirbyState.unk44 = 2;
                }
            } else if (gKirbyState.isFullJump != 0) {
                gKirbyState.unk44 = 2;
            }
        }
    } else if ((D_800E8920[id] != 0) && (gKirbyState.isFullJump != 0)) {
        gKirbyState.isFullJump = 0;
        gKirbyState.jumpHeight = 0;
    }
    id = omCurrentObj->objId;
    if (D_800E8920[id] == 0) {
        if ((D_800E3210[id] > 0.0f) && (gKirbyState.isFullJump == 0)) {
            func_8011EBD4();
        }
        func_8011ED68();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017E54C_ovl3.s")
#endif

#ifdef NON_MATCHING
/* FACTORY: 12/244, multi-cluster register/scheduling floor -- measured
   2026-08-23. Four independent clusters, all register-shaped: (1) the two
   `D_80196D98_ovl3[D_80198830_ovl3.unk8]` index computations in the if/else
   branches use $t5/$t9 swapped between the two branches; (2) the mtc1
   $zero,$f8 / lui $at,%hi(D_80196D98_ovl3) pair for the ABSF is scheduled
   in the OPPOSITE order; (3) the `D_80198830_ovl3.unk8 -= 1;
   D_80198830_ovl3.unkA = 0xF;` pair uses $t5/$t6 swapped from the ROM's
   $t6/$t5; (4) `gKirbyState.unk30 = gKirbyState.unk30 + 1;` -- the SAME
   idiom that already matches verbatim in func_80180818_ovl3 and
   func_8018E164_ovl3 above in this file -- here keeps the address in one
   register ($t9, reused for both address and value) where the ROM holds it
   in $v0 separately, meaning this residue is downstream register pressure
   from clusters 1-3, not a defect in the idiom itself. Swept: ABS() vs
   ABSF() (lever 3) on the D_800E3C90 store -- no change, identical 12/244.
   Good permuter seed. */
typedef struct Unk80198830 {
    u8 pad0[8];
    s16 unk8;
    s16 unkA;
} Unk80198830;

extern Unk80198830 D_80198830_ovl3;
extern f32 D_801976B8_ovl3;
extern f32 D_801976BC_ovl3;
extern f32 D_80196D98_ovl3[];

void func_8017EA0C_ovl3(s32 arg0) {
    s32 idx;
    extern s32 D_8012E90C;
    extern f32 D_800D7238;
    void func_800AA864(s32, s32);

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk4C = 0;
        D_800EA6E0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x2C;
        func_80122F08(0x20016);
        *(s32 *) ((u8 *) &D_8012E90C + 8) = 2;
    }
    idx = func_801693C4_ovl3(8);
    D_800EC2E0[idx].as_s32 = D_80198830_ovl3.unk8;
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        D_800D7238 = D_801976B8_ovl3;
    } else {
        D_800D7238 = D_801976BC_ovl3;
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 0) {
        D_800E3210[omCurrentObj->objId] = D_80196D98_ovl3[D_80198830_ovl3.unk8];
    } else {
        D_800E3210[omCurrentObj->objId] = D_80196D98_ovl3[D_80198830_ovl3.unk8] * 0.5f;
    }
    D_800E3750[omCurrentObj->objId] = D_800D7238;
    D_800E3C90[omCurrentObj->objId] = ABSF(((D_800E8AE0[omCurrentObj->objId] & 6) == 0) ? 16.0f : 8.0f);
    if (D_80198830_ovl3.unk8 == 3) {
        func_800BB468(0xB, 0xA);
    } else if (D_80198830_ovl3.unk8 == 2) {
        func_800BB468(6, 0x10);
    } else if (D_80198830_ovl3.unk8 == 1) {
        func_800BB468(0, 0);
    }
    D_800E9720[omCurrentObj->objId] = 0xA;
    D_80198830_ovl3.unk8 = D_80198830_ovl3.unk8 - 1;
    D_80198830_ovl3.unkA = 0xF;
    if (D_80198830_ovl3.unk8 != 0) {
        func_800AA864(0x201C5, 2);
    } else {
        D_80198830_ovl3.unkA = 0x14;
        D_8012E80C[0] = func_800A8100(1, 1, 0x22, D_800DFBD0[omCurrentObj->objId][2]);
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            func_800AA864(0x201C5, 4);
        } else {
            func_800AA864(0x201C5, 8);
        }
        D_80198830_ovl3.unk8 = 3;
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017EA0C_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 40/248, whole-function callee-saved permutation (same floor
 * class documented across ovl3_1.c/kirby.c/plyshot.c). Also gives
 * D_80198830_ovl3 a local-scope view (LocalUnk80198830) since the real
 * typedef/extern pair lives inside an #ifdef NON_MATCHING block
 * elsewhere in this file. Queued for the permuter. */
/* PORT: the wheel-form (action 0x2C) per-tick handler (paired with the
 * func_8017EA0C_ovl3 gear-shift coroutine above), from
 * asm/nonmatchings/ovl3/ovl3_6/func_8017EDDC_ovl3.s (via m2c). When the
 * coroutine is done, a scripted grab lands, or Kirby touches ground
 * (D_800E8920), it releases the anim lock, disarms the ability, restores
 * the saved run speed D_800E6A10 from the D_800EA6E0 stash and hands off.
 * Otherwise it burns the D_80198830 gear window: while the gear count
 * unk8 is up, an expired D_800E9720 shift timer lets a B press (0x4000)
 * re-trigger the coroutine process (func_8016C510_ovl3), else the timer
 * counts down; with no gears left the unkA grace counter drains. Held
 * left/right (0x300) banks the facing cell D_800EA6E0 to +/-1 and drives
 * +/-0.625 drift with a 5.0 cap (0.3125/2.5 in water); centered stick
 * back-brakes with -drift * D_800E6A10 and a zero cap.
 *
 * Port notes: the positive/negative cap ladder is the ROM's redundant
 * ABS of the constant 5.0/2.5; m2c's *(array + id*4) byte offsets are
 * plain [id] indexing; the inner re-check of D_80198830_ovl3.unk8 is the
 * dead half of a beql pair (unchanged since the outer test) and is
 * dropped; gEntityGObjProcessArray/assign_new_process_entry/
 * func_8016C510_ovl3 are declared locally because the file's own externs
 * for them only appear further down. */
void func_8017EDDC_ovl3(s32 arg0) {
    typedef struct LocalUnk80198830 {
        u8 pad0[8];
        s16 unk8;
        s16 unkA;
    } LocalUnk80198830;
    extern LocalUnk80198830 D_80198830_ovl3;
    extern struct GObjProcess *gEntityGObjProcessArray[];
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    s32 id;
    f32 drift;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if ((gKirbyState.unk30 != 0) || (gKirbyState.unk17 != 0)
        || (D_800E8920[omCurrentObj->objId] != 0)) {
        func_8011E0E8();
        gKirbyState.abilityInUse = 0;
        id = omCurrentObj->objId;
        D_800E6A10[id] = D_800EA6E0[id];
        func_8011D67C();
        return;
    }
    id = omCurrentObj->objId;
    if (D_80198830_ovl3.unk8 != 0) {
        if (D_800E9720[id] == 0) {
            if (gKirbyController.buttonPressed & 0x4000) {
                assign_new_process_entry(gEntityGObjProcessArray[id], func_8016C510_ovl3);
                id = omCurrentObj->objId;
            }
        } else {
            D_800E9720[id]--;
            id = omCurrentObj->objId;
        }
    } else if (D_80198830_ovl3.unkA != 0) {
        D_80198830_ovl3.unkA--;
        id = omCurrentObj->objId;
    }
    if (gKirbyController.buttonHeld & 0x300) {
        if (gKirbyController.buttonHeld & 0x100) {
            D_800EA6E0[id] = 1.0f;
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6690[id] = 0.625f;
            } else {
                D_800E6690[id] = 0.3125f;
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6850[id] = 5.0f;
            } else {
                D_800E6850[id] = 2.5f;
            }
        } else {
            D_800EA6E0[id] = -1.0f;
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6690[id] = -0.625f;
            } else {
                D_800E6690[id] = -0.3125f;
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6850[id] = 5.0f;
            } else {
                D_800E6850[id] = 2.5f;
            }
        }
    } else {
        if (!(D_800E8AE0[id] & 6)) {
            drift = 0.625f;
        } else {
            drift = 0.3125f;
        }
        D_800E6690[id] = -drift * D_800E6A10[id];
        D_800E6850[omCurrentObj->objId] = 0.0f;
    }
}
#elif defined(PORT)
/* PORT: the wheel-form (action 0x2C) per-tick handler (paired with the
 * func_8017EA0C_ovl3 gear-shift coroutine above), from
 * asm/nonmatchings/ovl3/ovl3_6/func_8017EDDC_ovl3.s (via m2c). When the
 * coroutine is done, a scripted grab lands, or Kirby touches ground
 * (D_800E8920), it releases the anim lock, disarms the ability, restores
 * the saved run speed D_800E6A10 from the D_800EA6E0 stash and hands off.
 * Otherwise it burns the D_80198830 gear window: while the gear count
 * unk8 is up, an expired D_800E9720 shift timer lets a B press (0x4000)
 * re-trigger the coroutine process (func_8016C510_ovl3), else the timer
 * counts down; with no gears left the unkA grace counter drains. Held
 * left/right (0x300) banks the facing cell D_800EA6E0 to +/-1 and drives
 * +/-0.625 drift with a 5.0 cap (0.3125/2.5 in water); centered stick
 * back-brakes with -drift * D_800E6A10 and a zero cap.
 *
 * Port notes: the positive/negative cap ladder is the ROM's redundant
 * ABS of the constant 5.0/2.5; m2c's *(array + id*4) byte offsets are
 * plain [id] indexing; the inner re-check of D_80198830_ovl3.unk8 is the
 * dead half of a beql pair (unchanged since the outer test) and is
 * dropped; gEntityGObjProcessArray/assign_new_process_entry/
 * func_8016C510_ovl3 are declared locally because the file's own externs
 * for them only appear further down. */
void func_8017EDDC_ovl3(s32 arg0) {
    extern struct GObjProcess *gEntityGObjProcessArray[];
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    s32 id;
    f32 drift;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if ((gKirbyState.unk30 != 0) || (gKirbyState.unk17 != 0)
        || (D_800E8920[omCurrentObj->objId] != 0)) {
        func_8011E0E8();
        gKirbyState.abilityInUse = 0;
        id = omCurrentObj->objId;
        D_800E6A10[id] = D_800EA6E0[id];
        func_8011D67C();
        return;
    }
    id = omCurrentObj->objId;
    if (D_80198830_ovl3.unk8 != 0) {
        if (D_800E9720[id] == 0) {
            if (gKirbyController.buttonPressed & 0x4000) {
                assign_new_process_entry(gEntityGObjProcessArray[id], func_8016C510_ovl3);
                id = omCurrentObj->objId;
            }
        } else {
            D_800E9720[id]--;
            id = omCurrentObj->objId;
        }
    } else if (D_80198830_ovl3.unkA != 0) {
        D_80198830_ovl3.unkA--;
        id = omCurrentObj->objId;
    }
    if (gKirbyController.buttonHeld & 0x300) {
        if (gKirbyController.buttonHeld & 0x100) {
            D_800EA6E0[id] = 1.0f;
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6690[id] = 0.625f;
            } else {
                D_800E6690[id] = 0.3125f;
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6850[id] = 5.0f;
            } else {
                D_800E6850[id] = 2.5f;
            }
        } else {
            D_800EA6E0[id] = -1.0f;
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6690[id] = -0.625f;
            } else {
                D_800E6690[id] = -0.3125f;
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6850[id] = 5.0f;
            } else {
                D_800E6850[id] = 2.5f;
            }
        }
    } else {
        if (!(D_800E8AE0[id] & 6)) {
            drift = 0.625f;
        } else {
            drift = 0.3125f;
        }
        D_800E6690[id] = -drift * D_800E6A10[id];
        D_800E6850[omCurrentObj->objId] = 0.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017EDDC_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 51/446, whole-function callee-saved permutation (same floor class documented across this cluster; same shape as kirby.c's func_80179C28_ovl3 twin). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming, the restart:/stopped: labels are the ROM's genuine loop-restart structure) so it seals verbatim. Queued for the permuter. */
/* PORT: the mini-stone-form coroutine (track action 0x2D), from
 * asm/nonmatchings/ovl3/ovl3_6/func_8017F1C0_ovl3.s (via m2c) -- the
 * ovl3_6 twin of kirby.c's stone coroutine func_80179C28_ovl3, with a
 * 0.4 anim-blend seed (unk38), its own anim-pointer table D_801928F4 /
 * PlyEntry handle D_8019062C, transform sound 0x124, and a shrunken
 * 0.2-scale pop-out. First entry (ability unarmed) freezes the track for
 * an airborne B+Up transform, sets the -0.980665 drop curve, latches the
 * facing sign into D_800E98E0 and arms phase 1. Phase 1 is the falling
 * stone (slam sound 0x121 when it lands moving or on a slope); phases
 * 0/2 run the grounded roll loop -- roll voice 0x2018F, impact process
 * func_8017F8B8_ovl3 on the hit track, looping anim 0x20191 while
 * sliding (below the 0.785 spin threshold), settling into the 0x2018E
 * idle blend with a 0x1E counter and restarting on re-acceleration,
 * ending with stop voice 0x20190 and the counter parked at -1. Phase 3
 * pops out: levels the pitch, disarms, plays 0x11D, burns the charge via
 * func_8011D614, queues pair 0x2018A/0x2018B, then after one tick
 * resets the blend to 1.0 and snaps the entity scale to 0.2.
 *
 * Port notes: identical structure to the ported func_80179C28_ovl3 arm
 * in kirby.c and carried over from it: m2c's `arg0->unk3C->unk10` is
 * arg0->data.dobj->firstChild; func_800AA5C4's third argument bits
 * 0x40C00000 are 6.0f; func_800F8824's first argument is the Vector
 * behind the u32 handle unk124 (cast through uintptr_t); unk15C takes
 * (u32)(uintptr_t); the D_801976C0..D0 rodata cells are 0.4f / 65535.0f
 * / -0.980665f / 0.785f / 0.2f inlined; func_8017F8B8_ovl3 is
 * forward-declared -- it is defined just below with exactly the
 * D_800DF310 slot signature. */
void func_8017F1C0_ovl3(GObj *arg0) {
    void func_8017F8B8_ovl3(s32, s32, f32);
    void func_800AA5C4(s32, u32, f32);
    s32 func_800AA368(struct DObj *);
    f32 func_800F8824(Vector *, f32);
    void func_8011D614(void);
    extern f32 *D_801928F4_ovl3[];
    extern u8 D_8019062C_ovl3[];
    s32 id;
    f32 vel;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk40 = 0.0f;
        gKirbyState.unk7 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk38 = 0.4f;
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            gKirbyState.unk16 = 0x20;
        } else {
            gKirbyState.unk16 = 0x10;
        }
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x2D;
        D_800E9560[omCurrentObj->objId] = 0;
        D_800E0490[omCurrentObj->objId] = D_801928F4_ovl3;
        gKirbyState.unk3C = -1;
        gKirbyState.unk44 = -1;
        id = omCurrentObj->objId;
        if (D_800E8920[id] == 0) {
            if ((gKirbyController.buttonHeld & 0x4400) == 0x4400) {
                D_800E6690[id] = 0.0f;
                D_800E64D0[id] = D_800E6690[id];
                D_800E6850[id] = 65535.0f;
                D_800E3910[id] = 0.0f;
                D_800E3590[id] = D_800E3910[id];
                D_800E33D0[id] = D_800E3910[id];
                D_800E3050[id] = D_800E3910[id];
                D_800E3E50[id] = 65535.0f;
                D_800E3AD0[id] = D_800E3E50[id];
            }
            D_800E3210[id] = 0.0f;
            D_800E3750[id] = -0.980665f;
            D_800E3C90[id] = 18.0f;
        }
        D_800E83E0[id] = 0;
        id = omCurrentObj->objId;
        D_800E98E0[id] = (s32) D_800E6A10[id];
        play_sound(0x124);
        func_80122F08(0x20007);
        func_801230E8(0x2018C, 0x2018D, 1);
        gKirbyState.unk15C = (u32) (uintptr_t) D_8019062C_ovl3;
        gKirbyState.unk44 = 1;
        gKirbyState.unk3C = 1;
    }
    switch (gKirbyState.unk44) {
        case 1:
            id = omCurrentObj->objId;
            D_800EA6E0[id] = 0.0f;
            func_80122F08(0x2000C);
            gKirbyState.unk154 = 1;
            gKirbyState.unk40 = 0.0f;
            if ((D_800E8920[id] != 0)
                && ((D_800E64D0[id] != 0.0f)
                    || (func_800F8824((Vector *) (uintptr_t) gKirbyState.unk124,
                                      D_800E17D0[id]) != 0.0f))) {
                play_sound(0x121);
            }
            break;
        case 0:
        case 2:
            id = omCurrentObj->objId;
            D_800EA8A0[id] = 0.0f;
            D_800E9720[id] = 0;
            func_80122F08(0x2000B);
            gKirbyState.unk154 = 2;
            func_800AA154(0x2018F);
        restart:
            func_800AA018(0x20191);
            D_800DF310[omCurrentObj->objId] = func_8017F8B8_ovl3;
            for (;;) {
                id = omCurrentObj->objId;
                vel = D_800E64D0[id];
                if ((vel != 0.0f) || (D_800E6850[id] != 0.0f)) {
                    if ((D_800E8920[id] != 0)
                        && (!(0.785f < D_800EA8A0[id]) || (vel != 0.0f))) {
                        ohSleep(1);
                        continue;
                    }
                    break;
                }
                /* the roll has fully stopped: settle into the idle blend */
                D_800E9720[id] = 0x1E;
                func_800AA5C4(0x2018E, 0x2000B, 6.0f);
                if (func_800AA368(arg0->data.dobj->firstChild) == 0) {
                    for (;;) {
                        id = omCurrentObj->objId;
                        if (D_800E6850[id] != 0.0f) {
                            goto restart;
                        }
                        if (D_800E8920[id] == 0) {
                            goto stopped;
                        }
                        ohSleep(1);
                        if (func_800AA368(arg0->data.dobj->firstChild) != 0) {
                            break;
                        }
                    }
                }
                func_800AA018(0x2018E);
                for (;;) {
                    id = omCurrentObj->objId;
                    if (D_800E6850[id] != 0.0f) {
                        goto restart;
                    }
                    if ((D_800E8920[id] == 0)
                        || (!(gKirbyState.isTurning & 1) && (D_800E9720[id] == 0))) {
                        goto stopped;
                    }
                    ohSleep(1);
                }
            }
        stopped:
            func_800AA154(0x20190);
            D_800E9720[omCurrentObj->objId] = -1;
            break;
        case 3:
            gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
            gKirbyState.abilityInUse = 0;
            func_80120A28();
            play_sound(0x11D);
            func_8011D614();
            func_801230E8(0x2018A, 0x2018B, 0);
            ohSleep(1);
            gKirbyState.unk38 = 1.0f;
            id = omCurrentObj->objId;
            gEntitiesScaleXArray[id] = 0.2f;
            gEntitiesScaleYArray[id] = 0.2f;
            gEntitiesScaleZArray[id] = 0.2f;
            func_800AF27C();
            gKirbyState.unk30 += 1;
            break;
    }
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the mini-stone-form coroutine (track action 0x2D), from
 * asm/nonmatchings/ovl3/ovl3_6/func_8017F1C0_ovl3.s (via m2c) -- the
 * ovl3_6 twin of kirby.c's stone coroutine func_80179C28_ovl3, with a
 * 0.4 anim-blend seed (unk38), its own anim-pointer table D_801928F4 /
 * PlyEntry handle D_8019062C, transform sound 0x124, and a shrunken
 * 0.2-scale pop-out. First entry (ability unarmed) freezes the track for
 * an airborne B+Up transform, sets the -0.980665 drop curve, latches the
 * facing sign into D_800E98E0 and arms phase 1. Phase 1 is the falling
 * stone (slam sound 0x121 when it lands moving or on a slope); phases
 * 0/2 run the grounded roll loop -- roll voice 0x2018F, impact process
 * func_8017F8B8_ovl3 on the hit track, looping anim 0x20191 while
 * sliding (below the 0.785 spin threshold), settling into the 0x2018E
 * idle blend with a 0x1E counter and restarting on re-acceleration,
 * ending with stop voice 0x20190 and the counter parked at -1. Phase 3
 * pops out: levels the pitch, disarms, plays 0x11D, burns the charge via
 * func_8011D614, queues pair 0x2018A/0x2018B, then after one tick
 * resets the blend to 1.0 and snaps the entity scale to 0.2.
 *
 * Port notes: identical structure to the ported func_80179C28_ovl3 arm
 * in kirby.c and carried over from it: m2c's `arg0->unk3C->unk10` is
 * arg0->data.dobj->firstChild; func_800AA5C4's third argument bits
 * 0x40C00000 are 6.0f; func_800F8824's first argument is the Vector
 * behind the u32 handle unk124 (cast through uintptr_t); unk15C takes
 * (u32)(uintptr_t); the D_801976C0..D0 rodata cells are 0.4f / 65535.0f
 * / -0.980665f / 0.785f / 0.2f inlined; func_8017F8B8_ovl3 is
 * forward-declared -- it is defined just below with exactly the
 * D_800DF310 slot signature. */
void func_8017F1C0_ovl3(GObj *arg0) {
    void func_8017F8B8_ovl3(s32, s32, f32);
    void func_800AA5C4(s32, u32, f32);
    s32 func_800AA368(struct DObj *);
    f32 func_800F8824(Vector *, f32);
    void func_8011D614(void);
    extern f32 *D_801928F4_ovl3[];
    extern u8 D_8019062C_ovl3[];
    s32 id;
    f32 vel;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk40 = 0.0f;
        gKirbyState.unk7 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk38 = 0.4f;
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            gKirbyState.unk16 = 0x20;
        } else {
            gKirbyState.unk16 = 0x10;
        }
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x2D;
        D_800E9560[omCurrentObj->objId] = 0;
        D_800E0490[omCurrentObj->objId] = D_801928F4_ovl3;
        gKirbyState.unk3C = -1;
        gKirbyState.unk44 = -1;
        id = omCurrentObj->objId;
        if (D_800E8920[id] == 0) {
            if ((gKirbyController.buttonHeld & 0x4400) == 0x4400) {
                D_800E6690[id] = 0.0f;
                D_800E64D0[id] = D_800E6690[id];
                D_800E6850[id] = 65535.0f;
                D_800E3910[id] = 0.0f;
                D_800E3590[id] = D_800E3910[id];
                D_800E33D0[id] = D_800E3910[id];
                D_800E3050[id] = D_800E3910[id];
                D_800E3E50[id] = 65535.0f;
                D_800E3AD0[id] = D_800E3E50[id];
            }
            D_800E3210[id] = 0.0f;
            D_800E3750[id] = -0.980665f;
            D_800E3C90[id] = 18.0f;
        }
        D_800E83E0[id] = 0;
        id = omCurrentObj->objId;
        D_800E98E0[id] = (s32) D_800E6A10[id];
        play_sound(0x124);
        func_80122F08(0x20007);
        func_801230E8(0x2018C, 0x2018D, 1);
        gKirbyState.unk15C = (u32) (uintptr_t) D_8019062C_ovl3;
        gKirbyState.unk44 = 1;
        gKirbyState.unk3C = 1;
    }
    switch (gKirbyState.unk44) {
        case 1:
            id = omCurrentObj->objId;
            D_800EA6E0[id] = 0.0f;
            func_80122F08(0x2000C);
            gKirbyState.unk154 = 1;
            gKirbyState.unk40 = 0.0f;
            if ((D_800E8920[id] != 0)
                && ((D_800E64D0[id] != 0.0f)
                    || (func_800F8824((Vector *) (uintptr_t) gKirbyState.unk124,
                                      D_800E17D0[id]) != 0.0f))) {
                play_sound(0x121);
            }
            break;
        case 0:
        case 2:
            id = omCurrentObj->objId;
            D_800EA8A0[id] = 0.0f;
            D_800E9720[id] = 0;
            func_80122F08(0x2000B);
            gKirbyState.unk154 = 2;
            func_800AA154(0x2018F);
        restart:
            func_800AA018(0x20191);
            D_800DF310[omCurrentObj->objId] = func_8017F8B8_ovl3;
            for (;;) {
                id = omCurrentObj->objId;
                vel = D_800E64D0[id];
                if ((vel != 0.0f) || (D_800E6850[id] != 0.0f)) {
                    if ((D_800E8920[id] != 0)
                        && (!(0.785f < D_800EA8A0[id]) || (vel != 0.0f))) {
                        ohSleep(1);
                        continue;
                    }
                    break;
                }
                /* the roll has fully stopped: settle into the idle blend */
                D_800E9720[id] = 0x1E;
                func_800AA5C4(0x2018E, 0x2000B, 6.0f);
                if (func_800AA368(arg0->data.dobj->firstChild) == 0) {
                    for (;;) {
                        id = omCurrentObj->objId;
                        if (D_800E6850[id] != 0.0f) {
                            goto restart;
                        }
                        if (D_800E8920[id] == 0) {
                            goto stopped;
                        }
                        ohSleep(1);
                        if (func_800AA368(arg0->data.dobj->firstChild) != 0) {
                            break;
                        }
                    }
                }
                func_800AA018(0x2018E);
                for (;;) {
                    id = omCurrentObj->objId;
                    if (D_800E6850[id] != 0.0f) {
                        goto restart;
                    }
                    if ((D_800E8920[id] == 0)
                        || (!(gKirbyState.isTurning & 1) && (D_800E9720[id] == 0))) {
                        goto stopped;
                    }
                    ohSleep(1);
                }
            }
        stopped:
            func_800AA154(0x20190);
            D_800E9720[omCurrentObj->objId] = -1;
            break;
        case 3:
            gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
            gKirbyState.abilityInUse = 0;
            func_80120A28();
            play_sound(0x11D);
            func_8011D614();
            func_801230E8(0x2018A, 0x2018B, 0);
            ohSleep(1);
            gKirbyState.unk38 = 1.0f;
            id = omCurrentObj->objId;
            gEntitiesScaleXArray[id] = 0.2f;
            gEntitiesScaleYArray[id] = 0.2f;
            gEntitiesScaleZArray[id] = 0.2f;
            func_800AF27C();
            gKirbyState.unk30 += 1;
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017F1C0_ovl3.s")
#endif

void func_8017F8B8_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8920[omCurrentObj->objId] != 0) {
                temp = func_80123170();
                func_800FB914(2);
                play_sound(0x120);
                if (temp != -1) {
                    func_800A7F74(5, 1, temp, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
                }
            }
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 904/931 insns; short=30 long=0.
 * Draft derived from the host arm with its shims/LP64-isms removed; close the instruction COUNT before touching registers. */
/* PORT: the mini-stone-form (action 0x2D) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_8017F988_ovl3.s (via m2c with the
 * jtbl_801976D8 jump table) -- the ovl3_6 twin of kirby.c's ported stone
 * handler func_8017A390_ovl3. Water-scaled anim speed, landing thud
 * (voice stop + 0x123, or 0x149 when un-stoning) with the terrain
 * particle when func_80121828's fall test trips, held direction latched
 * into D_800E98E0, un-stone decision (scripted grab, the D_800E83E0
 * damage latch, or B once the unk16 drop timer ran out -- B during the
 * drop just arms unkA). Phase -1 grows the entity scale by 0.04 toward
 * the 0.4 mini cap. Phase 1 rolls: slope from the floor normal drives
 * the drift/cap formula scaled by the terrain accel, gravel particles
 * every 3rd frame above speed 6 (3 in water), the spin angle unk40
 * integrates speed*2deg into wheel DObj [1]'s pitch (mirrored by facing
 * through the D_800D7238 scratch) thudding 0x121 each full turn, and a
 * held direction below speed 2 on flat ground drops to phase 0. Phase 0
 * idles exactly like the stone (turn poll / slope settle / counter),
 * phase 2 falls, phase 3 pops out (one-shot 0x122 + particle 0x4F at
 * +20y while the blend is still 0.4, then a 9-tick D_80194898 flash)
 * until the coroutine finishes into func_8011D67C. While armed the
 * D_8019163C hitbox runs every tick, plus the D_80193428 overlay once
 * out of the grow phase; a phase change re-triggers the coroutine
 * process (func_8016C510_ovl3).
 *
 * Port notes: conventions carried from the kirby.c arm -- the plylib
 * helpers func_8011E374 / func_801219C8 / func_80121C90 / func_80121194
 * / func_801231D8 / func_80123240 / func_80120AF8(Vector*) are void-arg
 * (or single-arg) on PC and every extra argument m2c prints is a
 * leftover register; func_80121828's raw bit constants are 18.0f/9.0f;
 * the floor normal reads (m2c's `D_8012BCA8.unk4` and `D_8012BCA0.unkC`,
 * both N64 base+0xC) are D_8012BCA8[1]; `&D_800D71E8 + 0x50` is the f32
 * scratch D_800D7238; `D_800DFBD0[...]->unk4->unk30` is DObj list entry
 * [1]'s angle.v.x; func_800AECC0/func_800AED20 take a real f32 so they
 * are prototyped here (the file's own externs for them only appear
 * further down, inside a later NON_MATCHING block). */
void func_8017F988_ovl3(s32 arg0) {
    s32 func_80121828(f32, f32, f32, f32);
    void func_80120AF8(Vector *);
    f32 func_8011E374(void);
    void func_801219C8(void);
    s32 func_80121C90(void);
    s32 func_80121194(void);
    s32 func_801231D8(void);
    s32 func_80123240(void);
    void func_8011ED68(void);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    f32 func_800F8824(Vector *, f32);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern Vector *D_8012BCA8[];
    extern u32 D_800BE4EC;
    extern f32 D_800D7238;
    extern u8 D_8019163C_ovl3[];
    extern u8 D_80191680_ovl3[];
    extern u8 D_80193428_ovl3[];
    extern u8 D_80194898_ovl3[];
    Vector accel;
    f32 animSpd;
    f32 slope;
    f32 base;
    f32 fric;
    f32 f;
    s32 bail = 0;
    s32 wrapped;
    s32 cnt;
    s32 snd;
    s32 id;

    func_80153984_ovl3();
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        animSpd = 1.25f;
    } else {
        animSpd = 1.0f;
    }
    func_800AECC0(animSpd);
    func_800AED20(animSpd);
    if (func_80121828(-0.980665f, 18.0f, -0.980665f, 9.0f) != 0) {
        if (gKirbyState.unk44 != 3) {
            func_800FB914(3);
            func_800BB468(0, 0);
            play_sound(0x123);
        } else {
            play_sound(0x149);
        }
        snd = func_801231D8();
        if (snd != -1) {
            id = omCurrentObj->objId;
            func_800A7F74(5, 1, snd, gEntitiesNextPosXArray[id],
                          gEntitiesNextPosYArray[id], gEntitiesNextPosZArray[id]);
        }
    }
    if (gKirbyController.buttonHeld & 0x300) {
        if (gKirbyController.buttonHeld & 0x100) {
            D_800E98E0[omCurrentObj->objId] = 1;
        } else {
            D_800E98E0[omCurrentObj->objId] = -1;
        }
    }
    if ((gKirbyState.unk17 != 0) || (D_800E83E0[omCurrentObj->objId] != 0)) {
        bail = 1;
    } else if (gKirbyState.unk16 == 0) {
        if (gKirbyController.buttonPressed & 0x4000) {
            bail = 1;
        } else if (gKirbyState.unkA == 4) {
            bail = 1;
        }
    } else if (gKirbyController.buttonPressed & 0x4000) {
        gKirbyState.unkA = 4;
    }
    if ((bail != 0) && (gKirbyState.unk44 != 3)) {
        gKirbyState.unk44 = 3;
        id = omCurrentObj->objId;
        D_800E6A10[id] = (f32) D_800E98E0[id];
        f = func_8011E374();
        gEntitiesAngleYArray[omCurrentObj->objId] = f;
        D_800E17D0[omCurrentObj->objId] = f;
        if (gKirbyState.unk17 != 0) {
            gKirbyState.isTurning &= ~1;
        }
        goto phase_check;
    }
    switch (gKirbyState.unk44) {
        case -1:
            id = omCurrentObj->objId;
            if (gEntitiesScaleXArray[id] < 0.4f) {
                gEntitiesScaleXArray[id] += 0.04f;
                id = omCurrentObj->objId;
                gEntitiesScaleZArray[id] = gEntitiesScaleXArray[id];
                gEntitiesScaleYArray[id] = gEntitiesScaleXArray[id];
            } else {
                gEntitiesScaleXArray[id] = 0.4f;
                gEntitiesScaleYArray[id] = 0.4f;
                gEntitiesScaleZArray[id] = 0.4f;
            }
            break;
        case 1:
            id = omCurrentObj->objId;
            gEntitiesAngleYArray[id] = D_800E17D0[id];
            if (D_800E8920[id] == 0) {
                func_80120A28();
            } else {
                func_80120AF8(&accel);
                id = omCurrentObj->objId;
                D_800EA6E0[id] = -func_800F8824(D_8012BCA8[1], D_800E17D0[id]);
                slope = D_800EA6E0[id];
                if (((slope > 0.0f) && (D_800E6A10[id] == -1.0f))
                    || ((slope < 0.0f) && (D_800E6A10[id] == 1.0f))) {
                    base = -0.1f * accel.y;
                } else {
                    base = 0.1f * accel.y;
                }
                if (slope == 0.0f) {
                    fric = 0.0f;
                } else if (!(D_800E8AE0[id] & 6)) {
                    fric = 2.0f;
                } else {
                    fric = 1.0f;
                }
                D_800E6690[id] = (ABSF(slope) * 10.0f * base) + base;
                f = (ABSF(slope) * 4.0f * fric) + fric;
                D_800E6850[id] = ABSF(f);
                id = omCurrentObj->objId;
                f = ABSF(D_800E64D0[id]);
                if (!(D_800E8AE0[id] & 6)) {
                    base = 6.0f;
                } else {
                    base = 3.0f;
                }
                if ((base < f) && ((D_800BE4EC % 3U) == 0)) {
                    snd = func_80123240();
                    if (snd != -1) {
                        id = omCurrentObj->objId;
                        func_800A7F74(5, 1, snd, gEntitiesNextPosXArray[id],
                                      gEntitiesNextPosYArray[id], gEntitiesNextPosZArray[id]);
                    }
                }
            }
            id = omCurrentObj->objId;
            if (D_800E64D0[id] != 0.0f) {
                wrapped = 0;
                gKirbyState.unk40 += (2.0f * D_800E64D0[id] * 3.1415927f) / 180.0f;
                if (gKirbyState.unk40 < 0.0f) {
                    wrapped = 1;
                    gKirbyState.unk40 += 6.2831855f;
                } else if (gKirbyState.unk40 >= 6.2831855f) {
                    wrapped = 1;
                    gKirbyState.unk40 -= 6.2831855f;
                }
                id = omCurrentObj->objId;
                if ((D_800E8920[id] != 0) && (wrapped != 0)) {
                    if (ABSF(D_800E64D0[id]) > 1.0f) {
                        play_sound(0x121);
                    }
                }
                id = omCurrentObj->objId;
                if (D_800E6A10[id] == -1.0f) {
                    D_800D7238 = -gKirbyState.unk40;
                } else {
                    D_800D7238 = gKirbyState.unk40;
                }
                D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = D_800D7238;
            }
            id = omCurrentObj->objId;
            if ((D_800EA6E0[id] == 0.0f) && (D_800E8920[id] != 0)
                && (gKirbyController.buttonHeld & 0x300)) {
                if (ABSF(D_800E64D0[id]) <= 2.0f) {
                    gKirbyState.unk44 = 0;
                    if (gKirbyController.buttonHeld & 0x100) {
                        D_800E6A10[omCurrentObj->objId] = 1.0f;
                    } else {
                        D_800E6A10[omCurrentObj->objId] = -1.0f;
                    }
                }
            }
            break;
        case 0:
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                if ((D_800E64D0[id] == 0.0f) && (D_800E6850[id] == 0.0f)) {
                    cnt = D_800E9720[id];
                    if (cnt != 0) {
                        if (cnt > 0) {
                            D_800E9720[id] = cnt - 1;
                            if (func_80121C90() != 0) {
                                id = omCurrentObj->objId;
                                D_800E6690[id] = D_800E6A10[id] * 0.25f;
                                D_800E6850[id] = 2.0f;
                            } else if (!(gKirbyState.isTurning & 1)) {
                                if (func_80121194() != 0) {
                                    gKirbyState.isTurning |= 1;
                                }
                            }
                        } else {
                            gKirbyState.unk44 = 1;
                        }
                    }
                } else {
                    if (func_800F8824(D_8012BCA8[1], D_800E17D0[id]) < 0.0f) {
                        D_800EA8A0[omCurrentObj->objId] =
                            -func_800F8824(D_8012BCA8[1], D_800E17D0[omCurrentObj->objId]);
                    } else {
                        D_800EA8A0[omCurrentObj->objId] =
                            func_800F8824(D_8012BCA8[1], D_800E17D0[omCurrentObj->objId]);
                    }
                    id = omCurrentObj->objId;
                    if (D_800EA8A0[id] < 0.785f) {
                        func_801219C8();
                        func_8011ED68();
                        if (D_800E9720[omCurrentObj->objId] < 0) {
                            gKirbyState.unk3C = -1;
                            gKirbyState.unk44 = 0;
                        }
                    } else {
                        D_800E6850[id] = 0.0f;
                        if (D_800E9720[omCurrentObj->objId] < 0) {
                            gKirbyState.unk44 = 1;
                        }
                    }
                }
                break;
            }
            gKirbyState.unk44 = 2;
            gKirbyState.unk3C = 2;
            /* fallthrough: the fresh airborne phase runs its check now */
        case 2:
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                gKirbyState.unk3C = -1;
                gKirbyState.unk44 = 0;
            } else if (D_800E9720[id] < 0) {
                gKirbyState.unk44 = 1;
            }
            break;
        case 3:
            if (gKirbyState.unk30 != 0) {
                func_8011D67C();
                return;
            }
            if (gKirbyState.unk38 != 1.0f) {
                play_sound(0x122);
                id = omCurrentObj->objId;
                func_800A7F74(2, 1, 0x4F, gEntitiesNextPosXArray[id],
                              gEntitiesNextPosYArray[id] + 20.0f, gEntitiesNextPosZArray[id]);
                D_800E9560[omCurrentObj->objId] = 9;
            }
            id = omCurrentObj->objId;
            if (D_800E9560[id] != 0) {
                D_800E9560[id]--;
                func_8015449C_ovl3(D_80194898_ovl3, 0);
                func_80111C4C(func_80111A04(D_80191680_ovl3, omCurrentObj->objId));
            }
            break;
        default:
            break;
    }
    if (gKirbyState.abilityInUse != 0) {
        func_80111C4C(func_80111A04(D_8019163C_ovl3, omCurrentObj->objId));
        if (gKirbyState.unk44 != -1) {
            func_8015449C_ovl3(D_80193428_ovl3, 0);
        }
    }
phase_check:
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#elif defined(PORT)
/* PORT: the mini-stone-form (action 0x2D) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_8017F988_ovl3.s (via m2c with the
 * jtbl_801976D8 jump table) -- the ovl3_6 twin of kirby.c's ported stone
 * handler func_8017A390_ovl3. Water-scaled anim speed, landing thud
 * (voice stop + 0x123, or 0x149 when un-stoning) with the terrain
 * particle when func_80121828's fall test trips, held direction latched
 * into D_800E98E0, un-stone decision (scripted grab, the D_800E83E0
 * damage latch, or B once the unk16 drop timer ran out -- B during the
 * drop just arms unkA). Phase -1 grows the entity scale by 0.04 toward
 * the 0.4 mini cap. Phase 1 rolls: slope from the floor normal drives
 * the drift/cap formula scaled by the terrain accel, gravel particles
 * every 3rd frame above speed 6 (3 in water), the spin angle unk40
 * integrates speed*2deg into wheel DObj [1]'s pitch (mirrored by facing
 * through the D_800D7238 scratch) thudding 0x121 each full turn, and a
 * held direction below speed 2 on flat ground drops to phase 0. Phase 0
 * idles exactly like the stone (turn poll / slope settle / counter),
 * phase 2 falls, phase 3 pops out (one-shot 0x122 + particle 0x4F at
 * +20y while the blend is still 0.4, then a 9-tick D_80194898 flash)
 * until the coroutine finishes into func_8011D67C. While armed the
 * D_8019163C hitbox runs every tick, plus the D_80193428 overlay once
 * out of the grow phase; a phase change re-triggers the coroutine
 * process (func_8016C510_ovl3).
 *
 * Port notes: conventions carried from the kirby.c arm -- the plylib
 * helpers func_8011E374 / func_801219C8 / func_80121C90 / func_80121194
 * / func_801231D8 / func_80123240 / func_80120AF8(Vector*) are void-arg
 * (or single-arg) on PC and every extra argument m2c prints is a
 * leftover register; func_80121828's raw bit constants are 18.0f/9.0f;
 * the floor normal reads (m2c's `D_8012BCA8.unk4` and `D_8012BCA0.unkC`,
 * both N64 base+0xC) are D_8012BCA8[1]; `&D_800D71E8 + 0x50` is the f32
 * scratch D_800D7238; `D_800DFBD0[...]->unk4->unk30` is DObj list entry
 * [1]'s angle.v.x; func_800AECC0/func_800AED20 take a real f32 so they
 * are prototyped here (the file's own externs for them only appear
 * further down, inside a later NON_MATCHING block). */
void func_8017F988_ovl3(s32 arg0) {
    s32 func_80121828(f32, f32, f32, f32);
    void func_80120AF8(Vector *);
    f32 func_8011E374(void);
    void func_801219C8(void);
    s32 func_80121C90(void);
    s32 func_80121194(void);
    s32 func_801231D8(void);
    s32 func_80123240(void);
    void func_8011ED68(void);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    f32 func_800F8824(Vector *, f32);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern Vector *D_8012BCA8[];
    extern u32 D_800BE4EC;
    extern f32 D_800D7238;
    extern u8 D_8019163C_ovl3[];
    extern u8 D_80191680_ovl3[];
    extern u8 D_80193428_ovl3[];
    extern u8 D_80194898_ovl3[];
    Vector accel;
    f32 animSpd;
    f32 slope;
    f32 base;
    f32 fric;
    f32 f;
    s32 bail = 0;
    s32 wrapped;
    s32 cnt;
    s32 snd;
    s32 id;

    func_80153984_ovl3();
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        animSpd = 1.25f;
    } else {
        animSpd = 1.0f;
    }
    func_800AECC0(animSpd);
    func_800AED20(animSpd);
    if (func_80121828(-0.980665f, 18.0f, -0.980665f, 9.0f) != 0) {
        if (gKirbyState.unk44 != 3) {
            func_800FB914(3);
            func_800BB468(0, 0);
            play_sound(0x123);
        } else {
            play_sound(0x149);
        }
        snd = func_801231D8();
        if (snd != -1) {
            id = omCurrentObj->objId;
            func_800A7F74(5, 1, snd, gEntitiesNextPosXArray[id],
                          gEntitiesNextPosYArray[id], gEntitiesNextPosZArray[id]);
        }
    }
    if (gKirbyController.buttonHeld & 0x300) {
        if (gKirbyController.buttonHeld & 0x100) {
            D_800E98E0[omCurrentObj->objId] = 1;
        } else {
            D_800E98E0[omCurrentObj->objId] = -1;
        }
    }
    if ((gKirbyState.unk17 != 0) || (D_800E83E0[omCurrentObj->objId] != 0)) {
        bail = 1;
    } else if (gKirbyState.unk16 == 0) {
        if (gKirbyController.buttonPressed & 0x4000) {
            bail = 1;
        } else if (gKirbyState.unkA == 4) {
            bail = 1;
        }
    } else if (gKirbyController.buttonPressed & 0x4000) {
        gKirbyState.unkA = 4;
    }
    if ((bail != 0) && (gKirbyState.unk44 != 3)) {
        gKirbyState.unk44 = 3;
        id = omCurrentObj->objId;
        D_800E6A10[id] = (f32) D_800E98E0[id];
        f = func_8011E374();
        gEntitiesAngleYArray[omCurrentObj->objId] = f;
        D_800E17D0[omCurrentObj->objId] = f;
        if (gKirbyState.unk17 != 0) {
            gKirbyState.isTurning &= ~1;
        }
        goto phase_check;
    }
    switch (gKirbyState.unk44) {
        case -1:
            id = omCurrentObj->objId;
            if (gEntitiesScaleXArray[id] < 0.4f) {
                gEntitiesScaleXArray[id] += 0.04f;
                id = omCurrentObj->objId;
                gEntitiesScaleZArray[id] = gEntitiesScaleXArray[id];
                gEntitiesScaleYArray[id] = gEntitiesScaleXArray[id];
            } else {
                gEntitiesScaleXArray[id] = 0.4f;
                gEntitiesScaleYArray[id] = 0.4f;
                gEntitiesScaleZArray[id] = 0.4f;
            }
            break;
        case 1:
            id = omCurrentObj->objId;
            gEntitiesAngleYArray[id] = D_800E17D0[id];
            if (D_800E8920[id] == 0) {
                func_80120A28();
            } else {
                func_80120AF8(&accel);
                id = omCurrentObj->objId;
                D_800EA6E0[id] = -func_800F8824(D_8012BCA8[1], D_800E17D0[id]);
                slope = D_800EA6E0[id];
                if (((slope > 0.0f) && (D_800E6A10[id] == -1.0f))
                    || ((slope < 0.0f) && (D_800E6A10[id] == 1.0f))) {
                    base = -0.1f * accel.y;
                } else {
                    base = 0.1f * accel.y;
                }
                if (slope == 0.0f) {
                    fric = 0.0f;
                } else if (!(D_800E8AE0[id] & 6)) {
                    fric = 2.0f;
                } else {
                    fric = 1.0f;
                }
                D_800E6690[id] = (ABSF(slope) * 10.0f * base) + base;
                f = (ABSF(slope) * 4.0f * fric) + fric;
                D_800E6850[id] = ABSF(f);
                id = omCurrentObj->objId;
                f = ABSF(D_800E64D0[id]);
                if (!(D_800E8AE0[id] & 6)) {
                    base = 6.0f;
                } else {
                    base = 3.0f;
                }
                if ((base < f) && ((D_800BE4EC % 3U) == 0)) {
                    snd = func_80123240();
                    if (snd != -1) {
                        id = omCurrentObj->objId;
                        func_800A7F74(5, 1, snd, gEntitiesNextPosXArray[id],
                                      gEntitiesNextPosYArray[id], gEntitiesNextPosZArray[id]);
                    }
                }
            }
            id = omCurrentObj->objId;
            if (D_800E64D0[id] != 0.0f) {
                wrapped = 0;
                gKirbyState.unk40 += (2.0f * D_800E64D0[id] * 3.1415927f) / 180.0f;
                if (gKirbyState.unk40 < 0.0f) {
                    wrapped = 1;
                    gKirbyState.unk40 += 6.2831855f;
                } else if (gKirbyState.unk40 >= 6.2831855f) {
                    wrapped = 1;
                    gKirbyState.unk40 -= 6.2831855f;
                }
                id = omCurrentObj->objId;
                if ((D_800E8920[id] != 0) && (wrapped != 0)) {
                    if (ABSF(D_800E64D0[id]) > 1.0f) {
                        play_sound(0x121);
                    }
                }
                id = omCurrentObj->objId;
                if (D_800E6A10[id] == -1.0f) {
                    D_800D7238 = -gKirbyState.unk40;
                } else {
                    D_800D7238 = gKirbyState.unk40;
                }
                D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = D_800D7238;
            }
            id = omCurrentObj->objId;
            if ((D_800EA6E0[id] == 0.0f) && (D_800E8920[id] != 0)
                && (gKirbyController.buttonHeld & 0x300)) {
                if (ABSF(D_800E64D0[id]) <= 2.0f) {
                    gKirbyState.unk44 = 0;
                    if (gKirbyController.buttonHeld & 0x100) {
                        D_800E6A10[omCurrentObj->objId] = 1.0f;
                    } else {
                        D_800E6A10[omCurrentObj->objId] = -1.0f;
                    }
                }
            }
            break;
        case 0:
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                if ((D_800E64D0[id] == 0.0f) && (D_800E6850[id] == 0.0f)) {
                    cnt = D_800E9720[id];
                    if (cnt != 0) {
                        if (cnt > 0) {
                            D_800E9720[id] = cnt - 1;
                            if (func_80121C90() != 0) {
                                id = omCurrentObj->objId;
                                D_800E6690[id] = D_800E6A10[id] * 0.25f;
                                D_800E6850[id] = 2.0f;
                            } else if (!(gKirbyState.isTurning & 1)) {
                                if (func_80121194() != 0) {
                                    gKirbyState.isTurning |= 1;
                                }
                            }
                        } else {
                            gKirbyState.unk44 = 1;
                        }
                    }
                } else {
                    if (func_800F8824(D_8012BCA8[1], D_800E17D0[id]) < 0.0f) {
                        D_800EA8A0[omCurrentObj->objId] =
                            -func_800F8824(D_8012BCA8[1], D_800E17D0[omCurrentObj->objId]);
                    } else {
                        D_800EA8A0[omCurrentObj->objId] =
                            func_800F8824(D_8012BCA8[1], D_800E17D0[omCurrentObj->objId]);
                    }
                    id = omCurrentObj->objId;
                    if (D_800EA8A0[id] < 0.785f) {
                        func_801219C8();
                        func_8011ED68();
                        if (D_800E9720[omCurrentObj->objId] < 0) {
                            gKirbyState.unk3C = -1;
                            gKirbyState.unk44 = 0;
                        }
                    } else {
                        D_800E6850[id] = 0.0f;
                        if (D_800E9720[omCurrentObj->objId] < 0) {
                            gKirbyState.unk44 = 1;
                        }
                    }
                }
                break;
            }
            gKirbyState.unk44 = 2;
            gKirbyState.unk3C = 2;
            /* fallthrough: the fresh airborne phase runs its check now */
        case 2:
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                gKirbyState.unk3C = -1;
                gKirbyState.unk44 = 0;
            } else if (D_800E9720[id] < 0) {
                gKirbyState.unk44 = 1;
            }
            break;
        case 3:
            if (gKirbyState.unk30 != 0) {
                func_8011D67C();
                return;
            }
            if (gKirbyState.unk38 != 1.0f) {
                play_sound(0x122);
                id = omCurrentObj->objId;
                func_800A7F74(2, 1, 0x4F, gEntitiesNextPosXArray[id],
                              gEntitiesNextPosYArray[id] + 20.0f, gEntitiesNextPosZArray[id]);
                D_800E9560[omCurrentObj->objId] = 9;
            }
            id = omCurrentObj->objId;
            if (D_800E9560[id] != 0) {
                D_800E9560[id]--;
                func_8015449C_ovl3(D_80194898_ovl3, 0);
                func_80111C4C(func_80111A04(D_80191680_ovl3, omCurrentObj->objId));
            }
            break;
        default:
            break;
    }
    if (gKirbyState.abilityInUse != 0) {
        func_80111C4C(func_80111A04(D_8019163C_ovl3, omCurrentObj->objId));
        if (gKirbyState.unk44 != -1) {
            func_8015449C_ovl3(D_80193428_ovl3, 0);
        }
    }
phase_check:
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017F988_ovl3.s")
#endif

#ifdef NON_MATCHING
/* FACTORY: 6/208, neighbouring FP-register floor -- measured 2026-08-23.
   Everything matches except two shared FP constants ($f0 = the 0.0f used
   for D_800E6690/D_800E3750, $f2 = the D_8019770C_ovl3 extern read into
   `temp`, used for D_800E6850/D_800E3C90) landing in the OPPOSITE of the
   two neighbouring registers: the ROM has 0.0f in $f0 and temp in $f2, the
   draft has them swapped. Swept: moving `temp = D_8019770C_ovl3;` after
   the first pair of 0.0f stores (worse -- 19/208, forks a whole extra
   load/address-computation chain) and inlining D_8019770C_ovl3 directly at
   both use sites instead of through `temp` (same, worse -- 19/208,
   identical failure shape to the reorder). Same class as the guard-on-the-
   second-variant "CSE'd load landing in the neighbouring register"
   floor ($v0/$v1, $a2/$a3), extended here to $f0/$f2. Good permuter seed. */
extern f32 *D_801926E8_ovl3[];
extern u8 D_801906D8_ovl3[];
extern f32 D_8019770C_ovl3;
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_80120A28(void);
extern void func_80122F08(s32);
extern void func_801230E8(s32, s32, s32);
extern void play_sound(s32);
extern void curObjSleepForever(void);

void func_80180818_ovl3(s32 arg0) {
    f32 temp;

    gKirbyState.unk30 = 0;
    gKirbyState.unk3C = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x2E;
    if ((D_800E8920[omCurrentObj->objId] == 0) && (gKirbyController.buttonHeld & 0x400)) {
        gKirbyState.unk44 = 0;
    } else {
        gKirbyState.unk44 = 1;
    }
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_801906D8_ovl3;
    func_80122F08(0x20017);
    gKirbyState.unk154 = 0xD;
    func_8011DC04(0x125);
    if (gKirbyState.unk44 == 0) {
        temp = D_8019770C_ovl3;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = temp;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = temp;
        func_801230E8(0x201CF, 0x201D0, 1);
    } else {
        func_801230E8(0x201CB, 0x201CC, 1);
    }
    gKirbyState.abilityInUse = gKirbyState.ability;
    if (gKirbyState.unk44 == 0) {
        func_801230E8(0x201C9, 0x201CA, 0);
    } else {
        func_801230E8(0x201C7, 0x201C8, 0);
    }
    while (gKirbyController.buttonHeld & 0x4000) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        ohSleep(1);
    }
    func_8011DC5C();
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    play_sound(0x229);
    D_800EC2E0[func_801632B8_ovl3(5)].as_s32 = gKirbyState.unk44;
    func_800AECC0(D_800E09D0[omCurrentObj->objId] * 0.25f);
    func_800AED20(D_800E09D0[omCurrentObj->objId] * 0.25f);
    func_80120A28();
    if (gKirbyState.unk44 == 0) {
        func_801230E8(0x201D1, 0x201D2, 1);
    } else {
        func_801230E8(0x201CD, 0x201CE, 1);
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80180818_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 29/302, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming) so it seals verbatim. Queued for the permuter. */
/* PORT: the needle-spray (action 0x2E) per-tick handler (paired with the
 * func_80180818_ovl3 coroutine above), from asm/nonmatchings/ovl3/ovl3_6/
 * func_80180B58_ovl3.s (via m2c). Runs the alternate tick prologue
 * func_80153AD4_ovl3 and the global Y sink; in the airborne variant
 * (unk44 == 1) with the ability armed and no wall hit it pushes a 0.8 *
 * facing drift with a 6.0 cap (3.0 in water) and services input, else it
 * freezes vertical motion; the grounded variant just services input.
 * When the coroutine is done it releases the anim/sound locks and the
 * 0x4000 turn latch and hands off. While armed it refreshes the 0x4000
 * latch (wall contact when airborne, ground contact otherwise), attaches
 * the D_801916E8 emitter set to DObj [9], draws the D_80194904 overlay
 * through the variant matrix (D_801948A4 grounded / D_801948D4 airborne,
 * layer 3), then probes around DObj [9]'s world position: airborne, a
 * wall hit or the 28.5/type-2 or 70.0/type-5 probes keep the 0x49 spray
 * effect alive on DObj [0x12]; grounded, the -65.0/type-3 probe keeps
 * the 0x4A effect; with nothing hit the anim lock is released.
 *
 * Port notes: the 6-or-3 cap ladder is the ROM's redundant ABS of the
 * positive constant; D_80197710/D_80197714 are 0.8f/65535.0f inlined;
 * m2c's D_800DFBD0[...]->unk24/unk48 are DObj list entries [9]/[0x12]
 * (N64 4-byte cells); func_80155838_ovl3's raw bit ranges are 28.5f /
 * 70.0f / -65.0f; func_8016854C_ovl3 keeps its (s32, s32, f32) file
 * spelling with (s32)(uintptr_t) handles like the kirby.c arms (game
 * objects sit below 4GB on this build); func_800B2340's DObj handle goes
 * through the same cast. */
void func_80180B58_ovl3(s32 arg0) {
    s32 func_80153AD4_ovl3(void);
    void func_80121658(void);
    void func_800B2340(Vector *, s32, s32);
    s32 func_80155838_ovl3(Vector *, f32, s32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    extern f32 D_800EC9E4;
    extern u8 D_801916E8_ovl3[];
    extern f32 D_801948A4_ovl3[][4];
    extern f32 D_801948D4_ovl3[][4];
    extern u8 D_80194904_ovl3[];
    Vector pos;
    s32 hit;
    s32 id;

    func_80153AD4_ovl3();
    gEntitiesNextPosYArray[omCurrentObj->objId] -= D_800EC9E4;
    if (gKirbyState.unk44 == 1) {
        if ((gKirbyState.horizontalCollision == 0) && (gKirbyState.abilityInUse != 0)) {
            id = omCurrentObj->objId;
            D_800E6690[id] = D_800E6A10[id] * 0.8f;
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6850[id] = 6.0f;
            } else {
                D_800E6850[id] = 3.0f;
            }
            func_80121658();
        } else {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            id = omCurrentObj->objId;
            D_800E3210[id] = D_800E3750[id];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
        }
    } else {
        func_80121658();
    }
    if (gKirbyState.unk30 != 0) {
        func_8011E0E8();
        func_8011DC5C();
        func_8011D67C();
        gKirbyState.isTurning &= ~0x4000;
        return;
    }
    if (gKirbyState.abilityInUse != 0) {
        hit = 0;
        func_8011CF58();
        if (gKirbyState.unk44 == 1) {
            if (gKirbyState.horizontalCollision != 0) {
                gKirbyState.isTurning |= 0x4000;
            } else {
                gKirbyState.isTurning &= ~0x4000;
            }
        } else if (D_800E8920[omCurrentObj->objId] != 0) {
            gKirbyState.isTurning |= 0x4000;
        } else {
            gKirbyState.isTurning &= ~0x4000;
        }
        func_8016854C_ovl3((s32) (uintptr_t) D_801916E8_ovl3,
                           (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][9], 1.0f);
        if (gKirbyState.unk44 == 0) {
            func_80152070_ovl3(D_801948A4_ovl3, (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                               3, 1.0f);
        } else {
            func_80152070_ovl3(D_801948D4_ovl3, (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                               3, 1.0f);
        }
        func_8015449C_ovl3(D_80194904_ovl3, 0);
        func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][9], 0xFFFF);
        if (gKirbyState.unk44 == 1) {
            if (gKirbyState.horizontalCollision != 0) {
                hit = 1;
            } else {
                if (func_80155838_ovl3(&pos, 28.5f, 2) != 0) {
                    hit = 1;
                }
                if (func_80155838_ovl3(&pos, 70.0f, 5) != 0) {
                    hit += 1;
                }
            }
            if (hit != 0) {
                if (gKirbyState.unk4C == 0) {
                    gKirbyState.unk4C =
                        func_800A8100(2, 1, 0x49, D_800DFBD0[omCurrentObj->objId][0x12]);
                }
            } else {
                func_8011E0E8();
            }
        } else {
            if (func_80155838_ovl3(&pos, -65.0f, 3) != 0) {
                hit = 1;
            }
            if (hit != 0) {
                if (gKirbyState.unk4C == 0) {
                    gKirbyState.unk4C =
                        func_800A8100(2, 1, 0x4A, D_800DFBD0[omCurrentObj->objId][0x12]);
                }
            } else {
                func_8011E0E8();
            }
        }
    }
}
#elif defined(PORT)
/* PORT: the needle-spray (action 0x2E) per-tick handler (paired with the
 * func_80180818_ovl3 coroutine above), from asm/nonmatchings/ovl3/ovl3_6/
 * func_80180B58_ovl3.s (via m2c). Runs the alternate tick prologue
 * func_80153AD4_ovl3 and the global Y sink; in the airborne variant
 * (unk44 == 1) with the ability armed and no wall hit it pushes a 0.8 *
 * facing drift with a 6.0 cap (3.0 in water) and services input, else it
 * freezes vertical motion; the grounded variant just services input.
 * When the coroutine is done it releases the anim/sound locks and the
 * 0x4000 turn latch and hands off. While armed it refreshes the 0x4000
 * latch (wall contact when airborne, ground contact otherwise), attaches
 * the D_801916E8 emitter set to DObj [9], draws the D_80194904 overlay
 * through the variant matrix (D_801948A4 grounded / D_801948D4 airborne,
 * layer 3), then probes around DObj [9]'s world position: airborne, a
 * wall hit or the 28.5/type-2 or 70.0/type-5 probes keep the 0x49 spray
 * effect alive on DObj [0x12]; grounded, the -65.0/type-3 probe keeps
 * the 0x4A effect; with nothing hit the anim lock is released.
 *
 * Port notes: the 6-or-3 cap ladder is the ROM's redundant ABS of the
 * positive constant; D_80197710/D_80197714 are 0.8f/65535.0f inlined;
 * m2c's D_800DFBD0[...]->unk24/unk48 are DObj list entries [9]/[0x12]
 * (N64 4-byte cells); func_80155838_ovl3's raw bit ranges are 28.5f /
 * 70.0f / -65.0f; func_8016854C_ovl3 keeps its (s32, s32, f32) file
 * spelling with (s32)(uintptr_t) handles like the kirby.c arms (game
 * objects sit below 4GB on this build); func_800B2340's DObj handle goes
 * through the same cast. */
void func_80180B58_ovl3(s32 arg0) {
    s32 func_80153AD4_ovl3(void);
    void func_80121658(void);
    void func_800B2340(Vector *, s32, s32);
    s32 func_80155838_ovl3(Vector *, f32, s32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    extern f32 D_800EC9E4;
    extern u8 D_801916E8_ovl3[];
    extern f32 D_801948A4_ovl3[][4];
    extern f32 D_801948D4_ovl3[][4];
    extern u8 D_80194904_ovl3[];
    Vector pos;
    s32 hit;
    s32 id;

    func_80153AD4_ovl3();
    gEntitiesNextPosYArray[omCurrentObj->objId] -= D_800EC9E4;
    if (gKirbyState.unk44 == 1) {
        if ((gKirbyState.horizontalCollision == 0) && (gKirbyState.abilityInUse != 0)) {
            id = omCurrentObj->objId;
            D_800E6690[id] = D_800E6A10[id] * 0.8f;
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6850[id] = 6.0f;
            } else {
                D_800E6850[id] = 3.0f;
            }
            func_80121658();
        } else {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            id = omCurrentObj->objId;
            D_800E3210[id] = D_800E3750[id];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
        }
    } else {
        func_80121658();
    }
    if (gKirbyState.unk30 != 0) {
        func_8011E0E8();
        func_8011DC5C();
        func_8011D67C();
        gKirbyState.isTurning &= ~0x4000;
        return;
    }
    if (gKirbyState.abilityInUse != 0) {
        hit = 0;
        func_8011CF58();
        if (gKirbyState.unk44 == 1) {
            if (gKirbyState.horizontalCollision != 0) {
                gKirbyState.isTurning |= 0x4000;
            } else {
                gKirbyState.isTurning &= ~0x4000;
            }
        } else if (D_800E8920[omCurrentObj->objId] != 0) {
            gKirbyState.isTurning |= 0x4000;
        } else {
            gKirbyState.isTurning &= ~0x4000;
        }
        func_8016854C_ovl3((s32) (uintptr_t) D_801916E8_ovl3,
                           (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][9], 1.0f);
        if (gKirbyState.unk44 == 0) {
            func_80152070_ovl3(D_801948A4_ovl3, (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                               3, 1.0f);
        } else {
            func_80152070_ovl3(D_801948D4_ovl3, (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                               3, 1.0f);
        }
        func_8015449C_ovl3(D_80194904_ovl3, 0);
        func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][9], 0xFFFF);
        if (gKirbyState.unk44 == 1) {
            if (gKirbyState.horizontalCollision != 0) {
                hit = 1;
            } else {
                if (func_80155838_ovl3(&pos, 28.5f, 2) != 0) {
                    hit = 1;
                }
                if (func_80155838_ovl3(&pos, 70.0f, 5) != 0) {
                    hit += 1;
                }
            }
            if (hit != 0) {
                if (gKirbyState.unk4C == 0) {
                    gKirbyState.unk4C =
                        func_800A8100(2, 1, 0x49, D_800DFBD0[omCurrentObj->objId][0x12]);
                }
            } else {
                func_8011E0E8();
            }
        } else {
            if (func_80155838_ovl3(&pos, -65.0f, 3) != 0) {
                hit = 1;
            }
            if (hit != 0) {
                if (gKirbyState.unk4C == 0) {
                    gKirbyState.unk4C =
                        func_800A8100(2, 1, 0x4A, D_800DFBD0[omCurrentObj->objId][0x12]);
                }
            } else {
                func_8011E0E8();
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80180B58_ovl3.s")
#endif

void func_80181014_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x2F;
    play_sound(0x22);
    if (func_801ACCA0_ovl7(0x3A, 0, 30.0f, 15.0f) != 0) {
        gKirbyState.abilityInUse = gKirbyState.ability;
    } else {
        gKirbyState.abilityInUse = 0;
    }
    func_80122F08(0x20008);
    func_801230E8(0x20150, 0x20151, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_801810D0_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 24/313, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming) so it seals verbatim. Queued for the permuter. */
/* PORT: the burning-dash coroutine (track action 0x30, model 0x20014),
 * from asm/nonmatchings/ovl3/ovl3_6/func_80181110_ovl3.s (via m2c).
 * Clears the wall-bounce latch D_800E9AA0, kills vertical motion when
 * grounded, plays 0xBB, stages the D_80190378 then D_80190670 PlyEntry
 * handles around the 0x201BB/0x201BC pair, arms the ability with the
 * D_8019297C anim table, spawns the 0x3E/0x3F flame effects on DObj
 * [1]/[2] and the 0xC6 loop voice, then launches: |speed|*1.5 (min 5.0
 * in water at |v|<=1.5, min 7.0 on land at |v|<=4.0) staged through the
 * D_800D7238 scratch times the facing sign, with a 0.025*facing drift
 * and a zero cap so friction burns it down. It then rides the dash
 * until the track stops, a scripted grab lands, or B is pressed,
 * re-boosting the drift by 1.2x under speed 4 (1.25x under 2 in water),
 * and exits through the lock releases, the 0x24B stop sound, the
 * charge burn func_8011D614 and the 0x201BD/0x201BE pair.
 *
 * Port notes: m2c's `&D_800D71E8 + 0x50` staging cell is the f32
 * scratch D_800D7238; D_800DFBD0[...]->unk4/unk8 are DObj list entries
 * [1]/[2]; D_80197718/1C/20 are 65535.0f / 0.025f / 1.2f inlined; the
 * D_800E9AA0 cells are the MultiType union accessed .as_u32 (m2c's *4
 * byte offsets would mis-stride the 8-byte PC cells). */
void func_80181110_ovl3(s32 arg0) {
    void func_8011D614(void);
    extern f32 D_800D7238;
    extern u8 D_80190378_ovl3[];
    extern u8 D_80190670_ovl3[];
    extern f32 *D_8019297C_ovl3[];
    f32 lim;
    f32 mul;
    s32 id;

    D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk30 = D_800E9AA0[omCurrentObj->objId].as_u32;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x30;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    if (D_800E8920[id] != 0) {
        D_800E3750[id] = 0.0f;
        id = omCurrentObj->objId;
        D_800E3210[id] = D_800E3750[id];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
    }
    play_sound(0xBB);
    gKirbyState.unk15C = (u32) (uintptr_t) D_80190378_ovl3;
    func_801230E8(0x201BB, 0x201BC, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800E0490[omCurrentObj->objId] = D_8019297C_ovl3;
    gKirbyState.unk15C = (u32) (uintptr_t) D_80190670_ovl3;
    func_80122F08(0x20014);
    gKirbyState.unk154 = 1;
    gKirbyState.unk4C = func_800A8100(2, 1, 0x3E, D_800DFBD0[omCurrentObj->objId][1]);
    gKirbyState.unk50 = func_800A8100(2, 1, 0x3F, D_800DFBD0[omCurrentObj->objId][2]);
    func_8011DC04(0xC6);
    id = omCurrentObj->objId;
    if (D_800E8AE0[id] & 6) {
        if (ABSF(D_800E64D0[id]) > 1.5f) {
            D_800D7238 = ABSF(D_800E64D0[id] * 1.5f);
        } else {
            D_800D7238 = 5.0f;
        }
    } else {
        if (ABSF(D_800E64D0[id]) > 4.0f) {
            D_800D7238 = ABSF(D_800E64D0[id] * 1.5f);
        } else {
            D_800D7238 = 7.0f;
        }
    }
    id = omCurrentObj->objId;
    D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
    id = omCurrentObj->objId;
    D_800E6690[id] = D_800E6A10[id] * 0.025f;
    D_800E6850[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    while (D_800E64D0[id] != 0.0f) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        if (gKirbyController.buttonPressed & 0x4000) {
            break;
        }
        if (D_800E8AE0[id] & 6) {
            lim = 2.0f;
            mul = 1.25f;
        } else {
            lim = 4.0f;
            mul = 1.2f;
        }
        if (ABSF(D_800E64D0[id]) < lim) {
            D_800E6690[id] *= mul;
        }
        ohSleep(1);
        id = omCurrentObj->objId;
    }
    func_8011DC5C();
    func_8011E0E8();
    play_sound(0x24B);
    gKirbyState.abilityInUse = 0;
    func_8011D614();
    func_801230E8(0x201BD, 0x201BE, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the burning-dash coroutine (track action 0x30, model 0x20014),
 * from asm/nonmatchings/ovl3/ovl3_6/func_80181110_ovl3.s (via m2c).
 * Clears the wall-bounce latch D_800E9AA0, kills vertical motion when
 * grounded, plays 0xBB, stages the D_80190378 then D_80190670 PlyEntry
 * handles around the 0x201BB/0x201BC pair, arms the ability with the
 * D_8019297C anim table, spawns the 0x3E/0x3F flame effects on DObj
 * [1]/[2] and the 0xC6 loop voice, then launches: |speed|*1.5 (min 5.0
 * in water at |v|<=1.5, min 7.0 on land at |v|<=4.0) staged through the
 * D_800D7238 scratch times the facing sign, with a 0.025*facing drift
 * and a zero cap so friction burns it down. It then rides the dash
 * until the track stops, a scripted grab lands, or B is pressed,
 * re-boosting the drift by 1.2x under speed 4 (1.25x under 2 in water),
 * and exits through the lock releases, the 0x24B stop sound, the
 * charge burn func_8011D614 and the 0x201BD/0x201BE pair.
 *
 * Port notes: m2c's `&D_800D71E8 + 0x50` staging cell is the f32
 * scratch D_800D7238; D_800DFBD0[...]->unk4/unk8 are DObj list entries
 * [1]/[2]; D_80197718/1C/20 are 65535.0f / 0.025f / 1.2f inlined; the
 * D_800E9AA0 cells are the MultiType union accessed .as_u32 (m2c's *4
 * byte offsets would mis-stride the 8-byte PC cells). */
void func_80181110_ovl3(s32 arg0) {
    void func_8011D614(void);
    extern f32 D_800D7238;
    extern u8 D_80190378_ovl3[];
    extern u8 D_80190670_ovl3[];
    extern f32 *D_8019297C_ovl3[];
    f32 lim;
    f32 mul;
    s32 id;

    D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk30 = D_800E9AA0[omCurrentObj->objId].as_u32;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x30;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    if (D_800E8920[id] != 0) {
        D_800E3750[id] = 0.0f;
        id = omCurrentObj->objId;
        D_800E3210[id] = D_800E3750[id];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
    }
    play_sound(0xBB);
    gKirbyState.unk15C = (u32) (uintptr_t) D_80190378_ovl3;
    func_801230E8(0x201BB, 0x201BC, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800E0490[omCurrentObj->objId] = D_8019297C_ovl3;
    gKirbyState.unk15C = (u32) (uintptr_t) D_80190670_ovl3;
    func_80122F08(0x20014);
    gKirbyState.unk154 = 1;
    gKirbyState.unk4C = func_800A8100(2, 1, 0x3E, D_800DFBD0[omCurrentObj->objId][1]);
    gKirbyState.unk50 = func_800A8100(2, 1, 0x3F, D_800DFBD0[omCurrentObj->objId][2]);
    func_8011DC04(0xC6);
    id = omCurrentObj->objId;
    if (D_800E8AE0[id] & 6) {
        if (ABSF(D_800E64D0[id]) > 1.5f) {
            D_800D7238 = ABSF(D_800E64D0[id] * 1.5f);
        } else {
            D_800D7238 = 5.0f;
        }
    } else {
        if (ABSF(D_800E64D0[id]) > 4.0f) {
            D_800D7238 = ABSF(D_800E64D0[id] * 1.5f);
        } else {
            D_800D7238 = 7.0f;
        }
    }
    id = omCurrentObj->objId;
    D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
    id = omCurrentObj->objId;
    D_800E6690[id] = D_800E6A10[id] * 0.025f;
    D_800E6850[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    while (D_800E64D0[id] != 0.0f) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        if (gKirbyController.buttonPressed & 0x4000) {
            break;
        }
        if (D_800E8AE0[id] & 6) {
            lim = 2.0f;
            mul = 1.25f;
        } else {
            lim = 4.0f;
            mul = 1.2f;
        }
        if (ABSF(D_800E64D0[id]) < lim) {
            D_800E6690[id] *= mul;
        }
        ohSleep(1);
        id = omCurrentObj->objId;
    }
    func_8011DC5C();
    func_8011E0E8();
    play_sound(0x24B);
    gKirbyState.abilityInUse = 0;
    func_8011D614();
    func_801230E8(0x201BD, 0x201BE, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80181110_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 40/318, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming) so it seals verbatim. Queued for the permuter. */
/* PORT: the burning-dash (action 0x30) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_801815F4_ovl3.s (via m2c). Latches
 * last tick's surface bits into D_800E98E0 before the alternate tick
 * prologue refreshes them, runs the -0.980665 fall test (16.0/8.0
 * thresholds), and once the coroutine is done levels the pitch and
 * hands off. A scripted grab freezes the drive (65535 cap). Entering
 * water damps the speed to 0.6x. A wall hit bounces once per contact
 * (D_800E9AA0 latch): 0xC7 while armed, drift and facing negated,
 * speed reflected at 0.9x. Grounded it lays the pitch along the floor
 * normal and picks the slope drift (0.0125 uphill / 0.05 downhill /
 * 0.025 flat, times facing), and in the D_8012E860 state re-arms the
 * 0xC6 voice (via the D_8012E818 gate) and lazily respawns the 0x3E/
 * 0x3F flame effects into D_8012E80C; airborne it releases the anim
 * and voice locks. Finally, still in that state, it spins DObj [1]'s
 * pitch by speed*4deg, runs the D_8019172C hitbox, and while the
 * D_8012E80C[0] flame lives attaches the D_80191794 emitter to DObj
 * [2] under the D_80194B1C overlay.
 *
 * Port notes: func_80121828's raw bit thresholds are 16.0f/8.0f; the
 * floor normal read (m2c's D_8012BCA8.unk4, N64 base+0xC) is
 * D_8012BCA8[1]; D_80197724..40 are -0.980665f / 65535.0f / 0.6f /
 * 0.9f / 0.0125f / 0.05f / 0.025f / pi inlined; the D_800E9AA0 cells
 * are the MultiType union accessed .as_u32; m2c's
 * D_800DFBD0[...]->unk4->unk34 is DObj list entry [1]'s angle.v.y and
 * ->unk8 is entry [2]; func_8016854C_ovl3 keeps its (s32, s32, f32)
 * file spelling with (s32)(uintptr_t) handles. */
void func_801815F4_ovl3(s32 arg0) {
    s32 func_80153AD4_ovl3(void);
    s32 func_80121828(f32, f32, f32, f32);
    f32 func_800F8824(Vector *, f32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    extern Vector *D_8012BCA8[];
    extern s32 D_8012E860;
    extern u32 D_8012E818;
    extern u8 D_8019172C_ovl3[];
    extern u8 D_80191794_ovl3[];
    extern u8 D_80194B1C_ovl3[];
    s32 id;

    id = omCurrentObj->objId;
    D_800E98E0[id] = D_800E8AE0[id];
    func_80153AD4_ovl3();
    func_80121828(-0.980665f, 16.0f, -0.980665f, 8.0f);
    if (gKirbyState.unk30 != 0) {
        gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
        func_8011CF58();
        func_8011D67C();
        return;
    }
    if (gKirbyState.unk17 != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    id = omCurrentObj->objId;
    if (D_800E8AE0[id] & 6) {
        if (!(D_800E98E0[id] & 6)) {
            D_800E64D0[id] *= 0.6f;
        }
    }
    if (gKirbyState.horizontalCollision != 0) {
        if (D_800E9AA0[id].as_u32 == 0) {
            if (gKirbyState.abilityInUse != 0) {
                play_sound(0xC7);
                id = omCurrentObj->objId;
            }
            D_800E6690[id] = -D_800E6690[id];
            D_800E64D0[id] = -D_800E64D0[id] * 0.9f;
            D_800E6A10[id] = -D_800E6A10[id];
            D_800E9AA0[id].as_u32 = 1;
            id = omCurrentObj->objId;
        }
    } else {
        D_800E9AA0[id].as_u32 = 0;
        id = omCurrentObj->objId;
    }
    if (D_800E8920[id] != 0) {
        gEntitiesAngleXArray[omCurrentObj->objId] =
            -func_800F8824(D_8012BCA8[1], D_800E17D0[id]);
        id = omCurrentObj->objId;
        if (D_800E64D0[id] != 0.0f) {
            if (gEntitiesAngleXArray[id] != 0.0f) {
                if (gEntitiesAngleXArray[id] > 0.0f) {
                    D_800E6690[id] = D_800E6A10[id] * 0.0125f;
                } else {
                    D_800E6690[id] = D_800E6A10[id] * 0.05f;
                }
            } else {
                D_800E6690[id] = D_800E6A10[id] * 0.025f;
            }
        }
        if (D_8012E860 != 0) {
            if (D_8012E818 == 0) {
                func_8011DC04(0xC6);
            }
            if (D_8012E80C[0] == 0) {
                D_8012E80C[0] = func_800A8100(2, 1, 0x3E, D_800DFBD0[omCurrentObj->objId][1]);
                D_8012E80C[1] = func_800A8100(2, 1, 0x3F, D_800DFBD0[omCurrentObj->objId][2]);
            }
        }
    } else {
        func_8011E0E8();
        func_8011DC5C();
    }
    if (D_8012E860 != 0) {
        id = omCurrentObj->objId;
        D_800DFBD0[id][1]->angle.v.y += (D_800E64D0[id] * 4.0f * 3.1415927f) / 180.0f;
        func_80111C4C(func_80111A04(D_8019172C_ovl3, omCurrentObj->objId));
        if (D_8012E80C[0] != 0) {
            func_8016854C_ovl3((s32) (uintptr_t) D_80191794_ovl3,
                               (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][2], 1.0f);
            func_8015449C_ovl3(D_80194B1C_ovl3, 0);
        }
    }
}
#elif defined(PORT)
/* PORT: the burning-dash (action 0x30) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_801815F4_ovl3.s (via m2c). Latches
 * last tick's surface bits into D_800E98E0 before the alternate tick
 * prologue refreshes them, runs the -0.980665 fall test (16.0/8.0
 * thresholds), and once the coroutine is done levels the pitch and
 * hands off. A scripted grab freezes the drive (65535 cap). Entering
 * water damps the speed to 0.6x. A wall hit bounces once per contact
 * (D_800E9AA0 latch): 0xC7 while armed, drift and facing negated,
 * speed reflected at 0.9x. Grounded it lays the pitch along the floor
 * normal and picks the slope drift (0.0125 uphill / 0.05 downhill /
 * 0.025 flat, times facing), and in the D_8012E860 state re-arms the
 * 0xC6 voice (via the D_8012E818 gate) and lazily respawns the 0x3E/
 * 0x3F flame effects into D_8012E80C; airborne it releases the anim
 * and voice locks. Finally, still in that state, it spins DObj [1]'s
 * pitch by speed*4deg, runs the D_8019172C hitbox, and while the
 * D_8012E80C[0] flame lives attaches the D_80191794 emitter to DObj
 * [2] under the D_80194B1C overlay.
 *
 * Port notes: func_80121828's raw bit thresholds are 16.0f/8.0f; the
 * floor normal read (m2c's D_8012BCA8.unk4, N64 base+0xC) is
 * D_8012BCA8[1]; D_80197724..40 are -0.980665f / 65535.0f / 0.6f /
 * 0.9f / 0.0125f / 0.05f / 0.025f / pi inlined; the D_800E9AA0 cells
 * are the MultiType union accessed .as_u32; m2c's
 * D_800DFBD0[...]->unk4->unk34 is DObj list entry [1]'s angle.v.y and
 * ->unk8 is entry [2]; func_8016854C_ovl3 keeps its (s32, s32, f32)
 * file spelling with (s32)(uintptr_t) handles. */
void func_801815F4_ovl3(s32 arg0) {
    s32 func_80153AD4_ovl3(void);
    s32 func_80121828(f32, f32, f32, f32);
    f32 func_800F8824(Vector *, f32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    extern Vector *D_8012BCA8[];
    extern s32 D_8012E860;
    extern u32 D_8012E818;
    extern u8 D_8019172C_ovl3[];
    extern u8 D_80191794_ovl3[];
    extern u8 D_80194B1C_ovl3[];
    s32 id;

    id = omCurrentObj->objId;
    D_800E98E0[id] = D_800E8AE0[id];
    func_80153AD4_ovl3();
    func_80121828(-0.980665f, 16.0f, -0.980665f, 8.0f);
    if (gKirbyState.unk30 != 0) {
        gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
        func_8011CF58();
        func_8011D67C();
        return;
    }
    if (gKirbyState.unk17 != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    id = omCurrentObj->objId;
    if (D_800E8AE0[id] & 6) {
        if (!(D_800E98E0[id] & 6)) {
            D_800E64D0[id] *= 0.6f;
        }
    }
    if (gKirbyState.horizontalCollision != 0) {
        if (D_800E9AA0[id].as_u32 == 0) {
            if (gKirbyState.abilityInUse != 0) {
                play_sound(0xC7);
                id = omCurrentObj->objId;
            }
            D_800E6690[id] = -D_800E6690[id];
            D_800E64D0[id] = -D_800E64D0[id] * 0.9f;
            D_800E6A10[id] = -D_800E6A10[id];
            D_800E9AA0[id].as_u32 = 1;
            id = omCurrentObj->objId;
        }
    } else {
        D_800E9AA0[id].as_u32 = 0;
        id = omCurrentObj->objId;
    }
    if (D_800E8920[id] != 0) {
        gEntitiesAngleXArray[omCurrentObj->objId] =
            -func_800F8824(D_8012BCA8[1], D_800E17D0[id]);
        id = omCurrentObj->objId;
        if (D_800E64D0[id] != 0.0f) {
            if (gEntitiesAngleXArray[id] != 0.0f) {
                if (gEntitiesAngleXArray[id] > 0.0f) {
                    D_800E6690[id] = D_800E6A10[id] * 0.0125f;
                } else {
                    D_800E6690[id] = D_800E6A10[id] * 0.05f;
                }
            } else {
                D_800E6690[id] = D_800E6A10[id] * 0.025f;
            }
        }
        if (D_8012E860 != 0) {
            if (D_8012E818 == 0) {
                func_8011DC04(0xC6);
            }
            if (D_8012E80C[0] == 0) {
                D_8012E80C[0] = func_800A8100(2, 1, 0x3E, D_800DFBD0[omCurrentObj->objId][1]);
                D_8012E80C[1] = func_800A8100(2, 1, 0x3F, D_800DFBD0[omCurrentObj->objId][2]);
            }
        }
    } else {
        func_8011E0E8();
        func_8011DC5C();
    }
    if (D_8012E860 != 0) {
        id = omCurrentObj->objId;
        D_800DFBD0[id][1]->angle.v.y += (D_800E64D0[id] * 4.0f * 3.1415927f) / 180.0f;
        func_80111C4C(func_80111A04(D_8019172C_ovl3, omCurrentObj->objId));
        if (D_8012E80C[0] != 0) {
            func_8016854C_ovl3((s32) (uintptr_t) D_80191794_ovl3,
                               (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][2], 1.0f);
            func_8015449C_ovl3(D_80194B1C_ovl3, 0);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801815F4_ovl3.s")
#endif

extern void func_800AF314(void);

void func_80181AF0_ovl3(s32 arg0) {
    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    gKirbyState.unkA = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        gKirbyState.unk16 = 0x20;
    } else {
        gKirbyState.unk16 = 0x10;
    }
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x31;
    func_80120A28();
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    func_8011DC04(0xC8);
    func_8011DC30(0xC9);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20015);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201C0, 0x201C1, 0);
    while (func_800AF230() == 0) {
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            goto done;
        }
        ohSleep(1);
    }
    func_801230E8(0x201C2, 0x201C3, 0);
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
done:
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_800AF314();
    func_8011DC5C();
    func_800AA154(0x201C4);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

extern f32 D_80191860_ovl3[];
extern f32 D_80194B28_ovl3[][4];
extern u8 D_80194C28_ovl3[];
extern f32 D_80197744_ovl3;
extern f32 D_80197748_ovl3;
extern s32 func_80120CCC(f32, f32);
extern s32 func_80168408_ovl3(f32 *, void *, f32);
extern s32 func_80152124_ovl3(f32 (*)[4], f32 (*)[4], u8, f32, f32, f32);

void func_80181CFC_ovl3(s32 arg0) {
    s32 flag;
    f32 temp;
    s32 res;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    } else {
        flag = 0;
        if (D_800E98E0[omCurrentObj->objId] == 0) {
            if (gKirbyState.unk17 != 0) {
                flag = 1;
            } else if (gKirbyState.unk16 == 0) {
                if ((gKirbyController.buttonHeld & 0x4000) == 0) {
                    flag = 1;
                } else if (gKirbyState.unkA == 4) {
                    flag = 1;
                }
            } else if ((gKirbyController.buttonHeld & 0x4000) == 0) {
                gKirbyState.unkA = 4;
            }
            temp = D_800DFBD0[omCurrentObj->objId][4]->scale.v.x;
            func_80152124_ovl3(D_80194B28_ovl3, (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10), D_80194C28_ovl3[0],
                               temp, 35.0f, 0.0f);
            res = func_80168408_ovl3(D_80191860_ovl3, 0, temp);
            if (flag != 0) {
                D_800E98E0[omCurrentObj->objId] = 1;
                gKirbyState.unk40 = temp;
                D_800EA6E0[omCurrentObj->objId] = temp / 8;
            }
        } else {
            func_80152124_ovl3(D_80194B28_ovl3, (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10), D_80194C28_ovl3[0],
                               gKirbyState.unk40, 35.0f, 0.0f);
            res = func_80168408_ovl3(D_80191860_ovl3, 0, gKirbyState.unk40);
            gKirbyState.unk40 = gKirbyState.unk40 - D_800EA6E0[omCurrentObj->objId];
        }
        func_8015449C_ovl3(D_80194C28_ovl3, 0);
        func_80111C4C(res);
    }
    func_80120CCC(D_80197744_ovl3, D_80197748_ovl3);
}

#ifdef MIPS_TO_C
/* FACTORY: 82/445, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming, the switch-with-fallthrough mirrors the ROM's literal phase-park layout) so it seals verbatim. Queued for the permuter. */
/* PORT: the ice-skate phase coroutine (track action 0x32, model
 * 0x2001E), from asm/nonmatchings/ovl3/ovl3_6/func_80181F64_ovl3.s (via
 * m2c). First entry arms the ability: resets the jump state, zeroes the
 * 0xA MultiType latch, seeds the 0x7D/6 counters, plays 0xBA with the
 * 0x201FE/0x201FF pair, installs the func_80182658_ovl3 impact process,
 * the D_80190784 PlyEntry handle and the D_80192998 anim table,
 * water-halves the anim speed (1.25 dry / 0.5 wet), spawns the 0x35
 * trail on DObj [8] with the 0xF loop voice, and starts in phase 1
 * (grounded) or 4 (airborne). Phases park on curObjSleepForever and get
 * re-entered by the phase re-trigger: 1 idles on the 0x201F9
 * blend/anim, 2 skates (0.25*facing drift, cap 2) on 0x201FD, 3 jumps
 * (submerged: 0x10B, fixed 8.5 rise, -0.4 gravity; dry: 0xF7,
 * func_80123144(17)-scaled rise, -0.980665 gravity), riding 0x201FA to
 * apex then one-shotting 0x201FB into phase 4's fall (water/dry gravity
 * split) on 0x201F8, and 5 plays the 0x201FC land anim. Any other
 * phase exits: freezes the track, releases the locks, dust puff
 * func_800BB468(6,0x10), sets the 0xA latch, burns the charge and
 * queues 0x20200/0x20201.
 *
 * Port notes: func_800AA78C is (s32, u32, f32) with float-bit third
 * args 6.0f/3.0f; func_80123144 is f32(f32) with 0x41880000 = 17.0f;
 * m2c's D_800DFBD0[...]->unk20 is DObj list entry [8]; the anim-speed
 * water test is re-run for each of the two calls in the ROM (same
 * value both times); func_800AECC0/func_800AED20 take a real f32 so
 * they are prototyped here (the file's own externs only appear inside
 * a later NON_MATCHING block); the mid-phase curObjSleepForever parks
 * never return, matching the ROM's literal fallthrough layout. */
void func_80181F64_ovl3(s32 arg0) {
    void func_80182658_ovl3(s32, s32, f32);
    void func_800AA78C(s32, u32, f32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    f32 func_80123144(f32);
    void func_8011D614(void);
    extern u8 D_80190784_ovl3[];
    extern f32 *D_80192998_ovl3[];
    f32 animSpd;
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.unk50 = 0;
        gKirbyState.unk4C = 0;
        gKirbyState.isFullJump = 0;
        gKirbyState.jumpHeight = 0;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x32;
        func_80120A28();
        D_800EC2E0[func_801693C4_ovl3(0xA)].as_u32 = 0;
        D_800E83E0[omCurrentObj->objId] = 0;
        D_800E9720[omCurrentObj->objId] = 0x7D;
        D_800E9560[omCurrentObj->objId] = 6;
        gKirbyState.unk44 = 0;
        gKirbyState.unk3C = 0;
        play_sound(0xBA);
        func_801230E8(0x201FE, 0x201FF, 0);
        D_800DF310[omCurrentObj->objId] = func_80182658_ovl3;
        func_800AF27C();
        func_8011E0E8();
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190784_ovl3;
        D_800E0490[omCurrentObj->objId] = D_80192998_ovl3;
        func_80122F08(0x2001E);
        gKirbyState.unk154 = 2;
        if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
            animSpd = 1.25f;
        } else {
            animSpd = 0.5f;
        }
        func_800AECC0(animSpd);
        if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
            animSpd = 1.25f;
        } else {
            animSpd = 0.5f;
        }
        func_800AED20(animSpd);
        gKirbyState.unk4C = func_800A8100(1, 1, 0x35, D_800DFBD0[omCurrentObj->objId][8]);
        func_8011DC04(0xF);
        if (D_800E8920[omCurrentObj->objId] != 0) {
            gKirbyState.unk3C = 1;
            gKirbyState.unk44 = 1;
        } else {
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
        }
    }
    switch (gKirbyState.unk44) {
        case 1:
            func_80120A28();
            func_800AA78C(0x201F9, 0x2001E, 6.0f);
            func_800AA018(0x201F9);
            curObjSleepForever();
            /* fallthrough */
        case 2:
            id = omCurrentObj->objId;
            D_800E6690[id] = D_800E6A10[id] * 0.25f;
            D_800E6850[omCurrentObj->objId] = 2.0f;
            func_800AA78C(0x201FD, 0x2001E, 3.0f);
            func_800AA018(0x201FD);
            curObjSleepForever();
            /* fallthrough */
        case 3:
            D_800E8920[omCurrentObj->objId] = 0;
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
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA018(0x201FA);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.isFullJump += 1;
            func_800AA154(0x201FB);
            gKirbyState.isFullJump = 0;
            gKirbyState.jumpHeight = 0;
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
            /* fallthrough */
        case 4:
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                D_800E3750[id] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            } else {
                D_800E3750[id] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA78C(0x201F8, 0x2001E, 3.0f);
            func_800AA018(0x201F8);
            curObjSleepForever();
            /* fallthrough */
        case 5:
            func_800AA018(0x201FC);
            curObjSleepForever();
            break;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_8011E0E8();
    func_8011DC5C();
    func_800BB468(6, 0x10);
    D_800EC2E0[func_801693C4_ovl3(0xA)].as_u32 = 1;
    func_8011D614();
    func_801230E8(0x20200, 0x20201, 1);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the ice-skate phase coroutine (track action 0x32, model
 * 0x2001E), from asm/nonmatchings/ovl3/ovl3_6/func_80181F64_ovl3.s (via
 * m2c). First entry arms the ability: resets the jump state, zeroes the
 * 0xA MultiType latch, seeds the 0x7D/6 counters, plays 0xBA with the
 * 0x201FE/0x201FF pair, installs the func_80182658_ovl3 impact process,
 * the D_80190784 PlyEntry handle and the D_80192998 anim table,
 * water-halves the anim speed (1.25 dry / 0.5 wet), spawns the 0x35
 * trail on DObj [8] with the 0xF loop voice, and starts in phase 1
 * (grounded) or 4 (airborne). Phases park on curObjSleepForever and get
 * re-entered by the phase re-trigger: 1 idles on the 0x201F9
 * blend/anim, 2 skates (0.25*facing drift, cap 2) on 0x201FD, 3 jumps
 * (submerged: 0x10B, fixed 8.5 rise, -0.4 gravity; dry: 0xF7,
 * func_80123144(17)-scaled rise, -0.980665 gravity), riding 0x201FA to
 * apex then one-shotting 0x201FB into phase 4's fall (water/dry gravity
 * split) on 0x201F8, and 5 plays the 0x201FC land anim. Any other
 * phase exits: freezes the track, releases the locks, dust puff
 * func_800BB468(6,0x10), sets the 0xA latch, burns the charge and
 * queues 0x20200/0x20201.
 *
 * Port notes: func_800AA78C is (s32, u32, f32) with float-bit third
 * args 6.0f/3.0f; func_80123144 is f32(f32) with 0x41880000 = 17.0f;
 * m2c's D_800DFBD0[...]->unk20 is DObj list entry [8]; the anim-speed
 * water test is re-run for each of the two calls in the ROM (same
 * value both times); func_800AECC0/func_800AED20 take a real f32 so
 * they are prototyped here (the file's own externs only appear inside
 * a later NON_MATCHING block); the mid-phase curObjSleepForever parks
 * never return, matching the ROM's literal fallthrough layout. */
void func_80181F64_ovl3(s32 arg0) {
    void func_80182658_ovl3(s32, s32, f32);
    void func_800AA78C(s32, u32, f32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    f32 func_80123144(f32);
    void func_8011D614(void);
    extern u8 D_80190784_ovl3[];
    extern f32 *D_80192998_ovl3[];
    f32 animSpd;
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.unk50 = 0;
        gKirbyState.unk4C = 0;
        gKirbyState.isFullJump = 0;
        gKirbyState.jumpHeight = 0;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x32;
        func_80120A28();
        D_800EC2E0[func_801693C4_ovl3(0xA)].as_u32 = 0;
        D_800E83E0[omCurrentObj->objId] = 0;
        D_800E9720[omCurrentObj->objId] = 0x7D;
        D_800E9560[omCurrentObj->objId] = 6;
        gKirbyState.unk44 = 0;
        gKirbyState.unk3C = 0;
        play_sound(0xBA);
        func_801230E8(0x201FE, 0x201FF, 0);
        D_800DF310[omCurrentObj->objId] = func_80182658_ovl3;
        func_800AF27C();
        func_8011E0E8();
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190784_ovl3;
        D_800E0490[omCurrentObj->objId] = D_80192998_ovl3;
        func_80122F08(0x2001E);
        gKirbyState.unk154 = 2;
        if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
            animSpd = 1.25f;
        } else {
            animSpd = 0.5f;
        }
        func_800AECC0(animSpd);
        if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
            animSpd = 1.25f;
        } else {
            animSpd = 0.5f;
        }
        func_800AED20(animSpd);
        gKirbyState.unk4C = func_800A8100(1, 1, 0x35, D_800DFBD0[omCurrentObj->objId][8]);
        func_8011DC04(0xF);
        if (D_800E8920[omCurrentObj->objId] != 0) {
            gKirbyState.unk3C = 1;
            gKirbyState.unk44 = 1;
        } else {
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
        }
    }
    switch (gKirbyState.unk44) {
        case 1:
            func_80120A28();
            func_800AA78C(0x201F9, 0x2001E, 6.0f);
            func_800AA018(0x201F9);
            curObjSleepForever();
            /* fallthrough */
        case 2:
            id = omCurrentObj->objId;
            D_800E6690[id] = D_800E6A10[id] * 0.25f;
            D_800E6850[omCurrentObj->objId] = 2.0f;
            func_800AA78C(0x201FD, 0x2001E, 3.0f);
            func_800AA018(0x201FD);
            curObjSleepForever();
            /* fallthrough */
        case 3:
            D_800E8920[omCurrentObj->objId] = 0;
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
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA018(0x201FA);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.isFullJump += 1;
            func_800AA154(0x201FB);
            gKirbyState.isFullJump = 0;
            gKirbyState.jumpHeight = 0;
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
            /* fallthrough */
        case 4:
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                D_800E3750[id] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            } else {
                D_800E3750[id] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA78C(0x201F8, 0x2001E, 3.0f);
            func_800AA018(0x201F8);
            curObjSleepForever();
            /* fallthrough */
        case 5:
            func_800AA018(0x201FC);
            curObjSleepForever();
            break;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_8011E0E8();
    func_8011DC5C();
    func_800BB468(6, 0x10);
    D_800EC2E0[func_801693C4_ovl3(0xA)].as_u32 = 1;
    func_8011D614();
    func_801230E8(0x20200, 0x20201, 1);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80181F64_ovl3.s")
#endif

void func_80182658_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                D_8012E80C[0] = func_800A8234(2, 1, 0x3A);
                D_8012E80C[1] = func_800A8234(2, 1, 0x3B);
            } else {
                D_8012E80C[0] = func_800A8234(2, 1, 0x33);
                D_8012E80C[1] = func_800A8234(2, 1, 0x34);
            }
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 52/415, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming, uses the file's local PcO36Gen/PcO36Emitter types already declared above) so it seals verbatim. Queued for the permuter. */
/* PORT: the ice-skate (action 0x32) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_8018271C_ovl3.s (via m2c). Services
 * base motion (skipping input service in the jump phase 3) with the
 * water-halved anim speed; once the D_800E9720 life counter is spent it
 * only waits for the coroutine to finish and hands off. While alive it
 * re-pins the two 0x35 trail generators (unk4C/unk50) onto DObj [8] and
 * [0xF]'s world positions, force-exits to phase 6 on a scripted grab
 * once the plain model is gone, and runs the D_800E9560 melt window --
 * expired, the D_801934C4 flash overlay's probe arms the D_800E83E0
 * melt latch. The phase machine: 1 idles (held direction skates to 2, A
 * jumps to 3, losing the floor falls to 4), 2 skates with the turn
 * latch and gravity (stopping back to 1, A to 3, airborne to 4), 3
 * jumps (turn poll, ceiling zeroes the rise into 4, variable-height
 * service until full), 4 falls (landing to 5), 5 lands (moving to 2, A
 * to 3, anim end to 1), 6 waits to melt. All phases then burn the life
 * counter (the melt latch shortcuts it to one tick) into phase 6 at
 * zero, and a phase change re-triggers the coroutine process.
 *
 * Port notes: the generator/emitter views (PcO36Gen/PcO36Emitter)
 * mirror ovl1_2_2.c's PORT Ovl1Generator/Ovl1Emitter LP64 layout (xf at
 * +0x58, emitter position at +0x8, locked by ovl1.c's pc_gennode_check)
 * -- m2c's +0x4C/+0x4 stores are those N64 slots; the unk4C/unk50
 * handles come back through (uintptr_t); the flash probe reads
 * func_8015449C_ovl3's tail-call result through the established
 * s32-returning function-pointer cast; m2c's raw 0x8004A7C4 load is
 * omCurrentObj; func_80121C90 / func_80121194 / func_801219C8 /
 * func_8011EBD4 / func_8011ED68 are void-arg on PC (m2c's args are
 * leftover registers); the unk3C-vs-phase compare uses unk44 directly
 * (m2c's var_a0_2 tracks it exactly); D_800DFBD0[...]->unk20/unk3C are
 * DObj list entries [8]/[0xF]. */
typedef struct PcO36Emitter {
    /* 0x00 */ struct PcO36Emitter *next;
    /* 0x08 */ Vector unk4;
    /* 0x14 */ Vector unk10;
} PcO36Emitter;

typedef struct PcO36Gen {
    /* 0x00 */ u8 pad0[0x58];
    /* 0x58 */ PcO36Emitter *xf;
} PcO36Gen;

void func_8018271C_ovl3(s32 arg0) {
    void func_800AECC0(f32);
    void func_800AED20(f32);
    s32 func_800AA888(s32);
    void func_800B2340(Vector *, s32, s32);
    s32 func_80121C90(void);
    s32 func_80121194(void);
    void func_801219C8(void);
    void func_8011EBD4(void);
    void func_8011ED68(void);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern u8 D_801934C4_ovl3[];
    PcO36Gen *gen;
    Vector pos;
    f32 animSpd;
    s32 id;

    func_80153984_ovl3();
    if (gKirbyState.unk44 != 3) {
        func_801217B8();
    }
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        animSpd = 1.25f;
    } else {
        animSpd = 0.5f;
    }
    func_800AECC0(animSpd);
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        animSpd = 1.25f;
    } else {
        animSpd = 0.5f;
    }
    func_800AED20(animSpd);
    id = omCurrentObj->objId;
    if (D_800E9720[id] == 0) {
        if (gKirbyState.unk30 != 0) {
            func_8011D67C();
        }
        return;
    }
    if (gKirbyState.unk50 != 0) {
        gen = (PcO36Gen *) (uintptr_t) gKirbyState.unk4C;
        func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[id][8], 0xFFFF);
        gen->xf->unk4.x = pos.x;
        gen->xf->unk4.y = pos.y;
        gen->xf->unk4.z = pos.z;
        gen = (PcO36Gen *) (uintptr_t) gKirbyState.unk50;
        func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xF], 0xFFFF);
        gen->xf->unk4.x = pos.x;
        gen->xf->unk4.y = pos.y;
        gen->xf->unk4.z = pos.z;
    }
    if ((func_800AA888(0x20007) == 0) && (gKirbyState.unk17 != 0)) {
        D_800E9720[omCurrentObj->objId] = 0;
        gKirbyState.unk44 = 6;
        goto phase_check;
    }
    id = omCurrentObj->objId;
    if (D_800E9560[id] == 0) {
        if (((s32 (*)(u8 *, s32)) func_8015449C_ovl3)(D_801934C4_ovl3, 0) != 0) {
            D_800E83E0[omCurrentObj->objId] = 1;
        }
    } else {
        D_800E9560[id]--;
    }
    switch (gKirbyState.unk44) {
        case 1:
            if (func_80121C90() != 0) {
                gKirbyState.unk44 = 2;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (D_800E8920[omCurrentObj->objId] == 0) {
                gKirbyState.unk44 = 4;
            }
            break;
        case 2:
            if (!(gKirbyState.isTurning & 1)) {
                id = omCurrentObj->objId;
                if (D_800E64D0[id] == 0.0f) {
                    gKirbyState.unk44 = 1;
                } else if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 3;
                } else if (D_800E8920[id] == 0) {
                    gKirbyState.unk44 = 4;
                }
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            break;
        case 3:
            if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                gKirbyState.isTurning |= 1;
            }
            if (gKirbyState.ceilingCollisionNext != 0) {
                D_800E3210[omCurrentObj->objId] = 0.0f;
                gKirbyState.unk44 = 4;
            }
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4();
            }
            func_801219C8();
            func_8011ED68();
            break;
        case 4:
            if (!(gKirbyState.isTurning & 1) && (D_800E8920[omCurrentObj->objId] != 0)) {
                gKirbyState.unk44 = 5;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            break;
        case 5:
            if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
                gKirbyState.unk44 = 2;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (func_800AF230() != 0) {
                gKirbyState.unk44 = 1;
            }
            break;
        case 6:
            break;
        default:
            return;
    }
    id = omCurrentObj->objId;
    if (D_800E83E0[id] != 0) {
        D_800E9720[id] = 1;
        gKirbyState.unk44 = 6;
        id = omCurrentObj->objId;
    }
    D_800E9720[id] -= 1;
    if (D_800E9720[omCurrentObj->objId] == 0) {
        gKirbyState.unk44 = 6;
    }
phase_check:
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#elif defined(PORT)
/* PORT: the ice-skate (action 0x32) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_8018271C_ovl3.s (via m2c). Services
 * base motion (skipping input service in the jump phase 3) with the
 * water-halved anim speed; once the D_800E9720 life counter is spent it
 * only waits for the coroutine to finish and hands off. While alive it
 * re-pins the two 0x35 trail generators (unk4C/unk50) onto DObj [8] and
 * [0xF]'s world positions, force-exits to phase 6 on a scripted grab
 * once the plain model is gone, and runs the D_800E9560 melt window --
 * expired, the D_801934C4 flash overlay's probe arms the D_800E83E0
 * melt latch. The phase machine: 1 idles (held direction skates to 2, A
 * jumps to 3, losing the floor falls to 4), 2 skates with the turn
 * latch and gravity (stopping back to 1, A to 3, airborne to 4), 3
 * jumps (turn poll, ceiling zeroes the rise into 4, variable-height
 * service until full), 4 falls (landing to 5), 5 lands (moving to 2, A
 * to 3, anim end to 1), 6 waits to melt. All phases then burn the life
 * counter (the melt latch shortcuts it to one tick) into phase 6 at
 * zero, and a phase change re-triggers the coroutine process.
 *
 * Port notes: the generator/emitter views (PcO36Gen/PcO36Emitter)
 * mirror ovl1_2_2.c's PORT Ovl1Generator/Ovl1Emitter LP64 layout (xf at
 * +0x58, emitter position at +0x8, locked by ovl1.c's pc_gennode_check)
 * -- m2c's +0x4C/+0x4 stores are those N64 slots; the unk4C/unk50
 * handles come back through (uintptr_t); the flash probe reads
 * func_8015449C_ovl3's tail-call result through the established
 * s32-returning function-pointer cast; m2c's raw 0x8004A7C4 load is
 * omCurrentObj; func_80121C90 / func_80121194 / func_801219C8 /
 * func_8011EBD4 / func_8011ED68 are void-arg on PC (m2c's args are
 * leftover registers); the unk3C-vs-phase compare uses unk44 directly
 * (m2c's var_a0_2 tracks it exactly); D_800DFBD0[...]->unk20/unk3C are
 * DObj list entries [8]/[0xF]. */
typedef struct PcO36Emitter {
    /* 0x00 */ struct PcO36Emitter *next;
    /* 0x08 */ Vector unk4;
    /* 0x14 */ Vector unk10;
} PcO36Emitter;

typedef struct PcO36Gen {
    /* 0x00 */ u8 pad0[0x58];
    /* 0x58 */ PcO36Emitter *xf;
} PcO36Gen;

void func_8018271C_ovl3(s32 arg0) {
    void func_800AECC0(f32);
    void func_800AED20(f32);
    s32 func_800AA888(s32);
    void func_800B2340(Vector *, s32, s32);
    s32 func_80121C90(void);
    s32 func_80121194(void);
    void func_801219C8(void);
    void func_8011EBD4(void);
    void func_8011ED68(void);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern u8 D_801934C4_ovl3[];
    PcO36Gen *gen;
    Vector pos;
    f32 animSpd;
    s32 id;

    func_80153984_ovl3();
    if (gKirbyState.unk44 != 3) {
        func_801217B8();
    }
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        animSpd = 1.25f;
    } else {
        animSpd = 0.5f;
    }
    func_800AECC0(animSpd);
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        animSpd = 1.25f;
    } else {
        animSpd = 0.5f;
    }
    func_800AED20(animSpd);
    id = omCurrentObj->objId;
    if (D_800E9720[id] == 0) {
        if (gKirbyState.unk30 != 0) {
            func_8011D67C();
        }
        return;
    }
    if (gKirbyState.unk50 != 0) {
        gen = (PcO36Gen *) (uintptr_t) gKirbyState.unk4C;
        func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[id][8], 0xFFFF);
        gen->xf->unk4.x = pos.x;
        gen->xf->unk4.y = pos.y;
        gen->xf->unk4.z = pos.z;
        gen = (PcO36Gen *) (uintptr_t) gKirbyState.unk50;
        func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xF], 0xFFFF);
        gen->xf->unk4.x = pos.x;
        gen->xf->unk4.y = pos.y;
        gen->xf->unk4.z = pos.z;
    }
    if ((func_800AA888(0x20007) == 0) && (gKirbyState.unk17 != 0)) {
        D_800E9720[omCurrentObj->objId] = 0;
        gKirbyState.unk44 = 6;
        goto phase_check;
    }
    id = omCurrentObj->objId;
    if (D_800E9560[id] == 0) {
        if (((s32 (*)(u8 *, s32)) func_8015449C_ovl3)(D_801934C4_ovl3, 0) != 0) {
            D_800E83E0[omCurrentObj->objId] = 1;
        }
    } else {
        D_800E9560[id]--;
    }
    switch (gKirbyState.unk44) {
        case 1:
            if (func_80121C90() != 0) {
                gKirbyState.unk44 = 2;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (D_800E8920[omCurrentObj->objId] == 0) {
                gKirbyState.unk44 = 4;
            }
            break;
        case 2:
            if (!(gKirbyState.isTurning & 1)) {
                id = omCurrentObj->objId;
                if (D_800E64D0[id] == 0.0f) {
                    gKirbyState.unk44 = 1;
                } else if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 3;
                } else if (D_800E8920[id] == 0) {
                    gKirbyState.unk44 = 4;
                }
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            break;
        case 3:
            if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                gKirbyState.isTurning |= 1;
            }
            if (gKirbyState.ceilingCollisionNext != 0) {
                D_800E3210[omCurrentObj->objId] = 0.0f;
                gKirbyState.unk44 = 4;
            }
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4();
            }
            func_801219C8();
            func_8011ED68();
            break;
        case 4:
            if (!(gKirbyState.isTurning & 1) && (D_800E8920[omCurrentObj->objId] != 0)) {
                gKirbyState.unk44 = 5;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            break;
        case 5:
            if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
                gKirbyState.unk44 = 2;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (func_800AF230() != 0) {
                gKirbyState.unk44 = 1;
            }
            break;
        case 6:
            break;
        default:
            return;
    }
    id = omCurrentObj->objId;
    if (D_800E83E0[id] != 0) {
        D_800E9720[id] = 1;
        gKirbyState.unk44 = 6;
        id = omCurrentObj->objId;
    }
    D_800E9720[id] -= 1;
    if (D_800E9720[omCurrentObj->objId] == 0) {
        gKirbyState.unk44 = 6;
    }
phase_check:
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018271C_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 37/278, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming, no residual m2c artifacts) so it seals verbatim. Queued for the permuter. */
/* PORT: the spark-ball hop coroutine (track action 0x33, model 0x2001B),
 * from asm/nonmatchings/ovl3/ovl3_6/func_80182D9C_ovl3.s (via m2c).
 * First entry (ability unarmed) freezes both tracks (65535 caps), seeds
 * the -1 color history cells (D_800E9C60/D_800E9AA0/D_800E98E0), plays
 * 0xBA with the 0x201EB/0x201EC pair, installs the D_801907C8 PlyEntry
 * handle, then runs three facing-picked windup spins (0x201E3/0x201E4,
 * counting D_800E9560 down and re-arming the func_801831EC_ovl3 impact
 * process each time) before settling into the endless hop cycle: the
 * facing-picked hop anim (0x201E8/0x201E7), wait to leave the ground,
 * wait to land, 0x149 plus the landing one-shot (0x201EA/0x201E9),
 * repeat. When the process is re-triggered with the ability already
 * armed it exits: 0x24B, charge burn via func_8011D614, the 0x201ED
 * stop anim, and the done flag.
 *
 * Port notes: func_800AA018 takes one s32 (m2c's second argument is the
 * leftover countdown register); the windup countdown is the
 * read-then-store-minus-one pattern spelled as a while over the live
 * cell; D_80197790 is 65535.0f inlined; func_801831EC_ovl3 is forward-
 * declared -- it is defined just below with exactly the D_800DF310 slot
 * signature. */
void func_80182D9C_ovl3(s32 arg0) {
    void func_801831EC_ovl3(s32, s32, f32);
    void func_8011D614(void);
    extern u8 D_801907C8_ovl3[];
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk7C = 0.0f;
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk80 = gKirbyState.unk7C;
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            gKirbyState.unk16 = 0x20;
        } else {
            gKirbyState.unk16 = 0x10;
        }
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x33;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E3210[id] = D_800E3750[id];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E9C60[omCurrentObj->objId] = -1;
        id = omCurrentObj->objId;
        D_800E9AA0[id].as_u32 = (u32) D_800E9C60[id];
        D_800E98E0[omCurrentObj->objId] = D_800E9C60[id];
        play_sound(0xBA);
        func_801230E8(0x201EB, 0x201EC, 1);
        gKirbyState.unk3C = 1;
        gKirbyState.unk15C = (u32) (uintptr_t) D_801907C8_ovl3;
        func_80122F08(0x2001B);
        gKirbyState.unk154 = 1;
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            func_800AA154(0x201E5);
        } else {
            func_800AA154(0x201E6);
        }
        gKirbyState.unk44 = 1;
        D_800E9560[omCurrentObj->objId] = 3;
        id = omCurrentObj->objId;
        while (D_800E9560[id] != 0) {
            D_800E9560[id] = D_800E9560[id] - 1;
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                func_800AA018(0x201E3);
            } else {
                func_800AA018(0x201E4);
            }
            D_800DF310[omCurrentObj->objId] = func_801831EC_ovl3;
            func_800AF27C();
            id = omCurrentObj->objId;
        }
        for (;;) {
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                func_800AA018(0x201E8);
            } else {
                func_800AA018(0x201E7);
            }
            while (D_800E8920[omCurrentObj->objId] != 0) {
                ohSleep(1);
            }
            do {
                ohSleep(1);
            } while (D_800E8920[omCurrentObj->objId] == 0);
            play_sound(0x149);
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                func_800AA154(0x201EA);
            } else {
                func_800AA154(0x201E9);
            }
        }
    }
    play_sound(0x24B);
    gKirbyState.abilityInUse = 0;
    func_8011D614();
    func_800AA154(0x201ED);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the spark-ball hop coroutine (track action 0x33, model 0x2001B),
 * from asm/nonmatchings/ovl3/ovl3_6/func_80182D9C_ovl3.s (via m2c).
 * First entry (ability unarmed) freezes both tracks (65535 caps), seeds
 * the -1 color history cells (D_800E9C60/D_800E9AA0/D_800E98E0), plays
 * 0xBA with the 0x201EB/0x201EC pair, installs the D_801907C8 PlyEntry
 * handle, then runs three facing-picked windup spins (0x201E3/0x201E4,
 * counting D_800E9560 down and re-arming the func_801831EC_ovl3 impact
 * process each time) before settling into the endless hop cycle: the
 * facing-picked hop anim (0x201E8/0x201E7), wait to leave the ground,
 * wait to land, 0x149 plus the landing one-shot (0x201EA/0x201E9),
 * repeat. When the process is re-triggered with the ability already
 * armed it exits: 0x24B, charge burn via func_8011D614, the 0x201ED
 * stop anim, and the done flag.
 *
 * Port notes: func_800AA018 takes one s32 (m2c's second argument is the
 * leftover countdown register); the windup countdown is the
 * read-then-store-minus-one pattern spelled as a while over the live
 * cell; D_80197790 is 65535.0f inlined; func_801831EC_ovl3 is forward-
 * declared -- it is defined just below with exactly the D_800DF310 slot
 * signature. */
void func_80182D9C_ovl3(s32 arg0) {
    void func_801831EC_ovl3(s32, s32, f32);
    void func_8011D614(void);
    extern u8 D_801907C8_ovl3[];
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk7C = 0.0f;
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk80 = gKirbyState.unk7C;
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            gKirbyState.unk16 = 0x20;
        } else {
            gKirbyState.unk16 = 0x10;
        }
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x33;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E3210[id] = D_800E3750[id];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E9C60[omCurrentObj->objId] = -1;
        id = omCurrentObj->objId;
        D_800E9AA0[id].as_u32 = (u32) D_800E9C60[id];
        D_800E98E0[omCurrentObj->objId] = D_800E9C60[id];
        play_sound(0xBA);
        func_801230E8(0x201EB, 0x201EC, 1);
        gKirbyState.unk3C = 1;
        gKirbyState.unk15C = (u32) (uintptr_t) D_801907C8_ovl3;
        func_80122F08(0x2001B);
        gKirbyState.unk154 = 1;
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            func_800AA154(0x201E5);
        } else {
            func_800AA154(0x201E6);
        }
        gKirbyState.unk44 = 1;
        D_800E9560[omCurrentObj->objId] = 3;
        id = omCurrentObj->objId;
        while (D_800E9560[id] != 0) {
            D_800E9560[id] = D_800E9560[id] - 1;
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                func_800AA018(0x201E3);
            } else {
                func_800AA018(0x201E4);
            }
            D_800DF310[omCurrentObj->objId] = func_801831EC_ovl3;
            func_800AF27C();
            id = omCurrentObj->objId;
        }
        for (;;) {
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                func_800AA018(0x201E8);
            } else {
                func_800AA018(0x201E7);
            }
            while (D_800E8920[omCurrentObj->objId] != 0) {
                ohSleep(1);
            }
            do {
                ohSleep(1);
            } while (D_800E8920[omCurrentObj->objId] == 0);
            play_sound(0x149);
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                func_800AA154(0x201EA);
            } else {
                func_800AA154(0x201E9);
            }
        }
    }
    play_sound(0x24B);
    gKirbyState.abilityInUse = 0;
    func_8011D614();
    func_800AA154(0x201ED);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80182D9C_ovl3.s")
#endif

extern s32 D_800D71F8;

/* 39/143, structure exact; every diff is register naming: the ROM puts
   omCurrentObj's value in $a1 and &D_800E9560 in $a0 (and omCurrentObj's
   address in $s3 with &D_800E9AA0 in $s2); IDO swaps both pairs. */
#ifdef NON_MATCHING
void func_801831EC_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;
    s32 rnd;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            temp = func_801ACCA0_ovl7(0x39, 0, 30.0f, 15.0f);
            D_800E98E0[temp] = D_800E9560[omCurrentObj->objId];
            switch (D_800E9560[omCurrentObj->objId]) {
            case 2:
                D_800E9C60[omCurrentObj->objId] = random_soft_s32_range(8);
                D_800E9AA0[temp].as_s32 = D_800E9C60[omCurrentObj->objId];
                D_800E9720[temp] = 0x78;
                break;
            case 1:
                do {
                    rnd = random_soft_s32_range(8);
                    D_800D71F8 = rnd;
                } while (rnd == D_800E9C60[omCurrentObj->objId]);
                D_800E9AA0[omCurrentObj->objId].as_s32 = rnd;
                D_800E9AA0[temp].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32;
                D_800E9720[temp] = 0x5A;
                break;
            case 0:
                do {
                    rnd = random_soft_s32_range(8);
                    D_800D71F8 = rnd;
                } while ((rnd == D_800E9C60[omCurrentObj->objId]) || (rnd == D_800E9AA0[omCurrentObj->objId].as_s32));
                D_800E98E0[omCurrentObj->objId] = rnd;
                D_800E9AA0[temp].as_s32 = D_800E98E0[omCurrentObj->objId];
                D_800E9720[temp] = 0x3C;
                break;
            }
            play_sound(0x53);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801831EC_ovl3.s")
#endif

extern struct GObjProcess *gEntityGObjProcessArray[];
extern u8 D_80191950_ovl3[];
void func_8016C510_ovl3(s32);
void assign_new_process_entry(struct GObjProcess *, void *);
s32 func_8016854C_ovl3(s32, s32, f32);
extern void func_80121658(void);
extern void func_8011DC5C(void);

void func_80183428_ovl3(s32 arg0) {
    s32 flag;

    flag = 0;
    func_80153984_ovl3();
    func_8011CF58();
    func_80121658();
    if (gKirbyState.unk44 != 2) {
        if (gKirbyState.unk17 != 0) {
            flag = 1;
        } else if (gKirbyState.unk16 == 0) {
            if (gKirbyController.buttonPressed & 0x4000) {
                flag = 1;
            } else if (gKirbyState.unkA == 4) {
                flag = 1;
            }
        } else if (gKirbyController.buttonPressed & 0x4000) {
            gKirbyState.unkA = 4;
        }
    }
    if (flag != 0) {
        if (gKirbyState.unk44 != 2) {
            gKirbyState.unk44 = 2;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016C510_ovl3);
        }
    }
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C();
        func_8011E0E8();
        gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
        func_8011D67C();
    } else if (gKirbyState.unk3C != 0) {
        func_8016854C_ovl3((s32) D_80191950_ovl3, (s32) D_800DFBD0[omCurrentObj->objId][1], 1.0f);
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 12/283, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming) so it seals verbatim. Queued for the permuter. */
/* PORT: the drill-run coroutine (track action 0x34, model 0x2001D), from
 * asm/nonmatchings/ovl3/ovl3_6/func_801835AC_ovl3.s (via m2c). Arms the
 * ability with the default anim table/PlyEntry pair, a 0x14 life
 * counter and a 0x19 sparkle window, spawns the 0x3D trail effect and
 * the 0xC3 loop voice, one-shots 0x201F6, stashes DObj [2]'s height in
 * D_800EA6E0 and zeroes the PlyEntry handle, then drives forward at
 * 0.25*facing with a 5.0 cap (0.125/2.5 in water) into the 0x201F7 run
 * anim. It rides that until B is pressed, a scripted grab or wall hit
 * lands, or the D_800E83E0/D_800E6310 latches trip; then it freezes the
 * track, burns the charge, releases the locks, plays 0xC5 with the
 * 0x38/0x39 burst effects on DObj [0xE] and parks on the
 * 0x2018A/0x2018B pair.
 *
 * Port notes: the 5-or-2.5 cap ladder is the ROM's redundant ABS of the
 * positive constant; func_800AA018 takes one s32 and func_8011D614 is
 * void (m2c's extra args are leftover registers); m2c's
 * D_800DFBD0[...]->unk8->unk20 is DObj list entry [2]'s pos.v.y and
 * ->unk38 is entry [0xE]; D_80197794/98 are 0.4f/65535.0f inlined. */
void func_801835AC_ovl3(s32 arg0) {
    void func_8011D614(void);
    extern f32 *D_801926E8_ovl3[];
    extern u8 D_80190358_ovl3[];
    s32 id;

    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk80 = gKirbyState.unk7C;
    D_800E9720[omCurrentObj->objId] = 0x14;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x34;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
    func_80122F08(0x2001D);
    gKirbyState.unk154 = 2;
    func_80120A28();
    D_800E83E0[omCurrentObj->objId] = 0;
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    D_800E9560[omCurrentObj->objId] = 0x19;
    gKirbyState.unk4C = func_800A8234(2, 1, 0x3D);
    func_800AA154(0x201F6);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_8011DC04(0xC3);
    gKirbyState.unk40 = 0.4f;
    func_801693C4_ovl3(0xB);
    gKirbyState.unk15C = 0;
    id = omCurrentObj->objId;
    D_800EA6E0[id] = D_800DFBD0[id][2]->pos.v.y;
    id = omCurrentObj->objId;
    if (!(D_800E8AE0[id] & 6)) {
        D_800E6690[id] = 0.25f * D_800E6A10[id];
    } else {
        D_800E6690[id] = 0.125f * D_800E6A10[id];
    }
    id = omCurrentObj->objId;
    if (!(D_800E8AE0[id] & 6)) {
        D_800E6850[id] = 5.0f;
    } else {
        D_800E6850[id] = 2.5f;
    }
    func_800AA018(0x201F7);
    D_800E6310[omCurrentObj->objId] = 0;
    while (!(gKirbyController.buttonPressed & 0x4000)) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        if (gKirbyState.horizontalCollision != 0) {
            break;
        }
        id = omCurrentObj->objId;
        if (D_800E83E0[id] != 0) {
            break;
        }
        if (D_800E6310[id] != 0) {
            break;
        }
        ohSleep(1);
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_8011D614();
    func_8011DC5C();
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    D_800E9560[omCurrentObj->objId] = 0;
    play_sound(0xC5);
    func_800A8100(2, 1, 0x38, D_800DFBD0[omCurrentObj->objId][0xE]);
    func_800A8100(2, 1, 0x39, D_800DFBD0[omCurrentObj->objId][0xE]);
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_801230E8(0x2018A, 0x2018B, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the drill-run coroutine (track action 0x34, model 0x2001D), from
 * asm/nonmatchings/ovl3/ovl3_6/func_801835AC_ovl3.s (via m2c). Arms the
 * ability with the default anim table/PlyEntry pair, a 0x14 life
 * counter and a 0x19 sparkle window, spawns the 0x3D trail effect and
 * the 0xC3 loop voice, one-shots 0x201F6, stashes DObj [2]'s height in
 * D_800EA6E0 and zeroes the PlyEntry handle, then drives forward at
 * 0.25*facing with a 5.0 cap (0.125/2.5 in water) into the 0x201F7 run
 * anim. It rides that until B is pressed, a scripted grab or wall hit
 * lands, or the D_800E83E0/D_800E6310 latches trip; then it freezes the
 * track, burns the charge, releases the locks, plays 0xC5 with the
 * 0x38/0x39 burst effects on DObj [0xE] and parks on the
 * 0x2018A/0x2018B pair.
 *
 * Port notes: the 5-or-2.5 cap ladder is the ROM's redundant ABS of the
 * positive constant; func_800AA018 takes one s32 and func_8011D614 is
 * void (m2c's extra args are leftover registers); m2c's
 * D_800DFBD0[...]->unk8->unk20 is DObj list entry [2]'s pos.v.y and
 * ->unk38 is entry [0xE]; D_80197794/98 are 0.4f/65535.0f inlined. */
void func_801835AC_ovl3(s32 arg0) {
    void func_8011D614(void);
    extern f32 *D_801926E8_ovl3[];
    extern u8 D_80190358_ovl3[];
    s32 id;

    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk80 = gKirbyState.unk7C;
    D_800E9720[omCurrentObj->objId] = 0x14;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x34;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
    func_80122F08(0x2001D);
    gKirbyState.unk154 = 2;
    func_80120A28();
    D_800E83E0[omCurrentObj->objId] = 0;
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    D_800E9560[omCurrentObj->objId] = 0x19;
    gKirbyState.unk4C = func_800A8234(2, 1, 0x3D);
    func_800AA154(0x201F6);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_8011DC04(0xC3);
    gKirbyState.unk40 = 0.4f;
    func_801693C4_ovl3(0xB);
    gKirbyState.unk15C = 0;
    id = omCurrentObj->objId;
    D_800EA6E0[id] = D_800DFBD0[id][2]->pos.v.y;
    id = omCurrentObj->objId;
    if (!(D_800E8AE0[id] & 6)) {
        D_800E6690[id] = 0.25f * D_800E6A10[id];
    } else {
        D_800E6690[id] = 0.125f * D_800E6A10[id];
    }
    id = omCurrentObj->objId;
    if (!(D_800E8AE0[id] & 6)) {
        D_800E6850[id] = 5.0f;
    } else {
        D_800E6850[id] = 2.5f;
    }
    func_800AA018(0x201F7);
    D_800E6310[omCurrentObj->objId] = 0;
    while (!(gKirbyController.buttonPressed & 0x4000)) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        if (gKirbyState.horizontalCollision != 0) {
            break;
        }
        id = omCurrentObj->objId;
        if (D_800E83E0[id] != 0) {
            break;
        }
        if (D_800E6310[id] != 0) {
            break;
        }
        ohSleep(1);
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_8011D614();
    func_8011DC5C();
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    D_800E9560[omCurrentObj->objId] = 0;
    play_sound(0xC5);
    func_800A8100(2, 1, 0x38, D_800DFBD0[omCurrentObj->objId][0xE]);
    func_800A8100(2, 1, 0x39, D_800DFBD0[omCurrentObj->objId][0xE]);
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_801230E8(0x2018A, 0x2018B, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801835AC_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 7/262, whole-function callee-saved permutation (same floor class documented across this cluster). Gives the trail-generator/probe-shape views local LocalO36Gen/LocalO36Emitter/LocalO36Shape/LocalO36Slot types instead of the guarded PcO36* mirrors. Known residual defect: func_80121658 is declared void(void) file-scope-wide (unguarded, elsewhere in this TU) but the ROM still reads its tail ; the PORT arm's function-pointer-cast workaround compiles but forces an indirect jalr where the ROM has a direct jal -- no ANSI-legal local redeclaration is possible without touching that file-scope decl. Queued for the permuter. */
/* PORT: the drill-run (action 0x34) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_80183A1C_ovl3.s (via m2c). Services
 * base motion and input, plays the landing thud through
 * func_80121658's result (0x11F in the D_8012E860 state, 0x149
 * otherwise), and hands off once the coroutine finishes. While the
 * life counter D_800E9720 (m2c: D_800E9560's sibling window) runs it
 * burns the D_800E9560 sparkle window -- pinning the 0x3D trail
 * generator to DObj [2]'s world position each tick and releasing the
 * anim lock when the window empties -- and in the D_8012E860 state
 * sinks Kirby by raising DObj [2] 7.5 units per tick through the
 * D_800EA6E0 height stash. While armed it spins DObj [2]'s roll by the
 * water-picked step (0.1047 wet / 0.1745 dry, sign by facing) staged
 * through D_800D7238, re-asserts the 0.25*facing / 5.0-cap drive
 * (0.125/2.5 in water), re-registers the D_8019071C drill PlyEntry and
 * stretches its probe shape by the whirl cell (35x/38x); disarmed with
 * the plain model resident it runs the D_801917D8 hitbox under the
 * D_80195058 overlay. Ends with the 0.196/1.57 pitch service.
 *
 * Port notes: the landing test reads void-declared func_80121658's
 * tail result through the established s32 function-pointer cast; the
 * trail generator write goes through the LP64 PcO36Gen view; the
 * PlyEntry slot from func_80111574 uses the LP64 host PlySlot offsets
 * (count +40, list +48 -- PcO36Slot below, locked by the plylib arm's
 * static asserts), records as this file's PcO36Shape; m2c's
 * `D_8012E7FC.unk4` whirl cell is the f32 word at &D_8012E7FC + 4;
 * `&D_800D71E8 + 0x50` is the f32 scratch D_800D7238; func_80111574 is
 * (void *, void *) on PC (extra m2c args are leftover registers);
 * D_8019779C..A8 are 0.10472f / 0.17453f / 0.19635f / 1.5708f rodata
 * cells kept as externs like the file's N64 arms. */
typedef struct LocalO36Shape {
    u8 pad0[4];
    u8 unk4;
    u8 pad5[3];
    s32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
} LocalO36Shape;

typedef struct LocalO36Slot {
    u8 pad0[40];
    s32 unk1C;
    LocalO36Shape *unk20;
} LocalO36Slot;

typedef struct LocalO36Emitter {
    struct LocalO36Emitter *next;
    Vector unk4;
    Vector unk10;
} LocalO36Emitter;

typedef struct LocalO36Gen {
    u8 pad0[0x58];
    LocalO36Emitter *xf;
} LocalO36Gen;

void func_80183A1C_ovl3(s32 arg0) {
    void func_80121658(void);
    void func_800B2340(Vector *, s32, s32);
    s32 func_800AA888(s32);
    void *func_80111574(void *, void *);
    extern f32 D_800D7238;
    extern s32 D_8012E860;
    extern u8 D_8019071C_ovl3[];
    extern u8 D_801917D8_ovl3[];
    extern u8 D_80195058_ovl3[];
    extern f32 D_8019779C_ovl3;
    extern f32 D_801977A0_ovl3;
    extern f32 D_801977A4_ovl3;
    extern f32 D_801977A8_ovl3;
    LocalO36Gen *gen;
    LocalO36Slot *slot;
    Vector pos;
    s32 id;

    func_80153984_ovl3();
    func_8011CF58();
    if (((s32 (*)(void)) func_80121658)() != 0) {
        if (D_8012E860 != 0) {
            play_sound(0x11F);
        } else {
            play_sound(0x149);
        }
    }
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    } else {
        id = omCurrentObj->objId;
        if (D_800E9560[id] != 0) {
            D_800E9560[id]--;
            id = omCurrentObj->objId;
            if (D_800E9560[id] == 0) {
                func_8011E0E8();
            } else {
                gen = (LocalO36Gen *) (uintptr_t) gKirbyState.unk4C;
                func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[id][2], 0xFFFF);
                gen->xf->unk4.x = pos.x;
                gen->xf->unk4.y = pos.y;
                gen->xf->unk4.z = pos.z;
            }
            if (D_8012E860 != 0) {
                id = omCurrentObj->objId;
                if (D_800E9720[id] != 0) {
                    D_800E9720[id]--;
                    id = omCurrentObj->objId;
                    D_800DFBD0[id][2]->pos.v.y = D_800EA6E0[id];
                    D_800EA6E0[omCurrentObj->objId] += 7.5f;
                }
            }
        }
        if (gKirbyState.abilityInUse != 0) {
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                D_800D7238 = D_8019779C_ovl3;
            } else {
                D_800D7238 = D_801977A0_ovl3;
            }
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                D_800DFBD0[id][2]->angle.v.z -= D_800D7238;
            } else {
                D_800DFBD0[id][2]->angle.v.z += D_800D7238;
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6690[id] = 0.25f * D_800E6A10[id];
            } else {
                D_800E6690[id] = 0.125f * D_800E6A10[id];
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6850[id] = 5.0f;
            } else {
                D_800E6850[id] = 2.5f;
            }
            slot = func_80111574(D_8019071C_ovl3,
                                 (void *) (uintptr_t) omCurrentObj->objId);
            slot->unk20->unk18 = 35.0f * *(f32 *) ((u8 *) &D_8012E7FC + 4);
            slot->unk20->unk10 = 38.0f * *(f32 *) ((u8 *) &D_8012E7FC + 4);
            func_80111C4C((s32) (uintptr_t) slot);
        } else if (func_800AA888(0x20007) != 0) {
            func_8015449C_ovl3(D_80195058_ovl3, 0);
            func_80111C4C(func_80111A04(D_801917D8_ovl3, omCurrentObj->objId));
        }
    }
    func_80120CCC(D_801977A4_ovl3, D_801977A8_ovl3);
}
#elif defined(PORT)
/* PORT: the drill-run (action 0x34) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_80183A1C_ovl3.s (via m2c). Services
 * base motion and input, plays the landing thud through
 * func_80121658's result (0x11F in the D_8012E860 state, 0x149
 * otherwise), and hands off once the coroutine finishes. While the
 * life counter D_800E9720 (m2c: D_800E9560's sibling window) runs it
 * burns the D_800E9560 sparkle window -- pinning the 0x3D trail
 * generator to DObj [2]'s world position each tick and releasing the
 * anim lock when the window empties -- and in the D_8012E860 state
 * sinks Kirby by raising DObj [2] 7.5 units per tick through the
 * D_800EA6E0 height stash. While armed it spins DObj [2]'s roll by the
 * water-picked step (0.1047 wet / 0.1745 dry, sign by facing) staged
 * through D_800D7238, re-asserts the 0.25*facing / 5.0-cap drive
 * (0.125/2.5 in water), re-registers the D_8019071C drill PlyEntry and
 * stretches its probe shape by the whirl cell (35x/38x); disarmed with
 * the plain model resident it runs the D_801917D8 hitbox under the
 * D_80195058 overlay. Ends with the 0.196/1.57 pitch service.
 *
 * Port notes: the landing test reads void-declared func_80121658's
 * tail result through the established s32 function-pointer cast; the
 * trail generator write goes through the LP64 PcO36Gen view; the
 * PlyEntry slot from func_80111574 uses the LP64 host PlySlot offsets
 * (count +40, list +48 -- PcO36Slot below, locked by the plylib arm's
 * static asserts), records as this file's PcO36Shape; m2c's
 * `D_8012E7FC.unk4` whirl cell is the f32 word at &D_8012E7FC + 4;
 * `&D_800D71E8 + 0x50` is the f32 scratch D_800D7238; func_80111574 is
 * (void *, void *) on PC (extra m2c args are leftover registers);
 * D_8019779C..A8 are 0.10472f / 0.17453f / 0.19635f / 1.5708f rodata
 * cells kept as externs like the file's N64 arms. */
typedef struct PcO36Slot {
    u8 pad0[40];
    s32 unk1C;
    PcO36Shape *unk20;
} PcO36Slot;

void func_80183A1C_ovl3(s32 arg0) {
    void func_80121658(void);
    void func_800B2340(Vector *, s32, s32);
    s32 func_800AA888(s32);
    void *func_80111574(void *, void *);
    extern f32 D_800D7238;
    extern s32 D_8012E860;
    extern u8 D_8019071C_ovl3[];
    extern u8 D_801917D8_ovl3[];
    extern u8 D_80195058_ovl3[];
    extern f32 D_8019779C_ovl3;
    extern f32 D_801977A0_ovl3;
    extern f32 D_801977A4_ovl3;
    extern f32 D_801977A8_ovl3;
    PcO36Gen *gen;
    PcO36Slot *slot;
    Vector pos;
    s32 id;

    func_80153984_ovl3();
    func_8011CF58();
    if (((s32 (*)(void)) func_80121658)() != 0) {
        if (D_8012E860 != 0) {
            play_sound(0x11F);
        } else {
            play_sound(0x149);
        }
    }
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    } else {
        id = omCurrentObj->objId;
        if (D_800E9560[id] != 0) {
            D_800E9560[id]--;
            id = omCurrentObj->objId;
            if (D_800E9560[id] == 0) {
                func_8011E0E8();
            } else {
                gen = (PcO36Gen *) (uintptr_t) gKirbyState.unk4C;
                func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[id][2], 0xFFFF);
                gen->xf->unk4.x = pos.x;
                gen->xf->unk4.y = pos.y;
                gen->xf->unk4.z = pos.z;
            }
            if (D_8012E860 != 0) {
                id = omCurrentObj->objId;
                if (D_800E9720[id] != 0) {
                    D_800E9720[id]--;
                    id = omCurrentObj->objId;
                    D_800DFBD0[id][2]->pos.v.y = D_800EA6E0[id];
                    D_800EA6E0[omCurrentObj->objId] += 7.5f;
                }
            }
        }
        if (gKirbyState.abilityInUse != 0) {
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                D_800D7238 = D_8019779C_ovl3;
            } else {
                D_800D7238 = D_801977A0_ovl3;
            }
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                D_800DFBD0[id][2]->angle.v.z -= D_800D7238;
            } else {
                D_800DFBD0[id][2]->angle.v.z += D_800D7238;
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6690[id] = 0.25f * D_800E6A10[id];
            } else {
                D_800E6690[id] = 0.125f * D_800E6A10[id];
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6850[id] = 5.0f;
            } else {
                D_800E6850[id] = 2.5f;
            }
            slot = func_80111574(D_8019071C_ovl3,
                                 (void *) (uintptr_t) omCurrentObj->objId);
            slot->unk20->unk18 = 35.0f * *(f32 *) ((u8 *) &D_8012E7FC + 4);
            slot->unk20->unk10 = 38.0f * *(f32 *) ((u8 *) &D_8012E7FC + 4);
            func_80111C4C((s32) (uintptr_t) slot);
        } else if (func_800AA888(0x20007) != 0) {
            func_8015449C_ovl3(D_80195058_ovl3, 0);
            func_80111C4C(func_80111A04(D_801917D8_ovl3, omCurrentObj->objId));
        }
    }
    func_80120CCC(D_801977A4_ovl3, D_801977A8_ovl3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80183A1C_ovl3.s")
#endif

extern f32 *D_801929B4_ovl3[];
extern u8 D_80190358_ovl3[];
extern f32 D_801977AC_ovl3;
extern void func_8011DC30(s32);

void func_80183E38_ovl3(s32 arg0) {
    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.unk30 = gKirbyState.unk3C = 0;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[omCurrentObj->objId] = 0x35;
    D_800E0490[omCurrentObj->objId] = D_801929B4_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    func_80122F08(0x20018);
    gKirbyState.unk154 = 1;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_801977AC_ovl3;
        gKirbyState.isTurning |= 0x4000;
    }
    func_8011DC04(0x13B);
    func_8011DC30(0x13C);
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    func_800AA154(0x201D3);
    func_800AA154(0x201D4);
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_800AA154(0x201D5);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

#ifdef MIPS_TO_C
/* FACTORY: 78/336, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming) so it seals verbatim. Queued for the permuter. */
/* PORT: the propeller-blade (action 0x35) per-tick handler (paired with
 * the func_80183E38_ovl3 coroutine above), from asm/nonmatchings/ovl3/
 * ovl3_6/func_80183FF4_ovl3.s (via m2c). Latches last tick's surface
 * bits, runs the alternate prologue and the global Y sink, then probes
 * for a stop: a wall hit or a type-4 collision within 20 units at the
 * track position or 40 above it (or a ceiling hit) freezes both tracks
 * (65535 caps), arms the blocked flag unk3C and the 0x4000 turn latch;
 * otherwise unk3C clears and a landing (func_80121658's result) kills
 * the drive with the 0x13E thud and the latch. Once the coroutine
 * finishes it releases the voice lock, drops the latch and hands off.
 * Every tick it runs the 0.2618/1.5708 pitch service; airborne and
 * unblocked it spins DObj [1]'s roll by 1.5x speed (min 3) * pi/180
 * (fixed 0.1745 during a hurt state), halved in water -- where a
 * fresh splash-in also sets a 0.35 drift with a zero cap -- signed
 * against facing. Finally it draws the D_80194A10 overlay through the
 * D_80194910 matrix scaled by DObj [10]'s scale.v.y (layer from the
 * overlay's first byte, spread 25) and enters the D_80191994 shape set
 * at that scale.
 *
 * Port notes: the landing test reads void-declared func_80121658's
 * tail result through the established s32 function-pointer cast;
 * func_80155838_ovl3's raw bit range is 20.0f; m2c's
 * D_800DFBD0[...]->unk4->unk38 is DObj list entry [1]'s angle.v.z and
 * ->unk28->unk44 is entry [10]'s scale.v.y; D_801977B0..CC are
 * 65535.0f (x3) / 0.2618f / 1.5708f / 0.17453f / pi / 0.35f, the
 * pitch-service pair kept as rodata externs like the file's N64 arms;
 * func_80168408_ovl3 keeps the file's (s32, s32, f32) spelling with an
 * (s32)(uintptr_t) handle. */
void func_80183FF4_ovl3(s32 arg0) {
    s32 func_80153AD4_ovl3(void);
    void func_80121658(void);
    s32 func_80155838_ovl3(Vector *, f32, s32);
    extern f32 D_800EC9E4;
    extern u8 D_80191994_ovl3[];
    extern f32 D_80194910_ovl3[][4];
    extern u8 D_80194A10_ovl3[];
    extern f32 D_801977BC_ovl3;
    extern f32 D_801977C0_ovl3;
    Vector pos;
    f32 spin;
    f32 spd;
    f32 scale;
    s32 blocked;
    s32 hnd;
    s32 id;

    id = omCurrentObj->objId;
    blocked = 0;
    D_800E98E0[id] = D_800E8AE0[id];
    func_80153AD4_ovl3();
    gEntitiesNextPosYArray[omCurrentObj->objId] -= D_800EC9E4;
    if (gKirbyState.horizontalCollision != 0) {
        blocked = 1;
    } else {
        pos.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        pos.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        pos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        if (func_80155838_ovl3(&pos, 20.0f, 4) != 0) {
            blocked = 1;
        } else {
            pos.y += 40.0f;
            if (func_80155838_ovl3(&pos, 20.0f, 4) != 0) {
                blocked = 1;
            }
        }
    }
    if ((blocked != 0) || (gKirbyState.ceilingCollisionNext != 0)) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E3210[id] = D_800E3750[id];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        gKirbyState.unk3C = 1;
        gKirbyState.isTurning |= 0x4000;
    } else {
        gKirbyState.unk3C = 0;
    }
    if (gKirbyState.unk3C == 0) {
        if (((s32 (*)(void)) func_80121658)() != 0) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x13E);
            gKirbyState.isTurning |= 0x4000;
        }
    }
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C();
        func_8011D67C();
        gKirbyState.isTurning &= ~0x4000;
        return;
    }
    func_80120CCC(D_801977BC_ovl3, D_801977C0_ovl3);
    id = omCurrentObj->objId;
    if ((D_800E8920[id] == 0) && (gKirbyState.unk3C == 0)) {
        spd = ABSF(D_800E64D0[id] * 1.5f);
        if (gKirbyState.unk7 != 0) {
            spin = 0.17453293f;
        } else {
            if (spd < 2.0f) {
                spd = 3.0f;
            }
            spin = (spd * 3.1415927f) / 180.0f;
        }
        if (D_800E8AE0[id] & 6) {
            spin *= 0.5f;
            if (D_800E98E0[id] & 6) {
                D_800E6690[id] = 0.35f;
                D_800E6850[omCurrentObj->objId] = 0.0f;
                id = omCurrentObj->objId;
            }
        }
        if (D_800E6A10[id] == -1.0f) {
            D_800DFBD0[id][1]->angle.v.z += spin;
        } else {
            D_800DFBD0[id][1]->angle.v.z -= spin;
        }
        id = omCurrentObj->objId;
    }
    scale = D_800DFBD0[id][10]->scale.v.y;
    func_80152124_ovl3(D_80194910_ovl3, (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                       D_80194A10_ovl3[0], scale, 25.0f, 0.0f);
    hnd = func_80168408_ovl3((s32) (uintptr_t) D_80191994_ovl3, 0, scale);
    func_8015449C_ovl3(D_80194A10_ovl3, 0);
    func_80111C4C(hnd);
}
#elif defined(PORT)
/* PORT: the propeller-blade (action 0x35) per-tick handler (paired with
 * the func_80183E38_ovl3 coroutine above), from asm/nonmatchings/ovl3/
 * ovl3_6/func_80183FF4_ovl3.s (via m2c). Latches last tick's surface
 * bits, runs the alternate prologue and the global Y sink, then probes
 * for a stop: a wall hit or a type-4 collision within 20 units at the
 * track position or 40 above it (or a ceiling hit) freezes both tracks
 * (65535 caps), arms the blocked flag unk3C and the 0x4000 turn latch;
 * otherwise unk3C clears and a landing (func_80121658's result) kills
 * the drive with the 0x13E thud and the latch. Once the coroutine
 * finishes it releases the voice lock, drops the latch and hands off.
 * Every tick it runs the 0.2618/1.5708 pitch service; airborne and
 * unblocked it spins DObj [1]'s roll by 1.5x speed (min 3) * pi/180
 * (fixed 0.1745 during a hurt state), halved in water -- where a
 * fresh splash-in also sets a 0.35 drift with a zero cap -- signed
 * against facing. Finally it draws the D_80194A10 overlay through the
 * D_80194910 matrix scaled by DObj [10]'s scale.v.y (layer from the
 * overlay's first byte, spread 25) and enters the D_80191994 shape set
 * at that scale.
 *
 * Port notes: the landing test reads void-declared func_80121658's
 * tail result through the established s32 function-pointer cast;
 * func_80155838_ovl3's raw bit range is 20.0f; m2c's
 * D_800DFBD0[...]->unk4->unk38 is DObj list entry [1]'s angle.v.z and
 * ->unk28->unk44 is entry [10]'s scale.v.y; D_801977B0..CC are
 * 65535.0f (x3) / 0.2618f / 1.5708f / 0.17453f / pi / 0.35f, the
 * pitch-service pair kept as rodata externs like the file's N64 arms;
 * func_80168408_ovl3 keeps the file's (s32, s32, f32) spelling with an
 * (s32)(uintptr_t) handle. */
void func_80183FF4_ovl3(s32 arg0) {
    s32 func_80153AD4_ovl3(void);
    void func_80121658(void);
    s32 func_80155838_ovl3(Vector *, f32, s32);
    extern f32 D_800EC9E4;
    extern u8 D_80191994_ovl3[];
    extern f32 D_80194910_ovl3[][4];
    extern u8 D_80194A10_ovl3[];
    extern f32 D_801977BC_ovl3;
    extern f32 D_801977C0_ovl3;
    Vector pos;
    f32 spin;
    f32 spd;
    f32 scale;
    s32 blocked;
    s32 hnd;
    s32 id;

    id = omCurrentObj->objId;
    blocked = 0;
    D_800E98E0[id] = D_800E8AE0[id];
    func_80153AD4_ovl3();
    gEntitiesNextPosYArray[omCurrentObj->objId] -= D_800EC9E4;
    if (gKirbyState.horizontalCollision != 0) {
        blocked = 1;
    } else {
        pos.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        pos.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        pos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        if (func_80155838_ovl3(&pos, 20.0f, 4) != 0) {
            blocked = 1;
        } else {
            pos.y += 40.0f;
            if (func_80155838_ovl3(&pos, 20.0f, 4) != 0) {
                blocked = 1;
            }
        }
    }
    if ((blocked != 0) || (gKirbyState.ceilingCollisionNext != 0)) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E3210[id] = D_800E3750[id];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        gKirbyState.unk3C = 1;
        gKirbyState.isTurning |= 0x4000;
    } else {
        gKirbyState.unk3C = 0;
    }
    if (gKirbyState.unk3C == 0) {
        if (((s32 (*)(void)) func_80121658)() != 0) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x13E);
            gKirbyState.isTurning |= 0x4000;
        }
    }
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C();
        func_8011D67C();
        gKirbyState.isTurning &= ~0x4000;
        return;
    }
    func_80120CCC(D_801977BC_ovl3, D_801977C0_ovl3);
    id = omCurrentObj->objId;
    if ((D_800E8920[id] == 0) && (gKirbyState.unk3C == 0)) {
        spd = ABSF(D_800E64D0[id] * 1.5f);
        if (gKirbyState.unk7 != 0) {
            spin = 0.17453293f;
        } else {
            if (spd < 2.0f) {
                spd = 3.0f;
            }
            spin = (spd * 3.1415927f) / 180.0f;
        }
        if (D_800E8AE0[id] & 6) {
            spin *= 0.5f;
            if (D_800E98E0[id] & 6) {
                D_800E6690[id] = 0.35f;
                D_800E6850[omCurrentObj->objId] = 0.0f;
                id = omCurrentObj->objId;
            }
        }
        if (D_800E6A10[id] == -1.0f) {
            D_800DFBD0[id][1]->angle.v.z += spin;
        } else {
            D_800DFBD0[id][1]->angle.v.z -= spin;
        }
        id = omCurrentObj->objId;
    }
    scale = D_800DFBD0[id][10]->scale.v.y;
    func_80152124_ovl3(D_80194910_ovl3, (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                       D_80194A10_ovl3[0], scale, 25.0f, 0.0f);
    hnd = func_80168408_ovl3((s32) (uintptr_t) D_80191994_ovl3, 0, scale);
    func_8015449C_ovl3(D_80194A10_ovl3, 0);
    func_80111C4C(hnd);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80183FF4_ovl3.s")
#endif

#ifdef NON_MATCHING
/* 8/219: 6 of the 8 are the $f0/$f2 swap between the shared 0.0f and `temp`
   (see func_8018E164_ovl3); the other 2 are the scheduler putting `i = 0`
   before rather than after the &D_800EC2E0 addiu. Swept: statement order of
   the temp assignment (3 positions), double 0.0 literals, a named zero. */
extern f32 D_801977D0_ovl3;
extern u8 D_8019080C_ovl3[];

void func_80184538_ovl3(s32 arg0) {
    f32 temp;
    s32 i;

    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.unk30 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    temp = D_801977D0_ovl3;
    D_800DDFD0[omCurrentObj->objId] = 0x36;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    D_800E83E0[omCurrentObj->objId] = 0;
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    play_sound(0x24);
    D_800E9720[omCurrentObj->objId] = 0x2D;
    func_801230E8(0x201DD, 0x201DE, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20019);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201D7, 0x201D8, 1);
    gKirbyState.unk15C = (u32) D_8019080C_ovl3;
    func_801230E8(0x201DB, 0x201DC, 0);
    while (1) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        if (gKirbyController.buttonPressed & 0x4000) {
            break;
        }
        if (D_800E83E0[omCurrentObj->objId] != 0) {
            break;
        }
        if (D_800E9720[omCurrentObj->objId]-- == 0) {
            break;
        }
        ohSleep(1);
    }
    play_sound(0x25);
    func_801230E8(0x201D9, 0x201DA, 1);
    gKirbyState.abilityInUse = 0;
    func_800BB468(6, 0x10);
    i = 0;
    do {
        D_800EC2E0[func_801632B8_ovl3(6)].as_s32 = i;
        i++;
    } while (i != 8);
    ((u8 **) D_800DFBD0[omCurrentObj->objId][2])[32][0x5B] = 0xFF;
    gKirbyState.unk30 += 1;
    func_80122F08(0x20016);
    gKirbyState.unk154 = 2;
    gKirbyState.unk4C = func_800A8100(1, 1, 0x22, D_800DFBD0[omCurrentObj->objId][2]);
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_800AA154(0x201C5);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80184538_ovl3.s")
#endif
extern f32 D_801977D4_ovl3;
extern f32 D_801977D8_ovl3;
s32 func_80120CCC(f32, f32);

void func_801848A4_ovl3(s32 arg0) {
    s32 kind;

    func_80153984_ovl3();
    if (gKirbyState.unk30 != 0) {
        func_801217B8();
        if ((gKirbyState.unk30 == 2) || (D_800E8920[omCurrentObj->objId] != 0)) {
            func_8011E0E8();
            func_8011D67C();
        }
        return;
    }
    if (gKirbyController.buttonHeld & 0x300) {
        if (gKirbyController.buttonHeld & 0x100) {
            D_800E6690[omCurrentObj->objId] = 0.5f;
            D_800E6850[omCurrentObj->objId] = 2.0f;
        } else {
            D_800E6690[omCurrentObj->objId] = -0.5f;
            D_800E6850[omCurrentObj->objId] = 2.0f;
        }
    } else {
        D_800E6850[omCurrentObj->objId] = 0.0f;
    }
    if (gKirbyController.buttonHeld & 0xC00) {
        if (gKirbyController.buttonHeld & 0x800) {
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E3750[omCurrentObj->objId] = 0.5f;
            D_800E3C90[omCurrentObj->objId] = 1.0f;
        } else {
            D_800E3750[omCurrentObj->objId] = -0.5f;
            D_800E3C90[omCurrentObj->objId] = 2.0f;
        }
    } else {
        D_800E3C90[omCurrentObj->objId] = 0.0f;
    }
    if (gKirbyState.abilityInUse != 0) {
        kind = D_800E9720[omCurrentObj->objId];
        if ((kind == 3) || (kind == 1)) {
            ((u8 **) D_800DFBD0[omCurrentObj->objId][2])[0x20][0x5B] = 0;
        } else {
            ((u8 **) D_800DFBD0[omCurrentObj->objId][2])[0x20][0x5B] = 0xFF;
        }
    }
    func_80120CCC(D_801977D4_ovl3, D_801977D8_ovl3);
}

extern f32 *D_801926E8_ovl3[];
extern s32 D_8019883C_ovl3;
extern s32 D_80196DA8_ovl3[];
extern void func_80120A28(void);

void func_80184B24_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    D_8019883C_ovl3 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[omCurrentObj->objId] = 0x37;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    func_80120A28();
    func_80122F08(0x2001A);
    gKirbyState.unk154 = 2;
    func_801693C4_ovl3(0xC);
    for (gKirbyState.unk44 = 0; gKirbyState.unk44 < 3; gKirbyState.unk44++) {
        play_sound(0xBB);
        func_800AA154(D_80196DA8_ovl3[gKirbyState.unk44]);
        if ((gKirbyController.buttonHeld & 0x4000) == 0) {
            break;
        }
    }
    gKirbyState.unk44 = -1;
    func_800AA154(0x201E2);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_80184C64_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 93/311, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming, the goto dispatch: label is a shared re-entry path, not a ladder) so it seals verbatim. Queued for the permuter. */
/* PORT: the UFO-charge phase coroutine (track action 0x38), from
 * asm/nonmatchings/ovl3/ovl3_6/func_80184CA4_ovl3.s (via m2c). First
 * entry arms the ability, clears the 0xD MultiType latch, plays 0xBA
 * with the 0x2008B/0x2008C intro pair, spawns the 0x24 charge effect
 * on DObj [2] and queues the 0x2008D/0x2008E hold pair, then charges:
 * 0x1E held-B ticks complete the transform (release/grab aborts to
 * phase 5) -- setting the latch, the D_80190874 PlyEntry handle, the
 * 0x27 effect, the D_80192A8C anim table, a 0x78 flight timer, the
 * 0x52 loop voice, the 0x20091/0x20092 pair and the func_80185180_ovl3
 * impact process, entering phase 1. Re-entries dispatch: 1/3 just
 * park, 2 launches the jump (submerged 0x10B with a fixed 8.5 rise and
 * -0.4 gravity, dry 0xF7 with a func_80123144(17)-scaled rise), rides
 * to apex and flips to 3, 4 melts back to the plain tables, 5 cancels
 * with the 0x2008F/0x20090 pair.
 *
 * Port notes: func_80123144 is f32(f32) with 0x41880000 = 17.0f;
 * m2c's D_800DFBD0[...]->unk8 is DObj list entry [2]; the charge loop
 * is the ROM's pre-test/post-increment spelling; unk15C takes
 * (u32)(uintptr_t); func_80185180_ovl3 is forward-declared -- it is
 * defined just below with exactly the D_800DF310 slot signature. */
void func_80184CA4_ovl3(s32 arg0) {
    void func_80185180_ovl3(s32, s32, f32);
    f32 func_80123144(f32);
    extern u8 D_80190874_ovl3[];
    extern f32 *D_80192A8C_ovl3[];

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk4C = 0;
        gKirbyState.unk7 = 0;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x38;
        func_80120A28();
        D_800EC2E0[func_801693C4_ovl3(0xD)].as_u32 = 0;
        play_sound(0xBA);
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        func_801230E8(0x2008B, 0x2008C, 1);
        gKirbyState.unk4C = func_800A8100(1, 1, 0x24, D_800DFBD0[omCurrentObj->objId][2]);
        func_801230E8(0x2008D, 0x2008E, 0);
        D_800E9720[omCurrentObj->objId] = 0;
        while (D_800E9720[omCurrentObj->objId] < 0x1E) {
            if (!(gKirbyController.buttonHeld & 0x4000) || (gKirbyState.unk17 != 0)) {
                gKirbyState.unk3C = 5;
                gKirbyState.unk44 = 5;
                goto dispatch;
            }
            ohSleep(1);
            D_800E9720[omCurrentObj->objId] += 1;
        }
        func_8011E0E8();
        D_800EC2E0[func_801693C4_ovl3(0xD)].as_u32 = 1;
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190874_ovl3;
        gKirbyState.unk4C = func_800A8100(1, 1, 0x27, D_800DFBD0[omCurrentObj->objId][2]);
        D_800E0490[omCurrentObj->objId] = D_80192A8C_ovl3;
        gKirbyState.unk3C = 1;
        gKirbyState.unk44 = 1;
        D_800E9720[omCurrentObj->objId] = 0x78;
        func_8011DC04(0x52);
        func_801230E8(0x20091, 0x20092, 0);
        D_800DF310[omCurrentObj->objId] = func_80185180_ovl3;
    }
dispatch:
    switch (gKirbyState.unk44) {
        case 1:
        case 3:
            break;
        case 2:
            D_800E8920[omCurrentObj->objId] = 0;
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
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.unk44 = 3;
            gKirbyState.isFullJump += 1;
            break;
        case 4:
            func_8011DC5C();
            func_8011E0E8();
            gKirbyState.abilityInUse = 0;
            D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
            gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
            gKirbyState.unk30 += 1;
            break;
        case 5:
            func_8011E0E8();
            gKirbyState.abilityInUse = 0;
            func_801230E8(0x2008F, 0x20090, 1);
            gKirbyState.unk30 += 1;
            break;
    }
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the UFO-charge phase coroutine (track action 0x38), from
 * asm/nonmatchings/ovl3/ovl3_6/func_80184CA4_ovl3.s (via m2c). First
 * entry arms the ability, clears the 0xD MultiType latch, plays 0xBA
 * with the 0x2008B/0x2008C intro pair, spawns the 0x24 charge effect
 * on DObj [2] and queues the 0x2008D/0x2008E hold pair, then charges:
 * 0x1E held-B ticks complete the transform (release/grab aborts to
 * phase 5) -- setting the latch, the D_80190874 PlyEntry handle, the
 * 0x27 effect, the D_80192A8C anim table, a 0x78 flight timer, the
 * 0x52 loop voice, the 0x20091/0x20092 pair and the func_80185180_ovl3
 * impact process, entering phase 1. Re-entries dispatch: 1/3 just
 * park, 2 launches the jump (submerged 0x10B with a fixed 8.5 rise and
 * -0.4 gravity, dry 0xF7 with a func_80123144(17)-scaled rise), rides
 * to apex and flips to 3, 4 melts back to the plain tables, 5 cancels
 * with the 0x2008F/0x20090 pair.
 *
 * Port notes: func_80123144 is f32(f32) with 0x41880000 = 17.0f;
 * m2c's D_800DFBD0[...]->unk8 is DObj list entry [2]; the charge loop
 * is the ROM's pre-test/post-increment spelling; unk15C takes
 * (u32)(uintptr_t); func_80185180_ovl3 is forward-declared -- it is
 * defined just below with exactly the D_800DF310 slot signature. */
void func_80184CA4_ovl3(s32 arg0) {
    void func_80185180_ovl3(s32, s32, f32);
    f32 func_80123144(f32);
    extern u8 D_80190874_ovl3[];
    extern f32 *D_80192A8C_ovl3[];

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk4C = 0;
        gKirbyState.unk7 = 0;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x38;
        func_80120A28();
        D_800EC2E0[func_801693C4_ovl3(0xD)].as_u32 = 0;
        play_sound(0xBA);
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        func_801230E8(0x2008B, 0x2008C, 1);
        gKirbyState.unk4C = func_800A8100(1, 1, 0x24, D_800DFBD0[omCurrentObj->objId][2]);
        func_801230E8(0x2008D, 0x2008E, 0);
        D_800E9720[omCurrentObj->objId] = 0;
        while (D_800E9720[omCurrentObj->objId] < 0x1E) {
            if (!(gKirbyController.buttonHeld & 0x4000) || (gKirbyState.unk17 != 0)) {
                gKirbyState.unk3C = 5;
                gKirbyState.unk44 = 5;
                goto dispatch;
            }
            ohSleep(1);
            D_800E9720[omCurrentObj->objId] += 1;
        }
        func_8011E0E8();
        D_800EC2E0[func_801693C4_ovl3(0xD)].as_u32 = 1;
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190874_ovl3;
        gKirbyState.unk4C = func_800A8100(1, 1, 0x27, D_800DFBD0[omCurrentObj->objId][2]);
        D_800E0490[omCurrentObj->objId] = D_80192A8C_ovl3;
        gKirbyState.unk3C = 1;
        gKirbyState.unk44 = 1;
        D_800E9720[omCurrentObj->objId] = 0x78;
        func_8011DC04(0x52);
        func_801230E8(0x20091, 0x20092, 0);
        D_800DF310[omCurrentObj->objId] = func_80185180_ovl3;
    }
dispatch:
    switch (gKirbyState.unk44) {
        case 1:
        case 3:
            break;
        case 2:
            D_800E8920[omCurrentObj->objId] = 0;
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
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.unk44 = 3;
            gKirbyState.isFullJump += 1;
            break;
        case 4:
            func_8011DC5C();
            func_8011E0E8();
            gKirbyState.abilityInUse = 0;
            D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
            gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
            gKirbyState.unk30 += 1;
            break;
        case 5:
            func_8011E0E8();
            gKirbyState.abilityInUse = 0;
            func_801230E8(0x2008F, 0x20090, 1);
            gKirbyState.unk30 += 1;
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80184CA4_ovl3.s")
#endif

void func_80185180_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 7) {
                if (D_800E8AE0[omCurrentObj->objId] & 2) {
                    play_sound(0x10C);
                } else {
                    play_sound(9);
                }
            } else if (D_800E8920[omCurrentObj->objId] != 0) {
                play_sound(0x267);
            }
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 68/287, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming) so it seals verbatim. Queued for the permuter. */
/* PORT: the UFO (action 0x38) per-tick handler, from asm/nonmatchings/
 * ovl3/ovl3_6/func_80185224_ovl3.s (via m2c). Runs the alternate tick
 * prologue, and after the coroutine finishes releases the voice/anim
 * locks and hands off. Phase 2 (launch) lands back to 1, else polls
 * the turn latch, flips to 3 on a ceiling hit (killing any rise) and
 * runs the variable-jump-height service until full; phases 1/3 run the
 * turn service (negating the drift on a fresh turn) and launch on A
 * from the ground, plus the input service. All three then drive:
 * 0.625 * accel.y * facing drift with a |6 * accel.x| cap (halved in
 * water), zero the speed against the D_800E6310 latch or a facing wall
 * contact, run the D_80191A40 hitbox and burn the 0x78 flight timer --
 * expiry or a scripted grab melts to phase 4. Other phases just
 * service input. A phase change re-triggers the coroutine process.
 *
 * Port notes: func_80120AF8 takes a Vector* (accel; m2c's sp3C/sp40
 * are its x/y), func_801219C8/func_80121194/func_8011EBD4 are void-arg
 * on PC; the water cap ladder's ABS is live here (accel.x can be
 * negative) and is spelled with ABSF. */
void func_80185224_ovl3(s32 arg0) {
    s32 func_80153AD4_ovl3(void);
    void func_80120AF8(Vector *);
    s32 func_80121194(void);
    void func_801219C8(void);
    void func_8011EBD4(void);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern u8 D_80191A40_ovl3[];
    Vector accel;
    f32 cap;
    s32 id;

    func_80153AD4_ovl3();
    func_8011CF58();
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C();
        func_8011E0E8();
        func_8011D67C();
        return;
    }
    switch (gKirbyState.unk44) {
        case 2:
            if (D_800E8920[omCurrentObj->objId] != 0) {
                gKirbyState.isFullJump = 0;
                gKirbyState.jumpHeight = 0;
                gKirbyState.unk44 = 1;
            } else {
                if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                    gKirbyState.isTurning |= 1;
                }
                if (gKirbyState.ceilingCollisionNext != 0) {
                    gKirbyState.isFullJump = 1;
                    if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                        D_800E3210[omCurrentObj->objId] = 0.0f;
                    }
                    gKirbyState.unk44 = 3;
                }
                if (gKirbyState.isFullJump == 0) {
                    func_8011EBD4();
                }
            }
            goto drive;
        case 1:
        case 3:
            if (!(gKirbyState.isTurning & 1)) {
                func_801219C8();
                if (gKirbyState.isTurning & 1) {
                    D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
                }
            }
            if ((D_800E8920[omCurrentObj->objId] != 0)
                && (gKirbyController.buttonPressed & 0x8000)) {
                gKirbyState.unk44 = 2;
            }
            func_801217B8();
        drive:
            func_80120AF8(&accel);
            id = omCurrentObj->objId;
            D_800E6690[id] = D_800E6A10[id] * (0.625f * accel.y);
            id = omCurrentObj->objId;
            cap = 6.0f * accel.x;
            if (D_800E8AE0[id] & 6) {
                cap *= 0.5f;
            }
            D_800E6850[id] = ABSF(cap);
            id = omCurrentObj->objId;
            if (D_800E6310[id] != 0) {
                D_800E64D0[id] = 0.0f;
            } else if (((gKirbyState.leftCollisionNext != 0) && (D_800E64D0[id] < 0.0f))
                       || ((gKirbyState.rightCollisionNext != 0) && (D_800E64D0[id] > 0.0f))) {
                D_800E64D0[id] = 0.0f;
            }
            func_80111C4C(func_80111A04(D_80191A40_ovl3, omCurrentObj->objId));
            D_800E9720[omCurrentObj->objId] -= 1;
            if ((D_800E9720[omCurrentObj->objId] == 0) || (gKirbyState.unk17 != 0)) {
                gKirbyState.unk44 = 4;
            }
            break;
        default:
            func_801217B8();
            break;
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#elif defined(PORT)
/* PORT: the UFO (action 0x38) per-tick handler, from asm/nonmatchings/
 * ovl3/ovl3_6/func_80185224_ovl3.s (via m2c). Runs the alternate tick
 * prologue, and after the coroutine finishes releases the voice/anim
 * locks and hands off. Phase 2 (launch) lands back to 1, else polls
 * the turn latch, flips to 3 on a ceiling hit (killing any rise) and
 * runs the variable-jump-height service until full; phases 1/3 run the
 * turn service (negating the drift on a fresh turn) and launch on A
 * from the ground, plus the input service. All three then drive:
 * 0.625 * accel.y * facing drift with a |6 * accel.x| cap (halved in
 * water), zero the speed against the D_800E6310 latch or a facing wall
 * contact, run the D_80191A40 hitbox and burn the 0x78 flight timer --
 * expiry or a scripted grab melts to phase 4. Other phases just
 * service input. A phase change re-triggers the coroutine process.
 *
 * Port notes: func_80120AF8 takes a Vector* (accel; m2c's sp3C/sp40
 * are its x/y), func_801219C8/func_80121194/func_8011EBD4 are void-arg
 * on PC; the water cap ladder's ABS is live here (accel.x can be
 * negative) and is spelled with ABSF. */
void func_80185224_ovl3(s32 arg0) {
    s32 func_80153AD4_ovl3(void);
    void func_80120AF8(Vector *);
    s32 func_80121194(void);
    void func_801219C8(void);
    void func_8011EBD4(void);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern u8 D_80191A40_ovl3[];
    Vector accel;
    f32 cap;
    s32 id;

    func_80153AD4_ovl3();
    func_8011CF58();
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C();
        func_8011E0E8();
        func_8011D67C();
        return;
    }
    switch (gKirbyState.unk44) {
        case 2:
            if (D_800E8920[omCurrentObj->objId] != 0) {
                gKirbyState.isFullJump = 0;
                gKirbyState.jumpHeight = 0;
                gKirbyState.unk44 = 1;
            } else {
                if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                    gKirbyState.isTurning |= 1;
                }
                if (gKirbyState.ceilingCollisionNext != 0) {
                    gKirbyState.isFullJump = 1;
                    if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                        D_800E3210[omCurrentObj->objId] = 0.0f;
                    }
                    gKirbyState.unk44 = 3;
                }
                if (gKirbyState.isFullJump == 0) {
                    func_8011EBD4();
                }
            }
            goto drive;
        case 1:
        case 3:
            if (!(gKirbyState.isTurning & 1)) {
                func_801219C8();
                if (gKirbyState.isTurning & 1) {
                    D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
                }
            }
            if ((D_800E8920[omCurrentObj->objId] != 0)
                && (gKirbyController.buttonPressed & 0x8000)) {
                gKirbyState.unk44 = 2;
            }
            func_801217B8();
        drive:
            func_80120AF8(&accel);
            id = omCurrentObj->objId;
            D_800E6690[id] = D_800E6A10[id] * (0.625f * accel.y);
            id = omCurrentObj->objId;
            cap = 6.0f * accel.x;
            if (D_800E8AE0[id] & 6) {
                cap *= 0.5f;
            }
            D_800E6850[id] = ABSF(cap);
            id = omCurrentObj->objId;
            if (D_800E6310[id] != 0) {
                D_800E64D0[id] = 0.0f;
            } else if (((gKirbyState.leftCollisionNext != 0) && (D_800E64D0[id] < 0.0f))
                       || ((gKirbyState.rightCollisionNext != 0) && (D_800E64D0[id] > 0.0f))) {
                D_800E64D0[id] = 0.0f;
            }
            func_80111C4C(func_80111A04(D_80191A40_ovl3, omCurrentObj->objId));
            D_800E9720[omCurrentObj->objId] -= 1;
            if ((D_800E9720[omCurrentObj->objId] == 0) || (gKirbyState.unk17 != 0)) {
                gKirbyState.unk44 = 4;
            }
            break;
        default:
            func_801217B8();
            break;
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80185224_ovl3.s")
#endif

void func_801856A4_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x39;
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_801693C4_ovl3(0xE);
    func_801632B8_ovl3(8);
    func_80122F08(0x20008);
    func_801230E8(0x20150, 0x20151, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_80185748_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

void func_80185788_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    D_800E9560[omCurrentObj->objId] = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        D_800E9720[omCurrentObj->objId] = 0x12;
    } else {
        D_800E9720[omCurrentObj->objId] = 9;
    }
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[omCurrentObj->objId] = 0x3A;
    func_80120A28();
    func_801230E8(0x201F2, 0x201F3, 1);
    func_80122F08(0x2001C);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201F0, 0x201F1, 0);
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        D_800E9560[omCurrentObj->objId] = 0xB;
        ohSleep(6);
    } else {
        D_800E9560[omCurrentObj->objId] = 5;
    }
    play_sound(0x5A);
    D_800EC2E0[func_801693C4_ovl3(0xF)].as_s32 = 0;
    D_800EC2E0[func_801693C4_ovl3(0xF)].as_s32 = 1;
    func_800AF27C();
    gKirbyState.abilityInUse = 0;
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201F4, 0x201F5, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

extern u8 D_801953CC_ovl3[];
extern u8 D_801953E8_ovl3[];
extern u8 D_80191B54_ovl3[];
extern u8 D_80191BBC_ovl3[];

void func_80185968_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
        return;
    }
    if (gKirbyState.abilityInUse != 0) {
        if (D_800E9720[omCurrentObj->objId] == 0) {
            func_8015449C_ovl3(D_801953CC_ovl3, 0);
            func_80111C4C(func_80111A04(D_80191B54_ovl3, omCurrentObj->objId));
        } else {
            D_800E9720[omCurrentObj->objId]--;
        }
        if (D_800E9560[omCurrentObj->objId] != 0) {
            func_8015449C_ovl3(D_801953E8_ovl3, 0);
            func_80111C4C(func_80111A04(D_80191BBC_ovl3, omCurrentObj->objId));
            D_800E9560[omCurrentObj->objId]--;
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 24/490, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming, switch-with-fallthrough mirrors the ROM's literal phase-park layout) so it seals verbatim. Queued for the permuter. */
/* PORT: the spring-legs phase coroutine (track action 0x3B, model
 * 0x2001F), from asm/nonmatchings/ovl3/ovl3_6/func_80185A9C_ovl3.s (via
 * m2c). First entry arms the ability with water-scaled anim speed (2.0
 * dry / 1.25 wet), freezes the drive, zeroes the D_800E98E0 latch,
 * seeds a 0x14 counter, keeps the default PlyEntry handle, plays the
 * 0x15 loop voice and starts in phase 0 (grounded) or 3 (airborne).
 * Phases park on curObjSleepForever and re-enter via the phase
 * re-trigger: 0 idles on the 0x20204 blend/anim, 1 walks (0.25 drift
 * toward the held direction via func_801210B4, cap 2 dry / 1 wet) on
 * 0x20208, 2 springs (submerged 0x10B with a fixed 8.5 rise, dry 0xF7
 * with a func_80123144(17)-scaled rise), riding 0x20205 to apex then
 * one-shotting 0x20206 into phase 3's fall (water/dry gravity split)
 * on 0x20203, and 4 lands on 0x20207. Any other phase exits: freezes
 * both tracks, releases the voice lock, plays 0x16 and parks on the
 * 0x20202 stop anim.
 *
 * Port notes: m2c's denormal float first arguments to func_800AA78C
 * are the raw anim ids 0x20204/0x20208/0x20203 with 0x2001F and
 * 0x40400000 = 3.0f; the walk cap ladder is the ROM's redundant ABS of
 * the positive 2-or-1 constant; func_80123144 is f32(f32) with
 * 0x41880000 = 17.0f; func_801210B4 is declared locally (the file's
 * own extern only appears inside a later NON_MATCHING block); the
 * post-park func_800BB468 dust in phase 4 is kept in the ROM's literal
 * (unreached) position. */
void func_80185A9C_ovl3(s32 arg0) {
    void func_800AA78C(s32, u32, f32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    f32 func_80123144(f32);
    s32 func_801210B4(void);
    f32 animSpd;
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.isFullJump = 0;
        gKirbyState.jumpHeight = 0;
        if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
            animSpd = 2.0f;
        } else {
            animSpd = 1.25f;
        }
        func_800AECC0(animSpd);
        if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
            animSpd = 2.0f;
        } else {
            animSpd = 1.25f;
        }
        func_800AED20(animSpd);
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x3B;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E98E0[omCurrentObj->objId] = 0;
        D_800E9720[omCurrentObj->objId] = 0x14;
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
        func_80122F08(0x2001F);
        gKirbyState.unk154 = 1;
        func_801693C4_ovl3(0x10);
        func_8011DC04(0x15);
        if (D_800E8920[omCurrentObj->objId] != 0) {
            gKirbyState.unk3C = 0;
            gKirbyState.unk44 = 0;
        } else {
            gKirbyState.unk3C = 3;
            gKirbyState.unk44 = 3;
        }
    }
    switch (gKirbyState.unk44) {
        case 0:
            func_800AA78C(0x20204, 0x2001F, 3.0f);
            func_800AA018(0x20204);
            curObjSleepForever();
            /* fallthrough */
        case 1:
            if (func_801210B4() == 1) {
                D_800E6690[omCurrentObj->objId] = 0.25f;
            } else {
                D_800E6690[omCurrentObj->objId] = -0.25f;
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6850[id] = 2.0f;
            } else {
                D_800E6850[id] = 1.0f;
            }
            func_800AA78C(0x20208, 0x2001F, 3.0f);
            func_800AA018(0x20208);
            curObjSleepForever();
            /* fallthrough */
        case 2:
            D_800E8920[omCurrentObj->objId] = 0;
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
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA018(0x20205);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.isFullJump += 1;
            func_800AA154(0x20206);
            gKirbyState.unk3C = 3;
            gKirbyState.unk44 = 3;
            gKirbyState.isFullJump = 0;
            gKirbyState.jumpHeight = 0;
            /* fallthrough */
        case 3:
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                D_800E3750[id] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            } else {
                D_800E3750[id] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA78C(0x20203, 0x2001F, 3.0f);
            func_800AA018(0x20203);
            curObjSleepForever();
            /* fallthrough */
        case 4:
            func_800AA018(0x20207);
            curObjSleepForever();
            func_800BB468(6, 0x10);
            break;
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_8011DC5C();
    play_sound(0x16);
    func_8011CF58();
    func_800AA154(0x20202);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the spring-legs phase coroutine (track action 0x3B, model
 * 0x2001F), from asm/nonmatchings/ovl3/ovl3_6/func_80185A9C_ovl3.s (via
 * m2c). First entry arms the ability with water-scaled anim speed (2.0
 * dry / 1.25 wet), freezes the drive, zeroes the D_800E98E0 latch,
 * seeds a 0x14 counter, keeps the default PlyEntry handle, plays the
 * 0x15 loop voice and starts in phase 0 (grounded) or 3 (airborne).
 * Phases park on curObjSleepForever and re-enter via the phase
 * re-trigger: 0 idles on the 0x20204 blend/anim, 1 walks (0.25 drift
 * toward the held direction via func_801210B4, cap 2 dry / 1 wet) on
 * 0x20208, 2 springs (submerged 0x10B with a fixed 8.5 rise, dry 0xF7
 * with a func_80123144(17)-scaled rise), riding 0x20205 to apex then
 * one-shotting 0x20206 into phase 3's fall (water/dry gravity split)
 * on 0x20203, and 4 lands on 0x20207. Any other phase exits: freezes
 * both tracks, releases the voice lock, plays 0x16 and parks on the
 * 0x20202 stop anim.
 *
 * Port notes: m2c's denormal float first arguments to func_800AA78C
 * are the raw anim ids 0x20204/0x20208/0x20203 with 0x2001F and
 * 0x40400000 = 3.0f; the walk cap ladder is the ROM's redundant ABS of
 * the positive 2-or-1 constant; func_80123144 is f32(f32) with
 * 0x41880000 = 17.0f; func_801210B4 is declared locally (the file's
 * own extern only appears inside a later NON_MATCHING block); the
 * post-park func_800BB468 dust in phase 4 is kept in the ROM's literal
 * (unreached) position. */
void func_80185A9C_ovl3(s32 arg0) {
    void func_800AA78C(s32, u32, f32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    f32 func_80123144(f32);
    s32 func_801210B4(void);
    f32 animSpd;
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.isFullJump = 0;
        gKirbyState.jumpHeight = 0;
        if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
            animSpd = 2.0f;
        } else {
            animSpd = 1.25f;
        }
        func_800AECC0(animSpd);
        if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
            animSpd = 2.0f;
        } else {
            animSpd = 1.25f;
        }
        func_800AED20(animSpd);
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x3B;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E98E0[omCurrentObj->objId] = 0;
        D_800E9720[omCurrentObj->objId] = 0x14;
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
        func_80122F08(0x2001F);
        gKirbyState.unk154 = 1;
        func_801693C4_ovl3(0x10);
        func_8011DC04(0x15);
        if (D_800E8920[omCurrentObj->objId] != 0) {
            gKirbyState.unk3C = 0;
            gKirbyState.unk44 = 0;
        } else {
            gKirbyState.unk3C = 3;
            gKirbyState.unk44 = 3;
        }
    }
    switch (gKirbyState.unk44) {
        case 0:
            func_800AA78C(0x20204, 0x2001F, 3.0f);
            func_800AA018(0x20204);
            curObjSleepForever();
            /* fallthrough */
        case 1:
            if (func_801210B4() == 1) {
                D_800E6690[omCurrentObj->objId] = 0.25f;
            } else {
                D_800E6690[omCurrentObj->objId] = -0.25f;
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800E6850[id] = 2.0f;
            } else {
                D_800E6850[id] = 1.0f;
            }
            func_800AA78C(0x20208, 0x2001F, 3.0f);
            func_800AA018(0x20208);
            curObjSleepForever();
            /* fallthrough */
        case 2:
            D_800E8920[omCurrentObj->objId] = 0;
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
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA018(0x20205);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.isFullJump += 1;
            func_800AA154(0x20206);
            gKirbyState.unk3C = 3;
            gKirbyState.unk44 = 3;
            gKirbyState.isFullJump = 0;
            gKirbyState.jumpHeight = 0;
            /* fallthrough */
        case 3:
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                D_800E3750[id] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            } else {
                D_800E3750[id] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA78C(0x20203, 0x2001F, 3.0f);
            func_800AA018(0x20203);
            curObjSleepForever();
            /* fallthrough */
        case 4:
            func_800AA018(0x20207);
            curObjSleepForever();
            func_800BB468(6, 0x10);
            break;
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_8011DC5C();
    play_sound(0x16);
    func_8011CF58();
    func_800AA154(0x20202);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80185A9C_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 126/321, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming, the goto bail: label is a shared exit path duplicated at another switch case, not a ladder) so it seals verbatim. Queued for the permuter. */
/* PORT: the spring-legs (action 0x3B) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_80186248_ovl3.s (via m2c). Services
 * base motion (skipping input service in the spring phase 2); a
 * scripted grab in any phase but 5 -- or releasing B -- releases the
 * voice lock, disarms the ability and hands off immediately, while
 * phase 5 (worn out) just waits for the coroutine to finish. Otherwise
 * it runs the water-scaled anim speed (2.0 dry / 1.25 wet) and the
 * phase machine: 0 idles (held direction to 1, A to 2, no floor to 3),
 * 1 walks with the turn latch and gravity (stopping to 0, A to 2,
 * airborne to 3), 2 springs (turn poll, ceiling kills the rise into 3,
 * variable-height service), 3 falls (turn poll, landing to 4), 4 lands
 * (moving to 1, A to 2, anim end to 0). Phases 0-4 then burn the 0x14
 * fatigue window -- three expiries wear the springs out into phase 5 --
 * and a phase change re-triggers the coroutine process.
 *
 * Port notes: func_80121C90 / func_80121194 / func_801219C8 /
 * func_8011EBD4 / func_8011ED68 are void-arg on PC; the fatigue
 * check tests the pre-decrement counter (the cell parks at -1 for a
 * tick when it trips), kept literally; the unk3C-vs-phase compare in
 * phase 1 uses unk44 directly (m2c's var_v1 tracks it exactly). */
void func_80186248_ovl3(s32 arg0) {
    void func_800AECC0(f32);
    void func_800AED20(f32);
    s32 func_80121C90(void);
    s32 func_80121194(void);
    void func_801219C8(void);
    void func_8011EBD4(void);
    void func_8011ED68(void);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    f32 animSpd;
    s32 cnt;
    s32 id;

    func_80153984_ovl3();
    if (gKirbyState.unk44 != 2) {
        func_801217B8();
    }
    if (gKirbyState.unk17 != 0) {
        if (gKirbyState.unk44 == 5) {
            if (gKirbyState.unk30 != 0) {
                func_8011D67C();
            }
            return;
        }
        goto bail;
    }
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
        return;
    }
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        animSpd = 2.0f;
    } else {
        animSpd = 1.25f;
    }
    func_800AECC0(animSpd);
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        animSpd = 2.0f;
    } else {
        animSpd = 1.25f;
    }
    func_800AED20(animSpd);
    switch (gKirbyState.unk44) {
        case 0:
            if (func_80121C90() != 0) {
                gKirbyState.unk44 = 1;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 2;
            } else if (D_800E8920[omCurrentObj->objId] == 0) {
                gKirbyState.unk44 = 3;
            }
            break;
        case 1:
            if (!(gKirbyState.isTurning & 1)) {
                id = omCurrentObj->objId;
                if (D_800E64D0[id] == 0.0f) {
                    gKirbyState.unk44 = 0;
                } else if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 2;
                } else if (D_800E8920[id] == 0) {
                    gKirbyState.unk44 = 3;
                }
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            break;
        case 2:
            if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                gKirbyState.isTurning |= 1;
            }
            if (gKirbyState.ceilingCollisionNext != 0) {
                D_800E3210[omCurrentObj->objId] = 0.0f;
                gKirbyState.unk44 = 3;
            }
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4();
            }
            func_8011ED68();
            break;
        case 3:
            if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                gKirbyState.isTurning |= 1;
            }
            if (D_800E8920[omCurrentObj->objId] != 0) {
                gKirbyState.unk44 = 4;
            }
            func_8011ED68();
            break;
        case 4:
            if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
                gKirbyState.unk44 = 1;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 2;
            } else if (func_800AF230() != 0) {
                gKirbyState.unk44 = 0;
            }
            break;
    }
    if (gKirbyState.unk44 != 5) {
        id = omCurrentObj->objId;
        cnt = D_800E9720[id];
        D_800E9720[id] = cnt - 1;
        if (cnt == 0) {
            D_800E98E0[omCurrentObj->objId] += 1;
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 3) {
                gKirbyState.unk44 = 5;
            } else {
                D_800E9720[id] = 0x14;
            }
        }
        if (!(gKirbyController.buttonHeld & 0x4000)) {
        bail:
            func_8011DC5C();
            func_8011D67C();
            gKirbyState.abilityInUse = 0;
            return;
        }
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#elif defined(PORT)
/* PORT: the spring-legs (action 0x3B) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_80186248_ovl3.s (via m2c). Services
 * base motion (skipping input service in the spring phase 2); a
 * scripted grab in any phase but 5 -- or releasing B -- releases the
 * voice lock, disarms the ability and hands off immediately, while
 * phase 5 (worn out) just waits for the coroutine to finish. Otherwise
 * it runs the water-scaled anim speed (2.0 dry / 1.25 wet) and the
 * phase machine: 0 idles (held direction to 1, A to 2, no floor to 3),
 * 1 walks with the turn latch and gravity (stopping to 0, A to 2,
 * airborne to 3), 2 springs (turn poll, ceiling kills the rise into 3,
 * variable-height service), 3 falls (turn poll, landing to 4), 4 lands
 * (moving to 1, A to 2, anim end to 0). Phases 0-4 then burn the 0x14
 * fatigue window -- three expiries wear the springs out into phase 5 --
 * and a phase change re-triggers the coroutine process.
 *
 * Port notes: func_80121C90 / func_80121194 / func_801219C8 /
 * func_8011EBD4 / func_8011ED68 are void-arg on PC; the fatigue
 * check tests the pre-decrement counter (the cell parks at -1 for a
 * tick when it trips), kept literally; the unk3C-vs-phase compare in
 * phase 1 uses unk44 directly (m2c's var_v1 tracks it exactly). */
void func_80186248_ovl3(s32 arg0) {
    void func_800AECC0(f32);
    void func_800AED20(f32);
    s32 func_80121C90(void);
    s32 func_80121194(void);
    void func_801219C8(void);
    void func_8011EBD4(void);
    void func_8011ED68(void);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    f32 animSpd;
    s32 cnt;
    s32 id;

    func_80153984_ovl3();
    if (gKirbyState.unk44 != 2) {
        func_801217B8();
    }
    if (gKirbyState.unk17 != 0) {
        if (gKirbyState.unk44 == 5) {
            if (gKirbyState.unk30 != 0) {
                func_8011D67C();
            }
            return;
        }
        goto bail;
    }
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
        return;
    }
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        animSpd = 2.0f;
    } else {
        animSpd = 1.25f;
    }
    func_800AECC0(animSpd);
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        animSpd = 2.0f;
    } else {
        animSpd = 1.25f;
    }
    func_800AED20(animSpd);
    switch (gKirbyState.unk44) {
        case 0:
            if (func_80121C90() != 0) {
                gKirbyState.unk44 = 1;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 2;
            } else if (D_800E8920[omCurrentObj->objId] == 0) {
                gKirbyState.unk44 = 3;
            }
            break;
        case 1:
            if (!(gKirbyState.isTurning & 1)) {
                id = omCurrentObj->objId;
                if (D_800E64D0[id] == 0.0f) {
                    gKirbyState.unk44 = 0;
                } else if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 2;
                } else if (D_800E8920[id] == 0) {
                    gKirbyState.unk44 = 3;
                }
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            break;
        case 2:
            if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                gKirbyState.isTurning |= 1;
            }
            if (gKirbyState.ceilingCollisionNext != 0) {
                D_800E3210[omCurrentObj->objId] = 0.0f;
                gKirbyState.unk44 = 3;
            }
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4();
            }
            func_8011ED68();
            break;
        case 3:
            if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                gKirbyState.isTurning |= 1;
            }
            if (D_800E8920[omCurrentObj->objId] != 0) {
                gKirbyState.unk44 = 4;
            }
            func_8011ED68();
            break;
        case 4:
            if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
                gKirbyState.unk44 = 1;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 2;
            } else if (func_800AF230() != 0) {
                gKirbyState.unk44 = 0;
            }
            break;
    }
    if (gKirbyState.unk44 != 5) {
        id = omCurrentObj->objId;
        cnt = D_800E9720[id];
        D_800E9720[id] = cnt - 1;
        if (cnt == 0) {
            D_800E98E0[omCurrentObj->objId] += 1;
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 3) {
                gKirbyState.unk44 = 5;
            } else {
                D_800E9720[id] = 0x14;
            }
        }
        if (!(gKirbyController.buttonHeld & 0x4000)) {
        bail:
            func_8011DC5C();
            func_8011D67C();
            gKirbyState.abilityInUse = 0;
            return;
        }
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186248_ovl3.s")
#endif

#ifdef NON_MATCHING
extern f32 D_80197840_ovl3;
extern s32 func_801210B4(void);

void func_80186750_ovl3(s32 arg0) {
    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.unk7C = 0.0f;
        gKirbyState.unk80 = gKirbyState.unk7C;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x3C;
        D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
        gKirbyState.unk154 = 2;
        D_800E98E0[omCurrentObj->objId] = 0;
        gKirbyState.unk40 = D_80197840_ovl3;
        gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
        D_800EC2E0[func_801693C4_ovl3(0x11)].as_s32 = 0;
        D_800EC2E0[func_801693C4_ovl3(0x11)].as_s32 = 1;
        func_80120A28();
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        func_801230E8(0x2007F, 0x20080, 1);
        D_800E9560[omCurrentObj->objId] = 0;
        if (gKirbyController.buttonHeld & 0x300) {
            gKirbyState.unk3C = 3;
            gKirbyState.unk44 = 3;
        } else {
            gKirbyState.unk3C = 2;
            gKirbyState.unk44 = 2;
        }
    }
    switch (gKirbyState.unk44) {
        case 2:
            func_801230E8(0x2007D, 0x2007E, 1);
            curObjSleepForever();
        case 3:
            if (func_801210B4() == 1) {
                D_800E6690[omCurrentObj->objId] = 0.25f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
            } else {
                D_800E6690[omCurrentObj->objId] = -0.25f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
            }
            func_801230E8(0x20083, 0x20084, 0);
            curObjSleepForever();
        case 1:
            gKirbyState.abilityInUse = 0;
            gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
            func_801230E8(0x20081, 0x20082, 1);
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186750_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 49/260, whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* PORT: the vacuum-mouth (action 0x3C) per-tick handler (paired with
 * the func_80186750_ovl3 coroutine above), from asm/nonmatchings/ovl3/
 * ovl3_6/func_80186A20_ovl3.s (via m2c). Phase 1 (done) waits for the
 * coroutine and hands off; a scripted grab forces phase 1. Otherwise
 * phase 2 (holding) moves to 3 on a held direction or bails to 1 when
 * B drops, phase 3 (walking) drops back to 2 when the track stops or
 * bails to 1 without B, plus gravity. Holding a direction shrinks the
 * suction gauge unk40 by 0.01 toward 0.4. With the 10-tick suck window
 * D_800E9560 clear and the mouth open (phase >= 2) it scans tracks
 * 0xE..0x3B for kinds 0x17/0x18/0x1A, and for each in the D_8019236C
 * suction cone (scaled by unk40) that ovl7 clears for capture it arms
 * a 0x11 grab slot (victim track + gauge), bumps the swallow count
 * D_800E98E0, reopens the 10-tick window with a 0x1E digest timer and
 * knocks 0.1 off the gauge (min 0.4); with the window armed it just
 * burns it (parking at -1 in idle phases, kept literally). Swallowed
 * food digests: the timer runs out to clear the count and regrow the
 * gauge by 0.1 toward 1.0, which also happens passively with no
 * direction held. Ends with the 0.314/1.571 pitch service and the
 * phase re-trigger.
 *
 * Port notes: m2c's `var_s0` scan cursor is the track index 0xE..0x3B
 * (its EnemyRecord* type is a ctx artifact) stepped one
 * D_800DD710 cell at a time; `(D_800E1B50 + 0x1C0)[i]` is the byte
 * offset spelled D_800E1B50[i + 0x70] like the file's N64 arms, the
 * track index stored through (uintptr_t); func_8011D858 is
 * (void *, s32, f32) and func_8019F234_ovl7 is (s32) per their ported
 * callers; func_8011ED68 is void-arg; D_80197844..58 are 0.4f / 0.01f
 * / 0.4f / 0.1f / 0.1f / 0.1f inlined, the pitch-service pair kept as
 * rodata externs. */
void func_80186A20_ovl3(s32 arg0) {
    s32 func_8011D858(void *, s32, f32);
    s32 func_8019F234_ovl7(s32);
    void func_8011ED68(void);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern u8 D_8019236C_ovl3[];
    extern f32 D_8019785C_ovl3;
    extern f32 D_80197860_ovl3;
    s32 cnt;
    s32 idx;
    s32 i;
    s32 id;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk44 == 1) {
        if (gKirbyState.unk30 != 0) {
            func_8011D67C();
        }
    } else if (gKirbyState.unk17 != 0) {
        gKirbyState.unk44 = 1;
    } else {
        switch (gKirbyState.unk44) {
            case 2:
                if (gKirbyController.buttonHeld & 0x300) {
                    gKirbyState.unk44 = 3;
                } else if (!(gKirbyController.buttonHeld & 0x4000)) {
                    gKirbyState.unk44 = 1;
                }
                break;
            case 3:
                if (D_800E64D0[omCurrentObj->objId] == 0.0f) {
                    gKirbyState.unk44 = 2;
                } else if (!(gKirbyController.buttonHeld & 0x4000)) {
                    gKirbyState.unk44 = 1;
                }
                func_8011ED68();
                break;
        }
        if (gKirbyController.buttonHeld & 0x300) {
            gKirbyState.unk40 -= 0.01f;
            if (gKirbyState.unk40 < 0.4f) {
                gKirbyState.unk40 = 0.4f;
            }
        }
        id = omCurrentObj->objId;
        cnt = D_800E9560[id];
        if ((cnt == 0) && (gKirbyState.unk44 >= 2)) {
            for (i = 0xE; i != 0x3C; i++) {
                s32 kind = D_800DD710[i];

                if (kind == -1) {
                    continue;
                }
                if ((kind == 0x17) || (kind == 0x1A) || (kind == 0x18)) {
                    if ((func_8011D858(D_8019236C_ovl3, i, gKirbyState.unk40) != 0)
                        && (func_8019F234_ovl7(i) == 0)) {
                        idx = func_801693C4_ovl3(0x11);
                        D_800E1B50[idx + 0x70] =
                            (struct EnemyRecord *) (uintptr_t) i;
                        D_800EC2E0[idx].as_u32 = 2;
                        D_800EC660[idx] = gKirbyState.unk40;
                        D_800E98E0[omCurrentObj->objId] += 1;
                        D_800E9560[omCurrentObj->objId] = 0xA;
                        D_800E9720[omCurrentObj->objId] = 0x1E;
                        gKirbyState.unk40 -= 0.1f;
                        if (gKirbyState.unk40 < 0.4f) {
                            gKirbyState.unk40 = 0.4f;
                        }
                    }
                }
            }
        } else {
            D_800E9560[id] = cnt - 1;
        }
        id = omCurrentObj->objId;
        if (D_800E98E0[id] != 0) {
            cnt = D_800E9720[id];
            if (cnt == 0) {
                D_800E98E0[id] = 0;
                gKirbyState.unk40 += 0.1f;
                if (gKirbyState.unk40 > 1.0f) {
                    gKirbyState.unk40 = 1.0f;
                }
            } else {
                D_800E9720[id] = cnt - 1;
            }
        } else if (!(gKirbyController.buttonHeld & 0x300)) {
            gKirbyState.unk40 += 0.1f;
            if (gKirbyState.unk40 > 1.0f) {
                gKirbyState.unk40 = 1.0f;
            }
        }
    }
    func_80120CCC(D_8019785C_ovl3, D_80197860_ovl3);
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#elif defined(PORT)
/* PORT: the vacuum-mouth (action 0x3C) per-tick handler (paired with
 * the func_80186750_ovl3 coroutine above), from asm/nonmatchings/ovl3/
 * ovl3_6/func_80186A20_ovl3.s (via m2c). Phase 1 (done) waits for the
 * coroutine and hands off; a scripted grab forces phase 1. Otherwise
 * phase 2 (holding) moves to 3 on a held direction or bails to 1 when
 * B drops, phase 3 (walking) drops back to 2 when the track stops or
 * bails to 1 without B, plus gravity. Holding a direction shrinks the
 * suction gauge unk40 by 0.01 toward 0.4. With the 10-tick suck window
 * D_800E9560 clear and the mouth open (phase >= 2) it scans tracks
 * 0xE..0x3B for kinds 0x17/0x18/0x1A, and for each in the D_8019236C
 * suction cone (scaled by unk40) that ovl7 clears for capture it arms
 * a 0x11 grab slot (victim track + gauge), bumps the swallow count
 * D_800E98E0, reopens the 10-tick window with a 0x1E digest timer and
 * knocks 0.1 off the gauge (min 0.4); with the window armed it just
 * burns it (parking at -1 in idle phases, kept literally). Swallowed
 * food digests: the timer runs out to clear the count and regrow the
 * gauge by 0.1 toward 1.0, which also happens passively with no
 * direction held. Ends with the 0.314/1.571 pitch service and the
 * phase re-trigger.
 *
 * Port notes: m2c's `var_s0` scan cursor is the track index 0xE..0x3B
 * (its EnemyRecord* type is a ctx artifact) stepped one
 * D_800DD710 cell at a time; `(D_800E1B50 + 0x1C0)[i]` is the byte
 * offset spelled D_800E1B50[i + 0x70] like the file's N64 arms, the
 * track index stored through (uintptr_t); func_8011D858 is
 * (void *, s32, f32) and func_8019F234_ovl7 is (s32) per their ported
 * callers; func_8011ED68 is void-arg; D_80197844..58 are 0.4f / 0.01f
 * / 0.4f / 0.1f / 0.1f / 0.1f inlined, the pitch-service pair kept as
 * rodata externs. */
void func_80186A20_ovl3(s32 arg0) {
    s32 func_8011D858(void *, s32, f32);
    s32 func_8019F234_ovl7(s32);
    void func_8011ED68(void);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern u8 D_8019236C_ovl3[];
    extern f32 D_8019785C_ovl3;
    extern f32 D_80197860_ovl3;
    s32 cnt;
    s32 idx;
    s32 i;
    s32 id;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk44 == 1) {
        if (gKirbyState.unk30 != 0) {
            func_8011D67C();
        }
    } else if (gKirbyState.unk17 != 0) {
        gKirbyState.unk44 = 1;
    } else {
        switch (gKirbyState.unk44) {
            case 2:
                if (gKirbyController.buttonHeld & 0x300) {
                    gKirbyState.unk44 = 3;
                } else if (!(gKirbyController.buttonHeld & 0x4000)) {
                    gKirbyState.unk44 = 1;
                }
                break;
            case 3:
                if (D_800E64D0[omCurrentObj->objId] == 0.0f) {
                    gKirbyState.unk44 = 2;
                } else if (!(gKirbyController.buttonHeld & 0x4000)) {
                    gKirbyState.unk44 = 1;
                }
                func_8011ED68();
                break;
        }
        if (gKirbyController.buttonHeld & 0x300) {
            gKirbyState.unk40 -= 0.01f;
            if (gKirbyState.unk40 < 0.4f) {
                gKirbyState.unk40 = 0.4f;
            }
        }
        id = omCurrentObj->objId;
        cnt = D_800E9560[id];
        if ((cnt == 0) && (gKirbyState.unk44 >= 2)) {
            for (i = 0xE; i != 0x3C; i++) {
                s32 kind = D_800DD710[i];

                if (kind == -1) {
                    continue;
                }
                if ((kind == 0x17) || (kind == 0x1A) || (kind == 0x18)) {
                    if ((func_8011D858(D_8019236C_ovl3, i, gKirbyState.unk40) != 0)
                        && (func_8019F234_ovl7(i) == 0)) {
                        idx = func_801693C4_ovl3(0x11);
                        D_800E1B50[idx + 0x70] =
                            (struct EnemyRecord *) (uintptr_t) i;
                        D_800EC2E0[idx].as_u32 = 2;
                        D_800EC660[idx] = gKirbyState.unk40;
                        D_800E98E0[omCurrentObj->objId] += 1;
                        D_800E9560[omCurrentObj->objId] = 0xA;
                        D_800E9720[omCurrentObj->objId] = 0x1E;
                        gKirbyState.unk40 -= 0.1f;
                        if (gKirbyState.unk40 < 0.4f) {
                            gKirbyState.unk40 = 0.4f;
                        }
                    }
                }
            }
        } else {
            D_800E9560[id] = cnt - 1;
        }
        id = omCurrentObj->objId;
        if (D_800E98E0[id] != 0) {
            cnt = D_800E9720[id];
            if (cnt == 0) {
                D_800E98E0[id] = 0;
                gKirbyState.unk40 += 0.1f;
                if (gKirbyState.unk40 > 1.0f) {
                    gKirbyState.unk40 = 1.0f;
                }
            } else {
                D_800E9720[id] = cnt - 1;
            }
        } else if (!(gKirbyController.buttonHeld & 0x300)) {
            gKirbyState.unk40 += 0.1f;
            if (gKirbyState.unk40 > 1.0f) {
                gKirbyState.unk40 = 1.0f;
            }
        }
    }
    func_80120CCC(D_8019785C_ovl3, D_80197860_ovl3);
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186A20_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: DIFF 1060/1128 insns; short=17 long=0.
 * Draft derived from the host arm with its shims/LP64-isms removed; close the instruction COUNT before touching registers. */
/* PORT: the animal-friend flight/swim phase coroutine (track action
 * 0x3D, models 0x20021 -> 0x20020), from asm/nonmatchings/ovl3/ovl3_6/
 * func_80186E30_ovl3.s (via m2c). First entry arms the ability, clears
 * the ride state cells (D_800E98E0/D_800EA360/D_800EA1A0/D_800E9FE0),
 * plays the 0x39 loop voice, shows the 0x20237/0x20238 transform pair
 * with the func_80187FD0_ovl3 spark process, then swaps to the ride
 * model with the two 0x14 wing effects on DObj [0xF]/[0x10], starting
 * in phase 1 (grounded) or 4 (airborne). Anim ids all come in
 * rider-mounted (+0x14) pairs picked by D_800E98E0. Phase 1 idles --
 * on land it queues the idle pair and parks, while the unk150 hover
 * flag skips straight into the endless flap loop (banked-turn word
 * D_800E9AA0 from unk150 == 2, re-picking the flap pair on each turn
 * latch flip); 2 walks (0.25 drift toward the held direction, cap 2)
 * with the func_80188184_ovl3 step process; 3 jumps (submerged 0x10B
 * fixed 8.5 rise, dry 0xF7 with func_80123144(17)) riding to apex into
 * 4's fall (water/dry gravity split); 5 lands; 6 splashes into the
 * endless swim loop -- surface (0x80) clamps the sink to -1, the
 * D_800EA1A0 launch latch pops a 6.0 rise, 0x10B and the swim pair,
 * with func_80122CA0 as the stroke process, A boosting 6.0 for a
 * 15-tick window (D_800E93A0) at 4x anim speed and up/down (0x400/
 * 0x800) steering 2.5/1.5 vertical drifts at 2x; 7/8 are the spit
 * (0x3A/0x3B voices, func_8018813C/func_80188078 processes, 8 also
 * dropping the rider via func_8011DCD0 into the shared exit); 9/10
 * mount/dismount the rider (4-tick windows setting/clearing
 * D_800E98E0).
 *
 * Port notes: func_800AA78C is (s32, u32, f32) -- 0x40C00000/
 * 0x40400000 are 6.0f/3.0f and m2c's trailing 1U is a leftover
 * register; func_80123144 is f32(f32) with 0x41880000 = 17.0f;
 * m2c's D_800DFBD0[...]->unk3C/unk40 are DObj list entries
 * [0xF]/[0x10]; func_801210B4 / func_80122A80 / func_8011DCD0 are
 * declared locally (the file's own externs are absent or sit inside
 * later NON_MATCHING blocks); the D_800E9AA0 cells are the MultiType
 * union accessed .as_u32; the dead post-park tails (phase 4->5, 10's
 * duplicate exit) keep the ROM's literal layout. */
void func_80186E30_ovl3(s32 arg0) {
    void func_80187FD0_ovl3(s32, s32, f32);
    void func_80188184_ovl3(s32, s32, f32);
    void func_8018813C_ovl3(s32, s32, f32);
    void func_80188078_ovl3(s32, s32, f32);
    void func_80122CA0(s32, s32, f32);
    void func_800AA78C(s32, u32, f32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    f32 func_80123144(f32);
    s32 func_801210B4(void);
    void func_80122A80(void);
    void func_8011DCD0(void);
    s32 anim;
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.unk48 = 1;
        gKirbyState.unk4C = 0;
        gKirbyState.unk30 = D_800E98E0[omCurrentObj->objId];
        D_800EA360[omCurrentObj->objId] = 0;
        id = omCurrentObj->objId;
        D_800EA1A0[id] = D_800EA360[id];
        D_800E9FE0[omCurrentObj->objId].as_u32 = (u32) D_800EA360[id];
        gKirbyState.jumpHeight = 0;
        gKirbyState.isFullJump = 0;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x3D;
        func_8011DC04(0x39);
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        func_80120A28();
        func_80122F08(0x20021);
        func_801230E8(0x20237, 0x20238, 0);
        D_800DF310[omCurrentObj->objId] = func_80187FD0_ovl3;
        func_800AF27C();
        func_8011E0E8();
        D_800E98E0[omCurrentObj->objId] = 0;
        func_80122F08(0x20020);
        gKirbyState.unk4C = func_800A8100(1, 1, 0x14, D_800DFBD0[omCurrentObj->objId][0xF]);
        gKirbyState.unk50 = func_800A8100(1, 1, 0x14, D_800DFBD0[omCurrentObj->objId][0x10]);
        if (D_800E8920[omCurrentObj->objId] != 0) {
            gKirbyState.unk3C = 1;
            gKirbyState.unk44 = 1;
        } else {
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
        }
    }
    switch (gKirbyState.unk44) {
        case 1:
            D_800E6690[omCurrentObj->objId] = 0.0f;
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            gKirbyState.unk7 = 0;
            id = omCurrentObj->objId;
            if ((gKirbyState.unk150 == 0) || (D_800E8AE0[id] & 6)) {
                id = omCurrentObj->objId;
                if (D_800E98E0[id] == 0) {
                    D_800EC4A0[id] = 0x20214;
                } else {
                    D_800EC4A0[id] = 0x20228;
                }
                func_800AA78C(D_800EC4A0[omCurrentObj->objId], 0x20020, 6.0f);
                anim = D_800EC4A0[omCurrentObj->objId];
                func_801230E8(anim, anim + 1, 0);
                curObjSleepForever();
            }
            D_800E9C60[omCurrentObj->objId] = 0;
            D_800E9720[omCurrentObj->objId] = 0xF;
            for (;;) {
                if (gKirbyState.unk150 == 2) {
                    D_800E9AA0[omCurrentObj->objId].as_u32 = 1;
                } else {
                    D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
                }
                id = omCurrentObj->objId;
                if (D_800E9C60[id] != 0) {
                    if (D_800E9AA0[id].as_u32 == 0) {
                        if (D_800E98E0[id] == 0) {
                            D_800EC4A0[id] = 0x2020E;
                        } else {
                            D_800EC4A0[id] = 0x20222;
                        }
                    } else if (D_800E98E0[id] == 0) {
                        D_800EC4A0[id] = 0x20210;
                    } else {
                        D_800EC4A0[id] = 0x20224;
                    }
                    func_800AA78C(D_800EC4A0[omCurrentObj->objId], 0x20020, 3.0f);
                } else {
                    D_800E9C60[id] = 1;
                }
                if (gKirbyState.unk150 == 2) {
                    id = omCurrentObj->objId;
                    if (D_800E98E0[id] == 0) {
                        D_800EC4A0[id] = 0x2020E;
                    } else {
                        D_800EC4A0[id] = 0x20222;
                    }
                } else {
                    id = omCurrentObj->objId;
                    if (D_800E98E0[id] == 0) {
                        D_800EC4A0[id] = 0x20210;
                    } else {
                        D_800EC4A0[id] = 0x20224;
                    }
                }
                anim = D_800EC4A0[omCurrentObj->objId];
                func_801230E8(anim, anim + 1, 0);
                while (gKirbyState.isTurning & 1) {
                    ohSleep(1);
                }
                do {
                    ohSleep(1);
                } while (!(gKirbyState.isTurning & 1));
            }
        case 2:
            D_800E9560[omCurrentObj->objId] = 0;
            if (gKirbyState.unk7 == 1) {
                func_80122A80();
            }
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x20234;
            } else {
                D_800EC4A0[id] = 0x20232;
            }
            if (func_801210B4() == 1) {
                D_800E6690[omCurrentObj->objId] = 0.25f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
            } else {
                D_800E6690[omCurrentObj->objId] = -0.25f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
            }
            func_800AA78C(D_800EC4A0[omCurrentObj->objId], 0x20020, 3.0f);
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            D_800DF310[omCurrentObj->objId] = func_80188184_ovl3;
            curObjSleepForever();
            /* fallthrough */
        case 3:
            D_800E83E0[omCurrentObj->objId] = 0;
            D_800E8920[omCurrentObj->objId] = 0;
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
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x20216;
            } else {
                D_800EC4A0[id] = 0x2022A;
            }
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.isFullJump += 1;
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x20218;
            } else {
                D_800EC4A0[id] = 0x2022C;
            }
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
            gKirbyState.isFullJump = 0;
            gKirbyState.jumpHeight = 0;
            /* fallthrough */
        case 4:
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x20212;
            } else {
                D_800EC4A0[id] = 0x20226;
            }
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                D_800E3750[id] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            } else {
                D_800E3750[id] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA78C(D_800EC4A0[omCurrentObj->objId], 0x20020, 3.0f);
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            curObjSleepForever();
            /* fallthrough */
        case 5:
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x2021A;
            } else {
                D_800EC4A0[id] = 0x2022E;
            }
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            curObjSleepForever();
            /* fallthrough */
        case 6:
            D_800E9560[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            D_800E93A0[id] = D_800E9560[id];
            gKirbyState.unk7 = 0;
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 0x80) {
                if (D_800E3210[id] < -1.0f) {
                    D_800E3210[id] = -1.0f;
                    D_800E3750[omCurrentObj->objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 1.0f;
                    id = omCurrentObj->objId;
                }
            }
            if (D_800EA1A0[id] != 0) {
                D_800E3210[id] = 6.0f;
                D_800E3750[omCurrentObj->objId] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            }
            play_sound(0x10B);
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x20220;
            } else {
                D_800EC4A0[id] = 0x20230;
            }
            func_800AA78C(D_800EC4A0[omCurrentObj->objId], 0x20020, 6.0f);
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            D_800DF310[omCurrentObj->objId] = func_80122CA0;
            for (;;) {
                if (gKirbyController.buttonPressed & 0x8000) {
                    D_800E93A0[omCurrentObj->objId] = 0xF;
                    play_sound(0x10B);
                    func_800AECC0(4.0f);
                    func_800AED20(4.0f);
                    D_800E3210[omCurrentObj->objId] = 6.0f;
                    D_800E3750[omCurrentObj->objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 6.0f;
                } else if (D_800E93A0[omCurrentObj->objId] == 0) {
                    if (gKirbyController.buttonHeld & 0x400) {
                        func_800AECC0(2.0f);
                        func_800AED20(2.0f);
                        id = omCurrentObj->objId;
                        if (D_800E3C90[id] != 2.5f) {
                            D_800E3210[id] = -2.5f;
                            D_800E3750[omCurrentObj->objId] = 0.0f;
                            D_800E3C90[omCurrentObj->objId] = 2.5f;
                        }
                    } else if (gKirbyController.buttonHeld & 0x800) {
                        func_800AECC0(2.0f);
                        func_800AED20(2.0f);
                        D_800E8920[omCurrentObj->objId] = 0;
                        id = omCurrentObj->objId;
                        if (D_800E3C90[id] != 1.5f) {
                            D_800E3210[id] = 1.5f;
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
            }
        case 7:
            func_80120A28();
            func_8011DC30(0x3A);
            gKirbyState.unk7 = 0;
            D_800EA360[omCurrentObj->objId] = 0;
            func_801230E8(0x2020A, 0x2020B, 0);
            D_800DF310[omCurrentObj->objId] = func_8018813C_ovl3;
            func_800AF27C();
            D_800EA360[omCurrentObj->objId] += 1;
            curObjSleepForever();
            /* fallthrough */
        case 8:
            func_80120A28();
            func_8011DC30(0x3B);
            gKirbyState.unk7 = 0;
            func_801230E8(0x2020C, 0x2020D, 0);
            D_800DF310[omCurrentObj->objId] = func_80188078_ovl3;
            func_800AF27C();
            func_8011DCD0();
            /* fallthrough */
        default:
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            return;
        case 9:
            func_80120A28();
            gKirbyState.unk7 = 0;
            D_800E9E20[omCurrentObj->objId] = 0;
            D_800E9720[omCurrentObj->objId] = 4;
            func_801230E8(0x2021C, 0x2021D, 1);
            D_800E98E0[omCurrentObj->objId] = 1;
            curObjSleepForever();
            /* fallthrough */
        case 10:
            func_80120A28();
            gKirbyState.unk7 = 0;
            D_800E9E20[omCurrentObj->objId] = 0;
            D_800E9720[omCurrentObj->objId] = 4;
            func_801230E8(0x2021E, 0x2021F, 1);
            D_800E98E0[omCurrentObj->objId] = 0;
            curObjSleepForever();
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            return;
    }
}
#elif defined(PORT)
/* PORT: the animal-friend flight/swim phase coroutine (track action
 * 0x3D, models 0x20021 -> 0x20020), from asm/nonmatchings/ovl3/ovl3_6/
 * func_80186E30_ovl3.s (via m2c). First entry arms the ability, clears
 * the ride state cells (D_800E98E0/D_800EA360/D_800EA1A0/D_800E9FE0),
 * plays the 0x39 loop voice, shows the 0x20237/0x20238 transform pair
 * with the func_80187FD0_ovl3 spark process, then swaps to the ride
 * model with the two 0x14 wing effects on DObj [0xF]/[0x10], starting
 * in phase 1 (grounded) or 4 (airborne). Anim ids all come in
 * rider-mounted (+0x14) pairs picked by D_800E98E0. Phase 1 idles --
 * on land it queues the idle pair and parks, while the unk150 hover
 * flag skips straight into the endless flap loop (banked-turn word
 * D_800E9AA0 from unk150 == 2, re-picking the flap pair on each turn
 * latch flip); 2 walks (0.25 drift toward the held direction, cap 2)
 * with the func_80188184_ovl3 step process; 3 jumps (submerged 0x10B
 * fixed 8.5 rise, dry 0xF7 with func_80123144(17)) riding to apex into
 * 4's fall (water/dry gravity split); 5 lands; 6 splashes into the
 * endless swim loop -- surface (0x80) clamps the sink to -1, the
 * D_800EA1A0 launch latch pops a 6.0 rise, 0x10B and the swim pair,
 * with func_80122CA0 as the stroke process, A boosting 6.0 for a
 * 15-tick window (D_800E93A0) at 4x anim speed and up/down (0x400/
 * 0x800) steering 2.5/1.5 vertical drifts at 2x; 7/8 are the spit
 * (0x3A/0x3B voices, func_8018813C/func_80188078 processes, 8 also
 * dropping the rider via func_8011DCD0 into the shared exit); 9/10
 * mount/dismount the rider (4-tick windows setting/clearing
 * D_800E98E0).
 *
 * Port notes: func_800AA78C is (s32, u32, f32) -- 0x40C00000/
 * 0x40400000 are 6.0f/3.0f and m2c's trailing 1U is a leftover
 * register; func_80123144 is f32(f32) with 0x41880000 = 17.0f;
 * m2c's D_800DFBD0[...]->unk3C/unk40 are DObj list entries
 * [0xF]/[0x10]; func_801210B4 / func_80122A80 / func_8011DCD0 are
 * declared locally (the file's own externs are absent or sit inside
 * later NON_MATCHING blocks); the D_800E9AA0 cells are the MultiType
 * union accessed .as_u32; the dead post-park tails (phase 4->5, 10's
 * duplicate exit) keep the ROM's literal layout. */
void func_80186E30_ovl3(s32 arg0) {
    void func_80187FD0_ovl3(s32, s32, f32);
    void func_80188184_ovl3(s32, s32, f32);
    void func_8018813C_ovl3(s32, s32, f32);
    void func_80188078_ovl3(s32, s32, f32);
    void func_80122CA0(s32, s32, f32);
    void func_800AA78C(s32, u32, f32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    f32 func_80123144(f32);
    s32 func_801210B4(void);
    void func_80122A80(void);
    void func_8011DCD0(void);
    s32 anim;
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.unk48 = 1;
        gKirbyState.unk4C = 0;
        gKirbyState.unk30 = D_800E98E0[omCurrentObj->objId];
        D_800EA360[omCurrentObj->objId] = 0;
        id = omCurrentObj->objId;
        D_800EA1A0[id] = D_800EA360[id];
        D_800E9FE0[omCurrentObj->objId].as_u32 = (u32) D_800EA360[id];
        gKirbyState.jumpHeight = 0;
        gKirbyState.isFullJump = 0;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x3D;
        func_8011DC04(0x39);
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        func_80120A28();
        func_80122F08(0x20021);
        func_801230E8(0x20237, 0x20238, 0);
        D_800DF310[omCurrentObj->objId] = func_80187FD0_ovl3;
        func_800AF27C();
        func_8011E0E8();
        D_800E98E0[omCurrentObj->objId] = 0;
        func_80122F08(0x20020);
        gKirbyState.unk4C = func_800A8100(1, 1, 0x14, D_800DFBD0[omCurrentObj->objId][0xF]);
        gKirbyState.unk50 = func_800A8100(1, 1, 0x14, D_800DFBD0[omCurrentObj->objId][0x10]);
        if (D_800E8920[omCurrentObj->objId] != 0) {
            gKirbyState.unk3C = 1;
            gKirbyState.unk44 = 1;
        } else {
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
        }
    }
    switch (gKirbyState.unk44) {
        case 1:
            D_800E6690[omCurrentObj->objId] = 0.0f;
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            gKirbyState.unk7 = 0;
            id = omCurrentObj->objId;
            if ((gKirbyState.unk150 == 0) || (D_800E8AE0[id] & 6)) {
                id = omCurrentObj->objId;
                if (D_800E98E0[id] == 0) {
                    D_800EC4A0[id] = 0x20214;
                } else {
                    D_800EC4A0[id] = 0x20228;
                }
                func_800AA78C(D_800EC4A0[omCurrentObj->objId], 0x20020, 6.0f);
                anim = D_800EC4A0[omCurrentObj->objId];
                func_801230E8(anim, anim + 1, 0);
                curObjSleepForever();
            }
            D_800E9C60[omCurrentObj->objId] = 0;
            D_800E9720[omCurrentObj->objId] = 0xF;
            for (;;) {
                if (gKirbyState.unk150 == 2) {
                    D_800E9AA0[omCurrentObj->objId].as_u32 = 1;
                } else {
                    D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
                }
                id = omCurrentObj->objId;
                if (D_800E9C60[id] != 0) {
                    if (D_800E9AA0[id].as_u32 == 0) {
                        if (D_800E98E0[id] == 0) {
                            D_800EC4A0[id] = 0x2020E;
                        } else {
                            D_800EC4A0[id] = 0x20222;
                        }
                    } else if (D_800E98E0[id] == 0) {
                        D_800EC4A0[id] = 0x20210;
                    } else {
                        D_800EC4A0[id] = 0x20224;
                    }
                    func_800AA78C(D_800EC4A0[omCurrentObj->objId], 0x20020, 3.0f);
                } else {
                    D_800E9C60[id] = 1;
                }
                if (gKirbyState.unk150 == 2) {
                    id = omCurrentObj->objId;
                    if (D_800E98E0[id] == 0) {
                        D_800EC4A0[id] = 0x2020E;
                    } else {
                        D_800EC4A0[id] = 0x20222;
                    }
                } else {
                    id = omCurrentObj->objId;
                    if (D_800E98E0[id] == 0) {
                        D_800EC4A0[id] = 0x20210;
                    } else {
                        D_800EC4A0[id] = 0x20224;
                    }
                }
                anim = D_800EC4A0[omCurrentObj->objId];
                func_801230E8(anim, anim + 1, 0);
                while (gKirbyState.isTurning & 1) {
                    ohSleep(1);
                }
                do {
                    ohSleep(1);
                } while (!(gKirbyState.isTurning & 1));
            }
        case 2:
            D_800E9560[omCurrentObj->objId] = 0;
            if (gKirbyState.unk7 == 1) {
                func_80122A80();
            }
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x20234;
            } else {
                D_800EC4A0[id] = 0x20232;
            }
            if (func_801210B4() == 1) {
                D_800E6690[omCurrentObj->objId] = 0.25f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
            } else {
                D_800E6690[omCurrentObj->objId] = -0.25f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
            }
            func_800AA78C(D_800EC4A0[omCurrentObj->objId], 0x20020, 3.0f);
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            D_800DF310[omCurrentObj->objId] = func_80188184_ovl3;
            curObjSleepForever();
            /* fallthrough */
        case 3:
            D_800E83E0[omCurrentObj->objId] = 0;
            D_800E8920[omCurrentObj->objId] = 0;
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
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x20216;
            } else {
                D_800EC4A0[id] = 0x2022A;
            }
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.isFullJump += 1;
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x20218;
            } else {
                D_800EC4A0[id] = 0x2022C;
            }
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
            gKirbyState.isFullJump = 0;
            gKirbyState.jumpHeight = 0;
            /* fallthrough */
        case 4:
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x20212;
            } else {
                D_800EC4A0[id] = 0x20226;
            }
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                D_800E3750[id] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            } else {
                D_800E3750[id] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA78C(D_800EC4A0[omCurrentObj->objId], 0x20020, 3.0f);
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            curObjSleepForever();
            /* fallthrough */
        case 5:
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x2021A;
            } else {
                D_800EC4A0[id] = 0x2022E;
            }
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            curObjSleepForever();
            /* fallthrough */
        case 6:
            D_800E9560[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            D_800E93A0[id] = D_800E9560[id];
            gKirbyState.unk7 = 0;
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 0x80) {
                if (D_800E3210[id] < -1.0f) {
                    D_800E3210[id] = -1.0f;
                    D_800E3750[omCurrentObj->objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 1.0f;
                    id = omCurrentObj->objId;
                }
            }
            if (D_800EA1A0[id] != 0) {
                D_800E3210[id] = 6.0f;
                D_800E3750[omCurrentObj->objId] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            }
            play_sound(0x10B);
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                D_800EC4A0[id] = 0x20220;
            } else {
                D_800EC4A0[id] = 0x20230;
            }
            func_800AA78C(D_800EC4A0[omCurrentObj->objId], 0x20020, 6.0f);
            anim = D_800EC4A0[omCurrentObj->objId];
            func_801230E8(anim, anim + 1, 0);
            D_800DF310[omCurrentObj->objId] = func_80122CA0;
            for (;;) {
                if (gKirbyController.buttonPressed & 0x8000) {
                    D_800E93A0[omCurrentObj->objId] = 0xF;
                    play_sound(0x10B);
                    func_800AECC0(4.0f);
                    func_800AED20(4.0f);
                    D_800E3210[omCurrentObj->objId] = 6.0f;
                    D_800E3750[omCurrentObj->objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 6.0f;
                } else if (D_800E93A0[omCurrentObj->objId] == 0) {
                    if (gKirbyController.buttonHeld & 0x400) {
                        func_800AECC0(2.0f);
                        func_800AED20(2.0f);
                        id = omCurrentObj->objId;
                        if (D_800E3C90[id] != 2.5f) {
                            D_800E3210[id] = -2.5f;
                            D_800E3750[omCurrentObj->objId] = 0.0f;
                            D_800E3C90[omCurrentObj->objId] = 2.5f;
                        }
                    } else if (gKirbyController.buttonHeld & 0x800) {
                        func_800AECC0(2.0f);
                        func_800AED20(2.0f);
                        D_800E8920[omCurrentObj->objId] = 0;
                        id = omCurrentObj->objId;
                        if (D_800E3C90[id] != 1.5f) {
                            D_800E3210[id] = 1.5f;
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
            }
        case 7:
            func_80120A28();
            func_8011DC30(0x3A);
            gKirbyState.unk7 = 0;
            D_800EA360[omCurrentObj->objId] = 0;
            func_801230E8(0x2020A, 0x2020B, 0);
            D_800DF310[omCurrentObj->objId] = func_8018813C_ovl3;
            func_800AF27C();
            D_800EA360[omCurrentObj->objId] += 1;
            curObjSleepForever();
            /* fallthrough */
        case 8:
            func_80120A28();
            func_8011DC30(0x3B);
            gKirbyState.unk7 = 0;
            func_801230E8(0x2020C, 0x2020D, 0);
            D_800DF310[omCurrentObj->objId] = func_80188078_ovl3;
            func_800AF27C();
            func_8011DCD0();
            /* fallthrough */
        default:
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            return;
        case 9:
            func_80120A28();
            gKirbyState.unk7 = 0;
            D_800E9E20[omCurrentObj->objId] = 0;
            D_800E9720[omCurrentObj->objId] = 4;
            func_801230E8(0x2021C, 0x2021D, 1);
            D_800E98E0[omCurrentObj->objId] = 1;
            curObjSleepForever();
            /* fallthrough */
        case 10:
            func_80120A28();
            gKirbyState.unk7 = 0;
            D_800E9E20[omCurrentObj->objId] = 0;
            D_800E9720[omCurrentObj->objId] = 4;
            func_801230E8(0x2021E, 0x2021F, 1);
            D_800E98E0[omCurrentObj->objId] = 0;
            curObjSleepForever();
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186E30_ovl3.s")
#endif

void func_80187FD0_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            D_8012E80C[0] = func_800A8100(1, 1, 0x13, D_800DFBD0[omCurrentObj->objId][0x11]);
            D_8012E80C[1] = func_800A8100(1, 1, 0x13, D_800DFBD0[omCurrentObj->objId][0x12]);
        }
    }
}

void func_80188078_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            temp = func_801632B8_ovl3(9);
            D_800E98E0[temp] = gKirbyState.unk58;
            D_800E9AA0[temp].as_s32 = gKirbyState.unk5C;
            D_800E1B50[temp + 0x70] = (struct EnemyRecord *) D_800DFBD0[omCurrentObj->objId][0xE];
            gKirbyState.unk58 = 0;
            gKirbyState.unk5C = 0;
            D_800DFBD0[omCurrentObj->objId][0xE]->flags = 2;
        }
    }
}

void func_8018813C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            func_8015449C_ovl3(D_801957D4_ovl3, 0);
        }
    }
}

void func_80188184_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 7) {
                if (D_800E8AE0[omCurrentObj->objId] & 2) {
                    play_sound(0x10C);
                } else {
                    play_sound(5);
                }
            } else if (gKirbyState.unk7 == 1) {
                play_sound(0x267);
            } else {
                play_sound(5);
            }
        }
    }
}

#ifdef MIPS_TO_C
/* NOT DRAFTED FOR N64 YET. The host arm this would come from is written against
 * PcO36Slot / PcO36Shape -- PC-only struct views this file defines for its PORT
 * arms -- and against `(s32)(uintptr_t)` casts, so it does not compile in the N64
 * build. Needs a from-asm draft that names the real record type behind
 * func_80111A04 instead of the host view. Everything else in this file is
 * seeded; this is the one left. */
/* PORT: the animal-friend ride (action 0x3D) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_80188238_ovl3.s (via m2c). Mirrors
 * the surface bits into D_800E9FE0 and the hover flag unk150 into
 * D_800EA520, services base motion (skipping input in the jump phase),
 * and hands off (or dismounts through set_kirby_action_1 0xA/0xD on a
 * squeeze, or 0x11/0x11 on a face-button press with the pad idle) when
 * the ride ends -- both dismounts masking the collision class bits and
 * burning the charge. The phase machine: 1 idles (direction to 2, A to
 * 3, no floor to 4; hovering burns a whistle timer to 0xEB and a hover
 * -flag flip re-triggers the coroutine), 2 walks (charging the peck
 * window D_800E9560 while idle, popping the 0x22A80 peck on a quick
 * direction tap, 1.5x/2.25x anim speed), 3 jumps (turn poll, ceiling
 * pops the D_8019395C bounce probe dust, the D_800E83E0 stun code 2
 * freezes into 4, fast rises trail the D_80190F2C emitter), 4 falls, 5
 * lands, 6 swims (0x1E surface window, water/land exits, 0.35 coast /
 * 0.24-drift-3.4-cap steer), 7/8 wait out the spit (7 drops the rider
 * via func_8011DCD0 when the shot flag returns), 9/10 wait the
 * mount/dismount windows (A buffers D_800E9E20). Phases 1-10 then run
 * the shared tail: while the ride DObj [0xE] is not faded it draws the
 * spit-charge emitters (D_80191DD0/D_80191E38 on DObj [0xF]) or the
 * mount-picked D_80191CCC hitbox record on DObj [1], plus the
 * D_801957B8 aura overlay -- color row from D_80195718 by anim frame
 * (rows +0/+0x50/+0x70 for phases 8/9/10) or the mounted/dismounted
 * default (tracking DObj [0xE]'s height, yaw from func_800B26D8 in
 * phase 7) -- releasing the anim lock once faded; then the swim/spit/
 * mount steering and the phase re-trigger. Phase 0 (transform grow)
 * instead scales the rec[2] hitbox and aura row by DObj [0x10]'s
 * scale.v.x while it grows to 1.
 *
 * Port notes: arg0 is the GObj (m2c's arg0->unk40 is arg0->animTimer,
 * ->unk3C->unk10 is data.dobj->firstChild); the D_800D6F58 pad-idle
 * test keeps the asm's exact widths (two words and a halfword at
 * +0x50/+0x54/+0x58); the `D_8012BCA0 &= 7` halfword lands on the TOP
 * u16 of the native flags word on PC (see ovl2_7.c's UnkBCA0), spelled
 * `*(u32 *) &= 0x7FFFF`; the D_80191D68 slot from func_80111A04 uses
 * the LP64 host PlySlot view (PcO36Slot/PcO36Shape); D_80191CCC is a
 * native-word f32 table with 0x1C-stride (7-float) records; the
 * D_8012E9B8+0x10 aura row is four native f32s; the bounce probe reads
 * void-declared func_8015449C_ovl3's tail result through the
 * established cast (same D_8019395C site as kirby.c); func_80121C90 /
 * func_80121194 / func_801210FC / func_801210B4 / func_801219C8 /
 * func_80122460 / func_80122558 / func_801226FC / func_80122A80 /
 * func_8011DCD0 / func_8011EBD4 / func_8011ED68 are void-arg on PC;
 * func_800B26D8 is (Vector *, struct DObj *, u32); the stun test is a
 * full-word read masked 0xFFFF (endian-safe). */
void func_80188238_ovl3(GObj *arg0) {
    s32 func_80121C90(void);
    s32 func_80121194(void);
    u32 func_801210FC(void);
    s32 func_801210B4(void);
    void func_801219C8(void);
    s32 func_80122460(void);
    s32 func_80122558(void);
    s32 func_801226FC(void);
    void func_80122A80(void);
    void func_8011DCD0(void);
    void func_8011EBD4(void);
    void func_8011ED68(void);
    void func_8011D614(void);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    void func_800B2340(Vector *, s32, s32);
    void func_800B26D8(Vector *, struct DObj *, u32);
    void func_80154578_ovl3(void *, s32, f32);
    void set_kirby_action_1(s32, s32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern u8 D_800D6F58[];
    extern u8 D_8012BCA0[];
    extern u8 D_80190F2C_ovl3[];
    extern f32 D_80191CCC_ovl3[];
    extern u8 D_80191D68_ovl3[];
    extern u8 D_80191DD0_ovl3[];
    extern u8 D_80191E38_ovl3[];
    extern u8 D_8019395C_ovl3[];
    extern f32 D_80195718_ovl3[];
    extern u8 D_801957B8_ovl3[];
    PcO36Slot *slot;
    Vector pos;
    f32 *row;
    f32 *src;
    f32 f;
    f32 scale;
    u16 pressed;
    u8 fade;
    s32 frame;
    s32 cnt;
    s32 held;
    s32 id;

    id = omCurrentObj->objId;
    D_800E9FE0[id].as_u32 = (u32) D_800E8AE0[id];
    D_800EA520[omCurrentObj->objId] = gKirbyState.unk150;
    func_80153984_ovl3();
    func_8011CF58();
    if (gKirbyState.unk44 != 3) {
        func_801217B8();
    }
    if ((gKirbyState.unk30 != 0) || (gKirbyState.unk17 != 0)) {
        func_8011E0E8();
        func_8011DC5C();
        func_8011D67C();
        gKirbyState.abilityInUse = 0;
        return;
    }
    cnt = func_80122460();
    if (((cnt != 0) && (gKirbyState.ceilingCollisionNext != 0))
        || ((gKirbyState.floorCollisionNext != 0)
            && (gKirbyController.buttonHeld & 0x400) && (cnt != 0))) {
        func_8011D614();
        *(u32 *) D_8012BCA0 &= 0x7FFFF;
        gKirbyState.abilityInUse = 0;
        func_8011E0E8();
        func_8011DC5C();
        set_kirby_action_1(0xA, 0xD);
        return;
    }
    if ((gKirbyState.horizontalCollision != 0)
        && ((func_80122558() != 0) || (func_801226FC() != 0))) {
        func_8011D614();
        *(u32 *) D_8012BCA0 &= 0x7FFFF;
        func_8011E0E8();
        func_8011DC5C();
        gKirbyState.abilityInUse = 0;
        return;
    }
    switch (gKirbyState.unk44) {
        case 1:
            if (func_80121C90() != 0) {
                gKirbyState.unk44 = 2;
                break;
            }
            if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
                break;
            }
            if (D_800E8920[omCurrentObj->objId] == 0) {
                gKirbyState.unk44 = 4;
                break;
            }
            if (gKirbyState.unk150 != 0) {
                id = omCurrentObj->objId;
                cnt = D_800E9720[id];
                if (cnt != 0) {
                    D_800E9720[id] = cnt - 1;
                    if (D_800E9720[omCurrentObj->objId] == 0) {
                        play_sound(0xEB);
                    }
                }
            }
            if ((gKirbyState.unk150 != D_800EA520[omCurrentObj->objId])
                && (gKirbyState.turnDirection == 0)) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                         func_8016C510_ovl3);
                break;
            }
            if (((*(s32 *) (D_800D6F58 + 0x50) | *(s32 *) (D_800D6F58 + 0x54)
                  | *(u16 *) (D_800D6F58 + 0x58)) == 0)
                && (gKirbyController.buttonPressed & 0x3F)) {
                gKirbyState.unk7 = 0;
                gKirbyState.abilityInUse = 0;
                func_8011E0E8();
                func_8011DC5C();
                func_8011D614();
                set_kirby_action_1(0x11, 0x11);
                return;
            }
            break;
        case 2:
            id = omCurrentObj->objId;
            if (D_800E64D0[id] == 0.0f) {
                gKirbyState.unk44 = 1;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (D_800E8920[id] == 0) {
                gKirbyState.unk44 = 4;
            }
            if (!(gKirbyState.isTurning & 1)) {
                if (gKirbyState.unk44 == 2) {
                    if (gKirbyState.unk7 == 0) {
                        if (func_801210FC() == 0) {
                            if (!(gKirbyController.buttonHeld & 0x300)) {
                                id = omCurrentObj->objId;
                                if (D_800E9560[id] < 0xA) {
                                    D_800E9560[id] += 1;
                                }
                            }
                        } else if (gKirbyController.buttonHeld & 0x300) {
                            id = omCurrentObj->objId;
                            cnt = D_800E9560[id];
                            if ((cnt > 0) && (cnt < 7)) {
                                gKirbyState.unk7 = 1;
                                func_80122A80();
                            } else {
                                D_800E9560[id] = 0;
                            }
                        }
                    }
                } else {
                    func_8011CF58();
                }
            } else {
                D_800E9560[omCurrentObj->objId] = 0;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            if (gKirbyState.unk7 == 0) {
                func_800AECC0(1.5f);
                func_800AED20(1.5f);
            } else {
                func_800AECC0(2.25f);
                func_800AED20(2.25f);
            }
            break;
        case 3:
            if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                gKirbyState.isTurning |= 1;
            }
            if (gKirbyState.ceilingCollisionNext != 0) {
                D_800E3210[omCurrentObj->objId] = 0.0f;
                gKirbyState.unk44 = 4;
                id = omCurrentObj->objId;
                if (!(D_800E8AE0[id] & 6) && (D_800E98E0[id] == 0)) {
                    if (((s32 (*)(u8 *, s32)) func_8015449C_ovl3)(D_8019395C_ovl3, 0) != 0) {
                        D_800E3210[omCurrentObj->objId] = 0.0f;
                        func_800BB468(0xB, 0xA);
                    }
                }
            }
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4();
            }
            id = omCurrentObj->objId;
            if ((D_800E83E0[id] & 0xFFFF) == 2) {
                D_800E3750[id] = 0.0f;
                id = omCurrentObj->objId;
                D_800E3210[id] = D_800E3750[id];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                func_800BB468(0xB, 0xA);
                gKirbyState.unk44 = 4;
            } else if (!(D_800E8AE0[id] & 6) && !(gKirbyState.unk9 & 1)
                       && (gKirbyState.unkCC < D_800E3210[id])) {
                func_8016854C_ovl3((s32) (uintptr_t) D_80190F2C_ovl3,
                                   (s32) (uintptr_t) arg0->data.dobj->firstChild, 1.0f);
            }
            func_801219C8();
            func_8011ED68();
            break;
        case 4:
            if (!(gKirbyState.isTurning & 1) && (D_800E8920[omCurrentObj->objId] != 0)) {
                gKirbyState.unk44 = 5;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            break;
        case 5:
            if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
                gKirbyState.unk44 = 2;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (func_800AF230() != 0) {
                gKirbyState.unk44 = 1;
            }
            break;
        case 6:
            held = gKirbyController.buttonHeld & 0xF00;
            if (held != 0) {
                D_800E9560[omCurrentObj->objId] = 0x1E;
            } else {
                id = omCurrentObj->objId;
                if (D_800E3210[id] > 0.0f) {
                    D_800E9560[id] = 0x1E;
                } else {
                    D_800E9560[id] -= 1;
                }
            }
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                if (D_800E8920[id] != 0) {
                    if (func_801210B4() != 0) {
                        gKirbyState.unk44 = 2;
                    } else {
                        gKirbyState.unk44 = 1;
                    }
                    id = omCurrentObj->objId;
                } else if ((held == 0) && (D_800E9560[id] == 0)
                           && (D_800E64D0[id] == 0.0f) && (D_800E3210[id] <= -0.8f)) {
                    gKirbyState.unk44 = 4;
                    id = omCurrentObj->objId;
                }
            } else {
                if (D_800E8920[id] != 0) {
                    gKirbyState.unk44 = 2;
                } else {
                    gKirbyState.unk44 = 3;
                }
                id = omCurrentObj->objId;
            }
            if (D_800E93A0[id] != 0) {
                D_800E93A0[id] -= 1;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            id = omCurrentObj->objId;
            if (gKirbyState.unk17 == 0) {
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    D_800E6690[id] = D_800E6A10[id] * 0.35f;
                    D_800E6850[omCurrentObj->objId] = 0.0f;
                } else {
                    D_800E6690[id] = D_800E6A10[id] * 0.24f;
                    D_800E6850[omCurrentObj->objId] = 3.4f;
                }
            }
            break;
        case 7:
            id = omCurrentObj->objId;
            if (D_800EA360[id] != 0) {
                if (D_800E8920[id] != 0) {
                    if (func_801210B4() != 0) {
                        gKirbyState.unk44 = 2;
                    } else {
                        gKirbyState.unk44 = 1;
                    }
                } else {
                    gKirbyState.unk44 = 4;
                }
                func_8011DCD0();
            }
            break;
        case 8:
            break;
        case 9:
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 1) {
                if (D_800E8920[id] == 0) {
                    gKirbyState.unk44 = 4;
                } else if (D_800E9E20[id] != 0) {
                    gKirbyState.unk44 = 3;
                } else {
                    gKirbyState.unk44 = 1;
                }
            } else {
                cnt = D_800E9720[id];
                if (cnt != 0) {
                    if (gKirbyController.buttonHeld & 0x8000) {
                        D_800E9E20[id] = 1;
                        cnt = D_800E9720[omCurrentObj->objId];
                    }
                    D_800E9720[omCurrentObj->objId] = cnt - 1;
                }
            }
            break;
        case 10:
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                if (D_800E8920[id] == 0) {
                    gKirbyState.unk44 = 4;
                } else if (D_800E9E20[id] != 0) {
                    gKirbyState.unk44 = 3;
                } else {
                    gKirbyState.unk44 = 1;
                }
            } else {
                cnt = D_800E9720[id];
                if (cnt != 0) {
                    if (gKirbyController.buttonHeld & 0x8000) {
                        D_800E9E20[id] = 1;
                        cnt = D_800E9720[omCurrentObj->objId];
                    }
                    D_800E9720[omCurrentObj->objId] = cnt - 1;
                }
            }
            break;
        case 0:
            id = omCurrentObj->objId;
            scale = D_800DFBD0[id][0x10]->scale.v.x;
            if (scale < 1.0f) {
                slot = (PcO36Slot *) (uintptr_t) func_80111A04(D_80191D68_ovl3, id);
                src = &D_80191CCC_ovl3[2 * 7];
                slot->unk20->unkC = src[0];
                slot->unk20->unk10 = src[1];
                slot->unk20->unk14 = src[2] * scale;
                slot->unk20->unk18 = src[3];
                slot->unk20->unk1C = src[4];
                slot->unk20->unk20 = src[5] * scale;
                slot->unk20->unk24 = src[6];
                slot->unk20->unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][1];
                func_80111C4C((s32) (uintptr_t) slot);
                func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xE],
                              0xFFFF);
                row = (f32 *) ((u8 *) &D_8012E9B8 + 0x10);
                f = pos.y - gEntitiesNextPosYArray[omCurrentObj->objId];
                row[2] = f;
                row[0] = f;
                row[1] = -10.0f;
                row[3] = 130.0f * scale;
                func_8015449C_ovl3(D_801957B8_ovl3, 0);
            }
            return;
        default:
            return;
    }
    /* shared tail: ride hitbox/overlay draw and steering */
    fade = D_800DFBD0[omCurrentObj->objId][0xE]->flags;
    if (fade != 2) {
        if (gKirbyState.unk44 == 8) {
            func_8016854C_ovl3((s32) (uintptr_t) D_80191DD0_ovl3,
                               (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xF], 1.0f);
        } else if (gKirbyState.unk44 == 7) {
            func_8016854C_ovl3((s32) (uintptr_t) D_80191E38_ovl3,
                               (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xF], 1.0f);
        } else {
            slot = (PcO36Slot *) (uintptr_t) func_80111A04(D_80191D68_ovl3, omCurrentObj->objId);
            src = &D_80191CCC_ovl3[D_800E98E0[omCurrentObj->objId] * 7];
            slot->unk20->unkC = src[0];
            slot->unk20->unk10 = src[1];
            slot->unk20->unk14 = src[2];
            slot->unk20->unk18 = src[3];
            slot->unk20->unk1C = src[4];
            slot->unk20->unk20 = src[5];
            slot->unk20->unk24 = src[6];
            slot->unk20->unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][1];
            func_80111C4C((s32) (uintptr_t) slot);
        }
        row = (f32 *) ((u8 *) &D_8012E9B8 + 0x10);
        switch (gKirbyState.unk44) {
            case 8:
                src = &D_80195718_ovl3[((s32) (arg0->animTimer * 0.5f)) * 4];
                row[0] = src[0];
                row[1] = src[1];
                row[2] = src[2];
                row[3] = src[3];
                func_8015449C_ovl3(D_801957B8_ovl3, 0);
                break;
            case 9:
                frame = (s32) (arg0->animTimer * 0.5f);
                if (frame != 0) {
                    src = &D_80195718_ovl3[frame * 4 + 0x14];
                    row[0] = src[0];
                    row[1] = src[1];
                    row[2] = src[2];
                    row[3] = src[3];
                    func_8015449C_ovl3(D_801957B8_ovl3, 0);
                }
                break;
            case 10:
                frame = (s32) (arg0->animTimer * 0.5f);
                if (frame != 0) {
                    src = &D_80195718_ovl3[frame * 4 + 0x1C];
                    row[0] = src[0];
                    row[1] = src[1];
                    row[2] = src[2];
                    row[3] = src[3];
                    func_8015449C_ovl3(D_801957B8_ovl3, 0);
                }
                break;
            default:
                id = omCurrentObj->objId;
                if (D_800E98E0[id] == 1) {
                    row[0] = D_80195718_ovl3[0];
                    row[1] = D_80195718_ovl3[1];
                    row[2] = D_80195718_ovl3[2];
                    row[3] = D_80195718_ovl3[3];
                    func_8015449C_ovl3(D_801957B8_ovl3, 0);
                } else {
                    func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[id][0xE], 0xFFFF);
                    f = pos.y - gEntitiesNextPosYArray[omCurrentObj->objId];
                    row[2] = f;
                    row[0] = f;
                    row[3] = -120.0f;
                    row[1] = 0.0f;
                    if (gKirbyState.unk44 == 7) {
                        func_800B26D8(&pos, D_800DFBD0[omCurrentObj->objId][0xE], 0xFFFF);
                        f = -pos.x;
                    } else {
                        f = gEntitiesAngleYArray[omCurrentObj->objId];
                    }
                    func_80154578_ovl3(D_801957B8_ovl3, 0, f);
                }
                break;
        }
        fade = D_800DFBD0[omCurrentObj->objId][0xE]->flags;
    }
    if (fade == 2) {
        func_8011E0E8();
    }
    if ((gKirbyState.unk44 != 7) && (gKirbyState.unk44 != 8)
        && (gKirbyState.unk44 != 9) && (gKirbyState.unk44 != 0xA)) {
        pressed = gKirbyController.buttonPressed;
        if (pressed & 0xC00) {
            id = omCurrentObj->objId;
            if ((D_800E98E0[id] == 0) && (pressed & 0x800)) {
                gKirbyState.unk44 = 9;
            } else if ((D_800E98E0[id] == 1) && (pressed & 0x400)) {
                gKirbyState.unk44 = 0xA;
            }
        } else if (pressed & 0x4000) {
            if (D_800E98E0[omCurrentObj->objId] == 0) {
                gKirbyState.unk44 = 7;
            } else {
                gKirbyState.unk44 = 8;
            }
        } else if (gKirbyState.unk44 != 6) {
            id = omCurrentObj->objId;
            cnt = D_800E8AE0[id];
            if (D_800E8920[id] != 0) {
                if (((cnt & 7) == 7)
                    && ((!(gKirbyController.buttonHeld & 0x400)
                         && (gKirbyController.buttonHeld & 0x800))
                        || ((pressed & 0x8000)
                            && (gKirbyController.buttonHeld & 0x300)))) {
                    D_800EA1A0[id] = 1;
                    gKirbyState.unk44 = 6;
                }
            } else {
                if ((cnt & 6)
                    && ((pressed & 0x8000) || (gKirbyController.buttonHeld & 0xF00))) {
                    if (pressed & 0x8000) {
                        D_800EA1A0[id] = 1;
                    } else {
                        D_800EA1A0[id] = 0;
                    }
                    gKirbyState.unk44 = 6;
                }
            }
        }
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#elif defined(PORT)
/* PORT: the animal-friend ride (action 0x3D) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_80188238_ovl3.s (via m2c). Mirrors
 * the surface bits into D_800E9FE0 and the hover flag unk150 into
 * D_800EA520, services base motion (skipping input in the jump phase),
 * and hands off (or dismounts through set_kirby_action_1 0xA/0xD on a
 * squeeze, or 0x11/0x11 on a face-button press with the pad idle) when
 * the ride ends -- both dismounts masking the collision class bits and
 * burning the charge. The phase machine: 1 idles (direction to 2, A to
 * 3, no floor to 4; hovering burns a whistle timer to 0xEB and a hover
 * -flag flip re-triggers the coroutine), 2 walks (charging the peck
 * window D_800E9560 while idle, popping the 0x22A80 peck on a quick
 * direction tap, 1.5x/2.25x anim speed), 3 jumps (turn poll, ceiling
 * pops the D_8019395C bounce probe dust, the D_800E83E0 stun code 2
 * freezes into 4, fast rises trail the D_80190F2C emitter), 4 falls, 5
 * lands, 6 swims (0x1E surface window, water/land exits, 0.35 coast /
 * 0.24-drift-3.4-cap steer), 7/8 wait out the spit (7 drops the rider
 * via func_8011DCD0 when the shot flag returns), 9/10 wait the
 * mount/dismount windows (A buffers D_800E9E20). Phases 1-10 then run
 * the shared tail: while the ride DObj [0xE] is not faded it draws the
 * spit-charge emitters (D_80191DD0/D_80191E38 on DObj [0xF]) or the
 * mount-picked D_80191CCC hitbox record on DObj [1], plus the
 * D_801957B8 aura overlay -- color row from D_80195718 by anim frame
 * (rows +0/+0x50/+0x70 for phases 8/9/10) or the mounted/dismounted
 * default (tracking DObj [0xE]'s height, yaw from func_800B26D8 in
 * phase 7) -- releasing the anim lock once faded; then the swim/spit/
 * mount steering and the phase re-trigger. Phase 0 (transform grow)
 * instead scales the rec[2] hitbox and aura row by DObj [0x10]'s
 * scale.v.x while it grows to 1.
 *
 * Port notes: arg0 is the GObj (m2c's arg0->unk40 is arg0->animTimer,
 * ->unk3C->unk10 is data.dobj->firstChild); the D_800D6F58 pad-idle
 * test keeps the asm's exact widths (two words and a halfword at
 * +0x50/+0x54/+0x58); the `D_8012BCA0 &= 7` halfword lands on the TOP
 * u16 of the native flags word on PC (see ovl2_7.c's UnkBCA0), spelled
 * `*(u32 *) &= 0x7FFFF`; the D_80191D68 slot from func_80111A04 uses
 * the LP64 host PlySlot view (PcO36Slot/PcO36Shape); D_80191CCC is a
 * native-word f32 table with 0x1C-stride (7-float) records; the
 * D_8012E9B8+0x10 aura row is four native f32s; the bounce probe reads
 * void-declared func_8015449C_ovl3's tail result through the
 * established cast (same D_8019395C site as kirby.c); func_80121C90 /
 * func_80121194 / func_801210FC / func_801210B4 / func_801219C8 /
 * func_80122460 / func_80122558 / func_801226FC / func_80122A80 /
 * func_8011DCD0 / func_8011EBD4 / func_8011ED68 are void-arg on PC;
 * func_800B26D8 is (Vector *, struct DObj *, u32); the stun test is a
 * full-word read masked 0xFFFF (endian-safe). */
void func_80188238_ovl3(GObj *arg0) {
    s32 func_80121C90(void);
    s32 func_80121194(void);
    u32 func_801210FC(void);
    s32 func_801210B4(void);
    void func_801219C8(void);
    s32 func_80122460(void);
    s32 func_80122558(void);
    s32 func_801226FC(void);
    void func_80122A80(void);
    void func_8011DCD0(void);
    void func_8011EBD4(void);
    void func_8011ED68(void);
    void func_8011D614(void);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    void func_800B2340(Vector *, s32, s32);
    void func_800B26D8(Vector *, struct DObj *, u32);
    void func_80154578_ovl3(void *, s32, f32);
    void set_kirby_action_1(s32, s32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern u8 D_800D6F58[];
    extern u8 D_8012BCA0[];
    extern u8 D_80190F2C_ovl3[];
    extern f32 D_80191CCC_ovl3[];
    extern u8 D_80191D68_ovl3[];
    extern u8 D_80191DD0_ovl3[];
    extern u8 D_80191E38_ovl3[];
    extern u8 D_8019395C_ovl3[];
    extern f32 D_80195718_ovl3[];
    extern u8 D_801957B8_ovl3[];
    PcO36Slot *slot;
    Vector pos;
    f32 *row;
    f32 *src;
    f32 f;
    f32 scale;
    u16 pressed;
    u8 fade;
    s32 frame;
    s32 cnt;
    s32 held;
    s32 id;

    id = omCurrentObj->objId;
    D_800E9FE0[id].as_u32 = (u32) D_800E8AE0[id];
    D_800EA520[omCurrentObj->objId] = gKirbyState.unk150;
    func_80153984_ovl3();
    func_8011CF58();
    if (gKirbyState.unk44 != 3) {
        func_801217B8();
    }
    if ((gKirbyState.unk30 != 0) || (gKirbyState.unk17 != 0)) {
        func_8011E0E8();
        func_8011DC5C();
        func_8011D67C();
        gKirbyState.abilityInUse = 0;
        return;
    }
    cnt = func_80122460();
    if (((cnt != 0) && (gKirbyState.ceilingCollisionNext != 0))
        || ((gKirbyState.floorCollisionNext != 0)
            && (gKirbyController.buttonHeld & 0x400) && (cnt != 0))) {
        func_8011D614();
        *(u32 *) D_8012BCA0 &= 0x7FFFF;
        gKirbyState.abilityInUse = 0;
        func_8011E0E8();
        func_8011DC5C();
        set_kirby_action_1(0xA, 0xD);
        return;
    }
    if ((gKirbyState.horizontalCollision != 0)
        && ((func_80122558() != 0) || (func_801226FC() != 0))) {
        func_8011D614();
        *(u32 *) D_8012BCA0 &= 0x7FFFF;
        func_8011E0E8();
        func_8011DC5C();
        gKirbyState.abilityInUse = 0;
        return;
    }
    switch (gKirbyState.unk44) {
        case 1:
            if (func_80121C90() != 0) {
                gKirbyState.unk44 = 2;
                break;
            }
            if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
                break;
            }
            if (D_800E8920[omCurrentObj->objId] == 0) {
                gKirbyState.unk44 = 4;
                break;
            }
            if (gKirbyState.unk150 != 0) {
                id = omCurrentObj->objId;
                cnt = D_800E9720[id];
                if (cnt != 0) {
                    D_800E9720[id] = cnt - 1;
                    if (D_800E9720[omCurrentObj->objId] == 0) {
                        play_sound(0xEB);
                    }
                }
            }
            if ((gKirbyState.unk150 != D_800EA520[omCurrentObj->objId])
                && (gKirbyState.turnDirection == 0)) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                         func_8016C510_ovl3);
                break;
            }
            if (((*(s32 *) (D_800D6F58 + 0x50) | *(s32 *) (D_800D6F58 + 0x54)
                  | *(u16 *) (D_800D6F58 + 0x58)) == 0)
                && (gKirbyController.buttonPressed & 0x3F)) {
                gKirbyState.unk7 = 0;
                gKirbyState.abilityInUse = 0;
                func_8011E0E8();
                func_8011DC5C();
                func_8011D614();
                set_kirby_action_1(0x11, 0x11);
                return;
            }
            break;
        case 2:
            id = omCurrentObj->objId;
            if (D_800E64D0[id] == 0.0f) {
                gKirbyState.unk44 = 1;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (D_800E8920[id] == 0) {
                gKirbyState.unk44 = 4;
            }
            if (!(gKirbyState.isTurning & 1)) {
                if (gKirbyState.unk44 == 2) {
                    if (gKirbyState.unk7 == 0) {
                        if (func_801210FC() == 0) {
                            if (!(gKirbyController.buttonHeld & 0x300)) {
                                id = omCurrentObj->objId;
                                if (D_800E9560[id] < 0xA) {
                                    D_800E9560[id] += 1;
                                }
                            }
                        } else if (gKirbyController.buttonHeld & 0x300) {
                            id = omCurrentObj->objId;
                            cnt = D_800E9560[id];
                            if ((cnt > 0) && (cnt < 7)) {
                                gKirbyState.unk7 = 1;
                                func_80122A80();
                            } else {
                                D_800E9560[id] = 0;
                            }
                        }
                    }
                } else {
                    func_8011CF58();
                }
            } else {
                D_800E9560[omCurrentObj->objId] = 0;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            if (gKirbyState.unk7 == 0) {
                func_800AECC0(1.5f);
                func_800AED20(1.5f);
            } else {
                func_800AECC0(2.25f);
                func_800AED20(2.25f);
            }
            break;
        case 3:
            if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                gKirbyState.isTurning |= 1;
            }
            if (gKirbyState.ceilingCollisionNext != 0) {
                D_800E3210[omCurrentObj->objId] = 0.0f;
                gKirbyState.unk44 = 4;
                id = omCurrentObj->objId;
                if (!(D_800E8AE0[id] & 6) && (D_800E98E0[id] == 0)) {
                    if (((s32 (*)(u8 *, s32)) func_8015449C_ovl3)(D_8019395C_ovl3, 0) != 0) {
                        D_800E3210[omCurrentObj->objId] = 0.0f;
                        func_800BB468(0xB, 0xA);
                    }
                }
            }
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4();
            }
            id = omCurrentObj->objId;
            if ((D_800E83E0[id] & 0xFFFF) == 2) {
                D_800E3750[id] = 0.0f;
                id = omCurrentObj->objId;
                D_800E3210[id] = D_800E3750[id];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                func_800BB468(0xB, 0xA);
                gKirbyState.unk44 = 4;
            } else if (!(D_800E8AE0[id] & 6) && !(gKirbyState.unk9 & 1)
                       && (gKirbyState.unkCC < D_800E3210[id])) {
                func_8016854C_ovl3((s32) (uintptr_t) D_80190F2C_ovl3,
                                   (s32) (uintptr_t) arg0->data.dobj->firstChild, 1.0f);
            }
            func_801219C8();
            func_8011ED68();
            break;
        case 4:
            if (!(gKirbyState.isTurning & 1) && (D_800E8920[omCurrentObj->objId] != 0)) {
                gKirbyState.unk44 = 5;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            break;
        case 5:
            if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
                gKirbyState.unk44 = 2;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (func_800AF230() != 0) {
                gKirbyState.unk44 = 1;
            }
            break;
        case 6:
            held = gKirbyController.buttonHeld & 0xF00;
            if (held != 0) {
                D_800E9560[omCurrentObj->objId] = 0x1E;
            } else {
                id = omCurrentObj->objId;
                if (D_800E3210[id] > 0.0f) {
                    D_800E9560[id] = 0x1E;
                } else {
                    D_800E9560[id] -= 1;
                }
            }
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                if (D_800E8920[id] != 0) {
                    if (func_801210B4() != 0) {
                        gKirbyState.unk44 = 2;
                    } else {
                        gKirbyState.unk44 = 1;
                    }
                    id = omCurrentObj->objId;
                } else if ((held == 0) && (D_800E9560[id] == 0)
                           && (D_800E64D0[id] == 0.0f) && (D_800E3210[id] <= -0.8f)) {
                    gKirbyState.unk44 = 4;
                    id = omCurrentObj->objId;
                }
            } else {
                if (D_800E8920[id] != 0) {
                    gKirbyState.unk44 = 2;
                } else {
                    gKirbyState.unk44 = 3;
                }
                id = omCurrentObj->objId;
            }
            if (D_800E93A0[id] != 0) {
                D_800E93A0[id] -= 1;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            id = omCurrentObj->objId;
            if (gKirbyState.unk17 == 0) {
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    D_800E6690[id] = D_800E6A10[id] * 0.35f;
                    D_800E6850[omCurrentObj->objId] = 0.0f;
                } else {
                    D_800E6690[id] = D_800E6A10[id] * 0.24f;
                    D_800E6850[omCurrentObj->objId] = 3.4f;
                }
            }
            break;
        case 7:
            id = omCurrentObj->objId;
            if (D_800EA360[id] != 0) {
                if (D_800E8920[id] != 0) {
                    if (func_801210B4() != 0) {
                        gKirbyState.unk44 = 2;
                    } else {
                        gKirbyState.unk44 = 1;
                    }
                } else {
                    gKirbyState.unk44 = 4;
                }
                func_8011DCD0();
            }
            break;
        case 8:
            break;
        case 9:
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 1) {
                if (D_800E8920[id] == 0) {
                    gKirbyState.unk44 = 4;
                } else if (D_800E9E20[id] != 0) {
                    gKirbyState.unk44 = 3;
                } else {
                    gKirbyState.unk44 = 1;
                }
            } else {
                cnt = D_800E9720[id];
                if (cnt != 0) {
                    if (gKirbyController.buttonHeld & 0x8000) {
                        D_800E9E20[id] = 1;
                        cnt = D_800E9720[omCurrentObj->objId];
                    }
                    D_800E9720[omCurrentObj->objId] = cnt - 1;
                }
            }
            break;
        case 10:
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 0) {
                if (D_800E8920[id] == 0) {
                    gKirbyState.unk44 = 4;
                } else if (D_800E9E20[id] != 0) {
                    gKirbyState.unk44 = 3;
                } else {
                    gKirbyState.unk44 = 1;
                }
            } else {
                cnt = D_800E9720[id];
                if (cnt != 0) {
                    if (gKirbyController.buttonHeld & 0x8000) {
                        D_800E9E20[id] = 1;
                        cnt = D_800E9720[omCurrentObj->objId];
                    }
                    D_800E9720[omCurrentObj->objId] = cnt - 1;
                }
            }
            break;
        case 0:
            id = omCurrentObj->objId;
            scale = D_800DFBD0[id][0x10]->scale.v.x;
            if (scale < 1.0f) {
                slot = (PcO36Slot *) (uintptr_t) func_80111A04(D_80191D68_ovl3, id);
                src = &D_80191CCC_ovl3[2 * 7];
                slot->unk20->unkC = src[0];
                slot->unk20->unk10 = src[1];
                slot->unk20->unk14 = src[2] * scale;
                slot->unk20->unk18 = src[3];
                slot->unk20->unk1C = src[4];
                slot->unk20->unk20 = src[5] * scale;
                slot->unk20->unk24 = src[6];
                slot->unk20->unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][1];
                func_80111C4C((s32) (uintptr_t) slot);
                func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xE],
                              0xFFFF);
                row = (f32 *) ((u8 *) &D_8012E9B8 + 0x10);
                f = pos.y - gEntitiesNextPosYArray[omCurrentObj->objId];
                row[2] = f;
                row[0] = f;
                row[1] = -10.0f;
                row[3] = 130.0f * scale;
                func_8015449C_ovl3(D_801957B8_ovl3, 0);
            }
            return;
        default:
            return;
    }
    /* shared tail: ride hitbox/overlay draw and steering */
    fade = D_800DFBD0[omCurrentObj->objId][0xE]->flags;
    if (fade != 2) {
        if (gKirbyState.unk44 == 8) {
            func_8016854C_ovl3((s32) (uintptr_t) D_80191DD0_ovl3,
                               (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xF], 1.0f);
        } else if (gKirbyState.unk44 == 7) {
            func_8016854C_ovl3((s32) (uintptr_t) D_80191E38_ovl3,
                               (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xF], 1.0f);
        } else {
            slot = (PcO36Slot *) (uintptr_t) func_80111A04(D_80191D68_ovl3, omCurrentObj->objId);
            src = &D_80191CCC_ovl3[D_800E98E0[omCurrentObj->objId] * 7];
            slot->unk20->unkC = src[0];
            slot->unk20->unk10 = src[1];
            slot->unk20->unk14 = src[2];
            slot->unk20->unk18 = src[3];
            slot->unk20->unk1C = src[4];
            slot->unk20->unk20 = src[5];
            slot->unk20->unk24 = src[6];
            slot->unk20->unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][1];
            func_80111C4C((s32) (uintptr_t) slot);
        }
        row = (f32 *) ((u8 *) &D_8012E9B8 + 0x10);
        switch (gKirbyState.unk44) {
            case 8:
                src = &D_80195718_ovl3[((s32) (arg0->animTimer * 0.5f)) * 4];
                row[0] = src[0];
                row[1] = src[1];
                row[2] = src[2];
                row[3] = src[3];
                func_8015449C_ovl3(D_801957B8_ovl3, 0);
                break;
            case 9:
                frame = (s32) (arg0->animTimer * 0.5f);
                if (frame != 0) {
                    src = &D_80195718_ovl3[frame * 4 + 0x14];
                    row[0] = src[0];
                    row[1] = src[1];
                    row[2] = src[2];
                    row[3] = src[3];
                    func_8015449C_ovl3(D_801957B8_ovl3, 0);
                }
                break;
            case 10:
                frame = (s32) (arg0->animTimer * 0.5f);
                if (frame != 0) {
                    src = &D_80195718_ovl3[frame * 4 + 0x1C];
                    row[0] = src[0];
                    row[1] = src[1];
                    row[2] = src[2];
                    row[3] = src[3];
                    func_8015449C_ovl3(D_801957B8_ovl3, 0);
                }
                break;
            default:
                id = omCurrentObj->objId;
                if (D_800E98E0[id] == 1) {
                    row[0] = D_80195718_ovl3[0];
                    row[1] = D_80195718_ovl3[1];
                    row[2] = D_80195718_ovl3[2];
                    row[3] = D_80195718_ovl3[3];
                    func_8015449C_ovl3(D_801957B8_ovl3, 0);
                } else {
                    func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[id][0xE], 0xFFFF);
                    f = pos.y - gEntitiesNextPosYArray[omCurrentObj->objId];
                    row[2] = f;
                    row[0] = f;
                    row[3] = -120.0f;
                    row[1] = 0.0f;
                    if (gKirbyState.unk44 == 7) {
                        func_800B26D8(&pos, D_800DFBD0[omCurrentObj->objId][0xE], 0xFFFF);
                        f = -pos.x;
                    } else {
                        f = gEntitiesAngleYArray[omCurrentObj->objId];
                    }
                    func_80154578_ovl3(D_801957B8_ovl3, 0, f);
                }
                break;
        }
        fade = D_800DFBD0[omCurrentObj->objId][0xE]->flags;
    }
    if (fade == 2) {
        func_8011E0E8();
    }
    if ((gKirbyState.unk44 != 7) && (gKirbyState.unk44 != 8)
        && (gKirbyState.unk44 != 9) && (gKirbyState.unk44 != 0xA)) {
        pressed = gKirbyController.buttonPressed;
        if (pressed & 0xC00) {
            id = omCurrentObj->objId;
            if ((D_800E98E0[id] == 0) && (pressed & 0x800)) {
                gKirbyState.unk44 = 9;
            } else if ((D_800E98E0[id] == 1) && (pressed & 0x400)) {
                gKirbyState.unk44 = 0xA;
            }
        } else if (pressed & 0x4000) {
            if (D_800E98E0[omCurrentObj->objId] == 0) {
                gKirbyState.unk44 = 7;
            } else {
                gKirbyState.unk44 = 8;
            }
        } else if (gKirbyState.unk44 != 6) {
            id = omCurrentObj->objId;
            cnt = D_800E8AE0[id];
            if (D_800E8920[id] != 0) {
                if (((cnt & 7) == 7)
                    && ((!(gKirbyController.buttonHeld & 0x400)
                         && (gKirbyController.buttonHeld & 0x800))
                        || ((pressed & 0x8000)
                            && (gKirbyController.buttonHeld & 0x300)))) {
                    D_800EA1A0[id] = 1;
                    gKirbyState.unk44 = 6;
                }
            } else {
                if ((cnt & 6)
                    && ((pressed & 0x8000) || (gKirbyController.buttonHeld & 0xF00))) {
                    if (pressed & 0x8000) {
                        D_800EA1A0[id] = 1;
                    } else {
                        D_800EA1A0[id] = 0;
                    }
                    gKirbyState.unk44 = 6;
                }
            }
        }
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80188238_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: DIFF 1447/1565 insns; short=0 long=0.
 * Draft derived from the host arm with its shims/LP64-isms removed; instruction count is EXACT, so the residue is allocation only -- good permuter seed. */
/* PORT: the mixed-copy transform coroutine (track action 0x3E), from
 * asm/nonmatchings/ovl3/ovl3_6/func_80189914_ovl3.s (via m2c). First
 * entry arms the ability with a water-scaled 0x26/0x4C drop timer,
 * freezes both tracks, restores the default anim table with the
 * D_80190378 PlyEntry handle, plays 0xBA and clears the mount-kind
 * word D_800E98E0 (and its D_800E9AA0 mirror). Every (re)entry then
 * dispatches on the kind: 0 shows the 0x2005B/0x2005C roulette pair
 * with the func_8018B188_ovl3 pick process; 1 pops back out (0x11D,
 * 0x4F particle on DObj [2], charge burn, 0x2018A/0x2018B pair, done
 * flag); kinds 2-7 are the six transform bodies (models 0x20022..
 * 0x20029), each phased by unk44 -- 0 dresses the model and idles, 1
 * re-derives the segment map from the D_800DFA10 handle (kind 7
 * falling back to a bare model swap while 0x20028 is absent), 2 walks,
 * 3 jumps (water/dry rise pairs 5.5-or-8.5 / func_80123144(11/17/9),
 * riding to apex; kind 5 chains a three-hop D_800E9560 ladder --
 * sounds 0x241/0x242/0x243 with mid-air model flips through 0x20026 --
 * parking on an endless 0x2024B flip loop when the ladder empties), 4
 * falls (9.0/18.0 caps), 5 stops, and kinds 4/7's 6 ground-pounds (a
 * D_800E9560 window of 8.0-drop hops or a final freeze), kind 7's 7
 * slamming flat (0x121 on the floor, model 0x20029). Every path parks
 * on curObjSleepForever for the next phase re-trigger.
 *
 * Port notes: func_800AA018 takes one s32 (m2c's track-array extras
 * are leftover registers); func_800AFA54 takes the GObj handle behind
 * the u32 cell D_800DFA10[objId] (m2c's *(&D_800DFA10 + id*4) byte
 * scaling), cast through (uintptr_t); func_80123144 is f32(f32) with
 * 0x41300000/0x41880000/0x41100000 = 11.0f/17.0f/9.0f;
 * func_8018B188_ovl3 is forward-declared -- it is defined just below
 * with exactly the D_800DF310 slot signature. */
void func_80189914_ovl3(s32 arg0) {
    void func_8018B188_ovl3(s32, s32, f32);
    void func_800AFA54(void *);
    s32 func_800AA888(s32);
    f32 func_80123144(f32);
    void func_8011D614(void);
    extern u32 D_800DFA10[];
    extern u8 D_80190378_ovl3[];
    s32 cnt;
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk7 = 0;
        gKirbyState.isFullJump = 0;
        gKirbyState.jumpHeight = 0;
        gKirbyState.unkA = 0;
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            gKirbyState.unk16 = 0x4C;
        } else {
            gKirbyState.unk16 = 0x26;
        }
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x3E;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E3210[id] = D_800E3750[id];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190378_ovl3;
        gKirbyState.unk154 = 2;
        play_sound(0xBA);
        D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
        id = omCurrentObj->objId;
        D_800E98E0[id] = (s32) D_800E9AA0[id].as_u32;
    }
    id = omCurrentObj->objId;
    switch (D_800E98E0[id]) {
        case 0:
            D_800EA520[id] = 0;
            gKirbyState.unk44 = 0;
            gKirbyState.unk3C = 0;
            func_801230E8(0x2005B, 0x2005C, 0);
            D_800DF310[omCurrentObj->objId] = func_8018B188_ovl3;
            break;
        case 1:
            gKirbyState.unk30 = 0;
            D_800EA520[omCurrentObj->objId] = 0;
            D_800E9720[omCurrentObj->objId] = 0xA;
            gKirbyState.abilityInUse = 0;
            func_80120A28();
            func_8011D614();
            play_sound(0x11D);
            func_800A8100(2, 1, 0x4F, D_800DFBD0[omCurrentObj->objId][2]);
            func_801230E8(0x2018A, 0x2018B, 1);
            gKirbyState.unk30 += 1;
            break;
        case 2:
            switch (gKirbyState.unk44) {
                case 0:
                    func_80122F08(0x20022);
                    gKirbyState.unk154 = 6;
                    func_800AA018(0x20239);
                    break;
                case 1:
                    func_800AF314();
                    func_800AFA54((void *) (uintptr_t) D_800DFA10[omCurrentObj->objId]);
                    break;
                case 2:
                    func_800AA018(0x2023E);
                    break;
                case 3:
                    if (D_800E8920[id] != 0) {
                        play_sound(0x40);
                    } else {
                        play_sound(0x23F);
                    }
                    D_800E8920[omCurrentObj->objId] = 0;
                    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                        gKirbyState.unkCC = 4.0f;
                        D_800E3210[omCurrentObj->objId] = 5.5f;
                        D_800E3750[omCurrentObj->objId] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 5.5f;
                    } else {
                        gKirbyState.unkCC = 8.0f;
                        D_800E3210[omCurrentObj->objId] = func_80123144(11.0f);
                        D_800E3750[omCurrentObj->objId] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 16.0f;
                    }
                    func_800AA018(0x2023B);
                    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                        ohSleep(1);
                    }
                    gKirbyState.isFullJump += 1;
                    func_800AA154(0x2023C);
                    gKirbyState.unk3C = 4;
                    gKirbyState.unk44 = 4;
                    gKirbyState.isFullJump = 0;
                    gKirbyState.jumpHeight = 0;
                    /* fallthrough */
                case 4:
                    D_800E8920[omCurrentObj->objId] = 0;
                    id = omCurrentObj->objId;
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 9.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 18.0f;
                    }
                    func_800AA018(0x2023A);
                    break;
                case 5:
                    func_800AA018(0x2023D);
                    break;
            }
            break;
        case 3:
            if (gKirbyState.unk44 == 0) {
                func_80122F08(0x20023);
                gKirbyState.unk154 = 2;
                func_800AA018(0x2023F);
            }
            break;
        case 4:
            switch (gKirbyState.unk44) {
                case 0:
                    D_800E9560[id] = 0xA;
                    func_80122F08(0x20024);
                    gKirbyState.unk154 = 2;
                    func_800AA018(0x20240);
                    break;
                case 1:
                    func_800AFA54((void *) (uintptr_t) D_800DFA10[omCurrentObj->objId]);
                    break;
                case 3:
                    D_800E8920[id] = 0;
                    play_sound(0x40);
                    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                        gKirbyState.unkCC = 4.0f;
                        D_800E3210[omCurrentObj->objId] = 8.5f;
                        D_800E3750[omCurrentObj->objId] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 8.5f;
                    } else {
                        gKirbyState.unkCC = 8.0f;
                        D_800E3210[omCurrentObj->objId] = func_80123144(17.0f);
                        D_800E3750[omCurrentObj->objId] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 16.0f;
                    }
                    func_800AA018(0x20242);
                    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                        ohSleep(1);
                    }
                    gKirbyState.isFullJump += 1;
                    func_800AA154(0x20243);
                    gKirbyState.unk3C = 4;
                    gKirbyState.unk44 = 4;
                    gKirbyState.isFullJump = 0;
                    gKirbyState.jumpHeight = 0;
                    /* fallthrough */
                case 4:
                    D_800E8920[omCurrentObj->objId] = 0;
                    id = omCurrentObj->objId;
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 9.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 18.0f;
                    }
                    func_800AA018(0x20241);
                    break;
                case 5:
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                    func_800AA018(0x20244);
                    break;
                case 6:
                    gKirbyState.unk30 = 0;
                    play_sound(0x41);
                    D_800E9720[omCurrentObj->objId] = 3;
                    func_800AA018(0x20242);
                    id = omCurrentObj->objId;
                    cnt = D_800E9560[id];
                    if (cnt != 0) {
                        D_800E9560[id] = cnt - 1;
                        D_800E3210[omCurrentObj->objId] = 8.0f;
                        D_800E3750[omCurrentObj->objId] = -1.0f;
                        D_800E3C90[omCurrentObj->objId] = 8.0f;
                        D_800E8920[omCurrentObj->objId] = 0;
                        ohSleep(0xA);
                    } else {
                        D_800E3750[id] = 0.0f;
                        id = omCurrentObj->objId;
                        D_800E3210[id] = D_800E3750[id];
                        D_800E3C90[omCurrentObj->objId] = 65535.0f;
                        ohSleep(2);
                    }
                    gKirbyState.unk30 += 1;
                    break;
            }
            break;
        case 5:
            switch (gKirbyState.unk44) {
                case 0:
                    D_800E9560[id] = 3;
                    func_80122F08(0x20025);
                    gKirbyState.unk154 = 1;
                    func_800AA018(0x20245);
                    break;
                case 1:
                    func_800AF314();
                    func_800AFA54((void *) (uintptr_t) D_800DFA10[omCurrentObj->objId]);
                    break;
                case 2:
                    func_800AA018(0x2024A);
                    break;
                case 3:
                    switch (D_800E9560[id]) {
                        case 3:
                            D_800E8920[id] = 0;
                            D_800E9560[omCurrentObj->objId] -= 1;
                            play_sound(0x241);
                            if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                                gKirbyState.unkCC = 4.0f;
                                D_800E3210[omCurrentObj->objId] = 5.5f;
                                D_800E3750[omCurrentObj->objId] = -0.4f;
                                D_800E3C90[omCurrentObj->objId] = 5.5f;
                            } else {
                                gKirbyState.unkCC = 8.0f;
                                D_800E3210[omCurrentObj->objId] = func_80123144(11.0f);
                                D_800E3750[omCurrentObj->objId] = -0.980665f;
                                D_800E3C90[omCurrentObj->objId] = 16.0f;
                            }
                            func_800AA018(0x20247);
                            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                                ohSleep(1);
                            }
                            gKirbyState.isFullJump += 1;
                            break;
                        case 2:
                            gKirbyState.isFullJump = 1;
                            D_800E9560[omCurrentObj->objId] -= 1;
                            play_sound(0x242);
                            id = omCurrentObj->objId;
                            if (D_800E8AE0[id] & 6) {
                                D_800E3210[id] = 5.5f;
                                D_800E3750[omCurrentObj->objId] = -0.4f;
                                D_800E3C90[omCurrentObj->objId] = 5.5f;
                            } else {
                                D_800E3210[omCurrentObj->objId] = func_80123144(11.0f);
                                D_800E3750[omCurrentObj->objId] = -0.980665f;
                                D_800E3C90[omCurrentObj->objId] = 16.0f;
                            }
                            func_80122F08(0x20026);
                            func_800AA154(0x2024B);
                            func_80122F08(0x20025);
                            break;
                        case 1:
                            gKirbyState.isFullJump = 1;
                            D_800E9560[omCurrentObj->objId] -= 1;
                            play_sound(0x243);
                            id = omCurrentObj->objId;
                            if (D_800E8AE0[id] & 6) {
                                D_800E3210[id] = 4.5f;
                                D_800E3750[omCurrentObj->objId] = -0.4f;
                                D_800E3C90[omCurrentObj->objId] = 4.5f;
                            } else {
                                D_800E3210[omCurrentObj->objId] = func_80123144(9.0f);
                                D_800E3750[omCurrentObj->objId] = -0.980665f;
                                D_800E3C90[omCurrentObj->objId] = 16.0f;
                            }
                            func_80122F08(0x20026);
                            func_800AA154(0x2024B);
                            func_80122F08(0x20025);
                            break;
                    }
                    if (D_800E9560[omCurrentObj->objId] == 0) {
                        gKirbyState.unk3C = 4;
                        gKirbyState.unk44 = 4;
                        func_80122F08(0x20026);
                        for (;;) {
                            func_800AA154(0x2024B);
                        }
                    }
                    func_800AA154(0x20248);
                    gKirbyState.unk3C = 4;
                    gKirbyState.unk44 = 4;
                    gKirbyState.isFullJump = 0;
                    gKirbyState.jumpHeight = 0;
                    /* fallthrough */
                case 4:
                    D_800E8920[omCurrentObj->objId] = 0;
                    id = omCurrentObj->objId;
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 9.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 18.0f;
                    }
                    func_800AA018(0x20246);
                    break;
                case 5:
                    func_800AA018(0x20249);
                    break;
            }
            break;
        case 6:
            switch (gKirbyState.unk44) {
                case 0:
                    func_80122F08(0x20027);
                    gKirbyState.unk154 = 2;
                    func_800AA018(0x2024C);
                    break;
                case 1:
                    func_800AFA54((void *) (uintptr_t) D_800DFA10[omCurrentObj->objId]);
                    break;
                case 3:
                    D_800E8920[id] = 0;
                    play_sound(0x40);
                    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                        gKirbyState.unkCC = 4.0f;
                        D_800E3210[omCurrentObj->objId] = 8.5f;
                        D_800E3750[omCurrentObj->objId] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 8.5f;
                    } else {
                        gKirbyState.unkCC = 8.0f;
                        D_800E3210[omCurrentObj->objId] = func_80123144(17.0f);
                        D_800E3750[omCurrentObj->objId] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 16.0f;
                    }
                    func_800AA018(0x2024E);
                    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                        ohSleep(1);
                    }
                    gKirbyState.isFullJump += 1;
                    func_800AA154(0x2024F);
                    gKirbyState.unk3C = 4;
                    gKirbyState.unk44 = 4;
                    gKirbyState.isFullJump = 0;
                    gKirbyState.jumpHeight = 0;
                    /* fallthrough */
                case 4:
                    D_800E8920[omCurrentObj->objId] = 0;
                    id = omCurrentObj->objId;
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 9.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 18.0f;
                    }
                    func_800AA018(0x2024D);
                    break;
                case 5:
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                    func_800AA018(0x20250);
                    break;
            }
            break;
        case 7:
            switch (gKirbyState.unk44) {
                case 0:
                    D_800E9560[id] = 0xA;
                    func_80122F08(0x20028);
                    gKirbyState.unk154 = 1;
                    func_800AA018(0x20251);
                    break;
                case 1:
                    func_800AF314();
                    if (func_800AA888(0x20028) == 0) {
                        func_80122F08(0x20028);
                    } else {
                        func_800AFA54((void *) (uintptr_t) D_800DFA10[omCurrentObj->objId]);
                    }
                    break;
                case 3:
                    D_800E8920[id] = 0;
                    play_sound(0x40);
                    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                        gKirbyState.unkCC = 4.0f;
                        D_800E3210[omCurrentObj->objId] = 8.5f;
                        D_800E3750[omCurrentObj->objId] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 8.5f;
                    } else {
                        gKirbyState.unkCC = 8.0f;
                        D_800E3210[omCurrentObj->objId] = func_80123144(17.0f);
                        D_800E3750[omCurrentObj->objId] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 16.0f;
                    }
                    if (func_800AA888(0x20028) == 0) {
                        func_80122F08(0x20028);
                    }
                    func_800AA018(0x20253);
                    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                        ohSleep(1);
                    }
                    gKirbyState.isFullJump += 1;
                    func_800AA154(0x20254);
                    gKirbyState.unk3C = 4;
                    gKirbyState.unk44 = 4;
                    gKirbyState.isFullJump = 0;
                    gKirbyState.jumpHeight = 0;
                    /* fallthrough */
                case 4:
                    D_800E8920[omCurrentObj->objId] = 0;
                    id = omCurrentObj->objId;
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 9.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 18.0f;
                    }
                    func_800AA018(0x20252);
                    break;
                case 5:
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                    func_800AA018(0x20255);
                    break;
                case 6:
                    gKirbyState.unk30 = 0;
                    play_sound(0x41);
                    D_800E9720[omCurrentObj->objId] = 3;
                    func_800AA018(0x20253);
                    id = omCurrentObj->objId;
                    cnt = D_800E9560[id];
                    if (cnt != 0) {
                        D_800E9560[id] = cnt - 1;
                        D_800E3210[omCurrentObj->objId] = 8.0f;
                        D_800E3750[omCurrentObj->objId] = -1.0f;
                        D_800E3C90[omCurrentObj->objId] = 8.0f;
                        D_800E8920[omCurrentObj->objId] = 0;
                        ohSleep(0xA);
                    } else {
                        D_800E3750[id] = 0.0f;
                        id = omCurrentObj->objId;
                        D_800E3210[id] = D_800E3750[id];
                        D_800E3C90[omCurrentObj->objId] = 65535.0f;
                        ohSleep(2);
                    }
                    gKirbyState.unk30 += 1;
                    break;
                case 7:
                    gKirbyState.unk40 = 0.0f;
                    if (D_800E8920[omCurrentObj->objId] != 0) {
                        play_sound(0x121);
                    }
                    func_80122F08(0x20029);
                    break;
            }
            break;
    }
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the mixed-copy transform coroutine (track action 0x3E), from
 * asm/nonmatchings/ovl3/ovl3_6/func_80189914_ovl3.s (via m2c). First
 * entry arms the ability with a water-scaled 0x26/0x4C drop timer,
 * freezes both tracks, restores the default anim table with the
 * D_80190378 PlyEntry handle, plays 0xBA and clears the mount-kind
 * word D_800E98E0 (and its D_800E9AA0 mirror). Every (re)entry then
 * dispatches on the kind: 0 shows the 0x2005B/0x2005C roulette pair
 * with the func_8018B188_ovl3 pick process; 1 pops back out (0x11D,
 * 0x4F particle on DObj [2], charge burn, 0x2018A/0x2018B pair, done
 * flag); kinds 2-7 are the six transform bodies (models 0x20022..
 * 0x20029), each phased by unk44 -- 0 dresses the model and idles, 1
 * re-derives the segment map from the D_800DFA10 handle (kind 7
 * falling back to a bare model swap while 0x20028 is absent), 2 walks,
 * 3 jumps (water/dry rise pairs 5.5-or-8.5 / func_80123144(11/17/9),
 * riding to apex; kind 5 chains a three-hop D_800E9560 ladder --
 * sounds 0x241/0x242/0x243 with mid-air model flips through 0x20026 --
 * parking on an endless 0x2024B flip loop when the ladder empties), 4
 * falls (9.0/18.0 caps), 5 stops, and kinds 4/7's 6 ground-pounds (a
 * D_800E9560 window of 8.0-drop hops or a final freeze), kind 7's 7
 * slamming flat (0x121 on the floor, model 0x20029). Every path parks
 * on curObjSleepForever for the next phase re-trigger.
 *
 * Port notes: func_800AA018 takes one s32 (m2c's track-array extras
 * are leftover registers); func_800AFA54 takes the GObj handle behind
 * the u32 cell D_800DFA10[objId] (m2c's *(&D_800DFA10 + id*4) byte
 * scaling), cast through (uintptr_t); func_80123144 is f32(f32) with
 * 0x41300000/0x41880000/0x41100000 = 11.0f/17.0f/9.0f;
 * func_8018B188_ovl3 is forward-declared -- it is defined just below
 * with exactly the D_800DF310 slot signature. */
void func_80189914_ovl3(s32 arg0) {
    void func_8018B188_ovl3(s32, s32, f32);
    void func_800AFA54(void *);
    s32 func_800AA888(s32);
    f32 func_80123144(f32);
    void func_8011D614(void);
    extern u32 D_800DFA10[];
    extern u8 D_80190378_ovl3[];
    s32 cnt;
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk7 = 0;
        gKirbyState.isFullJump = 0;
        gKirbyState.jumpHeight = 0;
        gKirbyState.unkA = 0;
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            gKirbyState.unk16 = 0x4C;
        } else {
            gKirbyState.unk16 = 0x26;
        }
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x3E;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E3210[id] = D_800E3750[id];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190378_ovl3;
        gKirbyState.unk154 = 2;
        play_sound(0xBA);
        D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
        id = omCurrentObj->objId;
        D_800E98E0[id] = (s32) D_800E9AA0[id].as_u32;
    }
    id = omCurrentObj->objId;
    switch (D_800E98E0[id]) {
        case 0:
            D_800EA520[id] = 0;
            gKirbyState.unk44 = 0;
            gKirbyState.unk3C = 0;
            func_801230E8(0x2005B, 0x2005C, 0);
            D_800DF310[omCurrentObj->objId] = func_8018B188_ovl3;
            break;
        case 1:
            gKirbyState.unk30 = 0;
            D_800EA520[omCurrentObj->objId] = 0;
            D_800E9720[omCurrentObj->objId] = 0xA;
            gKirbyState.abilityInUse = 0;
            func_80120A28();
            func_8011D614();
            play_sound(0x11D);
            func_800A8100(2, 1, 0x4F, D_800DFBD0[omCurrentObj->objId][2]);
            func_801230E8(0x2018A, 0x2018B, 1);
            gKirbyState.unk30 += 1;
            break;
        case 2:
            switch (gKirbyState.unk44) {
                case 0:
                    func_80122F08(0x20022);
                    gKirbyState.unk154 = 6;
                    func_800AA018(0x20239);
                    break;
                case 1:
                    func_800AF314();
                    func_800AFA54((void *) (uintptr_t) D_800DFA10[omCurrentObj->objId]);
                    break;
                case 2:
                    func_800AA018(0x2023E);
                    break;
                case 3:
                    if (D_800E8920[id] != 0) {
                        play_sound(0x40);
                    } else {
                        play_sound(0x23F);
                    }
                    D_800E8920[omCurrentObj->objId] = 0;
                    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                        gKirbyState.unkCC = 4.0f;
                        D_800E3210[omCurrentObj->objId] = 5.5f;
                        D_800E3750[omCurrentObj->objId] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 5.5f;
                    } else {
                        gKirbyState.unkCC = 8.0f;
                        D_800E3210[omCurrentObj->objId] = func_80123144(11.0f);
                        D_800E3750[omCurrentObj->objId] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 16.0f;
                    }
                    func_800AA018(0x2023B);
                    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                        ohSleep(1);
                    }
                    gKirbyState.isFullJump += 1;
                    func_800AA154(0x2023C);
                    gKirbyState.unk3C = 4;
                    gKirbyState.unk44 = 4;
                    gKirbyState.isFullJump = 0;
                    gKirbyState.jumpHeight = 0;
                    /* fallthrough */
                case 4:
                    D_800E8920[omCurrentObj->objId] = 0;
                    id = omCurrentObj->objId;
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 9.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 18.0f;
                    }
                    func_800AA018(0x2023A);
                    break;
                case 5:
                    func_800AA018(0x2023D);
                    break;
            }
            break;
        case 3:
            if (gKirbyState.unk44 == 0) {
                func_80122F08(0x20023);
                gKirbyState.unk154 = 2;
                func_800AA018(0x2023F);
            }
            break;
        case 4:
            switch (gKirbyState.unk44) {
                case 0:
                    D_800E9560[id] = 0xA;
                    func_80122F08(0x20024);
                    gKirbyState.unk154 = 2;
                    func_800AA018(0x20240);
                    break;
                case 1:
                    func_800AFA54((void *) (uintptr_t) D_800DFA10[omCurrentObj->objId]);
                    break;
                case 3:
                    D_800E8920[id] = 0;
                    play_sound(0x40);
                    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                        gKirbyState.unkCC = 4.0f;
                        D_800E3210[omCurrentObj->objId] = 8.5f;
                        D_800E3750[omCurrentObj->objId] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 8.5f;
                    } else {
                        gKirbyState.unkCC = 8.0f;
                        D_800E3210[omCurrentObj->objId] = func_80123144(17.0f);
                        D_800E3750[omCurrentObj->objId] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 16.0f;
                    }
                    func_800AA018(0x20242);
                    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                        ohSleep(1);
                    }
                    gKirbyState.isFullJump += 1;
                    func_800AA154(0x20243);
                    gKirbyState.unk3C = 4;
                    gKirbyState.unk44 = 4;
                    gKirbyState.isFullJump = 0;
                    gKirbyState.jumpHeight = 0;
                    /* fallthrough */
                case 4:
                    D_800E8920[omCurrentObj->objId] = 0;
                    id = omCurrentObj->objId;
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 9.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 18.0f;
                    }
                    func_800AA018(0x20241);
                    break;
                case 5:
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                    func_800AA018(0x20244);
                    break;
                case 6:
                    gKirbyState.unk30 = 0;
                    play_sound(0x41);
                    D_800E9720[omCurrentObj->objId] = 3;
                    func_800AA018(0x20242);
                    id = omCurrentObj->objId;
                    cnt = D_800E9560[id];
                    if (cnt != 0) {
                        D_800E9560[id] = cnt - 1;
                        D_800E3210[omCurrentObj->objId] = 8.0f;
                        D_800E3750[omCurrentObj->objId] = -1.0f;
                        D_800E3C90[omCurrentObj->objId] = 8.0f;
                        D_800E8920[omCurrentObj->objId] = 0;
                        ohSleep(0xA);
                    } else {
                        D_800E3750[id] = 0.0f;
                        id = omCurrentObj->objId;
                        D_800E3210[id] = D_800E3750[id];
                        D_800E3C90[omCurrentObj->objId] = 65535.0f;
                        ohSleep(2);
                    }
                    gKirbyState.unk30 += 1;
                    break;
            }
            break;
        case 5:
            switch (gKirbyState.unk44) {
                case 0:
                    D_800E9560[id] = 3;
                    func_80122F08(0x20025);
                    gKirbyState.unk154 = 1;
                    func_800AA018(0x20245);
                    break;
                case 1:
                    func_800AF314();
                    func_800AFA54((void *) (uintptr_t) D_800DFA10[omCurrentObj->objId]);
                    break;
                case 2:
                    func_800AA018(0x2024A);
                    break;
                case 3:
                    switch (D_800E9560[id]) {
                        case 3:
                            D_800E8920[id] = 0;
                            D_800E9560[omCurrentObj->objId] -= 1;
                            play_sound(0x241);
                            if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                                gKirbyState.unkCC = 4.0f;
                                D_800E3210[omCurrentObj->objId] = 5.5f;
                                D_800E3750[omCurrentObj->objId] = -0.4f;
                                D_800E3C90[omCurrentObj->objId] = 5.5f;
                            } else {
                                gKirbyState.unkCC = 8.0f;
                                D_800E3210[omCurrentObj->objId] = func_80123144(11.0f);
                                D_800E3750[omCurrentObj->objId] = -0.980665f;
                                D_800E3C90[omCurrentObj->objId] = 16.0f;
                            }
                            func_800AA018(0x20247);
                            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                                ohSleep(1);
                            }
                            gKirbyState.isFullJump += 1;
                            break;
                        case 2:
                            gKirbyState.isFullJump = 1;
                            D_800E9560[omCurrentObj->objId] -= 1;
                            play_sound(0x242);
                            id = omCurrentObj->objId;
                            if (D_800E8AE0[id] & 6) {
                                D_800E3210[id] = 5.5f;
                                D_800E3750[omCurrentObj->objId] = -0.4f;
                                D_800E3C90[omCurrentObj->objId] = 5.5f;
                            } else {
                                D_800E3210[omCurrentObj->objId] = func_80123144(11.0f);
                                D_800E3750[omCurrentObj->objId] = -0.980665f;
                                D_800E3C90[omCurrentObj->objId] = 16.0f;
                            }
                            func_80122F08(0x20026);
                            func_800AA154(0x2024B);
                            func_80122F08(0x20025);
                            break;
                        case 1:
                            gKirbyState.isFullJump = 1;
                            D_800E9560[omCurrentObj->objId] -= 1;
                            play_sound(0x243);
                            id = omCurrentObj->objId;
                            if (D_800E8AE0[id] & 6) {
                                D_800E3210[id] = 4.5f;
                                D_800E3750[omCurrentObj->objId] = -0.4f;
                                D_800E3C90[omCurrentObj->objId] = 4.5f;
                            } else {
                                D_800E3210[omCurrentObj->objId] = func_80123144(9.0f);
                                D_800E3750[omCurrentObj->objId] = -0.980665f;
                                D_800E3C90[omCurrentObj->objId] = 16.0f;
                            }
                            func_80122F08(0x20026);
                            func_800AA154(0x2024B);
                            func_80122F08(0x20025);
                            break;
                    }
                    if (D_800E9560[omCurrentObj->objId] == 0) {
                        gKirbyState.unk3C = 4;
                        gKirbyState.unk44 = 4;
                        func_80122F08(0x20026);
                        for (;;) {
                            func_800AA154(0x2024B);
                        }
                    }
                    func_800AA154(0x20248);
                    gKirbyState.unk3C = 4;
                    gKirbyState.unk44 = 4;
                    gKirbyState.isFullJump = 0;
                    gKirbyState.jumpHeight = 0;
                    /* fallthrough */
                case 4:
                    D_800E8920[omCurrentObj->objId] = 0;
                    id = omCurrentObj->objId;
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 9.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 18.0f;
                    }
                    func_800AA018(0x20246);
                    break;
                case 5:
                    func_800AA018(0x20249);
                    break;
            }
            break;
        case 6:
            switch (gKirbyState.unk44) {
                case 0:
                    func_80122F08(0x20027);
                    gKirbyState.unk154 = 2;
                    func_800AA018(0x2024C);
                    break;
                case 1:
                    func_800AFA54((void *) (uintptr_t) D_800DFA10[omCurrentObj->objId]);
                    break;
                case 3:
                    D_800E8920[id] = 0;
                    play_sound(0x40);
                    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                        gKirbyState.unkCC = 4.0f;
                        D_800E3210[omCurrentObj->objId] = 8.5f;
                        D_800E3750[omCurrentObj->objId] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 8.5f;
                    } else {
                        gKirbyState.unkCC = 8.0f;
                        D_800E3210[omCurrentObj->objId] = func_80123144(17.0f);
                        D_800E3750[omCurrentObj->objId] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 16.0f;
                    }
                    func_800AA018(0x2024E);
                    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                        ohSleep(1);
                    }
                    gKirbyState.isFullJump += 1;
                    func_800AA154(0x2024F);
                    gKirbyState.unk3C = 4;
                    gKirbyState.unk44 = 4;
                    gKirbyState.isFullJump = 0;
                    gKirbyState.jumpHeight = 0;
                    /* fallthrough */
                case 4:
                    D_800E8920[omCurrentObj->objId] = 0;
                    id = omCurrentObj->objId;
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 9.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 18.0f;
                    }
                    func_800AA018(0x2024D);
                    break;
                case 5:
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                    func_800AA018(0x20250);
                    break;
            }
            break;
        case 7:
            switch (gKirbyState.unk44) {
                case 0:
                    D_800E9560[id] = 0xA;
                    func_80122F08(0x20028);
                    gKirbyState.unk154 = 1;
                    func_800AA018(0x20251);
                    break;
                case 1:
                    func_800AF314();
                    if (func_800AA888(0x20028) == 0) {
                        func_80122F08(0x20028);
                    } else {
                        func_800AFA54((void *) (uintptr_t) D_800DFA10[omCurrentObj->objId]);
                    }
                    break;
                case 3:
                    D_800E8920[id] = 0;
                    play_sound(0x40);
                    if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                        gKirbyState.unkCC = 4.0f;
                        D_800E3210[omCurrentObj->objId] = 8.5f;
                        D_800E3750[omCurrentObj->objId] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 8.5f;
                    } else {
                        gKirbyState.unkCC = 8.0f;
                        D_800E3210[omCurrentObj->objId] = func_80123144(17.0f);
                        D_800E3750[omCurrentObj->objId] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 16.0f;
                    }
                    if (func_800AA888(0x20028) == 0) {
                        func_80122F08(0x20028);
                    }
                    func_800AA018(0x20253);
                    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                        ohSleep(1);
                    }
                    gKirbyState.isFullJump += 1;
                    func_800AA154(0x20254);
                    gKirbyState.unk3C = 4;
                    gKirbyState.unk44 = 4;
                    gKirbyState.isFullJump = 0;
                    gKirbyState.jumpHeight = 0;
                    /* fallthrough */
                case 4:
                    D_800E8920[omCurrentObj->objId] = 0;
                    id = omCurrentObj->objId;
                    if (D_800E8AE0[id] & 6) {
                        D_800E3750[id] = -0.4f;
                        D_800E3C90[omCurrentObj->objId] = 9.0f;
                    } else {
                        D_800E3750[id] = -0.980665f;
                        D_800E3C90[omCurrentObj->objId] = 18.0f;
                    }
                    func_800AA018(0x20252);
                    break;
                case 5:
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                    func_800AA018(0x20255);
                    break;
                case 6:
                    gKirbyState.unk30 = 0;
                    play_sound(0x41);
                    D_800E9720[omCurrentObj->objId] = 3;
                    func_800AA018(0x20253);
                    id = omCurrentObj->objId;
                    cnt = D_800E9560[id];
                    if (cnt != 0) {
                        D_800E9560[id] = cnt - 1;
                        D_800E3210[omCurrentObj->objId] = 8.0f;
                        D_800E3750[omCurrentObj->objId] = -1.0f;
                        D_800E3C90[omCurrentObj->objId] = 8.0f;
                        D_800E8920[omCurrentObj->objId] = 0;
                        ohSleep(0xA);
                    } else {
                        D_800E3750[id] = 0.0f;
                        id = omCurrentObj->objId;
                        D_800E3210[id] = D_800E3750[id];
                        D_800E3C90[omCurrentObj->objId] = 65535.0f;
                        ohSleep(2);
                    }
                    gKirbyState.unk30 += 1;
                    break;
                case 7:
                    gKirbyState.unk40 = 0.0f;
                    if (D_800E8920[omCurrentObj->objId] != 0) {
                        play_sound(0x121);
                    }
                    func_80122F08(0x20029);
                    break;
            }
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80189914_ovl3.s")
#endif

void func_8018B188_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            D_800EA520[omCurrentObj->objId] = 1;
            D_800EBBE0[omCurrentObj->objId] = func_801693C4_ovl3(0x12);
            D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32 = 0;
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 46/1674, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming; the tail:/spin: labels are the ROM's genuine shared exit/merge points across the per-kind switch, not a ladder) so it seals verbatim. Queued for the permuter. */
/* PORT: the mixed-copy (action 0x3E) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_8018B228_ovl3.s (via m2c). While
 * the ride is live (D_800EA520) it draws the kind-picked aura overlay
 * (D_80195910..D_80195F3C for kinds 2-7), runs the tick prologue, and
 * either services plain input (ride not live) or the -0.980665/-0.4
 * fall test with the 0x120 thud and terrain particle. Kind 0 is the
 * roulette: when the pick anim ends it rolls a fresh kind 2-7 (never
 * repeating D_80198840, staged through the D_800D71F8 scratch), sets
 * the 0x12 latch and the kind's PlyEntry handle. Kind 1 melts: a 10
 * tick D_80196048/D_8019212C flash, then it waits for the coroutine.
 * Kinds 2-7 run their D_80191F4C.. hitboxes plus a per-kind phase
 * machine (0 dress, 1 idle, 2 walk with the turn latch, 3 jump --
 * ceiling kills the rise -- 4 fall, 5 land; kind 4/7 add the 6
 * double-jump buffer and kind 7 the rolling phase 7 with the
 * slope-signed drift/cap formula, gravel above speed 6/3 every 3rd
 * frame, and the wheel spin into DObj [1]'s pitch with the 0x121
 * full-turn thud), with gravity while moving and a wall hit freezing
 * the drive (kinds 4/6/7). All kinds except the melt then run the
 * shared tail: a scripted grab or B (with the drop timer spent) melts
 * to kind 1, the turn poll arms the latch, a kind change re-triggers
 * the coroutine through the D_800E9AA0 mirror, else a phase change
 * does.
 *
 * Port notes: func_80121828's raw bit args are 18.0f / -0.4f / 9.0f;
 * m2c's D_800D71E8.unk10 is the file's D_800D71F8 random scratch; the
 * floor normal read (m2c's D_8012BCA8.unk4) is D_8012BCA8[1];
 * D_800DFBD0[...]->unk4->unk30 is DObj list entry [1]'s angle.v.x;
 * the plylib helpers are void-arg on PC (func_80120AF8 takes the
 * accel Vector whose .y m2c calls sp60); func_80123240's result is an
 * s32 sound id checked against -1; the D_800E9AA0 cells are the
 * MultiType union accessed .as_u32; unk15C takes (u32)(uintptr_t). */
void func_8018B228_ovl3(s32 arg0) {
    s32 func_80121828(f32, f32, f32, f32);
    s32 func_80121C90(void);
    s32 func_80121194(void);
    void func_801219C8(void);
    void func_8011EBD4(void);
    void func_8011ED68(void);
    void func_80120AF8(Vector *);
    s32 func_800AA888(s32);
    s32 func_801231D8(void);
    s32 func_80123240(void);
    f32 func_800F8824(Vector *, f32);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern Vector *D_8012BCA8[];
    extern u32 D_800BE4EC;
    extern s32 D_80198840_ovl3;
    extern u8 D_80190944_ovl3[];
    extern u8 D_801909AC_ovl3[];
    extern u8 D_80190A14_ovl3[];
    extern u8 D_80190A7C_ovl3[];
    extern u8 D_80190AE4_ovl3[];
    extern u8 D_80191F4C_ovl3[];
    extern u8 D_80191F90_ovl3[];
    extern u8 D_80191FF8_ovl3[];
    extern u8 D_80192060_ovl3[];
    extern u8 D_801920A4_ovl3[];
    extern u8 D_801920E8_ovl3[];
    extern u8 D_8019212C_ovl3[];
    extern u8 D_80195910_ovl3[];
    extern u8 D_80195A4C_ovl3[];
    extern u8 D_80195B88_ovl3[];
    extern u8 D_80195CC4_ovl3[];
    extern u8 D_80195E00_ovl3[];
    extern u8 D_80195F3C_ovl3[];
    extern u8 D_80196048_ovl3[];
    Vector accel;
    f32 slope;
    f32 base;
    f32 fric;
    f32 f;
    s32 bail;
    s32 cnt;
    s32 snd;
    s32 id;

    id = omCurrentObj->objId;
    if (D_800EA520[id] != 0) {
        switch (D_800E98E0[id]) {
            case 2:
                func_8015449C_ovl3(D_80195910_ovl3, 0);
                break;
            case 3:
                func_8015449C_ovl3(D_80195A4C_ovl3, 0);
                break;
            case 4:
                func_8015449C_ovl3(D_80195B88_ovl3, 0);
                break;
            case 5:
                func_8015449C_ovl3(D_80195CC4_ovl3, 0);
                break;
            case 6:
                func_8015449C_ovl3(D_80195E00_ovl3, 0);
                break;
            case 7:
                func_8015449C_ovl3(D_80195F3C_ovl3, 0);
                break;
        }
    }
    func_80153984_ovl3();
    func_8011CF58();
    if (D_800EA520[omCurrentObj->objId] == 0) {
        func_801217B8();
    } else if ((gKirbyState.unk44 != 3)
               && (func_80121828(-0.980665f, 18.0f, -0.4f, 9.0f) != 0)) {
        func_800FB914(2);
        func_800BB468(0, 0);
        play_sound(0x120);
        id = omCurrentObj->objId;
        func_800A7F74(5, 1, func_801231D8(), gEntitiesNextPosXArray[id],
                      gEntitiesNextPosYArray[id], gEntitiesNextPosZArray[id]);
    }
    id = omCurrentObj->objId;
    switch (D_800E98E0[id]) {
        case 0:
            if (func_800AF230() != 0) {
                do {
                    D_800D71F8 = random_soft_s32_range(6) + 2;
                } while (D_800D71F8 == D_80198840_ovl3);
                D_80198840_ovl3 = D_800D71F8;
                D_800E98E0[omCurrentObj->objId] = D_80198840_ovl3;
                D_800EC2E0[func_801693C4_ovl3(0x12)].as_u32 = 1;
                switch (D_800E98E0[omCurrentObj->objId]) {
                    case 2:
                        gKirbyState.unk15C = (u32) (uintptr_t) D_80190A14_ovl3;
                        break;
                    case 4:
                        gKirbyState.unk15C = (u32) (uintptr_t) D_80190A7C_ovl3;
                        break;
                    case 5:
                        gKirbyState.unk15C = (u32) (uintptr_t) D_80190AE4_ovl3;
                        break;
                    case 7:
                        gKirbyState.unk15C = (u32) (uintptr_t) D_801909AC_ovl3;
                        break;
                    default:
                        gKirbyState.unk15C = (u32) (uintptr_t) D_80190944_ovl3;
                        break;
                }
            }
            goto tail;
        case 1:
            if (gKirbyState.unk30 != 0) {
                func_8011D67C();
                return;
            }
            id = omCurrentObj->objId;
            cnt = D_800E9720[id];
            if (cnt != 0) {
                D_800E9720[id] = cnt - 1;
                func_8015449C_ovl3(D_80196048_ovl3, 0);
                func_80111C4C(func_80111A04(D_8019212C_ovl3, omCurrentObj->objId));
                return;
            }
            return;
        case 2:
            func_80111C4C(func_80111A04(D_80191F4C_ovl3, id));
            id = omCurrentObj->objId;
            if (D_800EA520[id] != 0) {
                switch (gKirbyState.unk44) {
                    case 0:
                        if (func_800AF230() != 0) {
                            if (D_800E8920[omCurrentObj->objId] != 0) {
                                gKirbyState.unk44 = 1;
                            } else {
                                gKirbyState.unk44 = 4;
                            }
                        }
                        break;
                    case 1:
                        if (func_80121C90() != 0) {
                            gKirbyState.unk44 = 2;
                        } else if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800E8920[omCurrentObj->objId] == 0) {
                            gKirbyState.unk44 = 4;
                        }
                        break;
                    case 2:
                        if (!(gKirbyState.isTurning & 1)) {
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 3;
                            } else if (D_800E8920[id] == 0) {
                                gKirbyState.unk44 = 4;
                            } else if (!(gKirbyController.buttonHeld & 0x300)
                                       && (D_800E64D0[id] == 0.0f)) {
                                gKirbyState.unk44 = 1;
                            }
                        }
                        if (gKirbyState.unk3C == gKirbyState.unk44) {
                            func_801219C8();
                        }
                        break;
                    case 3:
                        if (gKirbyState.ceilingCollisionNext != 0) {
                            D_800E3210[id] = 0.0f;
                            gKirbyState.unk44 = 4;
                        } else if (gKirbyState.isFullJump == 0) {
                            func_8011EBD4();
                        }
                        break;
                    case 4:
                        if (D_800E8920[id] != 0) {
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 3;
                            } else {
                                gKirbyState.unk44 = 5;
                            }
                        } else if ((gKirbyState.horizontalCollision != 0)
                                   && (gKirbyController.buttonPressed & 0x8000)) {
                            gKirbyState.unk44 = 3;
                        }
                        break;
                    case 5:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (gKirbyController.buttonHeld & 0x300) {
                            gKirbyState.unk44 = 2;
                        } else if (func_800AF230() != 0) {
                            gKirbyState.unk44 = 1;
                        }
                        break;
                }
                if (gKirbyState.unk44 != 0) {
                    func_8011ED68();
                }
            }
            goto tail;
        case 3:
            func_80111C4C(func_80111A04(D_80191F90_ovl3, id));
            goto tail;
        case 4:
            func_80111C4C(func_80111A04(D_80191FF8_ovl3, id));
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                D_800E9560[id] = 0xA;
                id = omCurrentObj->objId;
            }
            if (D_800EA520[id] != 0) {
                switch (gKirbyState.unk44) {
                    case 0:
                        if (func_800AF230() != 0) {
                            if (D_800E8920[omCurrentObj->objId] != 0) {
                                gKirbyState.unk44 = 1;
                            } else {
                                gKirbyState.unk44 = 4;
                            }
                        }
                        break;
                    case 1:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800E8920[id] == 0) {
                            gKirbyState.unk44 = 4;
                        }
                        break;
                    case 3:
                        if (gKirbyState.ceilingCollisionNext != 0) {
                            D_800E3210[id] = 0.0f;
                            gKirbyState.unk44 = 4;
                        } else {
                            if (gKirbyState.isFullJump == 0) {
                                func_8011EBD4();
                            }
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 6;
                            }
                        }
                        break;
                    case 4:
                        if (D_800E8920[id] != 0) {
                            gKirbyState.unk44 = 5;
                        } else if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 6;
                        }
                        break;
                    case 5:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (func_800AF230() != 0) {
                            gKirbyState.unk44 = 1;
                        }
                        break;
                    case 6:
                        if (gKirbyState.unk30 != 0) {
                            gKirbyState.unk44 = 4;
                        } else {
                            cnt = D_800E9720[id];
                            if (cnt == 0) {
                                if (gKirbyController.buttonPressed & 0x8000) {
                                    gKirbyState.unk44 = 6;
                                    gKirbyState.unk3C += 1;
                                }
                            } else {
                                D_800E9720[id] = cnt - 1;
                            }
                        }
                        break;
                }
                id = omCurrentObj->objId;
                if (gKirbyState.horizontalCollision == 0) {
                    if ((D_800E8920[id] == 0) && (gKirbyState.unk44 != 0)) {
                        func_8011ED68();
                    }
                } else {
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                }
            }
            goto tail;
        case 5:
            func_80111C4C(func_80111A04(D_80192060_ovl3, id));
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                D_800E9560[id] = 3;
                id = omCurrentObj->objId;
            }
            if (D_800EA520[id] != 0) {
                switch (gKirbyState.unk44) {
                    case 0:
                        if (func_800AF230() != 0) {
                            if (D_800E8920[omCurrentObj->objId] != 0) {
                                gKirbyState.unk44 = 1;
                            } else {
                                gKirbyState.unk44 = 4;
                            }
                        }
                        break;
                    case 1:
                        if (func_80121C90() != 0) {
                            gKirbyState.unk44 = 2;
                        } else if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800E8920[omCurrentObj->objId] == 0) {
                            gKirbyState.unk44 = 4;
                        }
                        break;
                    case 2:
                        if (!(gKirbyState.isTurning & 1)) {
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 3;
                            } else if (D_800E8920[id] == 0) {
                                gKirbyState.unk44 = 4;
                            } else if (!(gKirbyController.buttonHeld & 0x300)
                                       && (D_800E64D0[id] == 0.0f)) {
                                gKirbyState.unk44 = 1;
                            }
                        }
                        if (gKirbyState.unk3C == gKirbyState.unk44) {
                            func_801219C8();
                        }
                        break;
                    case 3:
                        if (gKirbyState.ceilingCollisionNext != 0) {
                            D_800E3210[id] = 0.0f;
                            gKirbyState.unk44 = 4;
                        } else if (gKirbyState.isFullJump == 0) {
                            func_8011EBD4();
                        }
                        break;
                    case 4:
                        if (D_800E8920[id] != 0) {
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 3;
                            } else {
                                gKirbyState.unk44 = 5;
                            }
                            if (func_800AA888(0x20025) == 0) {
                                func_80122F08(0x20025);
                            }
                        } else if ((D_800E9560[id] != 0)
                                   && (gKirbyController.buttonPressed & 0x8000)) {
                            gKirbyState.unk44 = 3;
                        }
                        break;
                    case 5:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (gKirbyController.buttonHeld & 0x300) {
                            gKirbyState.unk44 = 2;
                        } else if (func_800AF230() != 0) {
                            gKirbyState.unk44 = 1;
                        }
                        break;
                }
                if (gKirbyState.unk44 != 0) {
                    func_8011ED68();
                }
            }
            goto tail;
        case 6:
            func_80111C4C(func_80111A04(D_801920A4_ovl3, id));
            id = omCurrentObj->objId;
            if (D_800EA520[id] != 0) {
                switch (gKirbyState.unk44) {
                    case 0:
                        if (func_800AF230() != 0) {
                            if (D_800E8920[omCurrentObj->objId] != 0) {
                                gKirbyState.unk44 = 1;
                            } else {
                                gKirbyState.unk44 = 4;
                            }
                        }
                        break;
                    case 1:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800E8920[id] == 0) {
                            gKirbyState.unk44 = 4;
                        }
                        break;
                    case 3:
                        if (gKirbyState.ceilingCollisionNext != 0) {
                            D_800E3210[id] = 0.0f;
                            gKirbyState.unk44 = 4;
                        }
                        if (gKirbyState.isFullJump == 0) {
                            func_8011EBD4();
                        }
                        break;
                    case 4:
                        if (D_800E8920[id] != 0) {
                            gKirbyState.unk44 = 5;
                        }
                        break;
                    case 5:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (func_800AF230() != 0) {
                            gKirbyState.unk44 = 1;
                        }
                        break;
                }
                id = omCurrentObj->objId;
                if (gKirbyState.horizontalCollision == 0) {
                    if ((D_800E8920[id] == 0) && (gKirbyState.unk44 != 0)) {
                        func_8011ED68();
                    }
                } else {
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                }
            }
            goto tail;
        case 7:
            func_80111C4C(func_80111A04(D_801920E8_ovl3, id));
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                D_800E9560[id] = 0xA;
                id = omCurrentObj->objId;
            }
            if (D_800EA520[id] != 0) {
                if (D_800E8920[id] != 0) {
                    id = omCurrentObj->objId;
                    D_800EA6E0[id] = -func_800F8824(D_8012BCA8[1], D_800E17D0[id]);
                } else {
                    D_800EA6E0[id] = 0.0f;
                }
                switch (gKirbyState.unk44) {
                    case 0:
                        if (func_800AF230() != 0) {
                            id = omCurrentObj->objId;
                            if (D_800E8920[id] != 0) {
                                if (D_800EA6E0[id] == 0.0f) {
                                    gKirbyState.unk44 = 1;
                                } else {
                                    gKirbyState.unk44 = 7;
                                }
                            } else {
                                gKirbyState.unk44 = 4;
                            }
                        }
                        break;
                    case 1:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800E8920[omCurrentObj->objId] == 0) {
                            gKirbyState.unk44 = 4;
                        }
                        break;
                    case 3:
                        if (gKirbyState.ceilingCollisionNext != 0) {
                            D_800E3210[omCurrentObj->objId] = 0.0f;
                            gKirbyState.unk44 = 4;
                        } else {
                            if (gKirbyState.isFullJump == 0) {
                                func_8011EBD4();
                            }
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 6;
                            }
                        }
                        break;
                    case 4:
                        id = omCurrentObj->objId;
                        if (D_800E8920[id] != 0) {
                            if (D_800E64D0[id] != 0.0f) {
                                gKirbyState.unk44 = 7;
                            } else {
                                gKirbyState.unk44 = 5;
                            }
                        } else if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 6;
                        }
                        break;
                    case 5:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800EA6E0[omCurrentObj->objId] != 0.0f) {
                            gKirbyState.unk44 = 7;
                        } else if (func_800AF230() != 0) {
                            gKirbyState.unk44 = 1;
                        }
                        break;
                    case 6:
                        if (gKirbyState.unk30 != 0) {
                            gKirbyState.unk44 = 4;
                        } else {
                            cnt = D_800E9720[omCurrentObj->objId];
                            if (cnt == 0) {
                                if (gKirbyController.buttonPressed & 0x8000) {
                                    gKirbyState.unk44 = 6;
                                    gKirbyState.unk3C += 1;
                                }
                            } else {
                                D_800E9720[omCurrentObj->objId] = cnt - 1;
                            }
                        }
                        break;
                    case 7:
                        id = omCurrentObj->objId;
                        if (D_800E8920[id] == 0) {
                            func_80120A28();
                            goto spin;
                        }
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                            break;
                        }
                        if ((D_800E64D0[id] == 0.0f) && (D_800E6850[id] == 0.0f)) {
                            gKirbyState.unk44 = 1;
                            break;
                        }
                        func_80120AF8(&accel);
                        id = omCurrentObj->objId;
                        slope = D_800EA6E0[id];
                        if (slope < 0.0f) {
                            base = -0.1f * accel.y;
                        } else {
                            base = 0.1f * accel.y;
                        }
                        if (slope == 0.0f) {
                            fric = 0.0f;
                        } else if (!(D_800E8AE0[id] & 6)) {
                            fric = 2.0f;
                        } else {
                            fric = 1.0f;
                        }
                        f = (ABSF(slope) * 10.0f * base) + base;
                        if (D_800E6A10[id] == -1.0f) {
                            f = -f;
                        }
                        D_800E6690[id] = f;
                        f = (ABSF(slope) * 4.0f * fric) + fric;
                        D_800E6850[omCurrentObj->objId] = ABSF(f);
                        id = omCurrentObj->objId;
                        f = ABSF(D_800E64D0[id]);
                        if (!(D_800E8AE0[id] & 6)) {
                            base = 6.0f;
                        } else {
                            base = 3.0f;
                        }
                        if ((base < f) && ((D_800BE4EC % 3U) == 0)) {
                            snd = func_80123240();
                            if (snd != -1) {
                                id = omCurrentObj->objId;
                                func_800A7F74(5, 1, snd, gEntitiesNextPosXArray[id],
                                              gEntitiesNextPosYArray[id],
                                              gEntitiesNextPosZArray[id]);
                            }
                        }
                    spin:
                        f = D_800E64D0[omCurrentObj->objId];
                        if (f != 0.0f) {
                            gKirbyState.unk40 += (f * 4.0f * 3.1415927f) / 180.0f;
                            id = omCurrentObj->objId;
                            if (D_800E6A10[id] == 1.0f) {
                                D_800DFBD0[id][1]->angle.v.x = gKirbyState.unk40;
                            } else {
                                D_800DFBD0[id][1]->angle.v.x = -gKirbyState.unk40;
                            }
                            if (gKirbyState.unk40 < 0.0f) {
                                gKirbyState.unk40 += 6.2831855f;
                                id = omCurrentObj->objId;
                                if (D_800E8920[id] != 0) {
                                    if (ABSF(D_800E64D0[id]) > 1.0f) {
                                        play_sound(0x121);
                                    }
                                }
                            } else if (gKirbyState.unk40 >= 6.2831855f) {
                                gKirbyState.unk40 -= 6.2831855f;
                                id = omCurrentObj->objId;
                                if (D_800E8920[id] != 0) {
                                    if (ABSF(D_800E64D0[id]) > 1.0f) {
                                        play_sound(0x121);
                                    }
                                }
                            }
                        }
                        break;
                }
                id = omCurrentObj->objId;
                if (gKirbyState.horizontalCollision == 0) {
                    if ((D_800E8920[id] == 0) && (gKirbyState.unk44 != 0)) {
                        func_8011ED68();
                    }
                } else {
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                }
            }
            goto tail;
        default:
            goto tail;
    }
tail:
    id = omCurrentObj->objId;
    if (D_800EA520[id] != 0) {
        bail = 0;
        if (gKirbyState.unk17 != 0) {
            bail = 1;
        } else if ((gKirbyState.unk16 == 0) && (gKirbyController.buttonPressed & 0x4000)) {
            bail = 1;
        }
        if (bail != 0) {
            D_800E98E0[id] = 1;
        } else if ((gKirbyState.unk44 != 7) && !(gKirbyState.isTurning & 1)
                   && (func_80121194() != 0)) {
            gKirbyState.isTurning |= 1;
        }
    }
    id = omCurrentObj->objId;
    if (D_800E98E0[id] != D_800E9AA0[id].as_u32) {
        assign_new_process_entry(gEntityGObjProcessArray[id], func_8016C510_ovl3);
        id = omCurrentObj->objId;
        D_800E9AA0[id].as_u32 = (u32) D_800E98E0[id];
        return;
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[id], func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#elif defined(PORT)
/* PORT: the mixed-copy (action 0x3E) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_8018B228_ovl3.s (via m2c). While
 * the ride is live (D_800EA520) it draws the kind-picked aura overlay
 * (D_80195910..D_80195F3C for kinds 2-7), runs the tick prologue, and
 * either services plain input (ride not live) or the -0.980665/-0.4
 * fall test with the 0x120 thud and terrain particle. Kind 0 is the
 * roulette: when the pick anim ends it rolls a fresh kind 2-7 (never
 * repeating D_80198840, staged through the D_800D71F8 scratch), sets
 * the 0x12 latch and the kind's PlyEntry handle. Kind 1 melts: a 10
 * tick D_80196048/D_8019212C flash, then it waits for the coroutine.
 * Kinds 2-7 run their D_80191F4C.. hitboxes plus a per-kind phase
 * machine (0 dress, 1 idle, 2 walk with the turn latch, 3 jump --
 * ceiling kills the rise -- 4 fall, 5 land; kind 4/7 add the 6
 * double-jump buffer and kind 7 the rolling phase 7 with the
 * slope-signed drift/cap formula, gravel above speed 6/3 every 3rd
 * frame, and the wheel spin into DObj [1]'s pitch with the 0x121
 * full-turn thud), with gravity while moving and a wall hit freezing
 * the drive (kinds 4/6/7). All kinds except the melt then run the
 * shared tail: a scripted grab or B (with the drop timer spent) melts
 * to kind 1, the turn poll arms the latch, a kind change re-triggers
 * the coroutine through the D_800E9AA0 mirror, else a phase change
 * does.
 *
 * Port notes: func_80121828's raw bit args are 18.0f / -0.4f / 9.0f;
 * m2c's D_800D71E8.unk10 is the file's D_800D71F8 random scratch; the
 * floor normal read (m2c's D_8012BCA8.unk4) is D_8012BCA8[1];
 * D_800DFBD0[...]->unk4->unk30 is DObj list entry [1]'s angle.v.x;
 * the plylib helpers are void-arg on PC (func_80120AF8 takes the
 * accel Vector whose .y m2c calls sp60); func_80123240's result is an
 * s32 sound id checked against -1; the D_800E9AA0 cells are the
 * MultiType union accessed .as_u32; unk15C takes (u32)(uintptr_t). */
void func_8018B228_ovl3(s32 arg0) {
    s32 func_80121828(f32, f32, f32, f32);
    s32 func_80121C90(void);
    s32 func_80121194(void);
    void func_801219C8(void);
    void func_8011EBD4(void);
    void func_8011ED68(void);
    void func_80120AF8(Vector *);
    s32 func_800AA888(s32);
    s32 func_801231D8(void);
    s32 func_80123240(void);
    f32 func_800F8824(Vector *, f32);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern Vector *D_8012BCA8[];
    extern u32 D_800BE4EC;
    extern s32 D_80198840_ovl3;
    extern u8 D_80190944_ovl3[];
    extern u8 D_801909AC_ovl3[];
    extern u8 D_80190A14_ovl3[];
    extern u8 D_80190A7C_ovl3[];
    extern u8 D_80190AE4_ovl3[];
    extern u8 D_80191F4C_ovl3[];
    extern u8 D_80191F90_ovl3[];
    extern u8 D_80191FF8_ovl3[];
    extern u8 D_80192060_ovl3[];
    extern u8 D_801920A4_ovl3[];
    extern u8 D_801920E8_ovl3[];
    extern u8 D_8019212C_ovl3[];
    extern u8 D_80195910_ovl3[];
    extern u8 D_80195A4C_ovl3[];
    extern u8 D_80195B88_ovl3[];
    extern u8 D_80195CC4_ovl3[];
    extern u8 D_80195E00_ovl3[];
    extern u8 D_80195F3C_ovl3[];
    extern u8 D_80196048_ovl3[];
    Vector accel;
    f32 slope;
    f32 base;
    f32 fric;
    f32 f;
    s32 bail;
    s32 cnt;
    s32 snd;
    s32 id;

    id = omCurrentObj->objId;
    if (D_800EA520[id] != 0) {
        switch (D_800E98E0[id]) {
            case 2:
                func_8015449C_ovl3(D_80195910_ovl3, 0);
                break;
            case 3:
                func_8015449C_ovl3(D_80195A4C_ovl3, 0);
                break;
            case 4:
                func_8015449C_ovl3(D_80195B88_ovl3, 0);
                break;
            case 5:
                func_8015449C_ovl3(D_80195CC4_ovl3, 0);
                break;
            case 6:
                func_8015449C_ovl3(D_80195E00_ovl3, 0);
                break;
            case 7:
                func_8015449C_ovl3(D_80195F3C_ovl3, 0);
                break;
        }
    }
    func_80153984_ovl3();
    func_8011CF58();
    if (D_800EA520[omCurrentObj->objId] == 0) {
        func_801217B8();
    } else if ((gKirbyState.unk44 != 3)
               && (func_80121828(-0.980665f, 18.0f, -0.4f, 9.0f) != 0)) {
        func_800FB914(2);
        func_800BB468(0, 0);
        play_sound(0x120);
        id = omCurrentObj->objId;
        func_800A7F74(5, 1, func_801231D8(), gEntitiesNextPosXArray[id],
                      gEntitiesNextPosYArray[id], gEntitiesNextPosZArray[id]);
    }
    id = omCurrentObj->objId;
    switch (D_800E98E0[id]) {
        case 0:
            if (func_800AF230() != 0) {
                do {
                    D_800D71F8 = random_soft_s32_range(6) + 2;
                } while (D_800D71F8 == D_80198840_ovl3);
                D_80198840_ovl3 = D_800D71F8;
                D_800E98E0[omCurrentObj->objId] = D_80198840_ovl3;
                D_800EC2E0[func_801693C4_ovl3(0x12)].as_u32 = 1;
                switch (D_800E98E0[omCurrentObj->objId]) {
                    case 2:
                        gKirbyState.unk15C = (u32) (uintptr_t) D_80190A14_ovl3;
                        break;
                    case 4:
                        gKirbyState.unk15C = (u32) (uintptr_t) D_80190A7C_ovl3;
                        break;
                    case 5:
                        gKirbyState.unk15C = (u32) (uintptr_t) D_80190AE4_ovl3;
                        break;
                    case 7:
                        gKirbyState.unk15C = (u32) (uintptr_t) D_801909AC_ovl3;
                        break;
                    default:
                        gKirbyState.unk15C = (u32) (uintptr_t) D_80190944_ovl3;
                        break;
                }
            }
            goto tail;
        case 1:
            if (gKirbyState.unk30 != 0) {
                func_8011D67C();
                return;
            }
            id = omCurrentObj->objId;
            cnt = D_800E9720[id];
            if (cnt != 0) {
                D_800E9720[id] = cnt - 1;
                func_8015449C_ovl3(D_80196048_ovl3, 0);
                func_80111C4C(func_80111A04(D_8019212C_ovl3, omCurrentObj->objId));
                return;
            }
            return;
        case 2:
            func_80111C4C(func_80111A04(D_80191F4C_ovl3, id));
            id = omCurrentObj->objId;
            if (D_800EA520[id] != 0) {
                switch (gKirbyState.unk44) {
                    case 0:
                        if (func_800AF230() != 0) {
                            if (D_800E8920[omCurrentObj->objId] != 0) {
                                gKirbyState.unk44 = 1;
                            } else {
                                gKirbyState.unk44 = 4;
                            }
                        }
                        break;
                    case 1:
                        if (func_80121C90() != 0) {
                            gKirbyState.unk44 = 2;
                        } else if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800E8920[omCurrentObj->objId] == 0) {
                            gKirbyState.unk44 = 4;
                        }
                        break;
                    case 2:
                        if (!(gKirbyState.isTurning & 1)) {
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 3;
                            } else if (D_800E8920[id] == 0) {
                                gKirbyState.unk44 = 4;
                            } else if (!(gKirbyController.buttonHeld & 0x300)
                                       && (D_800E64D0[id] == 0.0f)) {
                                gKirbyState.unk44 = 1;
                            }
                        }
                        if (gKirbyState.unk3C == gKirbyState.unk44) {
                            func_801219C8();
                        }
                        break;
                    case 3:
                        if (gKirbyState.ceilingCollisionNext != 0) {
                            D_800E3210[id] = 0.0f;
                            gKirbyState.unk44 = 4;
                        } else if (gKirbyState.isFullJump == 0) {
                            func_8011EBD4();
                        }
                        break;
                    case 4:
                        if (D_800E8920[id] != 0) {
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 3;
                            } else {
                                gKirbyState.unk44 = 5;
                            }
                        } else if ((gKirbyState.horizontalCollision != 0)
                                   && (gKirbyController.buttonPressed & 0x8000)) {
                            gKirbyState.unk44 = 3;
                        }
                        break;
                    case 5:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (gKirbyController.buttonHeld & 0x300) {
                            gKirbyState.unk44 = 2;
                        } else if (func_800AF230() != 0) {
                            gKirbyState.unk44 = 1;
                        }
                        break;
                }
                if (gKirbyState.unk44 != 0) {
                    func_8011ED68();
                }
            }
            goto tail;
        case 3:
            func_80111C4C(func_80111A04(D_80191F90_ovl3, id));
            goto tail;
        case 4:
            func_80111C4C(func_80111A04(D_80191FF8_ovl3, id));
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                D_800E9560[id] = 0xA;
                id = omCurrentObj->objId;
            }
            if (D_800EA520[id] != 0) {
                switch (gKirbyState.unk44) {
                    case 0:
                        if (func_800AF230() != 0) {
                            if (D_800E8920[omCurrentObj->objId] != 0) {
                                gKirbyState.unk44 = 1;
                            } else {
                                gKirbyState.unk44 = 4;
                            }
                        }
                        break;
                    case 1:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800E8920[id] == 0) {
                            gKirbyState.unk44 = 4;
                        }
                        break;
                    case 3:
                        if (gKirbyState.ceilingCollisionNext != 0) {
                            D_800E3210[id] = 0.0f;
                            gKirbyState.unk44 = 4;
                        } else {
                            if (gKirbyState.isFullJump == 0) {
                                func_8011EBD4();
                            }
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 6;
                            }
                        }
                        break;
                    case 4:
                        if (D_800E8920[id] != 0) {
                            gKirbyState.unk44 = 5;
                        } else if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 6;
                        }
                        break;
                    case 5:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (func_800AF230() != 0) {
                            gKirbyState.unk44 = 1;
                        }
                        break;
                    case 6:
                        if (gKirbyState.unk30 != 0) {
                            gKirbyState.unk44 = 4;
                        } else {
                            cnt = D_800E9720[id];
                            if (cnt == 0) {
                                if (gKirbyController.buttonPressed & 0x8000) {
                                    gKirbyState.unk44 = 6;
                                    gKirbyState.unk3C += 1;
                                }
                            } else {
                                D_800E9720[id] = cnt - 1;
                            }
                        }
                        break;
                }
                id = omCurrentObj->objId;
                if (gKirbyState.horizontalCollision == 0) {
                    if ((D_800E8920[id] == 0) && (gKirbyState.unk44 != 0)) {
                        func_8011ED68();
                    }
                } else {
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                }
            }
            goto tail;
        case 5:
            func_80111C4C(func_80111A04(D_80192060_ovl3, id));
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                D_800E9560[id] = 3;
                id = omCurrentObj->objId;
            }
            if (D_800EA520[id] != 0) {
                switch (gKirbyState.unk44) {
                    case 0:
                        if (func_800AF230() != 0) {
                            if (D_800E8920[omCurrentObj->objId] != 0) {
                                gKirbyState.unk44 = 1;
                            } else {
                                gKirbyState.unk44 = 4;
                            }
                        }
                        break;
                    case 1:
                        if (func_80121C90() != 0) {
                            gKirbyState.unk44 = 2;
                        } else if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800E8920[omCurrentObj->objId] == 0) {
                            gKirbyState.unk44 = 4;
                        }
                        break;
                    case 2:
                        if (!(gKirbyState.isTurning & 1)) {
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 3;
                            } else if (D_800E8920[id] == 0) {
                                gKirbyState.unk44 = 4;
                            } else if (!(gKirbyController.buttonHeld & 0x300)
                                       && (D_800E64D0[id] == 0.0f)) {
                                gKirbyState.unk44 = 1;
                            }
                        }
                        if (gKirbyState.unk3C == gKirbyState.unk44) {
                            func_801219C8();
                        }
                        break;
                    case 3:
                        if (gKirbyState.ceilingCollisionNext != 0) {
                            D_800E3210[id] = 0.0f;
                            gKirbyState.unk44 = 4;
                        } else if (gKirbyState.isFullJump == 0) {
                            func_8011EBD4();
                        }
                        break;
                    case 4:
                        if (D_800E8920[id] != 0) {
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 3;
                            } else {
                                gKirbyState.unk44 = 5;
                            }
                            if (func_800AA888(0x20025) == 0) {
                                func_80122F08(0x20025);
                            }
                        } else if ((D_800E9560[id] != 0)
                                   && (gKirbyController.buttonPressed & 0x8000)) {
                            gKirbyState.unk44 = 3;
                        }
                        break;
                    case 5:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (gKirbyController.buttonHeld & 0x300) {
                            gKirbyState.unk44 = 2;
                        } else if (func_800AF230() != 0) {
                            gKirbyState.unk44 = 1;
                        }
                        break;
                }
                if (gKirbyState.unk44 != 0) {
                    func_8011ED68();
                }
            }
            goto tail;
        case 6:
            func_80111C4C(func_80111A04(D_801920A4_ovl3, id));
            id = omCurrentObj->objId;
            if (D_800EA520[id] != 0) {
                switch (gKirbyState.unk44) {
                    case 0:
                        if (func_800AF230() != 0) {
                            if (D_800E8920[omCurrentObj->objId] != 0) {
                                gKirbyState.unk44 = 1;
                            } else {
                                gKirbyState.unk44 = 4;
                            }
                        }
                        break;
                    case 1:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800E8920[id] == 0) {
                            gKirbyState.unk44 = 4;
                        }
                        break;
                    case 3:
                        if (gKirbyState.ceilingCollisionNext != 0) {
                            D_800E3210[id] = 0.0f;
                            gKirbyState.unk44 = 4;
                        }
                        if (gKirbyState.isFullJump == 0) {
                            func_8011EBD4();
                        }
                        break;
                    case 4:
                        if (D_800E8920[id] != 0) {
                            gKirbyState.unk44 = 5;
                        }
                        break;
                    case 5:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (func_800AF230() != 0) {
                            gKirbyState.unk44 = 1;
                        }
                        break;
                }
                id = omCurrentObj->objId;
                if (gKirbyState.horizontalCollision == 0) {
                    if ((D_800E8920[id] == 0) && (gKirbyState.unk44 != 0)) {
                        func_8011ED68();
                    }
                } else {
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                }
            }
            goto tail;
        case 7:
            func_80111C4C(func_80111A04(D_801920E8_ovl3, id));
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                D_800E9560[id] = 0xA;
                id = omCurrentObj->objId;
            }
            if (D_800EA520[id] != 0) {
                if (D_800E8920[id] != 0) {
                    id = omCurrentObj->objId;
                    D_800EA6E0[id] = -func_800F8824(D_8012BCA8[1], D_800E17D0[id]);
                } else {
                    D_800EA6E0[id] = 0.0f;
                }
                switch (gKirbyState.unk44) {
                    case 0:
                        if (func_800AF230() != 0) {
                            id = omCurrentObj->objId;
                            if (D_800E8920[id] != 0) {
                                if (D_800EA6E0[id] == 0.0f) {
                                    gKirbyState.unk44 = 1;
                                } else {
                                    gKirbyState.unk44 = 7;
                                }
                            } else {
                                gKirbyState.unk44 = 4;
                            }
                        }
                        break;
                    case 1:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800E8920[omCurrentObj->objId] == 0) {
                            gKirbyState.unk44 = 4;
                        }
                        break;
                    case 3:
                        if (gKirbyState.ceilingCollisionNext != 0) {
                            D_800E3210[omCurrentObj->objId] = 0.0f;
                            gKirbyState.unk44 = 4;
                        } else {
                            if (gKirbyState.isFullJump == 0) {
                                func_8011EBD4();
                            }
                            if (gKirbyController.buttonPressed & 0x8000) {
                                gKirbyState.unk44 = 6;
                            }
                        }
                        break;
                    case 4:
                        id = omCurrentObj->objId;
                        if (D_800E8920[id] != 0) {
                            if (D_800E64D0[id] != 0.0f) {
                                gKirbyState.unk44 = 7;
                            } else {
                                gKirbyState.unk44 = 5;
                            }
                        } else if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 6;
                        }
                        break;
                    case 5:
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                        } else if (D_800EA6E0[omCurrentObj->objId] != 0.0f) {
                            gKirbyState.unk44 = 7;
                        } else if (func_800AF230() != 0) {
                            gKirbyState.unk44 = 1;
                        }
                        break;
                    case 6:
                        if (gKirbyState.unk30 != 0) {
                            gKirbyState.unk44 = 4;
                        } else {
                            cnt = D_800E9720[omCurrentObj->objId];
                            if (cnt == 0) {
                                if (gKirbyController.buttonPressed & 0x8000) {
                                    gKirbyState.unk44 = 6;
                                    gKirbyState.unk3C += 1;
                                }
                            } else {
                                D_800E9720[omCurrentObj->objId] = cnt - 1;
                            }
                        }
                        break;
                    case 7:
                        id = omCurrentObj->objId;
                        if (D_800E8920[id] == 0) {
                            func_80120A28();
                            goto spin;
                        }
                        if (gKirbyController.buttonPressed & 0x8000) {
                            gKirbyState.unk44 = 3;
                            break;
                        }
                        if ((D_800E64D0[id] == 0.0f) && (D_800E6850[id] == 0.0f)) {
                            gKirbyState.unk44 = 1;
                            break;
                        }
                        func_80120AF8(&accel);
                        id = omCurrentObj->objId;
                        slope = D_800EA6E0[id];
                        if (slope < 0.0f) {
                            base = -0.1f * accel.y;
                        } else {
                            base = 0.1f * accel.y;
                        }
                        if (slope == 0.0f) {
                            fric = 0.0f;
                        } else if (!(D_800E8AE0[id] & 6)) {
                            fric = 2.0f;
                        } else {
                            fric = 1.0f;
                        }
                        f = (ABSF(slope) * 10.0f * base) + base;
                        if (D_800E6A10[id] == -1.0f) {
                            f = -f;
                        }
                        D_800E6690[id] = f;
                        f = (ABSF(slope) * 4.0f * fric) + fric;
                        D_800E6850[omCurrentObj->objId] = ABSF(f);
                        id = omCurrentObj->objId;
                        f = ABSF(D_800E64D0[id]);
                        if (!(D_800E8AE0[id] & 6)) {
                            base = 6.0f;
                        } else {
                            base = 3.0f;
                        }
                        if ((base < f) && ((D_800BE4EC % 3U) == 0)) {
                            snd = func_80123240();
                            if (snd != -1) {
                                id = omCurrentObj->objId;
                                func_800A7F74(5, 1, snd, gEntitiesNextPosXArray[id],
                                              gEntitiesNextPosYArray[id],
                                              gEntitiesNextPosZArray[id]);
                            }
                        }
                    spin:
                        f = D_800E64D0[omCurrentObj->objId];
                        if (f != 0.0f) {
                            gKirbyState.unk40 += (f * 4.0f * 3.1415927f) / 180.0f;
                            id = omCurrentObj->objId;
                            if (D_800E6A10[id] == 1.0f) {
                                D_800DFBD0[id][1]->angle.v.x = gKirbyState.unk40;
                            } else {
                                D_800DFBD0[id][1]->angle.v.x = -gKirbyState.unk40;
                            }
                            if (gKirbyState.unk40 < 0.0f) {
                                gKirbyState.unk40 += 6.2831855f;
                                id = omCurrentObj->objId;
                                if (D_800E8920[id] != 0) {
                                    if (ABSF(D_800E64D0[id]) > 1.0f) {
                                        play_sound(0x121);
                                    }
                                }
                            } else if (gKirbyState.unk40 >= 6.2831855f) {
                                gKirbyState.unk40 -= 6.2831855f;
                                id = omCurrentObj->objId;
                                if (D_800E8920[id] != 0) {
                                    if (ABSF(D_800E64D0[id]) > 1.0f) {
                                        play_sound(0x121);
                                    }
                                }
                            }
                        }
                        break;
                }
                id = omCurrentObj->objId;
                if (gKirbyState.horizontalCollision == 0) {
                    if ((D_800E8920[id] == 0) && (gKirbyState.unk44 != 0)) {
                        func_8011ED68();
                    }
                } else {
                    D_800E6690[id] = 0.0f;
                    id = omCurrentObj->objId;
                    D_800E64D0[id] = D_800E6690[id];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                }
            }
            goto tail;
        default:
            goto tail;
    }
tail:
    id = omCurrentObj->objId;
    if (D_800EA520[id] != 0) {
        bail = 0;
        if (gKirbyState.unk17 != 0) {
            bail = 1;
        } else if ((gKirbyState.unk16 == 0) && (gKirbyController.buttonPressed & 0x4000)) {
            bail = 1;
        }
        if (bail != 0) {
            D_800E98E0[id] = 1;
        } else if ((gKirbyState.unk44 != 7) && !(gKirbyState.isTurning & 1)
                   && (func_80121194() != 0)) {
            gKirbyState.isTurning |= 1;
        }
    }
    id = omCurrentObj->objId;
    if (D_800E98E0[id] != D_800E9AA0[id].as_u32) {
        assign_new_process_entry(gEntityGObjProcessArray[id], func_8016C510_ovl3);
        id = omCurrentObj->objId;
        D_800E9AA0[id].as_u32 = (u32) D_800E98E0[id];
        return;
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[id], func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018B228_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 52/523, whole-function callee-saved permutation (same floor class documented across this cluster). Body already met the quality bar as drafted (ANSI prototypes, real control flow/naming, the rerun:/second: labels are the ROM's literal ping-pong goto shape) so it seals verbatim. Queued for the permuter. */
/* PORT: the dash-runner phase coroutine (track action 0x3F, model
 * 0x2002A), from asm/nonmatchings/ovl3/ovl3_6/func_8018CC54_ovl3.s (via
 * m2c). First entry arms the ability, stashes the 0x16 effect id in
 * D_800E9AA0 and spawns it on DObj [6] when grounded, sets the 0x8000
 * turn latch, a pi/5 lean step (pi/7 in water), launches the track at
 * facing * 6.0 (3.4 wet, cap = |that|) through the D_800D7238 scratch,
 * starts the 0x3C loop voice with the 0x20261/0x20262 pair, and picks
 * phase 2 (direction held) or 1 (idle). Phases park for the re-trigger:
 * 1 shows the settle pair (0x20267/0x20268 after a run, else
 * 0x20263/0x20264); 2 re-launches the track at 2.5x anim speed and
 * ping-pongs the two run pairs (0x20265/0x20266 then 0x20269/0x2026A,
 * with the func_8018D460_ovl3 footstep process, riding each to its end)
 * while a direction is held, leaving D_800E98E0 = 1 mid-cycle or 2 when
 * the stick drops; 4 jumps (0x3E voice, submerged 8.5 rise else 17.0,
 * 0x2026B..0x2026E pairs, the 0x13 latch) riding to apex into phase 5;
 * 3/6 brake (0x3D voice, 0x17 effect id, -0.25*facing drag, the
 * 0x20259/0x2025A skid pair until |speed| < 1, then the 0x2025B/0x2025C
 * stop pair, phase 3 finishing the action).
 *
 * Port notes: m2c's D_800D71E8.unk50 is the f32 scratch D_800D7238 and
 * the launch-cap ladder is its ABS; D_800DFBD0[...]->unk18 is DObj list
 * entry [6]; func_801210FC is void-arg; the D_800E9AA0 cells are the
 * MultiType union accessed .as_u32; the phase-2 ping-pong keeps the
 * ROM's literal goto shape; func_8018D460_ovl3 is forward-declared --
 * it is defined just below with exactly the D_800DF310 slot
 * signature. */
void func_8018CC54_ovl3(s32 arg0) {
    void func_8018D460_ovl3(s32, s32, f32);
    u32 func_801210FC(void);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    extern f32 D_800D7238;
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.isFullJump = 0;
        gKirbyState.jumpHeight = 0;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x3F;
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
        func_80122F08(0x2002A);
        gKirbyState.unk154 = 9;
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        D_800E98E0[omCurrentObj->objId] = 0;
        D_800E9AA0[omCurrentObj->objId].as_u32 = 0x16;
        id = omCurrentObj->objId;
        if (D_800E8920[id] == 0) {
            gKirbyState.unk4C = 0;
        } else {
            gKirbyState.unk4C = func_800A8100(2, 1, (s32) D_800E9AA0[id].as_u32,
                                              D_800DFBD0[id][6]);
        }
        gKirbyState.isTurning |= 0x8000;
        id = omCurrentObj->objId;
        if (!(D_800E8AE0[id] & 6)) {
            D_800EA6E0[id] = 3.1415927f / 5.0f;
        } else {
            D_800EA6E0[id] = 3.1415927f / 7.0f;
        }
        if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
            D_800D7238 = 6.0f;
        } else {
            D_800D7238 = 3.4f;
        }
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = ABSF(D_800D7238);
        func_8011DC04(0x3C);
        func_801230E8(0x20261, 0x20262, 1);
        if (func_801210FC() != 0) {
            gKirbyState.unk44 = 2;
        } else {
            gKirbyState.unk44 = 1;
        }
    }
    switch (gKirbyState.unk44) {
        case 1:
            if (D_800E98E0[omCurrentObj->objId] == 1) {
                func_801230E8(0x20267, 0x20268, 0);
            } else {
                func_801230E8(0x20263, 0x20264, 0);
            }
            break;
        case 2:
            if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
                D_800D7238 = 6.0f;
            } else {
                D_800D7238 = 3.4f;
            }
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = ABSF(D_800D7238);
            func_800AECC0(2.5f);
            func_800AED20(2.5f);
        rerun:
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 1) {
                D_800E98E0[id] = 0;
                goto second;
            }
            D_800E98E0[id] = 0;
            if (gKirbyController.buttonHeld & 0x300) {
                func_801230E8(0x20265, 0x20266, 0);
                D_800DF310[omCurrentObj->objId] = func_8018D460_ovl3;
                func_800AF27C();
            second:
                if (gKirbyController.buttonHeld & 0x300) {
                    func_801230E8(0x20269, 0x2026A, 0);
                    D_800DF310[omCurrentObj->objId] = func_8018D460_ovl3;
                    func_800AF27C();
                    goto rerun;
                }
                D_800E98E0[omCurrentObj->objId] = 1;
            } else {
                D_800E98E0[omCurrentObj->objId] = 2;
            }
            break;
        case 4:
            func_8011DC5C();
            D_800E8920[omCurrentObj->objId] = 0;
            func_8011DC04(0x3E);
            if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                gKirbyState.unkCC = 4.0f;
                D_800E3210[omCurrentObj->objId] = 8.5f;
                D_800E3750[omCurrentObj->objId] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 8.5f;
            } else {
                gKirbyState.unkCC = 8.0f;
                D_800E3210[omCurrentObj->objId] = 17.0f;
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 17.0f;
            }
            func_801693C4_ovl3(0x13);
            func_801230E8(0x2026B, 0x2026C, 1);
            func_801230E8(0x2026D, 0x2026E, 0);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.unk3C = 5;
            gKirbyState.isFullJump += 1;
            gKirbyState.unk44 = 5;
            break;
        case 3:
        case 6:
            func_8011DC5C();
            func_8011DC04(0x3D);
            D_800E9AA0[omCurrentObj->objId].as_u32 = 0x17;
            id = omCurrentObj->objId;
            D_800E6690[id] = D_800E6A10[id] * -0.25f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
            func_801230E8(0x20259, 0x2025A, 0);
            while (!(ABSF(D_800E64D0[omCurrentObj->objId]) < 1.0f)) {
                ohSleep(1);
            }
            func_8011DC5C();
            func_801230E8(0x2025B, 0x2025C, 1);
            if (gKirbyState.unk44 == 3) {
                gKirbyState.unk30 += 1;
            }
            break;
    }
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the dash-runner phase coroutine (track action 0x3F, model
 * 0x2002A), from asm/nonmatchings/ovl3/ovl3_6/func_8018CC54_ovl3.s (via
 * m2c). First entry arms the ability, stashes the 0x16 effect id in
 * D_800E9AA0 and spawns it on DObj [6] when grounded, sets the 0x8000
 * turn latch, a pi/5 lean step (pi/7 in water), launches the track at
 * facing * 6.0 (3.4 wet, cap = |that|) through the D_800D7238 scratch,
 * starts the 0x3C loop voice with the 0x20261/0x20262 pair, and picks
 * phase 2 (direction held) or 1 (idle). Phases park for the re-trigger:
 * 1 shows the settle pair (0x20267/0x20268 after a run, else
 * 0x20263/0x20264); 2 re-launches the track at 2.5x anim speed and
 * ping-pongs the two run pairs (0x20265/0x20266 then 0x20269/0x2026A,
 * with the func_8018D460_ovl3 footstep process, riding each to its end)
 * while a direction is held, leaving D_800E98E0 = 1 mid-cycle or 2 when
 * the stick drops; 4 jumps (0x3E voice, submerged 8.5 rise else 17.0,
 * 0x2026B..0x2026E pairs, the 0x13 latch) riding to apex into phase 5;
 * 3/6 brake (0x3D voice, 0x17 effect id, -0.25*facing drag, the
 * 0x20259/0x2025A skid pair until |speed| < 1, then the 0x2025B/0x2025C
 * stop pair, phase 3 finishing the action).
 *
 * Port notes: m2c's D_800D71E8.unk50 is the f32 scratch D_800D7238 and
 * the launch-cap ladder is its ABS; D_800DFBD0[...]->unk18 is DObj list
 * entry [6]; func_801210FC is void-arg; the D_800E9AA0 cells are the
 * MultiType union accessed .as_u32; the phase-2 ping-pong keeps the
 * ROM's literal goto shape; func_8018D460_ovl3 is forward-declared --
 * it is defined just below with exactly the D_800DF310 slot
 * signature. */
void func_8018CC54_ovl3(s32 arg0) {
    void func_8018D460_ovl3(s32, s32, f32);
    u32 func_801210FC(void);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    extern f32 D_800D7238;
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.isFullJump = 0;
        gKirbyState.jumpHeight = 0;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x3F;
        gKirbyState.unk15C = (u32) (uintptr_t) D_80190358_ovl3;
        func_80122F08(0x2002A);
        gKirbyState.unk154 = 9;
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        D_800E98E0[omCurrentObj->objId] = 0;
        D_800E9AA0[omCurrentObj->objId].as_u32 = 0x16;
        id = omCurrentObj->objId;
        if (D_800E8920[id] == 0) {
            gKirbyState.unk4C = 0;
        } else {
            gKirbyState.unk4C = func_800A8100(2, 1, (s32) D_800E9AA0[id].as_u32,
                                              D_800DFBD0[id][6]);
        }
        gKirbyState.isTurning |= 0x8000;
        id = omCurrentObj->objId;
        if (!(D_800E8AE0[id] & 6)) {
            D_800EA6E0[id] = 3.1415927f / 5.0f;
        } else {
            D_800EA6E0[id] = 3.1415927f / 7.0f;
        }
        if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
            D_800D7238 = 6.0f;
        } else {
            D_800D7238 = 3.4f;
        }
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = ABSF(D_800D7238);
        func_8011DC04(0x3C);
        func_801230E8(0x20261, 0x20262, 1);
        if (func_801210FC() != 0) {
            gKirbyState.unk44 = 2;
        } else {
            gKirbyState.unk44 = 1;
        }
    }
    switch (gKirbyState.unk44) {
        case 1:
            if (D_800E98E0[omCurrentObj->objId] == 1) {
                func_801230E8(0x20267, 0x20268, 0);
            } else {
                func_801230E8(0x20263, 0x20264, 0);
            }
            break;
        case 2:
            if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
                D_800D7238 = 6.0f;
            } else {
                D_800D7238 = 3.4f;
            }
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = ABSF(D_800D7238);
            func_800AECC0(2.5f);
            func_800AED20(2.5f);
        rerun:
            id = omCurrentObj->objId;
            if (D_800E98E0[id] == 1) {
                D_800E98E0[id] = 0;
                goto second;
            }
            D_800E98E0[id] = 0;
            if (gKirbyController.buttonHeld & 0x300) {
                func_801230E8(0x20265, 0x20266, 0);
                D_800DF310[omCurrentObj->objId] = func_8018D460_ovl3;
                func_800AF27C();
            second:
                if (gKirbyController.buttonHeld & 0x300) {
                    func_801230E8(0x20269, 0x2026A, 0);
                    D_800DF310[omCurrentObj->objId] = func_8018D460_ovl3;
                    func_800AF27C();
                    goto rerun;
                }
                D_800E98E0[omCurrentObj->objId] = 1;
            } else {
                D_800E98E0[omCurrentObj->objId] = 2;
            }
            break;
        case 4:
            func_8011DC5C();
            D_800E8920[omCurrentObj->objId] = 0;
            func_8011DC04(0x3E);
            if ((D_800E8AE0[omCurrentObj->objId] & 6) == 6) {
                gKirbyState.unkCC = 4.0f;
                D_800E3210[omCurrentObj->objId] = 8.5f;
                D_800E3750[omCurrentObj->objId] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 8.5f;
            } else {
                gKirbyState.unkCC = 8.0f;
                D_800E3210[omCurrentObj->objId] = 17.0f;
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 17.0f;
            }
            func_801693C4_ovl3(0x13);
            func_801230E8(0x2026B, 0x2026C, 1);
            func_801230E8(0x2026D, 0x2026E, 0);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.unk3C = 5;
            gKirbyState.isFullJump += 1;
            gKirbyState.unk44 = 5;
            break;
        case 3:
        case 6:
            func_8011DC5C();
            func_8011DC04(0x3D);
            D_800E9AA0[omCurrentObj->objId].as_u32 = 0x17;
            id = omCurrentObj->objId;
            D_800E6690[id] = D_800E6A10[id] * -0.25f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
            func_801230E8(0x20259, 0x2025A, 0);
            while (!(ABSF(D_800E64D0[omCurrentObj->objId]) < 1.0f)) {
                ohSleep(1);
            }
            func_8011DC5C();
            func_801230E8(0x2025B, 0x2025C, 1);
            if (gKirbyState.unk44 == 3) {
                gKirbyState.unk30 += 1;
            }
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018CC54_ovl3.s")
#endif

void func_8018D460_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (gKirbyState.unk30 == 0) {
                if (gKirbyState.unk17 == 0) {
                    func_8011DC5C();
                    func_8011DC04(0x3C);
                }
            }
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 531/576 insns; short=3 long=0.
 * Draft derived from the host arm with its shims/LP64-isms removed; close the instruction COUNT before touching registers. */
/* PORT: the dash-runner (action 0x3F) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_8018D4C8_ovl3.s (via m2c). Runs the
 * tick prologue and the landing service (skipped in the jump phase 4);
 * a scripted grab, wall hit, or the D_800E6310 latch brakes to phase 3;
 * when the coroutine finishes it freezes the drive, releases the locks,
 * levels the pitch, drops the 0x8000 latch and hands off. Phases: 1
 * (settling) re-enters the run on a direction (2), brakes on B (3),
 * jumps on a grounded A or the unkA==5 buffer (4), or turns (6), while
 * re-deriving the pi/5|pi/7 lean and re-launching at facing * 5.0 (3.4
 * wet); 2 (running) mirrors that at 6.0 with the input service on a
 * phase change; 4/5 fly the jump (landing back to 1 with the 0x3C
 * voice, ceiling killing the rise into 5, B braking, variable-height
 * service until full) holding the 5.0/3.4 drive; 6 (turning) resumes
 * the run when the stick re-engages or the track stops (0x3C voice,
 * lean scratch 1.0, turn latch), falling into 3's draw of the
 * D_80191EA0 dust emitter on the root DObj under the D_801961CC
 * overlay. All phases then run the shared tail: airborne releases the
 * anim lock, grounded lazily respawns the D_800E9AA0-picked wheel
 * effect on DObj [6], the lean service func_8011E978 runs off the
 * D_800EA6E0/D_800EA8A0 cells, and a phase change re-triggers the
 * coroutine.
 *
 * Port notes: m2c's `&D_800D71E8 + 0x50` is the f32 scratch D_800D7238
 * with the ABS cap ladder; D_800DFBD0[...]->unk18 is DObj list entry
 * [6] and `*D_800DFBD0[id]` is entry [0]; func_801210FC /
 * func_80121194 are void-arg and func_8011EBD4's extras are leftover
 * registers; func_8016854C_ovl3 keeps its (s32, s32, f32) file
 * spelling with (s32)(uintptr_t) handles; the D_800E9AA0 cells are the
 * MultiType union accessed .as_u32. */
void func_8018D4C8_ovl3(s32 arg0) {
    void func_80121658(void);
    u32 func_801210FC(void);
    s32 func_80121194(void);
    void func_8011EBD4(void);
    void func_8011E978(f32, f32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern f32 D_800D7238;
    extern u8 D_80191EA0_ovl3[];
    extern u8 D_801961CC_ovl3[];
    u16 pressed;
    s32 id;

    func_80153984_ovl3();
    func_8011CF58();
    if (gKirbyState.unk44 != 4) {
        func_80121658();
    }
    if ((gKirbyState.unk44 != 3)
        && ((gKirbyState.unk17 != 0) || (gKirbyState.horizontalCollision != 0)
            || (D_800E6310[omCurrentObj->objId] != 0))) {
        gKirbyState.unk44 = 3;
    }
    if (gKirbyState.unk30 != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        func_8011DC5C();
        func_8011E0E8();
        gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
        gKirbyState.abilityInUse = 0;
        gKirbyState.isTurning &= ~0x8000;
        func_8011D67C();
        return;
    }
    switch (gKirbyState.unk44) {
        case 1:
            if (func_801210FC() != 0) {
                gKirbyState.unk44 = 2;
            } else {
                pressed = gKirbyController.buttonPressed;
                if (pressed & 0x4000) {
                    gKirbyState.unk44 = 3;
                } else if (((D_800E8920[omCurrentObj->objId] != 0) && (pressed & 0x8000))
                           || (gKirbyState.unkA == 5)) {
                    gKirbyState.unkA = 0;
                    gKirbyState.unk44 = 4;
                } else if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                    gKirbyState.unk44 = 6;
                }
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800EA6E0[id] = 3.1415927f / 5.0f;
            } else {
                D_800EA6E0[id] = 3.1415927f / 7.0f;
            }
            if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
                D_800D7238 = 5.0f;
            } else {
                D_800D7238 = 3.4f;
            }
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = ABSF(D_800D7238);
            break;
        case 2:
            id = omCurrentObj->objId;
            if (D_800E98E0[id] != 0) {
                gKirbyState.unk44 = 1;
            } else {
                pressed = gKirbyController.buttonPressed;
                if (pressed & 0x4000) {
                    gKirbyState.unk44 = 3;
                } else if (((D_800E8920[id] != 0) && (pressed & 0x8000))
                           || (gKirbyState.unkA == 5)) {
                    gKirbyState.unkA = 0;
                    gKirbyState.unk44 = 4;
                } else if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                    gKirbyState.unk44 = 6;
                }
            }
            if (gKirbyState.unk44 != 2) {
                func_8011CF58();
            } else {
                if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
                    D_800D7238 = 6.0f;
                } else {
                    D_800D7238 = 3.4f;
                }
                id = omCurrentObj->objId;
                D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
                D_800E6690[omCurrentObj->objId] = 0.0f;
                D_800E6850[omCurrentObj->objId] = ABSF(D_800D7238);
            }
            break;
        case 4:
        case 5:
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                func_8011DC5C();
                func_8011DC04(0x3C);
                gKirbyState.isFullJump = 0;
                gKirbyState.jumpHeight = 0;
                gKirbyState.unk44 = 1;
            } else {
                if (!(D_800E8AE0[id] & 6)) {
                    D_800D7238 = 5.0f;
                } else {
                    D_800D7238 = 3.4f;
                }
                id = omCurrentObj->objId;
                D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
                D_800E6690[omCurrentObj->objId] = 0.0f;
                D_800E6850[omCurrentObj->objId] = ABSF(D_800D7238);
                if (gKirbyState.ceilingCollisionNext != 0) {
                    if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                        D_800E3210[omCurrentObj->objId] = 0.0f;
                    }
                    gKirbyState.isFullJump = 1;
                    gKirbyState.unk3C = 5;
                    gKirbyState.unk44 = 5;
                }
                if (gKirbyController.buttonPressed & 0x4000) {
                    gKirbyState.unk44 = 3;
                }
                if (gKirbyState.isFullJump == 0) {
                    func_8011EBD4();
                }
            }
            break;
        case 6:
            if (func_801210FC() != 0) {
                gKirbyState.unk44 = 2;
            } else {
                pressed = gKirbyController.buttonPressed;
                if (pressed & 0x4000) {
                    gKirbyState.unk44 = 3;
                } else {
                    id = omCurrentObj->objId;
                    if (((D_800E8920[id] != 0) && (pressed & 0x8000))
                        || (gKirbyState.unkA == 5)) {
                        gKirbyState.unkA = 0;
                        gKirbyState.unk44 = 4;
                    } else if (D_800E64D0[id] == 0.0f) {
                        func_8011DC04(0x3C);
                        gKirbyState.unk44 = 2;
                        D_800EA8A0[omCurrentObj->objId] = 1.0f;
                        gKirbyState.isTurning |= 1;
                    }
                }
            }
            /* fallthrough */
        case 3:
            func_8016854C_ovl3((s32) (uintptr_t) D_80191EA0_ovl3,
                               (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0], 1.0f);
            func_8015449C_ovl3(D_801961CC_ovl3, 0);
            break;
        default:
            return;
    }
    id = omCurrentObj->objId;
    if (D_800E8920[id] == 0) {
        func_8011E0E8();
        id = omCurrentObj->objId;
    } else if (gKirbyState.unk4C == 0) {
        gKirbyState.unk4C = func_800A8100(2, 1, (s32) D_800E9AA0[id].as_u32,
                                          D_800DFBD0[id][6]);
        id = omCurrentObj->objId;
    }
    func_8011E978(D_800EA6E0[id], D_800EA8A0[id]);
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#elif defined(PORT)
/* PORT: the dash-runner (action 0x3F) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_8018D4C8_ovl3.s (via m2c). Runs the
 * tick prologue and the landing service (skipped in the jump phase 4);
 * a scripted grab, wall hit, or the D_800E6310 latch brakes to phase 3;
 * when the coroutine finishes it freezes the drive, releases the locks,
 * levels the pitch, drops the 0x8000 latch and hands off. Phases: 1
 * (settling) re-enters the run on a direction (2), brakes on B (3),
 * jumps on a grounded A or the unkA==5 buffer (4), or turns (6), while
 * re-deriving the pi/5|pi/7 lean and re-launching at facing * 5.0 (3.4
 * wet); 2 (running) mirrors that at 6.0 with the input service on a
 * phase change; 4/5 fly the jump (landing back to 1 with the 0x3C
 * voice, ceiling killing the rise into 5, B braking, variable-height
 * service until full) holding the 5.0/3.4 drive; 6 (turning) resumes
 * the run when the stick re-engages or the track stops (0x3C voice,
 * lean scratch 1.0, turn latch), falling into 3's draw of the
 * D_80191EA0 dust emitter on the root DObj under the D_801961CC
 * overlay. All phases then run the shared tail: airborne releases the
 * anim lock, grounded lazily respawns the D_800E9AA0-picked wheel
 * effect on DObj [6], the lean service func_8011E978 runs off the
 * D_800EA6E0/D_800EA8A0 cells, and a phase change re-triggers the
 * coroutine.
 *
 * Port notes: m2c's `&D_800D71E8 + 0x50` is the f32 scratch D_800D7238
 * with the ABS cap ladder; D_800DFBD0[...]->unk18 is DObj list entry
 * [6] and `*D_800DFBD0[id]` is entry [0]; func_801210FC /
 * func_80121194 are void-arg and func_8011EBD4's extras are leftover
 * registers; func_8016854C_ovl3 keeps its (s32, s32, f32) file
 * spelling with (s32)(uintptr_t) handles; the D_800E9AA0 cells are the
 * MultiType union accessed .as_u32. */
void func_8018D4C8_ovl3(s32 arg0) {
    void func_80121658(void);
    u32 func_801210FC(void);
    s32 func_80121194(void);
    void func_8011EBD4(void);
    void func_8011E978(f32, f32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern f32 D_800D7238;
    extern u8 D_80191EA0_ovl3[];
    extern u8 D_801961CC_ovl3[];
    u16 pressed;
    s32 id;

    func_80153984_ovl3();
    func_8011CF58();
    if (gKirbyState.unk44 != 4) {
        func_80121658();
    }
    if ((gKirbyState.unk44 != 3)
        && ((gKirbyState.unk17 != 0) || (gKirbyState.horizontalCollision != 0)
            || (D_800E6310[omCurrentObj->objId] != 0))) {
        gKirbyState.unk44 = 3;
    }
    if (gKirbyState.unk30 != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E6690[id];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        func_8011DC5C();
        func_8011E0E8();
        gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
        gKirbyState.abilityInUse = 0;
        gKirbyState.isTurning &= ~0x8000;
        func_8011D67C();
        return;
    }
    switch (gKirbyState.unk44) {
        case 1:
            if (func_801210FC() != 0) {
                gKirbyState.unk44 = 2;
            } else {
                pressed = gKirbyController.buttonPressed;
                if (pressed & 0x4000) {
                    gKirbyState.unk44 = 3;
                } else if (((D_800E8920[omCurrentObj->objId] != 0) && (pressed & 0x8000))
                           || (gKirbyState.unkA == 5)) {
                    gKirbyState.unkA = 0;
                    gKirbyState.unk44 = 4;
                } else if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                    gKirbyState.unk44 = 6;
                }
            }
            id = omCurrentObj->objId;
            if (!(D_800E8AE0[id] & 6)) {
                D_800EA6E0[id] = 3.1415927f / 5.0f;
            } else {
                D_800EA6E0[id] = 3.1415927f / 7.0f;
            }
            if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
                D_800D7238 = 5.0f;
            } else {
                D_800D7238 = 3.4f;
            }
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = ABSF(D_800D7238);
            break;
        case 2:
            id = omCurrentObj->objId;
            if (D_800E98E0[id] != 0) {
                gKirbyState.unk44 = 1;
            } else {
                pressed = gKirbyController.buttonPressed;
                if (pressed & 0x4000) {
                    gKirbyState.unk44 = 3;
                } else if (((D_800E8920[id] != 0) && (pressed & 0x8000))
                           || (gKirbyState.unkA == 5)) {
                    gKirbyState.unkA = 0;
                    gKirbyState.unk44 = 4;
                } else if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                    gKirbyState.unk44 = 6;
                }
            }
            if (gKirbyState.unk44 != 2) {
                func_8011CF58();
            } else {
                if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
                    D_800D7238 = 6.0f;
                } else {
                    D_800D7238 = 3.4f;
                }
                id = omCurrentObj->objId;
                D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
                D_800E6690[omCurrentObj->objId] = 0.0f;
                D_800E6850[omCurrentObj->objId] = ABSF(D_800D7238);
            }
            break;
        case 4:
        case 5:
            id = omCurrentObj->objId;
            if (D_800E8920[id] != 0) {
                func_8011DC5C();
                func_8011DC04(0x3C);
                gKirbyState.isFullJump = 0;
                gKirbyState.jumpHeight = 0;
                gKirbyState.unk44 = 1;
            } else {
                if (!(D_800E8AE0[id] & 6)) {
                    D_800D7238 = 5.0f;
                } else {
                    D_800D7238 = 3.4f;
                }
                id = omCurrentObj->objId;
                D_800E64D0[id] = D_800E6A10[id] * D_800D7238;
                D_800E6690[omCurrentObj->objId] = 0.0f;
                D_800E6850[omCurrentObj->objId] = ABSF(D_800D7238);
                if (gKirbyState.ceilingCollisionNext != 0) {
                    if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                        D_800E3210[omCurrentObj->objId] = 0.0f;
                    }
                    gKirbyState.isFullJump = 1;
                    gKirbyState.unk3C = 5;
                    gKirbyState.unk44 = 5;
                }
                if (gKirbyController.buttonPressed & 0x4000) {
                    gKirbyState.unk44 = 3;
                }
                if (gKirbyState.isFullJump == 0) {
                    func_8011EBD4();
                }
            }
            break;
        case 6:
            if (func_801210FC() != 0) {
                gKirbyState.unk44 = 2;
            } else {
                pressed = gKirbyController.buttonPressed;
                if (pressed & 0x4000) {
                    gKirbyState.unk44 = 3;
                } else {
                    id = omCurrentObj->objId;
                    if (((D_800E8920[id] != 0) && (pressed & 0x8000))
                        || (gKirbyState.unkA == 5)) {
                        gKirbyState.unkA = 0;
                        gKirbyState.unk44 = 4;
                    } else if (D_800E64D0[id] == 0.0f) {
                        func_8011DC04(0x3C);
                        gKirbyState.unk44 = 2;
                        D_800EA8A0[omCurrentObj->objId] = 1.0f;
                        gKirbyState.isTurning |= 1;
                    }
                }
            }
            /* fallthrough */
        case 3:
            func_8016854C_ovl3((s32) (uintptr_t) D_80191EA0_ovl3,
                               (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0], 1.0f);
            func_8015449C_ovl3(D_801961CC_ovl3, 0);
            break;
        default:
            return;
    }
    id = omCurrentObj->objId;
    if (D_800E8920[id] == 0) {
        func_8011E0E8();
        id = omCurrentObj->objId;
    } else if (gKirbyState.unk4C == 0) {
        gKirbyState.unk4C = func_800A8100(2, 1, (s32) D_800E9AA0[id].as_u32,
                                          D_800DFBD0[id][6]);
        id = omCurrentObj->objId;
    }
    func_8011E978(D_800EA6E0[id], D_800EA8A0[id]);
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018D4C8_ovl3.s")
#endif

void func_8018DF78_ovl3(s32, s32, f32);

void func_8018DDCC_ovl3(s32 arg0) {
    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.unk30 = gKirbyState.unk44 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x40;
    func_80120A28();
    gKirbyState.abilityInUse = gKirbyState.ability;
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    func_80122F08(0x2002B);
    gKirbyState.unk154 = 2;
    play_sound(0x42);
    func_801230E8(0x20274, 0x20275, 1);
    func_801230E8(0x20276, 0x20277, 0);
    while (gKirbyController.buttonHeld & 0x4000) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        ohSleep(1);
    }
    play_sound(0x43);
    func_801230E8(0x20278, 0x20279, 0);
    D_800DF310[omCurrentObj->objId] = func_8018DF78_ovl3;
    ohSleep(0xC);
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_800AF27C();
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8018DF78_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            gKirbyState.unk44 += 1;
        }
    }
}

extern s32 D_8012E7E8;
extern f32 D_80197B5C_ovl3;
extern f32 D_80197B60_ovl3;
extern f32 D_80197B64_ovl3;
extern f32 D_801921FC_ovl3[];
extern s32 D_80196DB4_ovl3[];
extern u8 D_801963E4_ovl3[];
extern s32 func_80120CCC(f32, f32);
extern s32 func_80168408_ovl3(f32 *, void *, f32);
extern s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
extern s32 func_801521F0_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
extern void func_80154578_ovl3(void *, s32, f32);

typedef struct Unk8018DFB4 {
    u8 pad0[0x40];
    f32 unk40;
    f32 unk44;
} Unk8018DFB4;

void func_8018DFB4_ovl3(s32 arg0) {
    f32 temp;
    Unk8018DFB4 *p;
    s32 *res;
    s32 idx;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (*(s32 *) ((u8 *) &D_8012E7E8 + 8) != 0) {
        func_8011D67C();
        return;
    }
    func_80120CCC(D_80197B5C_ovl3, D_80197B60_ovl3);
    if (*(s32 *) ((u8 *) &D_8012E7FC + 8) == 4) {
        p = (Unk8018DFB4 *) D_800DFBD0[omCurrentObj->objId][9];
        temp = p->unk44;
    } else {
        p = (Unk8018DFB4 *) D_800DFBD0[omCurrentObj->objId][9];
        temp = p->unk40;
    }
    res = (s32 *) func_80168408_ovl3(D_801921FC_ovl3, p, temp);
    ((s32 *) res[8])[12] = ((s32 *) D_800DFBD0[omCurrentObj->objId])[12];
    func_80111C4C((s32) res);
    idx = *(s32 *) ((u8 *) &D_8012E7FC + 8);
    if (idx == 4) {
        func_80152070_ovl3((f32 (*)[4]) D_80196DB4_ovl3[idx], (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                           D_801963E4_ovl3[0], temp);
    } else {
        func_801521F0_ovl3((f32 (*)[4]) D_80196DB4_ovl3[idx], (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                           D_801963E4_ovl3[0], temp);
    }
    func_80154578_ovl3(D_801963E4_ovl3, 0, gEntitiesAngleYArray[omCurrentObj->objId] - D_80197B64_ovl3);
}

#ifdef NON_MATCHING
/* FACTORY: 6/130: instruction-for-instruction exact; only $f0 and $f2 are
   swapped. IDO gives $f0 to the float value whose definition lands
   EARLIEST in the scheduled stream (temp's lwc1 in the prologue); the ROM
   gives it to the later-defined shared 0.0f. Swept in wave 8 on top of the
   earlier sweep: dropping the local entirely (51 diffs -- the lwc1 sinks
   out of the prologue), an explicit `f32 zero` local, and both declaration
   orders of `zero`/`temp`; the register choice tracks the schedule, not
   the source. Re-confirmed 2026-08-23, identical 6/130 -- same
   neighbouring-register floor class as func_80180818_ovl3 above in this
   file. Good permuter seed. */
extern f32 D_80197B68_ovl3;
extern f32 D_80198848_ovl3[];
extern f32 D_80198858_ovl3[];
void func_8018E36C_ovl3(s32, s32, f32);

void func_8018E164_ovl3(s32 arg0) {
    f32 temp;

    gKirbyState.unk30 = 0;
    func_8011CF58();
    temp = D_80197B68_ovl3;
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[omCurrentObj->objId] = 0x41;
    D_80198848_ovl3[0] = D_800E64D0[omCurrentObj->objId];
    D_80198848_ovl3[1] = D_800E6690[omCurrentObj->objId];
    D_80198848_ovl3[2] = D_800E6850[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    if (D_800E8920[omCurrentObj->objId] == 0) {
        D_80198858_ovl3[0] = D_800E3210[omCurrentObj->objId];
        D_80198858_ovl3[1] = D_800E3750[omCurrentObj->objId];
        D_80198858_ovl3[2] = D_800E3C90[omCurrentObj->objId];
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp;
    func_801693C4_ovl3(0x14);
    func_801230E8(0x20041, 0x20042, 0);
    D_800DF310[omCurrentObj->objId] = func_8018E36C_ovl3;
    func_800AF27C();
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018E164_ovl3.s")
#endif
void func_8018E36C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            func_801632B8_ovl3(0xA);
        }
    }
}

extern f32 D_80198848_ovl3[];
extern f32 D_80198858_ovl3[];
extern f32 D_80197B6C_ovl3;
extern void set_kirby_action_1(s32, s32);

void func_8018E3B0_ovl3(s32 arg0) {
    func_80153984_ovl3();
    if (gKirbyState.unk30 != 0) {
        D_800E64D0[omCurrentObj->objId] = D_80198848_ovl3[0];
        D_800E6690[omCurrentObj->objId] = D_80198848_ovl3[1];
        D_800E6850[omCurrentObj->objId] = D_80198848_ovl3[2];
        if (D_800E8920[omCurrentObj->objId] != 0) {
            if (gKirbyController.buttonHeld & 0x400) {
                set_kirby_action_1(9, 0xE);
            } else if (gKirbyState.unk7 != 0) {
                gKirbyState.unk44 = 0;
                gKirbyState.unk38 = 0.0f;
                set_kirby_action_1(2, 4);
            } else if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
                set_kirby_action_1(1, 3);
            } else {
                set_kirby_action_1(0, 1);
            }
        } else {
            D_800E3210[omCurrentObj->objId] = D_80198858_ovl3[0];
            D_800E3750[omCurrentObj->objId] = D_80198858_ovl3[1];
            D_800E3C90[omCurrentObj->objId] = D_80198858_ovl3[2];
            if (gKirbyState.previousAction == 5) {
                if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                    D_800EC2E0[omCurrentObj->objId].as_s32 = 0x80000000;
                    set_kirby_action_1(4, 5);
                    return;
                }
            }
            if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                D_800E3750[omCurrentObj->objId] = 0.0;
                D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                D_800E3C90[omCurrentObj->objId] = D_80197B6C_ovl3;
            }
            set_kirby_action_1(6, 6);
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 721/811 insns; short=16 long=0.
 * Draft derived from the host arm with its shims/LP64-isms removed; close the instruction COUNT before touching registers. */
/* PORT: the bare-back ride flight/swim phase coroutine (track action
 * 0x42, plain model 0x20007), from asm/nonmatchings/ovl3/ovl3_6/
 * func_8018E608_ovl3.s (via m2c) -- the model-less sibling of
 * func_80186E30_ovl3. First entry arms the ability, clears the ride
 * cells (D_800EA360/D_800E9E20/D_800E9C60), plays the 0x36 loop voice,
 * arms the 0x15 latch and the 0x20055/0x20056 intro pair, starting in
 * phase 1 (grounded) or 4 (airborne). Phase 1 idles -- grounded or in
 * water it queues the 0x2004D/0x2004E idle pair and parks, while the
 * dry unk150 hover flag enters the endless flap loop (bank word
 * D_800E98E0 from unk150 == 2, re-blending the 0x20047/0x20049 flap
 * pair on each turn-latch flip); 2 walks (0.25 drift toward the held
 * direction, cap 2, 0x20059/0x2005A) with the func_8018F2B4_ovl3 step
 * process; 3 jumps (submerged 0x10B fixed 8.5 rise, dry 0xF7 with
 * func_80123144(17), pairs 0x2004F..0x20052) into 4's fall (water/dry
 * gravity split, 0x2004B/0x2004C); 5 lands (0x20053/0x20054); 6
 * splashes into the endless swim loop (surface clamp, D_800E9E20
 * launch latch, 0x20057/0x20058 with func_80122CA0 as the stroke
 * process, A boosting a 15-tick window at 4x anim speed, 0x400/0x800
 * steering 2.5/1.5 drifts at 2x); 7 waits out the spit (water-picked
 * 0x38/0x37 voices, grounded-picked 0x20043/0x20045 pairs, arming
 * D_800EA360) and 8 falls into the shared exit.
 *
 * Port notes: func_800AA78C is (s32, u32, f32) -- 0x40C00000/
 * 0x40400000 are 6.0f/3.0f, trailing 1s are leftover registers;
 * func_80123144 is f32(f32) with 0x41880000 = 17.0f; func_801210B4 /
 * func_80122A80 are declared locally; the D_800E9AA0 cells are the
 * MultiType union accessed .as_u32; func_8018F2B4_ovl3 is forward-
 * declared -- it is defined just below with exactly the D_800DF310
 * slot signature. */
void func_8018E608_ovl3(s32 arg0) {
    void func_8018F2B4_ovl3(s32, s32, f32);
    void func_80122CA0(s32, s32, f32);
    void func_800AA78C(s32, u32, f32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    f32 func_80123144(f32);
    s32 func_801210B4(void);
    void func_80122A80(void);
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        D_800EA360[omCurrentObj->objId] = 0;
        id = omCurrentObj->objId;
        D_800E9E20[id] = D_800EA360[id];
        D_800E9C60[omCurrentObj->objId] = D_800EA360[id];
        gKirbyState.jumpHeight = 0;
        gKirbyState.isFullJump = 0;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x42;
        func_8011DC04(0x36);
        func_801693C4_ovl3(0x15);
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        func_801230E8(0x20055, 0x20056, 1);
        func_80120A28();
        if (D_800E8920[omCurrentObj->objId] != 0) {
            gKirbyState.unk3C = 1;
            gKirbyState.unk44 = 1;
        } else {
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
        }
    }
    switch (gKirbyState.unk44) {
        case 1:
            D_800E6690[omCurrentObj->objId] = 0.0f;
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            gKirbyState.unk7 = 0;
            id = omCurrentObj->objId;
            if ((gKirbyState.unk150 == 0) || (D_800E8AE0[id] & 6)) {
                func_800AA78C(0x2004D, 0x20007, 6.0f);
                func_801230E8(0x2004D, 0x2004E, 0);
                curObjSleepForever();
            }
            D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
            D_800E9720[omCurrentObj->objId] = 0xF;
            for (;;) {
                if (gKirbyState.unk150 == 2) {
                    D_800E98E0[omCurrentObj->objId] = 1;
                } else {
                    D_800E98E0[omCurrentObj->objId] = 0;
                }
                id = omCurrentObj->objId;
                if (D_800E9AA0[id].as_u32 != 0) {
                    if (D_800E98E0[id] == 0) {
                        func_800AA78C(0x20047, 0x20007, 3.0f);
                    } else {
                        func_800AA78C(0x20049, 0x20007, 3.0f);
                    }
                } else {
                    D_800E9AA0[id].as_u32 = 1;
                }
                if (gKirbyState.unk150 == 2) {
                    func_801230E8(0x20047, 0x20048, 0);
                } else {
                    func_801230E8(0x20049, 0x2004A, 0);
                }
                while (gKirbyState.isTurning & 1) {
                    ohSleep(1);
                }
                do {
                    ohSleep(1);
                } while (!(gKirbyState.isTurning & 1));
            }
        case 2:
            D_800E9560[omCurrentObj->objId] = 0;
            if (gKirbyState.unk7 == 1) {
                func_80122A80();
            }
            if (func_801210B4() == 1) {
                D_800E6690[omCurrentObj->objId] = 0.25f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
            } else {
                D_800E6690[omCurrentObj->objId] = -0.25f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
            }
            func_800AA78C(0x20059, 0x20007, 3.0f);
            func_801230E8(0x20059, 0x2005A, 0);
            D_800DF310[omCurrentObj->objId] = func_8018F2B4_ovl3;
            curObjSleepForever();
            /* fallthrough */
        case 3:
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E83E0[omCurrentObj->objId] = 0;
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
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_801230E8(0x2004F, 0x20050, 0);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.isFullJump += 1;
            func_801230E8(0x20051, 0x20052, 0);
            gKirbyState.isFullJump = 0;
            gKirbyState.jumpHeight = 0;
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
            /* fallthrough */
        case 4:
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                D_800E3750[id] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            } else {
                D_800E3750[id] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA78C(0x2004B, 0x20007, 3.0f);
            func_801230E8(0x2004B, 0x2004C, 0);
            curObjSleepForever();
            /* fallthrough */
        case 5:
            func_801230E8(0x20053, 0x20054, 0);
            curObjSleepForever();
            /* fallthrough */
        case 6:
            D_800E9560[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            D_800E93A0[id] = D_800E9560[id];
            gKirbyState.unk7 = 0;
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 0x80) {
                if (D_800E3210[id] < -1.0f) {
                    D_800E3210[id] = -1.0f;
                    D_800E3750[omCurrentObj->objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 1.0f;
                    id = omCurrentObj->objId;
                }
            }
            if (D_800E9E20[id] != 0) {
                D_800E3210[id] = 6.0f;
                D_800E3750[omCurrentObj->objId] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            }
            play_sound(0x10B);
            func_800AA78C(0x20057, 0x20007, 6.0f);
            func_801230E8(0x20057, 0x20058, 0);
            D_800DF310[omCurrentObj->objId] = func_80122CA0;
            for (;;) {
                if (gKirbyController.buttonPressed & 0x8000) {
                    D_800E93A0[omCurrentObj->objId] = 0xF;
                    play_sound(0x10B);
                    func_800AECC0(4.0f);
                    func_800AED20(4.0f);
                    D_800E3210[omCurrentObj->objId] = 6.0f;
                    D_800E3750[omCurrentObj->objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 6.0f;
                } else if (D_800E93A0[omCurrentObj->objId] == 0) {
                    if (gKirbyController.buttonHeld & 0x400) {
                        func_800AECC0(2.0f);
                        func_800AED20(2.0f);
                        id = omCurrentObj->objId;
                        if (D_800E3C90[id] != 2.5f) {
                            D_800E3210[id] = -2.5f;
                            D_800E3750[omCurrentObj->objId] = 0.0f;
                            D_800E3C90[omCurrentObj->objId] = 2.5f;
                        }
                    } else if (gKirbyController.buttonHeld & 0x800) {
                        func_800AECC0(2.0f);
                        func_800AED20(2.0f);
                        D_800E8920[omCurrentObj->objId] = 0;
                        id = omCurrentObj->objId;
                        if (D_800E3C90[id] != 1.5f) {
                            D_800E3210[id] = 1.5f;
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
            }
        case 7:
            func_80120A28();
            gKirbyState.unk7 = 0;
            D_800EA360[omCurrentObj->objId] = 0;
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                func_8011DC30(0x38);
            } else {
                func_8011DC30(0x37);
            }
            if (D_800E8920[omCurrentObj->objId] != 0) {
                func_801230E8(0x20043, 0x20044, 1);
            } else {
                func_801230E8(0x20045, 0x20046, 1);
            }
            D_800EA360[omCurrentObj->objId] += 1;
            curObjSleepForever();
            /* fallthrough */
        case 8:
            func_80120A28();
            gKirbyState.unk7 = 0;
            /* fallthrough */
        default:
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            return;
    }
}
#elif defined(PORT)
/* PORT: the bare-back ride flight/swim phase coroutine (track action
 * 0x42, plain model 0x20007), from asm/nonmatchings/ovl3/ovl3_6/
 * func_8018E608_ovl3.s (via m2c) -- the model-less sibling of
 * func_80186E30_ovl3. First entry arms the ability, clears the ride
 * cells (D_800EA360/D_800E9E20/D_800E9C60), plays the 0x36 loop voice,
 * arms the 0x15 latch and the 0x20055/0x20056 intro pair, starting in
 * phase 1 (grounded) or 4 (airborne). Phase 1 idles -- grounded or in
 * water it queues the 0x2004D/0x2004E idle pair and parks, while the
 * dry unk150 hover flag enters the endless flap loop (bank word
 * D_800E98E0 from unk150 == 2, re-blending the 0x20047/0x20049 flap
 * pair on each turn-latch flip); 2 walks (0.25 drift toward the held
 * direction, cap 2, 0x20059/0x2005A) with the func_8018F2B4_ovl3 step
 * process; 3 jumps (submerged 0x10B fixed 8.5 rise, dry 0xF7 with
 * func_80123144(17), pairs 0x2004F..0x20052) into 4's fall (water/dry
 * gravity split, 0x2004B/0x2004C); 5 lands (0x20053/0x20054); 6
 * splashes into the endless swim loop (surface clamp, D_800E9E20
 * launch latch, 0x20057/0x20058 with func_80122CA0 as the stroke
 * process, A boosting a 15-tick window at 4x anim speed, 0x400/0x800
 * steering 2.5/1.5 drifts at 2x); 7 waits out the spit (water-picked
 * 0x38/0x37 voices, grounded-picked 0x20043/0x20045 pairs, arming
 * D_800EA360) and 8 falls into the shared exit.
 *
 * Port notes: func_800AA78C is (s32, u32, f32) -- 0x40C00000/
 * 0x40400000 are 6.0f/3.0f, trailing 1s are leftover registers;
 * func_80123144 is f32(f32) with 0x41880000 = 17.0f; func_801210B4 /
 * func_80122A80 are declared locally; the D_800E9AA0 cells are the
 * MultiType union accessed .as_u32; func_8018F2B4_ovl3 is forward-
 * declared -- it is defined just below with exactly the D_800DF310
 * slot signature. */
void func_8018E608_ovl3(s32 arg0) {
    void func_8018F2B4_ovl3(s32, s32, f32);
    void func_80122CA0(s32, s32, f32);
    void func_800AA78C(s32, u32, f32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    f32 func_80123144(f32);
    s32 func_801210B4(void);
    void func_80122A80(void);
    s32 id;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        D_800EA360[omCurrentObj->objId] = 0;
        id = omCurrentObj->objId;
        D_800E9E20[id] = D_800EA360[id];
        D_800E9C60[omCurrentObj->objId] = D_800EA360[id];
        gKirbyState.jumpHeight = 0;
        gKirbyState.isFullJump = 0;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[omCurrentObj->objId] = 0x42;
        func_8011DC04(0x36);
        func_801693C4_ovl3(0x15);
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        func_801230E8(0x20055, 0x20056, 1);
        func_80120A28();
        if (D_800E8920[omCurrentObj->objId] != 0) {
            gKirbyState.unk3C = 1;
            gKirbyState.unk44 = 1;
        } else {
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
        }
    }
    switch (gKirbyState.unk44) {
        case 1:
            D_800E6690[omCurrentObj->objId] = 0.0f;
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            gKirbyState.unk7 = 0;
            id = omCurrentObj->objId;
            if ((gKirbyState.unk150 == 0) || (D_800E8AE0[id] & 6)) {
                func_800AA78C(0x2004D, 0x20007, 6.0f);
                func_801230E8(0x2004D, 0x2004E, 0);
                curObjSleepForever();
            }
            D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
            D_800E9720[omCurrentObj->objId] = 0xF;
            for (;;) {
                if (gKirbyState.unk150 == 2) {
                    D_800E98E0[omCurrentObj->objId] = 1;
                } else {
                    D_800E98E0[omCurrentObj->objId] = 0;
                }
                id = omCurrentObj->objId;
                if (D_800E9AA0[id].as_u32 != 0) {
                    if (D_800E98E0[id] == 0) {
                        func_800AA78C(0x20047, 0x20007, 3.0f);
                    } else {
                        func_800AA78C(0x20049, 0x20007, 3.0f);
                    }
                } else {
                    D_800E9AA0[id].as_u32 = 1;
                }
                if (gKirbyState.unk150 == 2) {
                    func_801230E8(0x20047, 0x20048, 0);
                } else {
                    func_801230E8(0x20049, 0x2004A, 0);
                }
                while (gKirbyState.isTurning & 1) {
                    ohSleep(1);
                }
                do {
                    ohSleep(1);
                } while (!(gKirbyState.isTurning & 1));
            }
        case 2:
            D_800E9560[omCurrentObj->objId] = 0;
            if (gKirbyState.unk7 == 1) {
                func_80122A80();
            }
            if (func_801210B4() == 1) {
                D_800E6690[omCurrentObj->objId] = 0.25f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
            } else {
                D_800E6690[omCurrentObj->objId] = -0.25f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
            }
            func_800AA78C(0x20059, 0x20007, 3.0f);
            func_801230E8(0x20059, 0x2005A, 0);
            D_800DF310[omCurrentObj->objId] = func_8018F2B4_ovl3;
            curObjSleepForever();
            /* fallthrough */
        case 3:
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E83E0[omCurrentObj->objId] = 0;
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
                D_800E3750[omCurrentObj->objId] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_801230E8(0x2004F, 0x20050, 0);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            gKirbyState.isFullJump += 1;
            func_801230E8(0x20051, 0x20052, 0);
            gKirbyState.isFullJump = 0;
            gKirbyState.jumpHeight = 0;
            gKirbyState.unk3C = 4;
            gKirbyState.unk44 = 4;
            /* fallthrough */
        case 4:
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                D_800E3750[id] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            } else {
                D_800E3750[id] = -0.980665f;
                D_800E3C90[omCurrentObj->objId] = 16.0f;
            }
            func_800AA78C(0x2004B, 0x20007, 3.0f);
            func_801230E8(0x2004B, 0x2004C, 0);
            curObjSleepForever();
            /* fallthrough */
        case 5:
            func_801230E8(0x20053, 0x20054, 0);
            curObjSleepForever();
            /* fallthrough */
        case 6:
            D_800E9560[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            D_800E93A0[id] = D_800E9560[id];
            gKirbyState.unk7 = 0;
            D_800E8920[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 0x80) {
                if (D_800E3210[id] < -1.0f) {
                    D_800E3210[id] = -1.0f;
                    D_800E3750[omCurrentObj->objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 1.0f;
                    id = omCurrentObj->objId;
                }
            }
            if (D_800E9E20[id] != 0) {
                D_800E3210[id] = 6.0f;
                D_800E3750[omCurrentObj->objId] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 1.0f;
            }
            play_sound(0x10B);
            func_800AA78C(0x20057, 0x20007, 6.0f);
            func_801230E8(0x20057, 0x20058, 0);
            D_800DF310[omCurrentObj->objId] = func_80122CA0;
            for (;;) {
                if (gKirbyController.buttonPressed & 0x8000) {
                    D_800E93A0[omCurrentObj->objId] = 0xF;
                    play_sound(0x10B);
                    func_800AECC0(4.0f);
                    func_800AED20(4.0f);
                    D_800E3210[omCurrentObj->objId] = 6.0f;
                    D_800E3750[omCurrentObj->objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 6.0f;
                } else if (D_800E93A0[omCurrentObj->objId] == 0) {
                    if (gKirbyController.buttonHeld & 0x400) {
                        func_800AECC0(2.0f);
                        func_800AED20(2.0f);
                        id = omCurrentObj->objId;
                        if (D_800E3C90[id] != 2.5f) {
                            D_800E3210[id] = -2.5f;
                            D_800E3750[omCurrentObj->objId] = 0.0f;
                            D_800E3C90[omCurrentObj->objId] = 2.5f;
                        }
                    } else if (gKirbyController.buttonHeld & 0x800) {
                        func_800AECC0(2.0f);
                        func_800AED20(2.0f);
                        D_800E8920[omCurrentObj->objId] = 0;
                        id = omCurrentObj->objId;
                        if (D_800E3C90[id] != 1.5f) {
                            D_800E3210[id] = 1.5f;
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
            }
        case 7:
            func_80120A28();
            gKirbyState.unk7 = 0;
            D_800EA360[omCurrentObj->objId] = 0;
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                func_8011DC30(0x38);
            } else {
                func_8011DC30(0x37);
            }
            if (D_800E8920[omCurrentObj->objId] != 0) {
                func_801230E8(0x20043, 0x20044, 1);
            } else {
                func_801230E8(0x20045, 0x20046, 1);
            }
            D_800EA360[omCurrentObj->objId] += 1;
            curObjSleepForever();
            /* fallthrough */
        case 8:
            func_80120A28();
            gKirbyState.unk7 = 0;
            /* fallthrough */
        default:
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018E608_ovl3.s")
#endif

void func_8018F2B4_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 7) {
                if (D_800E8AE0[omCurrentObj->objId] & 2) {
                    play_sound(0x10C);
                } else {
                    play_sound(9);
                }
            } else if (gKirbyState.unk7 == 1) {
                play_sound(0x267);
            } else {
                play_sound(5);
            }
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 955/1001 insns; short=23 long=0.
 * Draft derived from the host arm with its shims/LP64-isms removed; close the instruction COUNT before touching registers. */
/* PORT: the bare-back ride (action 0x42) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_8018F368_ovl3.s (via m2c) -- the
 * model-less sibling of func_80188238_ovl3. Latches the surface bits
 * into D_800E9C60 and the hover flag into D_800EA520, services base
 * motion (skipping input in the jump phase), hands off when the ride
 * ends, and dismounts exactly like the ride handler (squeeze to
 * 0xA/0xD, idle-pad face button to 0x11/0x11, both masking the
 * collision class bits). The phase machine matches: 1 idles (hover
 * whistle timer to 0xEB, hover-flag flip re-triggers), 2 walks
 * (peck-window charge, 1.5x/2.75x anim speed), 3 jumps (ceiling
 * bounce probe, stun freeze, rise trail), 4 falls, 5 lands, 6 swims
 * (0x1E surface window, 0.35 coast / 0.24-3.4 steer), 7 waits out
 * the spit with gravity. The draw differs: phases 7/0 attach the
 * D_801922CC spray emitter to DObj [0xE], fan six aura rows (heights
 * from [0xE]'s world Y, spreads 0/39, 40/79, 80/120 and mirrored)
 * into D_8012E9B8+0x10 and draw D_801964BC yawed by |D_800E17D0| +
 * DObj [0xF]'s angle.v.y; other phases (but 8) attach D_80192264 and
 * draw D_801964B0 yawed by the track yaw + 1.3439 (77 deg). Steering:
 * B spits (7), a grounded 0x400 press dives (8), water entry swims
 * (6, buffering the launch in D_800E9E20); a phase change re-triggers
 * the coroutine.
 *
 * Port notes: same conventions as the func_80188238_ovl3 arm -- arg0
 * is the GObj (->unk3C->unk10 is data.dobj->firstChild), the
 * D_800D6F58 pad-idle test keeps the asm widths, the halfword
 * `D_8012BCA0 &= 7` is `*(u32 *) &= 0x7FFFF` on the PC layout, the
 * bounce probe reads func_8015449C_ovl3's tail result through the
 * established cast, the plylib helpers are void-arg,
 * func_8016854C_ovl3 keeps its (s32, s32, f32) spelling,
 * D_800DFBD0[...]->unk38/unk3C are DObj entries [0xE]/[0xF], and
 * func_800BB468's extra m2c args are leftover registers. */
void func_8018F368_ovl3(GObj *arg0) {
    s32 func_80121C90(void);
    s32 func_80121194(void);
    u32 func_801210FC(void);
    s32 func_801210B4(void);
    void func_801219C8(void);
    s32 func_80122460(void);
    s32 func_80122558(void);
    s32 func_801226FC(void);
    void func_80122A80(void);
    void func_8011DCD0(void);
    void func_8011EBD4(void);
    void func_8011ED68(void);
    void func_8011D614(void);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    void func_800B2340(Vector *, s32, s32);
    void func_80154578_ovl3(void *, s32, f32);
    void set_kirby_action_1(s32, s32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern u8 D_800D6F58[];
    extern u8 D_8012BCA0[];
    extern u8 D_80190F2C_ovl3[];
    extern u8 D_80192264_ovl3[];
    extern u8 D_801922CC_ovl3[];
    extern u8 D_8019395C_ovl3[];
    extern u8 D_801964B0_ovl3[];
    extern u8 D_801964BC_ovl3[];
    Vector pos;
    f32 *row;
    f32 f;
    u16 pressed;
    s32 held;
    s32 cnt;
    s32 id;

    id = omCurrentObj->objId;
    D_800E9C60[id] = D_800E8AE0[id];
    D_800EA520[omCurrentObj->objId] = gKirbyState.unk150;
    func_80153984_ovl3();
    if (gKirbyState.unk44 != 3) {
        func_801217B8();
    }
    func_8011CF58();
    if ((gKirbyState.unk30 != 0) || (gKirbyState.unk17 != 0)) {
        gKirbyState.abilityInUse = 0;
        func_8011DC5C();
        func_8011D67C();
        return;
    }
    cnt = func_80122460();
    if (((cnt != 0) && (gKirbyState.ceilingCollisionNext != 0))
        || ((gKirbyState.floorCollisionNext != 0)
            && (gKirbyController.buttonHeld & 0x400) && (cnt != 0))) {
        func_8011D614();
        *(u32 *) D_8012BCA0 &= 0x7FFFF;
        func_8011DC5C();
        gKirbyState.abilityInUse = 0;
        set_kirby_action_1(0xA, 0xD);
        return;
    }
    if ((gKirbyState.horizontalCollision != 0)
        && ((func_80122558() != 0) || (func_801226FC() != 0))) {
        func_8011D614();
        *(u32 *) D_8012BCA0 &= 0x7FFFF;
        func_8011DC5C();
        gKirbyState.abilityInUse = 0;
        return;
    }
    switch (gKirbyState.unk44) {
        case 1:
            if (func_80121C90() != 0) {
                gKirbyState.unk44 = 2;
                break;
            }
            if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
                break;
            }
            if (D_800E8920[omCurrentObj->objId] == 0) {
                gKirbyState.unk44 = 4;
                break;
            }
            if (gKirbyState.unk150 != 0) {
                id = omCurrentObj->objId;
                cnt = D_800E9720[id];
                if (cnt != 0) {
                    D_800E9720[id] = cnt - 1;
                    if (D_800E9720[omCurrentObj->objId] == 0) {
                        play_sound(0xEB);
                    }
                }
            }
            if ((gKirbyState.unk150 != D_800EA520[omCurrentObj->objId])
                && (gKirbyState.turnDirection == 0)) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                         func_8016C510_ovl3);
                break;
            }
            if (((*(s32 *) (D_800D6F58 + 0x50) | *(s32 *) (D_800D6F58 + 0x54)
                  | *(u16 *) (D_800D6F58 + 0x58)) == 0)
                && (gKirbyController.buttonPressed & 0x3F)) {
                gKirbyState.unk7 = 0;
                gKirbyState.abilityInUse = 0;
                func_8011E0E8();
                func_8011DC5C();
                func_8011D614();
                set_kirby_action_1(0x11, 0x11);
                return;
            }
            break;
        case 2:
            id = omCurrentObj->objId;
            if (D_800E64D0[id] == 0.0f) {
                gKirbyState.unk44 = 1;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (D_800E8920[id] == 0) {
                gKirbyState.unk44 = 4;
            }
            if (!(gKirbyState.isTurning & 1)) {
                if (gKirbyState.unk44 == 2) {
                    if (gKirbyState.unk7 == 0) {
                        if (func_801210FC() == 0) {
                            if (!(gKirbyController.buttonHeld & 0x300)) {
                                id = omCurrentObj->objId;
                                if (D_800E9560[id] < 0xA) {
                                    D_800E9560[id] += 1;
                                }
                            }
                        } else if (gKirbyController.buttonHeld & 0x300) {
                            id = omCurrentObj->objId;
                            cnt = D_800E9560[id];
                            if ((cnt > 0) && (cnt < 7)) {
                                gKirbyState.unk7 = 1;
                                func_80122A80();
                            } else {
                                D_800E9560[id] = 0;
                            }
                        }
                    }
                } else {
                    func_8011CF58();
                }
            } else {
                D_800E9560[omCurrentObj->objId] = 0;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            if (gKirbyState.unk7 == 0) {
                func_800AECC0(1.5f);
                func_800AED20(1.5f);
            } else {
                func_800AECC0(2.75f);
                func_800AED20(2.75f);
            }
            break;
        case 3:
            if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                gKirbyState.isTurning |= 1;
            }
            if (gKirbyState.ceilingCollisionNext != 0) {
                D_800E3210[omCurrentObj->objId] = 0.0f;
                gKirbyState.unk44 = 4;
                if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
                    if (((s32 (*)(u8 *, s32)) func_8015449C_ovl3)(D_8019395C_ovl3, 0) != 0) {
                        D_800E3210[omCurrentObj->objId] = 0.0f;
                        func_800BB468(0xB, 0xA);
                    }
                }
            }
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4();
            }
            id = omCurrentObj->objId;
            if ((D_800E83E0[id] & 0xFFFF) == 2) {
                D_800E3750[id] = 0.0f;
                id = omCurrentObj->objId;
                D_800E3210[id] = D_800E3750[id];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                func_800BB468(0xB, 0xA);
                gKirbyState.unk44 = 4;
            } else if (!(D_800E8AE0[id] & 6) && !(gKirbyState.unk9 & 1)
                       && (gKirbyState.unkCC < D_800E3210[id])) {
                func_8016854C_ovl3((s32) (uintptr_t) D_80190F2C_ovl3,
                                   (s32) (uintptr_t) arg0->data.dobj->firstChild, 1.0f);
            }
            func_801219C8();
            func_8011ED68();
            break;
        case 4:
            if (!(gKirbyState.isTurning & 1) && (D_800E8920[omCurrentObj->objId] != 0)) {
                gKirbyState.unk44 = 5;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            break;
        case 5:
            if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
                gKirbyState.unk44 = 2;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (func_800AF230() != 0) {
                gKirbyState.unk44 = 1;
            }
            break;
        case 6:
            held = gKirbyController.buttonHeld & 0xF00;
            if (held != 0) {
                D_800E9560[omCurrentObj->objId] = 0x1E;
            } else {
                id = omCurrentObj->objId;
                if (D_800E3210[id] > 0.0f) {
                    D_800E9560[id] = 0x1E;
                } else {
                    D_800E9560[id] -= 1;
                }
            }
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                if (D_800E8920[id] != 0) {
                    if (func_801210B4() != 0) {
                        gKirbyState.unk44 = 2;
                    } else {
                        gKirbyState.unk44 = 1;
                    }
                    id = omCurrentObj->objId;
                } else if ((held == 0) && (D_800E9560[id] == 0)
                           && (D_800E64D0[id] == 0.0f) && (D_800E3210[id] <= -0.8f)) {
                    gKirbyState.unk44 = 4;
                    id = omCurrentObj->objId;
                }
            } else {
                if (D_800E8920[id] != 0) {
                    gKirbyState.unk44 = 2;
                } else {
                    gKirbyState.unk44 = 3;
                }
                id = omCurrentObj->objId;
            }
            if (D_800E93A0[id] != 0) {
                D_800E93A0[id] -= 1;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            if (gKirbyState.unk17 == 0) {
                id = omCurrentObj->objId;
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    D_800E6690[id] = D_800E6A10[id] * 0.35f;
                    D_800E6850[omCurrentObj->objId] = 0.0f;
                } else {
                    D_800E6690[id] = D_800E6A10[id] * 0.24f;
                    D_800E6850[omCurrentObj->objId] = 3.4f;
                }
            }
            break;
        case 7:
            id = omCurrentObj->objId;
            if (D_800EA360[id] != 0) {
                if (D_800E8920[id] != 0) {
                    if (func_801210B4() != 0) {
                        gKirbyState.unk44 = 2;
                    } else {
                        gKirbyState.unk44 = 1;
                    }
                } else {
                    gKirbyState.unk44 = 4;
                }
                func_8011DCD0();
            }
            func_8011ED68();
            break;
        default:
            break;
    }
    /* shared tail: aura/emitter draw and steering */
    if ((gKirbyState.unk44 == 7) || (gKirbyState.unk44 == 0)) {
        func_8016854C_ovl3((s32) (uintptr_t) D_801922CC_ovl3,
                           (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xE], 1.0f);
        func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xE], 0xFFFF);
        row = (f32 *) ((u8 *) &D_8012E9B8 + 0x10);
        f = pos.y - gEntitiesNextPosYArray[omCurrentObj->objId];
        row[0] = f;
        row[1] = 0.0f;
        row[2] = f;
        row[3] = 39.0f;
        row[4] = f;
        row[5] = 40.0f;
        row[6] = f;
        row[7] = 79.0f;
        row[8] = f;
        row[9] = 80.0f;
        row[10] = f;
        row[11] = 120.0f;
        row[12] = f;
        row[13] = 0.0f;
        row[14] = f;
        row[15] = -39.0f;
        row[16] = f;
        row[17] = -40.0f;
        row[18] = f;
        row[19] = -79.0f;
        row[20] = f;
        row[21] = -80.0f;
        row[22] = f;
        row[23] = -120.0f;
        id = omCurrentObj->objId;
        func_80154578_ovl3(D_801964BC_ovl3, 0,
                           ABSF(D_800E17D0[id]) + D_800DFBD0[id][0xF]->angle.v.y);
    } else if (gKirbyState.unk44 != 8) {
        func_8016854C_ovl3((s32) (uintptr_t) D_80192264_ovl3,
                           (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xE], 1.0f);
        func_80154578_ovl3(D_801964B0_ovl3, 0,
                           gEntitiesAngleYArray[omCurrentObj->objId] + 1.3439035f);
    }
    if ((gKirbyState.unk44 != 7) && (gKirbyState.unk44 != 8)) {
        pressed = gKirbyController.buttonPressed;
        if (pressed & 0x4000) {
            gKirbyState.unk44 = 7;
        } else {
            id = omCurrentObj->objId;
            if ((D_800E8920[id] != 0) && (pressed & 0x400)) {
                gKirbyState.unk44 = 8;
            } else if (gKirbyState.unk44 != 7) {
                cnt = D_800E8AE0[id];
                if (D_800E8920[id] != 0) {
                    if (((cnt & 7) == 7)
                        && ((!(gKirbyController.buttonHeld & 0x400)
                             && (gKirbyController.buttonHeld & 0x800))
                            || ((pressed & 0x8000)
                                && (gKirbyController.buttonHeld & 0x300)))) {
                        D_800E9E20[id] = 1;
                        gKirbyState.unk44 = 6;
                    }
                } else {
                    if ((cnt & 6)
                        && ((pressed & 0x8000) || (gKirbyController.buttonHeld & 0xF00))) {
                        if (pressed & 0x8000) {
                            D_800E9E20[id] = 1;
                        } else {
                            D_800E9E20[id] = 0;
                        }
                        gKirbyState.unk44 = 6;
                    }
                }
            }
        }
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#elif defined(PORT)
/* PORT: the bare-back ride (action 0x42) per-tick handler, from
 * asm/nonmatchings/ovl3/ovl3_6/func_8018F368_ovl3.s (via m2c) -- the
 * model-less sibling of func_80188238_ovl3. Latches the surface bits
 * into D_800E9C60 and the hover flag into D_800EA520, services base
 * motion (skipping input in the jump phase), hands off when the ride
 * ends, and dismounts exactly like the ride handler (squeeze to
 * 0xA/0xD, idle-pad face button to 0x11/0x11, both masking the
 * collision class bits). The phase machine matches: 1 idles (hover
 * whistle timer to 0xEB, hover-flag flip re-triggers), 2 walks
 * (peck-window charge, 1.5x/2.75x anim speed), 3 jumps (ceiling
 * bounce probe, stun freeze, rise trail), 4 falls, 5 lands, 6 swims
 * (0x1E surface window, 0.35 coast / 0.24-3.4 steer), 7 waits out
 * the spit with gravity. The draw differs: phases 7/0 attach the
 * D_801922CC spray emitter to DObj [0xE], fan six aura rows (heights
 * from [0xE]'s world Y, spreads 0/39, 40/79, 80/120 and mirrored)
 * into D_8012E9B8+0x10 and draw D_801964BC yawed by |D_800E17D0| +
 * DObj [0xF]'s angle.v.y; other phases (but 8) attach D_80192264 and
 * draw D_801964B0 yawed by the track yaw + 1.3439 (77 deg). Steering:
 * B spits (7), a grounded 0x400 press dives (8), water entry swims
 * (6, buffering the launch in D_800E9E20); a phase change re-triggers
 * the coroutine.
 *
 * Port notes: same conventions as the func_80188238_ovl3 arm -- arg0
 * is the GObj (->unk3C->unk10 is data.dobj->firstChild), the
 * D_800D6F58 pad-idle test keeps the asm widths, the halfword
 * `D_8012BCA0 &= 7` is `*(u32 *) &= 0x7FFFF` on the PC layout, the
 * bounce probe reads func_8015449C_ovl3's tail result through the
 * established cast, the plylib helpers are void-arg,
 * func_8016854C_ovl3 keeps its (s32, s32, f32) spelling,
 * D_800DFBD0[...]->unk38/unk3C are DObj entries [0xE]/[0xF], and
 * func_800BB468's extra m2c args are leftover registers. */
void func_8018F368_ovl3(GObj *arg0) {
    s32 func_80121C90(void);
    s32 func_80121194(void);
    u32 func_801210FC(void);
    s32 func_801210B4(void);
    void func_801219C8(void);
    s32 func_80122460(void);
    s32 func_80122558(void);
    s32 func_801226FC(void);
    void func_80122A80(void);
    void func_8011DCD0(void);
    void func_8011EBD4(void);
    void func_8011ED68(void);
    void func_8011D614(void);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    void func_800B2340(Vector *, s32, s32);
    void func_80154578_ovl3(void *, s32, f32);
    void set_kirby_action_1(s32, s32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    void assign_new_process_entry(struct GObjProcess *, void *);
    void func_8016C510_ovl3(s32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    extern u8 D_800D6F58[];
    extern u8 D_8012BCA0[];
    extern u8 D_80190F2C_ovl3[];
    extern u8 D_80192264_ovl3[];
    extern u8 D_801922CC_ovl3[];
    extern u8 D_8019395C_ovl3[];
    extern u8 D_801964B0_ovl3[];
    extern u8 D_801964BC_ovl3[];
    Vector pos;
    f32 *row;
    f32 f;
    u16 pressed;
    s32 held;
    s32 cnt;
    s32 id;

    id = omCurrentObj->objId;
    D_800E9C60[id] = D_800E8AE0[id];
    D_800EA520[omCurrentObj->objId] = gKirbyState.unk150;
    func_80153984_ovl3();
    if (gKirbyState.unk44 != 3) {
        func_801217B8();
    }
    func_8011CF58();
    if ((gKirbyState.unk30 != 0) || (gKirbyState.unk17 != 0)) {
        gKirbyState.abilityInUse = 0;
        func_8011DC5C();
        func_8011D67C();
        return;
    }
    cnt = func_80122460();
    if (((cnt != 0) && (gKirbyState.ceilingCollisionNext != 0))
        || ((gKirbyState.floorCollisionNext != 0)
            && (gKirbyController.buttonHeld & 0x400) && (cnt != 0))) {
        func_8011D614();
        *(u32 *) D_8012BCA0 &= 0x7FFFF;
        func_8011DC5C();
        gKirbyState.abilityInUse = 0;
        set_kirby_action_1(0xA, 0xD);
        return;
    }
    if ((gKirbyState.horizontalCollision != 0)
        && ((func_80122558() != 0) || (func_801226FC() != 0))) {
        func_8011D614();
        *(u32 *) D_8012BCA0 &= 0x7FFFF;
        func_8011DC5C();
        gKirbyState.abilityInUse = 0;
        return;
    }
    switch (gKirbyState.unk44) {
        case 1:
            if (func_80121C90() != 0) {
                gKirbyState.unk44 = 2;
                break;
            }
            if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
                break;
            }
            if (D_800E8920[omCurrentObj->objId] == 0) {
                gKirbyState.unk44 = 4;
                break;
            }
            if (gKirbyState.unk150 != 0) {
                id = omCurrentObj->objId;
                cnt = D_800E9720[id];
                if (cnt != 0) {
                    D_800E9720[id] = cnt - 1;
                    if (D_800E9720[omCurrentObj->objId] == 0) {
                        play_sound(0xEB);
                    }
                }
            }
            if ((gKirbyState.unk150 != D_800EA520[omCurrentObj->objId])
                && (gKirbyState.turnDirection == 0)) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                         func_8016C510_ovl3);
                break;
            }
            if (((*(s32 *) (D_800D6F58 + 0x50) | *(s32 *) (D_800D6F58 + 0x54)
                  | *(u16 *) (D_800D6F58 + 0x58)) == 0)
                && (gKirbyController.buttonPressed & 0x3F)) {
                gKirbyState.unk7 = 0;
                gKirbyState.abilityInUse = 0;
                func_8011E0E8();
                func_8011DC5C();
                func_8011D614();
                set_kirby_action_1(0x11, 0x11);
                return;
            }
            break;
        case 2:
            id = omCurrentObj->objId;
            if (D_800E64D0[id] == 0.0f) {
                gKirbyState.unk44 = 1;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (D_800E8920[id] == 0) {
                gKirbyState.unk44 = 4;
            }
            if (!(gKirbyState.isTurning & 1)) {
                if (gKirbyState.unk44 == 2) {
                    if (gKirbyState.unk7 == 0) {
                        if (func_801210FC() == 0) {
                            if (!(gKirbyController.buttonHeld & 0x300)) {
                                id = omCurrentObj->objId;
                                if (D_800E9560[id] < 0xA) {
                                    D_800E9560[id] += 1;
                                }
                            }
                        } else if (gKirbyController.buttonHeld & 0x300) {
                            id = omCurrentObj->objId;
                            cnt = D_800E9560[id];
                            if ((cnt > 0) && (cnt < 7)) {
                                gKirbyState.unk7 = 1;
                                func_80122A80();
                            } else {
                                D_800E9560[id] = 0;
                            }
                        }
                    }
                } else {
                    func_8011CF58();
                }
            } else {
                D_800E9560[omCurrentObj->objId] = 0;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            if (gKirbyState.unk7 == 0) {
                func_800AECC0(1.5f);
                func_800AED20(1.5f);
            } else {
                func_800AECC0(2.75f);
                func_800AED20(2.75f);
            }
            break;
        case 3:
            if (!(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
                gKirbyState.isTurning |= 1;
            }
            if (gKirbyState.ceilingCollisionNext != 0) {
                D_800E3210[omCurrentObj->objId] = 0.0f;
                gKirbyState.unk44 = 4;
                if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
                    if (((s32 (*)(u8 *, s32)) func_8015449C_ovl3)(D_8019395C_ovl3, 0) != 0) {
                        D_800E3210[omCurrentObj->objId] = 0.0f;
                        func_800BB468(0xB, 0xA);
                    }
                }
            }
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4();
            }
            id = omCurrentObj->objId;
            if ((D_800E83E0[id] & 0xFFFF) == 2) {
                D_800E3750[id] = 0.0f;
                id = omCurrentObj->objId;
                D_800E3210[id] = D_800E3750[id];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                func_800BB468(0xB, 0xA);
                gKirbyState.unk44 = 4;
            } else if (!(D_800E8AE0[id] & 6) && !(gKirbyState.unk9 & 1)
                       && (gKirbyState.unkCC < D_800E3210[id])) {
                func_8016854C_ovl3((s32) (uintptr_t) D_80190F2C_ovl3,
                                   (s32) (uintptr_t) arg0->data.dobj->firstChild, 1.0f);
            }
            func_801219C8();
            func_8011ED68();
            break;
        case 4:
            if (!(gKirbyState.isTurning & 1) && (D_800E8920[omCurrentObj->objId] != 0)) {
                gKirbyState.unk44 = 5;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            func_8011ED68();
            break;
        case 5:
            if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
                gKirbyState.unk44 = 2;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 3;
            } else if (func_800AF230() != 0) {
                gKirbyState.unk44 = 1;
            }
            break;
        case 6:
            held = gKirbyController.buttonHeld & 0xF00;
            if (held != 0) {
                D_800E9560[omCurrentObj->objId] = 0x1E;
            } else {
                id = omCurrentObj->objId;
                if (D_800E3210[id] > 0.0f) {
                    D_800E9560[id] = 0x1E;
                } else {
                    D_800E9560[id] -= 1;
                }
            }
            id = omCurrentObj->objId;
            if (D_800E8AE0[id] & 6) {
                if (D_800E8920[id] != 0) {
                    if (func_801210B4() != 0) {
                        gKirbyState.unk44 = 2;
                    } else {
                        gKirbyState.unk44 = 1;
                    }
                    id = omCurrentObj->objId;
                } else if ((held == 0) && (D_800E9560[id] == 0)
                           && (D_800E64D0[id] == 0.0f) && (D_800E3210[id] <= -0.8f)) {
                    gKirbyState.unk44 = 4;
                    id = omCurrentObj->objId;
                }
            } else {
                if (D_800E8920[id] != 0) {
                    gKirbyState.unk44 = 2;
                } else {
                    gKirbyState.unk44 = 3;
                }
                id = omCurrentObj->objId;
            }
            if (D_800E93A0[id] != 0) {
                D_800E93A0[id] -= 1;
            }
            if (gKirbyState.unk3C == gKirbyState.unk44) {
                func_801219C8();
            }
            if (gKirbyState.unk17 == 0) {
                id = omCurrentObj->objId;
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    D_800E6690[id] = D_800E6A10[id] * 0.35f;
                    D_800E6850[omCurrentObj->objId] = 0.0f;
                } else {
                    D_800E6690[id] = D_800E6A10[id] * 0.24f;
                    D_800E6850[omCurrentObj->objId] = 3.4f;
                }
            }
            break;
        case 7:
            id = omCurrentObj->objId;
            if (D_800EA360[id] != 0) {
                if (D_800E8920[id] != 0) {
                    if (func_801210B4() != 0) {
                        gKirbyState.unk44 = 2;
                    } else {
                        gKirbyState.unk44 = 1;
                    }
                } else {
                    gKirbyState.unk44 = 4;
                }
                func_8011DCD0();
            }
            func_8011ED68();
            break;
        default:
            break;
    }
    /* shared tail: aura/emitter draw and steering */
    if ((gKirbyState.unk44 == 7) || (gKirbyState.unk44 == 0)) {
        func_8016854C_ovl3((s32) (uintptr_t) D_801922CC_ovl3,
                           (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xE], 1.0f);
        func_800B2340(&pos, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xE], 0xFFFF);
        row = (f32 *) ((u8 *) &D_8012E9B8 + 0x10);
        f = pos.y - gEntitiesNextPosYArray[omCurrentObj->objId];
        row[0] = f;
        row[1] = 0.0f;
        row[2] = f;
        row[3] = 39.0f;
        row[4] = f;
        row[5] = 40.0f;
        row[6] = f;
        row[7] = 79.0f;
        row[8] = f;
        row[9] = 80.0f;
        row[10] = f;
        row[11] = 120.0f;
        row[12] = f;
        row[13] = 0.0f;
        row[14] = f;
        row[15] = -39.0f;
        row[16] = f;
        row[17] = -40.0f;
        row[18] = f;
        row[19] = -79.0f;
        row[20] = f;
        row[21] = -80.0f;
        row[22] = f;
        row[23] = -120.0f;
        id = omCurrentObj->objId;
        func_80154578_ovl3(D_801964BC_ovl3, 0,
                           ABSF(D_800E17D0[id]) + D_800DFBD0[id][0xF]->angle.v.y);
    } else if (gKirbyState.unk44 != 8) {
        func_8016854C_ovl3((s32) (uintptr_t) D_80192264_ovl3,
                           (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][0xE], 1.0f);
        func_80154578_ovl3(D_801964B0_ovl3, 0,
                           gEntitiesAngleYArray[omCurrentObj->objId] + 1.3439035f);
    }
    if ((gKirbyState.unk44 != 7) && (gKirbyState.unk44 != 8)) {
        pressed = gKirbyController.buttonPressed;
        if (pressed & 0x4000) {
            gKirbyState.unk44 = 7;
        } else {
            id = omCurrentObj->objId;
            if ((D_800E8920[id] != 0) && (pressed & 0x400)) {
                gKirbyState.unk44 = 8;
            } else if (gKirbyState.unk44 != 7) {
                cnt = D_800E8AE0[id];
                if (D_800E8920[id] != 0) {
                    if (((cnt & 7) == 7)
                        && ((!(gKirbyController.buttonHeld & 0x400)
                             && (gKirbyController.buttonHeld & 0x800))
                            || ((pressed & 0x8000)
                                && (gKirbyController.buttonHeld & 0x300)))) {
                        D_800E9E20[id] = 1;
                        gKirbyState.unk44 = 6;
                    }
                } else {
                    if ((cnt & 6)
                        && ((pressed & 0x8000) || (gKirbyController.buttonHeld & 0xF00))) {
                        if (pressed & 0x8000) {
                            D_800E9E20[id] = 1;
                        } else {
                            D_800E9E20[id] = 0;
                        }
                        gKirbyState.unk44 = 6;
                    }
                }
            }
        }
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                 func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018F368_ovl3.s")
#endif

