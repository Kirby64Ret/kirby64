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

# (diffs, cfile, func) -- every number measured by a lane and recorded in a
# FACTORY note or a stint report. Ascending: closest first.
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
    (2,   'src/ovl16/ovl16.c',        'func_801DFF40_ovl16'),
    (2,   'src/ovl16/ovl16.c',        'func_801E0820_ovl16'),
    (9,   'src/ovl2/ovl2_7.c',        'func_8010D42C'),
    (1,   'src/ovl7/ovl7_2.c',        'func_8019F650_ovl7'),
    (2,   'src/ovl7/ovl7_2.c',        'func_801A0244_ovl7'),
    (5,   'src/ovl8/ovl8_4.c',        'func_801D6534_ovl8'),
    (5,   'src/ovl5/ovl5_13.c',       'func_801853E0_ovl5'),
    (6,   'src/ovl3/ovl3_6.c',        'func_80180818_ovl3'),
    (7,   'src/ovl1/ovl1_12.c',       'func_800BBDC4'),
    (9,   'src/ovl3/kirby.c',         'func_8017B8F4_ovl3'),
    (12,  'src/ovl3/ovl3_6.c',        'func_8017EA0C_ovl3'),
    (18,  'src/ovl7/enelib.c',        'func_8019A7E8_ovl7'),
    (19,  'src/ovl2/ovl2_7.c',        'func_80109318'),
    (20,  'src/ovl7/enelib.c',        'func_8019F130_ovl7'),
    (24,  'src/ovl1/ovl1_2_2.c',      'func_800A8100'),
    (27,  'src/ovl9/ovl9_3.c',        'func_801DE280_ovl9'),
    (28,  'src/ovl12/code_1EB520.c',  'func_801DD400_ovl12'),
    (44,  'src/ovl2/ovl2_7.c',        'func_80109504'),
    (44,  'src/ovl2/ovl2_7.c',        'func_80109970'),
    (48,  'src/ovl2/ovl2_7.c',        'func_80109784'),
    (50,  'src/ovl7/ovl7_3.c',        'func_801A2E64_ovl7'),
    (50,  'src/ovl7/ovl7_3.c',        'func_801A3000_ovl7'),
    (69,  'src/ovl2/ovl2_7.c',        'func_8010D42C'),
    (69,  'src/ovl2/ovl2_7.c',        'func_8010D668'),
    (92,  'src/ovl2/ovl2_7.c',        'func_8010B67C'),
    (103, 'src/ovl2/ovl2_7.c',        'func_8010B284'),
]


def main():
    seconds = int(sys.argv[1]) if len(sys.argv) > 1 else 900
    os.makedirs(pq.PERM, exist_ok=True)
    pq.log(f'=== priority queue: {len(TARGETS)} measured drafts, {seconds}s each ===')
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
