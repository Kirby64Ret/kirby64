#!/usr/bin/env python3
"""Permute the drafts the lanes measured as CLOSEST, hardest-first by evidence.

permute_queue.py orders by instruction count, which is a proxy for "hard" and
a bad one. A 201-instruction draft sitting at 1 diff is one register apart from
byte-exact; a 30-instruction draft nobody has measured may be a floor. Ordering
by instruction count put the fleet's best-measured targets at position ~400 of
495, i.e. ~66 hours away at 600s each, while the permuter spent its first hour
on unmeasured 8-instruction functions.

This runs an explicit list instead. Each entry is
(shape, positional, words, cfile, func) and the list is worked in ascending
SHAPE distance -- the number of aligndiff runs that are not assembler aliases,
i.e. the disagreements a source mutation can actually move. Ordering by the
positional diff, which this list used to do, cannot tell "one register apart"
from "needs re-deriving": 101 of the tree's 661 guarded drafts have shape
distance 0, and many of them read as hopeless positionally.

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

# (shape, positional, words, cfile, func) -- REBUILT 2026-08-25 from
# tools/decomp/shapescan.py over the whole of src/, and ordered by SHAPE
# DISTANCE, not by the positional diff.
#
# The positional number this list used to carry is word-i-against-word-i, so
# one inserted instruction reports every later word as wrong (LEVER 104). As a
# permuter ordering that is close to noise: it cannot separate "one register
# apart" from "needs re-deriving", and both ends of that range sat next to each
# other in the old list. shapescan runs aligndiff over every guarded draft and
# counts the insert/delete/replace runs that are NOT assembler aliases, which
# is the thing the permuter can actually move.
#
# The measurement that justifies the rewrite: of the 661 guarded drafts in the
# tree, 101 have a shape distance of ZERO -- no structural disagreement at all,
# only register names. Those are exactly the population random source mutation
# reaches, and most of them never appeared in the old list because their
# positional scores read as hopeless (func_801EDE50_ovl16 is 187/450 and shape
# 0; func_8015B75C_ovl3 is 100/290 and shape 0).
#
# Ordered shape ascending, then POSITIONAL ascending, then size descending.
# Once the shape distance is 0 the positional count means something again: it
# is how many words carry a wrong register name, so 1/138 is one register and
# 187/450 is a whole-body rotation. Shape says whether mutation can reach the
# residue at all; the positional count says how far it has to move.
#
# Rebuild with:
#   python3 tools/decomp/shapescan.py 'src/*/*.c' > /tmp/shape.txt
# then re-derive these rows from it. priority_queue skips any entry whose
# function no longer has a guarded draft, so a stale line costs a log message
# rather than a slot.
#
# NOT A PROMISE OF A CLOSURE, AND NOT A VERDICT THAT THE SOURCE IS FINISHED.
# LEVER 94: a permuter zero on a SCHEDULING residue is a coin flip, and shape 0
# includes both scheduling and allocation residues. LEVER 116, measured after
# this list was first written: shape 0 does NOT mean "permuter only". aligndiff
# reduces to MNEMONICS, so an extra LOCAL is invisible to it -- it adds no
# instruction and changes no instruction's kind, it only rotates registers.
# func_801E5080_ovl15 sat here at shape 0, 12/167 and closed on a source edit
# (two m2c `temp_v1 = omCurrentObj->objId` caches deleted), and three ovl3
# drafts sealed as register-allocation floors were LEVER 97 plus a frame.
#
# So a row reaching the head of this queue is a claim about CPU, not about the
# source: clean the m2c temporaries and re-check the frame before concluding
# that a shape-0 draft needs the permuter at all.
# Shape 0 with a tiny positional count is not automatically work: three of the
# closest rows in the tree are already known dead, and without this they take
# the first slots every time the queue restarts.
#
#   func_801720D8_ovl5, func_801721CC_ovl5  their 2 diffs are the prologue and
#       epilogue `addiu $sp` -- the FRAME, which no source spelling in ten
#       declaration permutations reached (LEVER 57's table). With
#       --stack-diffs the permuter scores them honestly and plateaus; without
#       it they log an instant '*** MATCH' on source byte-identical to the
#       draft already in the tree, and factory rejects them on the ROM gate
#       for ever.
#   func_800BDE0C  its two published permuter zeros were WHITESPACE ONLY --
#       reflowed lines inside an already barrier-wrapped loop, which cannot
#       alter codegen (harvest_zero_scores.py flags the class). The tree
#       scores 2/72 with or without them.
EXCLUDE = {
    'n_alSavePull': 'proved a floor -- order and register assignment move '
                    'together, and CC_O3_UJOIN=1 scores the same 2/17',
    'func_801720D8_ovl5': 'frame-only residue; LEVER 57 table, not reachable',
    'func_801721CC_ovl5': 'frame-only residue; LEVER 57 table, not reachable',
    'func_800BDE0C': 'published zeros were whitespace-only; tree is 2/72 either way',
}

TARGETS = [
    # Out of shape order on purpose: 412 words for 23 diffs is the best
    # words-per-residue row in the tree, and its shape 6 is four ISOLATED
    # clusters (two scheduling, two register naming) rather than a structural
    # gap -- see the FACTORY note in src/ovl1/ovl1_6.c. Worth a slot near the
    # front even though the shape number would bury it.
    (  6,    23,   412, 'src/ovl1/ovl1_6.c', 'initTrack'),
    (  0,     1,   138, 'src/ovl4/ovl4_3.c', 'func_80157028_ovl4'),
    (  0,     2,    88, 'src/ovl5/ovl5_5.c', 'func_801721CC_ovl5'),
    (  0,     2,    85, 'src/ovl2/ovl2_2.c', 'func_800F72B0'),
    (  0,     2,    72, 'src/ovl1/ovl1_13.c', 'func_800BDE0C'),
    (  0,     2,    61, 'src/ovl5/ovl5_5.c', 'func_801720D8_ovl5'),
    (  0,     3,   224, 'src/ovl2/ovl2.c', 'func_800F64B0'),
    (  0,     3,   124, 'src/ovl3/plyeff.c', 'func_80164130_ovl3'),
    (  0,     3,    97, 'src/ovl3/kirby.c', 'func_801708A0_ovl3'),
    (  0,     3,    18, 'src/main/libn_audio.c', 'n_alSavePull'),
    (  0,     4,   169, 'src/ovl1/save_file.c', 'func_800B9FE0'),
    (  0,     4,   161, 'src/ovl14/ovl14.c', 'func_801DF290_ovl14'),
    (  0,     4,    10, 'src/ovl1/ovl1_3.c', 'func_800A84F0'),
    (  0,     5,   138, 'src/ovl5/ovl5_5.c', 'func_80176F04_ovl5'),
    (  0,     6,   131, 'src/ovl1/ovl1_11.c', 'func_800BB98C'),
    (  0,     6,    28, 'src/ovl11/ovl11_2.c', 'func_801DF728_ovl11'),
    (  0,     7,   396, 'src/ovl5/ovl5_3.c', 'func_8016626C_ovl5'),
    (  0,     7,   144, 'src/ovl9/ovl9_6.c', 'func_801ED9AC_ovl9'),
    (  0,     7,    43, 'src/ovl16/ovl16.c', 'func_801DC8E4_ovl16'),
    (  0,     8,   260, 'src/ovl9/ovl9_3.c', 'func_801DCE6C_ovl9'),
    (  0,     8,   164, 'src/ovl5/ovl5_3.c', 'func_80165634_ovl5'),
    (  0,     8,   159, 'src/ovl5/ovl5_6.c', 'func_80178690_ovl5'),
    (  0,     8,   142, 'src/ovl2/plylib.c', 'func_8011C4E8'),
    (  0,     8,    95, 'src/ovl2/ovl2_10.c', 'func_801173F4'),
    (  0,     9,   137, 'src/ovl14/ovl14_2.c', 'func_801E2610_ovl14'),
    (  0,     9,   134, 'src/ovl5/ovl5_2.c', 'func_80164EA8_ovl5'),
    (  0,     9,    76, 'src/ovl5/ovl5_2.c', 'func_80161078_ovl5'),
    (  0,    10,   118, 'src/ovl2/plylib.c', 'func_80121D3C'),
    (  0,    10,    87, 'src/ovl19/helper.c', 'func_802209E4_ovl19'),
    (  0,    11,   165, 'src/ovl7/ovl7_11.c', 'func_801B6F18_ovl7'),
    (  0,    11,    48, 'src/ovl12/code_1EB520.c', 'func_801DE7E8_ovl12'),
    (  0,    11,    38, 'src/ovl19/helper.c', 'func_80221108_ovl19'),
    (  0,    11,    30, 'src/ovl9/ovl9_10.c', 'func_802052E8_ovl9'),
    (  0,    12,   201, 'src/ovl5/ovl5_4.c', 'func_8016F40C_ovl5'),
    (  0,    12,   167, 'src/ovl15/ovl15b.c', 'func_801E5080_ovl15'),
    (  0,    12,    47, 'src/ovl7/enelib.c', 'func_8019F130_ovl7'),
    (  0,    13,    62, 'src/ovl1/ovl1_10.c', 'func_800BA90C'),
    (  0,    13,    60, 'src/ovl9/ovl9_10.c', 'func_802050E4_ovl9'),
    (  0,    13,    59, 'src/ovl4/ovl4_1.c', 'func_80151CEC_ovl4'),
    (  0,    13,    54, 'src/ovl18/code_239080.c', 'func_80227308_ovl18'),
    (  0,    14,   113, 'src/ovl5/ovl5_1.c', 'func_8015C9B4_ovl5'),
    (  0,    15,   236, 'src/ovl14/ovl14.c', 'func_801DDE60_ovl14'),
    (  0,    16,    21, 'src/ovl2/plylib.c', 'func_8011C87C'),
    (  0,    17,    46, 'src/ovl9/ovl9_2.c', 'func_801DBC38_ovl9'),
    (  0,    17,    45, 'src/ovl1/ovl1.c', 'func_800A238C'),
    (  0,    18,   116, 'src/ovl1/ovl1_7.c', 'func_800B158C'),
    (  0,    19,   165, 'src/ovl15/ovl15.c', 'func_801DCDA8_ovl15'),
    (  0,    19,   123, 'src/ovl2/ovl2_7.c', 'func_80109504'),
    (  0,    19,    60, 'src/ovl19/helper.c', 'func_8022045C_ovl19'),
    (  0,    20,   144, 'src/ovl19/helper.c', 'func_8021F174_ovl19'),
    (  0,    20,    86, 'src/ovl9/ovl9_10.c', 'func_80205360_ovl9'),
    (  0,    20,    74, 'src/ovl2/ovl2_3.c', 'func_800FC03C'),
    (  0,    22,   119, 'src/ovl19/helper.c', 'func_80220280_ovl19'),
    (  0,    22,    55, 'src/ovl9/ovl9_13.c', 'func_8020C378_ovl9'),
    (  0,    24,   244, 'src/ovl7/enelib.c', 'func_8019D4D0_ovl7'),
    (  0,    24,   123, 'src/ovl7/ovl7_3.c', 'func_801A2C78_ovl7'),
    (  0,    24,    74, 'src/ovl1/ovl1_3.c', 'func_800AA49C'),
    (  0,    24,    52, 'src/ovl1/ovl1_3.c', 'func_800A8578'),
    (  0,    25,    76, 'src/ovl2/ovl2_8.c', 'func_8010E8F0'),
    (  0,    27,    91, 'src/ovl1/ovl1_10.c', 'func_800BA7A0'),
    (  0,    27,    48, 'src/ovl10/ovl10_1.c', 'func_801DDAC8_ovl10'),
    (  0,    29,   211, 'src/ovl3/kirby.c', 'func_8016F80C_ovl3'),
    (  0,    29,    68, 'src/ovl15/ovl15.c', 'func_801DD208_ovl15'),
    (  0,    30,    59, 'src/ovl1/ovl1_3.c', 'func_800A9C78'),
    (  0,    31,   178, 'src/ovl3/ovl3_6.c', 'func_8017BF34_ovl3'),
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
    queue = [t for t in TARGETS if t[4] in live and t[4] not in EXCLUDE]
    closed = [t[4] for t in TARGETS if t[4] not in live]
    if closed:
        pq.log(f'skipping {len(closed)} target(s) closed since the list was '
               f'written: {", ".join(closed)}')
    for fn, why in EXCLUDE.items():
        if fn in live:
            pq.log(f'excluding {fn}: {why}')
    pq.log(f'=== priority queue: {len(queue)} measured drafts, {seconds}s each ===')
    TARGETS[:] = queue
    for i, (shape, diffs, words, cf, fn) in enumerate(TARGETS, 1):
        if not os.path.exists(cf):
            pq.log(f'[{i}/{len(TARGETS)}] SKIP {fn}: {cf} gone')
            continue
        pq.log(f'[{i}/{len(TARGETS)}] {fn} (shape {shape}, {diffs}/{words}, {cf})')
        try:
            pq.run_one(cf, fn, seconds, 3)
        except Exception as e:
            pq.log(f'  {fn}: {e}')
    pq.log('=== priority queue exhausted ===')


if __name__ == '__main__':
    main()
