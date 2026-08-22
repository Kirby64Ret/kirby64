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
 *
 * STATE INDEX:
 *   gEntityFuncListIDArray is the behaviour-thread selector that the ovl9
 *   FACTORY notes call "state N" (`gEntityFuncListIDArray[id] = 3;` is
 *   "hand off to state 3").  The numbering is PER-SPECIES -- ovl9_3's 3/4 are
 *   walk/despawn, ovl9_5's 0/1/2/4/6/7 are perch/…/flight/despawn/airborne/
 *   hit-launch, ovl9_14's 0/1/5 are idle/leap/KO -- so there is no single
 *   shared state enum to declare for it either.
 * ========================================================================== */

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
