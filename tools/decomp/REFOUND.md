# Re-foundation recipe: decomp-first, port-second

Repo: /home/user/kirby64_decomp. The N64 matching build is byte-exact and the
authority. Rule: a function may only carry a PORT implementation if the decomp
is solved first — MATCHED (preferred) or a verified near-miss draft flagged
for the permuter factory.

## Per-function pipeline

Target sites are `#pragma GLOBAL_ASM(...)` sites that currently carry a PORT
arm (`#ifdef PORT` or `#elif defined(PORT)`), possibly with an old
`#ifdef MIPS_TO_C` sketch above.

1. READ tools/decomp/LEVERS.md FIRST. It is the matching playbook; every
   lever in it is measured. Also screen the padding traps section against
   your function's `.s` tail before starting.
2. Derive the N64 draft from the ASSEMBLY:
   `python3 tools/m2ctx.py <file.c>` (ctx.c at repo root -> copy to /tmp,
   DELETE ctx.c), then
   `python3 /workspace/m2c/m2c.py --target mips-ido-c --context /tmp/ctx_X.c -f <func> <asm.s>`
   (add the overlay rodata .s for jump tables). If an old MIPS_TO_C sketch
   exists at the site, start from it, but re-verify every line against the asm.
   NEVER copy the PORT arm's body — it contains LP64-isms (widened 8-byte anim
   cells, host struct offsets, pc_probe_* calls, uintptr_t) that are WRONG for
   the N64. The PORT arm is a semantics reference only.
3. ITERATE UNGUARDED. verify.py compiles the file exactly as the matching
   build does — a guarded draft is INVISIBLE to it ("unverifiable"). So while
   iterating, the draft temporarily REPLACES the pragma (plain function, no
   guard; externs/prototypes it needs go INSIDE the function body). Keep the
   PORT arm's guard structure around it untouched aside from that swap.
4. Verify: `python3 tools/decomp/verify.py src/<file>.c <func>` (from repo
   root). Iterate with LEVERS levers. Time-box: if after ~6 focused compile
   iterations the residue is register-shaped (regalloc/one-slot rotation/
   callee-saved permutation), STOP and RE-GUARD into the exit shape:
     #ifdef MIPS_TO_C
     /* FACTORY: <matched>/<total>, <residue kind> */
     <draft>
     #elif defined(PORT)
     <the existing PORT arm, unchanged>
     #else
     #pragma GLOBAL_ASM(...)
     #endif
   That is a success (permuter fuel), not a failure. NEVER leave a file at
   handoff with an unguarded non-matching function — that silently corrupts
   the ROM build.
5. On MATCH (verify.py prints MATCH for the function):
   a. Screen the tail (LAST `.size` anchor; trailing nops = padding trap —
      if trapped, do NOT un-guard; keep the guarded MATCH with a
      `/* FACTORY: MATCH, padding-trapped TU */` note and report it).
   b. If clean: un-guard — the draft becomes the PLAIN shared function, the
      pragma is deleted. Then reconcile the PORT side:
      - If the matched C is LP64-clean as-is (no N64-only offsets/strides,
        pointers via declared types): DELETE the old PORT arm entirely.
      - Else: keep the divergence MINIMAL — `#ifdef PORT` only around the
        divergent lines inside the matched function, or if unavoidable a
        full `#ifdef PORT variant #else matched C #endif` split.
   c. Re-run `verify.py src/<file>.c --all` and confirm every previously
      matching function in the TU still matches (a new file-scope decl can
      shift codegen — the rules in LEVERS.md apply verbatim).
6. PC compile check after each function:
   `make -f Makefile.pc build/pc/src/<file>.o` (this specific object target
   is the ONLY make invocation you may run).

## Hard rules (from tools/decomp/LEVERS.md, they protect the ROM)

- NEVER run bare `make`, `mk.sh`, or ANY git command. The manager builds and
  commits.
- Never edit an already-matched unguarded function. Weird IS the match.
- Declarations a guarded draft needs go INSIDE the guard.
- Never script/regex-replace a function definition. One function at a time,
  by hand.
- A utilPrintf string must come from that function's own listing `.asciz`.

## Report format

