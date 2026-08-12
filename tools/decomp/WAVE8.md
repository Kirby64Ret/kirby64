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

## Standing prohibitions (full list, for lane prompts)

No port work. No tool writing. No yaml edits (manager-owned). No git
write commands other than manager commit+push to the designated branch. No
new files except progress logs in scratchpad. No surveys, censuses, or
rankings. No editing matched (unguarded) C. No flipping NON_MATCHING guards.
No inventing symbols. No committing with a red gate. No `sleep`-polling.
No reading a sha1 after a failed make.
