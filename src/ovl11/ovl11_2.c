/* Second translation unit of ovl11. func_801DF5B8_ovl11 ends at +0x4468 from
 * ovl11.c's base and its listing carries two nops up to +0x4470; nothing
 * re-aligns inside one IDO object, so that is an OBJECT boundary and the `c`
 * subsegment was really two TUs. SUBALIGN(16) supplies the two words, so no
 * `pad` entry is needed. See AGENT_GUIDE.md, "THE MID-TU PADDING TRAP CLASS IS
 * NOT A TRAP". */

#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "sounds.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_3.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"

/* Unmigrated rodata: the format string must be referenced as a data
   symbol, or IDO emits a second copy into this TU's .rodata. */
extern const char D_801E0BE0_ovl11[];
extern f32 D_801E0C0C_ovl11;
extern f32 D_801E0C18_ovl11;
extern f32 D_801E0C1C_ovl11;
extern f32 D_801E0C20_ovl11;
extern f32 D_801E0C30_ovl11;
extern f32 D_801E0C34_ovl11;
extern f32 D_801E0C40_ovl11;

extern FUNCLIST D_801E0B00_ovl11;
typedef struct Ovl11Color {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
} Ovl11Color;

extern Ovl11Color D_801E0B10_ovl11;
extern Ovl11Color D_801E0B14_ovl11;
extern Ovl11Color D_801E0B18_ovl11;
extern Ovl11Color D_801E0B1C_ovl11;
extern Ovl11Color D_801E0B20_ovl11;
extern FUNCLIST D_801E0B24_ovl11;
extern FUNCLIST D_801E0B38_ovl11;
extern FUNCLIST D_801E0B4C_ovl11;
extern FUNCLIST D_801E0B70_ovl11;
extern FUNCLIST D_801E0B9C_ovl11;
extern FUNCLIST D_801E0BB0_ovl11;
extern FUNCLIST D_801E0BD0_ovl11;
extern FUNCLIST D_801E0BC4_ovl11;

extern f32 D_800D70D8;
extern struct GObjProcess *gEntityGObjProcessArray[];

extern void func_800B113C(struct DObj *, s32, f32);
extern void func_800B1900(u16);
extern void func_8019D958_ovl7(u16);
extern void func_800BB468(s32, s32);
extern void func_800BC11C(f32);
extern void func_800BC1FC(s32);
extern void func_800AA018(s32);
extern void func_800AA864(s32, s32);
extern void func_800A9EA4(s32);
extern void func_800AF27C(void);
extern void curObjSleepForever(void);
extern void func_800FF0A8(void *);
extern void func_800FB914(s32);
extern s32 random_soft_s32_range(s32);
extern s32 func_801AE7E0_ovl7(s32);
extern void func_801ACCA0_ovl7(s32, s32, f32, f32);
extern void func_801ACF84_ovl7(struct GObj *);
extern void func_801A03B4_ovl7(void);
extern s32 func_801A0D74_ovl7(struct GObj *);
extern void eneTurnCommon(s32);
extern void func_800A9760(s32);
extern void func_800B3520(s32);
extern void func_800FD570(s32, s32, f32, f32, f32);
extern void func_800FF0C4(void *);
extern void func_80198880_ovl7(void *);
extern void func_8019F1EC_ovl7(void);
extern void func_801A0D50_ovl7(void *);
extern void func_801BC794_ovl7(s32);
extern void func_801D0E3C_ovl8(void);
extern u8 D_801D79E8[];
extern struct EnemyEventTable D_801DAF18;
extern u8 D_801D7A2C[];
extern struct EnemyEventTable D_801CB4DC_ovl7;
extern struct EnemyEventTable D_801DAF84;
extern struct EnemyEventTable D_801DAFCC;
extern void func_8019B9B0_ovl7(void);
extern f32 eneGetPlayerHeight(void);
extern void func_800A9864(s32, s32, s32, void *);
extern void func_801D1094_ovl8(s32);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_801A3E80_ovl7(GObj *);
extern f32 gameTicksPerDraw;
extern s32 func_800F98EC(s32, f32);
extern s32 func_801ACD90_ovl7(s32, s32, Vector *);
extern void func_801D0D44_ovl8(s32);
extern void omGMoveObjDL(struct GObj *, u8, s32);
extern struct UnkStruct8004A7C4_3C *animModelTreeNextNode(struct UnkStruct8004A7C4_3C *);

