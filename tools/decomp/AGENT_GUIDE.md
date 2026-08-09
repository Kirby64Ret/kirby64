# Kirby 64 decomp — function matching guide

Repo: /home/user/kirby64_decomp (work here). Scratch dir (shared, read-only tools): /tmp/claude-0/-home-user-kirby64-decomp/cb15b3c6-5ddf-53f9-96ee-b58ac853ac0f/scratchpad — call it $S below.

## Goal
Convert `#pragma GLOBAL_ASM(...)` stubs in YOUR ASSIGNED C FILE into matching C.
A function is DONE only when the verifier prints `MATCH`. Never leave a function
converted-but-not-matching: if you can't match it, restore the original
`#ifdef MIPS_TO_C ... #else #pragma ... #endif` block (you may improve the draft inside).

## The verifier (ground truth = real ROM disassembly in asm/)
    python3 $S/verify.py <cfile> <func_name>     # verify one function
    python3 $S/verify.py <cfile> --all           # verify all non-pragma funcs in file
It compiles the file with the project's exact IDO 7.1 flags and word-diffs the
function against asm/nonmatchings/.../<func>.s (relocations masked).
- MATCH = done. DIFF prints target vs current per instruction.
- COMPILE FAILED prints compiler output — fix and retry.
- At the END of your work, run `--all` and confirm 0 diff: you must not regress
  previously-matched functions in the file.

## Workflow per function
1. Read the target asm: asm/nonmatchings/<seg>/<file>/<func>.s
   (comment columns are: rom_offset vram raw_word).
