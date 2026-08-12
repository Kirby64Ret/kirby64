# WAVE 8 — the closing wave

This is the governing document for the session that finishes the decomp.
Where it conflicts with AGENT_GUIDE.md or WAVE7.md, this file wins. Where it
conflicts with LANE_BRIEF.md, LANE_BRIEF.md wins for lane behaviour — that
file is the distilled, paid-for lane protocol and is adopted here verbatim.

## Definition of done

1. Zero pragmas referencing `asm/nonmatchings` — every ROM function is
   matching C. (The 2 `asm_manual/` pragmas are inter-TU padding bytes, not
   functions; they are permanent and excluded from "remaining".)
2. `sha1sum build/kirby.us.z64` → `6cea2d46b929a3bb347b060a77fccc83526fb855`.
3. Zero unguarded non-matching C (verify_rom.py reports 0 real defects).
4. All work pushed to `claude/kirbyy64-decomp-eval-plan-4gxjjk`.

A pragma is byte-exact by construction — the ROM never stops matching because
of a pragma. Completion means converting pragmas to matching C, and nothing is
allowed to trade ROM accuracy for pragma count. sha1-green is a precondition
of every commit, not a goal for the end.

## Starting state (measured 2026-08-12, verified against the ROM)

- 999 pragma functions remain (1,007 pragma refs minus 2 permanent padding
  listings, minus sound-segment listings counted separately). Upstream
  `origin/splat` had 1,546 refs; prior waves closed ~539 plus the rodata
  migration that unblocked jump tables. 5,307 C functions verify byte-exact.
- Distribution at last measurement: ~531 bare pragmas, ~316 with drafts,
  ~171 raw-m2c; 136 `MIPS_TO_C` blocks and 370 `NON_MATCHING` guards in tree.
- Remaining by segment: ovl3 136, ovl2 126, ovl5 114, ovl9 112, ovl7 99,
  ovl1 89, main 56, ovl10 43, ovl15 35, ovl16 32, ovl14 31, ovl19 30,
  the rest &lt; 25 each.
- Measured fleet velocity in Wave 7: ~20 closures/hour at 2.2–4.3 compiles
  per closure. Finishing 1,007 today requires sustaining better than that —
  the tier ordering and freezes below are how.

## PHASE 0 — environment resurrection (BLOCKING after any container reload)

**STATUS: EXECUTED AND GREEN in this container, 2026-08-12 evening.**
`build/kirby.us.z64` sha1 = base ROM sha1; `verify_rom.py` reports 5,307 C
functions byte-exact, 0 real defects; ssb-decomp-re cloned at
`/workspace/vetritheretri/ssb-decomp-re`; port baseline recorded below. The
Opus manager starts at Phase 1. If THIS container dies, the next one runs
`bash tools/decomp/SESSION_SETUP.sh` (proven end-to-end today; needs
baserom.us.z64 from the user first — sha1
`6cea2d46b929a3bb347b060a77fccc83526fb855`, never committed).

Two seams were repaired to get a fresh clone building — pattern to know:
`src/ovl14/ovl14.c` and `src/ovl17/ovl17.c` carried pragmas pointing at
padding listings that only an OLDER splat split ever emitted; those listings
now live in **`asm_manual/`** (committed, not gitignored). If a future yaml
edit orphans another listing, the same fix applies: materialize the listing
from ROM bytes into `asm_manual/` and repoint the pragma.

Known-benign baseline: `check_sections.py` reports 112 advisory entries on a
sha1-green tree (fresh-split context). sha1 + `verify_rom.py` are the
arbiters; treat check_sections as a regression detector against that 112.

## PHASE 1 — freezes and triage (30 minutes, manager only)

**Freezes — violating any of these is the defined failure mode of the wave:**

- **PORT FREEZE.** No lane touches `port/`, `Makefile.pc`, `tools/pc/`,
  libultraship, Torch, SDL3, or any `#ifdef PORT` branch. Port progress is
  *reported* (the gap count falls as functions match) but never *worked*.
- **TOOLING FREEZE.** `mk.sh`, `verify.py`, `verify_rom.py`, the gate scripts
  and the permuter queue are proven. No lane writes or edits tools. The
  manager may fix a demonstrated tool bug only after it costs a closure,
  never preemptively.
- **YAML/LAYOUT FREEZE.** `kirby64.yaml`, linker scripts, `datatodo.txt`
  symbol additions: manager-owned, single-threaded, only via the documented
  rodata-migration procedure.
- **HISTORY FREEZE.** No `git stash/reset/checkout --/clean` anywhere, ever
  (a stash once destroyed ~394 matched functions). Lanes do not commit; the
  manager commits.
