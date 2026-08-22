/* Second translation unit of the original ovl10_5.c, split at 0x1E0D30.
 *
 * func_801F11A8_ovl10 and func_801F2098_ovl10 both end in an infinite loop and
 * both have a dead epilogue whose `lw $ra` sits at a rom offset == 16 mod 32.
 * IDO emits a literal `.align 5` after such a loop, so those epilogues are
 * 32-byte aligned from their object's .text base -- impossible while the TU
 * starts at 0x1E0500 (== 0 mod 32). One split satisfies both.
 *
 * Two function starts in range are == 16 mod 32; kirby64.yaml records why this
 * one was chosen and what would tell them apart. Read that note before
 * migrating ovl10_5's rodata, which is the one thing the choice affects.
 *
 * The declarations below are the parent file's, carried over mechanically.
 * Some are unused here; that is deliberate, so the two halves stay diffable
 * against the original single file.
 */
#include "common.h"
#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"

extern u32 D_800BE560[];
extern u8 D_800D6BE0[];
void func_801BE79C_ovl7(void);
extern s32 D_800BE500;
s32 func_800F8560(void);
#include "buffers.h"
void func_801A0880_ovl7(void);
void func_801EFF98_ovl10(void);
void func_800FF200(void *);
s32 func_801F1870_ovl10(void);
extern s32 D_801F4D68_ovl10[];
f32 sqrtf(f32);
extern f32 D_801F4C40_ovl10, D_801F4C44_ovl10, D_801F4C48_ovl10;
extern s32 D_801CA04C_ovl7[];
void func_800B7790(s32);
void func_801EF9B0_ovl10(GObj *);
void func_800AA018(s32);
void ohSleep(s32);

// 98/140 diffs: structure is right, but $v0/$v1 are swapped between the
// omCurrentObj pointer and the objId value throughout. Swept with ZERO effect:
// s32 return type on func_800AA018, ohSleep and func_800B7790 (each applied
// file-wide, --all stayed at 0 diff), `void ohSleep(u8)`, hoisting
// omCurrentObj into a local, and writing `ent` as an assignment instead of a
// declaration initializer (102).

s32 func_801EFFC0_ovl10(void) {
    if (D_800BE500 >= 6) {
        return 0;
    }
    if (func_800F8560() == 3) {
        return 1;
    }
    return 0;
}

void func_801F0014_ovl10(void *arg0) {
    *((u8 *) arg0 + 0x21) = 0;
    *(f32 *) ((u8 *) arg0 + 0x10) = 20.0f;
    *(f32 *) ((u8 *) arg0 + 0x14) = 20.0f;
    *(f32 *) ((u8 *) arg0 + 0x18) = -240.0f;
    func_800FF200(arg0);
}

#ifdef PORT
void func_8011C8F8(void);
void func_800F8E6C(GObj *);
void func_800F90C0(s32, u8 *);
void func_800A9864(s32, s32, s32);
void *func_800FF144(void);
void func_800FF1CC(void *);
s32 func_800B9FE0(s32);
void func_800AA608(void *, s32, f32, s32, f32);
s32 func_801F0EC8_ovl10(GObj *);
s32 change_kirby_hp(f32);
void change_kirby_stars(s32);
void change_kirby_lives(s32);
void play_sound(s32);
s32 request_track_general(s32, s32, s32);
void func_800B4924(GObj *);
void func_801F0DD0_ovl10(struct GObj *);
s32 func_801F2074_ovl10(s32);
f32 atan2f(f32, f32);
extern f32 sinf(f32);
extern f32 cosf(f32);
extern u32 D_801F4D60_ovl10;
extern f32 D_801F4D88_ovl10[];
extern u8 D_801F4D98_ovl10[];
extern void *D_801F4858_ovl10[];
extern s32 saveCurrentFileNum;
extern u32 D_801F47C0_ovl10[], D_801F47C4_ovl10[], D_801F47C8_ovl10[], D_801F47CC_ovl10[];
extern u32 D_801F47D0_ovl10[], D_801F47D4_ovl10[], D_801F47D8_ovl10[], D_801F47DC_ovl10[];
extern u32 D_801F47E8_ovl10[], D_801F47EC_ovl10[], D_801F47F0_ovl10[], D_801F47F4_ovl10[];
extern u32 D_801F47F8_ovl10[], D_801F4800_ovl10[], D_801F4808_ovl10[], D_801F480C_ovl10[];
extern u32 D_801F4810_ovl10[];

/* Goal-game roulette controller (Kirby's dive onto the prize wheel).
 * Runs the whole sequence as one coroutine: glide in until past the wheel
 * hub (D_800DFBD0[D_801F4D60][5]), swing the aim angle while A is awaited
 * (D_800E98E0 <- func_801F0DD0), charge the dive power while the second A
 * is awaited (D_800E9AA0), launch, poll func_801F0EC8 for the prize slot
 * hit during the fall, land, turn toward D_801F4D88, then award: slots
 * 4/5 = HP, 0/1/2 = 1/3/5 stars, 3 = 1UP, 6 = the file-dependent bonus.
 * The N64 selected the result-anim pair by address into the D_801F47F8
 * run; the PC data keeps those as separate u32[] tables, so the pair is
 * picked by index instead.  change_kirby_hp's 0x40C00000/0x3F800000
 * literals are float bits: 6.0f and 1.0f. */
