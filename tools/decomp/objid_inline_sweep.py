#!/usr/bin/env python3
"""Mechanise LEVER 4/97's INLINE-THE-FIELD half over a whole directory.

objid_screen.py names the drafts where the ROM re-reads `omCurrentObj->objId`
at every use while the draft caches it in a local.  Applying the fix was still
a hand edit per function, and it is the single highest-paying lever in ovl3
(233 -> 85, 288 -> 197, 353 -> 273 on three functions in one stint).  This does
the edit mechanically and scores it, on a scratch copy, never in the tree.

For each guarded draft it finds every local whose ONLY initialiser is
`<expr>->objId`, deletes the declaration, substitutes `<expr>->objId` at every
use, and re-scores.  Locals are tried one at a time and then all together,
because a draft usually has one cache per basic block and IDO's register
pressure only changes when they all go.

LEVER 97's cost note applies and is why this reports rather than edits: a
LEADING temp that owns a frame slot can be worth keeping (func_801E14B0_ovl17
went 3/61 -> 6/61 on the same edit).  Nothing is printed unless the score
improves.

    objid_inline_sweep.py 'src/ovl3/*.c' 'src/ovl5/*.c'
    objid_inline_sweep.py --only func_80167F54_ovl3 'src/ovl3/*.c'
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

from measure_seeds import guard_blocks, cut_draft, arm_end   # noqa: E402

DIFF = re.compile(r':\s*DIFF\s+(\d+)/(\d+)\s+insns')
MATCH = re.compile(r':\s*MATCH\b')

# `s32 id = omCurrentObj->objId;` and the bare-assignment form.
DECL = re.compile(r'^(\s*)(?:(?:register|const)\s+)?(?:(?:un)?signed\s+)?'
                  r'(?:s32|u32|s16|u16|int|long|s8|u8)\s+(\w+)\s*=\s*'
                  r'([A-Za-z_][\w\[\]\.\s]*->\s*objId)\s*;\s*$')
ASSIGN = re.compile(r'^(\s*)(\w+)\s*=\s*'
                    r'([A-Za-z_][\w\[\]\.\s]*->\s*objId)\s*;\s*$')
BAREDECL = re.compile(r'^\s*(?:s32|u32|s16|u16|int|long|s8|u8)\s+(\w+)\s*;\s*$')


def score(lines, st, en, pi, cfile, func):
    d = tempfile.mkdtemp(prefix='oi_')
    try:
        sp = os.path.join(d, os.path.basename(cfile))
        open(sp, 'w').write('\n'.join(cut_draft(lines, st, en, pi)))
        r = subprocess.run(
            [sys.executable, os.path.join(HERE, 'verify.py'), sp, func],
            capture_output=True, text=True,
            env=dict(os.environ, VERIFY_MAXDIFF='2000',
                     VERIFY_EXTRA_INC=os.path.dirname(os.path.abspath(cfile)) or '.',
                     VERIFY_SECBASE_SRC=cfile))
    finally:
        shutil.rmtree(d, ignore_errors=True)
    if MATCH.search(r.stdout):
        return 0, 0
    m = DIFF.search(r.stdout)
    return (int(m.group(1)), int(m.group(2))) if m else (None, None)


def caches(arm):
    """{name: rhs} for locals assigned `...->objId` exactly once and never
    otherwise reassigned."""
    hits, other = {}, set()
    for l in arm:
        m = DECL.match(l) or ASSIGN.match(l)
        if m:
            nm, rhs = m.group(2), re.sub(r'\s+', '', m.group(3))
            if nm in hits and hits[nm] != rhs:
                other.add(nm)
            hits[nm] = rhs
            continue
        # any other assignment to a candidate disqualifies it
        m2 = re.match(r'^\s*(\w+)\s*(?:=[^=]|\+\+|--|\+=|-=)', l)
        if m2:
            other.add(m2.group(1))
        for m3 in re.finditer(r'(?:\+\+|--)\s*(\w+)\b', l):
            other.add(m3.group(1))
    return {k: v for k, v in hits.items() if k not in other}


def apply_inline(arm, names, rhs_by):
    out = []
    for l in arm:
        m = DECL.match(l) or ASSIGN.match(l)
        if m and m.group(2) in names:
            continue                      # drop the cache itself
        m = BAREDECL.match(l)
        if m and m.group(1) in names:
            continue                      # and its separate declaration
        for nm in names:
            l = re.sub(r'\b%s\b' % re.escape(nm), rhs_by[nm], l)
        out.append(l)
    return out


def main():
    argv = list(sys.argv[1:])
    only = None
    if '--only' in argv:
        i = argv.index('--only')
        only = argv[i + 1]
        del argv[i:i + 2]
    wins = []
    for pat in argv:
        for c in sorted(glob.glob(pat)):
            if c.startswith('src/pc/'):
                continue
            lines = open(c, errors='replace').read().split('\n')
            for st, en, pi, listing in guard_blocks(lines):
                func = os.path.basename(listing)[:-2]
                if only and func != only:
                    continue
                body = lines[st + 1:en]
                ae = arm_end(body)
                arm, rest = body[:ae], body[ae:]   # LEVER 83: only the first arm
                found = caches(arm)
                if not found:
                    continue
                base = score(lines, st, en, pi, c, func)
                if base[0] is None:
                    continue
                best, how = base, None
                trials = [[n] for n in found]
                if len(found) > 1:
                    trials.append(list(found))
                for names in trials:
                    na = apply_inline(arm, names, found) + rest
                    cand = lines[:st + 1] + na + lines[en:]
                    dl = len(cand) - len(lines)
                    got = score(cand, st, en + dl,
                                pi + dl if pi > en else pi, c, func)
                    if got[0] is not None and got[0] < best[0]:
                        best, how = got, names
                if how is not None:
                    what = ('ALL: ' if len(how) > 1 else '') + ','.join(how)
                    print(f'  {func:28s} {base[0]}/{base[1]} -> '
                          f'{best[0]}/{best[1]}   inline {what}   {c}', flush=True)
                    wins.append((base[0] - best[0], func, c, what))
                else:
                    print(f'  {func:28s} {base[0]}/{base[1]}  '
                          f'({len(found)} cache(s), none help)', flush=True)
    print(f'\n{len(wins)} draft(s) improved')
    for d, func, c, what in sorted(wins, reverse=True):
        print(f'  -{d:4d}  {func:28s} {what}   {c}')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
