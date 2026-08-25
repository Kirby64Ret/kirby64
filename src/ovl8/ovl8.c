#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "main/math.h"
#include "ovl1/ovl1_6.h"
#include "unk_structs/D_800D7098.h"

extern void func_800B5C28(void);
extern void func_800B5FBC(struct GObj *);
extern void func_800B3234(f32, f32, f32);
extern void func_800B62AC(f32);
extern void func_800B31B4(void);
extern void func_800B4B9C(s32);
/* K&R form is load-bearing here: its own K&R definition below takes
 * struct GObj *arg0, but its call site at line ~212 passes 0 args -- the
 * ROM relies on whatever GObj* is already sitting in $a0. An ANSI
 * prototype breaks compilation with "too few arguments". */
void func_801D1648_ovl8();
void func_801D1A64_ovl8(struct GObj *);
extern void func_800B5A7C(struct GObj *);
extern void func_800F8E6C(struct GObj *);
void func_801D0FB0_ovl8(struct GObj *);
void func_801D12A4_ovl8(void);
void func_801D1334_ovl8(struct GObj *);

void func_801D0C60_ovl8(struct GObj *arg0) {
    func_800B5C28();
    gEntitiesNextPosXArray[omCurrentObj->objId] += (D_800E2090[omCurrentObj->objId] + D_800E3050[omCurrentObj->objId]);
    gEntitiesNextPosYArray[omCurrentObj->objId] += (D_800E2250[omCurrentObj->objId] + D_800E3210[omCurrentObj->objId]);
    gEntitiesNextPosZArray[omCurrentObj->objId] += (D_800E2410[omCurrentObj->objId] + D_800E33D0[omCurrentObj->objId]);
    func_800B5FBC(arg0);
}