Per function: MATCHED (un-guarded, PORT arm deleted/kept-minimal) |
FACTORY-QUEUED (score, residue kind) | PADDING-TRAPPED (MATCH, needs yaml pad)
| BLOCKED (why). Plus: verify.py --all regression status per file, PC object
build status per file.

## Calibration from the first re-founded batch (fault.c, ovl4_2.c)

- The common exit state is a draft with the EXACT target instruction count
  whose only residue is a register-naming cascade (saved-reg role swaps,
  neighbour-register CSE) and/or a +8/+16 frame delta. That is a GOOD seed —
  seal it with the FACTORY note; the permuter exists for precisely this.
- Levers that paid off: parameters mutated in place instead of var_s copies
  (homes them in saved regs); m2c's goto/duplicated-delay-slot shapes kept
  literally; scalars split around big stack structs to hit the ROM's struct
  base (lever 12/13); block-scope prototypes must MATCH any earlier
  block-scope declaration in the file (IDO treats them as file-scope).
- verify.py needs the pragma line ABSENT while iterating (it classifies any
  function whose pragma appears anywhere in the file text as unverifiable).
  Park it as a comment, restore it when sealing.

## HARD-LEARNED: structural edits outside the function body break the ROM

Measured on src/ovl2/ovl2_8.c: moving a `struct` + two forward declarations
EARLIER in the file (so a guarded draft could see the type) grew the TU by
32 bytes and broke the ROM sha1 — the moved forward declarations turned
previously IMPLICIT calls into prototyped ones for every function in
between. `verify.py` stayed green the whole time; only
`check_tu_size.py` / the sha1 saw it.

Rules that follow, in addition to LEVERS':
- NEVER move, add, or retype a file-scope declaration to suit a draft. If a
  draft needs a type that is declared later in the file, put the DRAFT after
  that declaration (its pragma stays at the original site), or keep the
  draft's own local view inside the function body.
- Changing a file-scope prototype's parameter types (e.g. s32 -> f32)
  re-types every CALL SITE in the TU. Same trap.
- After any edit that is not purely inside one function body, run
  `python3 tools/decomp/check_tu_size.py` before believing verify.py.
- The manager runs `tools/decomp/mk.sh` (sha1 gate) before every commit that
  touches N64-visible text.

## Note for func_8010E8F0 (ovl2_8.c)

Its ROM prologue is `mtc1 $a1,$f12 / mtc1 $a3,$f14`: the floats ARRIVE in
integer registers. So the definition is NOT an ANSI `f32` prototype (that
would receive them in $f12/$f14 directly and needs a declaration change that
breaks the TU, see above). Next pass should try a K&R definition with float
parameters while LEAVING the file-scope declaration as
`s32 func_8010E8F0(Vector *, s32, Vector *, s32, s32);` (LEVERS lever 15).

## THE METRIC IS progress2.py, NOT A FUNCTION COUNT

Upstream measures BYTES of decompilable code:

    python3 tools/progress2.py     ->  56.8%  (Kirby64 approach)

Earlier notes in this file quoted ~86%, which came from factory.py's
function-count ratio. That number flatters the work (a 12-instruction leaf
counts the same as an 800-instruction boss) and does not match what the
project and its community report. Use progress2.py for any status claim.

## QUALITY BAR (from upstream maintainer feedback)

The goal of the decomp is a source tree people can MOD and read, not a
percentage. Ranked accordingly:

1. **ANSI prototypes, not K&R.** `void func_x();` (unspecified arguments)
   is a matching crutch; most such functions still match with a real
   prototype. Converting them is a type clarification, which is the kind of
   change the project actually wants. 368 of these exist in src today.
   Protocol for each (the ovl2_8 lesson -- a declaration change re-types
   every call site in the TU):
     a. `verify.py <file> --all`, record the match count.
     b. Convert the declaration to real parameter types read off the asm.
     c. Re-run `verify.py <file> --all` AND `check_tu_size.py`.
     d. Keep only if the match count did not drop and the TU size is exact;
        otherwise revert and leave a note saying K&R was load-bearing here.
     e. **Then build the PC object**
        (`make -f Makefile.pc build/pc/src/<ovl>/<file>.o`). Steps a-d are all
        N64-side and will happily pass a change that breaks the port: a
        converted declaration whose PORT arm is still `(void)`, or whose
        caller passes no argument, compiles fine for N64 and fails for PC.
        Measured on func_801E15A4_ovl17. If it breaks, fix the PC side
        (usually the caller passing the register the ROM already leaves in
        $a0) rather than reverting the type fix.
