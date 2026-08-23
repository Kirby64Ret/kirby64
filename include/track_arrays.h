#ifndef OVL1_6_H
#define OVL1_6_H

#include "ovl2/ovl2_6.h"
#include "ovl19/ovl19_5.h"


#define MultiType union {u32 as_u32; u32 *as_u32p; s32 as_s32; s32 *as_s32p; f32 as_f32; void *as_ptr;}
#define _MultiType(CustomType) union {u32 as_u32; s32 as_s32; f32 as_f32; void *as_ptr; CustomType *consume;}

/* ==========================================================================
 * ENTITY / ENEMY-BEHAVIOUR SoA ARRAYS -- decoded semantics
 *
 * Every array below is one parallel per-entity ("track") lane indexed by
 * omCurrentObj->objId, stride 0x1C0 (112 slots * 4 bytes).  The names are
 * still D_800Exxxx because each of these is a LINKER symbol, not just a C
 * identifier: renaming one means editing the C uses AND every
 * asm/nonmatchings/**.s that does %hi/%lo on it AND tools/pc/vram_syms.txt
 * AND tools/symbol_addrs.txt (see the measured counts in the lane report).
 * That is a quiet-tree, sha1-gated operation, so this pass records the
 * meanings here instead of renaming.  Each entry cites the code that proves
 * it -- do not weaken a claim below without re-checking the cited site.
 *
 * MOTION TRIPLE (all f32), integrated by func_80119... in src/ovl1/ovl1_8.c:
 *   D_800E64D0  forward velocity along the rail/facing axis.
 *               PROOF: ovl1_8.c:651 `ks->forwardVel = D_800E64D0[objId]`
 *               and ovl1_8.c:813 `gKirbyState.forwardVel = D_800E64D0[objId]`.
 *   D_800E6690  forward acceleration, added into the velocity once per tick.
 *               PROOF: ovl1_8.c:364 `D_800E64D0[i] += D_800E6690[i];`.
 *               ovl9 behaviours spell it `acc.x` when they load it.
 *   D_800E6850  max forward speed; the velocity is clamped symmetrically to
 *               +/- this value right after the accel step.
 *               PROOF: ovl1_8.c:366-373.  The sentinel 65535.0f means
 *               "uncapped" and is tested by name at ovl1_8.c:366; ovl1_6.c:168
 *               and ovl1_7.c:689 install it at spawn/reset.
 *
 *   D_800E6A10  facing sign, +1.0f right / -1.0f left (an f32, not a bool).
 *               Enemy behaviours turn around with
 *               `D_800E6A10[i] = -D_800E6A10[i]` (34 sites in ovl9) and derive
 *               a walk velocity as `D_800E64D0[i] = D_800E6A10[i] * speed`.
 *               Seeded from func_8019B608_ovl7 / func_8019A900_ovl7.
 *
 * SPAWN PARAMETER:
 *   D_800E7880  (u8) the level entity record's `action` byte, copied verbatim
 *               at spawn.  PROOF: src/ovl2/spawn.c:320
 *               `D_800E7880[temp_v0] = e->action;` where `e` is a
 *               `struct Entity *` and `action` is types.h:77.
 *               NOTE: this is NOT a global "spawn mode" enum.  Each species
 *               reads the same byte with its own vocabulary -- ovl9_3's
 *               ambush thread switches on 1/2/3 (offset-sign wait / 240-unit
 *               proximity / immediate), ovl14 writes 1/2/4, and
 *               ovl1_6.c:122 and plylib.c:1084 write 0xFF as "none".  Any
 *               enum for it has to be per-species, not shared.
 *   D_800E77A0  (u16) a KIND ID shared by items and enemies, indexing
 *               per-kind tables/callbacks -- not a per-species scratch word.
 *               PROOF, ovl2 (copy-ability items): ovl2_10.c:1774
 *               `D_801249C0[D_800E77A0[objId]](arg0);` and ovl2_10.c:1952-2064
 *               index `struct Unk80124E14 D_80124E14[]` the same way,
 *               including installing a per-kind think callback at
 *               ovl2_10.c:2040 `D_800DEF90[id] = D_80124E14[D_800E77A0[id]].unk10;`.
 *               PROOF, ovl9 (enemies): ovl9_6.c's func_801ECB58_ovl9 /
 *               func_801ED9AC_ovl9 switch on it directly (0x42/0x5D/0x5E/0x5F,
 *               0x4B/0x64/0x65/0x66, 0x4C/0x68/0x69/0x6A) to index the
 *               per-species pointer tables D_8021C1E4_ovl9/D_8021C1F0_ovl9/
 *               D_8021C1FC_ovl9 and offset tables D_8021C208_ovl9/
 *               D_8021C214_ovl9/D_8021C220_ovl9 -- so within one call the raw
 *               kind value both selects a species GROUP (the switch arm) and
 *               indexes a per-instance slot within it.
 *
 * MEDIUM / CONTACT FLAGS:
 *   D_800E8AE0  (s32) per-entity medium+contact flag word.
 *               bit 0 (0x01) is set while the entity is inside one of the
 *               three liquid volumes D_8012BCE0[0..2] and cleared when it is
 *               not -- PROOF: src/ovl7/ovl7_3.c:510-532, which also stashes
 *               the volume in the enemy record's unk74.
 *               bits 1|4 (0x02 and 0x10) are the ENTER/LEAVE edge for that
 *               test: ovl7_3.c:533-541 sets both exactly when bit 0 differs
 *               from its value at the top of the tick and clears both
 *               otherwise; 0x10 then gates the surface-entry effect.
 *               The mask `& 6` is the engine's "in liquid" question --
 *               PROOF: plylib.c:1743 `if (D_800E8AE0[i] & 6) inWater = 1;`
 *               and plylib.c:2142, where it picks the slower in-water turn
 *               step (0.3925f vs 0.5233333f).  It is by far the most common
 *               test on this word tree-wide.
 *               The individual meanings of bits 1 and 2 are NOT yet pinned
 *               down separately -- only the composite `& 6` is proven.
 *   D_800E8920  (s32) gates the terrain/platform queries: nonzero is required
 *               before ovl1_8.c:747 will call func_8011E244 for a platform,
 *               and before ovl1_8.c:1048 will run the EnemyProbe
 *               (D_800E1B50[objId]->unk84) contact-tag lookup.  Set to 1 at
 *               entity init (plylib.c:793) and cleared on water current /
 *               steep surfaces (plylib.c:1760-1762).  ovl9 ambush threads use
 *               it to choose the grounded vs airborne successor state.
 *
 * BEHAVIOUR SCRATCH (meaning is per-species, listed so nobody re-derives it):
 *   D_800E98E0  (s32) the behaviour threads' general countdown/latch word --
 *               loaded with a tick count (0x3C etc), decremented with `--`,
 *               and tested against 0.
 *   D_800E9AA0  (MultiType) per-species scratch cell, almost always used as
 *               .as_s32 0/1 latch.
 *   D_800EA520  (s32) secondary 0/1 latch, e.g. the ovl9_3 ambush thread's
 *               "Kirby crossed to the other side" edge flag.
 *   D_800EAC20  (f32) per-species speed/scale factor; the ovl9 walk threads
 *               set it to `(D_800E8AE0[i] & 1) ? 0.5f : 1.0f`, i.e. half
 *               speed while in a liquid.
 *   D_800EB160  (f32) / D_800EB320 (f32) per-species stored positions or
 *               angles, e.g. ovl9_3 caches func_8019DA50_ovl7()'s signed
 *               lateral offset to Kirby in D_800EB320 to watch for a sign
 *               change.
 *   D_800E7B20  (f32) per-entity HP//presence cell: plylib.c:792 stores
 *               gKirbyHp here for Kirby, and enemies get
 *               EnemyKindDesc.rangeGate copied in at spawn.
 *   D_800E9C60  (s32) the busiest per-species scratch cell in ovl9 (9 of the
 *               10 files this pass touched use it) with NO single meaning --
 *               confirmed per-species, not a shared flag: a countdown in
 *               ovl9_1.c (loaded with 100/0xC8/0x64, decremented, floored at
 *               0), a table index in ovl9_3.c:663-668
 *               (`D_800EB160[id] = D_8021BDC8_ovl9[D_800E9C60[id]]; D_800E9C60[id]++;`),
 *               a running accumulator in ovl9_7_2.c:25-43
 *               (`sum = D_800E9C60[id] + v;`), a 2-frame "bobbing" toggle
 *               counter in ovl9_9.c:1806-1881, an OBJECT-ID REFERENCE in
 *               ovl9_12.c:26-64 (`D_800E9C60[id] = D_800E0D50[id];` then used
 *               to index a DIFFERENT entity's own D_800DE350/D_800E9FE0 --
 *               see D_800E0D50 below), and a plain 0/1 latch everywhere else
 *               (ovl9_6, ovl9_8, ovl9_9, ovl9_10, ovl9_13, ovl9_18).  Same
 *               family as D_800E9AA0/D_800EA520 above.
 *   D_800E9E20  (s32) another overloaded per-species scratch cell, same
 *               family: a countdown in ovl9_6.c's func_801EF354_ovl9
 *               (`if (D_800E9E20>0) D_800E9E20--; if(D_800E9E20<=0) ...`), a
 *               plain "setup done" 0/1 latch in ovl9_9/ovl9_11/ovl9_18 (set 0
 *               at the top of a spawn/entry coroutine, 1 at its end, tested
 *               by the successor before it acts), and a CARDINAL-DIRECTION
 *               QUADRANT index (0-4) in ovl9_17.c:124-146 -- populated from
 *               func_80219CE8_ovl9's return (an angle-band classifier on
 *               D_800EC660) and then switched on to pick which velocity axis
 *               to drive.
 *   D_800E0D50  (s32) a LINKED-OBJECT-ID reference (an objId into this same
 *               track array set, or -1 for none), not a scalar/flag.  PROOF:
 *               ovl9_12.c:26-29 `D_800E9C60[id] = D_800E0D50[id]; ...
 *               D_800E0D50[id] = -1;` -- captures the reference into
 *               D_800E9C60 (consuming it) and clears the slot to the -1
 *               sentinel.  Corroborated by ovl9_17.c:70
 *               `D_800DD710[D_800E0D50[id]] == -1`, which uses it to index
 *               ANOTHER entity's D_800DD710 slot the same way.
 *   D_800EA1A0  (s32) a per-species tick/frame counter driving a slow angle
 *               oscillation.  PROOF: ovl9_16.c:63-81 (func_802187C0_ovl9)
 *               increments it once per call and adds/subtracts
 *               `PI / arg0` from D_800E9020 while it is below two thresholds
 *               derived from the caller's `arg0`, then resets both to 0 once
 *               past them.
 *
 * STATE INDEX:
 *   gEntityFuncListIDArray is the behaviour-thread selector that the ovl9
 *   FACTORY notes call "state N" (`gEntityFuncListIDArray[id] = 3;` is
 *   "hand off to state 3").  The numbering is PER-SPECIES -- ovl9_3's 3/4 are
 *   walk/despawn, ovl9_5's 0/1/2/4/6/7 are perch/…/flight/despawn/airborne/
 *   hit-launch, ovl9_14's 0/1/5 are idle/leap/KO -- so there is no single
 *   shared state enum to declare for it either.
 *   D_800DDFD0  (s32) a SECOND, independent behaviour-thread selector, driven
 *               through its own `utilFuncTableJump(D_800DDFD0[id], N, table)`
 *               call and its own per-species FUNCLIST (every ovl9 species
 *               that uses it declares a distinct `D_8021xxxx_ovl9` table for
 *               it, separate from the one gEntityFuncListIDArray drives).
 *               Reset to 0 at the top of nearly every top-level spawn/entry
 *               function.  Numbering is per-species like
 *               gEntityFuncListIDArray, not shared.
 *
 * PER-TICK CALLBACKS (function-pointer SoA, installed at spawn):
 *   All three are driven from src/ovl1/ovl1_7.c, which is the entity-update
 *   driver every overlay's spawn code plugs into -- PROOF below is cited
 *   there since that is the only place any of the three is ever CALLED;
 *   ovl9 (and every other overlay) only ever ASSIGNS them.
 *   D_800DEF90  `void (*)(s32)` per-entity "think" callback, called once per
 *               tick with the GObj cast to s32.  PROOF: ovl1_7.c:734-741
 *               (func_800B0D90) -- gated on `!(D_800DD8D0[id] & 4)`, called
 *               right after `animUpdateModelTreeAnimation(arg0)` updates the
 *               model's animation tree for the tick.  This is the callback
 *               ovl9 spawn code installs with `D_800DEF90[id] = func_...;`
 *               to run its behaviour-thread's `ohSleep`-driven coroutine.
 *   D_800DF150  `void (*)(struct GObj *)` a second per-tick callback, called
 *               with the raw GObj* (not cast) right AFTER D_800DEF90 in the
 *               same function, gated on the separate bit
 *               `!(D_800DD8D0[id] & 8)`.  PROOF: ovl1_7.c:748-750.
 *   D_800DF310  `void (*)(s32, s32, f32)` per-entity handler for animation
 *               SCRIPT COMMANDS embedded in a DObj's anim track that the
 *               generic dispatcher doesn't special-case.  PROOF:
 *               ovl1_7.c:754-807 (func_800B0F28) switches on its `arg1`
 *               command opcode -- 9 (play a sound effect via
 *               func_800BB468), 12 (play_sound), 13 (attach a follower
 *               object's position), -1/-2 (set flag bits in D_800DD8D0) are
 *               handled inline; every other opcode falls to
 *               `D_800DF310[id]((s32) arg0, arg1, arg2)` at line 803-804,
 *               matching D_800DF310's declared 3-argument signature exactly
 *               (DObj* as s32, opcode, f32 payload).
 * ========================================================================== */