void func_801DB34C_ovl11(void);
void func_801DB684_ovl11(f32);
void func_801DB8A0_ovl11(struct GObj *);
void func_801DB8E8_ovl11(void);
void func_801DBB4C_ovl11(struct GObj *);
void func_801DBFA4_ovl11(s32, s32, f32);
void func_801DC258_ovl11(struct GObj *);
void func_801DD840_ovl11(s32, s32, f32);
void func_801DB31C_ovl11(struct DObj *, Ovl11Color *);
void func_801DC2A0_ovl11(f32);
void func_801DC45C_ovl11(void);
void func_801DC5B0_ovl11(void);
void func_801DC674_ovl11(void);
void func_801DC7B8_ovl11(void);
void func_801DC83C_ovl11(void);
void func_801DCA48_ovl11(struct GObj *);
void func_801DCE04_ovl11(s32, s32, f32);
void func_801DD1CC_ovl11(struct GObj *);
void func_801DDBA4_ovl11(void);
void func_801DDD80_ovl11(void);
void func_801DDE08_ovl11(void);
void func_801DE038_ovl11(void);
void func_801DE258_ovl11(void);
void func_801DEB78_ovl11(struct GObj *);
void func_801DCD8C_ovl11(void);
void func_801DDEC0_ovl11(struct GObj *);
void func_801DEF9C_ovl11(struct GObj *);
void func_801DFA38_ovl11(void);
void func_801DFD3C_ovl11(void);
void func_801DFEA8_ovl11(void);
void func_801E0168_ovl11(void);
void func_801E0610_ovl11(void);
void func_801E0820_ovl11(void);
void func_801DE9C8_ovl11(s32, s32, f32);
void func_801DEC08_ovl11(s32);
void func_801DEED0_ovl11(void);
void func_801DF0B4_ovl11(struct GObj *);
void func_801DF198_ovl11(s32, s32, f32);
void func_801DF728_ovl11(struct GObj *);
void func_801DF798_ovl11(void);
void func_801DFA9C_ovl11(struct GObj *);
s32 func_801E00B8_ovl11(s32);
void func_801E024C_ovl11(struct GObj *);

void func_801DF650_ovl11(struct GObj *arg0) {
    struct EnemyRecord *temp_a3;

    temp_a3 = D_800E1B50[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801DF728_ovl11;
    temp_a3->unk98 = &D_801CB4DC_ovl7;
    D_800E98E0[omCurrentObj->objId] = 0x2D;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1009E, 0x23, 0x10, temp_a3);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    curObjSleepForever();
}

#ifdef NON_MATCHING
/* 6/28, and it USED to read 5/28 with a (void) head -- read the whole of this
   before "fixing" the number back.

   LEVER 58 applies and is certain: `jal func_801A0D74_ovl7` at 801DF778 is
   reached only down the D_800E98E0 != 0 arm, nothing on that path writes $a0,
   its delay slot is the D_800E98E0 store, there is no home store in the 28
   words, and func_801A0D74_ovl7 is `s32 (GObj *)`. This proc is installed in
   D_800DF150, declared `void (*[])(struct GObj *)`, so the (void) head was a
   type error that IDO was reporting as warning 709 at the assignment.

   What the parameter bought and what it cost, both measured:
     - it bought the ROM's `$a1 = the loaded value` and (with the objId field
       inlined at both uses) the in-place `sll`, which the old note recorded as
       two halves that were "reachable separately but not together". They are
       together now.
     - it cost the $v0/$v1 pair: the ROM puts the scaled index in $v0 and the
       pointer in $v1, IDO does the reverse. With $a0 free, IDO had been
       parking the pointer THERE, which is what made the old 5/28 look better
       than this -- the draft was scoring well by using the register the ROM
       reserves for the argument.
   Swept at 6/28, all inert: declaration order of temp_a1/temp_v1, and
   initialising the pointer at its declaration. Keeping the raw-objId local
   instead of inlining the field costs one more (7/28). What is left is the
   neighbouring-register $v0/$v1 pair that LEVERS lists as a floor; it is a
   better permuter seed than the old 5 because the head is now the right one
   and the permuter cannot change a signature. */