2. **Names and types over percentage.** A function whose arguments and
   struct fields are named from evidence is worth more than three more
   matched-but-opaque functions.
3. **Match the surrounding file's formatting.** Do not reformat neighbouring
   code, and do not emit a house style of your own; m2c output is a DRAFT to
   be rewritten, never a source of truth to be pasted.
4. **Granular commits.** One logical change per commit.

## OPEN COORDINATOR TASK: the eight void-returning collision helpers

src/ovl2/ovl2_7.c declares and DEFINES these as `void`, but the ROM's callers
test their return in $v0:

    func_80103AA0  func_80103F58  func_80104010  func_80104184
    func_801043B0  func_80104520  func_801047F0  func_801048A4

That blocks eight callers from being decompiled at all (func_80104D2C,
func_801058B8, func_80107074, func_801078A0, func_80108078, func_80108858,
func_8010C734, func_8010CABC). Proven dead ends: IDO rejects an in-body
redeclaration, and calling through a cast emits `jalr` where the ROM has
`jal`.

So the fix is to retype the eight DEFINITIONS to `s32`. That is a real type
correction and worth doing, but they are already-matched live C, and
`verify.py` cannot see them (their listings are gone), so the ONLY sound
gate is the full ROM sha1:

    1. quiet the tree (no lane mid-edit, permuter paused)
    2. retype the eight definitions, adding the return the asm shows
    3. bash tools/decomp/mk.sh   -- must print `build/kirby.us.z64: OK`
    4. if the sha1 breaks, revert all eight; do not bisect in a live tree

Do NOT attempt this while lanes are running.

## OPEN COORDINATOR TASKS (2 more, from the ovl1 lane)

- **func_800B531C (ovl1_8.c), 469/480.** `gKirbyState` is an incomplete
  `struct Player` in the N64 arm because Player.h is included only inside the
  PORT arm, so the ROM's held `$a3` base cannot be reproduced. Fix is a
  file-scope include, which must be A/B'd against every matched function in
  ovl1_8.c (record match count, add include, re-verify + check_tu_size).

- **func_800A2550 (ovl1.c), 211/220 measured by hand.** Padding-trapped:
  6 words past `.size`, so verify.py refuses to score it. Converting it
  requires a `pad` subsegment in kirby64.yaml AND the matching kirby.ld edit
  in the same commit.

- **func_8009C4E0 (2394 insns) and func_8009E8F4 (1823 insns)** are
  deliberately NOT drafted. Their in-tree m2c sketches do not compile
  (`? *` types, 265 `->unkNN` refs). Under the QUALITY BAR they must not be
  sealed as pasted drafts; the real prerequisite is naming the particle /
  emitter / texture and opcode records first. That is naming work, not
  matching work, and it is worth more than either function's score.

