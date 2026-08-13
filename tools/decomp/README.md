# Decomp tooling

Scripts used to finish the remaining decompilation and to verify that the
built ROM stays byte-exact. `LEVERS.md` in this directory is the knowledge
base of matching levers (padding traps, dead-epilogue alignment, rodata
models, IDO behaviours) — read it before decompiling.

## The verification chain

Cheapest first; the ROM sha1 is the final authority.

    bash tools/decomp/mk.sh          # serialised build; ends with the sha1 gate
    python3 tools/decomp/check_tu_size.py
    python3 tools/decomp/check_sections.py
    python3 tools/decomp/check_rodata_bytes.py
    python3 tools/decomp/verify_rom.py   # every function's linked bytes vs the base ROM

- `mk.sh` — serialised `make` plus the sha1 check; the only supported way to
  build (parallel unserialised makes have corrupted objects before).
- `verify.py <cfile> [func|--all]` — compile one object and word-diff each
  function against its `asm/nonmatchings/**` listing. Fast iteration tool;
  it cannot see undefined symbols, short translation units, or segment
  growth, so it is never the last word.
- `check_tu_size.py` — each C file's `.text` size vs its yaml subsegment;
  catches a translation unit that came out short (e.g. lost tail padding).
- `check_sections.py` — emitted `.rodata`/`.data` block sizes vs the yaml,
  for segments with migrated rodata.
- `check_rodata_bytes.py` — migrated `.rodata` bytes vs the base ROM; the
  only cheap check that catches a *wrong* (not just duplicated) constant.
- `check_rodata.py` — baseline-diff of object rodata sizes; catches a
  duplicated constant in an unmigrated segment.
- `check_layout.py` — every C function sits at its true ROM address;
  catches layout drift that per-function verification cannot see.
- `verify_rom.py` — ground truth short of the sha1: compares every
  function's bytes in the linked ROM against the base ROM, relocations
  resolved, nothing masked.
- `rom_diff.py` — when the ROM does not match, attributes every differing
  word to a segment/function instead of eyeballing hexdumps.
- `gate_dirty.py` — verifies every C file that is dirty in git; the guard
  against committing an unverified draft.
- `padtrap.py` — shared library (used by `verify.py` and `check_layout.py`)
  that classifies a listing's post-`.size` tail; see "PADDING TRAPS" in
  LEVERS.md.

## Decompilation tools

- `rank_candidates.py` — rank the remaining `#pragma GLOBAL_ASM` functions
  by how likely they are to match quickly.
- `cone.py` — walk the call graph from an entry point and list every
  still-pragma function on the path, for prioritising by reachability
  rather than by cheapness.
- `find_clones.py` — group functions by opcode+register skeleton
  (relocation immediates masked) to find HAL's reused-code families.
- `apply_family.py` + `stabilize.py` — apply a clone family's C to every
  member, verifying each and rolling back what fails, then re-verify until
  stable (members are position-dependent; the second pass is not optional).
- `fix_rodata_refs.py` — rewrite float literals as references to the ROM's
  own data symbols, for UNMIGRATED rodata segments only (driven by
  verify.py's diff output).
- `find_rodata_targets.py` — same problem, other route: decode the base ROM
  directly to name the symbol each mis-referenced constant load should
  reach (works without a `.s` listing).
- `apply_rodata_subs.py` + `gate_one_file.sh` — apply those substitutions
  for one file and gate the result (compile, TU-size check, relink).
- `ipascan.py` — screen listings whose entry live-ins cannot be produced by
  o32 (the `-O3`+ujoin n_audio functions); cheaper than discovering it after
  decompiling.
- `cc_o3.py` — drives the four IDO phases directly to compile at `-O3`
  (the recompiled driver cannot; ujoin is missing). The Makefile routes the
  n_audio files through it.

## Permuter harness

- `setup_permuter.py <cfile> <func>` — set up a decomp-permuter directory
  for one near-miss function.
- `factory.py` — unattended permuter harvest, byte-exact-or-revert.
- `seed_queue.py` / `permute_queue.py` / `priority_queue.py` — queue
  strategies for the harness: measure-then-closest-first, size-ordered, and
  evidence-ordered respectively.

## Setup

- `SESSION_SETUP.sh` — bring a fresh checkout to a verified-green tree
  (requires `baserom.us.z64` at the repo root; never committed).
