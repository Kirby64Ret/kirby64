#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl18_1.h"
#include "ovl18_3.h"

extern s32 D_801CB4DC_ovl7;
extern u32 D_800E0D50[];

/* K&R form is load-bearing here: its real signature is
 * void func_800A9864(u32, u32, u32), but its call site below passes 4
 * args -- the ROM ignores the extra value. An ANSI prototype breaks
 * compilation with "too many arguments". */
void func_800A9864();
void func_800AA018(s32);
void curObjSleepForever(void);
void func_801ACF5C_ovl7(struct GObj *);
void func_801ACF84_ovl7(void);
void func_802244FC_ovl18(struct GObj *);

void func_80224320_ovl18(UNUSED s32 arg0) {
    struct EnemyRecord *temp_a3 = D_800E1B50[omCurrentObj->objId];

    D_800E98E0[omCurrentObj->objId] = 0x3C;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleZArray[omCurrentObj->objId] = gEntitiesScaleZArray[D_800E0D50[omCurrentObj->objId]];
    D_800DF150[omCurrentObj->objId] = &func_802244FC_ovl18;
    temp_a3->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1008E, 0x23, 0x10, temp_a3);
    func_800AA018(0x10523);
    func_800AECC0(gameTicksPerDraw * 0.75f);
    func_800AED20(gameTicksPerDraw * 0.75f);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 9.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 9.0f;
    curObjSleepForever();
}

/* MATCHED 2026-08-25 and un-guarded, by LEVER 58. It went 7/26 to byte-exact
   on one edit: this function takes a `struct GObj *` and hands it straight to
   func_801ACF5C_ovl7.

   The tell is textbook. `jal func_801ACF5C_ovl7` leaves $a0 UNTOUCHED -- no
   instruction on that path writes it -- and there is no `sw $a0` home store
   anywhere in the function, which is the refined discriminator: an untouched
   $a0 with a home store means the parameter is dead, and without one it means
   the parameter is passed through. That reservation of $a0 is also the whole
   register residue the previous note described from the outside: with $a0 live
   across the branch IDO cannot put the loaded counter there, so it goes to $a1
   exactly as the ROM does, $a1 is busy at the `bnez`, and the
   `&func_801ACF84_ovl7` constant can no longer be hoisted above it. One cause,
   seven words.

   The callee was already spelled `(GObj *)` in ovl9_7.c and ovl14_2.c; only
   this file declared it `(void)`, so no tree-wide retype was involved -- the
   local declarations were simply wrong. Both were corrected in the same edit.

   Recorded from before, so nobody re-runs them: dropping the `&` on the
   process-entry argument is byte-identical at 7/26, so the address-of was
   never what hoisted it; reading the counter into a named `s32 count` is
   11/26, four worse, because it moves objId's own load from $v0 to $v1.
   barrier_sweep.py over all seven placements is negative -- the hoist crosses
   a branch and a barrier inside the taken arm cannot reach it.

   PADDING TRAP CLEARED 2026-08-25 and that is what made this reachable at all:
   `- [0x236F10, pad]` is in kirby64.yaml, so verify.py scores this listing
   instead of refusing it, and un-guarding no longer shortens the TU. Before
   the pad this function had never carried a number. */
void func_802244FC_ovl18(struct GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801ACF84_ovl7);
    } else {
        D_800E98E0[omCurrentObj->objId] -= 1;
        func_801ACF5C_ovl7(arg0);
    }
}