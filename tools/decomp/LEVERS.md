## RULE ZERO: WORK BARE PRAGMAS. GUARDED DRAFTS BELONG TO THE CPU.

Measured 2026-08-13. The tree holds **405 bare pragmas** (never attempted by
anyone) and **515 guarded drafts**. Bare pragmas close at 68-89% historically.
Guarded drafts are, almost by definition, the ones somebody already failed to
close — and tonight they resolve to register-allocation floors again and again,
at ~400,000 tokens per stint for zero closures.

Meanwhile decomp-permuter closes an ORDER residue in 13 seconds for no tokens
at all, and every guarded draft in the tree is already queued to it.

So: **if a function has a guarded draft, it is not yours.** Leave it. Take a
bare pragma. If your own attempt bottoms out on a register-shaped residue,
guard it with a `/* FACTORY: n/total, residue */` note and move on — you have
just converted it into CPU fuel, which is a success, not a failure.

Bare pragmas by segment: ovl3 95, ovl5 59, ovl9 55, main 28, ovl15 22, ovl7 20,
ovl16 19, ovl10 18, ovl2 17, ovl17 16, ovl14 14, ovl19 12.

## PROVEN LEVERS — write these in FROM THE START, do not rediscover them

1. **Clone families are the highest-yield method in the project.** Before picking any target by size, look for a pragma whose `jal` skeleton matches an ALREADY-MATCHED function in the same file. Port the matched shape and adjust only subscripts/constants read off the `lw`/`add.s` displacements. Measured: 3 closures in 12 compiles; two 200-330 instruction functions on the FIRST compile. A 285-instruction clone is cheaper than a 90-instruction original. PROVENANCE BEATS SIZE.


2. **Float `+` reverses like `*`** in the LAST-EVALUATED add BETWEEN TWO MEMORY LOADS: write the operands swapped. Refined scope: this is really about EVALUATION ORDER (source order and evaluation order are inverted). Apply when the residue is evaluation order; it makes things WORSE when order is already right and only a register name differs. Falsified for `var + arrayload` — if one operand is a plain local, expect nothing.


3. **ABS() (integer zero) instead of ABSF()** forks IDO's shared `mtc1 $zero`. Three closures from this one substitution; one went 230/330 straight to MATCH.


4. **objId, a matched pair of levers.** Cache the POINTER in a local when IDO hoists `&omCurrentObj` into a held register. INLINE THE FIELD at each use when m2c has cached `objId` in a named local — m2c's `temp_vN = omCurrentObj->objId` is wrong by default here and splits every index across two registers.
   **Scope correction, measured:** inline-the-field is NOT free and is not "delete index temporaries". It won ovl7_5 and ovl18, but on func_801E14B0_ovl17 dropping m2c's leading `u32 temp_v0` to inline the field cost 3 diffs (3/61 → 6/61) because that temp owns a frame slot. The lever is about who owns the SAVED/HELD register. A leading temp with a frame slot stays.
   Related negative: **K&R definitions are not a parameter-register lever.** The prototyped form already emits the parameter home store, so K&R changed nothing on a one-slot argument rotation.


5. **Branch polarity.** Where the ROM lays `return 0` as fallthrough and makes `return 1` the branch target (hoisting `addiu $v0,1` into the `bne` delay slot), test the EQUAL case first. m2c's `!=` form is wrong by default.


6. **The flag-variable form is per-function, worth ~130 instructions.** Read the listing: if the true arm sets the flag register and branches to the merge, it is register-allocated → write if/else. If the flag is stored at a shared label → write goto. One compile either way.


7. **A double literal (0.0, 2.0 — not 0.0f/2.0f)** forks IDO's shared FP constant. Works in both directions: to split a shared constant, and to stop IDO CSEing a store's zero with nearby comparison zeros.


8. **`temp / 8` keeps div.s; `temp / 8.0f`** is strength-reduced to a multiply by 0.125f.


9. **The +8 frame anomaly is DECIDABLE, not sweepable.** IDO computes align8(0x1C + sizeof locals), ROM computes align8(0x18 + …). A function matches iff its locals total ≡ 4 (mod 8). Compute it; don't sweep shapes.


10. **A struct field the ROM re-reads after every call must be read INLINE at each use** — caching it in a local costs a spill and a move (177 → 23 on one function).


11. **Hoist a REUSED TABLE INDEX into a named local.** `D_800E7880[objId] - 7` used as a subscript into two different tables must be a local. Written inline, IDO folds the `-7` into each load's displacement (`lw $t4, -28($t4)`) and recomputes it; the ROM does one `addiu -7`, one `sll`, and spills that byte offset to reuse for the second table. **154/166 → 33/165** on one edit.


12. **CORRECTION, measured: for a STACK-OFFSET residue the knob is not pad count, it is which side of the struct block a scalar is declared on.** Scalars declared BEFORE the initialised structs land above them; scalars declared AFTER land below and push the struct block up. A pad-count sweep (0/2/3/4 leading pads) moved only the frame size and never the base -- measured base in {0x70,0x74,0x78}, never the ROM's 0x68. The shape that worked was four scalars before the structs and exactly one 4-byte scalar after the last struct, giving base 0x68 and frame 0xC0. From outside this looks like the +8 frame anomaly and is not one: it is decidable and movable. Entry 12 below predicts the wrong direction in this case.


13. **PAD LOCALS GO AT THE END OF THE DECLARATION LIST, not the start.** Later declarations take the LOWER stack addresses, so a trailing pad is what pushes earlier locals UP. Two leading `s32 pad` fixed a frame but left both Vectors 8 bytes low (30/165); the same two declared last put them at 0x4C/0x40 (21/165). This corrects the leading-pad habit several lanes were using.


14. **COMPARE-OPERAND ORDER DEPENDS ON WHETHER AN OPERAND IS A MEMORY LOAD.** Measured twice. With a **memory load** on one side, the asm operand order is the **REVERSE** of the source order (`p->unk4 == arg0` → `bnel $v1,$t7`). With **two plain pointers/locals**, it is the **SAME** (`p == arg0` → `bnel $v0,$a0`). m2c's default is wrong in the first case and right in the second. This was the last 2 diffs on two functions and 1 of 3 on a third.
    Note this is NOT the commutative-operand invariance floor: that one says you cannot change which slot a commutative *arithmetic* instruction uses. This is about branch compares, and it does move.


15. **`sw $a0, 0x0($sp)` with no frame, on a leaf, is IDO's K&R promoted-`u16` parameter prologue.** Write `void f(arg0, arg1) u16 arg0; s32 arg1;` and it reproduces that store plus the `andi 0xFFFF`. (K&R is not a general parameter-register lever — see the negative in lever 4 — but it is exactly right for this signature.)


16. **Hoist a pre-branch load into its OWN local.** A load used inside an `if` whose value is also needed before it leaves IDO a `nop` in the compare/branch gap and rotates every FP temp after it. Read it first into a separate local and use that: the `lwc1` fills the gap exactly as the ROM does. Reusing the destination variable for the read is NOT equivalent -- it keeps the value in that variable's callee-saved register. Worth 20 diffs at once on one function.


17. **An unused prototyped parameter is free.** A call site passing 5 arguments to a matched 4-parameter definition: adding an unused `f32 arg4` is byte-identical for the callee, verified by objdump A/B. Incoming arguments live in the caller's frame.


18. **A `(u16)` cast on an `s32[]` element emits `lhu`; the ROM reads the full word and masks.** Write `(x & 0xFFFF) == 2`, not `(u16)x == 2`. These track/entity arrays are read as words. That was the only real defect in a 205-instruction function — 28/205 straight to MATCH in one edit.


19. **A switch arm that stores the same value as the default must be folded away.** m2c's natural three-arm `else if` reads correctly and emits four extra instructions; write two arms (149 → 145).


20. **A lone `.float` in a data blob is IDO's LITERAL POOL, not a variable — write the literal.** splat names every rodata word it cannot attribute, so a one-word `.float` entry with its own `dlabel` is almost always the constant IDO emitted for a source token in the function that loads it (three separate entries all reading `.float 65535` in ovl3, one per function, is the giveaway). Referencing it as `extern f32 D_xxxx` compiles to the same `lui/lwc1` but NOT to the same registers: **IDO allocates FP registers to memory-loaded values BEFORE constants**, so an extern read takes $f0 and a neighbouring `mtc1 $zero` is pushed to $f2, where the ROM has the reverse. Writing `65535.0f` makes both operands constants, they are allocated in source order, and the ROM's assignment falls out. Measured on func_80180818_ovl3 (6/208 → 1/208) and func_8018E164_ovl3 (6/130 → 1/130).
    This had been sealed three times as a "$f0/$f2 neighbouring-register floor" and swept for a tie-break that does not exist: declaration order, initialisation order, an explicit `f32 zero` local, a zero built from arithmetic or from an `s32`, a third live constant, and reference counts (0.0f with three uses still loses $f0 to a load with two) all reproduce the identical residue. The register order is decided by operand KIND, and nothing else moves it.
    **Check the rodata model before rewriting.** If the symbol lives in an `asm/data/**.rodata.s` blob (an undotted `rodata, X` subsegment) the literal DUPLICATES the ROM's word and shifts the blob — keep the draft guarded and report the split as a coordinator task. If it lives in the function's OWN listing under `.section .late_rodata`, the migration is already done and the rewrite is free.

    **SURVEYED 2026-08-24 -- the four remaining named-literal pools are all
    BLOCKED by the rodata model, so do not re-cost them:**
      - `src/ovl11/ovl11.c` (11 candidates, e.g. `D_801E0C0C_ovl11 = 670`).
        Every one lives in `asm/data/ovl11/ovl11.data.s`, reached by the
        undotted `[0x1EB3C0, data, ovl11/ovl11]` subsegment. kirby.ld puts that
        blob in ovl11's DATA region and `build/src/ovl11/ovl11.o(.rodata)` in a
        separate RODATA region after it, so a literal emitted from C is a NEW
        word appended past the blob, not a replacement -- the overlay grows.
        (The blob interleaves `.asciz` strings with the floats, which is what
        IDO's .rdata looks like: it is mis-typed `data` in the yaml, and fixing
        that is a splat change, not a source change.)
      - `src/ovl5/ovl5_4.c` (8) and `src/ovl5/ovl5_3.c` (2) --
        `rodata, ovl5/ovl5_4_rd` / `ovl5/ovl5_3_rd`, both undotted. kirby64.yaml
        already carries the reason inline: ovl5_3 and ovl5_4 are ONE translation
        unit whose strings and late-rodata run interleave, so the block cannot
        be migrated per file at all. This also blocks `func_80165440_ovl5`,
        whose ONLY residue (1/116) is its jump table reading its own section
        where the ROM names `jtbl_8018D658_ovl5`.
      - `src/ovl5/ovl5_5.c` (1) -- `D_80187A68_ovl5 = 3` is not a pool entry at
        all: it sits in the ovl5 `.data` blob between a four-float table and a
        word table, and its one reader spells `200.0f + D_80187A68_ovl5`, which
        IDO would constant-fold if both were literals. Real data, leave it.
    A literal is only free where the file has a DOTTED `.rodata, seg/file`
    subsegment. But CHECK WHAT THE CONSTANT COMPILES TO, not just where the
    named symbol lives: ovl11's `func_801DD1CC_ovl11` un-guarded byte-exact out
    of an unmigrated TU because its 0.0f/200.0f/160.0f are lui+mtc1 constants
    and the object emits no .rodata at all.


