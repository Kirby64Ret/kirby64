#!/usr/bin/env python3
"""Find permuter candidates that already scored ZERO and were never harvested.

decomp-permuter keeps its working directory per function under
tools/decomp/perm/<func>/, and writes one output-<pid>-<n>/ directory per
improvement, each carrying its own score.txt. permute_queue.py used to publish
`hits[-1]` on a win -- the LAST directory by lexicographic name -- which is not
the zero-scoring one when the names sort output-<pid>-10 before
output-<pid>-9, or when several pids interleave. Two of the first three
published wins were the wrong candidate (score.txt 396 and 46), and the bug
also meant that every zero scored by a run whose LOG line was missed sat on
disk unnoticed.

This walks the working directories instead of the log, so it finds them all,
including runs from previous sessions. It reports only functions that are
STILL GUARDED -- a zero on a function someone has since closed by hand is not
work.

A zero here is a CANDIDATE, not a closure, for two reasons:

  - asm-differ normalises stack offsets unless --stack-diffs is passed, and
    that flag was added to permute_queue.py partway through. A run from before
    it can score 0 on a draft whose only residue is the frame size.
  - the permuter compiles a preprocessed standalone file whose struct layouts
    and prototypes are its own. A change that scores 0 there can score worse
    in the real translation unit; func_801E14B0_ovl17's published win did
    exactly that (3/61 in the tree either way, 12/61 with the whole diff).

So every candidate must be re-measured in the tree with

    VERIFY_MAXDIFF=200 python3 tools/decomp/scratchverify.py <file.c> <func>

after the diff is applied by hand. Read diff.txt -- it is small and
human-readable -- rather than copying source.c, which is the preprocessed
form and cannot go into src/.

Usage:
    harvest_zero_scores.py               list every unharvested zero
    harvest_zero_scores.py <func>        print that function's diff.txt
"""
import glob
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))
PERM = os.path.join(HERE, 'perm')

sys.path.insert(0, HERE)


def score_of(outdir):
    try:
        return int(open(os.path.join(outdir, 'score.txt')).read().strip())
    except (OSError, ValueError):
        return None


def zero_dirs():
    """{func: [output dirs that scored 0]}, newest last."""
    found = {}
    for sc in glob.glob(os.path.join(PERM, '*', 'output-*', 'score.txt')):
        outdir = os.path.dirname(sc)
        func = os.path.basename(os.path.dirname(outdir))
        if score_of(outdir) == 0:
            found.setdefault(func, []).append(outdir)
    for v in found.values():
        v.sort(key=lambda p: os.path.getmtime(p))
    return found


def guarded():
    """{func: owning .c} for every draft still behind a guard right now."""
    from measure_seeds import guard_blocks
    live = {}
    for c in sorted(glob.glob(os.path.join(ROOT, 'src', '**', '*.c'),
                              recursive=True)):
        rel = os.path.relpath(c, ROOT)
        if rel.startswith('src/pc/'):
            continue
        try:
            lines = open(c, errors='replace').read().split('\n')
        except OSError:
            continue
        for st, en, pi, listing in guard_blocks(lines):
            live[os.path.basename(listing)[:-2]] = rel
    return live


def main():
    os.chdir(ROOT)
    found = zero_dirs()
    live = guarded()

    if len(sys.argv) > 1:
        func = sys.argv[1]
        if func not in found:
            print(f'{func}: no output directory with score 0')
            return 1
        for d in found[func]:
            print(f'=== {d} ===')
            try:
                sys.stdout.write(open(os.path.join(d, 'diff.txt'),
                                      errors='replace').read())
            except OSError as e:
                print(f'  (no diff.txt: {e})')
        return 0

    rows = [(live[f], f, found[f]) for f in found if f in live]
    stale = [f for f in found if f not in live]
    print(f'{len(found)} function(s) have a zero-score permuter candidate on '
          f'disk; {len(rows)} are still guarded, {len(stale)} already closed.')
    print('Re-measure every one in the tree before believing it -- see the '
          'module docstring for why a zero here is not a closure.')
    for cf, func, dirs in sorted(rows):
        print(f'  {func:28s} {cf:34s} {len(dirs)} candidate(s)')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
