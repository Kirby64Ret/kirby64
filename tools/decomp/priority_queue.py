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
    # REBUILT 2026-08-25 from the tree's own FACTORY/FLOOR notes, after the
    # ABSF sweep, the barrier sweep and the zero-score harvest closed or moved
    # most of the previous list. Ordered by residue, then by SIZE within a
    # residue -- a 754-word function nineteen words from byte-exact is worth
    # more of a slot than a 24-word one.
    #
    # Re-derive after any measure_seeds run with the snippet in the module
    # docstring. priority_queue skips any entry whose function no longer has a
    # guarded draft, so a stale line costs a log message rather than a slot.
    (  2, 'src/ovl5/ovl5_5.c', 'func_801721CC_ovl5'),   # of 88
    (  2, 'src/ovl5/ovl5_5.c', 'func_8017232C_ovl5'),   # of 88
    (  4, 'src/ovl1/ovl1_3.c', 'func_800A84F0'),   # of 10, one-slot temp rotation, no frame
    (  4, 'src/ovl1/save_file.c', 'func_800B9FE0'),   # of 169
    (  4, 'src/ovl5/ovl5_4.c', 'func_801668E0_ovl5'),   # of 146
    (  5, 'src/ovl5/ovl5_5.c', 'func_80176F04_ovl5'),   # of 138
    (  6, 'src/ovl1/ovl1_11.c', 'func_800BB98C'),   # of 131, two register residues
    (  7, 'src/main/render.c', 'func_8001479C'),   # of 13
    (  8, 'src/ovl1/ovl1_10.c', 'func_800BB24C'),   # of 70
    ( 12, 'src/ovl5/ovl5_4.c', 'func_8016F40C_ovl5'),   # of 201
    ( 12, 'src/ovl5/ovl5_5.c', 'func_80171950_ovl5'),   # of 327
    ( 13, 'src/ovl1/ovl1_10.c', 'func_800BA90C'),   # of 62
    ( 13, 'src/ovl18/code_232B60.c', 'func_80221498_ovl18'),   # of 138
    ( 13, 'src/ovl1/ovl1_3.c', 'func_800AA96C'),   # of 116, saved-register assignment swap
    ( 13, 'src/ovl4/ovl4_1.c', 'func_80151CEC_ovl4'),   # of 59
    ( 13, 'src/ovl7/ovl7_3.c', 'func_801A1B6C_ovl7'),   # of 318
    ( 14, 'src/ovl7/ovl7_17.c', 'func_801C02D0_ovl7'),   # of 174
    ( 17, 'src/ovl1/ovl1.c', 'func_800A238C'),   # of 45
    ( 18, 'src/ovl1/ovl1.c', 'func_8009BA74'),   # of 117, one missing `or $v0,$zero,$zero` plus a temp rotation
    ( 18, 'src/ovl1/ovl1_7.c', 'func_800B158C'),   # of 116, one-slot base register rotation
    ( 18, 'src/ovl1/ovl1.c', 'func_8009BA74'),   # of 117
    ( 19, 'src/ovl2/ovl2_7.c', 'func_80109504'),   # of 123
    ( 19, 'src/ovl2/ovl2_7.c', 'func_80109784'),   # of 123
    ( 19, 'src/ovl2/ovl2_7.c', 'func_80109970'),   # of 123
    ( 19, 'src/ovl7/yakulib.c', 'func_801BC978_ovl7'),   # of 754
    ( 20, 'src/ovl1/save_file.c', 'func_800B9008'),   # of 24
    ( 20, 'src/ovl2/ovl2_3.c', 'func_800FC03C'),   # of 74
    ( 20, 'src/ovl6/ovl6.c', 'func_80154628_ovl6'),   # of 27
    ( 21, 'src/ovl15/ovl15.c', 'func_801DCDA8_ovl15'),   # of 165
    ( 21, 'src/ovl19/helper.c', 'func_8021F174_ovl19'),   # of 144
    ( 23, 'src/ovl2/ovl2_7.c', 'func_8010B284'),   # of 127
    ( 24, 'src/main/libn_audio.c', 'func_80023A28'),   # of 47
    ( 24, 'src/ovl6/ovl6.c', 'func_80154C64_ovl6'),   # of 63
    ( 24, 'src/ovl7/enelib.c', 'func_8019D4D0_ovl7'),   # of 244
    ( 24, 'src/ovl7/ovl7_4.c', 'func_801A6434_ovl7'),   # of 119
    ( 25, 'src/ovl1/save_file.c', 'func_800B91B8'),   # of 30
    ( 25, 'src/ovl1/save_file.c', 'saveCalcHeaderChecksum'),   # of 30
    ( 25, 'src/ovl7/ovl7_16.c', 'func_801BE79C_ovl7'),   # of 429
    ( 26, 'src/ovl1/ovl1.c', 'func_8009E834'),   # of 48
    ( 27, 'src/ovl7/ovl7_3.c', 'func_801A2C78_ovl7'),   # of 123
    ( 27, 'src/ovl9/ovl9_3.c', 'func_801DE280_ovl9'),   # of 227
    ( 69, 'src/ovl1/ovl1_3.c', 'func_800A9648'),   # of 70, arg0 wants $s0 not $a3
    ( 59, 'src/ovl1/ovl1.c', 'func_800A0558'),   # of 277, $s4/$s5 rotation
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
