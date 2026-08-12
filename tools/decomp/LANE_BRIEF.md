# Lane brief — read this before touching anything

## RULE ZERO: CLOSE FUNCTIONS. DO NOT SURVEY.

This overrides everything else in this file, and it exists because the last
wave proved the cost. The lane that spent its budget re-measuring 22 existing
drafts and writing careful notes closed **zero** functions in ~20 compiles. The
lane that just ground through one file closed **twelve**, most on a single
variant. Same brief, same tools, opposite output.

So:

- **Do not re-measure existing drafts to build a near-list.** If a draft has a
  recorded number, believe it or ignore it — do not spend compiles confirming it.
- **Do not write notes on functions you did not close.** A guarded draft with no
  comment is fine. Analysis you are not acting on is waste.
- **Do not survey, census, or rank.** Open a file, take the smallest untouched
  pragma, write it, compile it. If it matches, take the next one.
- **Three variants, then move on.** Not four. Guard it and go. Do not diagnose
  why it failed.
- **Do not report progress in prose.** One line per three closures in your
  progress file, function names only.

Your output is measured in functions closed, and nothing else counts. A lane
that closes six functions and explains nothing beats a lane that closes one and
explains everything.


Everything here was measured tonight. Where it contradicts AGENT_GUIDE.md, this
file is newer and wins; the guide's contradicted entries are listed at the end.

## Process rules — both of these cost hours tonight

**NEVER LEAVE A FUNCTION UN-GUARDED.** If you un-guard a draft to measure it,
re-guard it in the same edit cycle unless it verified byte-exact. Two lanes died
between un-guarding and re-guarding and left the tree 418 words red. No per-file
gate catches this: the file verifies fine as C, the TU size is right, the
sections are right. Only a full link sees it.

**REPORT INCREMENTALLY.** Every three closures, append a line to
`scratchpad/lane_<yourseg>_progress.txt` with function names and gate status. If
you die, that file is what survives. A lane that dies silently after four hours
delivers nothing.

**DELETE OBJECTS BEFORE BELIEVING A LOCALISATION.** `rm build/src/<seg>/*.o`. A
harness that restores a .c but leaves its .o makes make link the variant. That
produced a confident, fully-evidenced, completely wrong diagnosis of an 8-byte
displacement.

**Use `bash tools/decomp/mk.sh`, never bare make.** It holds a lock; two
concurrent makes produced a corrupt object.

**Never read a sha1 after a failed make** — grep the output for `error:` first.
A matching sha1 after a failed make is a stale ELF.

## Work the cheapest tier first

**Jump-table functions.** 127 remain tree-wide. A lane closed 16 of them, 13 on
the FIRST COMPILE, at ~1.3 compiles per closure — the cheapest work measured in
this project. They were structurally impossible until the rodata migration
landed tonight, so most have never been attempted.

> **JUMP-TABLE CASE BODIES ARE EMITTED IN SOURCE ORDER.** The `.L` block order in
> the listing dictates the order you must WRITE the cases. Ascending order fails.
>
> Real examples: one function needed its arms written
> `0,1,2,5,6,7,8,3,4,10,9,11,12`; another needed `1,3,4,5,6,7,8,2,9…18,0`.

Confirm migration per function from the LISTING, not the yaml and not anyone's
summary: `head -1` the `.s` file. A migrated listing opens with
`.section .late_rodata`. Migration is per-subsegment and can be partial inside
one C file.

**Then bare pragmas with no draft.** Measured close rates across six lanes:
89%, 81%, 75%, 75%, 70%, 68% — roughly half landing on the first compile.

**Then drafts already at ≤20 diffs.** Above 20, guard and move on: measured 9 of
16 close below that line, 2 of 20 above it.

**SEEDING IS THE BIGGEST COST LEVER.** In one file the first three closures cost
~20 compiles each; then a near-clone closed in ONE compile by porting the matched
shape across, and a fourth closed in one off idioms already in the file. Finish a
file before moving to the next. The donor matters more than which function you
pick.

**Budget: four variants, then guard the best draft with a measured note.** Cost
per closure is the metric, not heroism.

## Decide, don't sweep

**The +8 frame anomaly is decidable.** IDO computes `align8(0x1C + sizeof
locals)`; the ROM computes `align8(0x18 + …)`. So a function matches **iff its
locals total ≡ 4 (mod 8)**. That is why a function with a `0x20` struct plus an
`s32` pad (0x24) matches while the same function with the `0x20` struct alone
cannot. If the ROM carries no extra local and the total is not 4 mod 8, it is
blocked in that shape. Compute it, guard it, move on.

**A named blocker — guard on the second variant.** Residue shape: IDO gives the
LOWER saved or argument register to a *compiler temp* where the ROM gives it to a
*source variable*. Tried across five functions and ten variants and none of these
move it: declaration order and count, dead locals, pointer local vs inline,
`void f()` vs `f(void)`, adding a parameter, branch polarity, `u32` vs `s32`,
forked temps.

## Levers

