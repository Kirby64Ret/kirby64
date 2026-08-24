#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "sounds.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_3.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"

#include "ovl17.h"

extern f32 D_801E5558_ovl17;
extern f32 D_801E55A0_ovl17;
extern f32 D_801E55A4_ovl17;
extern f32 D_801E5578_ovl17;
extern f32 D_801E557C_ovl17;
extern f32 D_801E5580_ovl17;

/* func_801DB1E0_ovl17 stores 0.0f/1200.0f into unkC/unk10/unk14 with swc1,
   so the three trailing words are floats, not s32. Same layout either way. */
struct Ovl17CamPos {
    Vector unk0;
    f32 unkC;
    f32 unk10;
    f32 unk14;
};

extern struct Ovl17CamPos D_800D7B20;
extern Vector D_800D7B2C;
extern struct Ovl17CamPos D_800D7B38;
extern Vector D_801E4E60_ovl17;
extern Vector D_801E4E6C_ovl17;
extern s32 D_800D6B54;
extern s32 D_800D6B58;
extern s32 D_800BE4F8;
extern void auFunc80020C88(void);
extern void func_800A7EB4(void);
extern void func_8011DA34(void);
extern void play_music(s32, s32);
extern f32 D_800D715C;
extern f32 D_800D7160;
extern f32 D_800D7164;
extern f32 D_800D7168;
extern f32 D_800D716C;
extern f32 D_801E56F0_ovl17;
extern f32 D_801E56F4_ovl17;
extern f32 D_801E56F8_ovl17;
void func_800A71A0(s32);

#if defined(MIPS_TO_C) || defined(PORT)
/* The 02 Battle stage director -- the ovl17 boss thread that owns the arena.
 * It installs func_801DC91C_ovl17 as the per-tick hook, sets the camera
 * constants (fov 30, near 100, far 12800, the 90/1200/800 rig distances and
 * the 0.01396 spin rate), parks Kirby's spawn at the origin, and then either
 * plays the intro (D_800D6E48 == 0: camera mode 2, a 209-frame hold behind
 * func_800AAF34/func_800B3070) or jumps straight in (func_800BC0F0(2)).
 * Round setup zeroes the boss's own track lanes, puts the four projectile
 * slots (D_800EBBE0/BDA0/BF60/C120) at -1, scales the boss to 0.2 and faces
 * it PI about X and Z.
 * The body is an endless three-state loop over gKirbyState.unk24 (Kirby hit
 * the boss) and D_800E98E0 (the boss is reacting): hit -> play 0x10688/89 and
 * hold the boss in state 1 until func_800AF230 says the beat is over;
 * reacting -> play 0x10682/83, spawn a type-0x3B shot aimed back down the
 * boss->Kirby vector and file it in the first free projectile slot; idle ->
 * play 0x1068B plus either the four-frame 0x1068A loop (when the previous
 * animation was 0x10682) or a plain 0x1068A.
 *
 * FACTORY: 544/562 words differ, and the draft is 7 words long. Semantics are
 * solved -- every call, constant, branch and store is accounted for -- but the
 * score is dominated by ONE unreproduced fact: the ROM holds a float constant
 * in the callee-saved $f20 (1200.0f for the camera rig, then 8.0f for the two
 * animation-speed arguments in the loop) and therefore saves/restores it,
 * making its frame 0x40 where this comes out 0x38. Every saved-register offset
 * and every branch displacement follows from that.
 * Swept and rejected: naming the constant in an `f32` local used at all four
 * sites (IDO constant-propagates it and still uses no callee-saved FP
 * register, 545 -> 544), and re-reading it out of D_800D7168 instead
 * (553/570). Feeding the local a genuinely non-constant expression DOES
 * produce the $f20 save and drops the residue to 491, which pins the cause
 * exactly -- but that expression is not what the ROM computes, so it is not
 * in the draft. This wants the permuter.
 *
 * Type note kept regardless of the score: struct Ovl17CamPos's unkC/unk10/
 * unk14 are f32, not s32 -- this function writes them with swc1. Retyped
 * above; layout and the ROM sha1 are unchanged.
 *
 * PORT: shared rather than duplicated -- named struct fields and f32/s32
 * arithmetic throughout, no pointer punning. */
#include "Player.h"