21. **`mul.s` operand slot IS movable — by operand KIND, not by source order.** Correcting the long-standing "INVARIANT" entry below. With one operand a named local and the other a direct array load, IDO emits `load, local` whichever way the product is spelled (`arr * v` and `v * arr` are byte-identical, measured four times, which is what made it look invariant). Change what the operands ARE and the slot moves: spelling the scale factor as an INLINE ternary instead of through a local flips it to the ROM's `local, load`. Two named locals honour source order. Closed func_8015E8E0_ovl3 at 275/275 (the inline form cost 8 bytes of frame, paid back by shrinking its `pad`).



## GUARD ON THE SECOND VARIANT — these are floors, no source spelling reaches them
Whole-function callee-saved permutation; one-slot temp rotation; a CSE'd load landing in the neighbouring register ($v0/$v1, $a2/$a3); IDO folding an address into load offsets where the ROM CSEs it into a spilled register.

`mul.s` source operand order was on this list and is NOT a floor — see lever 21. It is invariant to source ORDER and movable by operand KIND, which is why re-spelling the product kept reproducing the same word.
The `$f0`/`$f2` split between a `mtc1 $zero` and a neighbouring float was also sealed here as a floor three times, and is not one either — see lever 20.

## PADDING TRAPS — screen the .s tail BEFORE spending anything
Anchor on the **LAST** `.size` in the listing (anchoring on the first matches a leading `.late_rodata` block and gives a FALSE trap). Three classes, all of which produce a verify.py MATCH while the TU still shrinks:
  a) last function in its TU with trailing nops;
  b) ex-archive SUBALIGN(16) member (nops round to 16 bytes);
  c) a trailing UNNAMED function (`jr $ra; nop`) inside the target's own `.size`.

**CLASS (a) IS NOT UNCLOSABLE, and this file said it was until 2026-08-25.**
A `pad` subsegment in kirby64.yaml supplies the fill bytes explicitly, so the
object may shrink without moving anything after it. It is already done six
times in ovl5 alone -- `- [0x1261C0, pad]` and `- [0x126AC0, pad]` bracket
ovl5_9, and the same pattern closes ovl5_2, ovl5_4, ovl5_5, ovl5_6 and
ovl5_8. Every one of those six functions is now byte-exact with no pragma and
no listing, while its in-file note still read "converting this would shorten
the TU and shift the segment, so the pragma must stay". The remedy worked and
nobody went back to say so, so the notes went on warning lanes off code that
was already finished.

Pad bytes are zeros and `nop` encodes as zero, which is why this works at all
for trailing nops.

**IT DOES NOT TRANSFER TO EVERY SITE, measured 2026-08-25 on
func_801E0B38_ovl17.** That function is byte-exact (108/108, verified with the
padtrap check neutralised for the measurement) and is the last function of
ovl17_2.o with exactly six words of fill past its `.size`, at
0x22BED8..0x22BEEC, ending precisely where ovl17_3 begins. Structurally it is
the ovl5 case: `- [0x22BED8, pad]` between `- [0x228B10, c, ovl17/ovl17_2]`
and `- [0x22BEF0, c, ovl17/ovl17_3]`, same indentation, same shape.

It breaks the ROM, and it breaks it WITH THE DRAFT STILL GUARDED -- so the pad
itself is the problem, not the un-guarding. build/src/ovl17/ovl17_2.o's .text
is 13512 bytes with the pad and 13512 without it: splat did not shorten the
preceding listing the way the subsegment extents say it should, so the six
words are supplied twice and everything after 0x22BED8 shifts. Three builds,
sha1 78f0632e (pad + un-guarded), ecb9c0a1 (pad only), 6cea2d46 (reverted).