/* DELIBERATELY s32 here while src/ovl1/ovl1_6.h declares the same array u32.
 * MEASURED, not assumed: flipping this line to u32 changes the .text of
 * src/ovl2/ovl2_9.o -- the only translation unit that reaches the array
 * through this header -- and moves func_80110FD4, func_80111184,
 * func_8011145C, func_801114E0, func_80111534 and func_80111550 off the ROM.
 * Flipping ovl1_6.h's copy to s32 instead is worse: it moves ten ovl1
 * functions, request_job and request_track among them.
 *
 * Six files test this against -1 as a "no entry" sentinel (ovl2.c:113,
 * ovl2_4.c:25, ovl2_9.c:1146/1194, plylib.c:1594/1634), which reads naturally
 * signed, so s32 is very likely the true type -- but the ovl1 side was
 * matched against u32 and its comparisons carry the signedness into the
 * generated code. Unifying means fixing those call sites in the same change,
 * not editing one of these two lines.
 *
 * The disagreement survives only because the two headers share the OVL1_6_H
 * include guard, so no TU has ever seen both. That is a real defect and it is
 * what makes this pair of types unverifiable by inspection. */
extern s32 D_800DD710[];
extern s32 D_800DE190[];
extern s32 D_800DDFD0[];
extern s32 D_800DDE10[];
extern s32 gEntityFuncListIDArray[];
extern s32 D_800DD8D0[];
extern s32 gEntityRenderPriorityArray[];