- **NO NEW DOCS.** This wave produces matched functions and one progress log,
  not analysis documents. (This file is the last one.)

**Triage (manager, ~15 min, tool-driven not prose-driven):** run
`rank_candidates.py`/`padtrap.py` over the 1,007 and bucket:

- **T1** bare pragmas, straight-line (pad==0, no jlabel, no rodata, ≤4
  branches) — historically 68–89% close rate, ~half first-compile.
- **T2** jump-table functions (post-migration; ~1.3 compiles/closure, case
  bodies written in `.L`-block order, NOT ascending).
- **T3** drafts measured ≤20 diffs (re-measure IN PLACE before trusting a
  recorded number — recorded numbers over- and under-count).
- **T4** engine files with SSB64 donors (enelib, plylib, GObj/AObj/DObj
  users, libn_audio) — transcribe verbatim, then adjust.
- **T5** everything else: >20-diff drafts, giants, known floor residues.
  T5 is permuter food and endgame work; no lane grinds T5 while T1–T4 exist.

## PHASE 2 — the grind (the day)

**Fleet shape:** 5–6 decomp lanes (this box has 4 cores; compiles are short
but links serialize on mk.sh's lock — more lanes than this just queue), plus
the permuter queue (`permute_queue.py`) running continuously at low priority
on T5 targets. Lanes own disjoint segments; suggested split by remaining
count: (ovl3) (ovl2) (ovl5+ovl10) (ovl9+ovl11/12/13) (ovl7+ovl14/15/16)
(ovl1+main+small ovls). Rebalance only when a lane's segment is empty.

**Lane contract = `tools/decomp/LANE_BRIEF.md`, verbatim.** The short form:
Rule Zero (close functions, do not survey); 3 variants then guard and move
on; never leave a function un-guarded across an edit cycle; `mk.sh` never
bare make; report one line per 3 closures to
`scratchpad/lane_<seg>_progress.txt`. Note: AGENT_GUIDE.md's `$S/verify.py`
paths are stale — every tool lives in `tools/decomp/` now.

**Manager cadence — this is the whole manager job:**

1. Every 30–45 min: run the full gate
   (`mk.sh` → sha1, `check_tu_size`, `check_sections`, `check_rodata_bytes`,
   `verify_rom.py`), commit, push. **A checkpoint that isn't pushed doesn't
   exist — this container can die like the last one did.**
2. Commit message format (required, every commit):
   `<what> | decomp NN.N% (P pragmas left) | port MM.M% (F funcs owed)`
   - **P** = unique `GLOBAL_ASM` refs:
     `grep -rhoE '#pragma GLOBAL_ASM\("[^"]+"\)' src --include=*.c | sort -u | wc -l`
     (includes 2 permanent `asm_manual/` padding pragmas; P target is 2, not 0
     — those two are padding bytes, not functions, and stay forever).
   - **decomp %** = `100 * E / (E + N)` where E = "C functions byte-exact"
     and N = pragma-function count, both printed by
     `python3 tools/decomp/verify_rom.py | tail -1`. Baseline today:
     E=5307, N=999 → **84.1%**. (The old ~70% figure used a denominator of
     accumulated splat listings that no fresh container can reproduce; it is
     retired. Done is done under any denominator: N=0.)
   - **port %** = `100 * (1 - F/510)` where F is the "un-decompiled
     functions" line of `make -f Makefile.pc gap` (baseline F=510 today).
     Port code itself is frozen; this number improves purely as functions
     match.
3. Feed lanes their next file; harvest permuter hits into T5 files.
4. Do NOT re-verify lanes' individual functions (the gate catches
   everything); do NOT write analysis; do NOT touch port or tooling.

**Token discipline (the budget is the second clock):**

- Lanes emit function names and gate status, not prose. A lane explaining a
  failure is burning the budget of two closures.
- Manager narration ≤3 lines per checkpoint.
- No agent reads more of a file than the function it is working plus its
  context generation. No agent reads docs/ at all.
- Kill and respawn any lane that has spent >20 compiles without a closure in
  a T1/T2 bucket (measured signature of a lane stuck surveying).

## PHASE 3 — endgame (when T1–T3 run dry, expect late day)

1. **SSB donor pass (T4):** for each remaining engine function, find the
   ssb-decomp-re counterpart by struct-field skeleton, transcribe verbatim,
   adjust symbols only. SSB is also ground truth for struct layouts — a
   donor-derived struct fix often closes several floors in one move.
