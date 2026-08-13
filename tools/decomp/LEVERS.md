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

12. **PAD LOCALS GO AT THE END OF THE DECLARATION LIST, not the start.** Later declarations take the LOWER stack addresses, so a trailing pad is what pushes earlier locals UP. Two leading `s32 pad` fixed a frame but left both Vectors 8 bytes low (30/165); the same two declared last put them at 0x4C/0x40 (21/165). This corrects the leading-pad habit several lanes were using.

13. **A switch arm that stores the same value as the default must be folded away.** m2c's natural three-arm `else if` reads correctly and emits four extra instructions; write two arms (149 → 145).

## GUARD ON THE SECOND VARIANT — these are floors, no source spelling reaches them
Whole-function callee-saved permutation; one-slot temp rotation; `mul.s` source operand order (INVARIANT — reconfirmed twice); a CSE'd load landing in the neighbouring register ($v0/$v1, $a2/$a3); IDO folding an address into load offsets where the ROM CSEs it into a spilled register.

## PADDING TRAPS — screen the .s tail BEFORE spending anything
Anchor on the **LAST** `.size` in the listing (anchoring on the first matches a leading `.late_rodata` block and gives a FALSE trap). Three unclosable classes, all of which produce a verify.py MATCH while the TU still shrinks:
  a) last function in its TU with trailing nops;
  b) ex-archive SUBALIGN(16) member (nops round to 16 bytes);
  c) a trailing UNNAMED function (`jr $ra; nop`) inside the target's own `.size`.

## RULES — violating these breaks the ROM for every lane
- Un-guard ONLY when `verify.py` prints MATCH **and** the tail screen is clean.
- Declarations a GUARDED draft needs go INSIDE the guard. A file-scope declaration changes codegen for every function below it.
- Before any prototype/struct change: record every already-matched function's instruction words in the TU, change, re-compare, revert if anything moved.
- NEVER script/regex a replacement of a function definition. Edit one function at a time, by hand. Three separate agents deleted live functions that way tonight.
- Never edit an already-matched unguarded function. Weird IS the match.
- A utilPrintf string must come from THAT function's own listing `.asciz`.
- NEVER run make or mk.sh. NEVER run git. Only verify.py. The manager builds.