2. Many functions already have an m2c draft in `#ifdef MIPS_TO_C` blocks — start
   from it. Replace the whole `#ifdef MIPS_TO_C…#endif` construct with the plain
   C function once it matches (that's the project convention for matched code).
3. No draft? Generate one:
       mips-linux-gnu-cpp -P -Wno-trigraphs -D_LANGUAGE_C -D_FINALROM -DTARGET_N64 \
         -DF3DEX_GBI_2 -nostdinc -Iinclude/libc -Iinclude -Ilibreultra/include/2.0I \
         -Ibuild -Ibuild/include -Ibuild/assets -Isrc -Isrc.old -I. <cfile> -o $S/ctx_<name>.c
       python3 $S/m2c/m2c.py --target mips-ido-c --context $S/ctx_<name>.c \
         asm/nonmatchings/<seg>/<file>/<func>.s
4. Also check src.old/ — the pre-migration tree often has a hand-written version
   of the same function (search by name or by called functions). Prefer its
   structure; it usually matched in the old build.
5. Iterate until MATCH.

## Matching IDO 7.1 -O2 tips
- `lw` of the symbol itself ⇒ the global is a POINTER (`extern s32 *X;`), not an array.
  Direct indexed access from `%lo(X)($reg)` with computed offset ⇒ array.
- Unsigned compare `sltu`/`sltiu` ⇒ u32 types/casts; `slt`/`slti` ⇒ s32.
- Order of register assignment often follows source expression order; introduce
  or remove temp variables to fix register/instruction-order diffs.
- `beql/bnel` (likely branches) come from `if` with simple body; plain `beq/bne`
  + delay-slot from `if/else` or loop shapes.
- Loop with counter compared via `slt` at bottom ⇒ `do { } while`; via top ⇒ `while/for`.
- Float constants come from .rodata via lui/lwc1 pairs — use the literal value (e.g. 0.5f).
- Division by constants shows as magic-number multiply (`mult` + shifts) — write `/ N`.
- `& 0xFF` vs u8 cast, `<< 16 >> 16` vs s16 cast — try both forms.
- Struct field access: get offsets right; check existing struct defs in
  include/ and src/<seg>/*.h before inventing types. Common types: GObj (include/GObj.h),
  AObj/DObj, etc.
- Function calls with implicit declarations default to s32 return — fine, but the
  project prefers real prototypes; add externs near the top of the file (match the
  file's existing style) or use existing headers.
- Data symbols: declare `extern <type> D_XXXXXXXX...;` locally in the file like the
  file already does. The linker resolves them via unnamed_syms.txt — do NOT add
  symbols to linker scripts.

## Hard rules
- ONLY edit your assigned C file (and, if truly needed for declarations, its
  paired .h). Do not touch the Makefile, yaml, linker scripts, or other files' code.
- Do not run `make` (other agents share the tree); use only verify.py.
- Do not commit or push. Do not create new files in the repo.
- Keep the file's existing style: 4-space indent, same brace style, no added
  comments about the process, no `// TODO` spam.
- If IDO emits warnings for your function, resolve them if trivially possible
  (verify.py prints error lines).

## Report format (your final message)
- MATCHED: list of function names now matching (plain C, pragma removed)
- ATTEMPTED-NO-MATCH: functions you tried but restored to pragma blocks, one line each on what differs
- File ends with `--all` result line proving 0 diff.

## CRITICAL rules learned from integration failures (violations broke the ROM build)
1. NEVER flip an existing `#ifdef NON_MATCHING` / `#ifndef NON_MATCHING` guard.
   The active branch was chosen because it matches. Flipping one silently broke
   the whole ROM layout.
2. NEVER modify a function that is already plain (unguarded) C — it's already
   matched. This includes "cleanups" like reordering declarations or fixing a
   comment that says a variable is in a weird place. Weird IS the match.
3. Header edits: strictly additive (new prototypes, new structs). Do not change
   existing struct fields, types, or prototypes others may depend on.
4. Beware symbol aliasing: `D_XXXXXXXX` names encode addresses; a D_ symbol may
   point INTO a named array (e.g. D_8004A3D4 == &gDisplayListHeads[1]). Before
   using a D_ symbol, confirm with `grep <name> build/kirby.us.map` that it is
   linkable, and check tools/symbol_addrs.txt for named symbols at nearby
   addresses. If a symbol you need does not exist in the map, DO NOT invent it,
   DO NOT run splat, DO NOT edit linker scripts — note it in your report and
   restore the pragma for that function.
5. Float/double constants: write the LITERAL, never an extern f32 reference.
   (In scaffolded overlays the literal creates a duplicate rodata entry — that
   is expected and is fixed later by a yaml .rodata migration, NOT by you.
   See the RODATA RULE section at the end.) Get exact bits:
   python3 -c "import struct;print(hex(struct.unpack('>I',struct.pack('>f',float('X')))[0]))"
   and confirm against the .late_rodata words at the top of the target listing.
6. Final self-check before reporting, in addition to --all:
   mips-linux-gnu-nm build/src/<yourfile>.o | grep ' U ' — every undefined
   symbol must appear in build/kirby.us.map (grep it). Anything missing means
   your code references a symbol the link can't resolve — fix or revert it.
7. NEVER delete or rename a top-level DATA object (e.g. `u8 D_8022F67C_ovl19[] = {...}`,
   FUNCLIST tables, Gfx display lists). These often sit INSIDE a `#else` branch
   next to a pragma, so they look like part of the block you are replacing —
   they are not. When you convert a function, move any data definition in that
   `#else` branch OUT of the block, keeping it at file scope. Deleting one
   breaks the link or silently shifts the segment.

## IDO 7.1 is LINE-NUMBER SENSITIVE (verified experimentally)
Reformatting a matched function — with the exact same tokens, only whitespace
and line breaks changed — CAN change register/spill allocation and break the
match. Confirmed on func_8011A588 in ovl2_10.c: collapsing/expanding one
`do {...} while (0)` block flipped a spill slot from 0x1C to 0x18.
Consequences:
- Apply permuter output VERBATIM. Do not tidy it up, do not re-indent it,
  do not add a comment line above it, until you have re-verified.
- After ANY cosmetic edit to a matched function, re-run verify.py on it.
- If a function matches only in an odd shape (one-liner, `do {} while (0)`,
  a seemingly useless local), LEAVE IT and add a short comment saying the
  shape is load-bearing.

## The permuter (for near-misses that are 1-5 instructions off)
    python3 $S/setup_permuter.py <cfile> <func>      # builds $S/perm/<func>/
    cd $S/decomp-permuter && ./permuter.py $S/perm/<func> -j4 --stop-on-zero
It randomly mutates the C (swapping temps, reordering decls, changing casts)
and scores each candidate against the ROM's own assembly; score 0 = match.
Found a match for func_8011A588 in ~2 minutes / 287 iterations.
IMPORTANT: the permuter works on a PREPROCESSED copy whose declaration set can
differ from the real file, so a score-0 result may still be a few instructions
off in-place. Paste it into the real file, run verify.py, and if it is close,
try permuting the DECLARATION ORDER of the locals (that alone fixed 8011A588).

## PORTING A NEWLY SCAFFOLDED OVERLAY (ovl8, ovl11-ovl18)
These files were just generated by splat and contain only `#include "common.h"`
plus one pragma per function. Most of their functions already exist, written by
hand, in `src.old/` — porting those is far faster than decompiling from asm.

Procedure:
1. Find the old file: `ls src.old/ovlN/` and grep it for your function names.
   Old and new file splits differ, so a function may live in any old file in
   that overlay (or occasionally in a differently-numbered one).
2. Copy the old file's `#include` lines into the new file first, then port
   functions in batches and run verify.py. Expect most to match on the first
   compile — they matched in the old build.
3. Add headers the old file used (e.g. `src.old/ovl12/ovl12.h`) by copying them
   to `src/ovlN/`. That IS allowed for these new overlays (they have no headers
   yet). Keep them minimal — only what your file needs.

DO NOT port `*.data` files (e.g. `src.old/ovl12/ovl12.data`) and do NOT add
top-level data objects from the old tree. In the new layout these overlays get
their data from asm (`data` subsegments -> asm/data/ovlN/*.s). Defining them in
C too will cause duplicate-symbol link errors or silently shift the segment.
If a function needs a data symbol, declare it `extern` and confirm the symbol
exists in build/kirby.us.map.

## RODATA RULE for scaffolded overlays (learned the hard way)
Overlays ovl8/ovl11-ovl18 were split with all code as asm, so the compiler's
generated float/double constants got lumped into the `data` subsegment and
splat gave them names (e.g. D_801E2D20_ovl12 = 3.927). This creates a trap:

- If ported C writes the float LITERAL, IDO emits its own copy into .rodata.
  Each function still assembles to identical bytes -- verify.py PASSES -- but
  the duplicate constants shift every later rodata reference and the ROM
  stops matching. verify.py cannot see this; only the full ROM build can.
- If you instead reference the data symbol as `extern f32 D_xxx;`, the codegen
  usually differs and the function stops matching.

The real fix is in kirby64.yaml: declare the constants' address range as
`.rodata` belonging to the C file, so IDO's generated rodata lands exactly
where the originals were. BUT:

  A rodata block can only be migrated to .rodata when EVERY function that
  references it has been decompiled to C. If some users are still pragmas,
  their .s listings reference the now-migrated symbols and the link fails
  (or the block duplicates). Mixed pragma/C use of one rodata block cannot
  be made to match.

So: finish an overlay's rodata-using functions FIRST, then migrate. ovl12 is
the worked example (see the commit that ports it). $S/find_rodata_bounds.py
prints the suggested yaml subsegment lines for an overlay.

## Rodata drift check (integration step, run before committing a batch)
    python3 $S/check_rodata.py          # compares vs a green-build baseline
Flags any object whose .rodata GREW, which means ported C is emitting float
constants the ROM keeps in its asm data blob. verify.py cannot see this (the
functions still assemble to identical bytes) -- only this check and the full
ROM build can. After a successful sha1-matching build, refresh the baseline:
    python3 $S/check_rodata.py --save

## Layout drift check (THIRD blind spot verify.py cannot see)
    python3 $S/check_layout.py [ovlN]
Some listings carry padding words AFTER the `.size` directive (IDO's alignment
padding, e.g. following an infinite loop). Those words are assembled in while
the function is a `#pragma GLOBAL_ASM`, but VANISH the moment you convert it to
C. The function still verifies as MATCH, yet everything after it in the segment
shifts (a real 28-byte shift was found this way in ovl16). Such functions must
STAY as pragmas.
check_layout.py compares every C function's offset in its object against its
true address and reports any drift, so it catches this and any other cause
(extra rodata, wrong local count). Run it before committing a batch.
Find padded listings directly with:
    awk '/^\.size /{f=1;next} f&&NF{print FILENAME}' asm/nonmatchings/<seg>/<file>/*.s | sort -u

## Fast near-miss finder (use this before picking functions to work on)
    python3 $S/scan.py <cfile>
Un-guards every MIPS_TO_C draft in a file one at a time and reports each one's
diff count, so you can spot the 2-instruction near-misses among 30 pragmas in
seconds instead of trying them blind. Written by an agent; it found a 4/257 and
a 2/76 immediately.

## Permuter caveat
When a function's only difference is a STACK SLOT OFFSET, the permuter's scorer
reports `base score = 0` (a false positive -- verified by compiling its own
base.c). It is reliable for register-allocation diffs, not stack-layout ones.

## IDO quirks found late in the session
- `x / 8.0f` is strength-reduced to a multiply, but `x / (f32)8` keeps `div.s`.
- An empty block (`do { } while (0);` or `if (1) {}`) between two statements can
  be load-bearing: it splits the basic block and changes which register a struct
  base lands in. Found in func_8022AEA0_ovl19 and func_801D0E3C_ovl8.
- A function may only match with a `void` return even when it computes a value,
  because IDO fills a branch delay slot differently when $v0 is dead. Check the
  callers before changing a prototype's return type.

## CROSS-GAME ENGINE PORT (highest-yield technique found — use it first)
Kirby 64 and Super Smash Bros 64 are both HAL Laboratory titles and share the
SAME engine SOURCE, not merely the same design. A clone of the SSB64 decomp
(~96% matched, fully named) is at /workspace/vetritheretri/ssb-decomp-re/,
engine source in src/sys/ (objman.c objanim.c objdisplay.c objhelper.c
objscript.c matrix.c vector.c taskman.c scheduler.c video.c).

Measured result: 22 of 24 Kirby engine functions matched on the FIRST compile
with ZERO iteration, including 473- and 343-instruction functions.
object_manager.c, object_helpers.c and gtl.c went to 0 pragmas this way.

Method:
1. Read Kirby's asm listing; find the SSB counterpart by matching STRUCT FIELD
   OFFSETS and call shape (grep the src/sys/ files).
2. Transcribe the SSB body VERBATIM. Do NOT reorder statements or tidy it --
   reordering two adjacent stores was one of only two failures.
3. Rename fields/symbols to Kirby's equivalents, then verify.
4. When it does not match, suspect a TYPE mismatch, not logic. The other
   failure was a global defined u32 while declared s32, which blocked CSE
   against signed comparisons.

Confirmed layout mapping (identical between the games):
  GObjProcess (0x24): link_next->next 0x00, link_prev->prev 0x04,
    priority_next->nextPriProc 0x08, priority_prev->prevPriProc 0x0C,
    priority->pri 0x10, kind 0x14, is_paused->paused 0x15,
    parent_gobj->gobj 0x18, exec->payload 0x1C
  GObj: objId 0x00, next 0x04, prev 0x08, link_id->link 0x0C, pri 0x10,
    onUpdate 0x14, gobjproc_head->procListHead 0x18, gobjproc_tail->procListTail 0x1C
  Globals: sGCCommonLinks->omGObjListTail, sGCProcessQueue->omGObjProcList

SSB is ALSO ground truth for struct layouts and types, and has already exposed
real errors in Kirby's headers (GObjProcess was declared 0x28 but is 0x24;
MObj primLOD comes from unk_5C not unk_54). If you correct a shared header,
A/B-compile every dependent file and prove the disassembly is unchanged first.

## Jump tables in #pragma GLOBAL_ASM (fixed 2026-08-08)

If a function you are converting has a jump table (`jlabel .L8...` in its
listing, `jtbl_8...` in asm/data/<seg>/<file>.rodata.s), it used to fail at
link with `undefined reference to .L8...`. Root cause: asm-processor's own
prelude.inc defines `jlabel` without `.global`, while include/macro.inc
defines it with. Jump tables here live in a SEPARATE rodata object, so the
label must be exported across the object boundary.

Fixed by include/asmpp_prelude.inc (a project-local copy of the submodule's
prelude with the .global added), passed via --asm-prelude in the Makefile.
Do not patch tools/asm-processor -- it is a submodule and a fresh clone would
not get the change.

Debugging note: `nm` hides .L-prefixed symbols even when they are GLOBAL.
Use `readelf -sW` when checking whether a jump-table label is exported, or
you will conclude the working case is broken too.

## Scaffolding a segment that is still monolithic `asm`

scratchpad/split_ovl.py + scratchpad/convert_asm_seg.py do this without
re-running splat (which rewrites every segment at once and would clobber
other agents' work). Split at the `nonmatching <fn>, 0x<size>` directives,
NOT at glabel -- splitting there is what leaves each TU's trailing alignment
padding in the LAST function's listing, where it has to stay.

Always verify a fresh scaffold before trusting it:
  1. every instruction word vs the base ROM at its own ROM offset
  2. 0 internal gaps / overlaps in each TU's coverage
  3. check_tu_size.py: each object's .text == its yaml subsegment
  4. the segment links at exactly its original size (+0)

Remember kirby.ld also has a SEPARATE `.<seg>_bss` output section outside the
main `.<seg>` block -- a regex scoped to the main block will miss it and the
link fails with "cannot find build/asm/<seg>/<file>.o".

## IDO aligns the dead epilogue after an infinite loop to 32 bytes

A function ending in `while (1) { ... }` has an unreachable epilogue. IDO
still emits it, and pads with nops so it starts on a 32-byte boundary
RELATIVE TO THE TRANSLATION UNIT'S BASE.

Consequence: two copies of byte-identical C do NOT always produce identical
code. A copy whose offset already lands on a boundary gets 0 nops; another
gets 1-7. If the ROM's copy has padding your C cannot reproduce, that
function has to stay a #pragma -- no source form fixes it. Ruled out by
testing: -O1/-O2, -Olimit, -Wo,-loopunroll[,0], for(;;) vs while(1) vs
do/while, `GObj *` vs `struct GObj *`, trailing `return;`.

Second consequence, and the nastier one: a function can verify ALONE and
fail IN PLACE. Verifying one function compiles the file with every other
function still a pragma, i.e. at its exact ROM size. Convert a neighbour
that comes out 16 bytes short and everything after it shifts, changing its
alignment phase. So after any batch conversion, re-run verify.py --all per
file and roll back anything that now differs, repeating until the file stops
changing. scratchpad/apply_family.py + stabilize.py do this.

Symptom to recognise: the first N instructions match exactly and the diff is
only a run of nops before `lw $ra` at the end.

## Clone families

scratchpad/find_clones.py groups functions by opcode+register skeleton with
every instruction's low 16 bits masked (relocation immediates, branch
displacements, stack offsets, small constants). HAL reused code heavily, so
these are real families from the same original C.

572 of the remaining pragmas sit in 177 families. Decompile the
representative by hand, extract each copy's differing symbols from its own
relocations, generate the rest, verify each, roll back what fails.

Note there are only ~25 usable donors (functions already in C that still
have a listing) -- listings are removed as functions are converted, so
clone-porting from existing C mostly is not available. The lever is
pragma-to-pragma families.


## Corrections and additions (from the ovl17/ovl11 agent)

The padding-detector awk given earlier does NOT reset its flag between
files, so it flags almost everything. Run it per file as:

    awk 'BEGIN{f=0} /^\.size /{f=1;next} f&&NF{c++} END{print c+0}' <one .s>

The 32-byte dead-epilogue rule is also a PROBE FOR A WRONG TU BOUNDARY.
If two functions are byte-identical except the nop count in the unreachable
epilogue, compute where the ROM's epilogue sits in object-offset terms. If
the ROM's is not 32-aligned and yours is, splat's `c` subsegment split is not
where the original translation unit started. Confirmed independently on
ovl17_2 (func_801DDB8C/func_801DDF6C) and ovl14_2. No source form fixes
these -- the yaml split has to be corrected first.

Four techniques that closed real matches:

1. Arg-register coalescing. ROM has `or $a0, $v1, $zero` but IDO computes
   straight into $a0: give the callee a POINTER parameter and cast at the
   call site to force the temp.
2. Type-split constants. IDO keeps separate constant registers per type, so
   `D_800D7098.unk4 = 1;` (u32) forks a second `li reg,1`. Writing
   `*(s32 *) &D_800D7098.unk4 = 1;` shares it. Took one function 76 -> 13.
3. `||` over a shared float constant: a ternary reproduces the control flow
   but costs 8 bytes of stack temps; a `goto` into the `then` branch of an
   if/else reproduces it exactly with no stack cost.
4. Local DECLARATION ORDER controls stack offsets -- later-declared locals
   get LOWER addresses.

And a literal trap: 31.2f is 0x41F9999A, but the ROM word is 0x41F99999.
Write 31.199999f. Always check float literal bits against the data word.

Open anomaly, currently the single largest blocker in the near-misses: three
unrelated functions (func_801E14B0_ovl17, func_801DD1CC_ovl11,
func_801E0D00_ovl17) are instruction-for-instruction correct but IDO reserves
4-8 bytes BELOW the local block that the ROM does not. Adding or removing
declared locals shifts the block wholesale instead of closing the gap.

## Matching idioms (from the ovl2/ovl7 engine-port agent)

- IDO REVERSES THE OPERAND ORDER OF THE OUTERMOST FLOAT `+`. To get
  `add.s fd, fA, fB`, write `Bexpr + Aexpr`. This alone took two functions
  from 19 and 6 diffs to MATCH.
- Splitting a compound float expression into two statements changes FP
  register assignment: `(a+b)*c` vs `t = a+b; t = t*c;` gave 6 diffs vs 1.
- UNUSED SCALAR LOCALS DECLARED FIRST take the highest stack slots and push
  the compiler's spill temps down. One function needed exactly 3 dead s32s,
  another exactly 2. This is the lever for frame-size and spill-offset
  diffs, and it is directional: each one grows the frame by 8.
- Swapping the operands of a comparison against a call result (`*p != f()`
  vs `f() != *p`) changes which spill slot is used.
- Removing a pointer local (inlining it) can flip integer register
  allocation. Conversely an explicit `f32 *p = &x->field;` is REQUIRED where
  the ROM materialises base+offset in a register -- IDO otherwise folds the
  offset into every access.

## The two rodata models -- do not mix them up

    migrated    `.rodata, seg/file` in the yaml
                -> write LITERALS; the C file emits the block
    unmigrated  `rodata` or `data` asm subsegment
                -> reference EXTERN symbols

ovl2 is migrated; ovl16/ovl17 are not. Using the extern form on a migrated
TU produces `undefined reference to D_8012...` at LINK time -- and because
an unresolvable symbol makes verify.py skip its relocation check, every
affected function still reports MATCH. That combination put an unlinkable
tree into history once already.

## verify.py is not proof the ROM is right

It compiles ONE OBJECT and never links. It cannot see: undefined symbols,
translation units that came out short, segment growth from duplicated
rodata, or any function whose .s listing has been deleted (reported as
"unverifiable", which does not affect the 0-diff line). Before committing:
run the full build, confirm build/kirby.us.elf actually exists, and compare
the linked segment bytes against the base ROM. A green verify.py with a
broken link is a state this project has reached more than once.

## Hazard: a background splat run regenerates asm/nonmatchings

It deletes the .s for any function currently written in C and briefly leaves
directories empty (verify.py then fails with "Cannot open file GLOBAL_ASM").
A listing you have un-guarded can be PERMANENTLY LOST if the regen lands in
that window. Keep a backup of asm/nonmatchings before un-guarding anything.

## The constant-reference lever is exhausted; what is left is real work

Where a converted function writes a float literal but the ROM references a
named symbol, naming the symbol instead sometimes fixes it. It worked for
ovl11 (7) and ovl14 (3). It does NOT work anywhere else, and the reason is
structural, not a bug to be fixed:

  an `extern f32` is a memory operand IDO reloads at each use, while a
  literal is CSE'd into a register. Where the ROM shares one load, the
  extern form emits extra ones and the TU comes out 16 bytes LONGER.

Measured on every remaining candidate: ovl13/code_1F3160 +16, ovl17/ovl17
+16, ovl17/ovl17_2 +16, ovl16/ovl16 fails to compile. So the residual rodata
oversize in ovl13/15/16/17/18 needs per-function decompilation that makes IDO
share the load the way the ROM does -- it is not a symbol swap.

### Gate cheaply, in this order

1. compile the ONE object
2. check_tu_size.py -- if the TU changed size, revert NOW. No relink needed,
   and a size change means every later function in the segment has shifted,
   so a ground-truth run would report dozens of "REAL defects" that are all
   one cause. This is seconds instead of minutes and it localises correctly.
3. only then relink and run verify_rom.py

Skipping step 2 cost three full relinks reporting 36, 96 and 63 defects that
were a single 16-64 byte shift each.

### One file per relink

Applying several files and checking once cannot attribute the failure. Three
files at once gave 13 defects with no way to tell which file caused them;
one file per relink found it immediately. This has cost work twice.

## Look for EXISTING SOURCE before decompiling anything

This has out-yielded every other technique. Check, in order:

  src.old/<seg>/            an older split of this same game. src.old/ovl9/
                            maps 1:1 onto four of the new ovl9 TUs and gave
                            68 functions, nearly all first-compile. Its TU
                            boundaries sit 8 bytes earlier and every callee
                            has been renamed -- take symbol names from the
                            LISTING, not from the old source.
  libreultra/src/           the real libultra/n_audio sources are in-tree.
                            libnaudio/*.c ports near-verbatim.
  /workspace/vetritheretri/ssb-decomp-re   same HAL engine
  /workspace/ethteck/pokemonsnap           same HAL engine

## Type-split constants (needed constantly in ovl9)

`arr[i] = 1;` next to `if (other[i] == 1)` makes IDO CSE both into one
register; the ROM often keeps two. Fork it with a type-split store:
    *(u32 *) &gEntityFuncListIDArray[i] = 1;
    D_800E9AA0[i].as_u32 = 1;
Closed 6 functions in ovl9 alone, and took another from 76 diffs to 13.

## Line-number sensitivity is a LEVER, not only a hazard

Two ovl9 functions differed only in the scheduling order of two `li`
constants; collapsing an if/else onto ONE PHYSICAL LINE fixed both. Those
one-liners are load-bearing -- do not reformat them.

## Argument passing, read from the delay slot

  `sw $a0` IN the jal delay slot   -> callee takes NO arguments (the store is
                                      the parameter home slot filling the slot)
  `sw $a0` before the call, `nop`  -> the argument IS passed
This distinguishes `f()` from `f(arg0)` reliably.

## Caveats on rules already in this guide

- "IDO reverses the outermost float +" is NOT universal. It holds for `a + b`
  where one side is an array load, but a 3-term sum of squares needed the
  natural left-to-right form. Try both.
- The extern-vs-literal rodata rule is PER FUNCTION, not per file. Measured
  per file, one bad function inflates the TU and makes the whole approach look
  broken. 27 of 33 constants across five segments took the plain extern.
  Constant used once -> plain extern. Used several times -> a local f32
  assigned IMMEDIATELY BEFORE FIRST USE, after any intervening call;
  initialising at the declaration moves the load to function entry and changes
  frame size (one function: 68 diffs at the declaration, 0 when moved).
- IDO assigns FP registers strictly in order of first ASSIGNMENT. Declaration
  order has no effect (verified across all 6 permutations of one function).

## A listing can span TWO functions

If there is no symbol at the second function's address, splat merges it into
the previous listing. asm/nonmatchings/ovl4/ovl4_4/func_80158120_ovl4.s is
0x70 and contains func_80158120 (26 instructions) PLUS the empty
func_80158188 (2). So "verify.py says N instructions short" can mean the
listing covers more than one function -- check before restoring a pragma.
check_layout.py is the arbiter.

## m2c is a reading aid, not an automation target

A generate->apply->verify->revert driver over 33 ovl9 pragmas produced ZERO
matches (union/struct type inference failures, then register allocation).
Hand-decompiling from the listing was ~10x more productive.

## The frame-layout anomaly, now measured

Symptom: the function is instruction-for-instruction correct but every stack
offset is shifted, and adding or removing locals moves the whole block instead
of closing the gap.

Measured form (from ovl14, matching earlier reports in ovl11 and ovl17):

    IDO:  frame = align8(0x1C + sizeof(locals))
    ROM:  frame = align8(0x18 + sizeof(locals))

IDO reserves 4 bytes below the local block that the ROM does not. Swept the
local size from 0x18 to 0x30, tried u8[] and s32[] locals and a leading dummy
scalar -- the offset moves wholesale and never closes. Four separate agents
have failed on this. Do NOT spend time on a function showing this signature;
guard it and move on.

Affected and confirmed: func_801DEC34_ovl14, func_801DECAC_ovl14,
func_801E14B0_ovl17, func_801DD1CC_ovl11, func_8010DF9C (ovl2_7),
func_801A56C8_ovl7.

## Two scheduling idioms

1. Where the ROM computes a global's address into a register and stores
   through it but `f32 *p = &arr[i]` fails, try a redundant read FIRST:
       tmp = arr[i];
       p   = &arr[i];
   The redundant read is what makes IDO hoist the caller's spilled argument
   early. Took func_8021E4B0_ovl19 from 13 diffs to MATCH.
2. Statement order inside a struct initialisation is load-bearing even when
   the emitted store order is unchanged. Write it in DEPENDENCY order, not
   field order -- the scheduler sinks the dependent store and slots the
   constant store into the gap. func_802222F0_ovl19: 16 diffs -> 0.

## A prototype can be deliberately "wrong" to force a move

If the ROM has `or $a0, $vN, $zero` before a call but IDO coalesces the value
straight into $a0 so the move disappears, declaring the callee to take a
POINTER (and casting at the call site) reproduces the move. Declarations are
per-TU here, so this does not affect other callers -- ovl8/eneeff.c declares
func_800A9EA4(void *) while ovl11/ovl14 declare it (s32). A/B the whole object
before keeping such a change, and comment it as load-bearing.


## Padding detector: use the LAST .size, and beware jump tables

The awk one-liner earlier in this guide is wrong twice over. It anchors on the
first `.size`, and in a listing that carries a jump table it also trips on
`.size jtbl_...`, so it flags nearly everything. Use:

    python3 - <<EOF
    import re
    t = open('asm/nonmatchings/<seg>/<tu>/<fn>.s').read()
    i = t.rfind('\n.size ')
    tail = t[i+1:]; tail = tail[tail.find('\n')+1:]
    print(len(re.findall(r'^\s*/\*.*\*/\s*\S', tail, re.M)), 'padding words')
    EOF

Anything > 0 can NEVER be C. Some of these currently verify as MATCH -- that
is the trap: the loss only shows up as drift once a C function follows them.

## IDO -O3 WORKS, and it is the answer for main/libn_audio*.c

**This section previously said the opposite and it was wrong.** It claimed
driving the phases by hand at -O3 produced output byte-identical to -O2, on the
reasoning that IDO's optimisation work lives in ujoin/umerge rather than uopt.
The first half of that reasoning is right -- `cc -O3` does fail only because
`ujoin` is missing from tools/ido-7.1recomp -- but the conclusion does not
follow: `uopt -O3` optimises differently regardless of inlining. Measured on
src/ovl6/ovl6.c, -O2 and -O3 give the same .text size and 14 different
instructions.

That error is why main's easy tier produced nothing across seven waves. n_audio
was built at -O3, so those TUs CANNOT match at -O2 however good the source is.

Use `tools/decomp/cc_o3.py`. It asks the real driver with `-show` what it would
run, then runs those four phases directly with -O2 rewritten to -O3, so ujoin
is never invoked. With verify.py:

    VERIFY_CC="python3 tools/decomp/cc_o3.py" python3 tools/decomp/verify.py <file> --all

Evidence it is strictly better in the audio TUs, not a trade:

* `__alCSeqNextDelta` (90 instructions, plain upstream
  libreultra/src/audio/cseq.c): **54 diffs at -O2, 0 at -O3**.
* `alCSPSetSeq`, `alCSPSetVol`, `func_8002CEC0`: upstream source is 0 diffs at
  -O3; at -O2 each gains a spurious `sw $a0, home($sp)`.
* Regression check: src/main/libn_audio_2.c gives **22 match / 0 diff at both**
  -O2 and -O3, so switching level breaks nothing already matched.

The IPA limit is real but much narrower than the old note implied. Genuinely
IPA-dependent functions still cannot match -- `__alSeqNextDelta` keeps
seq/pDeltaTicks/savedPtr live in $a2/$t0/$a3 ACROSS a jal -- but the
optimisation LEVEL, not inlining, is what blocks most of them.

## Benign padding IS a blocker inside the libn_audio TUs

The corrected padding rule (a tail under 4 nops is regenerated by .text's
16-byte alignment) holds generally, and `padtrap` is right that these are not
permanent traps. But "benign-pad is not a blocker" is only true where nothing
16-byte-aligned follows.

In build/libn_audio.a every function was its own object, so every one of them
is 16-byte aligned in the ROM and the trailing zero words are INTER-OBJECT
alignment -- which IDO does not reproduce between functions inside one TU.
Five conversions in libn_audio_2.c all reported MATCH while check_tu_size came
back -32 and check_layout -40 (alCSPSetSeq -12, n_alSynSetPitch -8,
func_8002CEC0 -12, alCSPSetVol -4, n_alSynDelete -4).

`check_tu_size.py` is the arbiter, per function, and it is cheap. Run it after
every conversion in that region.

## The one-slot temp-register rotation

Structurally perfect function, but every temp register is rotated by exactly
one slot (ROM uses t7/t8/t9, you get t6/t7/t8; or the ROM reuses a free $a1
where you take a $t). This means the original source created ONE MORE
source-level temporary than your C does.

Proven fixable: a chained assignment (`a = b = 0;`) forks the extra temp and
closed func_800BB08C. Swept without effect: declaration order and count,
casts, `<<2` vs `*4`, extra parameters, statement order, block scoping,
-Olimit, -Wo,-loopunroll, -O3.

## Drafts are guarded with EITHER MIPS_TO_C or NON_MATCHING

A scanner that only knows `#ifdef MIPS_TO_C` silently skips real near-misses.
Two functions that turned out to match were sitting under `#ifdef
NON_MATCHING`. Search for both.

## Jump tables block conversion in ovl3/ovl4 (and anywhere rodata is unmigrated)

kirby.ld places `.rodata` only for the MIGRATED files. Any C `switch` big
enough to make IDO emit a `jtbl_*` produces an ORPHAN `.rodata` section in a
segment whose rodata is still an unmigrated asm block. 30 of ovl3/ovl4's
remaining pragmas have `jlabel` in their listing -- do not convert those until
the yaml rodata is migrated.

Float literals are fine: IDO emits lui+mtc1 for any float whose low 16 bits
are zero, so 2.0f / 50.0f / 3.5f / 60.0f cost no rodata at all. Check with
`objdump -h` rather than assuming.

A switch over 2-4 cases emits a COMPARE CHAIN, not a jump table, so it is safe
-- and it is often the only form that yields `beq`+`beq` where if/else gives
`bne`. One function went 51 diffs -> MATCH on that change alone.

## Symbols that look usable but are not

**This section previously claimed `D_8012E944` links at 0x8012e8f4. It does
not** -- build/kirby.us.map and the ELF both put it at 0x8012e944, exactly
where its name says, and it is in tools/symbol_addrs.txt. Anyone who took that
claim at face value would have gone looking for the wrong problem.

The real blocker for func_8015439C_ovl3, func_80154428_ovl3, func_8015449C_ovl3,
func_80154578_ovl3 and func_80152348_ovl3 is the folding one: the ROM
materialises `%hi/%lo(D_8012E944 + 0x4)` as an address that is then
DEREFERENCED, and IDO folds the +4 into every store displacement instead. Both
`&gKirbyState._184.unk4` and `(f32 *) &D_8012E944[4]` give 39/52.

That is the exact shape datatodo.txt exists to fix, so
`D_8012E948 = 0x8012E948;` has been added there -- it allocates nothing, cannot
move a byte, and was verified not to change the ROM. The five functions above
are now unblocked and want a separate named extern rather than an offset
expression. NONE of them has been converted yet, so this is a lead, not a
result.

By contrast `D_8012E7E8` and `D_8012E860` DO link exactly at gKirbyState+0x28
and +0xA0, and `*(s32 *)((u8 *) &D_8012E7E8 + 8) = 0;` is what the ROM wants
where the listing says `%lo(D_8012E7E8 + 0x8)`. Always check the MAP before
concluding a symbol is missing.

## More levers

- Type-split ZERO: where the ROM has two separate `mtc1 $zero`, one is an int
  0 and one a 0.0f -- write `arr[i] = 0;` for one. Took two functions from 31
  and 61 diffs to MATCH. Where the ROM SHARES one `mtc1 $zero`, both must be
  0.0f.
- `goto` into a following label reproduces block ordering no if/else shape
  can: `if (c) goto ret7; return 6; ret7: return 7;`. Nested ifs duplicate the
  return block; `&&` orders the blocks wrongly.
- `s16 sp[2]` where only [0] is used places the short in the LOW half of its
  word (0x24 vs 0x26) -- same lever as the `f32 sp[4]` trick.
- A struct copy from an extern reproduces a local array initializer WITHOUT
  emitting rodata: wrap the data symbol in a typedef and write
  `Foo sp0 = D_8015A358_ovl4;`. Three functions matched first try on this.

## Measuring ground truth while agents are running

You cannot. verify_rom compares the linked ROM to the base ROM, and agents
write source files during the build, so by the time it runs the ELF is already
stale. It will refuse rather than report -- believe the refusal. Numbers taken
mid-flight have been wrong by over a thousand functions in both directions.
Measure when the fleet is idle, or gate per-file with checkpoint.py.

## A local array initializer can emit .data and shift the segment

Several ovl5 clone families copy a local array initializer out of a named data
symbol (D_80185FF8_ovl5, D_801881DC_ovl5). Writing that initializer in C makes
IDO emit its own .data blob into a TU whose `data` subsegment is still
unmigrated asm. verify.py sees nothing; the segment grows; the ROM breaks.

Same family as the rodata rule, different section. tools/decomp/check_sections.py
now checks BOTH .rodata and .data, and flags any file that emits a section for
which it has no migrated subsegment at all.

## Unnamed empty functions merged into a neighbour's listing

ovl5_2's func_80160A20 and func_801613C0 each end with an extra dead
`jr $ra; nop` past the natural epilogue -- an unnamed 8-byte function that
splat could not split out because there is no symbol at that address.
Converting either shortens the TU by 8 bytes.

Note the post-.size padding detector does NOT catch these: the words are
BEFORE .size, inside the listing proper. Same shape as ovl4's func_80158120
(0x70 listing containing the empty func_80158188) and ovl4's func_801555AC.
If a function is a couple of instructions short and its listing ends with two
`jr $ra` pairs, this is why.

## More IDO idioms

- IDO range-propagates from an ABS() ternary and drops the signed-% correction.
  Assign the modulo to its own variable (`s32 r = temp % 8; if (r)`) to defeat
  it. 10 diffs -> MATCH, and nothing else worked.
- `(u16)x` and `x & 0xFFFF` are NOT interchangeable: only the cast produces the
  spill-reload (`sw` / `lw $v1` / `andi $a0,$v1`) around a call.
- Union copies: .as_s32/.as_u32/.as_ptr all match; plain union assignment and
  .as_f32 schedule their stores differently.
- Chained `a = b = expr;` versus two statements with a repeated RHS controls FP
  register REUSE: the ROM reuses $f0 for every group where separate statements
  allocate $f0/$f2/$f12/$f14.

## u8 promotes UNSIGNED in IDO (K&R rules)

`tmp->unk3C < 7.0f` on a `u8` field emits the full u32->float conversion with
the 0x4F800000 fixup; copying the same value into an `s32` first gives a plain
`cvt.s.w`. If the listing has that fixup, the source read the u8 directly.
Closed a 172-instruction function on the first try.

## sw $a0, refined

  `sw $a0` IN the jal delay slot      -> callee takes NO arguments
  `sw $a0` before the call + nop      -> the argument IS passed
  NO `sw $a0` anywhere, and the jal's
  delay slot does not touch $a0       -> the function takes the argument and
                                         passes it straight through, with no
                                         move at all

Several functions already matching as `(void)` had to become
`(struct GObj *arg0)` for the third case.

## Dead scalar locals: multiplicity matters

One dummy local is usually optimised away; two or three are not. A frame of
0x28 with a spill at 0x1C came from `s32 unused0; s32 unused1; T real; s32
unused2;`. Declaration order is highest-slot-first.

## v0/v1 swap on a pointer+value pair has two OPPOSITE cures

  ROM has v1=pointer, v0=value -> DROP the pointer local, index the array
                                  directly in every arm
  ROM has v0=pointer, v1=value -> INTRODUCE `s32 *p = &...`

Both shapes occur in ovl9. Read which register holds which before trying
either.

## Float arguments must be prototyped

A K&R declaration default-promotes to double: `func(..., f32)` gives
`addiu $a3, $zero, 0` where the unprototyped form gives 22 diffs. Conversely,
a trailing `0` argument that must be `addiu` rather than `move` tells you that
parameter is `f32` and the literal is `0.0f`.

## INTEGER declaration order controls $v0/$v1 (the most reused lever found)

Unlike FP -- where only order of first ASSIGNMENT matters -- the first-declared
integer local takes $v0 and the second takes $v1. Where the ROM puts a pointer
in $v1 and a loaded field in $v0, declare a variable for the FIELD first.

Closed three functions at 13 diffs each in one session and is the first thing
to try on any pure v0/v1 swap. It also supersedes half of the "two opposite
cures" note above: try declaration order BEFORE adding or removing a pointer
local.

## More strength-reduction and argument-type tells

- `x * 2.0f` is strength-reduced to `add.s`. `x * 2` with an INTEGER literal
  (and `(f32)2`) keeps `mul.s`.
- A `0.0f` argument landing in an integer register emits `addiu $aN, $zero, 0`,
  not `move $aN, $zero`. So addiu-vs-move on a zero argument tells you that
  parameter is `f32`.
- Type-split applies to compare-vs-store of the SAME constant:
  `if (a[i] == 1) b[i] = 1;` CSEs both 1s into one register, while the ROM
  often keeps $at for the compare and a separate register for the store.
  `*(u32 *) &b[i] = 1;` forks them.

## Loop form controls whether the bound gets a saved register

`do { ... i++; } while (i != N);` promotes the loop bound into a saved
register; `for (i = 0; i != N; i++)` does not. And if a `switch` in the same
function also tests N, the loop counter must be a DIFFERENT type (`u32 i`) or
IDO CSEs the two constants. Both were needed on one function to go 103 -> 11.

## Where the ROM hoists a constant into a callee-saved $f2x across a call

An `extern f32` reference cannot be hoisted that way. Assign it to a local
`f32` IMMEDIATELY BEFORE THE LOOP instead. Took one function from 215 diffs
to 4.

## verify_rom's "reloc" bucket is not a safe place to ignore

A difference confined to an instruction's low 16 bits is a relocation
immediate ONLY if the instruction carries a relocation. A load/store based on
$sp does not -- its immediate is a STACK OFFSET, and a wrong one is a real
defect. The classifier used to lump those in with "reloc", which let a
2-instruction spill-slot diff sit in the tree looking clean until an agent
found it by hand. Fixed: $sp-based load/store and `addiu $sp` immediates now
classify as REAL.

## A double 0.0 store forks the zero constant

Where the ROM materialises `mtc1 $zero,$f14` for a store AND `mtc1 $zero,$f12`
for an ABSF compare, writing `arr[i] = 0.0f` CSEs them into one register.
Writing `arr[i] = 0.0;` (DOUBLE literal) emits two. Closed four functions that
were 6-78 diffs off.

## Prototype presence controls the argument-register move

`f(sub->unk4)` with a `void f(s32)` prototype forces `lw $vN` + `move $a0`;
with NO prototype (`void f();`) IDO loads straight into $a0. The reverse case
needs the prototype ADDED to force the move. Per-TU knob; closed four
functions.

## A single leading `s32 pad;` shifts the local block by 4, not 8

Where the ROM leaves a 4-byte hole at the TOP of the local block, one
first-declared dummy scalar reproduces it. Note clone twins of the same
function often need none -- check each.

## Strings in a migrated-rodata TU must be LITERALS

`extern const char D_8012893C[]` in a TU whose rodata is migrated references a
symbol nothing defines, and the strings the pragma listings used to supply
vanish with the pragma -- shrinking the block and the whole segment. This is
what took ovl2_4.c from 0xB0 to 0x30 and shifted the back half of the ROM.
Write the literal, and convert all users so they land in source order.

## Correction: declaration order is not the whole $v0/$v1 story

The rule "first-declared integer local takes $v0" is real but incomplete. On
func_802187C0_ovl9 (25 diffs) reordering did nothing -- the cure was DELETING
both locals (`s32 *p`, `s32 temp`) and indexing inline. The locals were
squatting on $v0/$v1, which the ROM reserves for the omCurrentObj value and
the objId<<2 temp.

So the ladder on a v0/v1 mismatch is: reorder the declarations, then REMOVE
them, then add one. All three appear in ovl9.

## `tmp = D_800E1B50[objId]` must be the declaration INITIALIZER

IDO's CSE window shares the FIRST `omCurrentObj->objId` read between the two
adjacent statements. Writing the assignment as the second statement makes it
share reads 2 and 3 instead of 1 and 2, and the whole function shifts. Two
functions went 24->0 and 23->0 on this alone. One function needed the
opposite, which was visible from the `lui` order in its listing.

## A prototype can HURT as well as help

Adding `extern void f(f32);` for a float-argument callee is mandatory -- one
missing prototype inserted a `cvt.d.s` and offset an entire function by 48
diffs. But REMOVING `extern void play_sound(s32);` was what closed another
function: it let IDO load the argument straight into $a0 instead of `lw $v0` +
`move`. Prototypes are a per-TU knob in both directions; constant-argument
callers are unaffected either way.

## Not every Vector local is a Vector

func_801FD080_ovl9 needed `Vector sp20` rewritten as `f32 sp20[3]` with a
leading `s32 unused;` to place the array at 0x20, the ABS ternary written as
the ABSF() macro inline in the `if`, and `sp20[1] = 0.0;` as a DOUBLE literal
to fork the second `mtc1 $zero`. Three separate levers on one function; its
clone needed the identical treatment.

## IDO -O2 FULLY UNROLLS small constant-trip loops (no flag needed)

The highest-yield discovery of the session, and it inverts an assumption that
had been costing matches all day.

Straight-line code in a listing is often a LOOP in the source, not unrolled C.
Signatures:
  - four separate `lui %hi(SYM+0x10)` absolute accesses in a row
  - a 4x-unrolled byte scan ending in a pointer compare against a named
    end symbol
  - per-copy temp registers stepping t6/t7/t8/t9 that no straight-line C
    reproduces

`for (i = 0; i < 20; i++) if (arr[i] == 0) return 0;` matched a 30-instruction
4x-unrolled listing EXACTLY. Hand-unrolling the same logic gave 107/109 diffs.

A 3-instruction remainder loop BEFORE a 4x-unrolled body is IDO's `n % 4`
prologue -- again, write the plain loop.

## Other levers from the same pass

- `arr[i * 2]` on an `s32[]` costs one more IDO temp than `arr[i].unk0` on an
  8-byte struct. Redeclaring the array as a 2-word struct array took a
  one-slot temp rotation from 16 diffs to MATCH -- so that signature is not
  always immovable.
- `switch` BODY layout order follows source case order while the compare chain
  stays sorted numerically. One function needed its cases written 0,1,3,2.
- IDO folds `x = f(); ... x - 1;`, but NOT a read-back of a just-stored
  global. Where the ROM computes `addiu $t2, $v1, -1` from a value it just
  stored, the source re-reads the array element.
- `return 1; return 0;` beats a `ret` local where the ROM has
  `or $v0,$zero,$zero` before the compares -- the local costs 8 frame bytes
  and a spill.

## Correction: the frame anomaly is NOT always unfixable

This guide told agents to stop on sight. func_800AAF34 was closed by REMOVING
user locals: three gave frame 0x30, two gave 0x28, ONE gave an exact match,
and any dead or padding local of any type re-grew it. Sweep DOWNWARD in local
count before giving up. Some cases (func_80166C68_ovl5, 2 diffs) really are
immovable, but do the downward sweep first.

## The ROM sha1 is now the gate

`make` reaching `build/kirby.us.z64: OK` proves the whole build byte-for-byte.
Run it before every commit. Every other tool here is now for LOCALISING a
break, not for catching one.

## The frame anomaly cuts BOTH ways

Earlier this guide said "sweep downward in local count". That is only half of
it. func_801E14B0_ovl17 was closed by ADDING a leading scalar local (`u32
temp_v0;` declared BEFORE the struct local), which moved sp30 -> sp2C: 6 diffs
-> 3, frame and every spill slot exact. func_800AAF34 was closed by REMOVING
locals. Sweep in BOTH directions before giving up.

## Hoisting omCurrentObj into a local forces it into $v0

This contradicts the standing rule "write omCurrentObj->objId inline at every
use". Both are real: use the inline form when the ROM re-reads the global, and
`struct GObj *obj = omCurrentObj;` when the ROM holds the pointer in $v0
across the body. func_801DC91C_ovl17 went 16 -> 6 diffs on that alone.

## IDO picks the LAST array written in a loop as the induction pointer

Measured directly: store order `D, G` gives induction on G; order `G, D` gives
induction on D. So the induction choice is controlled by store order and
NOTHING ELSE. Where the ROM writes an array first AND uses it as the
induction, no store order reproduces it -- that combination is unreachable.
(func_80227308_ovl18: the 4x-unrolled body is exact, the induction choice is
the wall.)

## An offset into a bss blob cannot always be spelled

Where the ROM has `lui/addiu %hi/%lo(SYM + 0x10)` -- materialising a full
ADDRESS -- and the target is inside a larger bss object, neither `SYM[4]` nor
`&SYM[4]` reproduces it: IDO folds the +0x10 into the store displacement in
both cases. Tried and failed on func_80159DE8_ovl4 (2/60 diffs, otherwise
exact). A real linkable symbol at that address is the only known fix, and that
needs splat to regenerate the data listings.

## The residue: a one-slot register-allocation offset (measured, not guessed)

A tree-wide census enumerated all 422 guarded drafts across 88 files
(searching BOTH `#ifdef MIPS_TO_C` and `#ifdef NON_MATCHING`) and measured
every one: 7 report MATCH but are padding traps, 68 sit at <= 25 diffs, 303
are raw m2c that does not compile. The ranked table is in the scratchpad as
scan/res_*.json.

Working ~15 of the 68 in depth found they are all ONE phenomenon: our compile
allocates exactly ONE REGISTER EARLIER IN ITS CLASS than the ROM does. It
appears in every register file:

  integer temps   t6/t7/t8 vs ROM t7/t8/t9
  argument regs   $a0 vs ROM $a1
  $v0/$v1         swapped between a pointer and a value
  FP              $f0/$f2 swapped between a constant and a value

Swept against this class with ZERO effect: integer and FP declaration order
and count; adding AND removing pointer locals; inlining vs temping
omCurrentObj->objId; chained assignment; ternary vs if/else; comparison
operand order; (void) vs K&R () vs adding a parameter; struct-pointer locals;
un-nesting nested calls; do{}while(0) block splitting; blank lines inside and
before the function. Line-number sensitivity does NOT affect this class, even
though it does affect spill slots.

Flags ruled out: -O2, -O2 -Wo,-loopunroll, -Wo,-loopunroll,0, -Olimit 1000 are
byte-identical; only -O1 differs and is wrong. The permuter does not find it
either (28,800 iterations stuck at base score on one function).

So: if a function's ONLY residue is a one-slot register offset, further source
permutation has poor expected value. Guard it and move on. The next real lever
is understanding why IDO's allocator skips a slot, not more permutations.

## The three "new" rules did NOT close anything on re-litigation

Honest record, so nobody repeats the exercise:
- Unrolled loops: the theory was right about shape but the drafts were ALREADY
  loops. func_800A84F0, func_8002C9FC and func_800AB680 contain no unrolled
  loop at all.
- Frame anomaly: measured exactly as IDO align8(locals+0x2C) vs ROM
  align8(locals+0x24). Each dead scalar moves the struct 4 bytes and every
  second one grows the frame 8, so the offset cycles 0x30/0x2C and NEVER
  reaches the ROM's 0x28. Not reachable by local count in either direction.
- `arr[i*2]` -> struct array: does not apply anywhere. No guarded near-miss in
  the tree indexes by i*2.

## NEVER dispatch a read-modify-restore harness in this tree

Sibling agents write src/ concurrently. A harness that edits a file and
restores it can revert another agent's work in the window between. Use a TEMP
COPY instead (scratchpad/jb_try.py does this correctly).

## Levers that closed functions in ovl5 (wave 4)

- UNROLLED LOOPS keep paying: 9 of 44 matches were straight-line listings that
  are plain 4-iteration loops in the source. One was a GUARDED 2-diff draft
  written as hand-unrolled ifs -- rewriting it as `for (i=0;i<4;i++)` matched
  instantly. Note this lever is function-specific: a tree-wide retry pass found
  it did NOT apply to several functions whose diffs merely looked similar.
  Read the listing for the actual unroll, do not assume from the diff shape.
- `(u32)` CASTS ON COMPARISONS fork a constant IDO would otherwise hoist into
  a saved register. One function compared and stored 0x29A six times; IDO
  parked it in $s0 (46 diffs). Casting only the COMPARISON operands to (u32),
  leaving the stores s32, gave the ROM's `addiu $at, $zero, 0x29A` per compare
  -> MATCH. Type-splitting the store did NOT work; the cast on the compare did.
- `if (!r)` KEEPS IDO's signed-% correction; `if (r == 0)` DELETES it. For
  `r = x % 8`, `r == 0` folds to `(x & 7) == 0` with no bgez/addiu fixup. A
  `switch (r)` with one case also folds; with several cases it forces the true
  modulo.
- `goto` INTO a shared return block placed inside a switch's case group, where
  `if (range) return 1;` duplicates the block (48 diffs).
- `((u16 *) omCurrentObj)[1]` produces `lhu $a0, 0x2($t0)`;
  `(u16) omCurrentObj->objId` gives `lw` + `andi`.
- Declaring an INTEGER THAT LIVES IN A SAVED REGISTER before a struct local
  moves the struct 4 bytes without growing the frame, where a leading `s32
  pad` grows it by 8.

## A second missing-symbol blocker, same class as D_800D71E8

func_80164DF0_ovl5 and func_80176530_ovl5 are fully decoded but end with four
stores to D_800D7178 + 0x58/0x5C/0x60/0x64 in `lui $at; sw reg, %lo(sym)($at)`
form. Proven by A/B compile that ONLY four separate named `extern s32` globals
produce it -- a struct member, an array with constant indices, and an absolute
`*(s32*)0x800D71D0` all CSE the base or use the wrong register class.
D_800D7178 is one 0x70-byte symbol in symbol_addrs.txt with no sub-symbols.

Together with func_80159DE8_ovl4 (needs 0x800D71F8/0x800D71FC), that is three
functions blocked purely on splitting bss blobs into named sub-symbols. This
needs splat to regenerate the data listings, which currently aborts on the
ovl3 rodata name collision (54 subsegment pairs need renaming).

## Concurrent builds can corrupt objects

A link failed with `bad reloc symbol index (0x80805 >= 0x254) for offset
0x8080808` -- a partially-written .o from a sibling agent compiling the same
file. Delete that object and its .asmproc.d and rebuild; it is not a real
defect.

## splat is RUNNABLE again, and rodata is now MIGRATED for six segments

The abort was a name collision: splat's rodata migration triggers whenever a
`rodata` subsegment shares its name with a `c` subsegment, and then demands
the dotted `.rodata` form. 54 such pairs existed across ovl3/4/5/7/9/10.
Renaming them to `<name>_rd` in kirby64.yaml makes splat run.

Consequences, all verified by a FULL CLEAN REBUILD to a byte-exact ROM:

  - kirby.ld now has `build/src/<seg>/<file>.o(.rodata)` input rules for those
    six segments -- 20 for ovl9 alone, 49 across the others.
  - THE JUMP-TABLE BAN IS LIFTED for ovl3/4/5/7/9/10. Previously any function
    needing a `switch` jump table had to stay a pragma because those segments
    emitted no .rodata and the linker had nowhere to put one. They now do.
    That was ~45 blocked functions (12 tagged JTBL in ovl9, ~30 in ovl3/ovl4,
    3 in ovl7).
  - Those segments are now MIGRATED, so the rodata model flips: write float
    constants as LITERALS there, not `extern f32`. The old advice applied to
    the unmigrated state and is now wrong for these six.

Re-running splat did NOT delete any listing (3838 before and after). The
earlier claim that splat destroys nonmatchings coverage was true of some past
invocation, not of this one -- but back up asm/ before running it anyway.

## Offsets inside a bss blob: use datatodo.txt, NOT splat

The "an offset into a bss blob cannot always be spelled" blocker is SOLVED, and
it never needed splat, symbol_addrs.txt or a yaml change.

`datatodo.txt` (repo root, git-TRACKED) is a plain linker script fed to ld via
`-T datatodo.txt` in the Makefile. Every line is an absolute symbol assignment:

    D_800D71F8 = 0x800D71F8;

That defines a real linkable symbol at an arbitrary address. It allocates
nothing, is in no section, and CANNOT move a byte -- the sha1 is unchanged.
`symbol_hacks.txt`, `funcstodo.txt` and `rcp_syms.txt` are the same mechanism.

So when a listing has `lui $at; sw $reg, %lo(SYM + 0x10)($at)` and SYM is a big
unnamed bss blob:

  1. add `D_<addr> = 0x<addr>;` to datatodo.txt for each referenced offset,
  2. declare `extern s32 D_<addr>;` in your TU and assign to it directly.

Separate named externs are the ONLY form that produces the absolute
`lui $at / sw %lo(sym)($at)` pair; struct members, constant array indices and
`*(s32 *) 0x800D71F8` all CSE the base or pick the wrong register class.

Closed with this, all three first-compile MATCH and the ROM still byte-exact:
  func_80159DE8_ovl4  (D_800D71F8, D_800D71FC)
  func_80164DF0_ovl5  (D_800D71D0/D4/D8/DC = D_800D7178 + 0x58..0x64)
  func_80176530_ovl5  (same four)

Caveat: do NOT also add the same name to tools/symbol_addrs.txt. splat would
then emit a `dlabel` for it in asm/data/<seg>/*.bss.s and the object definition
would collide with the linker-script assignment. datatodo.txt alone is enough,
and it leaves every existing listing textually unchanged, so no other agent's
in-flight function is disturbed.

## RETRACTION: "splat unblock lifts the jump-table ban" was WRONG

Renaming 54 colliding rodata subsegments to `<name>_rd` made splat runnable.
It did NOT migrate any rodata. After the change ovl3 and ovl9 still have ZERO
migrated subsegments.

What misled me: kirby.ld gained `build/src/<seg>/<file>.o(.rodata)` input
rules. Those rules are emitted for `c` subsegments regardless of migration,
and they sit BEFORE the asm rodata blobs at ovlN_RODATA_START -- so a C object
emitting anything there INSERTS bytes and shifts the segment. A converted
jump-table function also leaves the surviving asm blob referencing the
pragma's labels: `undefined reference to '.L8015xxxx_ovl4'`.

THE TEST for whether a jump table is legal in a TU is a DOTTED
`.rodata, <seg>/<file>` entry in kirby64.yaml for that exact file. Nothing
else. Migration also requires every user of the block to be in C already and
the asm blob to be deleted.

Cost of this error: two agents were sent at a seam that does not exist, and
two others broke the ROM link mid-session reaching the same wall
independently. Verify a claimed unblock by CONVERTING ONE FUNCTION and
checking check_sections.py plus the link, before briefing anyone on it.

## The padding trap, and the two false alarms it produced

A listing with words after its own `.size` carries the TU's alignment
padding. C cannot emit those, so converting the function shortens the TU and
shifts the segment -- while verify.py reports MATCH, because the function's
own instructions are all correct. The test lives in `tools/decomp/padtrap.py`
and is wired into both verify.py (refuses to report) and check_layout.py.

**The first version of this test was wrong in two ways, and both cost real
work.** It claimed 103 functions were permanently impossible. The true number
is 32. If you were briefed on the old figure, ignore it.

1. It anchored on the file's LAST `.size`. When a listing's only `.size`
   belongs to a leading `.late_rodata` block, that anchor sits before
   `.section .text` and the ENTIRE FUNCTION BODY reads as padding
   (`src/ovl2/ovl2_4.c func_800FD9D4`). The `.size` must name the function.

2. It flagged any tail at all. But `.text` is aligned to 16 bytes, and a nop
   is 0x00000000 -- exactly what the assembler's alignment zero-fill emits. A
   tail of 1-3 nops is put straight back by the alignment and dropping it
   changes nothing.

The 16-byte cutoff was measured, not assumed. Seven condemned ovl9 drafts were
un-guarded in one build: the six with 1-2 nop tails came back byte-exact, and
`func_80209698_ovl9` -- tail of FOUR nops -- came up exactly 16 bytes short. A
4-word tail means the function already ended on a 16-byte boundary, so that
block is deliberate and no `.align` will reproduce it.

**Rule: a tail is harmless iff it is all zero AND under 4 words.** Any
non-zero word, or a full 16-byte block, is the real trap.

Do not hand-roll this scan. Call `padtrap.classify(listing_path, func)`; it
returns `('trap'|'benign'|'clean', n_words)`. Of the pragmas remaining, 32 are
traps and 69 are benign tails that are ordinary decompilation work.

## K&R definitions solve the home-slot problem -- but only with 2+ parameters

If the only residue is a missing `sw $a0, 0xNN($sp)`, the function takes a
parameter -- but a prototyped `(s32 arg0)` breaks zero-argument call sites in
the same TU. Write it K&R:

    void f(arg0)
    s32 arg0;
    { ... }

and demote the forward declaration to `void f();`. That emits the home slot
AND keeps existing callers compiling. 9 diffs -> MATCH. Several agents have
now needed this in both directions (a function 1 instruction SHORT wants the
parameter, 1 instruction LONG wants `(void)`).

## A temp local's initializer is not the same as a following statement

    vol = (u32)(vol * ((a*b*c) >> 14)) >> 15;   -> 3 diffs
    t = a*b*c;      ... (t >> 14)               -> 2 diffs
    t = a*b*c; t = t >> 14;                     -> 10 diffs
    t = (a*b*c) >> 14;  vol = (u32)(vol*t) >> 15;  -> MATCH

Only the form with the shift FOLDED INTO the initializer gets both the mflo
destination and the multu operand order right.

## src.old files that look like goldmines are often m2c dumps

src.old/ovl13/ovl13.c has "definitions" for 29 of 30 pragmas and only 2
compile (`? *sp38;`, `temp_v0[23]` on an s32, undefined symbols). Spot-check
before budgeting time: src.old/ovl14/ovl14.c (19/21) and
src.old/ovl12/code_1EB520.c (16/18) are the same shape.


## THE FRAME ANOMALY: closed form and reachability test

This blocker has produced contradictory advice all session -- "stop on sight",
then "remove locals", then "add locals", then "sweep 1..9". All of those were
partial. The actual rule, measured:

    IDO:  frame = align8(base_IDO + L)
    ROM:  frame = align8(base_IDO - 4 + L)

where L is the total size of declared locals, packed at the TOP of the frame.
IDO's local-block base sits 4 bytes above the ROM's.

CONSEQUENCE -- the anomaly CANCELS exactly when

    L mod 8 == 4

and is UNREACHABLE otherwise. Adding or removing locals cycles the offset
between two values and never lands on the ROM's.

So before touching a function with this signature, compute L:
  - L mod 8 == 4  -> reachable; a leading dead scalar (or removing one) will
                     close it. Note the shift is 4 bytes, not 8.
  - otherwise     -> UNREACHABLE. Do not sweep. Guard it and move on.

Verified on the func_801EEED4 / func_801EEF4C / func_801EEE44_ovl10 triple:
EED4 has L = 0x24 (0x24 mod 8 == 4) and closed with one leading `s32 pad;`;
EEF4C and EEE44 have L = 0x20 and are unreachable by any local count. Also
consistent with func_800AAF34 (closed by removing), func_801E14B0_ovl17
(closed by adding) and func_8021992C_ovl9 (swept 0x14..0x24, never lands).

A 30-second arithmetic check replaces a nine-value sweep, and tells you in
advance which functions are worth attempting.

## A shared return-0 block means `||`, not two `if`s

`bc1t` to a common block followed by `bc1fl` to continue is the `||`
signature. Two separate `if (...) return 0;` produce `bc1fl` skips instead.
One function went 43/54 -> MATCH on that change alone, and the same shape then
gave two more first-compile, one of them 102 instructions.

# Wave 6 levers (ovl9 +53, ovl7 +18, ovl10 +10, all byte-exact)

The productive vein was straight-line entity setup/init: filter the listings
for `pad==0 && no jlabel && no 'rodata' in the .s && branch count <= 1`, read
the listing and write the segment idiom directly. 22 of 28 matched on the
FIRST compile. That filter still has unworked entries.

## Declaration order

**A pointer local declared FIRST reserves the top stack slot even when it only
ever lives in a register.** `func_801B00BC_ovl7` was 4/103 off purely because
`struct UnkStruct800E1B50 *temp` was declared before two address-taken locals;
moving it LAST closed it. This is the inverse of the "declare `ent` first"
rule and both are real -- `ent`-first is for CSE of `omCurrentObj->objId`,
`ent`-last is for stack layout when other locals have their address taken.

**`f32 *p = &arr[i]` is often the wrong lever.** Where the ROM re-materialises
the element address, the inline form plus a `struct UnkStruct800E1B50 *tmp =
D_800E1B50[objId];` initializer is what matches; the pointer local pushed
`func_80206038_ovl9` to 59 diffs while the inline form matched instantly. The
pointer local also makes IDO reload `omCurrentObj` after a store through it
(aliasing).

**The float CSE is separate from the objId CSE.** `func_801E2588_ovl9`
re-reads `omCurrentObj->objId` for every store but loads `D_800E6690[objId]`
once -- it needs an explicit `f32 temp;` even though the index is written
inline. 40 diffs -> MATCH.

## Constants and types

* **`x * (f32)0` keeps `mul.s`; `x * 0.0f` is const-folded to a zero store.**
* **`arr[i] = 0.0;` (double literal) forks the zero constant.** Confirmed
  again: `func_801B7EA8_ovl7` was 47 diffs off solely because one
  `angle.v.x = 0.0f` CSE'd with a shared `0.0f`.
* **`-1` into adjacent `u8`/`s8` fields must be type-split.** `tmp->unk38 = -1`
  on a `u8` emits `li 255`; the ROM shares one `-1` register with the `s8`
  neighbour. `*(s8 *)&tmp->unk38 = -1;` fixes it (28 diffs -> MATCH).
* **`ohSleep` takes `u8`** -- a bare `u8` local gives `lbu` with no `andi`.
* **Float args past the first two go in integer registers as raw bits.**
  `lui $a1, 0x41C8` before a call is `25.0f`, not an int. `func_802119F8_ovl9`
  went 44 diffs -> MATCH once the callee was prototyped `(ptr, f32)`.
* **`ABSF(f())` calls the function three times** -- three identical `jal`s
  around a `neg.s`/`mov.s` pair is the macro, not a loop.

## Control flow

* **`if (x == 0) {big} else {small}` puts the small block last.** Where the ROM
  branches forward to a two-instruction block, INVERT the condition rather
  than using `else if`. `func_801FC820_ovl9`: 58 diffs -> MATCH on that alone.
* **A ternary's arm order is visible from which constant is preloaded.**
* **A call whose result is compared AFTER an intervening call needs an
  explicit local.** Not `a && f() == 3` (that short-circuits); write
  `r = f(); if (a && r == 3)`.
* **`b = (a = expr) - k;`** is the shape when the ROM loads a value once,
  stores it, and stores a derived value. Two statements re-read the index and
  lose the CSE.

## Two ways a guarded draft can silently corrupt the TU

1. **A prototype hoisted out of a dead `#ifdef MIPS_TO_C` branch changes the
   whole TU.** Un-guarding a draft and moving its `void f(struct GObj *);`
   above the guard added +16 bytes to ovl9_7_2 by changing the argument-
   register moves of LATER, ALREADY-MATCHED functions. verify.py showed 0
   diff; only check_tu_size caught it. Keep a draft's declarations INSIDE the
   dead branch.

2. **A nested guard silently activates your C.** Wrapping a function already
   inside `#ifdef MIPS_TO_C … #else <pragma> #endif` gives an outer guard
   whose `#else` branch is your C -- the pragma never assembles. TU size and
   layout can both stay clean; only verify_rom.py sees it (reported as
   "pragma N bytes differ"). Check nesting after any automated guard insertion.

## verify.py reloc false positive

`%hi/%lo(SYM + N)` in the ROM vs IDO's `%hi(SYM)` plus an in-place addend
produces IDENTICAL linked words when the hi does not carry, but verify.py
reports a diff because objdump prints only the symbol name. Seen on
`func_801DBC00_ovl10` and `func_801BF220_ovl7`; the latter was applied anyway
and the ROM is byte-exact, which settles it. verify_rom.py is the arbiter.

## Confirmed floors -- do not re-litigate

**Argument/temp register rotation.** `func_801E6564_ovl10` and its three twins
(`6E84`/`8184`/`8AF8`, all 44 insns, 8 diffs, ROM `$a1` vs IDO `$a0`) survived
if/else, ternary, separate assignment, `!var`, two locals and a cast
parameter. `func_801DBC00_ovl10` and `func_801E932C_ovl10` are the same family.

**FP register assignment and load scheduling are coupled and cannot be
separated.** In `func_802114E4_ovl9` the variable assigned first gets both
`$f0` and the earlier load slot; the ROM pairs them oppositely, so no source
order reaches it. All six declaration orders swept.

**Any ovl7 listing containing `.section .late_rodata` is a trap** for a
different reason than padding: `D_801CE14C_ovl7` exists ONLY inside that
pragma's listing, not in `asm/data/ovl7/`, so converting the function removes
rodata the segment still needs. Exclude any listing containing the string
`rodata` unless the file has a migrated `.rodata` subsegment.

## Scanning drafts in src/main/libn_audio.c breaks the LINK, not the match

Un-guarding a `#ifdef MIPS_TO_C` draft is normally free: if it does not match
you guard it again and nothing is lost. In `src/main/libn_audio.c` it is not
free. Several drafts call symbols that live only in `build/libn_audio.a`, and
those archive members are garbage-collected unless something already references
them. Un-guarding `n_alSynNew` made the whole tree stop linking:

    `n_alFxPull' referenced in section `.text' of build/src/main/libn_audio.o:
    defined in discarded section `.text' of build/libn_audio.a(n_reverb.o)

A broken link is much worse than a broken function, because every other agent's
gate runs `make` and then verify_rom.py, and verify_rom REFUSES to report
against a stale ELF. One un-guarded draft therefore stalls everyone.

So: scan drafts in that file on a TEMP COPY, never in place. Everywhere else,
in-place is fine.

# Wave 7 levers

## The register-rotation "floor" is partly NOT a floor

Five waves recorded one-slot register rotation as unreachable, and this guide
said so. That was too strong.

**A callee prototyped with a NON-VOID return type reserves $v0 across the whole
caller, shifting every temp one register up.** Declaring
`s32 func_801E28C8_ovl10(s32);` instead of `void ...` took
`func_801DD674_ovl10` from 7 diffs to MATCH and closed `func_801DD2CC_ovl10`
(11 diffs, previously guarded) with no other change.
`s32 func_801A37B8_ovl7(void *, struct DObj *);` closed `func_801B44FC_ovl7`.

Try this FIRST on any pure $v0/$v1 or $tN+1 rotation in a function that
contains a call. It is a per-TU knob and cost nothing elsewhere -- `--all`
stayed at 0 diff in both files.

The rotation cases that remain floors are the ones with no suitable call:
`func_801E7760_ovl10`/`func_801EA900_ovl10` reach only `utilFuncTableJump`
(declared outside the segment) and a callee that already returns s32.

## Float operand order

**IDO reverses the operands of the outermost float `*` as well as `+`** -- but
only when BOTH sides are computed. `arr[i] * (ABSF(x) + 3.5f)` emits
`mul.s $f4, $f_sum, $f_array`; `arr[i] * 14.0f` stays in source order.

**In the outer float `+`, the FIRST source operand takes the HIGHER FP
register.** Read which operand the ROM loads first and write it second.
Confirmed in both directions on twins (`func_801DFDA0_ovl14` vs
`func_801E07F0_ovl14`).

**An integer literal and a float literal of the same value fork IDO's FP
constant; two literals of the same spelling CSE.** `((x * 2) + 2.0f) * 0.75f`
matched where `*2 +2`, `*(f32)2 +2` and `*2.0f +2` all shared one register.

## Statement shapes

**Chained assignment is the shape for "one load, N stores", and the chain reads
in REVERSE store order.** `A[i]=B[i]=C[i]=D[i]=E[i]=src[i];` emits stores
E,D,C,B,A. Took `func_801E0618_ovl14` from 94 diffs to MATCH. Not
interchangeable with separate statements when one of them is a genuine
read-back.

**A store through a struct pointer is an aliasing barrier**: it forces IDO to
re-load globals and to switch a global to the `lui/addiu` address form. When
the ROM keeps `omCurrentObj` in one register but your compile materialises
`&omCurrentObj`, look for a store through a local pointer sitting between two
global reads and sink it below them (`func_801F5C18_ovl9`, 48/48 -> MATCH).

**Splitting a call's float sub-expressions into named locals fixes load
scheduling that no operand reordering reaches.** `dx = ...; dz = ...;
atan2f(dx, dz)` matched where the inline form was 3/90 off in either direction.

**A hoisted mask constant in a saved register means the loop test is `&`, not
`>>`.** Writing the entry test and the loop test as explicitly different forms
matched `func_80204184_ovl9` (55/59 -> 0).

## Types

**`(u32)` cast on a u8 array compare.** `arr[i] < 6` on a `u8[]` emits SIGNED
`slti` in IDO; the ROM has `sltiu`. This qualifies the existing "u8 promotes
unsigned" note -- that holds for float conversion, not for integer relational
compares.

**A zero argument emitted as `addiu $aN, $zero, 0` proves that parameter is
`f32`**, even though it travels in an integer register.

**`Vector` passed BY VALUE occupies $a0/$a1/$a2** and reads back from the home
slots as `.x` at +0x00 and `.z` at +0x08.

**Changing only a callee's PROTOTYPE forks a shared constant.** `ohSleep(1)`
was 1 diff off until `void ohSleep(u8);` -- the argument then re-materialises
instead of sharing an `s32` constant register.

## Dead locals cut both ways

**Dead scalar locals are NOT eliminated when another local's address is taken,
and their position controls that local's offset.** `s32 pad0; s32 sp28;
s32 pad1;` put sp28 at exactly 0x28 (`func_801E040C_ovl9`). This is the
counter-case to "dummy locals get optimised away", which still holds where no
address-taken neighbour exists (`func_801DBC38_ovl9`).

Frame arithmetic, measured: `frame = align8(fixed + L)`, fixed = 0x18 for a
leaf-ish frame and 0x20 with an outgoing-argument area. A struct local's SIZE
is the knob for placing it; pad locals grow the frame instead of shifting it.

## Two tooling hazards that produce NESTED GUARDS

Both were hit independently by two agents, and both are invisible to most of
the gate.

1. Replacing a `#pragma GLOBAL_ASM(...)` line by string match can land your C
   INSIDE an existing `#ifdef MIPS_TO_C ... #else <pragma> #endif`, activating
   it. Guarding "the function" then wraps the OLD draft, leaving a nested guard
   whose active branch is your non-matching C.
2. Pragmas can be INDENTED, and guards can carry trailing comments
   (`#ifdef NON_MATCHING // awful`). A scanner anchored on `^#pragma` or on a
   bare `#ifdef NON_MATCHING\n` misses them and creates the same nesting.

check_tu_size and check_sections both stay at 0 for these. Only check_layout
caught it (drift -12 and -4), and verify_rom sees it as "pragma N bytes
differ". Audit `#if` depth after every automated guard insertion.

## A duplicate identical `extern` is a hard ERROR in IDO 7.1

Not a warning: `redeclaration of 'f'; Incompatible function return type`. Put
per-function prototypes at BLOCK scope inside the function body -- it avoids
collisions with later file-scope declarations and does not shift the line
numbers of already-matched neighbours.

Related: verify.py's compiler output is tail-truncated, so a hard `cfe: Error`
can be invisible. If verify.py returns nothing, compile the object directly
with `tools/ido-7.1recomp/cc`.

## ovl6 is not the cheap completion its count suggests

Its 9 remaining pragmas are not 9 easy functions: the only tractable entry
(`func_80154628_ovl6`, 26 instructions) sits at 20/27 on a pure scheduling
difference, and the other 8 are m2c drafts of 182-408 instructions that do not
compile. An earlier brief called it "the single best completion target in the
tree" on the count alone -- that was wrong.

## A sweep harness that keeps the best variant is how segments get displaced

Both segment-wide displacements in wave 7 came from this, and it cost hours of
diagnosis across three agents:

    src/ovl3/plyshot.c    +16 bytes  -> 228 functions in ovl3 looked broken
    src/ovl1/save_file.c  +48 bytes  -> 2952 spurious relocation diffs tree-wide

Neither was a wrong decompilation. Both were a sweep harness that tries N source
variants, scores them, and **leaves the best-scoring one in the file**. When
none of them reaches 0 diff, what stays behind is a live, un-guarded
non-matching function — and a non-matching function is usually the wrong
LENGTH, which displaces every symbol after it in the segment.

verify.py cannot see this. It reports MATCH for functions whose instructions
are individually correct, and the guilty function is simply "not matched yet".
verify_rom.py reports hundreds of REAL defects but attributes them to the
displaced functions, not the cause.

**Rule: after every sweep, re-guard the loser and run check_tu_size.py.** It
takes seconds and it is the only check that sees this class directly. If a
sweep leaves anything un-guarded, it must be because it reached 0.

The same mistake in a checkpoint commit captures the broken state: commit
76c1cc1 froze src/ovl1/ovl1_3.c with func_800A89E0 un-guarded and +8 bytes.

## Beware: files whose already-matched functions have no listing

`src/ovl1/ovl1.c` and `src/ovl1/ovl1_13.c` carry 22 and 29 functions that were
matched before this session and have no `.s` listing at all. verify.py reports
them "unverifiable" and cannot check them, so every edit in those files must
preserve the EXACT LINE COUNT of whatever block it replaces — IDO's register
allocation is line-number sensitive, and a shifted line silently changes
codegen in functions you never touched. verify_rom.py is the only check that
would notice.

## The ovl5 "level init" family is a free vein

Ten functions call `ohCreateCameraWrapper` and share one shape:
`gameSetUpdateRate(2.0f)` / camera / func_800AE048 / func_800AE0F0 /
func_800A6E64 / func_800A8724 / func_800A6BC0 / ... /
`D_800E98E0[request_track_3(...)] = k` / HS64_omMakeGObj /
utilSetRectColorFullScreen / utilSpawnRect.

Six matched on FIRST COMPILE, up to 168 instructions. The unlock is declaring
`void gameSetUpdateRate(f32);` plus `void func_800AAF34(s32, s32, f32);` and
`void func_800B2F54(s32, void *, f32);` in the TU — the trailing `0` argument
is `0.0f`, visible in the listing as `addiu $aN, $zero, 0` rather than `move`.

`func_80182B80_ovl5` (ovl5_12, 273 instructions) is the last unworked member.

## The best-value unsolved scheduling question in the tree

One IDO scheduling decision now blocks SEVEN functions with identical residue:
IDO hoists the `D_803D6900` induction bump to the top of a 4x-unrolled body,
the ROM keeps it before the last store.

Members: func_8017CC3C_ovl5, func_801822AC_ovl5, func_80185EEC_ovl5,
func_801802A8_ovl5, func_80182FE8_ovl5 (8 diffs each), plus func_800BDF2C
(ovl1_13, 4/35) and func_800AE048 (sprite, 4/39).

Anyone who works out the source form that moves that bump closes seven
functions at once. That is a better return than any single conversion left.

# The audio TUs, resolved

`-O3` is now wired into the ROM build for `src/main/libn_audio.c` and
`src/main/libn_audio_2.c`, and the ROM stays byte-exact. No `ujoin` shim was
needed: asm-processor accepts a multi-token compiler, so `cc_o3.py` drops in as
a per-object `CC` override. The override must sit AFTER the
`$(GLOBAL_ASM_O_FILES)` assignment -- for one target the last target-specific
assignment wins.

**`src/main/audio.c` must stay at -O2.** At -O3 its disassembly changes in 2578
places while the ROM is byte-exact at -O2. It is game code, not library code.

**IDO 5.3 is ruled out**, and it looked plausible: `libreultra/Makefile` builds
libnaudio with `tools/ido-5.3recomp` at `-mips2 -O3`, and four real
`libn_audio.a` members land immediately before this region. Measured on
libn_audio_2.c: 7.1 -O3 gives 22 match / 0 diff, 5.3 -O3 gives 17 / 5. 7.1 -O3
is correct.

## Proven IPA-blocked in the audio TUs -- do not re-litigate

No `ujoin` means no inlining and no custom calling conventions. These read
arguments from registers o32 cannot produce:

* `func_8002581C` (`__readVarLen`) takes its two arguments in **$t2/$t3**. That
  poisons every caller: `alCSeqNew`, `alCSeqNextEvent` (which additionally has
  `__alCSeqGetTrackEvent` fully inlined -- 190 words, one `jr $ra`) and
  `alCSeqNewMarker`.
* `func_80023B34` takes its argument in **$s1**, blocking `func_80023C48` and
  `func_80023D00`.
* `func_80026460` reads a pointer from `$a0` AND a float from `$f12`
  simultaneously.

## libn_audio.c: the workable pool is about a dozen, not 44

An earlier version of this section said "44 of 47 pragmas classify clean, the
vein is wide open", and that was repeated into an agent brief. The padding
claim is true and the conclusion does not follow: **the jump-table ban applies
here.** kirby64.yaml has no dotted `.rodata, main/libn_audio` -- its rodata is
`[0x41DC0, rodata, mainseg.1]`, unmigrated -- so any listing containing
`jlabel` cannot become C.

Nine remaining pragmas contain one, and they are the BIGGEST functions in the
two files: func_80024750 (1026 instructions), func_800285F8 (649),
func_8002B810 (525), func_80023E80 (490), func_8002901C (425), func_8002C044
(402), n_alEnvmixerPull (401), func_8002A508 (256), func_8002A290 (149).

With those, the 10 proven IPA-blocked, and the benign-pad set removed, the
genuinely open pool is about a dozen: Kirby's own note/channel management
around 0x80023794-0x80023D5C, plus alAudioFrame, n_alSynNew and func_800296C0.

`alAudioFrame` deserves its own note: `__n_nextSampleTime` is inlined TWICE
(loop init and loop increment) with no `jal`. Without ujoin the only route is
writing the helper body out by hand at both sites -- reachable in principle,
but a duplicate-the-block job rather than a transcription.

Seven functions across both files verify MATCH at -O3 and are blocked ONLY by
the inter-object 16-byte alignment described earlier: `alCSPSetSeq`,
`n_alSynSetPitch`, `func_8002CEC0`, `alCSPSetVol`, `n_alSynDelete`,
`n_alSynAddPlayer`, `n_alSynStopVoice`. They are one yaml TU-split away from
free.

## Levers from the audio work

1. **An inlined callee's parameter copy must be written as an explicit local.**
   Where the ROM has `or $a0, $s0, $zero` after a call and then uses `$a0` for
   one store and `$s0` for another, the original called a small function that
   ujoin inlined. `ln = dl;` and using `ln` through the inlined body took
   `func_80029888` from 20 diffs to MATCH.
2. **`else { x = x; }` reproduces the duplicated store in a `bc1fl` delay
   slot** -- the self-assignment has to be written explicitly.
3. **`(f32)(s32)(x & 0xFFFF)` and `(f32)(u16)x` differ**: the u16 cast emits the
   full u32-to-float fixup (`bgez` + 0x4F800000); mask-then-s32 gives a plain
   `cvt.s.w`.
4. **`x / (f32)65536` keeps `div.s`**; `65536.0f` strength-reduces.
5. **Safe draft scanning in libn_audio.c**: replace every OTHER
   `#pragma GLOBAL_ASM` line with a BLANK line, preserving the line count since
   IDO is line-number sensitive. verify.py then compiles the file directly
   rather than through asm-processor, which sidesteps the `libn_audio.a`
   garbage-collection link trap entirely, and is faster.

## verify.py no longer writes into build/

It used to put its object at `build/<cfile>.o`, which is where make expects
one. Running it with a non-default compiler therefore poisoned the next build:
an -O3 `audio.o` sat where make wanted -O2, make did not rebuild it (source
older than object), and the following link produced 33 phantom REAL DEFECT
lines across a file nobody had edited.

Objects now go to `build/verify/`. If you are using an older checkout, delete
the object or touch the .c after verifying at a non-build optimisation level.

## The rotation class cracks from BOTH sides

Wave 7 found that a NON-VOID return type on a callee reserves `$v0` and rotates
temps UP one slot. The inverse is also true and closes different functions:

**A `void` prototype for an IMPLICITLY-DECLARED callee frees `$v0` and rotates
temps DOWN one slot.** Adding `void func_800AA018(s32);` to
`src/ovl2/ovl2_10.c` closed BOTH `func_8011A2F4` and `func_8011A7A8` -- the two
13-diff functions this guide listed as confirmed ovl2 floors -- with no other
change and no effect on any other function in the TU. Both were `$v1`/`$a1`
where the ROM had `$v0`/`$v1`.

An implicitly-declared callee is `int f()` to IDO, so it reserves `$v0`;
declaring it `void` gives the register back. It MUST go at file scope: once an
earlier call has established the implicit `int f()`, a later block-scope `void`
declaration is a hard `redeclaration` error. So A/B the whole object.

Between the two directions, try both before calling any rotation a floor.

## datatodo.txt unblocking has a USE-COUNT threshold

`D_8012E948 = 0x8012E948;` was added to unblock five ovl3 functions. Three
matched first-compile with `extern f32 D_8012E948[]; f32 *dst = D_8012E948;`
-- so the mechanism is real. The other two did not, and the reason is worth
knowing before adding more lines:

**IDO folds a SINGLE-USE constant address into `lui $at; sw ..., %lo(sym)($at)`
and only materialises it into a register when it is used several times.** The
three that matched do 7-8 stores through the address. `func_80154428_ovl3` does
one, so no amount of symbol work reaches it -- reading the slot back forces a
second use and does materialise the address, but costs the reload (25/30).

So a datatodo line helps when the ROM materialises the address AND the function
uses it repeatedly. For a single use, the ROM's own form is the folded one and
the problem is elsewhere.

`D_800D6B58 = 0x800D6B58;` has been added on the same basis, for
`func_8011D40C` (ovl2/plylib.c), which is otherwise fully decoded: IDO CSEs the
base whenever two constant-offset accesses to one symbol exist, proved both
with `*(s32 *)((u8 *) &D_800D6B54 + 4)` and by redeclaring as an array (36/38
either way). Not yet converted -- a lead.

## More levers

**Reuse the PARAMETER as a scratch variable instead of declaring a local.** A
parameter's home slot sits ABOVE the frame, so it costs zero local-block bytes
and every spill slot moves up 4. `func_801634D4_ovl3` needed a 12-byte local
block while keeping four live values; `arg0 = 1; ... arr[arg0] ...` in place of
a declared `s32 idx` took it from 2/116 to MATCH.

Layout measured alongside it: `spill = local_block_base - 8`,
`base = frame_top - sizeof(locals)`, and EVERY named local gets a word when a
neighbour is address-taken. A nested `{ f32 temp; }` block does not escape
this.

**A byte bias on a pointer is not folded into the displacements.** Where the
ROM has a bare `addiu $vN, $vN, 0x20` before a run of stores, write
`f32 *p = (f32 *)((u8 *) base + 0x20);` and index from there.
`func_80116260` was 23/37 -- every instruction right, only that `addiu` missing
-- and went to MATCH. A `for` loop and a struct-array rewrite both made it
worse; the bias is the whole trick.

# The callee-return-type lever, consolidated

Three agents found this independently from three directions in one wave, and
between them it has closed at least eight functions that earlier waves recorded
as permanent floors. Treat the whole family as the FIRST thing to try on any
`$v0`/`$v1` or one-slot temp rotation in a function that contains a call.

IDO reserves `$v0` across a caller for any callee that returns a value. Which
way you need to move depends on what the callee is currently declared as:

**Declared `void`, need temps UP a slot** -> give it a non-void return type.
`s32 func_801E28C8_ovl10(s32);` closed `func_801DD674_ovl10` (7 diffs),
`func_801DD2CC_ovl10` (11, previously guarded) and `func_801B44FC_ovl7` (4).

**IMPLICITLY DECLARED, need temps DOWN a slot** -> declare it `void`. This is
the case that hides, because nothing in the source looks wrong: an
undeclared callee is `int f()` to IDO, so it silently reserves `$v0`.
`void func_800AA018(s32);` closed BOTH `func_8011A2F4` and `func_8011A7A8` in
ovl2_10.c -- two functions this guide had listed as confirmed floors.
`void play_sound(s32);` took `func_801EC598_ovl9` from 21 diffs to MATCH;
`play_sound` has no prototype anywhere in include/.

Placement matters and differs between the two: a `void` declaration for a
previously-implicit callee MUST be at file scope, because once an earlier call
has established the implicit `int f()`, a later block-scope declaration is a
hard `redeclaration` error. A/B the whole object either way -- `--all` on the
file stayed at 0 diff in every case above, so the knob is per-TU and cheap.

It does not always help: `func_801E06C0_ovl9` got WORSE with the s32-return
form (2 -> 4). Measure, do not assume.

## Pad locals above and below an address-taken struct are separate knobs

The guide previously described only leading pads. Measured on
`func_801D7140_ovl9`:

    Vector sp38;                        -> 0x34, frame 0x40
    s32 p0; Vector sp38;                -> 0x30, frame 0x40   (moves down)
    s32 p0; s32 p1; Vector sp38;        -> 0x34, frame 0x48   (frame grows)
    s32 p0; Vector sp38; s32 p1;        -> 0x38, frame 0x48   MATCH

A LEADING pad moves the struct down without growing the frame; a TRAILING pad
grows the frame without moving the struct. 5 diffs -> 0.

Related: a pointer local declared BEFORE an address-taken struct takes the
higher slot even when it lives in a register and is only spilled
(`func_801B726C_ovl7`, 11 -> 7). This complements the wave-6 "`ent`-last"
note -- the direction depends on whether the pointer is spilled or purely
register-resident.

## More levers

**Chained assignment fixes `$v0`/`$v1`, not only a shared load.**
`p->angle.v.x = p->angle.v.y = p->angle.v.z;` closed `func_801D2480_ovl9`
(55 diffs -> MATCH). Three separate statements re-loaded the field AND put the
value in the wrong `$v` register; the chain fixed both at once.

**Type-split store on a u8 array beside an s32 compare.**
`func_801E9AA0_ovl9` was 34/126 solely because `D_800E7880[i] = 1;` CSE'd its
constant with `D_800E8E60[i] == 1`. `*(s8 *) &D_800E7880[i] = 1;` matched.
Note the `(u32)`-on-the-compare cure from wave 4 did not compile here.

**A `(void *)` parameter change is safe to apply to a prototype shared with
already-matched functions**, as long as every call site in the TU is cast.
`func_8021217C_ovl9` needed `or $a0, $a1, $zero`; widening
`func_80111550(u32)` to `(void *)` and casting all three call sites closed it
and left the other two functions matching.

## Pre-existing nested guards exist in ovl9 -- and they are benign

`src/ovl9/ovl9_4.c:459`, `ovl9_7_2.c:898`, `ovl9_8.c:873`, `ovl9_9.c:984`,
`ovl9_14.c:345`, `ovl9_15.c:470` and `:484` contain
`#ifdef MIPS_TO_C ... #else <inner #ifdef MIPS_TO_C ... #else pragma #endif> #endif`.
Both branches resolve to the pragma, so the ROM is unaffected and there is
nothing to fix.

But a tool that un-guards "the first `#ifdef MIPS_TO_C`" will produce garbage
in those files. The wave-7 nesting warning applies to READING as well as
writing.

# Wave 9: the scheduling blocker, cracked

## `volatile` stops IDO hoisting an induction bump

This was recorded as "the best-value unsolved question in the tree" and it
blocked seven functions with identical residue. It is solved.

In the framebuffer-clear loop, casting BOTH stores to `vu16` makes IDO keep the
`addiu $v1, $v1, 8` before the last store, exactly where the ROM has it.
Without it IDO hoists the bump to the top of the 4x-unrolled body and rebases
all four displacements -- the 8-diff residue.

Proved on `func_8017CC3C_ovl5`, then applied verbatim to `func_801802A8_ovl5`,
`func_801822AC_ovl5`, `func_80182FE8_ovl5` and `func_80185EEC_ovl5` -- all
byte-exact. **`func_800BDF2C` (ovl1_13, 4/35) and `func_800AE048`
(ovl1/sprite, 4/39) are the same family and should close with the same two
casts.** They are unclaimed.

What was ruled out on the way, so nobody repeats it: `-Wo,-loopunroll` at 0/2/8/16
and `-Olimit` all make it worse or change the unroll; and source form is
completely inert -- do/while, for, `!=` vs `<`, pointer walk, hand-unrolling,
two induction variables, byte bias, nesting. The bump position is invariant to
everything except volatile.

The lever is NARROW. It did not move the analogous store/bump swap in
`func_801649CC_ovl5`, and it costs the whole loop there (25/26). It also did
not move load scheduling in `func_8018293C_ovl5`.

## More wave-9 levers

**Hoisting the FIRST call result of a `arr[f(...)] = k;` run into an explicit
local moves a shared constant one slot earlier.** `func_8017783C_ovl5` sat at
2/116 for a whole wave because `7` -- both the first store value and the loop
bound, CSE'd into `$s2` -- was materialised one instruction late.
`t = request_track_3(...); D_800E98E0[t] = 7;` for that one statement matched.

**`goto` into a TRAILING return block reproduces the ROM's redundant `b` to the
next instruction.** `func_80155F0C_ovl3`, 7/77 -> MATCH with
`if (...) { ...; goto ret0; } ... return 1; ret0: return 0;`. An explicit
`else`, a `ret` local and `goto` at the other end all failed.

**A callee's non-void return type also rotates ARGUMENT registers, not just
temps.** `func_801E8DD8_ovl16` had the array base in `$a1` where the ROM had
`$a2`; `s32 func_800A9864(s32,s32,s32);` instead of `void` matched it.

**A narrow parameter type can be honoured with casts at the call sites instead
of in the prototype.** `func_801EF3B0_ovl16` needs an `s32` second parameter,
but widening the prototype broke four already-matched callers. Keeping the
definition `s32` and writing `(s8) x` at all four call sites matched with zero
other functions changed. The K&R workaround (prototype `s8`, definition `s32`)
verifies but CC_CHECK rejects it -- do not use it.

**Chained assignment can fix a FRAME SIZE difference, not just a shared load.**
`func_801AF104_ovl7` was 67/105 with the frame 8 bytes short; the chained form
matched with no pad locals at all. The earlier note that it "needs 8 more bytes
of dead locals" was a symptom of an extra FP temp, not a separate problem.

**`tmp = tmp - k;` as its own statement vs `(tmp - k)` inside the return
expression decides whether IDO reuses the source FP register.** `func_80028080`
5/35 -> MATCH; the `ABSF()` macro form was worse.

## Drafts that do not compile under gcc must use MIPS_TO_C, never NON_MATCHING

`CC_CHECK` in the Makefile is `gcc -fsyntax-only ... -DNON_MATCHING`, so every
`#ifdef NON_MATCHING` draft has to compile under gcc. `libn_audio.c`'s
`func_80023990` draft referenced `KAudioMgr.unk38`, which does not exist; the
file sat committed and broken, surviving only because its object was never
rebuilt, and broke the ROM build for the whole fleet the moment anyone touched
that file.

`MIPS_TO_C` is not defined by CC_CHECK, so park non-compiling drafts there.

## Sweeping IN PLACE is visible to other agents' builds

The `+16` flagged on `src/ovl16/ovl16.c` mid-wave was neither a padding trap
nor a live non-match. It was a sibling agent's `mk.sh` compiling the file while
it transiently held a 3-instruction-longer sweep variant. The source on disk
always compiled to 0x142E0.

Sweep on a temp copy. A good pattern: compile the variant as `.ab_tmp.c`
BESIDE the real file -- GNU make's `wildcard` never matches leading-dot files,
so a concurrent `mk.sh` cannot pick it up. That is also strictly stronger than
`verify.py --all` for files like ovl16.c where 94 already-matched functions
have no listing and `--all` cannot see them at all.

## Two traps in the headers

`include/track_arrays.h` uses the include guard `OVL1_6_H`, the same as
`src.old/ovl1/ovl1_6.h`. In any TU that includes `ovl1/ovl1_6.h` first (e.g.
`src/ovl5/ovl5_12.c`) track_arrays.h is SILENTLY SKIPPED, so `D_800E9AA0` is
`struct EntityThing800E9AA0 *[]` there and needs `((s32 *) D_800E9AA0)[i]`.

`n_alSavePull` is a merged-empty-function trap that `padtrap` classifies
`clean`: its 19-word listing ends in an extra dead `jr $ra; nop` BEFORE
`.size`, so converting it shortens the TU by 8. Same shape as ovl4's
`func_80158120`.

## More proven-IPA floors in main

`func_80027610` is upstream `_getVol` verbatim at 3/24, and all three diffs are
home-slot OFFSETS ($a1 to 0x0, $a3 to 0x8, $a2 to 0xC). Those are the source
parameter positions of `_getVol(ivol, samples, ratem, ratel)` while the
registers are permuted -- ujoin shuffled the calling convention. Home-slot
offsets that do not match register positions are the IPA signature.


## Screen for IPA blocks BEFORE decompiling: tools/decomp/ipascan.py

The n_audio TUs were built at -O3 WITH ujoin, which gives static callees custom
calling conventions. A function that reads a saved or temp register before
writing it -- or takes $f12/$f14 alongside $a0/$a1 -- cannot be spelled in C at
any optimisation level, and neither can any CALLER that has to set those
registers up.

`ipascan.py <listings>` flags them from the entry live-in set. Legal live-ins
are $a0-$a3, plus $f12/$f14 only when $a0/$a1 are not also live-in. Running it
first is far cheaper than transcribing a function and then discovering the
frame is 16 bytes off.

Two subtleties the obvious implementation gets wrong: a prologue
`sw $sN, off($sp)` is a SAVE, not a use; and a `jal` must clobber
$v0/$a*/$t*/$f0-19 BEFORE the "no register operands" early-out.

Newly proven IPA-blocked in libn_audio.c beyond the earlier list:
func_8002649C ($s6), func_80026A10 = `_decodeChunk` ($s0-$s5), func_8002714C
($s0,$s3), func_800285F8 ($t0,$s2), func_80026898 = `_getRate` ($a0/$a1 AND
$f12/$f14). And func_80026B2C = `n_alAdpcmPull` is poisoned BY ITS CALLEE: the
upstream transcription lines up instruction for instruction, but the frame is
0xA0 against 0xB0 and `f` lands in $s0 where the ROM uses $s7, because
$s0-$s5 are reserved to pass arguments to func_80026A10.

## The N-audio ABI macros are already in the tree

`libreultra/src/libnaudio/n_abi.h` has `n_aLoadBuffer`, `n_aLoadADPCM`,
`n_aPoleFilter`, `n_aResample` -- copy them into the TU beside the
`n_aSaveBuffer`/`n_aInterleave` it already carries. That one step unblocked the
entire reverb family (five functions, 184 instructions, seven of eight
first-compile from upstream). Adding 36 lines left all 37 previously-matched
functions in the file at 0 diff, so line shifts there are safe.

Related: **`1.0 - delta` must be `1.0f - delta`.** Upstream writes the double
literal, which emits `cvt.d.s`/`sub.d`/`cvt.s.d`. That was the only diff in a
131-instruction function that was otherwise exact.

## Scan a whole file by blanking EVERY pragma

Better than the every-other-one trick: replace ALL `#pragma GLOBAL_ASM` lines
with blank lines, preserving the line count since IDO is line-number sensitive.
verify.py then compiles the file directly instead of through asm-processor, so
`--all` runs in seconds and every guarded draft can be measured in one pass --
and it sidesteps the `libn_audio.a` garbage-collection link trap completely.

## Count pragmas from the LINKED BINARY, not from grep

`grep -rho 'GLOBAL_ASM("' src --include=*.c | wc -l` is wrong, and it cost a
misreported figure. `grep -r` traverses hidden files, so it counts every
`.ab_tmp.c` sweep copy an agent has left lying beside a real file -- inflating
the total by 40+ and appearing as a sudden regression.

Python's `glob` skips dotfiles, so every tool in tools/decomp is correct. Only
ad-hoc shell counting is affected.

The authority is `verify_rom.py`'s `P ok` column, which counts what actually
linked. Use that. And delete your temp copies when you finish.

# The `sll $vN, $vN, 2` signature -- a byte-bias index

Where the ROM does `sll $vN, $vN, 2` IN PLACE, overwriting the objId register,
and your compile puts the shift in a fresh register, pre-scale and index
through a byte bias:

    id = omCurrentObj->objId * 4;
    temp = *(s32 *) ((u8 *) D_800E9720 + id);

Plain `arr[id]` with `s32 id = objId;` keeps `id` alive in its own register and
never reuses it. Proved on func_80225724_ovl18 (3/32 -> MATCH) and
func_801DF3DC_ovl11 (7/53 -> MATCH); it also fixed an ARGUMENT-register
rotation in func_801DC91C_ovl17.

**With the bias form, a pointer local must be used for the LOAD ONLY.**
`p = (s32 *)((u8 *)D_800E9720 + id); temp = *p;` for the read, but the bias
expression again for the write. `*p = ...` is an aliasing barrier that makes
IDO re-materialise `&omCurrentObj` -- one function went 5 -> 55 diffs.

It is not universal: on func_801DF728_ovl11 it fixes the shift register but
moves the value out of `$a1`, and on func_801DC91C_ovl17 it fixes `$a2`/`$a1`
but the loaded value then lands in `$a0` instead of `$v1`.

197 remaining pragmas in ovl8/11/12/13/14/15/17/18/19 alone carry this
signature, and the detector is a one-line regex over the listings. It is worth
sweeping mechanically in every segment.

## More levers

**Assignment order of zeroed accumulators vs pointers decides `$v0`/`$v1` vs
`$a0`/`$a2`.** Moving two `sum = 0;` above two pointer initialisations closed
func_8021F35C_ovl18 (35/40 -> MATCH). Declaration order was inert in all four
permutations; assignment order was not.

**A function-pointer table with stride 8 must be spelled as a byte offset**:
`(*(void (**)(void)) ((u8 *) &SYM + i * 8))()`. The array form
`((void (**)(void)) &SYM)[i * 2]()` costs exactly one temp slot.

**`volatile` forces a full address materialisation, not only scheduling.** The
wave-9 note frames `vu16` as anti-hoisting; it also flips
`lui $at; sw %lo(sym)($at)` into `lui/addiu/sw` for a SINGLE-USE global, which
the use-count threshold otherwise puts out of reach.
`*(vs32 *) &D_800D71F8 = temp;` took func_80221108_ovl19 from 26/37 to 11/38.

**`func_80111550` wants `(void *)` AND an inline `omCurrentObj->objId`
argument.** The prototype alone does nothing, and a passed-through temp local
does nothing; only the inline argument emits the ROM's `or $a0, $v1, $zero`.

**Collapsing an if/else onto one physical line is a real scheduling knob.**
func_801E5E10_ovl15 was 2/153 with two `lui`s swapped and matched when
collapsed. Its twin matches EXPANDED, so it is per-function -- and it means
physical line breaks are load-bearing, which is worth remembering before
reformatting anything.

## setup_permuter.unguard() could silently delete hundreds of lines

Given a BARE pragma -- one not inside a guard -- in a file that contains guards
elsewhere, it searched backwards for the nearest `#else` ANYWHERE above, took
that block's `#ifdef` as the opening and the next `#endif` after the pragma as
the close, and deleted everything between. It runs on a copy of a real source
file, so the damage looks like a decompilation result.

Fixed: the `#else` must be immediately above the pragma and the `#endif`
immediately below, and it refuses if the region contains another guard or
pragma. If you use the shared `scan.py`, it inherits the fix.

## The callee-return-type lever fires on ALREADY-DECLARED callees too

The guide framed this as an implicit-declaration problem. It is not limited to
that: flipping an existing `extern void f(s32);` to `extern s32 f(s32);` closed
func_8020BC98_ovl9 (7 -> 0), and `void func_8019F3B0_ovl7(void)` -> `s32`
closed func_801E51EC_ovl9 (15 -> 0). Both left their files at 0 diff.

That makes it mechanically sweepable rather than a per-function insight: try
both directions on every callee of a draft. Do that before hand-analysis.

## Two hidden translation-unit splits in ovl10 -- known, deliberately not acted on

`src/ovl10/ovl10_3.c` is two TUs in the ROM and kirby64.yaml does not know it.
The mechanism is confirmed rather than inferred: compiling
`void f(void){while(1){g();}}` with the project's IDO flags and `-S` shows IDO
emitting a literal `.align 5` after the loop's `b`, so a dead epilogue is
32-byte aligned FROM THE OBJECT'S .text BASE.

The split is bracketed to **0x1DC9D0 (func_801EBC60_ovl10)** by independent
evidence: kirby64.yaml has an orphan rodata subsegment
`[0x1E58F0, rodata, ovl10/1E58F0]` between ovl10_3's and ovl10_4's rodata --
a third TU's rodata -- whose only two users are func_801EBC60_ovl10 and
func_801EBF2C_ovl10, while the last `ovl10_3_rd` user is func_801EAB98_ovl10.
Of the candidates in that gap only 0x1DBE30 and 0x1DC9D0 are congruent to
16 mod 32.

`src/ovl10/ovl10_5.c` needs one too (func_801F11A8_ovl10 and
func_801F2098_ovl10). A reachability scan validated every other TU base in both
segments, so only these two are wrong.

**It is not being acted on, and the reason is a judgement worth recording.**
kirby.ld is generated and gitignored, so correcting this needs a splat run that
regenerates listings tree-wide -- disruptive while several agents share the
working tree. And the payoff was measured smaller than first briefed: exactly
ONE dead-epilogue function in ovl10_3, not a class. The other 8-diff functions
there are argument-register rotations and unrelated. Three functions is not
worth risking a shared tree; this is a good task for a quiet moment with no
agents running.

# `volatile` is the general anti-CSE knob

Wave 9 introduced `volatile` narrowly, as a way to stop IDO hoisting an
induction bump. That undersold it.

**A `volatile` cast on the SECOND read of a global defeats IDO's CSE with an
earlier read.** `*(vs32 *) &gKirbyState.unk3C` closed `func_8017DAD8_ovl3` --
a RECORDED FLOOR -- with no other change.

It also forces a full address materialisation where IDO would fold
`lui $at; sw %lo(sym)($at)`, which is otherwise unreachable below the use-count
threshold (`*(vs32 *) &D_800D71F8 = temp;`, func_80221108_ovl19, 26/37 ->
11/38).

So: whenever the residue is "the ROM re-reads or re-materialises something IDO
shares", try `volatile` before anything structural. It is not universal --
`volatile f32 temp` took func_801FDB28_ovl9 from 3 diffs to 85 -- so measure.

## Inline versus hoisted: both directions are real

The guide has long said to hoist `omCurrentObj` into a local. The opposite is
equally a lever: **writing everything fully INLINE, with no `GObj *obj` and no
temp locals, controls address scheduling and `$v0`/`$v1`.**
`func_80173EBC_ovl5` was 18/98 with an `obj` local and MATCHED with the
identical body inline; `func_8015F5DC_ovl5` matched once its two `f32` locals
were dropped.

Try both before concluding anything about register allocation.

## More levers

**`for (;;) { v = ...; if (...) break; ... }` gives test-at-top plus an
unconditional `b` back; `while ((v = ...) != k)` duplicates the test as a
`bnel`.** On func_80166588_ovl3 that was 37 -> 1, and it also fixed the
saved-register allocation, because the rotated shape changes register weights.

**A named sentinel local puts the constant as the FIRST `beq` operand.**
`s32 sentinel = -1; if (sentinel == val) break;` -- both `val == -1` and
`-1 == val` emit the operands the other way.

**A dead-looking reload of a global right before `jal f; nop` means f TAKES
that global as an argument.** Adding the parameter explained an entire
`$a0`-vs-`$v0` allocation.

**A pointer local must be recomputed inside EACH ARM** where the ROM
materialises the array base twice; hoisting it above the branch cost 59 diffs.

**Struct-copy width follows the member type**: `u8 unk0[6]` copies
`lw/sw + lhu/sh`; a `{u32; u16;}` struct copies 8 bytes as two `sw`.

**`x + x` versus `x * 2` when the result is scaled again**: `+` keeps two shift
steps, where `* 2`, `<< 1`, `2 *`, a separate index local and `&table[i*2]` all
fold to one `sll 3`.

**Type-split zero applies to store-versus-compare too**: `= 0.0;` (double) on
two position stores forked the `mtc1 $zero` that a `!= 0.0f` compare needs.

## Correction: a SINGLE-parameter K&R definition does not home its parameter

The wave-6 note said a K&R definition emits the home slot. Measured on
`func_8019D8A0` (ovl7/enelib.c, 20/46): **a K&R definition with ONE parameter
does not home it; a multi-parameter K&R definition homes all of them.** A
narrow `u16` parameter, K&R or prototyped, does emit the home store but then
re-reads it with `lhu 0x2(sp)` instead of keeping `andi $s0,$a0,0xFFFF`
(42/46).

So the lever is real but its precondition is 2+ parameters.

## `*(vs32 *) &SYM` forces ADDRESS MATERIALISATION

Distinct from the anti-CSE effect. Three forms, three outcomes, measured on
`func_801B8714_ovl7` (45/49 -> 33 -> 24/50):

    s32 *p = &SYM;        address folded into %lo() at every use
    vs32 *p = &SYM;       halfway
    *(vs32 *) &SYM        lui + addiu into a register, then lw/sw 0(reg)

Use it wherever the ROM has a materialised base you cannot otherwise
reproduce.

Related: **a TWO-term chained assignment materialises the first-stored symbol's
address into `$v0`.** `D_80129138 = D_8012913C = 0;` emits `lui $v0`/`addiu
$v0`/`sw 0($v0)` for the second symbol and the ordinary `lui $at; sw %lo()($at)`
for the first. Three separate statements fold both, and THREE-term chains do
not work -- exactly two.

## Spill slots have their own knobs, separate from register class

* **Declaration order controls spill-slot assignment.** `func_80114DBC` sat at
  2/49 on a call-result spill 4 bytes low; moving the pointer local LAST closed
  it. All six permutations swept, only one lands.
* **Inlining `arg0->objId` instead of caching it in a local moves a spill slot
  up 4 bytes WITHOUT growing the frame** (`func_8011AA7C`, 2/64 -> MATCH). A
  leading `s32 pad` fixes the same slot but grows the frame by 8; `s16`/`s8`
  pads behave identically to `s32`.
* **A TRAILING dead local moves a compiler spill slot up without moving the
  other locals** (`func_80115D38`, 3/93 -> 1). Leading pads made it worse.

## Read the argument COUNT before believing a reload is a live range

`func_801ED444_ovl16` looked like it needed three dead `lw $a2, 0x2C($sp)`
reloads. They were the THIRD ARGUMENT: `func_800AA038(s32, f32, s32)`. Getting
the callee's arity right took it 62/124 -> 36/125 with no other change.

## NEVER write `open(path, 'w').write(splice(path, ...))`

Python evaluates the `open()` first, so the file is TRUNCATED before `splice`
reads it. This emptied `src/ovl2/ovl2_2.c` -- 1013 lines to 0 -- mid-session.

Compute the new text into a variable, assert it non-empty, and only then open
for write. Recovery: `git show HEAD:<path> > <path>`.