extern f32 D_800D7170;
extern s32 D_800D6E48;
extern s32 D_800DFF50[];
extern s32 D_800E9560[];
extern void (*D_800DEDD0[])(struct GObj *);
extern f32 D_800EA6E0[];
extern f32 D_800EA8A0[];
extern f32 D_800EAA60[];
extern f32 D_800EAC20[];
extern f32 D_800EADE0[];
extern f32 D_800EAFA0[];
extern s32 D_800EBBE0[];
extern s32 D_800EBDA0[];
extern s32 D_800EBF60[];
extern s32 D_800EC120[];
extern f32 D_801E5520_ovl17;
extern f32 D_801E5524_ovl17;
extern f32 D_801E5528_ovl17;
extern f32 D_801E552C_ovl17;
extern f32 D_801E56D0_ovl17;
extern f32 D_801E56D4_ovl17;
extern f32 D_801E56D8_ovl17;
extern f32 D_801E56DC_ovl17;
extern f32 D_801E56E0_ovl17;
extern f32 D_801E56E4_ovl17;
extern f32 D_801E56E8_ovl17;
extern f32 D_801E56EC_ovl17;
void func_80111534(s32);
void func_801E0A74_ovl17(void);
void func_800AFBB4(s32, struct GObj *);
void func_800AAF34(s32, s32, f32);
void func_800B3070(s32, f32);
void func_801AE7E0_ovl7(s32);
void func_800BC0F0(s32);
void func_800AA018(s32);
s32 func_800AF230(void);
s32 func_801E0B38_ovl17(s32, s32);
void func_800AA5C4(s32, u32, f32);
void func_800A9F98(s32, f32);
void func_800A9864(s32, s32, s32);
void func_800B4924(struct GObj *);
void func_801DBA8C_ovl17(struct GObj *);
void func_801DC91C_ovl17(struct GObj *);