2. **Permuter harvest:** by now the queue has been chewing T5 for hours;
   apply hits, verify, guard misses.
3. **Floors:** attack with the LANE_BRIEF lever list only (loop-top shape,
   K&R promotion, negation placement, prototype presence, return-slot
   reservation, mod-8 frame rule…). The frame anomaly is *decidable* —
   compute it, don't sweep it.
4. **Residue policy:** if anything provably blocked remains at end of day, it
   stays a pragma (ROM stays exact), each with a one-line note in
   `funcstodo.txt` stating the measured blocker. The user decides their fate.
   Do not silently unguard, do not fake a match, do not redefine "done".

## Checkpoint protocol (rewritten 2026-08-12 after it failed in practice)

"Gate every 30-45 minutes and commit" does not work with seven lanes on one
shared working tree, and the first attempt cost an hour with NOTHING
committed. The tree is essentially never green at an arbitrary instant: a
lane rewrites a .c in place, compiles, and restores it, so an unannounced
build lands inside somebody's edit window. Twice the manager diagnosed a
break that the responsible lane had already fixed or replaced with a
different one.

**The working protocol is: drain, then gate.** Message every lane to finish
its current edit, guarantee its files compile with all non-matching work
guarded, and reply PAUSED. Gate the stationary tree once, commit, push,
then resume. Lanes hand back clean trees when asked directly; six of seven
did so within minutes.

Corollary: a lane completing or reporting IS a checkpoint window. Prefer
those to arbitrary timers.

## verify.py MATCH does not mean the ROM is safe

Measured twice today, both times on functions verify.py called MATCH:

  * `check_tu_size.py` found the TU 16 and 64 bytes SHORT while every
    function in it verified. verify.py checks a function's own instructions;
    it cannot see what the translation unit emits around them. A short TU
    shifts every segment after it -- one 32-byte growth in ovl14 made 6.6
    MILLION words appear to differ.
  * `padtrap.py` classified both listings 'benign'/'clean', disagreeing with
    check_tu_size. When the two disagree, **check_tu_size wins** -- it is
    measuring the linked result, padtrap is predicting from the listing.

So the per-function check is necessary and not sufficient. The gate order
that actually catches things:

    mk.sh -> sha1        the arbiter; everything else is diagnosis
    check_tu_size.py     catches shifts that verify.py structurally cannot
    rom_diff.py --shift  tells you WHICH subsegment, in seconds
    verify_rom.py        per-function truth, but refuses on a stale ELF

A ROM that is byte-exact is the only evidence that counts. A file full of
MATCHes is not.

## The last structural lever: ovl3's kirby.c / ovl3_6.c re-split

Measured 2026-08-12. Exactly **17** pragma functions in the whole tree are
blocked by unmigrated .rodata, and **14 of them are in ovl3/ovl3_6** (the
other 3: ovl5_4 x2, ovl5_3 x1). Jump-table functions are the cheapest tier in
this project (~1.3 compiles per closure), so this one move is worth about as
much as a full lane-cycle, and those 14 cannot be reached any other way.

The blocker is the `# TODO: reassess split` on line 404 of kirby64.yaml, and
the yaml's own comment already contains the diagnosis:

    the kirby.c/ovl3_6.c file split at 0xDD9A0 is NOT the TU boundary. The
    real one is near func_80179370_ovl3 [...] kirby.c's own object is only
    0xF7D10..0xF7FB0, and the tail it shares with ovl3_6 stays an asm blob
    until the C files are re-split.

Confirmed by arithmetic: func_80179370_ovl3 is vram 0x80179370 =
ROM **0xD9DB0** (0x80179370 - 0x80151100 + 0xB1B40), and it currently sits in
`src/ovl3/kirby.c` (its pragma is at kirby.c:2469). The rodata object at
0xF7FB0 serves func_80179370 (kirby.c) through func_8018F368 (ovl3_6) with no
reset, so ONE rodata object spans TWO C files. No C file can emit that shape,
which is why `[0xF7FB0, rodata, ovl3/kirby_2]` is still a raw blob.

**The move:** re-split the C files at 0xD9DB0 instead of 0xDD9A0 — everything
from func_80179370_ovl3 to the end of kirby.c moves into ovl3_6.c (or a new
TU) — then change the yaml subsegment to `[0xD9DB0, c, ovl3/ovl3_6]` and turn
`[0xF7FB0, rodata, ovl3/kirby_2]` into a migrated `.rodata` for that TU.

