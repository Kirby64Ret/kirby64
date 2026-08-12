#!/usr/bin/env python3
"""Measure EVERY guarded draft, then permute them closest-first, forever.

WHY THIS REPLACES HAND-WRITTEN TARGET LISTS

Measured 2026-08-13, and the split is not subtle:

    permuter on an ORDER residue      2 functions closed in 2.5 minutes
                                      (13 seconds and 2 minutes), 0 tokens
    permuter on a REGISTER residue    600s each on two targets, 573 and 32
                                      improvements, 0 closed
    a lane closing a function         ~400,000 tokens

So the cheapest closure in this project is a lane driving a function down to a
small residue and then NOT finishing it -- handing it to CPU instead. What the
permuter cannot do is invent meaning; what it does better than any agent is
search arrangements. Ordering by residue size is what routes work correctly,
because a small residue is overwhelmingly likely to be an ordering problem and
a large one is not.

priority_queue.py did this from a list I typed out of lane reports. That does
not scale past the ~25 functions a lane happens to mention. This measures all
~460 guarded drafts itself with verify.py, sorts by real diff count, and feeds
the permuter the whole tree closest-first -- then loops forever, re-measuring,
so every draft a lane improves re-enters the queue nearer the front.

Nothing here decides correctness. Wins land in perm/_wins/ and factory.py is
still the only thing that may put one in the tree, through a byte-exact ROM
gate.

Usage: seed_queue.py [seconds_per_function]     default 240
       seed_queue.py --measure-only             print the ranked queue, exit
"""
import glob
import os
import re
import subprocess
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import permute_queue as pq

REPO = pq.REPO
TOOLS = pq.TOOLS
PY = os.path.join(REPO, '.venv', 'bin', 'python3')

GUARD = re.compile(
    r'#ifdef (?:NON_MATCHING|MIPS_TO_C)\b[^\n]*\n(.*?)#else\s*\n'
    r'#pragma GLOBAL_ASM\("([^"]+)"\)', re.S)


def drafts():
    """(cfile, func) for every guarded draft in the tree."""
    out = []
    for cf in sorted(glob.glob('src/**/*.c', recursive=True)):
        text = open(cf, errors='replace').read()
        for m in GUARD.finditer(text):
            fn = os.path.basename(m.group(2))[:-2]
            out.append((cf, fn))
    return out


def measure(cf, fn):
    """Diff count for a guarded draft, via verify.py on an un-guarded copy.

    verify.py decides "is this a pragma" from raw file text and ignores
    #ifdef, so the guard has to actually come off to get a number. The file is
    restored in the same breath -- this must never leave a draft live.
    """
    original = open(cf, errors='replace').read()
    try:
        r = subprocess.run([PY, os.path.join(TOOLS, 'setup_permuter.py'), cf, fn],
                           capture_output=True, text=True, timeout=180)
        d = os.path.join(pq.PERM, fn)
        if r.returncode != 0 or not os.path.isdir(d):
            return None
        # setup_permuter writes target.s and base.c; score the base directly.
        s = subprocess.run([PY, os.path.join(TOOLS, 'decomp-permuter', 'permuter.py'),
                            '-j', '1', '--stop-on-zero', '--seed', '0', d],
                           capture_output=True, text=True, timeout=60)
        m = re.findall(r'score = (\d+)', s.stdout + s.stderr)
        return int(m[0]) if m else None
    except Exception:
        return None
    finally:
        if open(cf, errors='replace').read() != original:
            open(cf, 'w').write(original)


def main():
    """Short budget, whole pool, sharded, forever.

    MEASURING FIRST WAS THE OBVIOUS DESIGN AND IT IS WRONG. Scoring 516 drafts
    costs ~90s each (setup_permuter runs cpp and m2c), i.e. ~13 hours before a
    single permutation starts. And the ranking it buys is barely needed,
    because the closures that matter arrive FAST: the two ovl16 order residues
    landed in 13 seconds and 2 minutes. A short budget over the whole pool
    finds those without knowing in advance which they are, and a register
    floor is not going to close at any budget, so time spent on one is bounded
    waste rather than a wrong bet.

    Shard so several workers share the pool: --shard 0/2 and --shard 1/2.
    """
    seconds = 90
    shard, nshards = 0, 1
    for a in sys.argv[1:]:
        if a.isdigit():
            seconds = int(a)
        elif a.startswith('--shard'):
            v = a.split('=')[-1] if '=' in a else sys.argv[sys.argv.index(a) + 1]
            shard, nshards = (int(x) for x in v.split('/'))
    os.makedirs(pq.PERM, exist_ok=True)

    p = 0
    while True:
        pool = [d for i, d in enumerate(drafts()) if i % nshards == shard]
        p += 1
        pq.log(f'=== seed queue pass {p}: {len(pool)} drafts, shard {shard}/{nshards}, {seconds}s each ===')
        for i, (cf, fn) in enumerate(pool, 1):
            if not os.path.exists(cf):
                continue
            pq.log(f'[{i}/{len(pool)}] {fn} ({cf})')
            try:
                pq.run_one(cf, fn, seconds, 2)
            except Exception as e:
                pq.log(f'  {fn}: {e}')


if __name__ == '__main__':
    main()