extern f32 D_800E0B90[];
extern f32 D_800E09D0[];
extern s32 D_800E0F10[];
extern s32 D_800E0D50[];
extern f32 **D_800E0490[];
extern s32 *D_800E0650[];
extern s32 D_800E1ED0[];
extern void (*D_800DEDD0[])(struct GObj *);
extern void (*D_800DEF90[])(s32);
extern void (*D_800DF150[])(struct GObj *);
extern void (*D_800DF310[])(s32, s32, f32);
extern u32 D_800DF850[];
extern u32 D_800DF690[];
extern u32 *gSegment4StartArray[];

// i think this is an array of pairs (2-length arrays) of pointers but cba to figure out syntax
extern struct DObj **D_800DFBD0[];
extern s32 D_800E0110[];
extern s32 D_800DFF50[];
extern s32 D_800E02D0[];

extern f32 D_800E2410[];
extern f32 D_800E2250[];
extern f32 D_800E2090[];

extern f32 gEntitiesPosZArray[];
extern f32 gEntitiesPosYArray[];
extern f32 gEntitiesPosXArray[];
extern f32 gEntitiesNextPosZArray[];
extern f32 gEntitiesNextPosYArray[];
extern f32 gEntitiesNextPosXArray[];
extern f32 D_800E3910[];
extern f32 D_800E3750[];
extern f32 D_800E3590[];
extern f32 D_800E33D0[];
extern f32 D_800E3210[];
extern f32 D_800E3050[];
extern f32 D_800E3E50[];
extern f32 D_800E3C90[];
extern f32 D_800E3AD0[];
extern f32 gEntitiesAngleZArray[];
extern f32 gEntitiesAngleYArray[];
extern f32 gEntitiesAngleXArray[];
extern f32 D_800E1450[];
extern f32 D_800E1290[];
extern f32 D_800E10D0[];
extern f32 gEntitiesScaleZArray[];
extern f32 gEntitiesScaleYArray[];
extern f32 gEntitiesScaleXArray[];
extern f32 D_800E5DD0[];
extern f32 D_800E5C10[];
extern f32 D_800E5A50[];
extern f32 D_800E4E10[];
extern f32 D_800E4C50[];
extern f32 D_800E4A90[];
extern f32 D_800E5350[];
extern f32 D_800E5190[];
extern f32 D_800E4FD0[];