**Execute ONLY with the ovl3 lane paused**, and single-threaded: it rewrites
two files that lane owns, and `mk.sh` re-runs splat when the yaml changes,
which regenerates asm/nonmatchings under every other lane's feet. Gate with
check_tu_size + check_sections + check_rodata_bytes + verify_rom before
committing; a mid-flight rodata migration once produced a ROM differing in
3,741 regions and read exactly like catastrophic lane breakage.

### ATTEMPTED AND REVERTED 2026-08-12 — read this before trying again

The mechanical part works and took ten minutes: cut kirby.c at the
func_80179370_ovl3 pragma (15 functions, 450 lines: 9 pragmas + 6 matched C),
paste at the head of ovl3_6.c's function region, retarget the yaml to
`[0xD9DB0, c, ovl3/ovl3_6]` and `[0xF7FB0, .rodata, ovl3/ovl3_6]`.

**What blocks it is not the move — it is that the two TUs independently
declare the same symbols with incompatible types.** While they were separate
translation units that was legal and invisible. Merged, every divergence is a
hard error, and C requires ONE type per symbol per TU regardless of scope, so
block-scoping a declaration does not resolve it. Found in six build cycles,
and the list was still growing when this was reverted:

  * 7 symbols declared in kirby.c that did not travel (D_801926E8_ovl3,
    D_801928BC_ovl3, D_801975EC_ovl3, D_800DFA10, D_80190358_ovl3,
    gEntityGObjProcessArray, func_8016C510_ovl3) — easy, add them.
  * func_8016C510_ovl3: `void(GObj *)` in kirby.c vs `void(s32)` in ovl3_6.c.
  * func_80121658: `s32(void)` vs `void(void)` — and the s32 side is needed by
    a GUARDED draft while the void side is used by an ALREADY-MATCHED
    function. Resolved with a function-pointer alias in the draft rather than
    by changing the matched function's declaration.
  * func_80120A28, ohSleep, and more behind them.

**The trap:** the obvious fix each time is to change one declaration to match
the other. Do not. Both files are full of already-matched functions, and a
declaration change alters codegen for every function below it in the TU —
that is the exact defect that shifted three TUs earlier the same night.

**Correct sequencing when this is next attempted, and budget a session for
it, not an hour:** FIRST reconcile the declarations while the files are still
separate — for each conflicting symbol pick the type the ROM implies, change
it in one file, and prove with verify_rom that no matched function moved.
Only once both TUs agree on every shared symbol is the move itself safe.
Payoff is 14 jump-table functions at ~1.3 compiles each, the cheapest tier
left, so it is worth doing properly.

## HUNT CLONE FAMILIES — the highest-yield method found in this wave

Two ovl16 functions closed on the FIRST COMPILE, ~480 instructions together,
at a point where the rest of the fleet was averaging one closure per ~400k
tokens against register-allocation floors. They were not easier functions —
198 and 285 instructions each. They were **clones of an already-matched
function in the same file**.

The unit was a pure angle-advance body repeated per object index and
component, whose full decode was already written out in the file's own
matched `func_801DD25C_ovl16`:

    o += K;                                  /* or -= */
    while (o >  6.283185482f) { o -= 6.283185482f; }
    while (o < -6.283185482f) { o += 6.283185482f; }

with the object subscript read off the `lw` displacement (0x8→[2], 0xC→[3],
0x10→[4], 0x14→[5]) and the component off the field displacement (0x30→.x,
0x34→.y, 0x38→.z). No register-allocation work at all.

**So the first move in any file should be: does an already-matched function
here have the same shape as a pragma?** Instruction count is a poor proxy for
difficulty; provenance is a good one. A 285-instruction clone is cheaper than
a 90-instruction original. LANE_BRIEF has always said "seeding is the biggest
cost lever" — this is that principle at scale, and it outperformed every
other method tried tonight.

### Tail-screen bug — anchor on the LAST `.size`

The padding-trap screen must anchor on the **last** `.size` in the listing.
Anchoring on the first matches the migrated `.late_rodata` block at the head
of a listing and produces a false positive, i.e. it reports a padding trap on
a perfectly convertible function. Functions may have been wrongly skipped
tonight on this; re-screen before believing any recorded skip.

(This is the same class of bug padtrap.py's docstring records from an earlier
wave — `rfind('.size')` anchoring on a leading `.late_rodata` block. It came
back in a hand-written screen.)

## LINE PACKING — real, but narrower than first reported

**What it does:** an `if`/`else` chain whose arms sit on ONE source line
schedules its two ADDRESS COMPUTATIONS in the opposite order to the same
chain spread over several lines. It closed func_801DF790_ovl15 (2/142) and
func_801E0380_ovl15 (5/138) outright, changing nothing else.