void func_801DF728_ovl11(struct GObj *arg0) {
    s32 *temp_v1;
    s32 temp_a1;

    temp_v1 = &D_800E98E0[omCurrentObj->objId];
    temp_a1 = *temp_v1;
    if (temp_a1 == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
        return;
    }
    *temp_v1 = temp_a1 - 1;
    func_801A0D74_ovl7(arg0);
    func_801A03B4_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11_2/func_801DF728_ovl11.s")
#endif
void func_801DF798_ovl11(void) {
    f32 d;
    f32 a;
    f32 zero;

    d = eneGetPlayerHeight() - gEntitiesNextPosYArray[omCurrentObj->objId];
    if (d < 0.0f) {
        a = -d;
    } else {
        a = d;
    }
    if (40.0f < a) {
        zero = 0.0;
        if (d < zero) {
            D_800E3210[omCurrentObj->objId] = zero;
            D_800E3750[omCurrentObj->objId] = -0.25f;
        } else {
            D_800E3210[omCurrentObj->objId] = -3.0f;
            D_800E3750[omCurrentObj->objId] = 0.5f;
            D_800E3C90[omCurrentObj->objId] = 12.0f;
        }
    }
}

void func_801DF89C_ovl11(struct GObj *arg0) {
    /* the two pad locals are load-bearing: they place sp38 at 0x38 and the
       frame at 0x48 */
    s32 pad;
    Vector sp38;
    s32 pad2[4];
    struct EnemyRecord *temp_a3;

    temp_a3 = D_800E1B50[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801DFA9C_ovl11;
    D_800DEF90[omCurrentObj->objId] = func_801D1094_ovl8;
    temp_a3->unk98 = &D_801DAFCC;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1009A, 0x23, 0x10, temp_a3);
    func_800AA018(0x10549);
    D_800E9720[omCurrentObj->objId] = 0x3C;
    sp38.x = sp38.y = 0.0f;
    sp38.z = 1.0f;
    lbvector_Rotate(&sp38, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
    D_800E3050[omCurrentObj->objId] = 10.0f * sp38.x;
    D_800E33D0[omCurrentObj->objId] = 10.0f * sp38.z;
    D_800E3590[omCurrentObj->objId] = -0.125f * sp38.x;
    D_800E3910[omCurrentObj->objId] = -0.125f * sp38.z;
    func_801DF798_ovl11();
    curObjSleepForever();
}

void func_801DFA38_ovl11(void) {
    if (D_800E9720[omCurrentObj->objId] == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
        return;
    }
    D_800E9720[omCurrentObj->objId]--;
}

void func_801DFA9C_ovl11(struct GObj *arg0) {
    func_801A0D74_ovl7(arg0);
    func_801DFA38_ovl11();
    func_801A03B4_ovl7();
}

void func_801DFACC_ovl11(struct GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801E0C40_ovl11;
}

void func_801DFB44_ovl11(struct GObj *arg0) {
    s32 pad;
    Vector sp40;
    s32 pad2[8];
    struct EnemyRecord *temp_a3;

    temp_a3 = D_800E1B50[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801E024C_ovl11;
    temp_a3->unk98 = &D_801DAF84;
    D_800DEF90[omCurrentObj->objId] = func_801D1094_ovl8;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1009B, 0x23, 0x10, temp_a3);
    func_800AA018(0x1054C);
    func_8019B9B0_ovl7();
    sp40.x = sp40.y = 0.0f;
    sp40.z = 1.0f;
    lbvector_Rotate(&sp40, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
    D_800EB320[omCurrentObj->objId] = 320.0f * sp40.x;
    D_800EB160[omCurrentObj->objId] = 320.0f * sp40.z;
    D_800E3050[omCurrentObj->objId] = 9.0f * sp40.x;
    D_800E33D0[omCurrentObj->objId] = 9.0f * sp40.z;
    D_800E3590[omCurrentObj->objId] = -0.125f * sp40.x;
    D_800E3910[omCurrentObj->objId] = -0.125f * sp40.z;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    curObjSleepForever();
}

void func_801DFD3C_ovl11(void) {
    f32 temp_f0;
    f32 temp_f0_2;

    temp_f0 = D_800EB320[omCurrentObj->objId];
    if (temp_f0 >= 0.0f) {
        if (temp_f0 <= gEntitiesNextPosXArray[omCurrentObj->objId]) {
            D_800E3590[omCurrentObj->objId] = 0.0f;
            D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
        }
    } else if (gEntitiesNextPosXArray[omCurrentObj->objId] <= temp_f0) {
        D_800E3590[omCurrentObj->objId] = 0.0f;
        D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    }
    temp_f0_2 = D_800EB160[omCurrentObj->objId];
    if (temp_f0_2 >= 0.0f) {
        if (temp_f0_2 <= gEntitiesNextPosZArray[omCurrentObj->objId]) {
            D_800E33D0[omCurrentObj->objId] = 0.0f;
            D_800E3910[omCurrentObj->objId] = 0.0f;
        }
    } else if (gEntitiesNextPosZArray[omCurrentObj->objId] <= temp_f0_2) {
        D_800E33D0[omCurrentObj->objId] = 0.0f;
        D_800E3910[omCurrentObj->objId] = 0.0f;
    }
}

extern f32 D_801E0C44_ovl11;

void func_801DFEA8_ovl11(void) {
    if (D_800E09D0[omCurrentObj->objId] != 0.0f) {
        if ((D_800E3050[omCurrentObj->objId] == 0) && (D_800E33D0[omCurrentObj->objId] == 0) &&
            (D_800E3210[omCurrentObj->objId] == 0) && (D_800E3750[omCurrentObj->objId] == 0) &&
            (D_800E3590[omCurrentObj->objId] == 0) && (D_800E3910[omCurrentObj->objId] == 0)) {
            D_800E3910[omCurrentObj->objId] = 0.0f;
            D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
                D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
            D_800E3E50[omCurrentObj->objId] = D_801E0C44_ovl11;
            D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
            func_800AECC0(0.0f);
            func_800AED20(0.0f);
            D_800E9720[omCurrentObj->objId] = 0x1E;
        }
    } else if (D_800E9720[omCurrentObj->objId] == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    } else {
        D_800E9720[omCurrentObj->objId]--;
    }
}

/* 2/44: the y-difference sub lands in $f0 where the ROM uses $f14; everything
   else, including the $f2/$f12 assignments, is exact. IDO's FP pool order here
   is measured to be f2, f12, f14 with $f0 reused for the first range that dies.
   Swept (each one compile): a clean 3-local rewrite (17/45, one insn too many),
   dropping the `temp_f14 = temp_f14` self-assign (still 2), dropping the
   `temp_f14 = zd; temp_f2 = temp_f14;` two-step (8/44 -- every FP reg shifts one
   slot DOWN, which is what identifies the pool order), chaining that two-step
   (still 2), and giving the y-diff its own two-step (4/44 -- that DOES put the
   y-diff in $f14 but then the z-diff takes $f0). The two constraints trade
   against each other; an extra live range spanning the y-diff is what is needed. */
/* Is entity `arg0` within 40 units of this one? The 20.0f is a height offset
 * applied to the other entity, and the comparison is against 1600.0f because
 * both sides are squared -- there is no sqrt here.
 *
 * THREE THINGS HERE ARE LOAD-BEARING AND ALL THREE LOOK LIKE m2c NOISE.
 *
 * `d` IS DELIBERATELY REUSED for the Z difference, then the Y difference,
 * then the total. Written with one named local per quantity -- dz, dx, dy,
 * distSq, in that order and any other -- IDO starts its FP temps at $f0 where
 * the ROM starts at $f2 and the whole chain rotates: 17/45, and one
 * instruction LONGER than the ROM. The reuse plus the separate `zd` copy is
 * what holds $f0 occupied across the subtractions so dz lands on $f2 and dx
 * on $f12.
 *
 * `posY` EXISTS TO OCCUPY A REGISTER. Loading the array base into a pointer
 * and subscripting that, rather than subscripting the array directly, is what
 * pushes the Y difference off $f0 and onto the ROM's $f14. Note it is
 * declared LAST while `yd` is declared SECOND -- the positions are not
 * interchangeable (lever 57: declarations lay out top-down).
 *
 * `do { } while (0);` IS A SCHEDULING BARRIER, and this is the measurement
 * that proves it: with everything else above in place the function reads
 * 16/45 without it and MATCH (44) with it. An empty do-while emits no
 * instruction of its own -- it changes where IDO is willing to move the ones
 * around it, and here it stops the Y-difference block being folded into the
 * multiply that follows. It is the one construct in this file that looks
 * purely like leftover m2c goto-wrapping and is not; see LEVERS 61. */
s32 func_801E00B8_ovl11(s32 arg0) {
    f32 dx;
    f32 yd;
    f32 d;
    f32 sumXY;
    f32 zd;
    s32 ret;
    f32 *posY;

    ret = 0;
    d = gEntitiesNextPosZArray[omCurrentObj->objId] - gEntitiesNextPosZArray[arg0];
    zd = d;
    dx = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[arg0];
    posY = gEntitiesNextPosYArray;
    yd = posY[omCurrentObj->objId] - (gEntitiesNextPosYArray[arg0] + 20.0f);
    d = yd;
    do { } while (0);
    sumXY = (dx * dx) + (d * d);
    d = (zd * zd) + sumXY;
    if (d <= 1600.0f) {
        ret = 1;
    }
    return ret;
}
void func_801E0168_ovl11(void)
{
  struct GObj **var_s1;
  s32 var_s0;
 do { if (D_800E09D0[omCurrentObj->objId] == 0.0f) { var_s0 = 0x1E; var_s1 = &D_800DE350[0x1E]; do { if ((((*var_s1) != ((void *) 0)) && (D_800E7880[var_s0] == 2)) && (func_801E00B8_ovl11(var_s0) != 0)) { assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7); return; } var_s0 += 1; var_s1 += 1; } while (var_s0 != 0x3C); } } while (0);
}

void func_801E024C_ovl11(struct GObj *arg0) {
    func_801A0D74_ovl7(arg0);
    func_801DFD3C_ovl11();
    func_801DFEA8_ovl11();
    func_801E0168_ovl11();
    func_801A03B4_ovl7();
}

void func_801E028C_ovl11(struct GObj *arg0) {
    extern f32 D_801E0C48_ovl11;

    D_800E8920[omCurrentObj->objId] = 0;
    if ((D_800E3050[omCurrentObj->objId] == 0.0f) && (D_800E33D0[omCurrentObj->objId] == 0.0f) && (D_800E3590[omCurrentObj->objId] == 0.0f) && (D_800E3910[omCurrentObj->objId] == 0.0f)) {
        D_800E3750[omCurrentObj->objId] = 0.0;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_801E0C48_ovl11;
    } else {
        D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId] * 0.75f;
    }
}

extern struct EnemyEventTable D_801DAFA8;
void func_801E098C_ovl11(struct GObj *);

void func_801E03A4_ovl11(struct GObj *arg0) {
    s32 pad;
    Vector sp38;
    s32 pad2[4];
    struct EnemyRecord *temp_a3 = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801E098C_ovl11;
    temp_a3->unk98 = &D_801DAFA8;
    D_800DEF90[omCurrentObj->objId] = func_801D1094_ovl8;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1009B, 0x23, 0x10, temp_a3);
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        if ((D_800E93A0[omCurrentObj->objId] & 2) != 0) {
            func_800AA018(0x1054B);
        } else {
            func_800AA018(0x1054A);
        }
    } else if ((D_800E93A0[omCurrentObj->objId] & 2) != 0) {
        func_800AA018(0x1054A);
    } else {
        func_800AA018(0x1054B);
    }
    func_8019B9B0_ovl7();
    sp38.x = sp38.y = 0.0f;
    sp38.z = 1.0f;
    lbvector_Rotate(&sp38, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
    D_800EB320[omCurrentObj->objId] = 320.0f * sp38.x;
    D_800EB160[omCurrentObj->objId] = 320.0f * sp38.z;
    D_800E3050[omCurrentObj->objId] = 3.5f * sp38.x;
    D_800E33D0[omCurrentObj->objId] = 3.5f * sp38.z;
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    curObjSleepForever();
}