extern u32 D_800DDA90[];

extern u8 D_800E7650[];

extern s32 D_800E8AE0[];
extern s32 D_800E8220[];
extern s32 D_800E83E0[];
extern s32 D_800E8760[];

extern u32 D_800E8E60[];
extern f32 D_800E9020[];
extern u8 D_800E76C0[];
extern u8 D_800E7730[];

extern u16 D_800E77A0[];

extern u8 D_800E7880[];
extern u8 D_800E78F0[];
extern f32 D_800E7B20[];
/* DELIBERATELY u32 here while src/ovl1/ovl1_6.h declares the same array s32.
 * That looks like a bug and is not safe to "fix" as a header edit: the two
 * headers share the OVL1_6_H include guard, so no TU has ever seen both, and
 * the TUs that reach this array through THIS header were matched against a
 * u32 declaration. Retyping it to s32 to agree with ovl1_6.h moves six ovl2
 * functions off the ROM (func_80110FD4, func_80111184, func_8011145C,
 * func_801114E0, func_80111534, func_80111550), because the signedness
 * reaches the generated code through the comparisons there.
 *
 * The semantics say signed -- ovl1_7.c's func_800B18B4 reads
 *     if (D_800E7CE0[id] != 0) { if (D_800E7CE0[id]-- <= 0) D_800E7CE0[id] = 0; }
 * and under u32 that inner test degenerates to `== 0`, which the outer test
 * has already excluded, making the underflow clamp dead code. So the eventual
 * canonical type is s32, but getting there means fixing the ovl2 call sites
 * (with casts where the ROM wants unsigned compares) in the same change, not
 * flipping this line. Until then the disagreement is load-bearing and is
 * recorded here rather than left to be rediscovered. */
