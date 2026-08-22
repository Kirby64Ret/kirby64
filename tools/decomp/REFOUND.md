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