**SOLVED 2026-08-25. THE PAD DOES NOT GO AT THE `.size`; IT GOES AT
align16(THE UN-GUARDED OBJECT'S .text). Two closures on this rule:
func_801FB9DC_ovl9 (`- [0x1A9AE0, pad]`) and func_801E0B38_ovl17
(`- [0x22BEE0, pad]`), both un-guarded, sha1 6cea2d46, check_tu_size 0 wrong,
check_rodata_bytes 0 problems. func_801E0B38_ovl17 had been sealed as
"the pad remedy does not work at this site".**

The formula, and it is arithmetic, not a sweep:

    content   = (subseg_end - subseg_start) - 4 * (trailing nops in the .s)
    pad_start = subseg_start + align16(content)
    pad_bytes = subseg_end - pad_start          # 0 means no pad is needed

`as` rounds a section's SIZE up to 16 and its fill is zero, which is what `nop`
encodes as -- so the object supplies the first part of the tail itself and the
pad supplies only the remainder. Putting the pad at the `.size` asks for the
whole tail and gets the object's rounding on top of it, which is the
double-count that has been breaking these.

**ROUND TO 16, NOT TO THE SECTION'S `Algn` FIELD.** ovl17_2.o's .text reports
`Algn 2**5`; rounding to 32 predicts no pad at all, and that was built and is
wrong (226cacd0, .text 0x33D0 against an expected 0x33E0). `Algn` is a
placement requirement, and kirby.ld's SUBALIGN(16) overrides it anyway --
0x228B10 is not 32-aligned and the link has never minded. Size rounding is a
separate mechanism and it is 16. padtrap.py's own header already said "IDO's
assembler pads .text only to 16"; what was missing was connecting that to the
pad's ADDRESS.

**THE REMAINING POPULATION, enumerated and costed** (class (a), last function
in its TU, computed with the formula above -- each still needs its draft to be
byte-exact before un-guarding, and the pad gated guarded first):

    ovl1/ovl1          - [0x4AB00, pad]   16   func_800A2550
    ovl1/save_file     - [0x629E0, pad]   16   saveForceCompleteFile
    ovl3/ovl3_4        - [0xCC970, pad]   48   func_8016BD24_ovl3
    ovl8/ovl8          - [0x175B10, pad]  16   func_801D1E98_ovl8
    ovl9/ovl9_4        - [0x193760, pad]  16   func_801E5660_ovl9
    ovl9/ovl9_13       - [0x1BDFC0, pad]  16   func_8020FD34_ovl9
    ovl12/code_1EB520  - [0x1F18C0, pad]  16   func_801DB1E0_ovl12
    ovl18/code_236CC0  - [0x236F10, pad]  16   func_802244FC_ovl18

The older text below is kept because its measurements are real; read it as
history, not as guidance.

**(SUPERSEDED READING) THE ADDRESS'S ALIGNMENT, first measured on
func_801FB9DC_ovl9 (ovl9_8, `.size` at 0x1A9AD4, seven words of fill to
ovl9_9's 0x1A9AF0). THE PAD MUST START ON A 16-BYTE BOUNDARY.**

The assembler gives an object's `.text` alignment 2**4 and rounds the SECTION
SIZE up to it. ovl9_8's subsegment is 0x3354 bytes long, so ovl9_8.o's .text
is 0x3360 whatever the yaml says -- objdump confirms it in every variant.
A pad at the address the `.size` actually falls on is therefore laid on top of
a section that has ALREADY been rounded past it, and it double-counts:

    - [0x1A9AD4, pad]   ld gets `. += 0x1C` after a 0x3360 section
                        -> ovl9_9 starts 16 bytes late.  sha1 b3f7acf4. RED.
    - [0x1A9AE0, pad]   next 16-byte boundary.  splat leaves three nops in the
                        listing, .text is 0x3360 with no rounding slack, ld's
                        `. += 0x10` lands exactly on 0x1A9AF0.
                        sha1 6cea2d46, check_tu_size 0 wrong. GREEN.

Both builds gated with the draft still GUARDED, so this is the pad on its own
and nothing else. The rule reads straight onto the known cases: every one of
the six working ovl5 pads is 16-aligned (0x1261C0, 0x126AC0, ...), so is
main's 0x49B0, and ovl17_2's failing 0x22BED8 is 8 mod 16 -- the same defect,
not a mystery. Round the address UP to the next multiple of 16 and let the
object's own alignment fill supply the words below it; alignment fill is zero
and `nop` encodes as zero, which is why the two halves are interchangeable.

SETTLED, and the coordinator's 29 defects were NOT this pad. I measured them
while func_800B2340's third parameter was retyped tree-wide in my working
copy; the retype reaches src/ovl5/ovl5_4.c through ovl1/ovl1_7.h and all 29 are
in ovl5, func_8016C410_ovl5 through func_8016F3C4_ovl5 (see commit a05830ba and
func_801D6534_ovl8's note). The lane that owned ovl9 refuted the attribution the
right way -- it reverted both the pad and the un-guard, rebuilt, got the SAME
sha1 a6c1a859 and the SAME 29, and byte-diffed ovl9, ovl9_8, ovl15 and ovl16 at
zero. Two configurations differing by a pad cannot share a 160-bit hash unless
the difference is zero bytes.

So the pad at 0x1A9AE0 is byte-inert and func_801FB9DC_ovl9's closure is real.
The general lesson is the one that cost the time: **isolate before attributing.
A red tree with four lanes in it tells you nothing about whose change made it
red until you have reverted one thing at a time.**

**TWO BUILD-SYSTEM TRAPS THAT MAKE A CORRECT YAML EDIT PRODUCE A WRONG ROM,**
and either of them alone reproduces the "it broke and I don't know why" report:
  - `uv run splat split` writes `./kirby.ld` at the REPO ROOT. `build/kirby.ld`
    -- the script the link actually uses -- is a Makefile-derived copy of it
    (Makefile:251). Re-running splat by hand updates the listings and the root
    script but NOT the linked one until make runs.
  - **make does not treat a `.s` as a dependency of its object.** A pad edit
    changes a listing without changing any `.c`, so mk.sh's source-hash pass
    keeps the old object and links a stale `.text` against a new layout.
    `rm build/src/<seg>/<file>.o` after every re-split that touched a listing.

And a cheap way to answer alignment questions like this without touching the
shared tree at all: splat resolves `base_path` relative to the YAML, so copying
baserom.us.z64 + kirby64.yaml + src/ + include/ + tools/symbol_addrs.txt +
tools/splat_ext into a scratch directory and running
`uv run splat split <scratchdir>/kirby64.yaml` FROM the repo root splits
entirely inside the scratch directory. It reproduced the real tree's asm and
kirby.ld byte for byte, and it is where the listing-shortening half of the
above was established before anything was risked in the tree. Class (c) is the same shape seen from the other side --
write the unnamed function out rather than padding over it (func_801555AC_ovl4
and func_80160A70_ovl5 both closed that way).

The related move for a `.rodata` blob that the C file needs to own is to split
the subsegment rather than pad it: see the ovl5_3 jump-table split at
0x134AC8, which also needed `subalign: 8` on the segment because IDO gives an
object's .rodata 16-byte alignment and 0x8018D658 is only 8-aligned. The
linked sha1 is what decides; it took two builds.

## RULES — violating these breaks the ROM for every lane
- Un-guard ONLY when `verify.py` prints MATCH **and** the tail screen is clean.
- Declarations a GUARDED draft needs go INSIDE the guard. A file-scope declaration changes codegen for every function below it.
- Before any prototype/struct change: record every already-matched function's instruction words in the TU, change, re-compare, revert if anything moved.
- NEVER script/regex a replacement of a function definition. Edit one function at a time, by hand. Three separate agents deleted live functions that way tonight.
- Never edit an already-matched unguarded function. Weird IS the match.
- A utilPrintf string must come from THAT function's own listing `.asciz`.
- NEVER run make or mk.sh. NEVER run git. Only verify.py. The manager builds.

## MEASURED IN THE RE-FOUNDATION WAVE (ovl7 lane, 5 closures / 17 seeds)

20. **A difference used in a float comparison must be materialised into a
    named local**, or IDO folds it into a direct `c.eq.s` of the two loads
    and never forms the subtraction at all. Worth 51 diffs on
    func_801A33B8 and 70 on func_801A2558_ovl7.

21. **A jump-table switch needs its EMPTY cases spelled out** (`case 0:`
    `case 5:` with no body), or IDO biases the table with `addiu -1` and
    every offset moves. 345 -> 124 on func_801A2558_ovl7.

22. **Unreferenced scalar pads are dropped by IDO; a large unreferenced
    ARRAY is kept.** That is how a dead 0x160-byte frame region is
    reproducible (func_801BC978_ovl7).

23. Confirmations: clone families (lever 1) took func_801A5274_ovl7 from
    165/204 to 33/194 in ONE edit by copying a matched sibling's spelling
    verbatim; ABS() vs ABSF() (lever 3) was worth 232 diffs on
    func_801A57A8_ovl7 -- ABSF hoists its 0.0f into callee-saved $f20 and
    adds sdc1/ldc1, where the ROM re-materialises `mtc1 $zero` in the loop.

## MEASURED IN THE RE-FOUNDATION WAVE (ovl1 lane, 2 closures / 19 seeds)

24. **A switch with an explicit empty `case 0:` produces IDO's `beql` chain**
    where an if/else chain does not. 180 -> 79 on func_800A0558. Same family
    as lever 21: IDO's jump tables need every arm spelled, including the
    empty ones (func_800A9648 / func_800A9250 only reproduce their 15-entry
    table with explicit `case 0x1F:` and `case 0x3E7:`).

25. **Declaration ORDER of two same-sized aggregates decides which gets the
    lower address** (later locals take lower addresses). Declaring the
    accumulator matrix before the scratch one: 261 -> 185 on func_800A0558.

26. **Never cache a chained record lookup that the ROM re-reads.** Writing
    `D_800D6A78[idx][arg1]->field` inline at all ~25 sites: 313 -> 206 on
    func_800A19EC. Generalises lever 10 from struct fields to chained
    subscripts.

27. **Assign a pointer local AFTER the store that uses it** to keep it on the
    stack the way the ROM does: 80 -> 35 on func_800A9864.

28. **Spell a loop bound as an index into the SAME array** (`&D_800F4D70[10]`,
    not the next symbol `D_800F5770`) or IDO CSEs the two addresses.
    func_800BE098.

29. **Math functions unprototyped in a TU wreck the return type.** `asinf` /
    `atan2f` with no prototype return int; local ANSI prototypes inside the
    function took func_800B26D8 straight to MATCH.

## MEASURED IN THE RE-FOUNDATION WAVE (ovl2_7 lane, 1 closure / 24 seeds)

30. **RECONCILES LEVER 22 — whether an unreferenced local reserves its slot
    depends on whether the function already needs a frame, not on scalar vs
    array.** Lever 22 (ovl7) measured "scalar pads dropped, large array kept";
    this lane measured the apparent opposite, and both are right:
      - Leaf-ish function, nothing else on the stack: EVERYTHING unreferenced
        is dropped -- `u32 pad[42]` alone produced no frame at all, and an
        unreferenced `volatile` array did the same.
      - Function that already has real stack locals: an unreferenced SCALAR
        between two used locals DOES reserve its word. That is how you fill
        the dead words a ROM frame has and m2c never shows you -- an unused
        `f32 sp48` between sp4C and sp44 was worth 41/123 -> 24/123 on
        func_80109504.
      - A LARGE unreferenced array is kept once the frame exists (lever 22's
        0x160 region; this lane's `u32 pad[42]` only survived in
        func_80102570 after a neighbouring `volatile` local forced a frame).
    So: reach for a scalar to fill one dead word, an array to fill a large
    dead region, and expect neither to work in a function with no other
    locals.

31. **Corollary for m2c drafts: its `spNN` "locals" that only ever RECEIVE a
    value are usually IDO's own spill slots, not declarations.** Deleting them
    is what shrinks the frame onto the ROM's -- func_8010C608 went 0x48 -> the
    ROM's 0x38 that way, and func_80106C5C got measurably worse when they were
    kept (frame 0xB0 vs the ROM's 0x90).

32. **Scalars declared BEFORE a run of structs move the WHOLE block down, not
    just themselves.** Lever 12 says which side to put them on; the magnitude
    is that moving func_8010D8A4's single `s32` from after its three Vectors
    to before them slid the entire local block from 0x38-0x60 onto the ROM's
    0x34-0x5C (52/97 -> 37/97). Pads could not do it from either position --
    they only grew the frame 0x60 -> 0x68. Try the declaration-order move
    BEFORE reaching for a pad.

33. **A held base pointer needs THREE uses before IDO stops folding it.**
    The ROM often keeps `arg0 + 0x10` (a struct's inner array) in a register
    and indexes PAST the array's end -- `temp_v0[3]`/`temp_v0[4]` are the
    fields after it. With two uses IDO folds the pointer back into `$s0`
    displacements; with three it holds it. Giving `temp_v0 = arg0->scale` its
    third use took func_80105284 from 117/171 to 10/171 in one edit, and the
    same shape was worth 92/120 -> 69 on func_8010B67C. func_8010D8A4 has only
    two such reads and did NOT hold, which is the negative control.

## MEASURED IN THE RE-FOUNDATION WAVE (ovl2-remainder lane, 18 seeds)

34. **A three-way dispatch must be a `switch`, not an if/else chain.**
    137 -> 2 diffs on func_800F6E30. And **the switch value's width matters**:
    widening an `lbu` result to u32 let IDO share the constants 1/2 across two
    switches (func_800F8078, 62 -> 16).

35. **To stop IDO folding a global address into `%lo(sym+n)($at)`, force it
    through a register**: `*(T *)(u32)&sym[n] = v` emits lui/addiu/sw 0(reg).
    Worth 187 diffs on func_800F64B0.

36. **Three global stores near each other need three DIFFERENT base symbols**
    or IDO CSEs the address into one register (func_800F6830, 9 diffs).

37. **Evaluation order of two symbol reads is inverted relative to source
    order** (func_800F8728, 7 diffs). Companion to lever 2 (float add) and
    lever 14 (compare operands).

38. **A struct copy needs a named local**, or IDO reloads the source instead
    of reusing the ROM's shared stack temp (func_800FF2C8).

39. **Ternary vs if/else changes the order `-1`/`1` are materialised in**
    (func_801105E8, 5 diffs).

## STATIC ASSERTS UNDER IDO

IDO has no `_Static_assert`, and it treats a negative ARRAY size as warning
654 only -- so the usual `typedef char x[cond ? 1 : -1]` trick silently
passes. A negative BITFIELD WIDTH is rejected outright, so that is the form
that actually locks a layout:

    struct { int _assert : (sizeof(T) == 0x78) ? 1 : -1; };

Verified by flipping one and watching the build fail. Put these behind
`#ifndef PORT` -- the PORT build widens pointers and pins its own shape.
An assert of exactly this kind caught `sizeof(UnkGenerator)` being 0x5C when
the pool allocator's real stride is 0x78.

## MEASURED IN THE RE-FOUNDATION WAVE (ovl10/ovl3 lane)

40. **`ABSF()` expands its argument THREE times.** So `ABSF(f(x))` really is
    the three `jal f` you see in the listing, and any host helper that
    collapses them to one call plus fabs can never match. This is why
    ovl10's `pc_ovl10_descend` shim cannot seed a draft for
    func_801DF50C / func_801E0460 / func_801E206C_ovl10.

41. **A PC display-list "shim" is usually just GBI macros written out.**
    `0xDB060010` is `gSPSegment(.., 4, ..)`, `0xDB020000` + `0x18` is
    `gSPNumLights(1)`, `0xDC08060A` / `0xDC08090A` are the two `gSPLight`
    loads. Restoring the real macros against `gDisplayListHeads[n]++` took
    func_801F2964_ovl10 to 32/674 with an exact instruction count on the
    first compile.

42. **Read the SIBLING function before trusting the PORT arm.** Both wins in
    the ovl5_5 re-derivation came from the listing plus a neighbouring
    function in the same TU. A PORT arm whose draft scores ~100% residue with
    "no source bugs found" is usually describing a DIFFERENT function shape,
    not a register problem: func_80176F04_ovl5 is a direct clone of
    func_80176A80_ovl5 120 lines above it, and reading that took it from
    136/137 to 5/138.

43. **Dead locals and reserved holes are load-bearing.** This ROM's authors
    leave unused locals; IDO reserves their slots and every stack offset
    depends on them. Where a draft's frame size is right but every
    `addiu $xN, $sp` is off by a constant, add a pad to the declaration list
    and find its position by walking the ROM's `addiu $reg, $sp, ...`
    immediates in order. func_80176F04_ovl5 needed both a 4-byte hole at
    sp+0x70 that IDO reserves and never writes, and a 16-byte copy the
    function never reads.

44. **A rolled loop over two banks can be the whole residue.** The ROM writes
    both blocks out; rolling them into `for (bank = 0; bank < 2; bank++)`
    forced s0-s8 and a bigger frame, where written-out needs only s0/s1/s2 --
    exactly the ROM's save set (func_801765EC_ovl5).

## MEASURED IN THE RE-FOUNDATION WAVE (ovl19 lane)

45. **Constant CSE is keyed on TYPE.** When the ROM parks a small constant in
    a SAVED register across a branch, every source use must have the same
    integer type or IDO refuses to hoist it. `D_800EC2E0[n].as_u32 = -1` vs
    `.as_s32 = -1` was worth 535 -> 468 on func_802260FC_ovl19 (verified both
    directions; either half alone only reaches 523). Corollary, also
    verified: `D_800E8060[objId] = -1` legitimately gets its OWN
    materialisation because D_800E8060 is declared u32 -- do not "fix" it.

46. **PORT-seeded switches duplicate the shared tail.** Six cases each calling
    `curObjSleepForever()` where the ROM has ONE call past the switch that
    every case branches to: hoisting it took func_80223200_ovl19's word count
    from 800 to the exact 794. Same bug and fix in func_802248C0_ovl19.

47. **A frame-size "floor" is usually a deletable local.** Two pointer temps
    were the entire 8-byte excess on func_80227F90_ovl19, whose note had
    previously said "no source spelling reaches it".

48. **Beware verify.py's denominator.** It scores against
    max(target, current), so a draft with SPURIOUS instructions shows a
    flattering "matched/total". If the word count is above the ROM's, fix the
    count before reading the score.

49. **An implicit int from a bare call counts as a declaration.** With nothing
    in scope, `f(x)` creates `int f()`, which then collides with the real
    declaration elsewhere in the TU. So a MISSING prototype and a WRONG
    prototype produce the identical IDO error; read the "previous declaration
    at line N" it names before assuming which one is wrong.

50. **Order a statement before its neighbour to share a load.** In
    func_801F11A8_ovl10 the ROM reads objId three times and shares the FIRST
    read between the D_801F4D60 store and the D_800E1B50 index; moving
    `ent = D_800E1B50[objId]` ahead of the store was worth 118 words
    (139 -> 21). Where two statements both index the same global, their order
    decides which read IDO shares.

51. **A float literal may be a named extern.** 1.3f in func_801F11A8_ovl10 is
    D_801F4C94_ovl10, worth 3 words -- and verify.py masks LO16, so this class
    is invisible to it. Check the listing's %lo relocations, not just the
    constant's value.

52. **Prove a gate bites before trusting it.** In an all-pragma TU
    `verify.py --all` reports "0 match, 0 diff", which means zero checks, not
    correctness. The objdump-vs-build/ diff is the gate there -- and the lane
    that used it first inserted a dummy function to confirm .text moved
    (13360 -> 13376) and that restoring returned byte-identical.

53. **A fourth padding-trap class: SHARED LATE-RODATA CONTENT.** verify.py can
    report MATCH, .text can be exactly the right size, and un-guarding can
    still corrupt the ROM -- because the function's own late_rodata pool
    shifts the CONTENT of the TU's shared rodata section by 4 bytes from that
    function onward. Total section size is unchanged, so check_tu_size and
    check_sections both pass. Caught on func_801D650C_ovl9 by
    `objdump -s -j .rodata` on the object before and after un-guarding.
    Screen any un-guard in a TU with migrated late_rodata that way, and note
    that check_rodata_bytes.py only sees it if build/src/<file>.o exists --
    it silently skipped 35 of 136 subsegments until that was fixed.

54. **The frame is arithmetic, not a sweep -- and DECLARATION COUNT positions
    the compiler temp.** Reproduced on three functions in three overlays
    (func_801A8BAC_ovl7, func_801DC8E4_ovl16, func_80218248_ovl9):

        frame      = align8(0x1C + 4n + 4)
        spill slot = frame - 4n - 8

    where n is the number of DECLARED scalars. Register-allocated ones are
    not free -- they still count. So when the ROM's spill sits one word off,
    the answer is usually to DELETE a declaration rather than add a pad.
    func_801A8BAC_ovl7 needed n=3 where the draft had n=4: `temp_f0`'s last
    read is inside the sqrtf argument, so the result reuses it and `temp_f4`
    disappears. Its note had said "no 4-byte local can buy the slot for free"
    because every pad grew the frame -- true, and pointed the wrong way.

    This turns several "+8 frame anomaly, decidable but unreachable" notes
    into arithmetic. Tabulate n against the frame before sweeping anything:
    func_80218248_ovl9 goes 6 decls -> 0x30/36 diffs, 3 -> 0x28/49, 2 ->
    frame exact 0x20/71, which says plainly what shape is needed.

55. **A callee declared NOWHERE is the same bug as one declared only in the
    PORT arm.** func_801F2964_ovl10 (690 words) and func_8019E128_ovl7 (462
    words) both closed on this and both had been documented as register
    floors. In the first, nine callees were declared only under `#ifdef PORT`;
    in the second, the same nine-callee shape was declared in no header at
    all. Either way every call in the compiled arm is an implicit `int f()`,
    IDO treats $v0 as defined by the call, and refuses it for the next temp --
    which reads as a post-call $v0/$v1 -> $v1/$a0 rotation.

    Audit whether a draft's callees are declared AT ALL before touching the
    body. `gcc -fsyntax-only -Wimplicit-function-declaration` with the draft's
    own macro state finds the first form; the second needs a grep of the
    headers the TU includes, because the call compiles silently in both.

    Beware the knock-on: prototyping a callee can turn an existing zero-arg
    call elsewhere in the file into a hard error, since CC_CHECK compiles
    guarded arms with -DNON_MATCHING. func_8019E9F0_ovl7 needed its signature
    corrected to (GObj *) in the same change -- justified independently, as
    the ROM jals func_8019E128_ovl7 twice with $a0 untouched.

    **SCOPE CORRECTION, measured 2026-08-25 on three separate $v0/$v1 residues
    (func_800A8CE0 and func_800A84F0 in ovl1_3.c, func_800F72B0 in ovl2_2.c).**
    A $v0/$v1 rotation next to a call is NOT sufficient evidence for lever 55,
    and two of the three cases had a genuinely missing prototype yet did not
    move. In ovl1_3.c both `dma_read` and `func_800A8358` really are implicit
    `int f()` in the matching build (dma_read is declared only in
    src/main/dma.h, which no TU includes; func_800A8358's only declarations sit
    inside its own guarded arms) -- and adding both at file scope is BYTE-INERT
    for the whole TU (.text identical, 12752 bytes) and leaves the residue at
    2/33. In ovl2_2.c the opposite experiment is equally inert: retyping
    `void func_800A9864(...)` to `void *`, and then deleting the declaration
    so the call really is implicit, both score 2/85. So IDO does not gate $v0
    on the callee's return type in these shapes.
    Audit the prototypes anyway -- it is cheap and it is a real type fix -- but
    A/B it with the objdump .text diff and expect nothing from the score. When
    the file is all-pragma, that diff is the ONLY gate (lever 52).

56. **An UNBRACED loop body schedules differently from the braced one, and it
    can be the whole residue.** IDO's 4x loop unroller picks the delay-slot
    store differently: `while (p != end) { *p = M; p++; }` and the braced
    `for (; p != end; p++) { *p = M; }` and `while (p != end) { *p++ = M; }`
    are all byte-identical and all emit the stores rotated
    (-0xC/-0x8/-0x4 then -0x10 in the delay slot), where the ROM emits
    -0x10/-0xC/-0x8 then -0x4. Dropping the braces --
    `for (; p != end; p++) *p = SAVE_INIT_MAGIC;` -- took func_800B8E00
    (save_file.c) from 4/77 straight to MATCH and un-guarded byte-exact.
    Scope, measured: it is the LOOP BODY's braces that matter. Unbracing
    single-statement `if` bodies is inert (func_8017462C_ovl5, 4/140 either
    way), and unbracing a `do { ohSleep(1); } while (...)` did not move a
    residue that lives in straight-line code after the loop
    (func_801E05A8_ovl15, 2/615 either way). Reach for this whenever the
    residue is a rotation INSIDE an unrolled or scheduled loop body.

58. **A `(void)` om-proc that the ROM calls with $a0 UNTOUCHED is really a
    `(GObj *)` proc handing its own parameter on.** This is lever 55's family
    seen from the callee side, and it is the cheapest closure in the tree when
    it fits. Signature to look for: the residue is a ONE-SLOT ARGUMENT
    ROTATION, every value the function holds sits one register low ($a0 where
    the ROM uses $a1), and somewhere there is a `jal` whose $a0 nothing in the
    function ever writes. That untouched $a0 is the incoming parameter being
    passed through; declaring it and passing it occupies $a0, and every temp
    below falls onto the ROM's register. Measured 2026-08-25, two closures in
    one file: func_801B726C_ovl7 7/85 -> MATCH and func_801B793C_ovl7 7/28 ->
    MATCH, both by adding `GObj *arg0` and writing `func_801A0D74_ovl7(arg0)`.
    Three cautions, all measured:
      - The parameter must be USED **by your draft**. If your draft cannot use
        it, IDO homes it (`sw $a0, N($sp)`) and adds an instruction the ROM
        does not have. That is not the same as the ROM homing it -- see
        LEVER 67(e), which splits the three cases -- and the usual reason your
        draft cannot use it is that the callee is itself declared `(void)`
        (LEVER 68).
      - The callee may have no prototype in the TU. If an earlier function
        already calls it bare, that call created an implicit `int f()` and any
        disagreeing declaration is a hard IDO error (lever 49). Spell the
        in-body declaration `s32 f();` to match the implicit one rather than
        "correcting" it at file scope.
      - Check the function-pointer table the proc is stored in first --
        ovl7_11's `D_800DF150` is declared `void (*[])(struct GObj *)`, so the
        `(void)` head was a type error too and the fix is a real correction.
    Negative control on the same page: func_801B73C0_ovl7 has the identical
    $a0-rotation smell but its ROM prologue HOMES $a0 and both its calls set
    $a0 themselves, and it stays at 99/125.

    **ENUMERATING THE POPULATION.** Use `tools/decomp/lever58_screen.py`; it is
    re-runnable and it is the discriminator written down.

        python3 tools/decomp/lever58_screen.py func_801B3C54_ovl7 ...
        python3 tools/decomp/lever58_screen.py --all-guarded src/ovl7/ovl7_10.c

    It walks the listing's CFG and reports, per function, the calls reached
    with $a0 untouched on every path, the instructions that READ $a0 before
    anything writes it, the home store, and the reloads out of the home slot.

    An earlier version of this entry carried an inline grep that enumerated 43
    drafts by their PROLOGUE. That screen was worked end to end and **two of
    its rules are false**; see LEVERS 67-69 for what replaced them, and do not
    re-derive the grep:
      - "`sw $a0` ANYWHERE in the listing is the disqualifier" -- NO. A home
        store means the source HAD a parameter. func_801DBA8C_ovl17 matches
        with an unused homed one; func_80164A34_ovl5 is homed and re-read ten
        times out of its home slot and declaring it was worth 12 words;
        func_80199A38_ovl7 is homed, never re-read, and worth 3.
      - "Sort by frame and start at 0x18" -- frame size is not the
        discriminator. func_801AEE04_ovl7 closed at frame 0x20 with a stack
        spill slot, which is the shape the ovl9_13 note said needed a theory.
      - and scanning only the first 14 lines for a `$a0` write misses the
        body: of the 43, 31 write $a0 before every call they make.

    The cautions above still hold, with one correction: "the parameter must be
    USED" is really "your DRAFT must be able to use it". See LEVER 67(e).

59. **An early test that shares a load with a later argument makes IDO
    duplicate the whole argument setup into every exit.** func_800BB198 tests
    `head->item->unk10` at the top and passes `head->item` to the call after the
    loop; IDO CSEs the two `head->item` loads and then copies `lw item / move
    $a0 / move $a1` into BOTH loop exits -- four words over the ROM, and a
    45-instruction function reading 28/49. Spelling the argument through the
    other name for the same value (`cont->unk04->item`, since `head` is only
    ever assigned from `cont->unk04`) breaks the CSE and it went straight to
    MATCH. A `(volatile T *)` cast on the early test does the same thing and is
    uglier. Reach for this when the draft is LONGER than the ROM and the excess
    is a repeated argument-setup tail rather than a repeated branch.

57. **The frame law behind lever 54, in the form that lets you predict a
    shape you cannot reach.** Re-derived on func_801720D8_ovl5 and
    func_801721CC_ovl5 (both of which had been sealed as "frame only" after
    ten declaration permutations made BEFORE lever 54 existed):

        frame = align8(0x18 + 4*ndecl + 4*ntemp)
        declared locals top-down from frame-4 in DECLARATION order,
        compiler temps immediately below them in CREATION order,
        align8 slack at the BOTTOM.

    Lever 54's `align8(0x1C + 4n + 4)` is the n-declared/two-temp case of this,
    and its `spill slot = frame - 4n - 8` names the SECOND compiler temp.
    Tabulating n against the frame is still the right first move -- but also
    tabulate t, because on these two functions **t moves to cancel n**: every
    declared pointer buys a dead home slot, every inlined one buys an extra
    compiler temp, and n+t stayed pinned at 4 across every spelling while the
    ROM spends 3 and 2 respectively. When n+t is pinned, the residue is one
    compiler temp too many and no declaration count reaches it -- stop sweeping
    and seal it with the table.
    Useful corollary measured on the way: an initialised-at-declaration pointer
    gets NO home slot (`Unk801875F0 *p = &arr[i];` as the only local gave frame
    0x20, two words), so "declared" and "homed" are different things and n
    counts the former.

60. **A sweep over declaration ORDER at a fixed COUNT cannot find a residue
    whose cause is the count.** func_800A8CE0 carried a note recording 120
    declaration permutations swept at a 2/33 floor, plus a table of five
    named arrangements and their scores. Every one of the 120 held the same
    five declarations and only moved them; the ROM has FOUR declarations and
    ONE compiler temp. Reading the ROM's slots (0x1C, 0x20, 0x2C in a 0x30
    frame) through lever 57's law says which it is, and the arrangement that
    matched was not in the search space:

        size(0x2C)  pad0(0x28)  base(0x24)  buf(0x20)   + temp(0x1C)

    The variable the sweep could not give up was the ADVANCED POINTER, and in
    the ROM that is not a local at all -- it is the temp. So the question to
    ask when a spill lands one word off and every ordering has been tried is
    not "which order" but **which of the ROM's values is a temp rather than a
    local**, and then which source shape makes it one. Here that shape was
    keeping the base live and subscripting it (`base[arg0]`, `base[arg0 + 1]`)
    instead of advancing it (`entry += arg0`) -- which, as a bonus, is also
    what fixes the register half of the residue, because two live values are
    what make IDO use the ROM's $v0/$v1 pair instead of reusing $v1 for both.

    The general form: a note that says "all N permutations swept" is a claim
    about a search space, not about the function. Check what the space held
    fixed. Lever 57's corollary that "declared" and "homed" are different
    things is the same observation from the other side.

61. **An empty `do { } while (0);` is a SCHEDULING BARRIER, not m2c noise.**
    m2c emits `do { ... } while (0)` to encode a `goto` out of a block, and
    the standing habit is to delete those as artefacts on the way to a
    readable draft. On func_801E00B8_ovl11 an EMPTY one is the difference
    between 16/45 and MATCH (44), with every other part of the source already
    correct. It emits no instruction of its own; what it changes is how far
    IDO is willing to move the instructions around it -- here it stops the
    block that computes the Y difference being folded into the multiply that
    consumes it, which is what puts that value on the ROM's $f14 instead of
    $f0.

    So when a residue is "the right instructions in the wrong order" and no
    declaration or expression spelling reaches it, try inserting an empty
    do-while at the seam. And when cleaning up an m2c draft, do not delete a
    do-while that wraps nothing until you have re-measured without it.

    Found by the permuter, which reached score 0 on this function in about a
    second and whose answer was three separate changes at once (the extra
    pointer local, the extra f32 temp, and the do-while). Transcribing two of
    the three by hand gave 16/45 and looked like a failed candidate; the
    barrier was the part that did not look like it could matter. Worth
    remembering when a permuter win is being cleaned up: check what every
    piece of it is doing before dropping any of it.


62. **A byte offset the ROM steps by 4 alongside a counter is IDO's OWN
    strength-reduced induction variable, not a source local.** Written out as
    a second variable, its `or $sN, $zero, $zero` init is an ordinary source
    statement and schedules AHEAD of the loop-invariant address hoists;
    indexing with the counter instead (`((s32 *)seg[6])[i]`) lets the strength
    reducer emit that init where the ROM has it, AFTER the hoists.
    func_800F6E30 went 2/207 -> MATCH on the first compile, against a note
    that had sealed the residue as "a scheduler tie-break, not a source
    shape".

63. **A nested call `g(f(...))` makes IDO reserve a 4-byte stack temp for the
    intermediate**, lifting the locals base one word and rounding the frame up
    by 8. A named local for the intermediate costs the same 4 bytes; assigning
    it into the ALREADY-HOMED PARAMETER costs nothing. func_8021992C_ovl9,
    4/21 -> MATCH. Worth sweeping every remaining "+8 frame anomaly, decidable
    but unreachable" note against this -- src/ovl14/ovl14.c had found it once
    on func_801DEC34_ovl14 and never generalised it.

64. **Check where a draft's named externs are DEFINED before trusting its
    score.** func_8017E284_ovl3 read 3/178 with `D_801976A0_ovl3` and
    `D_801976A4_ovl3` as externs -- both defined only by that function's own
    listing `.late_rodata`, so un-guarding leaves them undefined at link and
    the seed could never be sealed at any residue. measure_seeds had been
    advertising it as one of the tree's closest. Written as the literals the
    migrated `.rodata` subsegment expects, the 3-word schedule rotation
    disappears on its own.

65. **Read a matched sibling's OBJECT rather than re-spelling the
    expression.** func_80105284's residue was IDO's temp counter burning slots
    for nodes it never materialises, and three spellings of the same store
    burn 2 / 0 / 1 slots. `objdump` on the already-matched func_80109FAC and
    func_80105530 showed which spelling the ROM used, with no compile at all.
    Measured on the way: `or` with two REGISTER operands is NOT slot-invariant
    -- the commutative floor elsewhere in this file is about arithmetic with a
    MEMORY operand, and the two are different.

65b. **Permutation or not: compare the OPCODES, do not judge by eye.** A
    register permutation renames fields at ALIGNED positions, so every diff
    shares its top six bits with the target. A draft that has genuinely
    diverged does not. One command settles which, and it decides whether a
    function wants a spelling sweep or a re-derivation:

        VERIFY_MAXDIFF=400 python3 /tmp/scratchverify.py <file.c> <func> \
          | grep -a '^  \[' > /tmp/d.txt
        python3 -c "
        import re
        s=d=0
        for l in open('/tmp/d.txt'):
            m=re.search(r'target=([0-9A-F]{8}).*?current=([0-9A-F]{8})', l)
            if m:
                t,c=int(m.group(1),16),int(m.group(2),16)
                s+= (t>>26)==(c>>26); d+= (t>>26)!=(c>>26)
        print(s,'aligned renames,',d,'genuinely different')"

    Measured on func_8017EDDC_ovl3, whose note claims a callee-saved
    permutation and whose score is 208/248: 38 aligned renames and 127
    genuinely different opcodes. The first ~45 words really are a rename
    cascade and everything after diverges -- so the note is describing the
    part of the function it read and not the part that matters. VERIFY_MAXDIFF
    matters: the default caps the diff listing at 40 lines, which on a
    200-diff function shows you only the aligned prefix and makes every such
    draft look like a permutation.

66. **A branch offset that is wrong is never a register residue -- but read
    WHICH instruction the block gained before calling it a semantics bug.**
    func_80219E0C_ovl9's 30 diffs began at a `bc1f` with the wrong
    displacement, its two `if` arms were swapped, and fixing that real bug
    closed the function. So: when the first diff is a branch offset, stop
    looking at registers.

    THE CAVEAT, measured on func_8016B410_ovl3 (11/207) the same day this
    lever was written, because the lever as first stated would have sent a
    lane hunting a bug that is not there. Its first diff is
    `beqz $v0, +0x0A` against our `+0x09` -- the ROM's skipped block is one
    instruction longer -- and the extra instruction is
    `lui $a2, %hi(D_8012BCA0)`, an ADDRESS MATERIALISATION for a symbol used
    after the join. That is the scheduler hoisting a loop-invariant address
    into the block, not the source saying anything different.

    The discriminator is what the extra instruction IS:

      * a `lui %hi(...)` / `addiu %lo(...)` pair, or a load of something used
        after the join -> scheduler motion. The source's blocks agree.
      * an arithmetic or a call belonging to the block's own work -> the
        blocks really do differ and the source is wrong.

    Diff the two blocks instruction by instruction before deciding; the offset
    alone does not tell you which case you have.

67. **LEVER 58, SCOPED BY MEASUREMENT: the test is a call REACHED with $a0
    untouched, not a prologue that lacks `sw $a0`.** A bloc of 36 guarded
    drafts was enumerated mechanically as "declared `(void)`, has a `jal`, no
    `$a0` write in the prologue, no `sw $a0` anywhere". Only SEVEN of the 36
    have the shape the lever needs. Four facts, each measured on that bloc:

    a) **$a0 is caller-saved, so only the FIRST call on each path can be a
       pass-through**, and a `jal`'s DELAY SLOT executes before the transfer.
       Screening for "no `$a0` write before the jal" in listing order without
       those two rules produced 13 false candidates out of 36; with them, 8.
       `tools/decomp/lever58_screen.py` is that screen written down -- it walks
       the listing's CFG (jump tables included) and prints, per function, the
       calls that are reached with $a0 still holding the incoming argument.

    b) **The callee must actually CONSUME $a0.** Of the 8 survivors, three
       call a genuinely 0-argument function (func_8011C8F8 -> func_80112A0C,
       func_8011E548 -> func_80121194, func_800A34C8 -> six `(void)` procs;
       all matched, all verified against their objects not their declarations)
       and two call an `(f32)` one, where the argument goes in $f12 and $a0 is
       simply unused (func_801543C8_ovl4 / func_801548BC_ovl4 ->
       func_800AECC0). Untouched $a0 in front of a call that does not read it
       is not evidence of anything.

    c) **FRAME SIZE IS NOT THE DISCRIMINATOR.** The three closures that found
       this lever all had frame 0x18 and the ovl9_13 negative control has
       0x20, so the note there asked for "a theory for why the ROM can hold a
       live parameter in $a0 through a frame that has stack locals". There is
       none to find: func_801AEE04_ovl7 closed at frame 0x20 WITH a stack
       spill slot at 0x18. What separates them is only the home store, and the
       home slot for an incoming argument is at **frame+0**, outside the
       frame -- `sw $a0, 0x20($sp)` for a 0x20 frame. Read that offset, not
       the frame size.

    d) **A SECOND signature the "clean jal" screen misses: the function READS
       $a0 before anything writes it.** `lw $s1, 0x3C($a0)` (func_801E4668_
       ovl17) and `or $s0, $a0, $zero` (func_8015CE74_ovl5) are both incoming
       parameters used directly rather than handed on, and neither function
       has a pass-through call at all. Screen for a read as well as a call.

    e) **A ROM home store is NOT a veto, and lever 58's caution reads more
       sharply split three ways.** What the caution is really about is a
       parameter YOUR DRAFT cannot use:
         - ROM homes $a0            -> the source had a parameter, used or
           not, and declaring it REPRODUCES that store. func_801DBA8C_ovl17
           matches with an unused one.
         - ROM does not home it, but a call or a read consumes it -> a
           parameter that is used. Declare it AND use it.
         - ROM does not home it and nothing consumes it -> there is no
           parameter, and declaring one costs a word, because IDO homes what
           your draft cannot use. That is the 38/40 func_801B3C54_ovl7's note
           recorded before its callee was retyped (LEVER 68).

       **AFTER a `sw $a0, N($sp)`, every `lw` from `N($sp)` is a RE-READ of the
       parameter**, and no liveness scan will tell you: the home store is
       normally followed at once by a write to $a0 for the first call's
       argument, so the incoming value looks dead from there on.
       func_80164A34_ovl5 reloads 0x48($sp) TEN times and its draft was
       rebuilding the same value as `GObj *arg0 = omCurrentObj;`.
       `lever58_screen.py` reports these as RELOAD.

       **On a homed-and-reloaded one, declare the parameter and DELETE the
       local that rebuilds it in the SAME edit, or do neither.** Measured on
       func_80164A34_ovl5: baseline 135/223; parameter added with the local
       kept, 194 (the extra declaration grows the frame 0x48 -> 0x50 and IDO
       spills a word at 0x4C); parameter added and local deleted, 123. The
       middle step looks like a refutation of the lever and is really lever 54
       arithmetic -- the declaration count moved.
       Two more of the same class, both worth having and neither close:
       func_801DD760_ovl10 198 -> 186 and func_80199A38_ovl7 198 -> 195, both
       homed-and-unused, both just needing the store to exist.