**What it does NOT do — measured, 1 compile each, both negative:** it does
not change which REGISTER a correctly-ordered computation lands in.
func_800BBDC4 (7/103) and func_800A8100 (24/76) were both packed — the
second is exactly the two-competing-address-computations shape the lever
describes — and neither moved by a single instruction.

**So the screen is:** use it when the residue is the ORDER two address
computations issue in. Do not use it on a `$v0`/`$v1` or `$a2`/`$a3`
assignment residue where the order is already right; that is the
register-allocation floor and line packing has no purchase on it.

Recorded this precisely because the first version of this entry was written
too broadly and went out to six lanes before it was falsified. The guide's
own standing warning applies to everything in this file: **a recorded lever
is a measurement, not a law, and several have been falsified by one compile.**

## MANAGER RULE: never guard a function a lane still has open

Learned the hard way 2026-08-12. To unblock a gate I guarded
`func_800B96A0` while the ovl1 lane was mid-edit on it. Its
un-guard/test/re-guard cycle collided with my guard and produced **three
stacked `#ifdef NON_MATCHING` and two `#else`/`#pragma`/`#endif` trios**
around one function — the nested-guard failure mode, where the inner branch
goes live and the ROM takes a draft. It surfaced as a compile error and the
lane repaired it, but it could as easily have linked.

So: the manager guards a function ONLY when the owning lane has confirmed
`PAUSED`. If a gate is blocked by a lane that is still running, message the
lane and let it guard its own function. The gate can wait a few minutes; a
nested guard that links cannot be seen by verify.py.

The same applies to any manager repair inside a lane's file. Every
manager-side repair tonight that raced a live lane either had to be redone
or made things worse; every one made against a paused lane was clean.

## Floors measured 2026-08-12 — screen for these BEFORE spending variants

Every one of these was paid for tonight. A function matching any of them is
guarded on sight, with no variants attempted.

**Padding traps — three distinct classes, and `padtrap.py` catches only some.**
`verify.py` says MATCH on all of them; `check_tu_size.py` is what sees the
damage. Screen the `.s` tail before starting:

1. *Last function in its TU with nops past `.size`.* Nothing following forces
   the alignment back, so converting leaves the object short. padtrap calls
   these "benign" because its rule assumes a following function in the same
   section. (func_8002C990, libn_audio_2 — cost a gate cycle.)
2. *Ex-archive SUBALIGN(16) members.* The nops are 16-byte object alignment
   left over from `libn_audio.a`, which IDO will not re-emit inside a single
   TU. The "a following function forces re-alignment" rule does not hold here
   even though another function does follow. (func_8002AE74.)
3. *Trailing unnamed empty function.* The listing continues past `.size` with
   a bare `jr $ra` / `nop` — a second, nameless function. Converting the named
   one shortens the TU no matter how byte-exact it is, and verify.py
   structurally cannot see it. (func_801613C0_ovl5 is byte-exact at 1/26 and
   still unclosable; func_8017AD54_ovl5, func_8015CD00_ovl5 share the shape.)

Related: a listing that continues into a SECOND `.section .text` past `.size`
is two functions in one file — skip it (func_800BA7A0, ovl1_10).

**Register-allocation floors.** Guard on the second variant, not the fourth:

- *Whole-function callee-saved register permutation.* The frame, the saved
  count and the structure are all the ROM's, and six registers are rotated.
  Nothing at source level moves it.
- *One-slot temp rotation* from a single instruction onward.
- *`mul.s $f6,$f2` where the ROM has `$f2,$f6`* — invariant to source operand
  order; hoisting the constant into a local swaps the `$f0`/`$f2` roles and
  costs more.
- *A CSE'd load landing in the neighbouring register* (`$v0` vs `$v1`,
  `$a2` vs `$a3`) with an extra `move`. Sometimes closable, usually not — two
  variants, then guard.

**The +8 frame anomaly is decidable, not sweepable.** IDO computes
`align8(0x1C + sizeof locals)`, the ROM computes `align8(0x18 + ...)`, so a
function matches iff its locals total ≡ 4 (mod 8). Compute it. A function one
instruction over after four shapes is almost always this.

## Standing prohibitions (full list, for lane prompts)

No port work. No tool writing. No yaml edits (manager-owned). No git
write commands other than manager commit+push to the designated branch. No
new files except progress logs in scratchpad. No surveys, censuses, or
rankings. No editing matched (unguarded) C. No flipping NON_MATCHING guards.
No inventing symbols. No committing with a red gate. No `sleep`-polling.
No reading a sha1 after a failed make.
