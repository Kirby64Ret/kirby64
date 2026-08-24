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
    (  1, 'src/ovl10/ovl10_5b.c', 'func_801F1454_ovl10'),
    (  1, 'src/ovl3/kirby.c', 'func_8016DA14_ovl3'),
    (  1, 'src/ovl3/plyshot.c', 'func_8015E8E0_ovl3'),
    (  1, 'src/ovl4/ovl4_3.c', 'func_801555AC_ovl4'),
    (  1, 'src/ovl5/ovl5_3.c', 'func_80165440_ovl5'),
    (  2, 'src/ovl1/ovl1_3.c', 'func_800A8CE0'),
    (  2, 'src/ovl15/ovl15.c', 'func_801E05A8_ovl15'),
    (  2, 'src/ovl2/ovl2_2.c', 'func_800F6E30'),
    (  2, 'src/ovl2/ovl2_2.c', 'func_800F72B0'),
    (  2, 'src/ovl5/ovl5_2.c', 'func_801649CC_ovl5'),
    (  2, 'src/ovl5/ovl5_4.c', 'func_8016CB14_ovl5'),
    (  2, 'src/ovl5/ovl5_5.c', 'func_801720D8_ovl5'),
    (  2, 'src/ovl5/ovl5_5.c', 'func_801721CC_ovl5'),
    (  2, 'src/ovl5/ovl5_7.c', 'func_8017A1CC_ovl5'),
    (  2, 'src/ovl7/ovl7_5.c', 'func_801A8BAC_ovl7'),
    (  3, 'src/main/libn_audio.c', 'n_alSavePull'),
    (  3, 'src/ovl1/ovl1_7.c', 'func_800B20E0'),
    (  3, 'src/ovl17/ovl17_3.c', 'func_801E14B0_ovl17'),
    (  3, 'src/ovl2/ovl2_3.c', 'func_800FA92C'),
    (  3, 'src/ovl3/kirby.c', 'func_801708A0_ovl3'),
    (  3, 'src/ovl3/ovl3_4.c', 'func_80169718_ovl3'),
    (  3, 'src/ovl3/plyshot.c', 'func_80164130_ovl3'),
    (  3, 'src/ovl7/ovl7_3.c', 'func_801A33B8'),
    (  3, 'src/ovl9/ovl9_15.c', 'func_8021679C_ovl9'),
    (  4, 'src/main/libn_audio_2.c', 'func_8002C9FC'),
    (  4, 'src/ovl1/ovl1_3.c', 'func_800A84F0'),
    (  4, 'src/ovl1/save_file.c', 'func_800B8E00'),
    (  4, 'src/ovl14/ovl14.c', 'func_801DF290_ovl14'),
    (  4, 'src/ovl5/ovl5_2.c', 'func_801612D0_ovl5'),
    (  4, 'src/ovl5/ovl5_4.c', 'func_801668E0_ovl5'),
    (  4, 'src/ovl5/ovl5_5.c', 'func_8017462C_ovl5'),
    (  4, 'src/ovl9/ovl9_3.c', 'func_801DE60C_ovl9'),
    (  5, 'src/ovl14/ovl14.c', 'func_801DECAC_ovl14'),
    (  5, 'src/ovl5/ovl5_5.c', 'func_80176F04_ovl5'),
    (  5, 'src/ovl7/ovl7_7.c', 'func_801AEE04_ovl7'),
    (  5, 'src/ovl8/ovl8_4.c', 'func_801D6534_ovl8'),
    (  6, 'src/ovl1/save_file.c', 'func_800B9FE0'),
    (  6, 'src/ovl14/ovl14.c', 'func_801DD590_ovl14'),
    (  6, 'src/ovl16/ovl16.c', 'func_801DC990_ovl16'),
    (  6, 'src/ovl17/ovl17.c', 'func_801DBA8C_ovl17'),
    (  6, 'src/ovl17/ovl17.c', 'func_801DC91C_ovl17'),
    (  6, 'src/ovl2/ovl2_7.c', 'func_80105284'),
    (  6, 'src/ovl3/kirby.c', 'func_80171E00_ovl3'),
    (  6, 'src/ovl3/ovl3_6.c', 'func_80180818_ovl3'),
    (  6, 'src/ovl3/ovl3_6.c', 'func_8018E164_ovl3'),
    (  7, 'src/ovl14/ovl14.c', 'func_801DEC34_ovl14'),
    (  7, 'src/ovl16/ovl16.c', 'func_801DC8E4_ovl16'),
    (  7, 'src/ovl5/ovl5_3.c', 'func_8016626C_ovl5'),
    (  7, 'src/ovl9/ovl9_6.c', 'func_801ED9AC_ovl9'),
    (  7, 'src/ovl9/ovl9_7_2.c', 'func_801F58A0_ovl9'),
    (  8, 'src/ovl2/ovl2_10.c', 'func_801173F4'),
    (  8, 'src/ovl3/ovl3_6.c', 'func_80184538_ovl3'),
    (  8, 'src/ovl5/ovl5_3.c', 'func_80165634_ovl5'),
    (  8, 'src/ovl5/ovl5_6.c', 'func_80178690_ovl5'),
    (  9, 'src/ovl14/ovl14_2.c', 'func_801E2610_ovl14'),
    (  9, 'src/ovl3/kirby.c', 'func_8017B8F4_ovl3'),
    (  9, 'src/ovl5/ovl5_2.c', 'func_80164EA8_ovl5'),
    (  9, 'src/ovl7/ovl7_4.c', 'func_801A3E80_ovl7'),
    ( 10, 'src/ovl10/ovl10_1.c', 'func_801DDEB8_ovl10'),
    ( 10, 'src/ovl14/ovl14_2.c', 'func_801E2834_ovl14'),
    ( 10, 'src/ovl15/ovl15.c', 'func_801DC890_ovl15'),
    ( 10, 'src/ovl19/helper.c', 'func_802209E4_ovl19'),
    ( 10, 'src/ovl19/ovl19_3.c', 'func_8022CE18_ovl19'),
    ( 10, 'src/ovl2/plylib.c', 'func_80121D3C'),
    ( 10, 'src/ovl5/ovl5_7.c', 'func_8017B018_ovl5'),
    ( 11, 'src/ovl12/code_1EB520.c', 'func_801DE7E8_ovl12'),
    ( 11, 'src/ovl19/helper.c', 'func_80221108_ovl19'),
    ( 11, 'src/ovl3/ovl3_4.c', 'func_8016B410_ovl3'),
    ( 11, 'src/ovl9/ovl9_10.c', 'func_802052E8_ovl9'),
    ( 12, 'src/main/libn_audio.c', 'func_80023D5C'),
    ( 12, 'src/main/libn_audio_2.c', 'func_8002B524'),
    ( 12, 'src/ovl11/ovl11.c', 'func_801DD1CC_ovl11'),
    ( 12, 'src/ovl15/ovl15b.c', 'func_801E5080_ovl15'),
    ( 12, 'src/ovl18/code_2308C0.c', 'func_8021E978_ovl18'),
    ( 12, 'src/ovl19/ovl19_2.c', 'func_80227D4C_ovl19'),
    ( 12, 'src/ovl3/ovl3_6.c', 'func_8017EA0C_ovl3'),
    ( 12, 'src/ovl5/ovl5_4.c', 'func_8016F40C_ovl5'),
    ( 12, 'src/ovl9/ovl9_10.c', 'func_802071AC_ovl9'),
    ( 13, 'src/main/libn_audio.c', 'func_80026460'),
    ( 13, 'src/ovl1/ovl1_13.c', 'func_800BDE0C'),
    ( 13, 'src/ovl1/ovl1_3.c', 'func_800AA96C'),
    ( 13, 'src/ovl2/ovl2_2.c', 'func_800F7404'),
    ( 13, 'src/ovl9/ovl9_10.c', 'func_802050E4_ovl9'),
    ( 13, 'src/ovl9/ovl9_14.c', 'func_80211B1C_ovl9'),
    ( 14, 'src/ovl5/ovl5_2.c', 'func_80161078_ovl5'),
    ( 15, 'src/ovl14/ovl14.c', 'func_801DDE60_ovl14'),
    ( 16, 'src/ovl2/ovl2_2.c', 'func_800F8078'),
    ( 16, 'src/ovl2/plylib.c', 'func_8011C87C'),
    ( 16, 'src/ovl5/ovl5_2.c', 'func_80164174_ovl5'),
    ( 17, 'src/ovl1/ovl1.c', 'func_800A238C'),
    ( 17, 'src/ovl2/ovl2_10.c', 'func_8011572C'),
    ( 17, 'src/ovl2/ovl2_10.c', 'func_80118638'),
    ( 17, 'src/ovl3/ovl3_1.c', 'func_80154428_ovl3'),
    ( 18, 'src/ovl1/ovl1.c', 'func_8009BA74'),
    ( 18, 'src/ovl1/ovl1_7.c', 'func_800B158C'),
    ( 19, 'src/ovl15/ovl15.c', 'func_801DCDA8_ovl15'),
    ( 19, 'src/ovl19/helper.c', 'func_8022045C_ovl19'),
    ( 19, 'src/ovl2/ovl2_10.c', 'func_80115618'),
    ( 19, 'src/ovl2/ovl2_7.c', 'func_80109504'),
    ( 19, 'src/ovl2/ovl2_7.c', 'func_80109784'),
    ( 19, 'src/ovl2/ovl2_7.c', 'func_80109970'),
    ( 20, 'src/main/libn_audio_2.c', '__alSeqNextDelta'),
    ( 20, 'src/ovl1/save_file.c', 'func_800B9008'),
    ( 20, 'src/ovl12/code_1EB520.c', 'func_801E05E8_ovl12'),
    ( 20, 'src/ovl19/helper.c', 'func_8021F174_ovl19'),
    ( 20, 'src/ovl2/ovl2_3.c', 'func_800FC03C'),
    ( 20, 'src/ovl9/ovl9_10.c', 'func_80205360_ovl9'),
    ( 21, 'src/ovl2/ovl2_7.c', 'func_801057C4'),
    ( 21, 'src/ovl5/ovl5_5.c', 'func_80174044_ovl5'),
    ( 21, 'src/ovl9/ovl9_1.c', 'func_801D4594_ovl9'),
    ( 21, 'src/ovl9/ovl9_1.c', 'func_801D56D0_ovl9'),
    ( 22, 'src/ovl19/helper.c', 'func_80220280_ovl19'),
    ( 22, 'src/ovl2/ovl2_10.c', 'func_80117210'),
    ( 22, 'src/ovl2/ovl2_2.c', 'func_800F7484'),
    ( 22, 'src/ovl3/ovl3_1.c', 'func_801556D8_ovl3'),
    ( 22, 'src/ovl7/ovl7_2.c', 'func_801A07C4_ovl7'),
    ( 22, 'src/ovl9/ovl9_13.c', 'func_8020C378_ovl9'),
    ( 22, 'src/ovl9/ovl9_5.c', 'func_801EA190_ovl9'),
    ( 23, 'src/main/libn_audio.c', 'func_80023D00'),
    ( 23, 'src/main/libn_audio.c', 'func_80027610'),
    ( 23, 'src/ovl2/ovl2.c', 'func_800F64B0'),
    ( 23, 'src/ovl2/ovl2_7.c', 'func_8010B284'),
    ( 23, 'src/ovl2/ovl2_7.c', 'func_8010B480'),
    ( 24, 'src/ovl1/ovl1_3.c', 'func_800A8578'),
    ( 24, 'src/ovl1/ovl1_3.c', 'func_800AA49C'),
    ( 24, 'src/ovl7/ovl7_13.c', 'func_801B9E80_ovl7'),
    ( 24, 'src/ovl9/ovl9_5.c', 'func_801E8A80_ovl9'),
    ( 25, 'src/ovl1/save_file.c', 'saveCalcHeaderChecksum'),
    ( 25, 'src/ovl5/ovl5_5.c', 'func_8017712C_ovl5'),
    ( 26, 'src/main/libn_audio.c', 'func_80023C48'),
    ( 26, 'src/ovl1/ovl1.c', 'func_8009E834'),
    ( 26, 'src/ovl2/plylib.c', 'func_80121A04'),
    ( 27, 'src/main/libn_audio.c', 'func_8002581C'),
    ( 27, 'src/ovl10/ovl10_1.c', 'func_801DDAC8_ovl10'),
    ( 27, 'src/ovl2/ovl2_9.c', 'func_801105E8'),
    ( 27, 'src/ovl7/ovl7_3.c', 'func_801A2C78_ovl7'),
    ( 27, 'src/ovl9/ovl9_3.c', 'func_801DE280_ovl9'),
    ( 28, 'src/ovl12/code_1EB520.c', 'func_801DD400_ovl12'),
    ( 29, 'src/main/libn_audio.c', 'func_80023A28'),
    ( 29, 'src/ovl1/ovl1_7.c', 'func_800B1378'),
    ( 29, 'src/ovl1/save_file.c', 'func_800B91B8'),
    ( 29, 'src/ovl15/ovl15.c', 'func_801DD208_ovl15'),
    ( 29, 'src/ovl3/kirby.c', 'func_8016F80C_ovl3'),
    ( 30, 'src/main/libn_audio.c', 'func_80023884'),
    ( 30, 'src/main/libn_audio.c', 'func_80023990'),
    ( 30, 'src/ovl1/ovl1_3.c', 'func_800A9C78'),
    ( 31, 'src/main/fault.c', 'func_80021444'),
    ( 31, 'src/ovl3/kirby.c', 'func_8017BF34_ovl3'),
    ( 31, 'src/ovl5/ovl5_2.c', 'func_8016179C_ovl5'),
    ( 32, 'src/ovl1/save_file.c', 'func_800B922C'),
    ( 32, 'src/ovl10/ovl10_5b.c', 'func_801F2964_ovl10'),
    ( 32, 'src/ovl16/ovl16.c', 'func_801DCBF8_ovl16'),
    ( 32, 'src/ovl19/ovl19_3.c', 'func_8022E224_ovl19'),
    ( 32, 'src/ovl2/ovl2_10.c', 'func_80114A14'),
    ( 32, 'src/ovl7/ovl7_5.c', 'func_801A8FFC_ovl7'),
    ( 33, 'src/ovl1/ovl1_3.c', 'func_800A8358'),
    ( 33, 'src/ovl10/ovl10_1.c', 'func_801E13A0_ovl10'),
    ( 33, 'src/ovl7/ovl7_4.c', 'func_801A5274_ovl7'),
    ( 33, 'src/ovl7/ovl7_5.c', 'func_801A9FC4_ovl7'),
    ( 34, 'src/ovl1/save_file.c', 'func_800B891C'),
    ( 34, 'src/ovl1/util.c', 'func_800A5F94'),
    ( 34, 'src/ovl5/ovl5_13.c', 'func_80185A4C_ovl5'),
    ( 35, 'src/ovl1/ovl1_3.c', 'func_800A9864'),
    ( 35, 'src/ovl5/ovl5_5.c', 'func_80176A80_ovl5'),
    ( 35, 'src/ovl9/ovl9_5.c', 'func_801E85CC_ovl9'),
    ( 36, 'src/ovl14/ovl14.c', 'func_801DBEAC_ovl14'),
    ( 36, 'src/ovl16/ovl16_2.c', 'func_801ED444_ovl16'),
    ( 36, 'src/ovl5/ovl5_7.c', 'func_8017C938_ovl5'),
    ( 36, 'src/ovl9/ovl9_15.c', 'func_80218248_ovl9'),
    ( 37, 'src/ovl1/ovl1_3.c', 'func_800A9B48'),
    ( 38, 'src/ovl1/ovl1_8.c', 'func_800B6144'),
    ( 39, 'src/ovl3/ovl3_6.c', 'func_801831EC_ovl3'),
    ( 40, 'src/ovl15/ovl15.c', 'func_801E27BC_ovl15'),
    ( 40, 'src/ovl18/code_2308C0.c', 'func_8021FDF4_ovl18'),
    ( 40, 'src/ovl7/ovl7_5.c', 'func_801AA1D4_ovl7'),
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
