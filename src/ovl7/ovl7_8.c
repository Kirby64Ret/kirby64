#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_801A0D74_ovl7(void);
void func_801A3938(void *);
void func_801A36CC(void *);
void func_801A3864_ovl7(GObj *);
s32 func_801117BC(void *, u32);
void func_80111C4C(s32);
void func_801AC33C_ovl7(GObj *);
void func_801AC11C_ovl7(GObj *);
s32 func_801ACC34_ovl7(s32, s32);
extern s32 D_801CB0BC_ovl7[];
extern s32 D_801CA738_ovl7[];
extern s32 D_801CA77C_ovl7[];

extern s32 D_8012E7FC;
extern void *D_801CADB8_ovl7[], *D_801CA994_ovl7[];
extern s32 *D_801CB4DC_ovl7;
/* D_801CE2B4_ovl7 = 6.2999997f : now emitted by this TU */
void func_800A9864(s32, s32, s32);
void func_801A2558_ovl7(void *);
void func_8010C274(void);
void curObjSleepForever(void);
extern f32 D_800E64D0[], D_800E6690[], D_800E6850[], D_800E6A10[];
extern f32 D_800EC660[], D_800EC820[], D_800E9020[];
extern f32 D_800E3750[], D_800E3210[], D_800E3C90[];
extern s32 D_800E8920[];
extern f32 D_801CE29C_ovl7; extern f32 D_801CE298_ovl7; /* D_801CE294_ovl7 = 65535.0f : now emitted by this TU */
void func_800B67A8(GObj *);
void func_800B6FD8(GObj *);
void func_800AECC0(f32);
void func_800AED20(f32);
extern f32 gameTicksPerDraw;
void ohSleep(s32);
/* D_801CE2B8_ovl7 = 4.2000003f : now emitted by this TU */
void func_801AC840_ovl7(GObj *);
void func_801ABBA0_ovl7();
void func_800AA018(s32);

void func_801B10EC_ovl7(GObj *);
void func_80198880_ovl7(void *);
void func_800B3520(void);
void func_800AA154(s32);
void func_800AA864(s32, s32);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_801A3E80_ovl7(GObj *);
extern f32 gameTicksPerDraw;
extern void *D_801C33C4_ovl7, *D_801C3408_ovl7;
extern struct EnemyEventTable D_801CB56C_ovl7;

void func_801B1784_ovl7(void);
extern struct EnemyEventTable D_801CD318_ovl7;
extern void *D_801CAF50_ovl7;
/* D_801CE2AC_ovl7 = 65535.0f : now emitted by this TU */

void func_801AC908_ovl7(void);
void func_801AC364_ovl7(GObj *);
/* D_801CE2A0_ovl7 = 65535.0f : now emitted by this TU */

/* D_801CE2A4_ovl7 = 65535.0f : now emitted by this TU */
extern struct EnemyEventTable D_801CD2D0_ovl7;
void func_800B0F28(struct DObj *, s32, f32);

void func_801AC840_ovl7(GObj *);

extern FUNCLIST D_801CD5C0_ovl7;
void func_800B6FD8(GObj *);


void func_800B6FD8(GObj *);

void func_801B0550_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
/* D_801CE288_ovl7 = 1.9198622f : now emitted by this TU */

    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            D_800EBBE0[omCurrentObj->objId] = func_801ACC34_ovl7(3, 1);
            if (D_800EBBE0[omCurrentObj->objId] != 0) {
                D_800EC660[D_800EBBE0[omCurrentObj->objId]] = 1.2217306f;
            }
            D_800EBDA0[omCurrentObj->objId] = func_801ACC34_ovl7(3, 1);
            if (D_800EBDA0[omCurrentObj->objId] != 0) {
                D_800EC660[D_800EBDA0[omCurrentObj->objId]] = 1.5707964f;
            }
            D_800EBF60[omCurrentObj->objId] = func_801ACC34_ovl7(3, 1);
            if (D_800EBF60[omCurrentObj->objId] != 0) {
                D_800EC660[D_800EBF60[omCurrentObj->objId]] = 1.9198622f;
            }
            play_sound(0xA7);
        }
    }
}