68. **Retyping a `(void)` callee that only ever passes $a0 on is BYTE-INERT,
    which is what makes LEVER 58's cluster version safe.** func_801B3C54_ovl7
    sat at 4/40 with a note recording that the `GObj *` parameter had been
    tried and scored WORSE (38/40) -- correctly, because an unused parameter is
    homed, and it was unused only because the one function it calls,
    func_801AC840_ovl7, was declared `(void)`. So the caller could not be fixed
    without fixing the callee, and the callee is matched, live C in another
    file.

    Measured: giving func_801AC840_ovl7 its real `(GObj *)` head and passing
    the parameter to the `func_801A0D74_ovl7` call it already makes produces a
    BYTE-IDENTICAL object. Same for func_801B41BC_ovl7, and for
    func_801E4178_ovl17 and func_8015CD00_ovl5's call site in two other
    overlays -- eight objects across four files, .text identical every time,
    objdump A/B against the known-good build. Then func_801B3C54_ovl7 matches.

    The general fact: **a parameter that is only ever passed straight to a
    call whose $a0 the ROM never writes compiles to the same bytes whether it
    is declared or not.** That is why these functions ended up `(void)` in the
    first place, it is why retyping them cannot break the ROM, and it is why
    the `(void)` spelling then blocks every CALLER that needs $a0 occupied.
    When a lever-58 candidate's pass-through target is declared `(void)`, do
    not write a local prototype that contradicts it (LEVER 49 rejects that) --
    retype the definition and every declaration, gate each affected object
    with the byte diff, and expect all of them to be identical. If one is not,
    that callee was doing something else with $a0 and the whole reading was
    wrong.

    Corollary for triage: these functions are almost always stored into a
    function-pointer table that already declares the right type --
    D_800DF150 is `void (*[])(struct GObj *)` and every one of the nine
    assignments of func_801AC840_ovl7 into it was raising IDO warning 709.
    **Grep the warnings, not the listings, to find the next cluster.**

