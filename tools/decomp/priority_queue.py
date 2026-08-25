#!/usr/bin/env python3
"""Permute the drafts the lanes measured as CLOSEST, hardest-first by evidence.

permute_queue.py orders by instruction count, which is a proxy for "hard" and
a bad one. A 201-instruction draft sitting at 1 diff is one register apart from
byte-exact; a 30-instruction draft nobody has measured may be a floor. Ordering
by instruction count put the fleet's best-measured targets at position ~400 of
495, i.e. ~66 hours away at 600s each, while the permuter spent its first hour
on unmeasured 8-instruction functions.

This runs an explicit list instead, written from the lanes' own measurements.
Each entry is (diffs, cfile, func) and the list is worked in ascending diffs:
the permuter's odds are roughly monotonic in how few instructions are wrong,
so this is the order that converts CPU into closures fastest.

Everything it produces lands in tools/decomp/perm/_wins/ exactly as
permute_queue.py's does, and factory.py is still the only thing allowed to put
any of it in the tree -- through a byte-exact ROM gate. Nothing here decides
correctness.

Usage: priority_queue.py [seconds_per_function]
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import permute_queue as pq

TOOLS = os.path.dirname(os.path.abspath(__file__))

# (diffs, cfile, func) -- REGENERATED from measure_seeds.py's own output, not
# from the FACTORY notes. The notes cannot be used for this: 197 of them
# currently disagree with the measurement, in both directions. Some claimed
# near-misses were already byte-exact (func_801644EC_ovl3 read 69/111 and
# needed nothing), and some claimed floors were reachable. A queue built from
# them spends CPU on the wrong functions.
#
# Rebuild after any measure_seeds run:
#   python3 tools/decomp/measure_seeds.py --json /tmp/seeds.json
# then re-derive this list from the rows with an integer `diff`.
#
# Ascending: closest first.
# ORDER RESIDUES FIRST. Measured 2026-08-13: the permuter spent 600s each on
# func_801E8F74_ovl9 and func_801E3FE4_ovl9 -- both labelled "1 diff" by a lane
# -- and plateaued at 40 and 170 without closing. Those two are REGISTER
# ALLOCATION residues, and random source mutation has no purchase on them.
#
# What it should be fed instead is a residue of instruction ORDER, which is
# precisely what mutation reaches. The ovl16 pair below is the clearest case in
# the tree: two identical `addu $t,$s7,$s0` emitted in the opposite order, arm
# order locked by bc1fl polarity, 2 diffs out of 299, and a lane has proved no
# source spelling reaches it.
TARGETS = [
    # REGENERATED 2026-08-25 (second pass) from a fresh measure over every
    # file no lane was holding open. Ordered by residue, then by SIZE within
    # a residue -- a 615-word function two words from byte-exact is worth
    # more than a 20-word one, and the first list did not say so.
    #
    # Re-derive after any measure_seeds run. Do NOT build it from the FACTORY
    # notes: 90 of those were corrected today for disagreeing with verify.py
    # and 57 more carry a register-floor DIAGNOSIS on functions that are
    # 30-99% wrong. priority_queue also skips any entry whose function no
    # longer has a guarded draft, so a stale line here costs a log message
    # rather than a 420-second slot.
    (  1, 'src/ovl3/kirby.c', 'func_8016DA14_ovl3'),
    (  1, 'src/ovl4/ovl4_3.c', 'func_80157028_ovl4'),
    (  2, 'src/ovl15/ovl15.c', 'func_801E05A8_ovl15'),
    (  2, 'src/ovl5/ovl5_5.c', 'func_801721CC_ovl5'),
    (  2, 'src/ovl2/ovl2_2.c', 'func_800F72B0'),
    (  2, 'src/ovl5/ovl5_5.c', 'func_801720D8_ovl5'),
    (  3, 'src/ovl4/ovl4_4.c', 'func_80158E98_ovl4'),
    (  3, 'src/ovl7/ovl7_3.c', 'func_801A33B8'),
    (  3, 'src/ovl3/plyeff.c', 'func_80164130_ovl3'),
    (  3, 'src/ovl3/kirby.c', 'func_801708A0_ovl3'),
    (  3, 'src/ovl17/ovl17_3.c', 'func_801E14B0_ovl17'),
    (  3, 'src/main/libn_audio.c', 'n_alSavePull'),
    (  4, 'src/ovl1/save_file.c', 'func_800B9FE0'),
    (  4, 'src/ovl14/ovl14.c', 'func_801DF290_ovl14'),
    (  4, 'src/ovl5/ovl5_4.c', 'func_801668E0_ovl5'),
    (  4, 'src/ovl5/ovl5_5.c', 'func_8017462C_ovl5'),
    (  4, 'src/ovl1/ovl1_3.c', 'func_800A84F0'),
    (  5, 'src/ovl8/ovl8_4.c', 'func_801D6534_ovl8'),
    (  5, 'src/ovl5/ovl5_5.c', 'func_80176F04_ovl5'),
    (  6, 'src/ovl3/kirby.c', 'func_80171E00_ovl3'),
    (  6, 'src/ovl1/ovl1_11.c', 'func_800BB98C'),
    (  6, 'src/ovl11/ovl11_2.c', 'func_801DF728_ovl11'),
    (  6, 'src/ovl17/ovl17.c', 'func_801DC91C_ovl17'),
    (  7, 'src/ovl5/ovl5_3.c', 'func_8016626C_ovl5'),
    (  7, 'src/ovl9/ovl9_6.c', 'func_801ED9AC_ovl9'),
    (  7, 'src/ovl9/ovl9_7_2.c', 'func_801F58A0_ovl9'),
    (  7, 'src/ovl16/ovl16.c', 'func_801DC8E4_ovl16'),
    (  7, 'src/main/render.c', 'func_8001479C'),
    (  8, 'src/ovl3/ovl3_6.c', 'func_8017EA0C_ovl3'),
    (  8, 'src/ovl3/ovl3_6.c', 'func_80184538_ovl3'),
    (  8, 'src/ovl5/ovl5_3.c', 'func_80165634_ovl5'),
    (  8, 'src/ovl5/ovl5_6.c', 'func_80178690_ovl5'),
    (  8, 'src/ovl2/plylib.c', 'func_8011C4E8'),
    (  8, 'src/ovl2/ovl2_10.c', 'func_801173F4'),
    (  8, 'src/ovl1/ovl1_10.c', 'func_800BB24C'),
    (  8, 'src/ovl6/ovl6.c', 'func_80154A40_ovl6'),
]


def still_guarded():
    """Functions that still have a guarded draft, read from the tree right now.

    TARGETS is a snapshot and the tree is not. Three entries in the list went
    stale within a few hours of it being written -- func_801E00B8_ovl11 closed
    by hand, func_801B3C54_ovl7 and func_801AEE04_ovl7 by a lane -- and a
    closed function does not fail, it MATCHES instantly: the draft in the tree
    IS the answer. So the queue logs '*** MATCH', factory rejects it with 'no
    owning .c (already closed?)', and both logs read like progress while the
    real targets further down the list wait.

    Checking the tree costs one pass over src/ and removes the whole class.
    """
    import glob as _glob
    sys.path.insert(0, TOOLS)
    from measure_seeds import guard_blocks
    live = set()
    for c in _glob.glob('src/**/*.c', recursive=True):
        if c.startswith('src/pc/'):
            continue
        try:
            lines = open(c, errors='replace').read().split('\n')
        except OSError:
            continue
        for st, en, pi, listing in guard_blocks(lines):
            live.add(os.path.basename(listing)[:-2])
    return live


def main():
    seconds = int(sys.argv[1]) if len(sys.argv) > 1 else 900
    os.makedirs(pq.PERM, exist_ok=True)
    live = still_guarded()
    queue = [t for t in TARGETS if t[2] in live]
    closed = [t[2] for t in TARGETS if t[2] not in live]
    if closed:
        pq.log(f'skipping {len(closed)} target(s) closed since the list was '
               f'written: {", ".join(closed)}')
    pq.log(f'=== priority queue: {len(queue)} measured drafts, {seconds}s each ===')
    TARGETS[:] = queue
    for i, (diffs, cf, fn) in enumerate(TARGETS, 1):
        if not os.path.exists(cf):
            pq.log(f'[{i}/{len(TARGETS)}] SKIP {fn}: {cf} gone')
            continue
        pq.log(f'[{i}/{len(TARGETS)}] {fn} ({diffs} diffs, {cf})')
        try:
            pq.run_one(cf, fn, seconds, 3)
        except Exception as e:
            pq.log(f'  {fn}: {e}')
    pq.log('=== priority queue exhausted ===')


if __name__ == '__main__':
    main()