void func_801B069C_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        func_800AA018(0x1002A);
    } else {
        func_800AA018(0x10027);
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

void func_801B0880_ovl7(s32 arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = &func_801AC840_ovl7;
    sp1C->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    func_800AA018(0x1017C);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

void func_801B0A20_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        func_800AA018(0x101B6);
    } else {
        func_800AA018(0x101B4);
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

#ifdef NON_MATCHING
/* 60/128 -> 21/128, 2026-08-25: `func_801ABBA0_ovl7(arg0)`. LEVERS 58/67 --
   the ROM sinks the `sw $a0` home store to the call that consumes $a0 and the
   draft, unable to use arg0, homed it in the prologue; that ONE misplaced word
   is what the "temps are rotated one register slot" reading was seeing.
   func_801ABBA0_ovl7 really takes a parameter (definition `(GObj *arg0)` in
   ovl7_5.c, `sw $a0, 0x28($sp)` in its own listing, and a call with an
   argument at ovl7_5.c:2006); the declaration at the top of this file is now
   K&R `()`, which is byte-inert for the nine matched bare call sites here.
   The remaining 21 is a scheduling interleave in words 4-25: the ROM reads
   `arg0->data.dobj` (`lw $t6, 0x3C($a0)`) at word 4, BETWEEN the omCurrentObj
   load and the objId load of the D_800EC660 statement, and finishes the `d`
   store before the 40.0f store; IDO here finishes each statement in turn.
   Swept and negative: moving `d = arg0->data.dobj->firstChild;` above the
   D_800EC660 store costs one (22/128) and pushes the omCurrentObj
   materialisation below the frame adjustment, which the ROM has first -- so the
   source order is right and only the schedule is not. barrier_sweep.py
   (LEVER 71), all 10 placements, none beats 21. Permuter food. */
void func_801B0C20_ovl7(GObj *arg0) {
    struct EnemyRecord *ent;
    struct DObj *d;

    D_800EC660[omCurrentObj->objId] = 40.0f;
    d = arg0->data.dobj->firstChild;
    ent = D_800E1B50[omCurrentObj->objId];
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7(arg0);
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    d->angle.v.z = -D_800E6A10[omCurrentObj->objId] * D_801CE298_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x101AF);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801CE29C_ovl7;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0C20_ovl7.s")
#endif
void func_801B0E20_ovl7(GObj *arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = &func_801AC908_ovl7;
    sp1C->unk48 = func_8010C274;
    sp1C->unk98 = &D_801CB56C_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x1008F);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC364_ovl7(arg0);
}

void func_801B0FCC_ovl7(GObj *arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    func_800B3520();
    D_800DF150[omCurrentObj->objId] = &func_801B10EC_ovl7;
    func_80198880_ovl7(&D_801C33C4_ovl7);
    sp1C->unk48 = func_8010C274;
    sp1C->unk98 = &D_801CB56C_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x1008E);
    func_800AA154(0x1008D);
    func_800AA018(0x1008C);
    func_800AA864(0x1008B, 2);
    func_80198880_ovl7(&D_801C3408_ovl7);
    func_801A3E80_ovl7(arg0);
}

/* LEVER 68's shape, and the last `(void)` spelling of func_801AC840_ovl7 left
 * in the tree: this file declared it `void (void)` twice and called it bare,
 * against the `void (GObj *)` definition at src/ovl7/ovl7_5.c:2422 -- the
 * LEVER 49 collision. This proc is itself stored into D_800DF150, which is
 * `void (*[])(struct GObj *)`, so the `(void)` head here was a type error the
 * same way. Declaring the parameter and handing it on is BYTE-INERT:
 * build/src/ovl7/ovl7_8.o's .text is identical across the change, objdump
 * A/B, which is exactly what LEVER 68 predicts for a parameter that is only
 * ever passed to a call whose $a0 the ROM never writes. */
void func_801B10EC_ovl7(GObj *arg0) {
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    func_801AC840_ovl7(arg0);
}

void func_801B1130_ovl7(GObj *arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 1;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = &func_801AC840_ovl7;
    arg0->onAnimate = func_800B0F28;
    sp1C->unk48 = 0;
    sp1C->unk98 = &D_801CD2D0_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x1004C);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.5f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

/* FACTORY: 67/139, ONE DISPLACEMENT.  Instruction count, every opcode, every
   memory reference and both loop tests are the ROM's; the whole residue is that
   IDO emits the parameter home store `sw $a0, 0x30($sp)` at index 8 (function
   entry) where the ROM has it at index 36, in the delay slot of the first jal.
   Indices 8..35 are therefore the ROM's stream shifted one slot, with the temp
   register file rotated one slot with it.  The store position is a
   whole-function homing decision, not a statement order: moving the
   `arg0->data.dobj->firstChild` read to be the last statement before the call
   (so $a0's last use abuts the jal) left it at index 8 unchanged.  Pure
   statement-permutation residue -- hand this to the permuter. */
#ifdef NON_MATCHING
/* 67/139 -> 19/139, 2026-08-25: `func_801ABBA0_ovl7(arg0)`. LEVERS 58/67 --
   func_801ABBA0_ovl7 takes a parameter (see func_801B0C20_ovl7's note above),
   and a draft that cannot use arg0 homes it in the prologue where the ROM
   sinks the store to the call that consumes $a0.
   The remaining 19 is a scheduling shuffle in words 12-31 and nothing else:
   IDO materialises the 40.0f constant two words early and completes the
   D_800EC660 store before the `sp2C` store, where the ROM does the sp2C store
   first. Swept and inert: `sp2C` as a statement instead of a declaration
   initializer (19/139 either way). barrier_sweep.py (LEVER 71), all 15
   placements, none beats 19. Permuter food. */