void func_801D0D44_ovl8(struct GObj *arg0) {
    func_801D0C60_ovl8(arg0);
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801D0E3C_ovl8(void) {
    f32 temp_f0;

    D_800E5890[omCurrentObj->objId] = 0.0f;
    /* the three empty blocks below are load-bearing for register allocation */
    if (1) { } if (1) { } if (1) { }
    temp_f0 = D_800E5890[omCurrentObj->objId];
    D_800E5C10[omCurrentObj->objId] = temp_f0;
    D_800E56D0[omCurrentObj->objId] = temp_f0;
    D_800E5510[omCurrentObj->objId] = temp_f0;
    func_800B62AC(0.0f);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801D0FB0_ovl8(struct GObj *arg0) {
    func_800B5C28();
    gEntitiesNextPosXArray[omCurrentObj->objId] += (D_800E2090[omCurrentObj->objId] + D_800E3050[omCurrentObj->objId]);
    gEntitiesNextPosYArray[omCurrentObj->objId] += (D_800E2250[omCurrentObj->objId] + D_800E3210[omCurrentObj->objId]);
    gEntitiesNextPosZArray[omCurrentObj->objId] += (D_800E2410[omCurrentObj->objId] + D_800E33D0[omCurrentObj->objId]);
    func_800B5FBC(arg0);
}

void func_801D1094_ovl8(struct GObj *arg0) {
    func_801D0FB0_ovl8(arg0);
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];
    func_800B31B4();
}

void func_801D1160_ovl8(void) {
    f32 temp_f0;

    D_800E5890[omCurrentObj->objId] = 0.0f;
    /* the three empty blocks below are load-bearing for register allocation */
    if (1) { } if (1) { } if (1) { }
    temp_f0 = D_800E5890[omCurrentObj->objId];
    D_800E5C10[omCurrentObj->objId] = temp_f0;
    D_800E56D0[omCurrentObj->objId] = temp_f0;
    D_800E5510[omCurrentObj->objId] = temp_f0;
    func_800B62AC(0.0f);
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

/* Load-bearing: the 0.0f must NOT be a named local -- as a bare literal it
 * is a short-lived temp and lands in $f12, while `a` and `b` take $f0/$f2.
 * The D_800E2250 store is a DOUBLE 0.0 so it forks the second `mtc1 $zero`. */
void func_801D12A4_ovl8(void) {
    f32 a;
    f32 b;

    a = 0.0f - gEntitiesNextPosXArray[omCurrentObj->objId];
    b = 0.0f - gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E2090[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] * a;
    D_800E2410[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] * b;
    D_800E2250[omCurrentObj->objId] = 0.0;
}

/* FACTORY: 50/128. Instructions 0..32 are byte-identical. The whole residue starts
 * at the D_800E3210 copy in the first arm: the ROM materialises &D_800E3210 into
 * a base register ($t4) and addresses BOTH sides off it, IDO emits two separate
 * `lui $at` + %lo pairs. Same instruction count either way; the base register
 * shifts every temp number from that point on (and back to insn 33).
 * LEVER 58 applies and is MEASURED INERT: 50/128 before and after. The head
 * really is (GObj *) -- the very first instruction after the prologue is
 * `jal func_800B5A7C` with a nop delay slot, func_800B5A7C is
 * `void (GObj *)`, and there is no home store in the 126 words -- and the
 * same is true of func_801D152C_ovl8, func_801D1A64_ovl8 and
 * func_801D1BB0_ovl8 below, all three matched. Retyping all four plus the
 * func_800B5A7C declaration is byte-identical in .text, so it is a free type
 * correction and it changes nothing here: this residue starts at instruction
 * 33 and $a0 was never the contended register. Do not re-cost it. */
#ifdef NON_MATCHING
void func_801D1334_ovl8(struct GObj *arg0) {
    extern struct UnkStruct800D7098 D_800D7098;

    func_800B5A7C(arg0);
    D_800E64D0[omCurrentObj->objId] += D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId];
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] -= D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId];
    if ((D_800E98E0[omCurrentObj->objId] != 0) && (D_800D7098.unk10 != 0)) {
        D_800E3210[omCurrentObj->objId] = D_800E3210[D_800D7098.unk0];
    } else if (D_800E9C60[omCurrentObj->objId] == 0) {
        D_800E3210[omCurrentObj->objId] = 0.0f;
    }
    func_801D12A4_ovl8();
    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E2090[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId] + D_800EA6E0[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800E2410[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1334_ovl8.s")
#endif


void func_801D152C_ovl8(struct GObj *arg0) {
    func_801D1334_ovl8(arg0);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + (D_800E6A10[omCurrentObj->objId] * -(M_PIF / 2));
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

/* The dead `pad` word is a REAL declaration in the ROM's list and it sits
 * BEFORE a/b/c, not after them: later declarations take the lower stack
 * addresses, so with the pad trailing, a/b/c homed at 0x4C/0x50/0x54 and the
 * ROM homes them at 0x48/0x4C/0x50 (LEVERS 13/57). Moving the one line is the
 * whole difference; the frame is 0x60 either way. */
/* K&R definition kept, MEASURED: func_801D17F4_ovl8 (ovl8.c:214) calls this
 * with no argument and relies on the GObj already sitting in $a0. With the
 * head written `void func_801D1648_ovl8(struct GObj *arg0)` the build fails
 * there with "too few arguments to function 'func_801D1648_ovl8'". */
void func_801D1648_ovl8(arg0)
struct GObj *arg0;
{
    extern struct DObj **D_800DFBD0[];
    extern s32 D_800EA360[];
    extern struct UnkStruct800D7098 D_800D7098;
    s32 func_800B2340(Vector *, struct DObj *, s32);
    void func_800B26D8(Vector *, struct DObj *, u32);
    s32 idx;
    struct DObj **p;
    s32 pad;
    struct DObj *a;
    struct DObj *b;
    struct DObj *c;
    Vector sp3C;
    Vector sp30;

    idx = D_800D7098.unk28;
    p = D_800DFBD0[idx];
    a = p[2];
    b = p[3];
    c = p[4];
    switch (D_800EA360[omCurrentObj->objId]) {
    case 1:
        func_800B2340(&sp30, a, idx);
        func_800B26D8(&sp3C, a, idx);
        break;
    case 2:
        func_800B2340(&sp30, b, idx);
        func_800B26D8(&sp3C, b, idx);
        break;
    case 3:
        func_800B2340(&sp30, c, idx);
        func_800B26D8(&sp3C, c, idx);
        break;
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp30.z;
    gEntitiesAngleXArray[omCurrentObj->objId] = sp3C.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp3C.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp3C.z;
}

void func_801D17F4_ovl8(void) {
    func_801D1648_ovl8();
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B26D8(Vector *, struct DObj *, u32);
void func_800B3234(f32, f32, f32);

void func_801D184C_ovl8(struct GObj *arg0) {
    s32 t;
    Vector sp28;
    struct DObj *d;

    t = D_800E0D50[omCurrentObj->objId] * 4;
#ifdef PORT
    /* `t` is idx * 4, the right byte bias for the f32 arrays it is reused
     * on below (gEntitiesNextPosXArray) and the wrong one for D_800DE350,
     * which on LP64 is `GObj *[]` with 8-byte elements: `+ idx * 4`
     * addresses element idx/2, and the result is dereferenced twice on this
     * line. The port already carries the identical fix for the identical
     * spelling -- see the PORT arm of func_800F6350 in ovl2.c, whose
     * comment reads "D_800DE350 is an array of host GObj pointers (8-byte
     * slots ...), so `(u8 *)D_800DE350 + i` with i advancing 4 per slot
     * reads half-pointers". Nothing about the ROM changes: there a slot is
     * four bytes and the two spellings are the same `lw`. */
    d = D_800DE350[D_800E0D50[omCurrentObj->objId]]->data.dobj->firstChild;
#else
    d = (*(struct GObj **) ((u8 *) D_800DE350 + t))->data.dobj->firstChild;
#endif
    if (D_800EA520[omCurrentObj->objId] != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = *(f32 *) ((u8 *) gEntitiesNextPosXArray + t);
        gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
        func_800B26D8(&sp28, d, D_800E0D50[omCurrentObj->objId]);
        gEntitiesAngleXArray[omCurrentObj->objId] = sp28.x;
        gEntitiesAngleYArray[omCurrentObj->objId] = sp28.y;
        gEntitiesAngleZArray[omCurrentObj->objId] = sp28.z;
        func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    }
}

void func_801D19B8_ovl8(struct GObj *arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801D1A64_ovl8(struct GObj *arg0) {
    func_800B5A7C(arg0);
    D_800E64D0[omCurrentObj->objId] += D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId];
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] -= D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId];
    func_801D12A4_ovl8();
    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E2090[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800E2410[omCurrentObj->objId];
}

void func_801D1BB0_ovl8(struct GObj *arg0) {
    func_801D1A64_ovl8(arg0);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + (D_800E6A10[omCurrentObj->objId] * -(M_PIF / 2));
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B31B4();
}

/* The "FOURTH, unused compiler spill slot at 0x3C" this note used to describe
 * as an unreachable 4-byte frame displacement was func_801D1CAC_ovl8's `flag`
 * being REGISTER-allocated: four locals, four spill slots. IDO only leaves
 * three when `flag = 0;` sits inside the `if (p != NULL)` block. Both users of
 * this struct are byte-exact as of 2026-08-25; see the note on
 * func_801D1E98_ovl8 below for the three levers. */
struct Ovl8Unk80 {
    /* 0x00 */ u32 unk0;
    /* 0x04 */ f32 unk4;
    /* 0x08 */ f32 unk8;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ u8 unk20;
};

/* Byte-exact, un-guarded 2026-08-25. 94/106 -> 8/107 by porting the three
 * levers from func_801D1E98_ovl8 verbatim (flag = 0 hoisted out of the
 * `if (p != NULL)` block, the record lookup split into `rec`, and the dead `d`
 * reused for g->data.dobj), then 8 -> 0 by putting `g` BEFORE `d` in both the
 * declaration list and the assignments -- that is what puts d's spill at
 * sp+0x30 and g's at sp+0x34, the way the ROM has them. Declaration order
 * alone is 2/107 and assignment order alone is 6/107; it takes both.
 * The old note's reading, that `p` and `d` "carry each other's registers", was
 * a symptom of the flag allocation, not a separate floor. */
void func_801D1CAC_ovl8(void) {
    extern void **D_800E1B50[];
    extern struct DObj **D_800DFBD0[];
    void utilGetTransformSRT(Vector *, struct DObj *);
    void func_800A4DB8(Vector *, struct DObj *);
    void **rec;
    struct Ovl8Unk80 *p;
    struct GObj *g;
    struct DObj *d;
    s32 flag;
    Vector sp20;

    rec = D_800E1B50[omCurrentObj->objId];
    p = (struct Ovl8Unk80 *) rec[0x20];
    g = D_800DE350[omCurrentObj->objId];
    d = D_800DFBD0[omCurrentObj->objId][D_800EA520[omCurrentObj->objId]];
    flag = 0;
    if (p != NULL) {
        utilGetTransformSRT(&sp20, d->firstChild->firstChild);
        p->unk4 = sp20.x;
        p->unk8 = sp20.y;
        p->unkC = sp20.z;
        if ((d->angle.v.y == 0.0f) && (d->firstChild->angle.v.y == 0.0f) &&
            (d->firstChild->firstChild->angle.v.y == 0.0f)) {
            p->unk1C = D_800E17D0[omCurrentObj->objId];
        } else {
            func_800A4DB8(&sp20, d->firstChild->firstChild);
            p->unk1C = sp20.y;
        }
        if (g != NULL) {
            if (!(g->flags & 1)) {
                d = g->data.dobj;
                if (d != NULL) {
                    if (!(d->flags & 3)) {
                        flag = 1;
                    }
                }
            }
        }
        if (flag != 0) {
            p->unk20 &= ~1;
        } else {
            p->unk20 |= 1;
        }
    }
}

void func_801D1E58_ovl8(s32 arg0) {
    func_800B4B9C(arg0);
    gEntitiesNextPosYArray[omCurrentObj->objId] = -20.0f;
}

/* Byte-exact, un-guarded 2026-08-25.  It was PADDING-TRAPPED (seven words of
 * alignment fill past its own .size) until `- [0x175B10, pad]` went into
 * kirby64.yaml; the old note here said "the draft is far from exact as well,
 * so the yaml change alone would not close it", which was true and beside the
 * point -- being SCORABLE is what closed it.  83/98 -> MATCH in three edits,
 * and all three are about who owns a register:
 *
 *  1. `flag = 0;` moved OUT of the `if (p != NULL)` block: 83 -> 35.  With the
 *     initialiser inside the block IDO leaves `flag` memory-resident and
 *     reloads it in the delay slot of every branch out of the g-chain
 *     (`beqzl`/`bnezl` + `lw`); with it in the entry block `flag` becomes a
 *     register variable in $t0, the ROM's plain `beqz` + `nop` fall out, and
 *     `sw $zero, 0x2C($sp)` in the jal's delay slot turns out to be its SPILL,
 *     not the assignment.  That one reservation of $t0 is also what pushes the
 *     D_800E1B50 chain out of the $t pool, which is why the ROM spends $a0 on
 *     it -- the "temp renumbering" the old note described was downstream of
 *     this, not a separate problem.
 *  2. The record lookup split into its own local -- `rec = D_800E1B50[id];`
 *     then `p = rec[0x20];` instead of one subscripted expression: 35 -> 3.
 *     Same two loads either way; the split gives the intermediate a NAME and
 *     it takes $a0.
 *  3. The dead `d` reused for the collision object -- `d = g->data.dobj;`
 *     instead of naming `g->data.dobj` twice: 3 -> 0.  `d` is dead after
 *     func_800A4DB8, and the ROM reuses its register ($a2) rather than taking
 *     a fresh one ($v0).  A separate `dob` local does NOT do it (measured 3,
 *     13 and 23 depending on where it is declared) -- the point is reusing the
 *     variable whose register the ROM reuses.
 *
 * `s32 pad` is gone: `rec` occupies the slot it was holding open, and the
 * frame is 0x40 either way.  Measured negatives, so nobody re-runs them:
 * `register s32 flag`, a u8/s16 flag, the `&&`-chain form of the g test, the
 * inverted final test, and a goto-merge form are all EXACTLY 83 -- none of
 * them is the knob.  Declaration-order sweeps are all worse (35 -> 36..49). */
void func_801D1E98_ovl8(void) {
    extern void **D_800E1B50[];
    extern struct DObj **D_800DFBD0[];
    void utilGetTransformSRT(Vector *, struct DObj *);
    void func_800A4DB8(Vector *, struct DObj *);
    void **rec;
    struct Ovl8Unk80 *p;
    struct GObj *g;
    struct DObj *d;
    s32 flag;
    Vector sp20;

    rec = D_800E1B50[omCurrentObj->objId];
    p = (struct Ovl8Unk80 *) rec[0x20];
    g = D_800DE350[omCurrentObj->objId];
    d = D_800DFBD0[omCurrentObj->objId][D_800EA520[omCurrentObj->objId]];
    flag = 0;
    if (p != NULL) {
        utilGetTransformSRT(&sp20, d);
        p->unk4 = sp20.x;
        p->unk8 = sp20.y;
        p->unkC = sp20.z;
        if ((d->angle.v.y == 0.0f) && (d->firstChild->angle.v.y == 0.0f)) {
            p->unk1C = D_800E17D0[omCurrentObj->objId];
        } else {
            func_800A4DB8(&sp20, d->firstChild);
            p->unk1C = sp20.y;
        }
        if (g != NULL) {
            if (!(g->flags & 1)) {
                d = g->data.dobj;
                if (d != NULL) {
                    if (!(d->flags & 3)) {
                        flag = 1;
                    }
                }
            }
        }
        if (flag != 0) {
            p->unk20 &= ~1;
        } else {
            p->unk20 |= 1;
        }
    }
}
