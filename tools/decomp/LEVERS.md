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

So: try the pad, and let the linked sha1 decide in one build. Do not assume it
from the ovl5 precedent. What distinguishes the six working sites from this
one is not yet known, and finding out is worth a note here when someone does. Class (c) is the same shape seen from the other side --
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