69. **Where diff ZERO is the stack adjustment, LEVER 58 cannot pay.** Two
    negatives, both with unimpeachable evidence for the parameter and both
    worth nothing. func_800BCA5C (ovl1_13) dispatches through D_800D55BC,
    whose four entries all take an argument, from the first call in the
    function with $a0 untouched and no home store -- and declaring the
    parameter moved not one instruction (236/293 either way), because that
    function allocates five callee-saved registers where the ROM uses four
    and its first diff is `addiu $sp, -0x50` against `-0x40`.
    func_8015CE74_ovl5 (`or $s0, $a0, $zero`, so the parameter is certain)
    went 270/277 to 272/277, two words WORSE, for the same reason: frame
    -0x70 against -0x68 and three `lui` bases where the ROM shares one.
    The lever moves a value out of $a0 and lets the values below it fall onto
    the ROM's registers. That is a register-allocation effect, and it has
    nothing to reach when the draft is the wrong SHAPE. Look at where diff
    zero is before spending the compile; if it is in the prologue, fix the
    shape first. Keep the truthful head either way -- but say in the note that
    the score went the wrong way, so the next lane does not read the number as
    a refutation of the lever.

70. **A `c.lt.s` against a materialised zero, on a value that cannot be
    negative, is an `ABSF` macro -- and the macro names its operand THREE
    times.** `include/macros.h` defines `ABSF(x) ((x) < 0.0f ? -(x) : (x))`.
    IDO expands it in place, so the listing shows `mtc1 $zero, $fN` followed
    by `c.lt.s $fSRC, $fN`, a `neg.s`, and -- because the else arm names the
    operand a third time -- a SECOND load of the operand from wherever it
    lives. A draft that writes the same thing as
    `abs = v; if (v < 0.0f) { abs = -v; }` reads the operand ONCE and is short
    the reload, the branch and the negation. Two measurements:

    - func_8017EDDC_ovl3: 205 instructions and 6 branch-likely against the
      ROM's 248 and 9. `D_800E6850[id] = ABSF((D_800E8AE0[id] & 6) ? 2.5f :
      5.0f);` -- the macro triples the whole ternary -- took it to 247/8.
      42 of the 43 missing words were that one macro.
    - func_800A52F0 (util.c): 63 diffs of 69 down to 40, by writing
      `atan2f(ABSF(x), ABSF(arg1))` instead of two hand-written sign tests.
      The tell in the listing is the pair of reloads from arg1's home slot
      `0x24($sp)` into $f4 and then $f14 around a single `c.lt.s`.

    **Enumerate it, do not hunt it.** `tools/decomp/absf_sweep.py` walks every
    guarded draft, collects the registers a listing loads with
    `mtc1 $zero`, counts the `c.lt.s`/`c.le.s` naming one of them, and drops
    any draft that already says `ABS`/`ABSF`.

    That alone reports 207 drafts and most of them are noise, because a
    genuine sign test (`if (vel.y < 0.0f)`) produces the identical compare.
    **The filter that separates them is `neg.s`: the macro's then-arm IS the
    negation, so a listing with no `neg.s` cannot contain an ABSF, whatever
    its compare count.** func_800B531C (ovl1_8) is the clean negative -- eight
    compares against a materialised zero, 478 instructions, and not one
    `neg.s`; its `mtc1 $zero, $f12` are 0.0f being loaded into the first FP
    argument register for calls, not a macro. With the filter the sweep
    reports 132, ranked by `min(compares, negs)`, and it prints both counts so
    you can see which one is the binding constraint. The rank is still a
    strength ordering, not a verdict: read the operand. The macro is the
    reading when every branch of the value is obviously non-negative, or when
    the operand is reloaded twice around one compare.

    Caveat, from func_800A52F0's residual 40: fixing the macro does not fix
    register allocation. That ROM promotes arg0 to the callee-saved `$f20`
    (`sdc1 $f20, 0x10($sp)`, frame 0x20) while every draft shape tried --
    param direct, copied to a local, copied to a local plus separate `absX`
    locals -- homes both floats and gets frame 0x18. Score the macro change on
    its own and record the leftover; do not spend the session on the residue.

71. **Do not read for a barrier placement -- sweep for it.** LEVER 61 says an
    empty `do { } while (0);` is an IDO scheduling barrier. What it did not say
    is where to put one, and that is the hard half: the symptom appears as a
    register-name disagreement several instructions away from the statement
    that actually needs pinning. func_800BDE0C (ovl1_13) carried a note calling
    its 13/72 residue "a single caller-saved register swap" for as long as the
    note existed. That was the symptom. The cause was that IDO hoisted the row
    pointer setup up past the `lhu` of the fill value, and one barrier round
    the row loop took it to 2/72.

    `tools/decomp/barrier_sweep.py <file.c> <func>` places one barrier before
    each candidate statement in turn and scores it on a scratch copy. It skips
    declarations (a barrier before one is not C89), labels, `case`, `else` and
    closing braces. Validated both ways: on func_800BDE0C's draft with the
    barrier removed it reports base 13/72 and finds 2/72 at eight equivalent
    placements; on func_800B9FE0 (save_file.c, base 4/169) it reports five
    placements between 7/169 and 118/169 and lands on none, which is what a
    genuine negative looks like as distinct from a sweep that failed to run.

    Swept and negative, do not re-run: func_800B9FE0 4/169, func_800BB24C
    8/70, func_800BA90C 13/62, func_800A238C 17/45, func_800A52F0 40/69.

    **Know the hit rate before you budget for it.** Across four lanes on
    2026-08-25 the sweep was run on roughly 100 drafts -- 34 in ovl2/ovl7/ovl13,
    ~30 in ovl9/ovl15/ovl16, 18 more in the same scope, 15 in
    ovl17/ovl4/ovl10/ovl19, 17 in ovl3/ovl5, and a handful in ovl1/main -- for
    THREE wins: func_800BDE0C 13/72 to 2/72, func_800F64B0 23/224 to 13, and
    func_801EEC28_ovl9 45/277 to 7/277. About one in thirty. That is a cheap
    lottery ticket worth buying on a near miss you were going to read anyway,
    and it is NOT a plan step you can schedule work around. Both of one lane's
    wins that day came from reading listings; the sweep found neither.

    ovl2/ovl7, swept 2026-08-25, ALL NEGATIVE (8 sweeps, 0 wins) --
    func_801173F4 8/95, func_8011C4E8 8/142, func_801B6F18_ovl7 11/165,
    func_800F8078 16/75, func_80109504 19/123, func_800FC03C 20/74,
    func_8010B284 23/127, func_801105E8 27/326. These were the whole
    under-30%-residue population of ovl2+ovl7+ovl13 as measure_seeds.py
    measures it, so the barrier lever is now exhausted for that scope.

    ovl9/ovl15/ovl16, swept 2026-08-25, ALL NEGATIVE (18 sweeps, 0 wins) --
    every draft in that scope whose residue was under ~30% of its instruction
    count, which is the population LEVER 71 says to sweep:
      func_801DC8E4_ovl16 7/43     func_801E5080_ovl15 12/167
      func_801DCDA8_ovl15 19/165   func_801DDA98_ovl16 37/239
      func_801EEC28_ovl9  7/277    func_801DCE6C_ovl9  8/260
      func_801DE280_ovl9  27/227   func_801E27BC_ovl15 40/484
      func_801DCBF8_ovl16 32/116   func_802071AC_ovl9  12/67
      func_802050E4_ovl9  13/60    func_80205360_ovl9  20/86
      func_801E8A80_ovl9  24/127   func_801EA190_ovl9  22/90
      func_801D56D0_ovl9  21/96    func_801E85CC_ovl9  35/125
      func_801EDBEC_ovl9  48/286   func_801E7BD0_ovl16 16/196
    That is 18 negatives on top of the ovl1 lane's 5 and another lane's 14, so
    the measured hit rate of the mechanical sweep is now about 1 in 37. It is
    still worth running -- it is free and the one win was worth 11 diffs -- but
    budget it as a lottery ticket, not as a step in a plan, and put the effort
    into reading the listing instead. The two closures in this scope tonight
    both came from reading (a clone-family ABSF on func_801E429C_ovl9, and the
    sp offsets on func_801E7BD0_ovl16), and the sweep found nothing on either.

    The sweep tries the BEFORE placement only. Wrapping a following block is a
    different transform -- before stops motion up past the statement, a wrap
    stops motion out of the block -- so do the wrap by hand once the sweep
    names the statement.

72. **A permuter "win" is a candidate, not a closure, and until 2026-08-25 it
    was often not even the right candidate.** permute_queue.py published
    `hits[-1]` on a zero score: the last `output-<pid>-<n>` directory by
    LEXICOGRAPHIC name. output-<pid>-10 sorts before output-<pid>-9, and
    several pids interleave in one run, so the published source frequently was
    not the one that scored zero -- two of the first three wins had score.txt
    396 and 46. Fixed to read each directory's own score.txt.

    Two consequences worth keeping. First, `tools/decomp/harvest_zero_scores.py`
    walks the working directories instead of the log and found 53 functions
    with a zero-score candidate on disk, 22 of them STILL GUARDED, from runs
    going back sessions. Run it before starting a permuter -- the answer may
    already be sitting in tools/decomp/perm/.

    Second, re-measure every candidate in the tree with scratchverify before
    believing it. asm-differ normalises stack offsets unless `--stack-diffs` is
    passed and that flag went into the queue partway through, so an older run
    can score 0 on a pure frame-size residue. And the permuter compiles a
    PREPROCESSED STANDALONE file whose struct layouts and prototypes are its
    own, so a change that scores 0 there can score worse in the real
    translation unit. Measured: func_80158E98_ovl4's candidate goes 3/163 ->
    24/163 (its extra `f32` declaration moves sp24 from 0x24 to 0x20), and
    func_801E14B0_ovl17's goes 3/61 -> 12/61. Read diff.txt and apply the
    change by hand; never copy source.c into src/.

73. **CORRECTION TO LEVER 70 AND TO absf_sweep.py: an ABSF of a SUBTRACTION
    has no materialised zero at all.** IDO folds the macro's `(a - b) < 0.0f`
    into a direct compare of the two operands -- `c.lt.s a, b` -- so the
    whole population of `ABSF(x - y)` sites contains no `mtc1 $zero` and the
    sweep's compare-against-materialised-zero filter cannot see them.
    func_801B9E80_ovl7 is the proof: it MATCHED on the macro, and the only
    `mtc1 $zero` in its listing belongs to an unrelated `while (cur < 0.0f)`
    wrap loop. It was in the candidate list by accident.

    **The reliable tell is the operand computed more times than the source
    needs it, with one copy UNREACHABLE.** The macro names its argument three
    times, so an `ABSF(a - b)` emits three `sub.s` into the same register: one
    in the `bc1fl` delay slot, one in the then-arm before the `neg.s`, and one
    at the fall-through label that no path reaches. Nothing else in IDO's
    output emits a dead arithmetic instruction. Rank on `neg.s` and on that
    duplication, not on `mtc1 $zero`.

    **And the operand must NOT be a named variable.** This is where the
    closure actually lived. In func_801B9E80_ovl7 the ROM's `$f14` is the
    MACRO'S OWN temp, CSE'd into all twelve later comparisons of the same
    difference, with `$f12` the macro's result. Any `diff = cur - target;`
    statement gives the subtraction its own register first and pushes the abs
    result into the higher one -- a clean $f12/$f14 transposition across 24
    words. Measured on that function: m2c's if/else with the subtraction
    duplicated in both arms 24/219; `diff` hoisted with `mag = ABSF(diff)`
    193/219; `diff` hoisted with `mag = ABSF(cur - target)` also 193/219;
    the difference spelled out at every one of the twelve sites, MATCH.
    Naming it costs 169 words. LEVER 60's question -- which of the ROM's
    values is a temp rather than a local -- is the same question here.

    **SECOND CONFIRMATION, on a function where the macro DID pay
    (func_801E35D4_ovl16, 452/455 -> 141/455).** Its limb deltas are
    `dx = ABSF(ABSF(gEntitiesNextPosXArray[t]) - ABSF(srt.x));`, and the
    listing shows exactly what this entry predicts: the outer macro's test is
    a bare `c.lt.s $f14, $f2` of the two inner ABSF results with no zero of
    its own, and each arm recomputes BOTH inner ABSFs and the subtraction.
    So `ABSF(a - b)` is not always a false positive -- what makes it real
    there is that the difference is never named, exactly as this entry says.
    Note the two inner ABSFs DO each materialise a compare against the
    hoisted `$f20` zero, which is why the sweep saw the function at all: an
    `ABSF(ABSF(..) - ABSF(..))` is invisible to the zero filter at the top
    level and visible one level down.

    Three more measurements from the same sweep, so nobody re-spends them:
      - `ABSF(ABSF(x))` is a real shape (func_801BB3D4_ovl7): the outer macro
        names its operand three times and its operand is a macro, so the
        listing holds three complete inner expansions.
      - LEVER 3's ABS() substitution is NOT a general alternative to ABSF on
        an f32. On func_8019CE28_ovl7 the integer zero forces a conversion and
        the draft grows past the ROM's word count: 70/106 -> 78/112.
      - The macro pays NOTHING while the frame is wrong. func_801DF5D0_ovl13
        (14 expansions, two of them with a call as the operand -- six
        `jal func_8019DA70_ovl7` in one listing, LEVER 40 in the flesh) and
        func_801A7524_ovl7 (23/22, the sweep's number two) both have diff 0 at
        the stack adjustment, -408 vs -0x70 and -600 vs -0xB8. Converting
        ovl13's six mechanically-recognisable sites scored 1147/1239,
        unchanged. Screen candidates on where diff 0 is BEFORE converting
        anything; LEVER 69's rule generalises past LEVER 58.

74. **The ABSF list reads the WORKING TREE, so it lies while other lanes are
    mid-experiment.** I ran absf_sweep.py, told two lanes that
    func_8019CE28_ovl7 had dropped out, and it had not: another lane had an
    ABSF experiment sitting in that draft at the moment I swept, the sweep
    excludes any draft that already says ABS/ABSF, and it came back at 10/4 as
    soon as that lane reverted. The lane I had told to skip it worked it
    anyway, which is the right instinct. Re-run the sweep yourself; a list
    someone pasted at you is a snapshot of their working tree, not of yours.

    `absf_sweep.py --screen` now scores every candidate and prints where its
    FIRST diff is, flagging the ones whose PROLOGUE is wrong. That is not a
    refinement, it is a precondition -- and the size of the problem is bigger
    than the four functions that prompted it. **Screened 2026-08-25: of 118
    candidates, 64 have a wrong prologue.**

    The first cut of the screen tested index 0 alone and a lane refuted it:
    prologues in this tree routinely materialise a global BEFORE the stack
    adjustment, so func_801E429C_ovl9 reports its first diff at index 2 and is
    nonetheless completely frame-blocked. It now reads the first four diffs and
    marks any that names $sp with a `*`. On the 118 candidates that remain
    after today's closures it flags 64; the index-0 test flagged 55 of 123 the
    same morning. The two runs are not directly comparable because five
    candidates closed in between, so read 64/118 as the current number and the
    correction as qualitative: a class the screen was handing out as workable
    is not. Forty-five per cent of the
    list cannot move on a macro edit at all, including the four strongest by
    compare count: func_801DF5D0_ovl13 (32), func_801A7524_ovl7 (23),
    func_801DEA5C_ovl17 (20), func_801567B8_ovl3 (14). For those the job is the
    FRAME -- `addiu $sp, -408` against `-0x70` is a declaration-count problem
    (LEVER 54) -- and the macro is downstream of it.

    LEVER 69 makes the identical point about LEVER 58, and between them the
    rule generalises to every lever that edits a function BODY: **look at where
    diff 0 is before spending the compile.** A body edit cannot be scored
    through a wrong prologue. The screen also reports `unscorable` for drafts
    that do not compile alone; those need the compile fixed before anything
    else, and there are eight of them.

    **AND THE 55 IS A LOWER BOUND -- the flag only fires when the stack
    adjustment is diff ZERO, and in this ROM it is routinely not instruction
    zero.** func_801E429C_ovl9 (ovl9_4, the sweep's number eight at 22
    compares) opens `lui $a1, %hi(omCurrentObj)` / `lw $a1, %lo(...)` and only
    then `addiu $sp, -0x60`, so it screens as "first diff 2", reads as clear,
    and is exactly as frame-blocked as the four the flag caught. Any prologue
    that materialises a global before allocating the frame does this. Treat a
    first diff of 1, 2 or 3 as suspect and go and look at the instruction.

    Frame-blocked is not the same as worthless: converting four ABSF sites on
    that function was still worth 422/479 -> 380/479. It means the score cannot
    reach zero, not that it cannot move -- so do not read the leftover as a
    refutation of the macro reading. (The frame there is LEVER 57's pinned n+t:
    every spelling holds declarations-plus-temps at 12 words against the ROM's
    10, and inlining one more local is the negative control at 394.)

    Two false positives from the same sweep, in ovl9/ovl16, so nobody re-costs
    them: func_801E7BD0_ovl16's two compares are 6.283185482f wrap loops and
    its two `neg.s` are a real `-sp38.x` and `-D_800EA8A0[]`;
    func_80205360_ovl9's are a `< 0.0f` clamp sitting next to an unrelated
    `b->pos.v.y = -a->pos.v.y`. A `neg.s` near a compare is necessary evidence
    and not sufficient -- LEVER 73's real tell is the operand computed more
    times than the source needs it, with one copy unreachable.

75. **A file-local helper that is not spelled `static` costs its callers the
    o32 entry sequence.** IDO assigns an interprocedural convention -- values
    held in $t registers across the call instead of homed -- only to a function
    it knows nothing outside the translation unit can reach, and in C that
    means `static`. Sealing __getTrackByte and __readVarLen in libn_audio.c
    took alCSeqNextEvent, which calls them ten times, from 209 words differing
    to 98, and closed both helpers outright. Not a register floor, not a
    scheduling artifact: a missing keyword.

    `tools/decomp/static_sweep.py` enumerates the class -- functions no other
    .c names, no header declares, and no `#pragma GLOBAL_ASM` listing in a
    DIFFERENT object references. **Read the rankings, not the count.** 4873
    definitions in this tree qualify on linkage alone, which is a fact about a
    per-overlay decomp and not a work list. The default output narrows to the
    870 called from a still-guarded draft in their own file. `--near` narrows
    again to the 36 whose caller is within 30% of byte-exact.

    The negative that establishes why the narrowing matters: func_8009C154 in
    ovl1.c has 30 calls from func_8009C4E0, the highest count in the tree.
    Sealing it moved that caller 2221/2261 to 2223/2261 -- 98% wrong before and
    after, no room for the change to show. **Call count without caller
    proximity is noise**, which is the same lesson as LEVERS 69 and 74 from a
    third direction: a lever needs a score that can move.

    Two things the sweep cannot check, so check them by hand before sealing:
    a function stored into a table that another TU dispatches through (the
    entry is a data reference in a `.s` under data/, which this does not read
    -- grep for the name), and verify.py's report, which resolves relocs
    through the global symbol map, finds no global for a local FUNC symbol, and
    prints `RELOC TARGET <tubase> != <addr>`. That line is a tooling artifact
    on the TU base, not a defect; read the object with readelf and gate on the
    ROM. A caller still behind a pragma in the SAME file does not block the
    seal -- asm-processor assembles it into the same object and it binds to the
    local symbol, proven by readelf on libn_audio.o.