- `for (i = 0;; i++)` vs `while (1) { …; i++; }` — the for-header increment
  schedules BEFORE the backward branch (the ROM's shape); a body-tail increment
  lands in the delay slot.
- Where the negation lives: `d = -(expr); x = d;` negates into `d`'s own
  register; `d = expr; x = -d;` allocates a fresh one.
- **K&R double promotion is a FRAME lever, check it first.** With no prototype in
  scope IDO promotes `f32` arguments to double: +16 bytes of outgoing-argument
  frame and +4 instructions. Recognise it by a frame exactly 8 or 16 too large in
  a function that calls something taking floats.
- Struct field signedness coalesces arguments — two `u32` fields to `s32` removed
  a `move $a0,$v1` at zero frame cost.
- A DOUBLE literal (`2.0`, not `2.0f`) forks IDO's shared FP constant. Works on
  non-zero constants.
- Callee return-type flip `void` → `s32` for a `$v0`/`$v1` swap. Flip EVERY
  declaration in the file — one of several is a hard IDO error, which is why this
  often reads as a floor.
- Prototype presence works in both directions and per call site: `void f(s32);` →
  `void f();` deletes a spurious move; `void f(u32);` → `void f(void *);` adds the
  ROM's `or $a0,$v0,$zero`; narrowing `void *` → `u32` removes an lw+move pair.
- A narrow local that must widen at `return` reserves `$v0` for the whole
  function and rotates every temp one slot up.
- `return N;` inside a switch arm writes `$v0` directly and reserves it; assign to
  a result variable and fall through to one `return ret;` to free it.
- A dense switch needs `case 0:` written out even when it does nothing — without
  it IDO biases the table with an `addiu -1` and everything after shifts.
- **Check the loop's TOP before blaming register allocation.** `while (A && B)`
  measured 267/375 with a variable promoted to `$s5` and twelve extra
  instructions — an unfixable-looking global allocation divergence. The ROM's
  un-rotated `while (1) { if (!A) break; if (!B) break; … }` took it to 3/363 in
  ONE compile and the promotion vanished.
- Three separate `f32` locals passed as `&sp54` are dead-store eliminated; they
  must be `f32 sp54[3]`. m2c bakes the wrong form in.
- Assignment position, not declaration position, orders register allocation.
- Mid-list pad locals are a third knob, distinct from leading and trailing.
- `x *= y` is not `x = y * x` — in an unrolled body the operand written SECOND
  takes the lower FP register.
- `volatile` on a loop bound forces the ROM's held-address reload shape.
- A `%lo(D_X + 0x8)` residue where the ROM materialises the address: add
  `D_800XXXXX = 0x800XXXXX;` to datatodo.txt. Allocates nothing, cannot move a
  byte, needs two uses of the symbol.
- Read the listing PAST the last label — a trailing `jal` after the shared
  epilogue is easy to miss.

## Corrections to AGENT_GUIDE.md

- **Chained assignment is WRONG for a shared `mtc1 $zero`.** `a = b = c = 0.0f`
  grew a frame 8 bytes and cost 47 diffs where three separate `= 0.0f` statements
  in ROM store order gave the right frame and 37. A shared zero register does not
  imply a chain. **Strip every chained assignment before diagnosing a +8 frame** —
  one function showed the exact anomaly signature and it was the chain.
- **"IDO reverses the outermost float `+`" does not hold for `var + arrayload`** —
  both source orders emit byte-identical code, A/B'd directly. The multiply form
  holds, and only for the LAST-EVALUATED multiply in a statement; earlier
  multiplies in the same statement stay in source order.
- **The type-split-zero trick is not adjustable.** One function produced three
  `mtc1 $zero` for every spelling where the ROM has two. Two attempts, then stop.
- **Dead-local frame padding is unreliable** — fixed one frame exactly, 0-for-3 in
  another file.
- **"Sweep every `extern f32` to a literal" is dangerous.** Migration is
  per-subsegment; a literal in an unmigrated TU does not compile. And a literal is
  CSE'd where an extern is not, so folding two uses into one register can steal the
  callee-saved FP register the ROM reserves for a loop variable — that regressed an
  already-matching function. Re-verify the WHOLE file after any literal
  substitution.
- **A recorded diff count can be too HIGH as well as too low.** `scan.py` scores a
  preprocessed copy and over-counts; one function annotated "4 diffs" measures 1
  in place. Re-measure in place before deciding a draft is far away.
- **Recorded "confirmed floors" are rumours.** Seven guide entries claiming
  exhaustive sweeps were falsified in one wave, several by a one-line change.
  Re-measure before believing any of them.

## Gates — all of these, before you hand back

```
bash tools/decomp/mk.sh                     grep for `error:` FIRST
python3 tools/decomp/rom_diff.py --shift    differing words by subsegment
python3 tools/decomp/check_tu_size.py
python3 tools/decomp/check_sections.py
python3 tools/decomp/check_rodata_bytes.py  .rodata BYTES vs the ROM, no link
python3 tools/decomp/verify.py <file> --all per file you touched
```

`check_rodata_bytes.py` exists because `verify.py` structurally cannot catch a
wrong float literal — the `lwc1` that loads a constant is byte-identical whatever
the value is, since the value lives in `.rodata` and only its address appears in
the encoding.

## Never

Commit. `git checkout` / `stash` / `reset`. Edit `kirby64.yaml` unless you were
told you own it. Un-guard a draft that is not byte-exact. Touch another lane's
segment.