extern f32 D_801E0C4C_ovl11;

void func_801E0610_ovl11(void) {
    if (D_800E09D0[omCurrentObj->objId] != 0.0f) {
        if ((D_800E3050[omCurrentObj->objId] == 0) && (D_800E33D0[omCurrentObj->objId] == 0) &&
            (D_800E3210[omCurrentObj->objId] == 0) && (D_800E3750[omCurrentObj->objId] == 0) &&
            (D_800E3590[omCurrentObj->objId] == 0) && (D_800E3910[omCurrentObj->objId] == 0)) {
            D_800E3910[omCurrentObj->objId] = 0.0f;
            D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
                D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
            D_800E3E50[omCurrentObj->objId] = D_801E0C4C_ovl11;
            D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
            func_800AECC0(0.0f);
            func_800AED20(0.0f);
            D_800E9720[omCurrentObj->objId] = 0x2D;
        }
    } else if (D_800E9720[omCurrentObj->objId] == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    } else {
        D_800E9720[omCurrentObj->objId]--;
    }
}

void func_801E0820_ovl11(void) {
    f32 temp_f0;
    f32 temp_f0_2;

    temp_f0 = D_800EB320[omCurrentObj->objId];
    if (temp_f0 >= 0.0f) {
        if (temp_f0 <= gEntitiesNextPosXArray[omCurrentObj->objId]) {
            D_800E3590[omCurrentObj->objId] = 0.0f;
            D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
        }
    } else if (gEntitiesNextPosXArray[omCurrentObj->objId] <= temp_f0) {
        D_800E3590[omCurrentObj->objId] = 0.0f;
        D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    }
    temp_f0_2 = D_800EB160[omCurrentObj->objId];
    if (temp_f0_2 >= 0.0f) {
        if (temp_f0_2 <= gEntitiesNextPosZArray[omCurrentObj->objId]) {
            D_800E33D0[omCurrentObj->objId] = 0.0f;
            D_800E3910[omCurrentObj->objId] = 0.0f;
        }
    } else if (gEntitiesNextPosZArray[omCurrentObj->objId] <= temp_f0_2) {
        D_800E33D0[omCurrentObj->objId] = 0.0f;
        D_800E3910[omCurrentObj->objId] = 0.0f;
    }
}