76. **LEVER 75 IS AN -O3 LEVER, AND ONLY THIRTEEN OBJECTS IN THIS TREE ARE
    BUILT AT -O3.** Measured 2026-08-25 on all three of the sweep's ovl5
    candidates; the seal is BYTE-INERT in every one, and the Makefile says why.

    IDO's interprocedural register allocation is a `uopt`/`ujoin` pass that
    only runs at -O3. `Makefile:279-286` gives -O3 to the thirteen
    `N_AUDIO_O_FILES` and to nothing else ("These two objects, and only these
    two, need it -- src/main/audio.c is game code and is -O2"). libn_audio.c,
    where __getTrackByte and __readVarLen paid 111 words, is one of them. Every
    overlay is -O2, so `static` there changes linkage and nothing else.

    Three measurements, each with the helpers sealed on a private copy so the
    still-guarded caller's draft really references them (a seal in the tree
    makes an unreferenced static, and IDO REPLACES ITS BODY WITH `jr $ra; nop`
    -- see the correction below):
      - func_80176F04_ovl5 (ovl5_5.c), helpers func_80176EC8_ovl5 (10 calls)
        and func_80171768_ovl5 (2): 5/138 -> 5/138, the same five diffs at the
        same five indices.
      - func_8016F40C_ovl5 (ovl5_4.c), helpers func_8016E650_ovl5 (10 calls)
        plus three more: 25/202 -> 25/202, likewise identical.
      - func_8017232C_ovl5 (ovl5_5.c), func_80172B10_ovl5 sealed in the tree:
        330/508 -> 330/508. Its object is byte-identical to the unsealed one
        apart from the `jal` relocations resolving locally, and the linked ROM
        sha1 is unchanged -- which is the cleanest form of the negative.
    Count the diffs WITHOUT the `RELOC TARGET` lines or the seal looks like a
    regression: verify.py scores a `jal` to a now-LOCAL FUNC symbol as a diff,
    so func_80176F04_ovl5 reads 5 -> 11 and ten of those eleven are artifacts.

    **CORRECTION TO LEVER 75's LAST SENTENCE.** "A caller still behind a pragma
    in the SAME file does not block the seal" is true about LINKING and false
    about compiling. A static function that no *C* code calls is unreferenced,
    and IDO deletes its body: sealing func_80170464_ovl5 and func_80170584_ovl5
    (288 and 264 bytes, called only from func_8017232C_ovl5's guarded draft)
    left two `jr $ra; nop` stubs, shrank ovl5_5.o by 512 bytes and broke the
    ROM. So a helper is only sealable once its callers are live C -- which for
    a caller that is still a pragma means the seal and the un-guard have to
    land in the same commit, and cannot be measured in the tree at all.

    **AND static_sweep.py --near RANKS ON THE FACTORY NOTES, WHICH IS THE ONE
    NUMBER measure_seeds.py EXISTS BECAUSE NOBODY SHOULD TRUST.** It reads the
    last `FACTORY: n/m` in the 45 lines BEFORE the guard opens. Where the note
    lives INSIDE the guard -- the ovl5_5.c convention -- that window holds the
    PREVIOUS function's note. Every ovl5_5.c row is therefore mis-attributed:
    "func_8017232C_ovl5 2/88, the best-conditioned target in the tree" is
    func_801721CC_ovl5's note two functions above it; the real residue is
    328/508 with diff 0 at `addiu $sp, -0x48` against `-0x40`. "12/327" for
    func_80171950_ovl5 measures 317/327, also frame-first. Of the four ovl5
    callers on the --near list only func_80176F04_ovl5 (5/138) and
    func_8016F40C_ovl5 (25/202, note said 12/201) are near-misses at all.
    LEVERS 69 and 74 say to look at where diff 0 is before spending a compile;
    the prior step is to MEASURE the caller rather than read its note.

77. **`multu` against a REGISTER holding a size constant is IDO indexing a
    STRUCT ARRAY. No respelling of an integer multiply reaches it.** The tell
    is an asymmetry inside one basic block, and it is unmistakable once you
    know to look for it. func_80113F08 (ovl2_10.c) hoists
    `addiu $fp, $zero, 0xC` out of the whole function and spends
    `multu $v0, $fp` at six sites -- while two instructions later, in the same
    block, it strength-reduces the OTHER stride in the same statement pair to
    `sll; subu; sll` for `vi * 6`. IDO does not "hoist constant multipliers":
    if the multiplier were a literal it would reduce both. A held size plus a
    general multiply means the source indexed an array whose ELEMENT TYPE is
    that many bytes wide.

    Measured on that function and its sibling func_801133C8: the draft wrote
    `&mesh->header.vertices.VerticesF[vi * 3]` -- an `f32 *` scaled by hand --
    and IDO emitted `li 3` plus a shift. Writing the index for what it really
    is,

        (f32 *) &((Vector *) mesh->header.vertices.VerticesF)[vi]

    reproduces `multu` against the hoisted 0xC on the FIRST compile:
    629 -> 493 of 667 on func_80113F08, 697 -> 685 of 720 on func_801133C8.
    136 words from one cast.

    Two negatives worth not re-spending. Spelling it as a byte offset
    (`(u8 *)base + vi * 0xC`) is inert -- that is still an integer multiply by
    a literal and IDO reduces it identically; func_80113F08's note had
    recorded exactly that experiment as "measured inert" and concluded the
    stride was unreachable. And the s16 model-vertex index two lines down
    genuinely IS `&modelVtx[vi * 3]`, which is why the ROM reduces that one:
    do not "fix" both.

    **ENUMERATING IT.** The whole population is small and mechanical to find:
    a listing that contains a `mult`/`multu` whose SECOND operand is a
    register loaded only by `addiu $rX, $zero, <imm>` with imm not a power of
    two. Across every guarded draft in ovl2+ovl7+ovl13 that is eight
    functions, all in ovl2:

        func_80114A14   32/174   stride 0x14, 1 site   src/ovl2/ovl2_10.c
        func_80100EE4   74/278   stride 0x18, 4 sites  src/ovl2/ovl2_6.c
        func_8010DDA4   98/126   stride 0x18, 1 site   src/ovl2/ovl2_7.c
        func_80100790  203/206   stride 0x60, 4 sites  src/ovl2/ovl2_6.c
        func_800F78E4  457/484   stride 0x30, 1 site   src/ovl2/ovl2_2.c
        func_80113F08           stride 0xC,  6 sites  (closed to 493)
        func_80102570  650/706   stride 0x14, 3 sites  src/ovl2/ovl2_7.c
        func_801133C8           stride 0xC,  6 sites  (closed to 685)

    Rank on SITE COUNT, not on residue: the two that paid had six sites each.
    The one-site entries are worth a word or two at best.

    **AND SCREEN THE DRAFT BEFORE CONVERTING, because a scaled scalar index
    sometimes produces the multu on its own.** Measured on func_80100EE4
    (ovl2_6.c, 74/278, four sites at stride 0x18): its draft writes
    `rect = &D_8012BB98[idx * 6]` on an `f32 []`, and that ALREADY compiles to
    the ROM's `multu $a3, $t1` against a hoisted 0x18 -- none of the four
    sites appears in the diff at all. Rewriting it as a 24-byte struct index
    is exactly inert, 74/278 either way.
    So IDO's choice between `multu` and strength reduction is not simply
    "struct array vs scaled index"; the same TU reduces `vi * 3` on an f32
    array (byte offset 0xC) and does not reduce `idx * 6` on one (0x18). What
    LEVER 77 actually gives you is a reading for a specific residue: **the ROM
    has `multu` against a held size and YOUR DRAFT has `li N` plus shifts at
    that spot.** If the multu is already matching, there is nothing here.
    Grep your own diff for `multu` first; it costs nothing and it is the
    difference between a 136-word win and a wasted compile.

78. **SCOPE CORRECTION TO LEVER 13: a pad reserves its words only when it is
    unreferenced AND sits BETWEEN two locals that own stack slots.** LEVER 13
    says pad locals go at the END of the declaration list, and several notes
    have since read that as a placement rule. It is not; it is a statement
    about which direction a KEPT pad pushes the locals above it. Measured
    three ways on func_801133C8 (ovl2_10.c), one compile each:

        u8  pad[88] declared LAST   -> frame 0xC8, dropped whole, not one
                                       byte reserved
        f32 pad[1]  declared FIRST  -> dropped
        f32 pad0[3] between `world` and `mn`, f32 pad1[25] between `mx` and
        `tmn`                       -> frame 0xC8 -> the ROM's 0x138, exact

    In a function with this many register-allocated locals the end of the list
    is the one place a pad is guaranteed to evaporate. LEVER 30 says the same
    thing about scalars ("an unreferenced SCALAR BETWEEN two used locals does
    reserve its word") and the array case is identical -- the operative words
    in both are "between two used locals", not the size and not the type.

    Corollary, and it cost a compile to learn: **the pad count is not portable
    across a reordering.** Moving `rec`/`recIndex` to the front of the same
    function's list, to reach the ROM's 0x130/0x134 spill slots, dropped words
    elsewhere in the list, and pad1 had to go 17 -> 41 to hold the SAME 0x138.
    Re-tune the count after every order change; a frame that was exact before
    the move will not be exact after it.

    Also measured on the way, against the "frame is arithmetic" family
    (LEVERS 54/57): a USED temp is not a declaration for this purpose. The
    previous note here had tried eighteen per-component `f32` temps and
    reported the frame did not grow at all. It does not -- IDO forwards them.
    That is a true measurement pointing the wrong way, and it is what sealed
    both of these functions as permuter-only for several sessions.

79. **`absf_sweep.py --screen` flags the frame only when the first diff is at
    INDEX 0, and that is not the same question as whether the frame is the
    first diff.** func_800FB164 (ovl2_3.c) is reported as first-diff 5 and
    therefore unflagged; instruction 5 IS its `addiu $sp, -0x50` against our
    -0x78. Five prologue words happened to match ahead of it. Same for
    func_800FAC74 at first-diff 9 (`sw $ra` at the wrong offset) and
    func_800FE154 at 6. Read what the first diff IS, not where it is -- the
    flag is a convenience, not the screen.

80. **IDO warning 709 does NOT discriminate LEVER 68's class in this tree, and
    the corollary that says to grep it needs this caveat.** LEVER 68 ends
    "grep the warnings, not the listings, to find the next cluster". Done:
    289 distinct 709 sites, 64 of them assignments into the `D_800DEDD0` /
    `D_800DEF90` / `D_800DF150` GObj proc tables. They are not evidence of a
    type disagreement. `src/ovl1/ovl1_6.h` declares those three tables as
    `extern void (*D_800DF150[])(struct GObj *)` with NO prior declaration of
    `struct GObj` in scope, so the parameter type is a fresh incomplete struct
    local to each prototype, and EVERY assignment into them warns -- including
    `D_800DF150[objId] = func_801DB358_ovl13`, whose callee is a correctly
    typed `void (GObj *)`. Verified both directions.

    The discriminator that does work is already in the tree:
    `tools/decomp/check_local_protos.py`, whose CONFLICT section reports a
    definition and its disagreeing declarations by name. It is what found the
    live one left in my scope (`func_801AC840_ovl7` declared `void (void)`
    twice in src/ovl7/ovl7_8.c against its `void (GObj *)` definition in
    ovl7_5.c).

    Adding `struct GObj;` above line 37 of src/ovl1/ovl1_6.h would silence the
    64 and make the grep useful again. It is a pure type declaration and
    cannot move a byte, but it is a shared header -- coordinator task.

81. **GATE A PROTOTYPE CHANGE ON THE LINKED ROM. An object list derived from
    the edit cannot see the TU that breaks.** Two retypes of exactly the same
    shape landed on 2026-08-25 and they went opposite ways, which is what
    makes the rule worth writing down rather than the individual results.

    func_800B2340's third parameter, `u32 track` -> `s32 track`, takes
    func_801D6534_ovl8 from 5/235 straight to MATCH (the u32 makes IDO build a
    conversion node and refuse to coalesce into $a2, which is both the ROM's
    CSE register and the callee's third argument register; the permuter found
    the same thing independently). All fifteen TUs that DECLARE the symbol were
    moved together and the object-level gate -- rebuild, diff the `.text` of
    every affected object -- reported the change INERT across all fifteen.

    It breaks twenty-nine functions in ovl5. `src/ovl5/ovl5_4.c` includes
    `ovl1/ovl1_7.h` and calls func_800B2340 five times WITHOUT declaring it,
    so it never appeared in the grep that built the object list, and its
    codegen depends on the u32. Full rebuild both ways: with the retype 5577
    byte-exact and 29 REAL DEFECTS, without it 5606 and 0. Reverted; the
    measurement lives in func_801D6534_ovl8's note.

    func_800F8728's first parameter, `s32` -> `u32`, is the same job and it
    stands: full `rm -rf build/src` rebuild, sha1 6cea2d46, check_tu_size 0,
    verify_rom 5606 byte-exact and 0 real defects.

    What separates them is the INCLUDER SET, not the object diff.
    `src/ovl2/ovl2_2.h` has exactly one includer in the tree; `ovl1/ovl1_7.h`
    has many. So, before any header retype:

        grep -rl '<header path>' src/          <- the set that actually moves
        grep -rn '<symbol>' src/               <- only the set you can see

    and gate on `bash tools/decomp/mk.sh` + the sha1 + `check_tu_size.py` +
    `verify_rom.py` with 0 REAL DEFECTS. The object diff is still worth
    running -- it tells you WHICH object moved when something does -- but it
    decides nothing on its own. LEVER 52 makes the same point from the other
    side: prove the gate bites before trusting it.

    And when the answer is no, the note is the deliverable. "One function
    against twenty-nine" with both rebuild numbers in it stops the next lane
    re-deriving the same 5/235 case from scratch, which had already happened
    once.