- **func_802016A8_ovl9**, blocked on `extern void func_801ACCA0_ovl7(s32, s32,
  f32, f32);` in ovl9_9.c. The ROM uses its return as a spawned track id, and
  ovl9_15.c already declares the same symbol `s32`, so the `void` here is
  simply wrong. Measured: cast workaround gives 82/83 (IDO emits lui/addiu/
  jalr against the ROM's jal); the return-type fix gives 54/82 with
  check_tu_size unchanged for ovl9_9.c (the other two call sites discard the
  result). One-line change, ready, needs the sha1 gate.

- **src/ovl9/ovl9_14.c** carries PRE-EXISTING breakage, not from this wave:
  func_802110C0_ovl9 (5/141) and func_8021134C_ovl9 (8/102) are unguarded and
  every diff is a rodata reloc target exactly 8 bytes low
  (`RELOC TARGET 8021DD00 != 8021DD08`), i.e. this TU's float pool is 8 bytes
  short upstream of them. `.text` size is exact, which is why the TU-size gate
  stays green. Note that the full ROM sha1 has been passing with these live,
  so this is likely a verify.py standalone-link artifact rather than real ROM
  damage -- confirm with verify_rom.py before anyone "fixes" it.

- **include/Player.h: gKirbyState.unk130/134/138/13C are declared `u32` but
  are `f32`.** Worth 46 words on func_8011DD5C alone, and it is a shared
  header, so it is a real type clarification for the whole tree rather than a
  local matching trick. The plylib lane worked around it with `*(f32*)&`
  casts rather than touch the header. Fix needs the whole-tree protocol:
  record every file's match count, change the four fields, rebuild, re-verify
  every TU that reads them, check_tu_size, then the sha1 gate.

## GATE GAP: verify.py is blind in a file with zero matched functions

A file whose functions are all pragmas/guarded has nothing for verify.py to
score, so it reports "0 checks" and a declaration change there can shift
codegen invisibly. Measured twice in the K&R->ANSI pass, including one that
looked completely inert (`func_800B2340(Vector*, struct DObj*, u32)`:
matching arity, visible types, zero risk signals) yet renamed $a2->$v0
across ~80 instructions of an UNRELATED caller in the same TU.

So for any declaration/type change, the per-file gate is a byte diff of the
translation unit, not verify.py:

    objdump -d -j .text build/verify/src/<path>.o  >  /tmp/after.txt
    objdump -d -j .text build/src/<path>.o         >  /tmp/before.txt
    diff /tmp/before.txt /tmp/after.txt        # must be empty

`build/` is the manager's last full build (the known-good baseline) and
`build/verify/` is what verify.py just compiled. Note `build/` lags live
edits, which is also why check_tu_size can report a stale size for a file a
lane is actively editing -- confirm against build/verify/ before believing it.

- **src/ovl10/ovl10_5b.c keeps the prototypes for func_800A9864 /
  func_800FF144 / func_800FF1CC inside the PORT-only block**, so the N64 build
  has none in scope. IDO permits exactly one block-scope copy per TU and
  rejects both a second copy and the implicit int a bare call creates, so only
  ONE draft in that file can compile at a time (func_801F1554 currently owns
  it). Moving those three prototypes to real file scope unblocks
  func_801F1A24, func_801F11A8 and func_801F2098 at once.

  **MEASURED UNSAFE as written.** The ovl10 lane ran exactly this experiment
  on the sibling file ovl10_1.c under the full LEVERS protocol (all 43
  non-pragma functions' instruction words recorded first): hoisting four
  PORT-only declarations to file scope MOVED func_801E2C78_ovl10 and grew
  .text 0x7130 -> 0x7170. Reverted, byte-identical again. So this task is not
  "hoist and gate" -- whoever takes it must find a form that does not change
  what the N64 build sees at file scope (e.g. a header included only by the
  N64 arm, or per-function in-body declarations paired with sealing one draft
  at a time), and the sha1 is the acceptance test either way.

  **A vacuous version of this test is easy to run by accident**: if the
  declarations are placed INSIDE the PORT block, the N64 build never sees
  them and "nothing moved" means nothing. The lane's first attempt did this.
  When a lane reports a declaration change as inert, ask where the
  declaration landed.

## THE `__asm__("symbol")` ALIAS TRAP IN PORT ARMS

PORT arms across ovl5 (at least 8 occurrences in ovl5_2/4/5) declare locals
with GCC's rename extension:

    extern f32 D_80186C88 __asm__("D_80186C88_ovl5");

That is GCC-only; IDO's cc cannot compile it at all, so a draft that inherits
it from the PORT arm will not even build. In every case found so far the file
ALREADY declares the real symbol with a real type somewhere else, and the fix
is to use that declaration and the file's existing indexing convention. Note
IDO also ties a local extern's type file-wide, so an array-typed alias will
collide with a scalar declaration of the same symbol elsewhere in the TU.

Several of these aliases were gratuitous in the PORT arm too (the symbol was
already declared and used directly a few functions away), so they are worth
removing on the port side when touching that code for other reasons.

## ASSIGN WORK BY FILE, NEVER BY POSITION IN A LIST

Splitting a bloc between two lanes as "you take the top, you take the bottom"
is unsafe: a bloc's remaining work is often concentrated in ONE file, so both
lanes end up editing the same TU. Measured -- an ovl5 file was observed
shrinking 126394 -> 126364 -> 126348 bytes in ~32 seconds while two lanes
alternately compiled it.

Partition by FILE. If two lanes must share a bloc, name the files each owns.
A lane that needs to measure against a file it does not own should splice the
candidate into a scratch copy of the TU outside src/ and score that --
verify.py works fine on a copy (only load_secbase cares about the path, and it
degrades silently for non-migrated-rodata TUs) -- and should guard any live
edit with an mtime check that aborts if the file moved underneath it.

## RENAMING A SHARED STRUCT: THE WHOLE-TREE PC BUILD IS PART OF THE JOB

A struct in include/unk_structs/ is used by overlays you are not working on.
Renaming its fields and only fixing your own overlay leaves the rest of the
tree referencing names that no longer exist. Measured: the ovl9 naming pass
renamed EnemyProbe/EnemyKindDesc fields and broke the PC build in ovl7_5.c,
ovl7_13.c, ovl9_6.c, ovl9_13.c, ovl10_1.c and ovl10_3b.c.

So after renaming any field of a shared struct:

    # Makefile.pc has NO header-dependency tracking (no -MMD/.d files), so a
    # bare `make` silently skips every .o that is already newer than the
    # header you just edited, and the grep comes back FALSE-CLEAN. Measured:
    # a rename reported 0 errors, and forcing the rebuild surfaced 19.
    for f in $(grep -rl "<the-header>.h" src --include=*.c); do \
        rm -f "build/pc/${f%.c}.o"; done
    make -f Makefile.pc -k -j4 2>&1 | grep -E "^src.*error"

must be empty, tree-wide, before you hand back. The N64 side will NOT catch
this: those call sites are in PORT arms.

And when repairing such fallout, DO NOT run a file-wide regex on `->unkNN`.
Other structs in the same file legitimately have a field of that name --
a blanket rename of `->unk4` to `->posX` in ovl7_5.c hit AnimReq, AnimTrack,
AnimReqSet, EneAnimSetup and EneInfo. Drive the repair off the compiler's own
`file:line: 'struct X' has no member named 'Y'` output and edit only that
line, iterating until the error count reaches zero.

## OPEN COORDINATOR TASK: include/track_arrays.h and src/ovl1/ovl1_6.h
## share the include guard OVL1_6_H

Both headers open with `#ifndef OVL1_6_H / #define OVL1_6_H`, so whichever is
included SECOND is skipped in its entirety. 37 files include both. A
declaration added to one of them to fix a build is therefore silently
invisible in most of those TUs -- the same vacuous-change class as declaring
something inside a PORT block.

Renaming the guard is a one-line change and it does NOT move any code (I
tried it: every TU size stayed exact). But it does not build, and the reason
is the actual finding:

**the two headers declare the same symbols with DIFFERENT types**, and the
guard collision has been hiding it. Conflicts: D_800DD710, D_800DF690,
D_800E7CE0, D_800E9AA0, D_800E9FE0, D_800EC2E0 -- e.g. D_800E9AA0 is
`struct EntityThing800E9AA0 *[]` in one and a scalar array in the other, so
ovl10_1.c and ovl10_3.c index it as a value in ~20 places.

This is a genuine type-clarification job of exactly the kind the project
wants, and it is coordinator-sized:
  1. decide the correct type for each of the six symbols from the asm
     (D_800E9AA0's users disagree, so at least one overlay is wrong today);
  2. make the two headers agree, ideally by having track_arrays.h be the one
     definition and ovl1_6.h include it;
  3. fix the call sites the corrected type exposes;
  4. rename the guard;
  5. gate: every TU size exact, tree-wide PC build clean, then the sha1.
Do not attempt it piecemeal in a live tree.

## check_tu_size RACES A LANE THAT IS MID-ITERATION

check_tu_size.py reads `build/src/<file>.o`, which only a real build writes --
verify.py deliberately writes to `build/verify/` instead. So if any build runs
while a lane has a draft UNGUARDED in place of its pragma (the prescribed
iterate-unguarded step), the object captured is short and the file reads as
defective. Measured: one ovl19 file drifted -16 -> -32 -> -64 across three
readings of what was at times the same source, and measured exact (0x5EF0)
from build/verify/ the whole time.

Consequences:
- A TU-size reading is only meaningful when no lane is mid-iteration in that
  file. Holding such a file out of commits is still correct -- an unguarded
  non-matching function must not be committed -- but do NOT report it as a
  defect, and re-measure after the lane seals.
- To check your own file while iterating, read build/verify/ (or objdump the
  object verify.py just produced), never build/src/.
