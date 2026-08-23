#!/usr/bin/env python3
"""Measure the TRUE residue of every guarded decomp draft. Trust nothing else.

WHY THIS EXISTS

The `/* FACTORY: N/M */` notes are written by hand and the tree mixes two
opposite conventions: some lanes wrote N = words MATCHED, others wrote
N = words DIFFERING. A note reading `1/312` therefore means either "one word
away from byte-exact" or "one word correct out of 312" -- the best and the
worst case in the pool, spelled identically.

That is not a cosmetic problem. It decides which functions lanes work on. Six
notes claiming N in {0,1,2} were re-measured and every one was the opposite:

    func_80155088_ovl3   note 0/230   ->  230 words differ
    func_80161058_ovl3   note 0/288   ->  288 words differ
    func_80152348_ovl3   note 1/312   ->  311 words differ

So a lane dispatched at "the 52 near-matches" spends its budget on the
farthest functions in the tree.

HOW IT MEASURES

Ground truth is verify.py, which compiles the file exactly as the ROM build
does and word-compares against the listing. A guarded draft is invisible to
it, so for each draft this makes a SCRATCH COPY of the translation unit with
that ONE draft un-guarded in place of its pragma, and scores the copy. One at
a time, because two open drafts in a file collide on declarations.

Nothing under src/ is ever modified.

Usage:
    measure_seeds.py                    every file with FACTORY drafts
    measure_seeds.py src/ovl3/kirby.c   just these
    measure_seeds.py --json out.json    also write machine-readable results
"""
import json
import glob
import os
import re
import shutil
import subprocess
import sys
import tempfile

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)
VERIFY = 'tools/decomp/verify.py'

FACTORY = re.compile(r'FACTORY:\s*(\d+)\s*/\s*(\d+)')
PRAGMA = re.compile(r'^\s*#pragma\s+GLOBAL_ASM\("([^"]+)"\)\s*$')
DIFFLINE = re.compile(r'(\w+):\s*DIFF\s+(\d+)/(\d+)\s+insns')
MATCHLINE = re.compile(r'(\w+):\s*MATCH')


def guard_blocks(lines):
    """[(open_idx, else_idx, endif_idx, pragma_idx, listing)] for every
    conditional group that holds both a draft arm and a GLOBAL_ASM pragma."""
    out, stack = [], []
    for i, l in enumerate(lines):
        s = l.lstrip()
        if s.startswith('#if'):
            stack.append(i)
        elif s.startswith('#endif') and stack:
            st = stack.pop()
            body = lines[st:i + 1]
            prag = None
            for k, bl in enumerate(body):
                m = PRAGMA.match(bl)
                if m:
                    prag = (st + k, m.group(1))
            if prag and ('MIPS_TO_C' in body[0] or 'NON_MATCHING' in body[0]):
                out.append((st, i, prag[0], prag[1]))
    return out


def score(path, func):
    """Run verify.py on `path` for `func`; return ('MATCH'|diff_count|None, total)."""
    r = subprocess.run([sys.executable, VERIFY, path, func],
                       capture_output=True, text=True)
    txt = r.stdout + r.stderr
    m = DIFFLINE.search(txt)
    if m:
        return int(m.group(2)), int(m.group(3))
    if MATCHLINE.search(txt):
        return 'MATCH', None
    return None, None


def measure_file(path):
    src = open(path, errors='replace').read()
    lines = src.split('\n')
    results = []
    for st, en, prag_i, listing in guard_blocks(lines):
        func = os.path.basename(listing)[:-2]
        note = None
        for l in lines[max(0, st - 12):en]:
            m = FACTORY.search(l)
            if m:
                note = (int(m.group(1)), int(m.group(2)))
                break
        # scratch copy: this one draft un-guarded, its pragma removed
        body = lines[st + 1:en]
        keep = [b for b in body
                if not PRAGMA.match(b)
                and not b.lstrip().startswith(('#elif', '#else'))]
        # drop the PORT arm: everything after the first #elif/#else in the group
        cut = len(body)
        for k, b in enumerate(body):
            if b.lstrip().startswith(('#elif', '#else')):
                cut = k
                break
        keep = [b for b in body[:cut] if not PRAGMA.match(b)]
        scratch_lines = lines[:st] + keep + lines[en + 1:]
        d = tempfile.mkdtemp(prefix='seedmeas_')
        try:
            sp = os.path.join(d, os.path.basename(path))
            open(sp, 'w').write('\n'.join(scratch_lines))
            got, tot = score(sp, func)
        finally:
            shutil.rmtree(d, ignore_errors=True)
        results.append({'file': path, 'func': func, 'note': note,
                        'diff': got, 'total': tot})
    return results


def main():
    argv = sys.argv[1:]
    jsonout = None
    if '--json' in argv:
        i = argv.index('--json')
        jsonout = argv[i + 1]
        del argv[i:i + 2]          # its value is NOT a source file
    args = [a for a in argv if not a.startswith('--')]
    files = args or sorted(glob.glob('src/**/*.c', recursive=True))
    all_r = []
    for f in files:
        if f.startswith('src/pc/') or 'FACTORY:' not in open(f, errors='replace').read():
            continue
        all_r += measure_file(f)

    ok = [r for r in all_r if isinstance(r['diff'], int)]
    ok.sort(key=lambda r: r['diff'])
    wrong = [r for r in all_r
             if r['note'] and isinstance(r['diff'], int) and r['note'][0] != r['diff']]

    print(f'{"true":>6}  {"noted":>7}  function')
    for r in ok[:40]:
        n = f"{r['note'][0]}/{r['note'][1]}" if r['note'] else '-'
        flag = '  <-- note wrong' if r in wrong else ''
        print(f"{r['diff']:>6}  {n:>7}  {r['func']}  ({r['file']}){flag}")

    unscored = [r for r in all_r if not isinstance(r['diff'], int)]
    print(f'\n-- {len(all_r)} draft(s) measured, {len(ok)} scored, '
          f'{len(unscored)} unscorable (did not compile alone)')
    print(f'-- {len(wrong)} note(s) disagree with the measurement')
    print(f'-- genuinely within 6 words: '
          f'{len([r for r in ok if r["diff"] <= 6])}')
    if jsonout:
        json.dump(all_r, open(jsonout, 'w'), indent=1)
        print(f'-- wrote {jsonout}')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
