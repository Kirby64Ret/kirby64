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
    # REGENERATED 2026-08-25 from a fresh measure_seeds run over every file no
    # lane held open. The previous list had gone stale in the worst possible
    # direction: seven of its entries -- func_801F1454_ovl10,
    # func_801555AC_ovl4, func_800F6E30, func_801649CC_ovl5,
    # func_8016CB14_ovl5, func_8015E8E0_ovl3, func_801A8BAC_ovl7 -- had CLOSED
    # since it was written, and the permuter would have spent 600 seconds each
    # searching for an arrangement of a function that is already byte-exact.
    # A stale queue is worse than a short one. Re-derive it after any
    # measure_seeds run; never from the FACTORY notes (124 of them currently
    # disagree with the measurement, in both directions).
    (  1, 'src/ovl5/ovl5_3.c', 'func_80165440_ovl5'),
    (  1, 'src/ovl4/ovl4_3.c', 'func_80157028_ovl4'),
    (  1, 'src/ovl3/kirby.c', 'func_8016DA14_ovl3'),
    (  2, 'src/ovl1/ovl1_3.c', 'func_800A8CE0'),
    (  2, 'src/ovl11/ovl11_2.c', 'func_801E00B8_ovl11'),
    (  2, 'src/ovl5/ovl5_5.c', 'func_801720D8_ovl5'),
    (  2, 'src/ovl2/ovl2_2.c', 'func_800F72B0'),
    (  2, 'src/ovl5/ovl5_5.c', 'func_801721CC_ovl5'),
    (  2, 'src/ovl15/ovl15.c', 'func_801E05A8_ovl15'),
    (  3, 'src/main/libn_audio.c', 'n_alSavePull'),
    (  3, 'src/ovl3/kirby.c', 'func_801708A0_ovl3'),
    (  3, 'src/ovl3/plyeff.c', 'func_80164130_ovl3'),
    (  3, 'src/ovl7/ovl7_3.c', 'func_801A33B8'),
    (  3, 'src/ovl4/ovl4_4.c', 'func_80158E98_ovl4'),
    (  4, 'src/ovl1/ovl1_3.c', 'func_800A84F0'),
    (  4, 'src/ovl7/ovl7_10.c', 'func_801B3C54_ovl7'),
    (  4, 'src/ovl5/ovl5_5.c', 'func_8017462C_ovl5'),
    (  4, 'src/ovl5/ovl5_4.c', 'func_801668E0_ovl5'),
    (  4, 'src/ovl14/ovl14.c', 'func_801DF290_ovl14'),
    (  4, 'src/ovl1/save_file.c', 'func_800B9FE0'),
    (  5, 'src/ovl11/ovl11_2.c', 'func_801DF728_ovl11'),
    (  5, 'src/ovl7/ovl7_7.c', 'func_801AEE04_ovl7'),
    (  5, 'src/ovl5/ovl5_5.c', 'func_80176F04_ovl5'),
    (  5, 'src/ovl8/ovl8_4.c', 'func_801D6534_ovl8'),
    (  6, 'src/ovl1/ovl1_11.c', 'func_800BB98C'),
    (  6, 'src/ovl3/kirby.c', 'func_80171E00_ovl3'),
    (  7, 'src/main/render.c', 'func_8001479C'),
    (  7, 'src/ovl16/ovl16.c', 'func_801DC8E4_ovl16'),
    (  7, 'src/ovl5/ovl5_3.c', 'func_8016626C_ovl5'),
    (  8, 'src/ovl6/ovl6.c', 'func_80154A40_ovl6'),
    (  8, 'src/ovl1/ovl1_10.c', 'func_800BB24C'),
    (  8, 'src/ovl2/ovl2_10.c', 'func_801173F4'),
    (  8, 'src/ovl5/ovl5_6.c', 'func_80178690_ovl5'),
    (  8, 'src/ovl5/ovl5_3.c', 'func_80165634_ovl5'),
    (  8, 'src/ovl3/ovl3_6.c', 'func_80184538_ovl3'),
    (  8, 'src/ovl3/ovl3_6.c', 'func_8017EA0C_ovl3'),
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
