#!/usr/bin/env python3
"""Un-matched functions whose CALL SEQUENCE matches an already-matched one.

WHY THIS EXISTS, AND WHY IT IS NOT find_clones.py

LEVERS lever 1 says to look for "a pragma whose jal skeleton matches an
already-matched function", because the matched one's C is then a template you
can copy rather than a shape you have to re-derive. That lever returned the
best ratio of anything tried on this tree: three closures in about four
compiles, one of them a 274-word function that matched on the FIRST compile
and two that three separate lanes had already documented as unreachable
floors.

find_clones.py implements something stricter -- it matches the full
opcode-and-register skeleton, so it only sees copies with identical
instruction counts. That is a useful signal and it is now exhausted: zero
families remain at --min-insns 12. But it is not what the lever describes. A
function that calls the same helpers in the same order, with a few extra
instructions between them, is still a template; the strict matcher discards
it. Run on the same tree, this looser rule finds 13 groups with a live donor
that find_clones.py does not report at all.

WHAT IT MATCHES

The ordered sequence of `jal <name>` targets inside each listing, ignoring
everything else. Two functions are in a group when those sequences are equal
and at least MIN_CALLS long. A group is only worth reporting when at least
one member is already matched -- that member is the donor, and the others are
the candidates.

HOW TO USE A HIT

Copy the donor's C verbatim, then re-introduce the candidate's own constants
and symbols. Do NOT start from the candidate's existing draft and edit toward
the donor: the point of the lever is that the donor's spelling -- declaration
order, which values are named locals, how each address is formed -- is known
to survive IDO, and a draft's spelling is not. func_80176A80_ovl5 differed
from its donor in exactly two ways and matched as soon as both were copied.

WHAT A HIT DOES NOT PROMISE

A shared call sequence does not mean a shared register regime. Two of the
groups worked here were dead ends for good reasons worth recognising early:
the donor reused one value across both halves of a loop where the candidate
must reload it, and the donor ran on saved registers with a larger frame.
Check the frame size and the saved-register set before spending a compile.

Usage: find_jal_clones.py                 groups with a matched donor
       find_jal_clones.py --all           every group, donor or not
       find_jal_clones.py --min-calls N   default 4
"""
import glob
import os
import re
import subprocess
import sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

JAL = re.compile(r'^\s*/\*[^*]*\*/\s+jal\s+(\w+)', re.M)
PRAGMA = re.compile(r'GLOBAL_ASM\("([^"]+)"\)')


def pragma_listings():
    """Listings still supplied by a pragma -- i.e. NOT yet decompiled."""
    out = set()
    for c in glob.glob('src/**/*.c', recursive=True):
        if c.startswith('src/pc/'):
            continue
        try:
            for m in PRAGMA.finditer(open(c, errors='replace').read()):
                out.add(m.group(1))
        except OSError:
            pass
    return out


def main():
    argv = sys.argv[1:]
    min_calls = 4
    if '--min-calls' in argv:
        min_calls = int(argv[argv.index('--min-calls') + 1])
    show_all = '--all' in argv

    unmatched = pragma_listings()
    groups = {}
    for path in glob.glob('asm/nonmatchings/**/*.s', recursive=True):
        try:
            calls = tuple(JAL.findall(open(path, errors='replace').read()))
        except OSError:
            continue
        if len(calls) < min_calls:
            continue
        groups.setdefault(calls, []).append(path)

    reported = 0
    for calls, members in sorted(groups.items(), key=lambda kv: -len(kv[1])):
        if len(members) < 2:
            continue
        # The same function can be listed under two directories (ovl3/kirby
        # and ovl3/ovl3_6 both carry func_8017BF34_ovl3.s). That is one
        # function, not a clone pair, and reporting it wastes a lane's compile.
        donors = [m for m in members if m not in unmatched]
        cands = [m for m in members if m in unmatched
                 and os.path.basename(m) not in
                 {os.path.basename(d) for d in donors}]
        if not cands or (not donors and not show_all):
            continue
        reported += 1
        print(f'\n== {len(calls)} calls: {" -> ".join(calls[:6])}'
              f'{" ..." if len(calls) > 6 else ""}')
        for d in donors:
            print(f'   DONOR      {os.path.basename(d)[:-2]}  ({d})')
        for c in cands:
            print(f'   candidate  {os.path.basename(c)[:-2]}  ({c})')
    print(f'\n-- {reported} group(s) with at least one un-matched member'
          f'{"" if show_all else " and a matched donor"}, '
          f'min {min_calls} calls')
    if reported:
        print('Copy the DONOR\'s C verbatim and re-introduce the candidate\'s own\n'
              'constants; do not edit the candidate\'s draft toward the donor.\n'
              'Check the frame size and saved-register set first -- a shared call\n'
              'sequence does not promise a shared register regime.')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