void func_801DB1E0_ovl17(struct GObj *arg0) {
    s32 spawned;
    f32 v;

    D_800DEDD0[omCurrentObj->objId] = func_801DC91C_ovl17;
    func_80111534(omCurrentObj->objId);
    D_800D7158[0] = 30.0f;
    D_800D715C = 100.0f;
    D_800D7160 = 12800.0f;
    D_800D7164 = 90.0f;
    v = 1200.0f;
    D_800D7168 = v;
    D_800D716C = 800.0f;
    D_800D7170 = D_801E5520_ovl17;
    gEntitiesNextPosYArray[0] = 0.0f;
    gEntitiesNextPosXArray[0] = gEntitiesNextPosYArray[0];
    gEntitiesNextPosZArray[0] = D_800D716C;
    func_801E0A74_ovl17();
    if (D_800D6E48 == 0) {
        D_800D7098.unk0 = 2;
        D_800DEF90[omCurrentObj->objId] = NULL;
        func_800AFBB4(0, omCurrentObj);
        D_800DF150[omCurrentObj->objId] = NULL;
        D_800D7B20.unk0.x = 0.0f;
        D_800D7B20.unk10 = v;
        D_800D7B20.unkC = 0.0f;
        D_800D7B20.unk14 = 0.0f;
        D_800D7B20.unk0.y = 0.0f;
        D_800D7B20.unk0.z = 0.0f;
        D_800D7B38 = D_800D7B20;
        func_800AAF34(0x10, 0x10691, 0.0f);
        func_800B3070(0x10, 2.0f);
        func_801AE7E0_ovl7(0x13);
        ohSleep(0xD1);
    } else {
        func_800BC0F0(2);
    }
    D_800D7098.unk0 = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DF150[omCurrentObj->objId] = func_801DBA8C_ovl17;
    func_800AFBB4(1, omCurrentObj);
    gKirbyState.unk24 = 0;
    gKirbyState.unk68 = 0;
    D_800E7CE0[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800EC120[omCurrentObj->objId] = -1;
    D_800EBF60[omCurrentObj->objId] = D_800EC120[omCurrentObj->objId];
    D_800EBDA0[omCurrentObj->objId] = D_800EC120[omCurrentObj->objId];
    D_800EBBE0[omCurrentObj->objId] = D_800EC120[omCurrentObj->objId];
    gEntitiesScaleXArray[omCurrentObj->objId] = D_801E5524_ovl17;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_801E5524_ovl17;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_801E5524_ovl17;
    D_800EA6E0[omCurrentObj->objId] = D_801E5528_ovl17;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = D_801E5528_ovl17;
    gEntitiesAngleZArray[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800EADE0[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId];
    D_800EAC20[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId];
    D_801E56D0_ovl17 = 0.0f;
    D_801E56D4_ovl17 = D_800D7164;
    D_801E56D8_ovl17 = 0.0f;
    D_801E56DC_ovl17 = D_800D7164;
    D_801E56E0_ovl17 = 0.0f;
    D_801E56E4_ovl17 = 0.0f;
    D_801E56E8_ovl17 = 0.0f;
    D_801E56EC_ovl17 = 0.0f;
    D_800D7B20.unk0.x = 0.0f;
    D_800D7B20.unk0.y = 0.0f;
    D_800D7B20.unk0.z = 0.0f;
    D_800D7B20.unkC = 0.0f;
    D_800D7B20.unk10 = 0.0f;
    D_800D7B20.unk14 = D_800D7168;
    D_800D7B38 = D_800D7B20;
    gEntitiesAngleYArray[0] = D_801E552C_ovl17;
    func_800A9864(0x100F0, 0x20, 0x10);
    v = 8.0f;
    arg0->data.dobj->pos.v.x = 0.0f;
    arg0->data.dobj->pos.v.y = 0.0f;
    arg0->data.dobj->pos.v.z = D_800D716C;
    while (1) {
        if (gKirbyState.unk24 != 0) {
            func_800AA018(0x10688);
            func_800AA018(0x10689);
            while (func_800AF230() == 0) {
                D_800E98E0[omCurrentObj->objId] = 1;
                ohSleep(1);
            }
        }
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            func_800AA018(0x10682);
            func_800AA018(0x10683);
            spawned = func_801E0B38_ovl17(0x3B, 0);
            if (spawned != 0) {
                D_800EA6E0[spawned] = -gEntitiesNextPosXArray[omCurrentObj->objId];
                D_800EA8A0[spawned] = -gEntitiesNextPosYArray[omCurrentObj->objId];
                D_800EAA60[spawned] = -gEntitiesNextPosZArray[omCurrentObj->objId];
                if (D_800EBBE0[omCurrentObj->objId] == -1) {
                    D_800EBBE0[omCurrentObj->objId] = spawned;
                } else if (D_800EBDA0[omCurrentObj->objId] == -1) {
                    D_800EBDA0[omCurrentObj->objId] = spawned;
                } else if (D_800EBF60[omCurrentObj->objId] == -1) {
                    D_800EBF60[omCurrentObj->objId] = spawned;
                } else if (D_800EC120[omCurrentObj->objId] == -1) {
                    D_800EC120[omCurrentObj->objId] = spawned;
                }
            }
            func_801AE7E0_ovl7(0x12);
            if (func_800AF230() == 0) {
                while (gKirbyState.unk24 == 0) {
                    ohSleep(1);
                    if (D_800E98E0[omCurrentObj->objId] != 0) {
                        break;
                    }
                    if (func_800AF230() != 0) {
                        break;
                    }
                }
            }
        } else {
            func_800AA018(0x1068B);
            if (D_800DFF50[omCurrentObj->objId] == 0x10682) {
                func_800AA5C4(0x1068A, 0x100F0, v);
                D_800E9560[omCurrentObj->objId] = 0;
                while (D_800E9560[omCurrentObj->objId] < 4) {
                    if (gKirbyState.unk24 != 0) {
                        break;
                    }
                    if (D_800E98E0[omCurrentObj->objId] != 0) {
                        break;
                    }
                    ohSleep(1);
                    D_800E9560[omCurrentObj->objId] += 1;
                }
                func_800A9F98(0x1068A, v);
            } else {
                func_800AA018(0x1068A);
            }
            if (func_800AF230() == 0) {
                while (gKirbyState.unk24 == 0) {
                    if (D_800E98E0[omCurrentObj->objId] != 0) {
                        break;
                    }
                    ohSleep(1);
                    if (func_800AF230() != 0) {
                        break;
                    }
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DB1E0_ovl17.s")
#endif

#if defined(MIPS_TO_C) || defined(PORT)
/* 02's per-tick hook, installed into D_800DF150 by func_801DB1E0_ovl17 above.
 * D_800E83E0 is its request mailbox: 1 hands the thread over to the death
 * sequence (func_801DC460_ovl17) and 2 is the "start the fight" cue. Each tick
 * it clears a pending Kirby hit into a 45-frame stun, runs the aim/orientation
 * pass, refreshes the body parts through func_80111574/func_80111C4C while the
 * intro camera is not up, then counts how many of the four projectile slots
 * still hold a live type-0x3B shot -- releasing the slots whose shot is gone --
 * and, with fewer than four out and the fire button pressed, arms the next
 * shot (D_800E98E0 = 1) with its launch cue.
 *
 * This function was NOT in the porting gap until func_801DB1E0_ovl17's arm
 * above started referencing it; it is drafted here so that arm does not
 * introduce a new undefined symbol.
 *
 * FACTORY: 6/199 words differ, instruction count exact, every branch matches.
 * The six are one neighbouring-register swap: the ROM holds &D_800E83E0[objId]
 * in $a1 and the loaded request in $v0, IDO the other way round. Swept:
 * declaring the pointer first, and naming the masked request in its own local
 * -- both 6/199.
 * What paid: caching the mailbox ELEMENT ADDRESS in a pointer local (the ROM
 * stores through it) and writing the two-way dispatch as a `switch` with case
 * 2 before case 1 -- IDO sorts the compares by value but lays the bodies in
 * source order, and the ROM's case-1 body sits at the HIGHER address
 * (LEVERS lever 34). 24/199 -> 6/199.
 *
 * PORT: shared rather than duplicated; the `(s32 *)` view of D_800E9AA0 is the
 * flat 4-byte-slot vram layout the host uses. */
#include "Player.h"

extern s32 D_800E83E0[];
extern u16 D_800E77A0[];
extern u8 D_801E53D4_ovl17;
extern u16 gPlayerControllers;
extern struct GObjProcess *gEntityGObjProcessArray[];
void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
void func_800BB468(s32, s32);
s32 *func_80111574(void *, s32);
void func_80111C4C(s32 *);
void func_801DBDA8_ovl17(void);
void func_801DC2D0_ovl17(void);
void func_801DC3F4_ovl17(void);
void func_801DC460_ovl17(struct GObj *);

void func_801DBA8C_ovl17(struct GObj *arg0) {
    struct GObj *g;
    s32 *req;

    g = omCurrentObj;
    req = &D_800E83E0[g->objId];
    switch (*req & 0xFFFF) {
        case 2:
            *req = 0;
            play_sound(0xD8);
            func_800BB468(0, 0);
            g = omCurrentObj;
            break;
        case 1:
            assign_new_process_entry(gEntityGObjProcessArray[g->objId], func_801DC460_ovl17);
            func_800BB468(3, 0);
            return;
    }
    if (gKirbyState.unk24 != 0) {
        gKirbyState.unk24 = 0;
        gKirbyState.unk68 = 0;
        D_800E7CE0[g->objId] = 0x2D;
    }
    if (D_800D7098.unk0 == 0) {
        func_801DBDA8_ovl17();
    }
    func_801DC2D0_ovl17();
    func_801DC3F4_ovl17();
    if (D_800D7098.unk0 == 0) {
        func_80111C4C(func_80111574(&D_801E53D4_ovl17, omCurrentObj->objId));
    }
    g = omCurrentObj;
    ((s32 *) D_800E9AA0)[g->objId] = 0;
    if (D_800EBBE0[g->objId] != -1) {
        if (D_800E77A0[D_800EBBE0[g->objId]] == 0x3B) {
            ((s32 *) D_800E9AA0)[g->objId] += 1;
        } else {
            D_800EBBE0[g->objId] = -1;
        }
    }
    if (D_800EBDA0[g->objId] != -1) {
        if (D_800E77A0[D_800EBDA0[g->objId]] == 0x3B) {
            ((s32 *) D_800E9AA0)[g->objId] += 1;
        } else {
            D_800EBDA0[g->objId] = -1;
        }
    }
    if (D_800EBF60[g->objId] != -1) {
        if (D_800E77A0[D_800EBF60[g->objId]] == 0x3B) {
            ((s32 *) D_800E9AA0)[g->objId] += 1;
        } else {
            D_800EBF60[g->objId] = -1;
        }
    }
    if (D_800EC120[g->objId] != -1) {
        if (D_800E77A0[D_800EC120[g->objId]] == 0x3B) {
            ((s32 *) D_800E9AA0)[g->objId] += 1;
        } else {
            D_800EC120[g->objId] = -1;
        }
    }
    if (D_800E98E0[g->objId] > 0) {
        D_800E98E0[g->objId] -= 1;
        return;
    }
    if (((s32 *) D_800E9AA0)[g->objId] < 4) {
        if ((&gPlayerControllers)[1] & 0x4000) {
            D_800E98E0[g->objId] = 1;
            if (D_800D7098.unk0 == 0) {
                play_sound(0x1C1);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DBA8C_ovl17.s")
#endif

#if defined(MIPS_TO_C) || defined(PORT)
/* 02's free-look integrator, called by func_801DBA8C_ovl17 above while the
 * intro camera is down. The D-pad steers a per-frame angular VELOCITY
 * (D_800EAC20 pitch, D_800EADE0 yaw) that is clamped to D_800D7170 -- divided
 * by sqrt(2) when a diagonal is held so the combined rate stays the same --
 * and decays back to zero by the same 0.15 * rate step when nothing is held.
 * The C buttons set the roll rate D_800EAFA0 outright each frame. The velocity
 * is then composed onto the current orientation as a rotation matrix and read
 * back out as Euler angles into D_800EA6E0/A8A0/AA60, using the same
 * asinf/atan2f gimbal-safe extraction as func_800B26D8 in src/ovl1/ovl1_7.c.
 *
 * Like func_801DBA8C_ovl17 above, this was not in the porting gap until the
 * arm above began referencing it; it is drafted here so that reference does
 * not leave a new undefined symbol. It calls nothing that is still assembly,
 * so this closes the chain.
 *
 * FACTORY: 263/331 words differ and the draft is 1 word long (ROM 330). Every
 * branch, every call and all eight late_rodata constants are accounted for.
 * The residue starts at instruction 0 and cascades: the ROM keeps the button
 * word in $a1 straight out of its `lhu` and the 0xC00 mask in $v0, while IDO
 * loads into $v0 and needs a `move` -- from there the temp registers are
 * permuted for the rest of the function, and the frame comes out 0xD0 against
 * the ROM 0xD8.
 * What paid: hoisting `btn & 0xC00` into a local (the ROM tests it twice from
 * one register), typing the button word s32 rather than u16, and re-reading
 * omCurrentObj inline instead of caching it before the dispatch -- the ROM
 * sinks that load into each arm (316 -> 263).
 *
 * PORT: shared rather than duplicated -- Mat4/Vector and f32 throughout. */
#include "main/lbmatrix.h"

extern f32 D_800D7170;
extern f32 D_801E5530_ovl17;
extern u16 gPlayerControllers;
f32 asinf(f32);
f32 atan2f(f32, f32);
void utilWrapRotation(Vector *);
void HS64_MkRotationMtxF(Mat4, f32, f32, f32);

void func_801DBDA8_ovl17(void) {
    Vector rot;
    Mat4 finalMtx;
    Mat4 tmpMtx;
    f32 rate;
    f32 lim;
    f32 step;
    s32 btn;
    s32 horiz;
    s32 vert;

    btn = gPlayerControllers;
    horiz = btn & 0xC00;
    vert = btn & 0x300;
    if ((horiz != 0) && ((btn & 3) != 0)) {
        rate = D_800D7170;
        lim = rate / D_801E5530_ovl17;
    } else {
        rate = D_800D7170;
        lim = rate;
    }
    if (horiz != 0) {
        if ((btn & 0x800) != 0) {
            step = rate * 0.15f;
            D_800EAC20[omCurrentObj->objId] += step;
            if (lim < D_800EAC20[omCurrentObj->objId]) {
                D_800EAC20[omCurrentObj->objId] = lim;
            }
        } else {
            step = rate * 0.15f;
            D_800EAC20[omCurrentObj->objId] -= step;
            if (D_800EAC20[omCurrentObj->objId] < -lim) {
                D_800EAC20[omCurrentObj->objId] = -lim;
            }
        }
    } else {
        step = rate * 0.15f;
        if (ABSF(D_800EAC20[omCurrentObj->objId]) < step) {
            D_800EAC20[omCurrentObj->objId] = 0.0f;
        } else if (step <= D_800EAC20[omCurrentObj->objId]) {
            D_800EAC20[omCurrentObj->objId] -= step;
        } else if (D_800EAC20[omCurrentObj->objId] <= step) {
            D_800EAC20[omCurrentObj->objId] += step;
        }
    }
    if (vert != 0) {
        if ((btn & 0x100) != 0) {
            D_800EADE0[omCurrentObj->objId] += step;
            if (lim < D_800EADE0[omCurrentObj->objId]) {
                D_800EADE0[omCurrentObj->objId] = lim;
            }
        } else {
            D_800EADE0[omCurrentObj->objId] -= step;
            if (D_800EADE0[omCurrentObj->objId] < -lim) {
                D_800EADE0[omCurrentObj->objId] = -lim;
            }
        }
    } else {
        if (ABSF(D_800EADE0[omCurrentObj->objId]) < step) {
            D_800EADE0[omCurrentObj->objId] = 0.0f;
        } else if (step <= D_800EADE0[omCurrentObj->objId]) {
            D_800EADE0[omCurrentObj->objId] -= step;
        } else if (D_800EADE0[omCurrentObj->objId] <= step) {
            D_800EADE0[omCurrentObj->objId] += step;
        }
    }
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    if ((btn & 0x30) != 0) {
        if ((btn & 0x10) != 0) {
            D_800EAFA0[omCurrentObj->objId] += 0.06981317f;
        }
        if ((btn & 0x20) != 0) {
            D_800EAFA0[omCurrentObj->objId] -= 0.06981317f;
        }
    }
    guMtxIdentF(finalMtx);
    HS64_MkRotationMtxF(tmpMtx, D_800EAC20[omCurrentObj->objId], D_800EADE0[omCurrentObj->objId],
                        D_800EAFA0[omCurrentObj->objId]);
    guMtxCatF(finalMtx, tmpMtx, finalMtx);
    HS64_MkRotationMtxF(tmpMtx, D_800EA6E0[omCurrentObj->objId], D_800EA8A0[omCurrentObj->objId],
                        D_800EAA60[omCurrentObj->objId]);
    guMtxCatF(finalMtx, tmpMtx, finalMtx);
    rot.y = asinf(-finalMtx[0][2]);
    if ((rot.y == 1.5707964f) || (rot.y == -1.5707964f)) {
        rot.x = (rot.y == 1.5707964f) ? atan2f(finalMtx[1][0], finalMtx[1][1])
                                      : atan2f(-finalMtx[1][0], finalMtx[1][1]);
        rot.z = 0.0f;
    } else {
        rot.x = atan2f(finalMtx[1][2], finalMtx[2][2]);
        rot.z = atan2f(finalMtx[0][1], finalMtx[0][0]);
    }
    utilWrapRotation(&rot);
    D_800EA6E0[omCurrentObj->objId] = rot.x;
    D_800EA8A0[omCurrentObj->objId] = rot.y;
    D_800EAA60[omCurrentObj->objId] = rot.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DBDA8_ovl17.s")
#endif


void func_801DC2D0_ovl17(void) {
    Vector sp1C;

    sp1C = D_801E4E60_ovl17;
    lbvector_Normalize(&sp1C);
    lbvector_Rotate(&sp1C, 1, D_800EA6E0[omCurrentObj->objId]);
    lbvector_Rotate(&sp1C, 2, D_800EA8A0[omCurrentObj->objId]);
    lbvector_Rotate(&sp1C, 4, D_800EAA60[omCurrentObj->objId]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = -sp1C.x * D_800D716C;
    gEntitiesNextPosYArray[omCurrentObj->objId] = -sp1C.y * D_800D716C;
    gEntitiesNextPosZArray[omCurrentObj->objId] = -sp1C.z * D_800D716C;
}

void func_801DC3F4_ovl17(void) {
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    gEntitiesAngleZArray[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
}

void func_801DC460_ovl17(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = &func_801DC71C_ovl17;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    D_800DF310[omCurrentObj->objId] = NULL;
    auFunc80020C88();
    func_800A7EB4();
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_8011DA34();
    play_sound(0xD8);
    play_music(0, 5);
    func_801DC724_ovl17();
    D_800D6B58 = 0x400;
    D_800D6B54 = 1;
    D_800BE4F8 = 6;
    func_800AA018(0x10684);
    func_800AA018(0x10685);
    func_800AF27C();
    D_800E9560[omCurrentObj->objId] = 0;
    while (D_800E9560[omCurrentObj->objId] <= 0) {
        func_800AA018(0x10686);
        func_800AA018(0x10687);
        func_800AF27C();
        D_800E9560[omCurrentObj->objId] += 1;
    }
    D_800D6B58 = 0x1E;
    D_800D6B54 = 1;
    D_800BE4F8 = 6;
    curObjSleepForever();
}

void func_801DC71C_ovl17(struct GObj *arg0) {
}

void func_801DC724_ovl17(void) {
    Vector sp24;
    f32 temp_f0;

    sp24 = D_801E4E6C_ovl17;
    lbvector_Normalize(&sp24);
    lbvector_Rotate(&sp24, 1, D_800EA6E0[omCurrentObj->objId]);
    lbvector_Rotate(&sp24, 2, D_800EA8A0[omCurrentObj->objId]);
    lbvector_Rotate(&sp24, 4, D_800EAA60[omCurrentObj->objId]);
    D_800E3590[omCurrentObj->objId] = sp24.x * 0.5f;
    D_800E3750[omCurrentObj->objId] = sp24.y * 0.5f;
    D_800E3910[omCurrentObj->objId] = sp24.z * 0.5f;
    temp_f0 = sp24.x * 12.0f;
    if (temp_f0 < 0.0f) {
        D_800E3AD0[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3AD0[omCurrentObj->objId] = temp_f0;
    }
    temp_f0 = sp24.y * 12.0f;
    if (temp_f0 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3C90[omCurrentObj->objId] = temp_f0;
    }
    temp_f0 = sp24.z * 12.0f;
    if (temp_f0 < 0.0f) {
        D_800E3E50[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3E50[omCurrentObj->objId] = temp_f0;
    }
}

#ifdef NON_MATCHING
/* FACTORY: 6/28, one-slot rotation of the ARGUMENT registers, nothing else.
 * 6 diffs (was 16): hoisting omCurrentObj into a local is what puts it in $v0.
 * What is left is that the ROM keeps $a0 reserved (base in $a2, element address
 * in $a1) while IDO reuses $a0 for the element address -- the same two values,
 * the same order, one slot lower.  All 6 diffs are that pair renamed; every
 * other instruction, both branch-likelies and the parameter home store are
 * exact.  Two variants spent and BOTH measured 6/28 unchanged: a K&R definition
 * (the lever that is load-bearing for parameter homing elsewhere in ovl17/ovl18
 * does nothing here -- the home store is already emitted by the prototyped
 * form), and an explicit `s32 *p = &D_800E7CE0[obj->objId]` pointer local for
 * the element address.  Permuter food. */
void func_801DC91C_ovl17(struct GObj *arg0) {
    struct GObj *obj;
    s32 temp_v1;

    obj = omCurrentObj;
    temp_v1 = D_800E7CE0[obj->objId];
    if (temp_v1 != 0) {
        D_800E7CE0[obj->objId] = temp_v1 - 1;
        if (temp_v1 <= 0) {
            D_800E7CE0[obj->objId] = 0;
        }
    }
    if (obj->objId == 0) {
        func_80111534(obj->objId);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DC91C_ovl17.s")
#endif
void func_801DC98C_ovl17(void) {
    Vector sp2C;
    Camera *cam;

    cam = D_800D799C->data.cam;
    if (D_800D7098.unk0 == 2) {
        func_801DD17C_ovl17();
        return;
    }
    if (D_800D6B54 == 1) {
        func_801DD2B0_ovl17();
        return;
    }
    if (D_800D7098.unk0 == 1) {
        D_800D7168 += 1.2f;
    }
    D_800D7B38 = D_800D7B20;
    func_801DCB44_ovl17(&sp2C);
    cam->viewMtx.lookAt.eye.x = sp2C.x;
    cam->viewMtx.lookAt.eye.y = sp2C.y;
    cam->viewMtx.lookAt.eye.z = sp2C.z;
    func_801DCFD4_ovl17(&sp2C);
    cam->viewMtx.lookAt.at.x = sp2C.x;
    cam->viewMtx.lookAt.at.y = sp2C.y;
    cam->viewMtx.lookAt.at.z = sp2C.z;
    func_801DD040_ovl17(&sp2C);
    cam->viewMtx.lookAt.up.x = sp2C.x;
    cam->viewMtx.lookAt.up.y = sp2C.y;
    cam->viewMtx.lookAt.up.z = sp2C.z;
    cam->perspMtx.persp.fovy = D_800D7158[0];
    cam->perspMtx.persp.near = D_800D715C;
    cam->perspMtx.persp.far = D_800D7160;
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
    D_801E56F0_ovl17 = cam->viewMtx.lookAt.eye.x;
    D_801E56F4_ovl17 = cam->viewMtx.lookAt.eye.y;
    D_801E56F8_ovl17 = cam->viewMtx.lookAt.eye.z;
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern f32 D_801E56D8_ovl17;
extern f32 D_801E56DC_ovl17;
extern f32 D_801E56E0_ovl17;
extern f32 D_801E56E4_ovl17;
extern f32 D_801E56E8_ovl17;
extern f32 D_801E56EC_ovl17;
extern u16 gPlayerControllers;

void func_801DCB44_ovl17(Vector *arg0) {
    f32 sp44;
    f32 sp40;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp28;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f12_3;
    f32 var_f2;
    f32 var_f6;
    s32 temp_a1;
    s32 var_v1;

    temp_a1 = gPlayerControllers & 0x300;
    if (temp_a1 != 0) {
        D_801E56E8_ovl17 = 8.0f;
        if (gPlayerControllers & 0x100) {
            D_801E56D8_ovl17 = 210.0f;
        } else {
            D_801E56D8_ovl17 = -210.0f;
        }
        var_v1 = gPlayerControllers & 0xC00;
        if (var_v1 != 0) {
            var_f6 = D_801E56D8_ovl17 / 1.4142135f;
            goto block_9;
        }
    } else if (D_801E56E8_ovl17 > 0.0f) {
        var_v1 = gPlayerControllers & 0xC00;
        D_801E56E8_ovl17 -= 1.0f;
    } else {
        var_f6 = 0.0f;
        var_v1 = gPlayerControllers & 0xC00;
block_9:
        D_801E56D8_ovl17 = var_f6;
    }
    if (var_v1 != 0) {
        D_801E56EC_ovl17 = 8.0f;
        if (gPlayerControllers & 0x800) {
            D_801E56DC_ovl17 = -200.0f + D_800D7164;
        } else {
            D_801E56DC_ovl17 = 100.0f + D_800D7164;
        }
        if (temp_a1 != 0) {
            D_801E56DC_ovl17 /= 1.4142135f;
        }
    } else if (D_801E56EC_ovl17 > 0.0f) {
        D_801E56EC_ovl17 -= 1.0f;
    } else {
        D_801E56DC_ovl17 = D_800D7164;
    }
    if (D_800D6B54 == 1) {
        D_801E56D8_ovl17 = 0.0f;
        D_801E56DC_ovl17 = D_800D7164;
    }
    temp_f2 = (D_801E56D8_ovl17 - D_801E56D0_ovl17) * 0.05f;
    temp_f18 = (D_801E56DC_ovl17 - D_801E56D4_ovl17) * 0.05f;
    sp44 = temp_f2;
    sp40 = temp_f18;
    temp_f12 = (temp_f2 * temp_f2) + (temp_f18 * temp_f18);
    sp28 = temp_f12;
    temp_f14 = temp_f2 * 0.5f;
    temp_f16 = sqrtf(temp_f12) * 0.5f;
    temp_f0 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16));
    if (temp_f2 < 0.0f) {
        var_f12 = -temp_f2;
    } else {
        var_f12 = temp_f2;
    }
    if (var_f12 > 0.0001f) {
        D_801E56E0_ovl17 += temp_f2 * 0.1f;
        var_f12_2 = D_801E56E0_ovl17;
        if (temp_f0 < var_f12_2) {
            D_801E56E0_ovl17 = temp_f0;
            goto block_29;
        }
        temp_f14_2 = -temp_f0;
        if (var_f12_2 < temp_f14_2) {
            D_801E56E0_ovl17 = temp_f14_2;
block_29:
            var_f12_2 = D_801E56E0_ovl17;
        }
        D_801E56D0_ovl17 += var_f12_2;
    } else {
        D_801E56E0_ovl17 = 0.0f;
        D_801E56D0_ovl17 = D_801E56D8_ovl17;
    }
    sp40 = temp_f18;
    temp_f2_2 = temp_f18 * 0.5f;
    temp_f16_2 = sqrtf(sp28) * 0.5f;
    temp_f0_2 = sqrtf((temp_f2_2 * temp_f2_2) + (temp_f16_2 * temp_f16_2));
    if (temp_f18 < 0.0f) {
        var_f12_3 = -temp_f18;
    } else {
        var_f12_3 = temp_f18;
    }
    if (var_f12_3 > 0.0001f) {
        D_801E56E4_ovl17 += temp_f18 * 0.1f;
        var_f2 = D_801E56E4_ovl17;
        if (temp_f0_2 < var_f2) {
            D_801E56E4_ovl17 = temp_f0_2;
            goto block_40;
        }
        temp_f14_3 = -temp_f0_2;
        if (var_f2 < temp_f14_3) {
            D_801E56E4_ovl17 = temp_f14_3;
block_40:
            var_f2 = D_801E56E4_ovl17;
        }
        D_801E56D4_ovl17 += var_f2;
    } else {
        D_801E56E4_ovl17 = 0.0f;
        D_801E56D4_ovl17 = D_801E56DC_ovl17;
    }
    sp30 = D_801E56D0_ovl17;
    sp34 = D_801E56D4_ovl17;
    sp38 = D_800D716C - D_800D7168;
    func_801DD09C_ovl17((Vector *) &sp30, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DCB44_ovl17.s")
#endif


void func_801DCFD4_ovl17(Vector *arg0) {
    Vector sp1C;

    sp1C.x = -D_801E56D0_ovl17 * 0.8f;
    sp1C.y = -(D_801E56D4_ovl17 - D_800D7164) * 0.8f;
    sp1C.z = D_800D716C;
    func_801DD09C_ovl17(&sp1C, arg0);
}

void func_801DD040_ovl17(Vector *arg0) {
    Vector sp1C;

    sp1C.x = 0.0f;
    sp1C.y = D_800D7164 + 10000.0f;
    sp1C.z = D_800D716C - D_800D7168;
    func_801DD09C_ovl17(&sp1C, arg0);
}

void func_801DD09C_ovl17(Vector *arg0, Vector *arg1) {
    Mat4 sp60;
    Mat4 sp20;

    guMtxIdentF(sp60);
    HS64_MkTranslateMtxF(sp20, arg0->x, arg0->y, arg0->z);
    guMtxCatF(sp60, sp20, sp60);
    HS64_MkRotationMtxF(sp20, D_800EA6E0[0], D_800EA8A0[0], D_800EAA60[0]);
    guMtxCatF(sp60, sp20, sp60);
    HS64_MkTranslateMtxF(sp20, gEntitiesNextPosXArray[0], gEntitiesNextPosYArray[0], gEntitiesNextPosZArray[0]);
    guMtxCatF(sp60, sp20, sp60);
    arg1->x = sp60[3][0];
    arg1->y = sp60[3][1];
    arg1->z = sp60[3][2];
}


void func_801DD17C_ovl17(void) {
    Camera *cam;
    f32 s;

    cam = D_800D799C->data.cam;
    D_800D7B38 = D_800D7B20;
    func_800A71A0(0x10);
    s = 0.2f;
    cam->viewMtx.lookAt.eye.x *= s;
    cam->viewMtx.lookAt.eye.y = (cam->viewMtx.lookAt.eye.y * s) + D_800D7164;
    cam->viewMtx.lookAt.eye.z *= s;
    cam->viewMtx.lookAt.at.x *= s;
    cam->viewMtx.lookAt.at.y *= s;
    cam->viewMtx.lookAt.at.z *= s;
    cam->perspMtx.persp.fovy = D_800D7158[0];
    cam->perspMtx.persp.near = D_800D715C;
    cam->perspMtx.persp.far = D_800D7160;
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
}

/* FACTORY: 0/97 words differ -- byte-exact MATCH -- but PADDING-TRAPPED:
 * un-guarding this shortens ovl17.c by 16 bytes and breaks the ROM. Its
 * listing carries three trailing nops past the .size, and it is the last
 * function in its subsegment, so converting it needs a `pad` subsegment in
 * kirby64.yaml plus the matching kirby.ld edit in the SAME commit.
 * Re-measured 2026-08-23: scoring it in a scratch copy reports 3/97, but all
 * three are the anonymous-.rodata artifact verify.py hits when SECBASE cannot
 * be resolved outside src/ -- D_801E5520_ovl17 is this TU's .rodata base and
 * base+0x64/+0x68/+0x70 are exactly the three symbols the ROM names. Zero
 * real diffs.
 *
 * The matched C is LP64-clean (no pointer/integer punning, no N64-only
 * strides), so this arm is shared with PORT rather than duplicated -- see
 * REFOUND.md step 5b. The pragma below stays live for the N64 build. */
/* Camera seat used while D_800D6B54 == 1 (the boss intro hold).  The eye
   snaps to the cached func_801DC98C eye, the look-at point eases 15% per
   frame toward Kirby's next position (entity slot 0), and the up vector
   decays by 0.9 -- a DOUBLE-precision product on the N64 (cvt.d.s / mul.d /
   cvt.s.d), which is why the constant is 0.9 and not 0.9f. */
void func_801DD2B0_ovl17(void) {
    Camera *cam = D_800D799C->data.cam;

    D_800D7B38 = D_800D7B20;
    cam->viewMtx.lookAt.eye.x = D_801E56F0_ovl17;
    cam->viewMtx.lookAt.eye.y = D_801E56F4_ovl17;
    cam->viewMtx.lookAt.eye.z = D_801E56F8_ovl17;
    cam->viewMtx.lookAt.at.x = (gEntitiesNextPosXArray[0] * 0.15f) + (cam->viewMtx.lookAt.at.x * 0.85f);
    cam->viewMtx.lookAt.at.y = (gEntitiesNextPosYArray[0] * 0.15f) + (cam->viewMtx.lookAt.at.y * 0.85f);
    cam->viewMtx.lookAt.at.z = (gEntitiesNextPosZArray[0] * 0.15f) + (cam->viewMtx.lookAt.at.z * 0.85f);
    cam->viewMtx.lookAt.up.x = (f32) (cam->viewMtx.lookAt.up.x * 0.9);
    cam->viewMtx.lookAt.up.y = (f32) (cam->viewMtx.lookAt.up.y * 0.9);
    cam->viewMtx.lookAt.up.z = (f32) (cam->viewMtx.lookAt.up.z * 0.9);
    cam->perspMtx.persp.fovy = D_800D7158[0];
    cam->perspMtx.persp.near = D_800D715C;
    cam->perspMtx.persp.far = D_800D7160;
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
}