void func_801E098C_ovl11(struct GObj *arg0) {
    func_801A0D74_ovl7(arg0);
    func_801E0820_ovl11();
    func_801E0610_ovl11();
    func_801A03B4_ovl7();
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern f32 D_801E0C50_ovl11;
extern f32 D_801E0C54_ovl11;

void func_801E09C4_ovl11(s32 arg0) {
    f32 *temp_v1;
    u32 temp_v0;
    u32 temp_v0_2;

    D_800E8920[omCurrentObj->objId] = 0;
    temp_v0 = omCurrentObj->objId;
    if ((D_800E3050[temp_v0] == 0.0f) && (D_800E33D0[temp_v0] == 0.0f) && (D_800E3590[temp_v0] == 0.0f) && (D_800E3910[temp_v0] == 0.0f)) {
        D_800E3750[temp_v0] = 0.0f;
        temp_v0_2 = omCurrentObj->objId;
        D_800E3210[temp_v0_2] = D_800E3750[temp_v0_2];
        D_800E3C90[omCurrentObj->objId] = D_801E0C50_ovl11;
        return;
    }
    temp_v1 = &D_800E3210[temp_v0];
    *temp_v1 = -*temp_v1 * D_801E0C54_ovl11;
    play_sound(0x1D9);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11_2/func_801E09C4_ovl11.s")
#endif