void func_801F0050_ovl10(GObj *arg0) {
    Vector sp78;
    Vector sp6C;
    f32 spin;
    f32 power;
    f32 charge;
    f32 step;
    s32 slot;
    s32 prize;
    s32 i;
    s32 t;
    f32 target;
    void *particle;
    u32 animA;
    u32 animB;

    for (i = 0; i < 7; i++) {
        D_801F4D68_ovl10[i] = 0;
    }
    slot = 8;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_8011C8F8();
    func_800F8E6C(arg0);
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DF150[omCurrentObj->objId] = func_801F0DD0_ovl10;
    func_800F90C0(omCurrentObj->objId, D_801F4D98_ovl10);
    func_800A9864(0x300B8, 0x2C, 0x10);
    D_800E0490[omCurrentObj->objId] = (f32 **) D_801F4858_ovl10[0];
    particle = func_800FF144();
    D_800EA520[omCurrentObj->objId] = (s32) (uintptr_t) particle;
    func_801F0014_ovl10(particle);
    func_800AA018(D_801F47C0_ovl10[0]);
    if (D_801F47C4_ovl10[0] != 0) {
        func_800AA018(D_801F47C4_ovl10[0]);
    }
    gEntitiesAngleYArray[omCurrentObj->objId] = 1.5707964f;
    D_800E3050[omCurrentObj->objId] = 5.0f;
    ohSleep(2);
    while (1) {
        func_800B2340(&sp78, D_800DFBD0[D_801F4D60_ovl10][5], D_801F4D60_ovl10);
        func_800B2340(&sp6C, arg0->data.dobj, 0xFFFF);
        if (sp78.x < sp6C.x) {
            break;
        }
        ohSleep(1);
    }
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    func_800AA608(arg0->data.dobj->firstChild, D_801F47C8_ovl10[0], 0.0f, 0x300B8, 6.0f);
    func_800AA018(D_801F47C8_ovl10[0]);
    if (D_801F47CC_ovl10[0] != 0) {
        func_800AA018(D_801F47CC_ovl10[0]);
    }
    D_800E9C60[omCurrentObj->objId] = 1;
    spin = 0.0f;
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        spin += 6.0f;
        if (spin > 360.0f) {
            spin -= 360.0f;
        }
        gEntitiesAngleYArray[omCurrentObj->objId] =
            (((sinf((spin * 3.1415927f) / 180.0f) * 45.0f) + 90.0f) * 3.1415927f) / 180.0f;
        ohSleep(1);
    }
    D_800E9C60[omCurrentObj->objId] = 2;
    power = 0.0f;
    charge = 0.0f;
    func_800AA608(arg0->data.dobj->firstChild, D_801F47D0_ovl10[0], 0.0f, 0x300B8, 6.0f);
    func_800AA018(D_801F47D0_ovl10[0]);
    if (D_801F47D4_ovl10[0] != 0) {
        func_800AA018(D_801F47D4_ovl10[0]);
    }
    while (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
        charge += 9.0f;
        if (charge > 360.0f) {
            charge -= 360.0f;
        }
        power = ((sinf(((charge - 90.0f) * 3.1415927f) / 180.0f) + 1.2f) / 2.2f) * 5.6f;
        ohSleep(1);
    }
    D_800E9C60[omCurrentObj->objId] = 3;
    play_sound(0xF7);
    D_800E3050[omCurrentObj->objId] = cosf(gEntitiesAngleYArray[omCurrentObj->objId] - 1.5707964f) * power;
    D_800E3210[omCurrentObj->objId] = 17.0f;
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 17.0f;
    D_800E33D0[omCurrentObj->objId] = -(sinf(gEntitiesAngleYArray[omCurrentObj->objId] - 1.5707964f) * power);
    func_800AA018(D_801F47D8_ovl10[0]);
    if (D_801F47DC_ovl10[0] != 0) {
        func_800AA018(D_801F47DC_ovl10[0]);
    }
    while (!(D_800E3750[omCurrentObj->objId] < 0.0f)) {
        ohSleep(1);
    }
    func_800AA608(arg0->data.dobj->firstChild, D_801F47D8_ovl10[0], 0.0f, 0x300B8, 3.0f);
    func_800AA018(D_801F47D8_ovl10[0]);
    if (D_801F47DC_ovl10[0] != 0) {
        func_800AA018(D_801F47DC_ovl10[0]);
    }
    func_800AF27C();
    D_800E9C60[omCurrentObj->objId] = 4;
    func_800AA018(D_801F47E8_ovl10[0]);
    if (D_801F47EC_ovl10[0] != 0) {
        func_800AA018(D_801F47EC_ovl10[0]);
    }
    while (1) {
        if (D_800E9E20[omCurrentObj->objId] == 0) {
            t = func_801F0EC8_ovl10(arg0);
            slot = t;
            if (t != 8) {
                func_800FF1CC((void *) (uintptr_t) D_800EA520[D_801F4D68_ovl10[t]]);
                func_800AFBB4(0, D_800DE350[D_801F4D68_ovl10[t]]);
                play_sound(0xCA);
                D_800E9E20[omCurrentObj->objId] = 1;
            }
        }
        if (gEntitiesNextPosYArray[omCurrentObj->objId] < 0.0f) {
            break;
        }
        ohSleep(1);
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E33D0[omCurrentObj->objId] = 0.0f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E9C60[omCurrentObj->objId] = 5;
    func_800AA018(D_801F47F0_ovl10[0]);
    if (D_801F47F4_ovl10[0] != 0) {
        func_800AA018(D_801F47F4_ovl10[0]);
    }
    func_800AF27C();
    D_800E9C60[omCurrentObj->objId] = 6;
    target = atan2f(D_801F4D88_ovl10[0] - gEntitiesNextPosXArray[omCurrentObj->objId],
                    D_801F4D88_ovl10[2] - gEntitiesNextPosZArray[omCurrentObj->objId]);
    if (D_800E9E20[omCurrentObj->objId] == 0) {
        target += 0.69813174f;
    }
    step = (target - gEntitiesAngleYArray[omCurrentObj->objId]) / 5.0f;
    for (i = 0; i != 5; i++) {
        gEntitiesAngleYArray[omCurrentObj->objId] += step;
        ohSleep(1);
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (func_801F2074_ovl10(slot) == 1) {
            prize = 0;
        } else {
            prize = 1;
            if (slot == 6) {
                if (func_800B9FE0(saveCurrentFileNum) == 0) {
                    prize = 3;
                    D_800E98E0[request_track_general(0x29, 0x1E, 0x50)] = 0xE;
                }
            }
        }
        switch (prize) {
        case 0:
            animA = D_801F47F8_ovl10[0];
            animB = D_801F47F8_ovl10[1];
            break;
        case 1:
            animA = D_801F4800_ovl10[0];
            animB = D_801F4800_ovl10[1];
            break;
        case 2:
            animA = D_801F4808_ovl10[0];
            animB = D_801F480C_ovl10[0];
            break;
        default:
            animA = D_801F4810_ovl10[0];
            animB = D_801F4810_ovl10[1];
            break;
        }
        func_800AA018(animA);
        if (animB != 0) {
            func_800AA018(animB);
        }
        t = request_track_general(0x29, 0x1E, 0x50);
        D_800E98E0[t] = 0xD;
        D_800E9AA0[t].as_s32 = prize;
        D_800E98E0[D_801F4D68_ovl10[slot]] = 1;
        if (slot == 6) {
            if (prize == 3) {
                D_800E9C60[D_801F4D68_ovl10[slot]] = 1;
            } else {
                D_800E9C60[D_801F4D68_ovl10[slot]] = 0;
            }
        }
        for (i = 0; i != 7; i++) {
            if ((i != slot) && (D_801F4D68_ovl10[i] != 0)) {
                D_800E9AA0[D_801F4D68_ovl10[i]].as_s32 = 1;
            }
        }
        ohSleep(0x14);
        switch (slot) {
        case 4:
            change_kirby_hp(6.0f);
            break;
        case 5:
            change_kirby_hp(1.0f);
            break;
        case 0:
            change_kirby_stars(1);
            break;
        case 1:
            change_kirby_stars(3);
            break;
        case 2:
            change_kirby_stars(5);
            break;
        case 3:
            change_kirby_lives(1);
            play_sound(1);
            break;
        case 6:
            if (prize == 1) {
                play_sound(0x271);
            } else {
                play_sound(0x273);
            }
            break;
        }
    } else {
        func_800AA018(D_801F4808_ovl10[0]);
        if (D_801F480C_ovl10[0] != 0) {
            func_800AA018(D_801F480C_ovl10[0]);
        }
        t = request_track_general(0x29, 0x1E, 0x50);
        D_800E98E0[t] = 0xD;
        D_800E9AA0[t].as_s32 = 2;
        for (i = 0; i != 7; i++) {
            if (D_801F4D68_ovl10[i] != 0) {
                D_800E9AA0[D_801F4D68_ovl10[i]].as_s32 = 1;
            }
        }
        ohSleep(0x14);
    }
    D_800E98E0[request_track_general(0x28, 0x1E, 0x4F)] = 3;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F0050_ovl10.s")
#endif

void func_801F0DD0_ovl10(struct GObj *arg0) {
    if (D_800E9C60[omCurrentObj->objId] == 1) {
        if ((gKirbyController.buttonPressed & 0x8000) != 0) {
            D_800E98E0[omCurrentObj->objId] = 1;
        } else {
            D_800E98E0[omCurrentObj->objId] = 0;
        }
    }
    if (D_800E9C60[omCurrentObj->objId] == 2) {
        if ((gKirbyController.buttonPressed & 0x8000) != 0) {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
        } else {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        }
    }
    func_800FF200(D_800EA520[omCurrentObj->objId]);
}

#ifdef MIPS_TO_C
/* FACTORY: 127/149. Frame is 8 over the ROM's 0x90 and the local block sits high
 * (kirby at 0x8C vs the ROM's 0x60), which is the whole residue.
 * IMPORTANT correctness note kept in the draft: an empty slot's dist[] entry is left
 * UNINITIALISED here, exactly as the ROM leaves it -- the slot-occupied guards are
 * what keep it out of the compare chain. The PORT arm seeds those entries with
 * 65535.0f as host hardening; carrying that into the N64 draft costs 21 diffs
 * (148/149 -> 127/149 once removed) and is semantically wrong for the ROM.
 * Measured and rejected: all three declaration orders (scalars first, dist[] first,
 * both) -- identical score, so LEVERS 12/21/32 do not move this one; the aggregates
 * are all address-taken. */
/* Roulette hit poll: distance from Kirby's dive body (D_800DE350[0] node) to
 * every live wheel item in the D_801F4D68 slot registry (contiguous s32[7]
 * run); returns the nearest slot when it is within 34 units, else 8.
 * An empty slot's dist[] entry is deliberately left uninitialised, exactly as the
 * ROM does -- the slot-occupied guards are what keep it out of the compare chain.
 * (The PORT arm seeds those entries with 65535; that is a host-side hardening and
 * must NOT be carried into the N64 draft.) */
s32 func_801F0EC8_ovl10(GObj *arg0) {
    Vector kirby;
    Vector item;
    f32 dist[7];
    f32 best;
    f32 dx;
    f32 dy;
    f32 dz;
    s32 i;
    s32 bestSlot;

    for (i = 0; i < 7; i++) {
        if (D_801F4D68_ovl10[i] != 0) {
            func_800B2340(&kirby, D_800DE350[0]->data.dobj, 0);
            func_800B2340(&item, D_800DE350[D_801F4D68_ovl10[i]]->data.dobj, D_801F4D68_ovl10[i]);
            dx = item.x - kirby.x;
            dy = item.y - kirby.y;
            dz = item.z - kirby.z;
            dist[i] = sqrtf((dx * dx) + (dy * dy) + (dz * dz));
        }
    }
    bestSlot = 0;
    if ((D_801F4D68_ovl10[1] != 0) && (dist[1] < dist[0])) {
        bestSlot = 1;
    }
    if ((D_801F4D68_ovl10[2] != 0) && (dist[2] < dist[bestSlot])) {
        bestSlot = 2;
    }
    best = dist[bestSlot];
    for (i = 3; i < 7; i++) {
        if ((D_801F4D68_ovl10[i] != 0) && (dist[i] < best)) {
            bestSlot = i;
            best = dist[i];
        }
    }
    return (best < 34.0f) ? bestSlot : 8;
}
#elif defined(PORT)
/* Roulette hit poll: distance from Kirby's dive body (D_800DE350[0] node) to
 * every live wheel item in the D_801F4D68 slot registry (contiguous s32[7]
 * run); returns the nearest slot when it is within 34 units, else 8.
 * The ROM left the distance of an empty slot as stack garbage and relied on
 * the slot-occupied guards; the PC build seeds them with 65535 so an empty
 * slot can never win the compare chain or pass the 34-unit gate. */
s32 func_801F0EC8_ovl10(GObj *arg0) {
    Vector kirby;
    Vector item;
    f32 dist[7];
    f32 best;
    f32 dx;
    f32 dy;
    f32 dz;
    s32 i;
    s32 bestSlot;

    for (i = 0; i < 7; i++) {
        dist[i] = 65535.0f;
        if (D_801F4D68_ovl10[i] != 0) {
            func_800B2340(&kirby, D_800DE350[0]->data.dobj, 0);
            func_800B2340(&item, D_800DE350[D_801F4D68_ovl10[i]]->data.dobj, D_801F4D68_ovl10[i]);
            dx = item.x - kirby.x;
            dy = item.y - kirby.y;
            dz = item.z - kirby.z;
            dist[i] = sqrtf((dx * dx) + (dy * dy) + (dz * dz));
        }
    }
    bestSlot = 0;
    if ((D_801F4D68_ovl10[1] != 0) && (dist[1] < dist[0])) {
        bestSlot = 1;
    }
    if ((D_801F4D68_ovl10[2] != 0) && (dist[2] < dist[bestSlot])) {
        bestSlot = 2;
    }
    best = dist[bestSlot];
    for (i = 3; i < 7; i++) {
        if ((D_801F4D68_ovl10[i] != 0) && (dist[i] < best)) {
            bestSlot = i;
            best = dist[i];
        }
    }
    return (best < 34.0f) ? bestSlot : 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F0EC8_ovl10.s")
#endif

extern u8 D_800D6C10;
extern u8 D_800D6C11[];

s32 func_801F111C_ovl10(void) {
    s32 i;

    if (D_800D6C10 == 0) {
        return 0;
    }
    for (i = 0; i < 80; i++) {
        if (D_800D6C11[i] == 0) {
            return 0;
        }
    }
    return 1;
}

#ifdef MIPS_TO_C

/* Prize-wheel object main: claims the wheel track id (D_801F4D60), drops
 * its sparkle, spawns the three walking prizes (states 0..2, mount 1..3 via
 * D_800E9AA0), moves onto DL bucket 0x14, runs the intro camera spline
 * D_801F4670 on camera 0x10 and records the spline's end eye position into
 * D_801F4D88 (f32 x/y/z, 4-byte stride) as the crowd focus point, spawns
 * the wheel items (states 6..0xC; the file-complete bonus slot 0xC only
 * when func_801F111C says the save file still has room), then keeps
 * stepping the camera; once Kirby's controller reaches phase 5
 * (D_800E9C60[0]) it just idles the camera forever.
 * 0x42C80000 / 0x40000000 passed to the f32 camera params are float bits:
 * 100.0f and 2.0f. */
void func_801F11A8_ovl10(GObj *arg0) {
    #include "unk_structs/D_800D79D8.h"
    void func_800AF7A0(s32);
    void func_800FA414(s32);
    void omGMoveObjDL(GObj *, u8, s32);
    void func_800B2F54(s32, void *, f32);
    void func_800B3070(s32, f32);
    void func_800A71A0(s32);
    struct UnkStruct800D79D8 *func_800A6F40(u16);
    void func_800B4954(GObj *);
    void func_801F1454_ovl10(struct GObj *);
    extern u32 D_801F4670_ovl10[];

    struct UnkStruct800E1B50 *ent;
    s32 i;
    s32 t;

    D_801F4D60_ovl10 = omCurrentObj->objId;
    D_800DF150[omCurrentObj->objId] = func_801F1454_ovl10;
    ent = D_800E1B50[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_800FF1CC(ent->unk80);
    ent->unk80 = NULL;
    gEntitiesScaleXArray[omCurrentObj->objId] = 1.3f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 1.0f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 1.3f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    func_800AF7A0(0x2C);
    for (i = 0; i < 3; i++) {
        t = request_track_general(0x29, 0x1E, 0x50);
        D_800E98E0[t] = i;
        D_800E9AA0[t].as_s32 = i + 1;
    }
    omGMoveObjDL(arg0, arg0->dl_link, 0x14);
    func_800FA414(1);
    func_800B2F54(0x10, D_801F4670_ovl10, 100.0f);
    func_800A71A0(0x10);
    D_801F4D88_ovl10[0] = func_800A6F40(0x10)->unk3C;
    D_801F4D88_ovl10[1] = func_800A6F40(0x10)->unk40;
    D_801F4D88_ovl10[2] = func_800A6F40(0x10)->unk44;
    func_800B2F54(0x10, D_801F4670_ovl10, 0.0f);
    func_800B3070(0x10, 2.0f);
    func_800A71A0(0x10);
    ohSleep(1);
    for (i = 6; i < 0xD; i++) {
        if ((i != 0xC) || (func_801F111C_ovl10() == 0)) {
            D_800E98E0[request_track_general(0x29, 0x1E, 0x50)] = i;
        }
    }
    for (i = 0; i != 0x23; i++) {
        func_800A71A0(0x10);
        ohSleep(1);
    }
    while (D_800E9C60[0] != 5) {
        ohSleep(1);
    }
    while (1) {
        func_800A71A0(0x10);
        ohSleep(1);
    }
}
#elif defined(PORT)
#include "unk_structs/D_800D79D8.h"
void func_800AF7A0(s32);
void func_800FA414(s32);
void omGMoveObjDL(GObj *, u8, s32);
void func_800B2F54(s32, void *, f32);
void func_800B3070(s32, f32);
void func_800A71A0(s32);
struct UnkStruct800D79D8 *func_800A6F40(u16);
void func_800B4954(GObj *);
void func_801F1454_ovl10(struct GObj *);
extern u32 D_801F4670_ovl10[];

/* Prize-wheel object main: claims the wheel track id (D_801F4D60), drops
 * its sparkle, spawns the three walking prizes (states 0..2, mount 1..3 via
 * D_800E9AA0), moves onto DL bucket 0x14, runs the intro camera spline
 * D_801F4670 on camera 0x10 and records the spline's end eye position into
 * D_801F4D88 (f32 x/y/z, 4-byte stride) as the crowd focus point, spawns
 * the wheel items (states 6..0xC; the file-complete bonus slot 0xC only
 * when func_801F111C says the save file still has room), then keeps
 * stepping the camera; once Kirby's controller reaches phase 5
 * (D_800E9C60[0]) it just idles the camera forever.
 * 0x42C80000 / 0x40000000 passed to the f32 camera params are float bits:
 * 100.0f and 2.0f. */
void func_801F11A8_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *ent;
    s32 i;
    s32 t;

    D_801F4D60_ovl10 = omCurrentObj->objId;
    D_800DF150[omCurrentObj->objId] = func_801F1454_ovl10;
    ent = D_800E1B50[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_800FF1CC(ent->unk80);
    ent->unk80 = NULL;
    gEntitiesScaleXArray[omCurrentObj->objId] = 1.3f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 1.0f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 1.3f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    func_800AF7A0(0x2C);
    for (i = 0; i < 3; i++) {
        t = request_track_general(0x29, 0x1E, 0x50);
        D_800E98E0[t] = i;
        D_800E9AA0[t].as_s32 = i + 1;
    }
    omGMoveObjDL(arg0, arg0->dl_link, 0x14);
    func_800FA414(1);
    func_800B2F54(0x10, D_801F4670_ovl10, 100.0f);
    func_800A71A0(0x10);
    D_801F4D88_ovl10[0] = func_800A6F40(0x10)->unk3C;
    D_801F4D88_ovl10[1] = func_800A6F40(0x10)->unk40;
    D_801F4D88_ovl10[2] = func_800A6F40(0x10)->unk44;
    func_800B2F54(0x10, D_801F4670_ovl10, 0.0f);
    func_800B3070(0x10, 2.0f);
    func_800A71A0(0x10);
    ohSleep(1);
    for (i = 6; i < 0xD; i++) {
        if ((i != 0xC) || (func_801F111C_ovl10() == 0)) {
            D_800E98E0[request_track_general(0x29, 0x1E, 0x50)] = i;
        }
    }
    for (i = 0; i != 0x23; i++) {
        func_800A71A0(0x10);
        ohSleep(1);
    }
    while (D_800E9C60[0] != 5) {
        ohSleep(1);
    }
    while (1) {
        func_800A71A0(0x10);
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F11A8_ovl10.s")
#endif

/* 1/64.  Was 11/64 with the three constants as `extern f32`; this TU's rodata
   is MIGRATED, and writing them as literals fixed the load scheduling that the
   earlier sweep (a `lim` local at four positions, both operand orders of the
   outer `+` and of the 1.0f compare) could not move.
   The remaining diff is the operand order of the one add: the ROM has
   `add.s $f10, $f0, $f8` ($f0 = v, $f8 = the array load) and IDO emits the two
   the other way round.  Swept since: both source orders (identical output --
   IDO canonicalises this add), a cast on either side, extra parens, a named
   local for the array element, `v +=`, `v = v +`, and the ternary form. */
#ifdef NON_MATCHING
/* 1/64 in place (scan.py's preprocessed copy scores it 4 -- believe the
   in-file number). The single defect is the operand order of one add: the ROM
   has `add.s $f10, $f0, $f8` ($f0 = v, $f8 = the D_800E17D0 load), IDO emits
   the two the other way round. Swept, all identical or worse: both source
   orders (IDO canonicalises this add), the ternary written inline, a named
   local for the array element loaded before the if (36) and after it (18),
   and `v = v + ...; store v;` (10). */
void func_801F1454_ovl10(struct GObj *arg0) {
    f32 v;

    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        v = -1.5707964f;
    } else {
        v = 1.5707964f;
    }
    gEntitiesAngleYArray[omCurrentObj->objId] = v + D_800E17D0[omCurrentObj->objId];
    while (6.2831855f <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= 6.2831855f;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += 6.2831855f;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F1454_ovl10.s")
#endif
#ifdef MIPS_TO_C
/* FACTORY: 198/199. This draft also OWNS the N64-side prototype for func_800A9864:
 * ovl10_5b.c keeps that prototype in the PORT-only block at the top of the file, so
 * nothing declares it in the N64 build, and IDO allows exactly one block-scope copy
 * per TU. If a later draft in this file needs it too (func_801F1A24 does), the fix is
 * to move those prototypes to real file scope rather than duplicating them. */

/* Snaps this track's position and angles onto mount node 1/2/3 of the
 * D_801F4D60 wheel object, picked by arg1 (0..2); other values are a no-op.
 * D_800DFBD0 rows are native DObj** on the PC build. */
void func_801F1554_ovl10(GObj *arg0, s32 arg1) {
    void func_800A9864(s32, s32, s32);
    extern u32 D_801F4D60_ovl10;

    Vector pos;
    Vector ang;
    struct DObj *node;

    switch (arg1) {
    case 0:
        node = D_800DFBD0[D_801F4D60_ovl10][1];
        break;
    case 1:
        node = D_800DFBD0[D_801F4D60_ovl10][2];
        break;
    case 2:
        node = D_800DFBD0[D_801F4D60_ovl10][3];
        break;
    default:
        return;
    }
    func_800B2340(&pos, node, D_801F4D60_ovl10);
    gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = pos.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
    func_800B26D8(&ang, node, D_801F4D60_ovl10);
    gEntitiesAngleXArray[omCurrentObj->objId] = ang.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = ang.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = ang.z;
}
#elif defined(PORT)
extern u32 D_801F4D60_ovl10;

/* Snaps this track's position and angles onto mount node 1/2/3 of the
 * D_801F4D60 wheel object, picked by arg1 (0..2); other values are a no-op.
 * D_800DFBD0 rows are native DObj** on the PC build. */
void func_801F1554_ovl10(GObj *arg0, s32 arg1) {
    Vector pos;
    Vector ang;
    struct DObj *node;

    switch (arg1) {
    case 0:
        node = D_800DFBD0[D_801F4D60_ovl10][1];
        break;
    case 1:
        node = D_800DFBD0[D_801F4D60_ovl10][2];
        break;
    case 2:
        node = D_800DFBD0[D_801F4D60_ovl10][3];
        break;
    default:
        return;
    }
    func_800B2340(&pos, node, D_801F4D60_ovl10);
    gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = pos.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
    func_800B26D8(&ang, node, D_801F4D60_ovl10);
    gEntitiesAngleXArray[omCurrentObj->objId] = ang.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = ang.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = ang.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F1554_ovl10.s")
#endif

extern s32 D_800D6B98;
extern s32 D_800D6B9C;

s32 func_801F1870_ovl10(void) {
    if (D_800D6B98 != 0) {
        return 4;
    }
    if (func_801F19DC_ovl10(0, 2) == 2) {
        return 4;
    }
    if (func_801F19DC_ovl10(0, 1) == 2 && D_800D6B9C >= 2) {
        return 4;
    }
    if (func_801F19DC_ovl10(0, 1) == 2) {
        return 3;
    }
    if (func_801F19DC_ovl10(0, 0) == 2 && D_800D6B9C > 0) {
        return 3;
    }
    return 2;
}

s32 func_801F1934_ovl10(s32 arg0) {
    switch (func_801F1870_ovl10()) {
    case 1:
        if (arg0 == 0) {
            return 1;
        }
        return 0;
    case 2:
        if (arg0 == 0 || arg0 == 2) {
            return 1;
        }
        return 0;
    case 3:
        if (arg0 != 1) {
            return 1;
        }
        return 0;
    case 4:
        return 1;
    }
    return 0;
}

s32 func_801F19DC_ovl10(s32 arg0, s32 arg1) {
    if (arg1 >= D_800BE560[arg0]) {
        return 0;
    }
    return D_800D6BE0[arg0 * 6 + arg1] & 3;
}

/* NOT MEASURABLE YET -- blocked on this TU's declaration scoping, not on codegen.
 * ovl10_5b.c keeps func_800A9864 / func_800FF144 / func_800FF1CC and friends inside
 * the PORT-only prototype block at the top of the file, so the N64 build has NO
 * declaration in scope. Exactly one draft can supply them at block scope: IDO
 * rejects a second block-scope copy in another function AND rejects the implicit
 * int a bare call creates there. func_801F1554_ovl10 currently owns the
 * declaration, so this one cannot compile alongside it. Un-blocking is a one-line
 * coordinator change: move those prototypes to real file scope. */
#ifdef PORT
extern void func_800B1900(u16);
extern s32 random_soft_s32_range(s32);
extern u32 D_801F48F4_ovl10[];
extern u32 D_801F4818_ovl10[];
extern u32 D_801F4884_ovl10[];
extern u32 D_801F48BC_ovl10[];
extern u32 D_801F48D8_ovl10[];

/* Wheel-item setup for the walking prizes (arg2 = 1 waddle dee, 2 adeleine,
 * 3 king dedede; other kinds skip the model swap): stops the track's music
 * cue when the prize kind is locked out (func_801F1934), loads the model +
 * path table, spawns the escort track (state 3/4/5), plays one of the two
 * D_801F4818[arg2] anim pairs at random, scales to 0.2, snaps onto wheel
 * mount arg1, and attaches the sparkle particle. */
void func_801F1A24_ovl10(GObj *arg0, s32 arg1, s32 arg2) {
    s32 r;
    s32 second;
    void *particle;

    if (func_801F1934_ovl10(arg2) == 0) {
        func_800B1900((u16) omCurrentObj->objId);
    }
    switch (arg2) {
    case 1:
        func_800A9864(D_801F48F4_ovl10[arg2], 0x2C, 0x10);
        D_800E0490[omCurrentObj->objId] = (f32 **) D_801F4884_ovl10;
        D_800E98E0[request_track_general(0x29, 0x1E, 0x50)] = 3;
        break;
    case 2:
        func_800A9864(D_801F48F4_ovl10[arg2], 0x2C, 0x10);
        D_800E0490[omCurrentObj->objId] = (f32 **) D_801F48D8_ovl10;
        D_800E98E0[request_track_general(0x29, 0x1E, 0x50)] = 4;
        break;
    case 3:
        func_800A9864(D_801F48F4_ovl10[arg2], 0x2C, 0x10);
        D_800E0490[omCurrentObj->objId] = (f32 **) D_801F48BC_ovl10;
        D_800E98E0[request_track_general(0x29, 0x1E, 0x50)] = 5;
        break;
    }
    r = random_soft_s32_range(2);
    func_800AA018(D_801F4818_ovl10[(arg2 * 4) + (r * 2)]);
    second = D_801F4818_ovl10[(arg2 * 4) + (r * 2) + 1];
    if (second != 0) {
        func_800AA018(second);
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_801F1554_ovl10(arg0, arg1);
    particle = func_800FF144();
    D_800EA520[omCurrentObj->objId] = (s32) (uintptr_t) particle;
    func_801F0014_ovl10(particle);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F1A24_ovl10.s")
#endif

/* D_801F4CA8_ovl10 = 0.2f : now emitted by this TU */
extern s32 D_801F4908_ovl10[];
extern s32 D_801F4914_ovl10[];
void func_800A9864(s32, s32, s32);
void func_801F1554_ovl10(GObj *, s32);

void func_801F1CA0_ovl10(GObj *arg0, s32 arg1) {
    s32 idx = arg1 + 1;

    func_800A9864(D_801F4908_ovl10[arg1], 0x2C, 0x10);
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800AA018(D_801F4914_ovl10[idx]);
    func_801F1554_ovl10(arg0, arg1);
    curObjSleepForever();
}

s32 func_801F1D60_ovl10(Vector vec, s32 count, f32 dist) {
    s32 i;

    for (i = 0; i < count; i++) {
        if (sqrtf(((vec.x - gEntitiesNextPosXArray[D_801F4D68_ovl10[i]]) *
                   (vec.x - gEntitiesNextPosXArray[D_801F4D68_ovl10[i]])) +
                  ((vec.z - gEntitiesNextPosZArray[D_801F4D68_ovl10[i]]) *
                   (vec.z - gEntitiesNextPosZArray[D_801F4D68_ovl10[i]]))) < dist) {
            return 1;
        }
    }
    return 0;
}
extern u32 D_801F4D60_ovl10;
/* D_801F4CAC_ovl10 = 3.1415927f : now emitted by this TU */
/* D_801F4CB0_ovl10 = 3.1415927f : now emitted by this TU */
extern s32 random_soft_s32_range(s32);
extern f32 cosf(f32);
extern f32 sinf(f32);

Vector *func_801F1E48_ovl10(Vector *arg0) {
    Vector sp34;
    Vector sp28;
    f32 sp24;
    f32 sp20;

    func_800B2340(&sp34, D_800DFBD0[D_801F4D60_ovl10][5], D_801F4D60_ovl10);
    sp24 = (f32) random_soft_s32_range(7) * 20.0f + 50.0f;
    sp20 = (f32) random_soft_s32_range(0x13) * 5.0f - 45.0f;
    sp28.x = cosf(sp20 * 3.1415927f / 180.0f) * sp24 + sp34.x;
    sp28.y = sp34.y + 20.0f;
    sp28.z = -sinf(sp20 * 3.1415927f / 180.0f) * sp24 + sp34.z;
    *arg0 = sp28;
    return arg0;
}

s32 func_801F1D60_ovl10(Vector, s32, f32);
Vector *func_801F1E48_ovl10(Vector *);

Vector *func_801F1F7C_ovl10(Vector *arg0, s32 arg1) {
    s32 lp0;
    s32 lp1;
    s32 lp2;
    Vector sp58;
    s32 tp0;
    f32 dist;
    s32 i;

    dist = 60.0f;
    i = 0;
    do {
        i++;
        if (i == 50 || i == 100 || i == 150) {
            dist -= 5.0f;
        }
        func_801F1E48_ovl10(&sp58);
    } while (func_801F1D60_ovl10(sp58, arg1, dist) != 0);
    *arg0 = sp58;
    return arg0;
}

s32 func_801F2074_ovl10(s32 arg0) {
    if (arg0 == 4 || arg0 == 5) {
        return 1;
    }
    return 0;
}

#ifdef MIPS_TO_C

/* One wheel prize item (arg1 = slot 0..6).  Registers itself in
 * D_801F4D68[arg1], loads its model (+optional anim) from the
 * D_801F4768/D_801F4784 tables (slot 5 picks one of four foods at random
 * from D_801F47A0/D_801F47B0), drops onto a free spot on the wheel, then
 * idles: D_800E98E0 set by the controller means "swallowed" (teleport into
 * Kirby's mouth node with the matching gulp anim), D_800E9AA0 means "clean
 * up" (kill sparkle, shrink to nothing, poof effect, sleep forever).
 * The ROM staged the four tables through stack copies; the PC build reads
 * the (identical) rodata directly. */
void func_801F2098_ovl10(GObj *arg0, s32 arg1) {
    extern s32 D_801F4D68_ovl10[];
    extern u32 D_801F4D60_ovl10;
    extern u32 D_801F4768_ovl10[];
    extern u32 D_801F4784_ovl10[];
    extern u32 D_801F47A0_ovl10[];
    extern u32 D_801F47B0_ovl10[];
    void func_800A7F74(u32, u32, u32, f32, f32, f32);
    Vector pos;
    Vector ang;
    f32 scale;
    s32 r;
    s32 second;
    void *particle;

    D_801F4D68_ovl10[arg1] = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    if (D_801F47C4_ovl10[0] != 0) {
        func_800AA018(D_801F47C4_ovl10[0]);
    void func_800A9864(s32, s32, s32);
        second = D_801F47B0_ovl10[r];
    if (D_801F47C4_ovl10[0] != 0) {
        func_800AA018(D_801F47C4_ovl10[0]);
        }
    } else {
    void func_800A9864(s32, s32, s32);
        second = D_801F4784_ovl10[arg1];
    if (D_801F47C4_ovl10[0] != 0) {
        func_800AA018(D_801F47C4_ovl10[0]);
        }
    }
    void func_800AA018(s32);
    func_801F1F7C_ovl10(&pos, arg1);
    gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = pos.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
    particle = func_800FF144();
    D_800EA520[omCurrentObj->objId] = (s32) (uintptr_t) particle;
    func_801F0014_ovl10(particle);
    while (1) {
        func_800B2340(&sp78, D_800DFBD0[D_801F4D60_ovl10][5], D_801F4D60_ovl10);
    func_800B2340(&sp6C, arg0->data.dobj, 0xFFFF);
            gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
            gEntitiesNextPosYArray[omCurrentObj->objId] = pos.y;
            gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
    func_800B26D8(&ang, node, D_801F4D60_ovl10);
            gEntitiesAngleXArray[omCurrentObj->objId] = ang.x;
            gEntitiesAngleYArray[omCurrentObj->objId] = ang.y;
            gEntitiesAngleZArray[omCurrentObj->objId] = ang.z;
    if (D_801F47C4_ovl10[0] != 0) {
        func_800AA018(D_801F47C4_ovl10[0]);
            } else if ((arg1 == 6) && (D_800E9C60[omCurrentObj->objId] == 1)) {
    void func_800AA018(s32);
            } else {
    void func_800AA018(s32);
            }
            D_800E98E0[omCurrentObj->objId] = 0;
        }
        if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
            break;
        }
    void ohSleep(s32);
    }
    void func_800FF1CC(void *);
    for (scale = 1.0f; scale >= 0.0f; scale -= 0.05f) {
        gEntitiesScaleXArray[omCurrentObj->objId] = scale;
        gEntitiesScaleYArray[omCurrentObj->objId] = scale;
        gEntitiesScaleZArray[omCurrentObj->objId] = scale;
    void ohSleep(s32);
    }
    func_800AFBB4(0, D_800DE350[D_801F4D68_ovl10[t]]);
    void func_800A7F74(u32, u32, u32, f32, f32, f32);
    curObjSleepForever();
}
#elif defined(PORT)
extern u32 D_801F4768_ovl10[];
extern u32 D_801F4784_ovl10[];
extern u32 D_801F47A0_ovl10[];
extern u32 D_801F47B0_ovl10[];
void func_800A7F74(u32, u32, u32, f32, f32, f32);

/* One wheel prize item (arg1 = slot 0..6).  Registers itself in
 * D_801F4D68[arg1], loads its model (+optional anim) from the
 * D_801F4768/D_801F4784 tables (slot 5 picks one of four foods at random
 * from D_801F47A0/D_801F47B0), drops onto a free spot on the wheel, then
 * idles: D_800E98E0 set by the controller means "swallowed" (teleport into
 * Kirby's mouth node with the matching gulp anim), D_800E9AA0 means "clean
 * up" (kill sparkle, shrink to nothing, poof effect, sleep forever).
 * The ROM staged the four tables through stack copies; the PC build reads
 * the (identical) rodata directly. */
void func_801F2098_ovl10(GObj *arg0, s32 arg1) {
    Vector pos;
    Vector ang;
    f32 scale;
    s32 r;
    s32 second;
    void *particle;

    D_801F4D68_ovl10[arg1] = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    if (arg1 == 5) {
        r = random_soft_s32_range(4);
        func_800A9864(D_801F47A0_ovl10[r], 0x1869F, 0x10);
        second = D_801F47B0_ovl10[r];
        if (second != 0) {
            func_800AA018(second);
        }
    } else {
        func_800A9864(D_801F4768_ovl10[arg1], 0x1869F, 0x10);
        second = D_801F4784_ovl10[arg1];
        if (second != 0) {
            func_800AA018(second);
        }
    }
    func_800AA018(0x105F6);
    func_801F1F7C_ovl10(&pos, arg1);
    gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = pos.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
    particle = func_800FF144();
    D_800EA520[omCurrentObj->objId] = (s32) (uintptr_t) particle;
    func_801F0014_ovl10(particle);
    while (1) {
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            func_800AFBB4(1, arg0);
            func_800B2340(&pos, D_800DE350[0]->data.dobj, 0);
            gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
            gEntitiesNextPosYArray[omCurrentObj->objId] = pos.y;
            gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
            func_800B26D8(&ang, D_800DE350[0]->data.dobj, 0);
            gEntitiesAngleXArray[omCurrentObj->objId] = ang.x;
            gEntitiesAngleYArray[omCurrentObj->objId] = ang.y;
            gEntitiesAngleZArray[omCurrentObj->objId] = ang.z;
            if (func_801F2074_ovl10(arg1) == 1) {
                func_800AA018(0x30065);
            } else if ((arg1 == 6) && (D_800E9C60[omCurrentObj->objId] == 1)) {
                func_800AA018(0x30066);
            } else {
                func_800AA018(0x30067);
            }
            D_800E98E0[omCurrentObj->objId] = 0;
        }
        if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
            break;
        }
        ohSleep(1);
    }
    func_800FF1CC((void *) (uintptr_t) D_800EA520[omCurrentObj->objId]);
    for (scale = 1.0f; scale >= 0.0f; scale -= 0.05f) {
        gEntitiesScaleXArray[omCurrentObj->objId] = scale;
        gEntitiesScaleYArray[omCurrentObj->objId] = scale;
        gEntitiesScaleZArray[omCurrentObj->objId] = scale;
        ohSleep(1);
    }
    func_800AFBB4(0, omCurrentObj);
    func_800A7F74(3, 0, 7,
                  gEntitiesNextPosXArray[omCurrentObj->objId],
                  gEntitiesNextPosYArray[omCurrentObj->objId],
                  gEntitiesNextPosZArray[omCurrentObj->objId]);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F2098_ovl10.s")
#endif

struct Ovl10Pair5b {
    s32 unk0;
    s32 unk4;
};

extern s32 D_801F4938_ovl10[];
extern struct Ovl10Pair5b D_801F4948_ovl10[];
void func_800A7A70(s32, s32, s32);
void func_800AA2C8(s32, s32, s32);

void func_801F25FC_ovl10(GObj *arg0, s32 arg1) {
    Vector sp2C;
    Vector sp20;

    func_800A7A70(3, 0x30014, 0x30015);
    func_800B2340(&sp2C, D_800DE350[0]->data.dobj, 0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp2C.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp2C.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp2C.z;
    func_800B26D8(&sp20, D_800DE350[0]->data.dobj, 0);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp20.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp20.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp20.z;
    func_800AA2C8(D_801F4938_ovl10[arg1], 0x1869F, 0x10);
    if ((arg1 + D_801F4948_ovl10)->unk0 != 0) {
        func_800AA018((arg1 + D_801F4948_ovl10)->unk0);
    }
    if ((arg1 + D_801F4948_ovl10)->unk4 != 0) {
        func_800AA018((arg1 + D_801F4948_ovl10)->unk4);
    }
    curObjSleepForever();
}

extern s32 D_801F4968_ovl10;
extern s32 D_801F496C_ovl10;
extern s32 D_801F4970_ovl10;
void func_800A9864(s32, s32, s32);

void func_801F2770_ovl10(struct GObj *arg0) {
    Vector sp2C;
    Vector sp20;

    func_800B2340(&sp2C, D_800DE350[0]->data.dobj, 0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp2C.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp2C.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp2C.z;
    func_800B26D8(&sp20, D_800DE350[0]->data.dobj, 0);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp20.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp20.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp20.z;
    func_800A9864(D_801F4968_ovl10, 0x1869F, 0x10);
    if (D_801F496C_ovl10 != 0) {
        func_800AA018(D_801F496C_ovl10);
    }
    if (D_801F4970_ovl10 != 0) {
        func_800AA018(D_801F4970_ovl10);
    }
    curObjSleepForever();
}

void func_801F1A24_ovl10(GObj *, s32, s32);
void func_801F2098_ovl10(GObj *, s32);
void func_801F25FC_ovl10(GObj *, s32);

void func_801F28AC_ovl10(GObj *arg0) {
    s32 kind = D_800E98E0[omCurrentObj->objId];

    switch (kind) {
        case 0:
        case 1:
        case 2:
            func_801F1A24_ovl10(arg0, kind, D_800E9AA0[omCurrentObj->objId].as_s32);
            break;
        case 3:
        case 4:
        case 5:
            func_801F1CA0_ovl10(arg0, kind - 3);
            break;
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
            func_801F2098_ovl10(arg0, kind - 6);
            break;
        case 0xD:
            func_801F25FC_ovl10(arg0, D_800E9AA0[omCurrentObj->objId].as_s32);
            break;
        case 0xE:
            func_801F2770_ovl10(arg0);
            break;
    }
    curObjSleepForever();
}

#ifdef PORT
extern Gfx *gDisplayListHeads[4];
s32 func_800AB0F4(GObj *);
void func_800AB120(GObj *);
void func_800AB174(GObj *);
void func_800AB1F0(GObj *);
void func_800AB244(GObj *);
void renderDrawDObjFromGObj(GObj *);
void renderDrawObject_TypeD(GObj *);
void func_8001585C(GObj *);
void func_80015BCC(GObj *);
extern u32 D_801F4750_ovl10[];
extern u32 D_801F4758_ovl10[];
extern u8 D_801F4D98_ovl10[];
extern u8 D_801F4DA0_ovl10[];

static void pc_ovl10_gfx(s32 head, uintptr_t w0, uintptr_t w1) {
    Gfx *g = gDisplayListHeads[head];

    gDisplayListHeads[head] = g + 1;
    g->words.w0 = w0;
    g->words.w1 = w1;
}

/* gsSPNumLights(1) + the two G_MOVEMEM light loads (light + ambient). */
static void pc_ovl10_lights(s32 head, void *light, void *ambient) {
    pc_ovl10_gfx(head, 0xDB020000, 0x18);
    pc_ovl10_gfx(head, 0xDC08060A, (uintptr_t) light);
    pc_ovl10_gfx(head, 0xDC08090A, (uintptr_t) ambient);
}

/* Goal-game render callback: per render-mode (func_800AB0F4 19..30) sets
 * the track's segment-4 base, swaps in the goal-game light pair
 * D_801F4DA0/D_801F4D98, draws with the mode's renderer, and restores the
 * stage light pair D_801F4758/D_801F4750.  Even modes 20..30 render on
 * both display-list heads. */
void func_801F2964_ovl10(GObj *arg0) {
    switch (func_800AB0F4(arg0)) {
    case 19:
        pc_ovl10_gfx(0, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_lights(0, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        func_800AB120(arg0);
        pc_ovl10_lights(0, D_801F4758_ovl10, D_801F4750_ovl10);
        break;
    case 21:
        pc_ovl10_gfx(0, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_lights(0, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        func_800AB1F0(arg0);
        pc_ovl10_lights(0, D_801F4758_ovl10, D_801F4750_ovl10);
        break;
    case 23:
    case 25:
        pc_ovl10_gfx(0, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_lights(0, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        renderDrawDObjFromGObj(arg0);
        pc_ovl10_lights(0, D_801F4758_ovl10, D_801F4750_ovl10);
        break;
    case 27:
    case 29:
        pc_ovl10_gfx(0, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_lights(0, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        func_8001585C(arg0);
        pc_ovl10_lights(0, D_801F4758_ovl10, D_801F4750_ovl10);
        break;
    case 20:
        pc_ovl10_gfx(0, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_gfx(1, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_lights(0, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        pc_ovl10_lights(1, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        func_800AB174(arg0);
        pc_ovl10_lights(0, D_801F4758_ovl10, D_801F4750_ovl10);
        pc_ovl10_lights(1, D_801F4758_ovl10, D_801F4750_ovl10);
        break;
    case 22:
        pc_ovl10_gfx(0, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_gfx(1, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_lights(0, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        pc_ovl10_lights(1, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        func_800AB244(arg0);
        pc_ovl10_lights(0, D_801F4758_ovl10, D_801F4750_ovl10);
        pc_ovl10_lights(1, D_801F4758_ovl10, D_801F4750_ovl10);
        break;
    case 24:
    case 26:
        pc_ovl10_gfx(0, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_gfx(1, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_lights(0, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        pc_ovl10_lights(1, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        renderDrawObject_TypeD(arg0);
        pc_ovl10_lights(0, D_801F4758_ovl10, D_801F4750_ovl10);
        pc_ovl10_lights(1, D_801F4758_ovl10, D_801F4750_ovl10);
        break;
    case 28:
    case 30:
        pc_ovl10_gfx(0, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_gfx(1, 0xDB060010, (uintptr_t) gSegment4StartArray[arg0->objId]);
        pc_ovl10_lights(0, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        pc_ovl10_lights(1, D_801F4DA0_ovl10, D_801F4D98_ovl10);
        func_80015BCC(arg0);
        pc_ovl10_lights(0, D_801F4758_ovl10, D_801F4750_ovl10);
        pc_ovl10_lights(1, D_801F4758_ovl10, D_801F4750_ovl10);
        break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F2964_ovl10.s")
#endif

