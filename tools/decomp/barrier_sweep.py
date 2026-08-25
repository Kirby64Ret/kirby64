#!/usr/bin/env python3
"""Try LEVER 61's scheduling barrier at every statement boundary in a draft.

An empty `do { } while (0);` is an IDO SCHEDULING BARRIER, not m2c noise: IDO
will not move an instruction across it. Where a draft's residue is a register
rotation or a hoist that lands one slot early, one barrier in the right place
fixes the whole block. func_800BDE0C (ovl1_13) went 13/72 to 2/72 on a single
one; func_801E00B8_ovl11 closed outright on one.

Finding WHERE is mechanical, and reading for it is slow and unreliable -- the
symptom shows up as a register-name disagreement several instructions away
from the statement that actually needs pinning. So place one barrier at each
candidate line in turn, score, and report. Every measurement runs on a scratch
copy through scratchverify, so the shared tree is never un-guarded: several
lanes and a permuter build it concurrently.

One placement per candidate line: the barrier goes BEFORE the statement, which
stops motion up past it. Wrapping a following block is a DIFFERENT transform --
it stops motion out of the block -- and this does not try it. Do the wrap by
hand once the sweep names the statement; on func_800BDE0C both forms reach the
same 2/72, but there is no reason to assume that in general.

VALIDATED against the case it was written for. Given func_800BDE0C's draft with
its barrier taken back out, the sweep reports base 13/72 and finds 2/72 -- the
committed answer -- at eight equivalent placements, the first of which is the
`do {` of the row loop. It also reports the near misses that are WORSE than the
base, which is how you tell "no barrier helps here" from "the sweep did not
run": func_800B9FE0 (save_file.c) prints five placements between 7/169 and
118/169 against a base of 4/169 and lands on none of them.

The path must end in .c -- verify.py compiles it as a translation unit and
rejects any other extension.

Usage:
    barrier_sweep.py <file.c> <func>            sweep every statement
    barrier_sweep.py <file.c> <func> --limit N  stop after N placements
"""
import os
import re
import shutil
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, HERE)
os.chdir(ROOT)

from measure_seeds import guard_blocks, cut_draft   # noqa: E402

BARRIER = 'do { } while (0);'
DIFF = re.compile(r':\s*DIFF\s+(\d+)/(\d+)\s+insns')

# Lines a barrier must not be placed before. A label or a `case` needs a
# statement after it, `else`/`while`/closing braces are not statement starts,
# and a declaration line is not one either -- IDO would reject a declaration
# after a statement in C89, which is what the ROM compiler is.
SKIP = re.compile(r'^\s*(?:\}|else\b|while\s*\(|case\b|default\b|#|/\*|\*|//|$)')
DECL = re.compile(r'^\s*(?:const\s+|volatile\s+|unsigned\s+|signed\s+|struct\s+'
                  r'|union\s+|enum\s+)*'
                  r'(?:[A-Za-z_]\w*)\s*\**\s*[A-Za-z_]\w*\s*(?:\[[^\]]*\])?\s*'
                  r'(?:=[^;]*)?;\s*$')
LABEL = re.compile(r'^\s*[A-Za-z_]\w*\s*:\s*$')


def score(path, func, lines):
    """Compile `lines` as `path` on a scratch copy; return (diff, total)."""
    d = tempfile.mkdtemp(prefix='bs_')
    try:
        sp = os.path.join(d, os.path.basename(path))
        open(sp, 'w').write('\n'.join(lines))
        env = dict(os.environ,
                   VERIFY_EXTRA_INC=os.path.dirname(os.path.abspath(path)) or '.',
                   VERIFY_SECBASE_SRC=path,
                   VERIFY_MAXDIFF='1')
        r = subprocess.run([sys.executable, os.path.join(HERE, 'verify.py'),
                            sp, func], capture_output=True, text=True, env=env)
        m = DIFF.search(r.stdout)
        if m:
            return int(m.group(1)), int(m.group(2))
        if 'MATCH' in r.stdout or ' 1 match' in r.stdout:
            return 0, 0
        return None, r.stdout.strip().split('\n')[0] if r.stdout else 'no output'
    finally:
        shutil.rmtree(d, ignore_errors=True)


def main():
    path, func = sys.argv[1], sys.argv[2]
    limit = None
    if '--limit' in sys.argv:
        limit = int(sys.argv[sys.argv.index('--limit') + 1])

    lines = open(path, errors='replace').read().split('\n')
    for st, en, prag_i, listing in guard_blocks(lines):
        if os.path.basename(listing)[:-2] != func:
            continue
        base_lines = cut_draft(lines, st, en, prag_i)
        # cut_draft removes the guard, so the draft's own line numbers move.
        # Find the function in the CUT text and sweep there, otherwise every
        # insertion index is off by the size of the guard.
        try:
            fstart = next(i for i, l in enumerate(base_lines)
                          if re.match(r'^\w[\w \t\*]*\b' + re.escape(func) +
                                      r'\s*\(', l))
        except StopIteration:
            print(f'{func}: cut_draft produced no definition line')
            return 2
        depth = 0
        fend = fstart
        for i in range(fstart, len(base_lines)):
            depth += base_lines[i].count('{') - base_lines[i].count('}')
            if depth == 0 and i > fstart and '}' in base_lines[i]:
                fend = i
                break

        base, total = score(path, func, base_lines)
        if base is None:
            print(f'{func}: base does not compile: {total}')
            return 2
        print(f'{func}: base {base}/{total}')

        cands = []
        for i in range(fstart + 1, fend):
            l = base_lines[i]
            if SKIP.match(l) or LABEL.match(l) or DECL.match(l):
                continue
            cands.append(i)
        if limit:
            cands = cands[:limit]
        print(f'{len(cands)} placement(s) to try')

        best = (base, None)
        for i in cands:
            indent = re.match(r'^\s*', base_lines[i]).group(0)
            trial = base_lines[:i] + [indent + BARRIER] + base_lines[i:]
            d, t = score(path, func, trial)
            if d is None:
                continue
            mark = ''
            if d < best[0]:
                best = (d, i)
                mark = '   <-- BEST SO FAR'
            if d != base:
                print(f'  before line {i - fstart:4d}  {d:4d}/{t}  '
                      f'{base_lines[i].strip()[:60]}{mark}')
        if best[1] is None:
            print(f'no placement beats the base {base}/{total}')
        else:
            print(f'BEST {best[0]}/{total} with a barrier before draft line '
                  f'{best[1] - fstart}: {base_lines[best[1]].strip()[:70]}')
        return 0

    print(f'{func}: no guarded draft found in {path}')
    return 2


if __name__ == '__main__':
    raise SystemExit(main())