extern u32 D_800E7CE0[];
extern s32 D_800EA520[];
extern s32 D_800EA360[];
extern s32 D_800EA1A0[];

// this is a union or void*
extern MultiType D_800E9FE0[];

extern s32 D_800E9E20[];
extern s32 D_800E9C60[];

// this is also a union or void*
extern MultiType D_800E9AA0[];
extern s32 D_800E98E0[];
extern f32 D_800EB320[];
extern f32 D_800EB160[];
extern f32 D_800EAFA0[];
extern f32 D_800EADE0[];
extern f32 D_800EAC20[];
extern f32 D_800EAA60[];
extern f32 D_800EA8A0[];
extern f32 D_800EA6E0[];
extern s32 D_800EB6A0[];
extern s32 D_800EB4E0[];
extern f32 D_800EBA20[];
extern f32 D_800EB860[];
extern s32 D_800EC120[];
extern s32 D_800EBF60[];
extern s32 D_800EBDA0[];
extern s32 D_800EBBE0[];
extern s32 D_800EC4A0[];

// this is also a union or void*
extern MultiType D_800EC2E0[];

extern f32 D_800EC820[];
extern f32 D_800EC660[];
extern s32 D_800E6150[];
extern s32 D_800E5F90[];
extern f32 D_800E6D90[];
extern f32 D_800E6BD0[];
extern f32 D_800E17D0[];
extern f32 D_800E1610[];
extern f32 D_800E6A10[];
extern f32 D_800E6690[];
extern f32 D_800E64D0[];

extern f32 D_800E6850[];
extern s32 D_800E8CA0[];
extern s32 D_800E6310[];
extern f32 D_800E56D0[];
extern f32 D_800E5510[];
extern f32 D_800E5890[];
extern s32 D_800E9720[];
extern s32 D_800E9560[];
extern s32 D_800E93A0[];

extern f32 gameTicksPerDraw;

extern struct Normal D_800E6F50[];
extern f32 D_800D66FC, D_800D66F8;

extern u32 D_800E8060[];
extern s32 D_800E8920[];
extern s32 D_800E7EA0[];

#endif
