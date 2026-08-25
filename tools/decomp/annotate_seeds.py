#!/usr/bin/env python3
"""Insert a measured FACTORY line above every guarded draft that has none.

A draft with no number is invisible: priority_queue.py's target list is built
from the FACTORY notes, measure_seeds reports it as unnoted, and a lane picking
work has nothing to sort by. This scores each unnoted draft on a scratch copy
and writes ONE line -- the number, the date, and nothing else. It deliberately
does not editorialise: a diagnosis nobody has measured is worse than no
diagnosis, and this pass has not read a single listing.
"""
import os, re, subprocess, sys, tempfile, shutil, glob
sys.path.insert(0, 'tools/decomp')
from measure_seeds import guard_blocks, cut_draft
DIFF = re.compile(r':\s*DIFF\s+(\d+)/(\d+)\s+insns')
FAC = re.compile(r'FACTORY:|FLOOR ')

def score(path, func, lines, st, en, pi):
    d = tempfile.mkdtemp(prefix='an_')
    try:
        sp = os.path.join(d, os.path.basename(path))
        open(sp, 'w').write('\n'.join(cut_draft(lines, st, en, pi)))
        env = dict(os.environ,
                   VERIFY_EXTRA_INC=os.path.dirname(os.path.abspath(path)) or '.',
                   VERIFY_SECBASE_SRC=path, VERIFY_MAXDIFF='1')
        r = subprocess.run([sys.executable, 'tools/decomp/verify.py', sp, func],
                           capture_output=True, text=True, env=env)
        m = DIFF.search(r.stdout)
        if m: return int(m.group(1)), int(m.group(2))
        if 'MATCH' in r.stdout:
            m2 = re.search(r'MATCH \((\d+) insns\)', r.stdout)
            return 0, int(m2.group(1)) if m2 else 0
        return None, None
    finally:
        shutil.rmtree(d, ignore_errors=True)

changed = 0
for path in sys.argv[1:]:
    lines = open(path, errors='replace').read().split('\n')
    ins = []
    for st, en, pi, listing in guard_blocks(lines):
        func = os.path.basename(listing)[:-2]
        head = '\n'.join(lines[max(0, st-90):st])
        if FAC.search(head):
            continue
        d, t = score(path, func, lines, st, en, pi)
        if d is None:
            print(f'  {func}: unscorable'); continue
        ins.append((st, f'/* FACTORY: {d}/{t} -- MEASURED 2026-08-25 by the '
                        f'annotate pass. The number is all this line claims; no\n'
                        f'   listing was read for it and no cause is diagnosed. */'))
        print(f'  {func}: {d}/{t}')
    for st, text in reversed(ins):
        lines.insert(st, text)
    if ins:
        open(path, 'w').write('\n'.join(lines)); changed += len(ins)
print(f'{changed} note(s) inserted')