extern struct EnemyEventTable D_801CD2F4_ovl7;
void func_801B152C_ovl7(void);

void func_801B1300_ovl7(GObj *arg0) {
    struct EnemyRecord *sp2C = D_800E1B50[omCurrentObj->objId];
    DObj *sp28;
    s32 i;

    D_800EC660[omCurrentObj->objId] = 40.0f;
    sp28 = arg0->data.dobj->firstChild;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0;
    i = 0x3C;
    func_801ABBA0_ovl7(arg0);
    func_801A2558_ovl7(&D_801CAF50_ovl7);
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DF150[omCurrentObj->objId] = &func_801B152C_ovl7;
    sp2C->unk48 = 0;
    sp2C->unk98 = &D_801CD2F4_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    sp28->angle.v.z = -D_800E6A10[omCurrentObj->objId] * 1.570796371f;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10197);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    while ((D_800EC2E0[omCurrentObj->objId].as_s32 == 0) && (i != 0)) {
        ohSleep(1);
        i--;
    }
    if (i != 0) {
        ohSleep(0xF);
    }
    func_801AC11C_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B1300_ovl7.s")
#endif

void func_801B152C_ovl7(void) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (D_800E83E0[omCurrentObj->objId] == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
        } else {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC11C_ovl7);
        }
    } else {
        if (func_801A0D74_ovl7() != 0) {
            func_801A3938(D_801CB0BC_ovl7);
            func_801A36CC(func_801A3864_ovl7);
        }
        func_80111C4C(func_801117BC(D_801CA738_ovl7, omCurrentObj->objId));
    }
}

void func_801B15F4_ovl7(void) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    func_801A2558_ovl7(&D_801CAF50_ovl7);
    D_800DF150[omCurrentObj->objId] = &func_801B1784_ovl7;
    sp1C->unk48 = 0;
    sp1C->unk98 = &D_801CD318_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 7.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (f32)0;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3210[omCurrentObj->objId] = 6.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    curObjSleepForever();
}

void func_801B1784_ovl7(void) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (D_800E83E0[omCurrentObj->objId] == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
        } else {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC11C_ovl7);
        }
    } else {
        if (func_801A0D74_ovl7() != 0) {
            func_801A3938(D_801CB0BC_ovl7);
            func_801A36CC(func_801A3864_ovl7);
        }
        func_80111C4C(func_801117BC(D_801CA77C_ovl7, omCurrentObj->objId));
    }
}

void func_801B184C_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    if ((s32) arg2 != 0) {
        D_8012E7FC = (s32) arg2;
    }
}

void func_801B187C_ovl7(GObj *arg0) {
    struct EnemyRecord *sp5C;
    struct DObj *sp58;
    struct DObj *sp54;
    struct DObj *sp50;
    Vector sp44;
    Vector sp38;
    Vector sp2C;
    s32 temp;

    sp5C = D_800E1B50[omCurrentObj->objId];
    sp58 = D_800DFBD0[omCurrentObj->objId][4];
    sp54 = D_800DFBD0[omCurrentObj->objId][3];
    sp50 = D_800DFBD0[omCurrentObj->objId][2];
    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    func_800B2340(&sp44, sp58, omCurrentObj->objId);
    func_800B2340(&sp38, sp54, omCurrentObj->objId);
    func_800B2340(&sp2C, sp50, omCurrentObj->objId);
    temp = func_801ACC34_ovl7(0x44, 0);
    if (temp != 0) {
        D_800E0D50[temp] = 0;
        gEntitiesNextPosYArray[temp] = sp44.y;
    }
    temp = func_801ACC34_ovl7(0x44, 1);
    if (temp != 0) {
        D_800E0D50[temp] = 0;
        gEntitiesNextPosYArray[temp] = sp38.y;
    }
    temp = func_801ACC34_ovl7(0x44, 2);
    if (temp != 0) {
        D_800E0D50[temp] = 0;
        gEntitiesNextPosYArray[temp] = sp2C.y;
    }
    sp5C->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_801B19F8_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_801CD5C0_ovl7);
}

void func_801B1A58_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    func_800A9864(0x10030, 0x23, 0x10);
    func_801A2558_ovl7(&D_801CADB8_ovl7);
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.400001f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3210[omCurrentObj->objId] = 12.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    curObjSleepForever();
}

void func_801B1BB0_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    func_800A9864(0x1002F, 0x23, 0x10);
    func_801A2558_ovl7(&D_801CA994_ovl7);
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.2999997f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3210[omCurrentObj->objId] = 9.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 9.0f;
    curObjSleepForever();
}

void func_801B1D08_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    func_800A9864(0x1002E, 0x23, 0x10);
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.2000003f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3210[omCurrentObj->objId] = 6.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 6.0f;
    curObjSleepForever();
}

