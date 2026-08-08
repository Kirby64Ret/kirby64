# Decomp tooling

Until now these lived only in a session scratchpad outside the repo, so they
would have been lost when the container was reclaimed. They are the checks
this project's correctness claims rest on, so they belong in the tree.

## Verification, in order of authority

`verify_rom.py` -- GROUND TRUTH. Compares every function's bytes in the
LINKED ROM against the base ROM. Relocations are already resolved there, so
nothing is masked and nothing is skipped. Use this before believing anything.

`verify.py` -- per-function, compiles one object and word-diffs it against
its `.s` listing. Fast and good for iterating, but it CANNOT see undefined
symbols, short translation units, segment growth, or any function whose
listing has been deleted (those are reported "unverifiable" and do not affect
the 0-diff line). A green verify.py with a broken link is a state this
project has reached more than once.

`check_tu_size.py` -- each C file's .text vs its yaml subsegment. Catches a
translation unit that came out short, e.g. by losing its trailing padding.

`check_layout.py` -- every C function sits at its true address.

`check_rodata.py` -- baseline-diff of object rodata sizes.

## Working tools

`find_clones.py` -- groups functions by opcode+register skeleton with
relocation immediates masked, to find HAL's reused-code families.

`apply_family.py` + `stabilize.py` -- apply a family's C to every member,
verifying each and rolling back what fails, then re-verify until stable.
The second pass is not optional: a function can verify ALONE and fail IN
PLACE once its neighbours are back at their true sizes.

`fix_rodata_refs.py` -- rewrites float literals as references to the ROM's
own data symbols, for UNMIGRATED rodata segments only (see AGENT_GUIDE.md --
using it on a migrated one produces an unlinkable tree).

`split_ovl.py` + `convert_asm_seg.py` -- scaffold a segment that is still one
monolithic `asm` subsegment into per-function listings.

`setup_permuter.py` -- decomp-permuter integration.

`AGENT_GUIDE.md` -- accumulated rules. Read it before decompiling; several
entries exist because the rule was learned by breaking the ROM.
