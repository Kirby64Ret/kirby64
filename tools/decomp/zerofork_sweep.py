#!/usr/bin/env python3
"""Flip every zero literal in a guarded draft and see which spelling IDO wants.

LEVER 90/99: an integer `0` FORKS IDO's shared FP constant and `0.0f` SHARES
it. A store of `0` to an `f32[]` and a comparison against `0.0f` are different
constants to IDO; two `0.0f`s are the same one. So a draft that is one or two
words SHORT around a materialised zero is usually not missing a statement -- it
is spelling a zero the way that CSEs it into a zero already live.

The lever is documented and was being applied by hand. It pays enough to
mechanise: func_80221A74_ovl19 went 48/84 to 19/85 on ONE character, `= 0.0f`
to `= 0`, and that flip alone accounted for its entire word-count difference.

This finds every `0.0f` and every `= 0;` inside each guarded draft, flips them
one at a time, then all together (LEVER 99's PAIRING rule -- the unit is
whichever pair currently shares one `mtc1 $zero`, so a single flip is often
worth nothing while the pair is worth everything), scores each, and reports
what improves.

    zerofork_sweep.py 'src/ovl1/*.c' 'src/ovl19/*.c'
    zerofork_sweep.py --max 6 'src/ovl9/*.c'     cap the sites per draft

It NEVER edits the tree: every candidate is scored on a scratch copy through
cut_draft, so it is safe to run while other lanes are working.

Flipping `= 0;` to `= 0.0f;` on a pointer is a compile error and on an integer
is a conversion of 0.0 to 0 -- identical value, different codegen. Both are
harmless here: the first is skipped as "did not compile" and the second simply
scores worse. Nothing is reported unless the SCORE improves.
"""
import glob
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

DIFF = re.compile(r':\s*DIFF\s+(\d+)/(\d+)\s+insns')
MATCH = re.compile(r':\s*MATCH\b')
# Only assignment and comparison zeros -- an argument `0` is usually an integer
# parameter and flipping it is noise.
SITE = re.compile(r'(?<![\w.])(?:(0\.0f)|(?<==\s)(0)(?=\s*;))')


def sites(text):
    """[(start, end, replacement)] for every zero literal worth flipping."""
    out = []
    for m in re.finditer(r'\b0\.0f\b', text):
        out.append((m.start(), m.end(), '0'))
    for m in re.finditer(r'=\s*(0)\s*;', text):
        out.append((m.start(1), m.end(1), '0.0f'))
    out.sort()
    return out


def apply_sites(text, chosen):
    for s, e, rep in sorted(chosen, reverse=True):
        text = text[:s] + rep + text[e:]
    return text


def score(lines, st, en, pi, cfile, func):
    d = tempfile.mkdtemp(prefix='zf_')
    try:
        sp = os.path.join(d, os.path.basename(cfile))
        open(sp, 'w').write('\n'.join(cut_draft(lines, st, en, pi)))
        r = subprocess.run(
            [sys.executable, os.path.join(HERE, 'verify.py'), sp, func],
            capture_output=True, text=True,
            env=dict(os.environ, VERIFY_MAXDIFF='900',
                     VERIFY_EXTRA_INC=os.path.dirname(os.path.abspath(cfile)) or '.',
                     VERIFY_SECBASE_SRC=cfile))
    finally:
        shutil.rmtree(d, ignore_errors=True)
    if MATCH.search(r.stdout):
        return 0, 0
    m = DIFF.search(r.stdout)
    return (int(m.group(1)), int(m.group(2))) if m else (None, None)


def main():
    argv = list(sys.argv[1:])
    cap = 8
    if '--max' in argv:
        i = argv.index('--max')
        cap = int(argv[i + 1])
        del argv[i:i + 2]
    wins = []
    for pat in argv:
        for c in sorted(glob.glob(pat)):
            if c.startswith('src/pc/'):
                continue
            lines = open(c, errors='replace').read().split('\n')
            for st, en, pi, listing in guard_blocks(lines):
                func = os.path.basename(listing)[:-2]
                body = '\n'.join(lines[st:en])
                found = sites(body)
                if not found or len(found) > cap:
                    continue
                base = score(lines, st, en, pi, c, func)
                if base[0] is None:
                    continue
                best, how = base, None
                trials = [[s] for s in found]
                if len(found) > 1:
                    trials.append(found)
                for chosen in trials:
                    nb = apply_sites(body, chosen)
                    cand = lines[:st] + nb.split('\n') + lines[en:]
                    got = score(cand, st, en + (len(cand) - len(lines)),
                                pi, c, func)
                    if got[0] is not None and got[0] < best[0]:
                        best, how = got, chosen
                if how is not None:
                    what = ('ALL %d sites' % len(how) if len(how) > 1
                            else '%s -> %s' % (body[how[0][0]:how[0][1]],
                                               how[0][2]))
                    print(f'  {func:28s} {base[0]}/{base[1]} -> '
                          f'{best[0]}/{best[1]}   {what}   {c}')
                    wins.append((base[0] - best[0], func, c, what))
                else:
                    print(f'  {func:28s} {base[0]}/{base[1]}  '
                          f'({len(found)} site(s), none help)')
    print(f'\n{len(wins)} draft(s) improved')
    for d, func, c, what in sorted(wins, reverse=True):
        print(f'  -{d:4d}  {func:28s} {what}   {c}')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
