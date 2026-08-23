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
    # Regenerated from tools/decomp/measure_seeds.py's ground-truth sweep.
    # The hand-written FACTORY notes were unusable for this: the tree mixes
    # two opposite conventions and 149 of 644 disagreed with measurement,
    # so an earlier list built from notes pointed at the FARTHEST drafts.
    (1  , 'src/ovl4/ovl4_3.c', 'func_801555AC_ovl4'),
    (1  , 'src/ovl5/ovl5_2.c', 'func_80160A20_ovl5'),
    (1  , 'src/ovl5/ovl5_2.c', 'func_801613C0_ovl5'),
    (1  , 'src/ovl5/ovl5_3.c', 'func_80165440_ovl5'),
    (2  , 'src/ovl1/ovl1_3.c', 'func_800A8CE0'),
    (2  , 'src/ovl3/kirby.c', 'func_8016DA14_ovl3'),
    (2  , 'src/ovl3/plyshot.c', 'func_8015E8E0_ovl3'),
    (2  , 'src/ovl5/ovl5_2.c', 'func_801649CC_ovl5'),
    (2  , 'src/ovl5/ovl5_4.c', 'func_8016CB14_ovl5'),
    (2  , 'src/ovl5/ovl5_5.c', 'func_801720D8_ovl5'),
    (2  , 'src/ovl7/ovl7_2.c', 'func_801A0244_ovl7'),
    (3  , 'src/ovl2/ovl2_3.c', 'func_800FB9B4'),
    (3  , 'src/ovl3/kirby.c', 'func_801708A0_ovl3'),
    (3  , 'src/ovl3/plyshot.c', 'func_80164130_ovl3'),
    (3  , 'src/ovl9/ovl9_15.c', 'func_8021679C_ovl9'),
    (3  , 'src/ovl9/ovl9_15.c', 'func_8021679C_ovl9'),
    (4  , 'src/ovl1/ovl1_3.c', 'func_800A84F0'),
    (4  , 'src/ovl10/ovl10_5b.c', 'func_801F1454_ovl10'),
    (4  , 'src/ovl5/ovl5_4.c', 'func_801668E0_ovl5'),
    (4  , 'src/ovl5/ovl5_4.c', 'func_80168804_ovl5'),
    (4  , 'src/ovl5/ovl5_5.c', 'func_8017462C_ovl5'),
    (4  , 'src/ovl9/ovl9_3.c', 'func_801DE60C_ovl9'),
    (5  , 'src/ovl3/ovl3_4.c', 'func_80169718_ovl3'),
    (5  , 'src/ovl5/ovl5_5.c', 'func_801721CC_ovl5'),
    (5  , 'src/ovl5/ovl5_5.c', 'func_80176F04_ovl5'),
    (6  , 'src/ovl16/ovl16.c', 'func_801DC990_ovl16'),
    (6  , 'src/ovl2/ovl2_10.c', 'func_80112B4C'),
    (6  , 'src/ovl3/ovl3_6.c', 'func_80180818_ovl3'),
    (6  , 'src/ovl3/ovl3_6.c', 'func_8018E164_ovl3'),
    (6  , 'src/ovl7/ovl7_7.c', 'func_801AEE04_ovl7'),
    (7  , 'src/ovl16/ovl16.c', 'func_801DC8E4_ovl16'),
    (7  , 'src/ovl5/ovl5_3.c', 'func_8016626C_ovl5'),
    (7  , 'src/ovl9/ovl9_1.c', 'func_801D650C_ovl9'),
    (7  , 'src/ovl9/ovl9_7_2.c', 'func_801F58A0_ovl9'),
    (8  , 'src/ovl2/ovl2_3.c', 'func_800FA92C'),
    (8  , 'src/ovl3/kirby.c', 'func_80171E00_ovl3'),
    (8  , 'src/ovl3/ovl3_6.c', 'func_80184538_ovl3'),
    (8  , 'src/ovl5/ovl5_2.c', 'func_801612D0_ovl5'),
    (8  , 'src/ovl5/ovl5_3.c', 'func_80165634_ovl5'),
    (8  , 'src/ovl9/ovl9_6.c', 'func_801ED9AC_ovl9'),
    (9  , 'src/ovl2/ovl2_3.c', 'func_800FBBB8'),
    (9  , 'src/ovl3/kirby.c', 'func_8017B8F4_ovl3'),
    (9  , 'src/ovl5/ovl5_2.c', 'func_80164EA8_ovl5'),
    (10 , 'src/ovl10/ovl10_1.c', 'func_801DDEB8_ovl10'),
    (10 , 'src/ovl10/ovl10_1.c', 'func_801E1550_ovl10'),
    (10 , 'src/ovl7/ovl7_4.c', 'func_801A3E80_ovl7'),
    (11 , 'src/ovl2/ovl2_10.c', 'func_801173F4'),
    (11 , 'src/ovl9/ovl9_10.c', 'func_802052E8_ovl9'),
    (12 , 'src/ovl3/ovl3_6.c', 'func_8017EA0C_ovl3'),
    (12 , 'src/ovl5/ovl5_4.c', 'func_8016F40C_ovl5'),
    (13 , 'src/ovl1/ovl1_3.c', 'func_800AA96C'),
    (13 , 'src/ovl9/ovl9_10.c', 'func_802050E4_ovl9'),
    (13 , 'src/ovl9/ovl9_10.c', 'func_802071AC_ovl9'),
    (13 , 'src/ovl9/ovl9_14.c', 'func_80211B1C_ovl9'),
    (14 , 'src/ovl3/ovl3_4.c', 'func_8016B410_ovl3'),
    (14 , 'src/ovl5/ovl5_2.c', 'func_80161078_ovl5'),
    (16 , 'src/ovl5/ovl5_2.c', 'func_80164174_ovl5'),
    (17 , 'src/ovl1/ovl1.c', 'func_800A238C'),
    (17 , 'src/ovl2/ovl2_10.c', 'func_8011572C'),
    (17 , 'src/ovl2/ovl2_10.c', 'func_80118638'),
    (17 , 'src/ovl3/ovl3_1.c', 'func_80154428_ovl3'),
    (18 , 'src/ovl1/ovl1.c', 'func_8009BA74'),
    (19 , 'src/ovl2/ovl2_10.c', 'func_80115618'),
    (20 , 'src/ovl9/ovl9_10.c', 'func_80205360_ovl9'),
    (20 , 'src/ovl9/ovl9_9.c', 'func_80200908_ovl9'),
    (21 , 'src/ovl10/ovl10_5b.c', 'func_801F11A8_ovl10'),
    (21 , 'src/ovl5/ovl5_5.c', 'func_80174044_ovl5'),
    (21 , 'src/ovl9/ovl9_1.c', 'func_801D4594_ovl9'),
    (22 , 'src/ovl2/ovl2_10.c', 'func_80117210'),
    (22 , 'src/ovl3/ovl3_1.c', 'func_801556D8_ovl3'),
    (22 , 'src/ovl7/ovl7_2.c', 'func_801A07C4_ovl7'),
    (22 , 'src/ovl9/ovl9_13.c', 'func_8020C378_ovl9'),
    (22 , 'src/ovl9/ovl9_15.c', 'func_8021679C_ovl9'),
    (22 , 'src/ovl9/ovl9_5.c', 'func_801EA190_ovl9'),
    (23 , 'src/ovl2/ovl2.c', 'func_800F64B0'),
    (23 , 'src/ovl2/ovl2_3.c', 'func_800FC03C'),
    (24 , 'src/ovl1/ovl1_3.c', 'func_800AA49C'),
    (24 , 'src/ovl9/ovl9_1.c', 'func_801D56D0_ovl9'),
    (24 , 'src/ovl9/ovl9_5.c', 'func_801E8A80_ovl9'),
    (24 , 'src/ovl9/ovl9_5.c', 'func_801E92DC_ovl9'),
    (25 , 'src/ovl5/ovl5_5.c', 'func_8017712C_ovl5'),
    (26 , 'src/ovl1/ovl1.c', 'func_8009E834'),
    (27 , 'src/ovl10/ovl10_1.c', 'func_801DDAC8_ovl10'),
    (27 , 'src/ovl2/ovl2_9.c', 'func_801105E8'),
    (27 , 'src/ovl7/ovl7_3.c', 'func_801A2C78_ovl7'),
    (28 , 'src/ovl9/ovl9_3.c', 'func_801DE280_ovl9'),
    (30 , 'src/ovl1/ovl1_3.c', 'func_800A9C78'),
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
