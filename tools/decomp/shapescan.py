#!/usr/bin/env python3
"""Rank guarded drafts by SHAPE distance, not by the positional diff.

The positional number that measure_seeds, priority_queue and every FACTORY note
use is word-i-against-word-i. One inserted instruction makes every later word
report as wrong, so a draft that is two words from correct can read 99% wrong
(LEVER 48 is about the denominator; this is the other half). That is fine as a
gate and useless as a work-ordering: it cannot tell "this needs one more local"
from "this needs re-deriving from scratch".

aligndiff.py already fixes that for ONE function -- it rebuilds both
instruction streams from verify.py's positional output, reduces each word to
its MNEMONIC, and difflibs them, so register renames vanish and only real
insert/delete/replace runs survive. This runs it over every guarded draft in
the paths given and reports the RUN COUNT, after discarding runs whose only
disagreement is a mnemonic alias (`li`/`addiu`, `move`/`or`, `beqz`/`beq`,
`nop`/`sll`), which the assembler chooses and the source cannot.

Read the two numbers together:

    small positional, small shape   a near miss; work it
    LARGE positional, SMALL shape   register allocation or one insertion --
                                    the positional number is lying to you
    large positional, LARGE shape   a real re-derivation, and now you know
                                    before spending a day on levers

SHAPE 0 IS NOT "PERMUTER ONLY" (LEVER 116, and this docstring said otherwise
until a lane measured it). Reducing to mnemonics is exactly what makes an extra
LOCAL invisible: it adds no instruction and changes no instruction's kind, it
only rotates the register allocation. Shape 0 means "nothing was inserted,
deleted or changed kind" -- not "no source edit can reach this".
func_801E5080_ovl15 sat on this list at 12/167 with shape 0 and closed on a
source edit, deleting two m2c `temp_v1 = omCurrentObj->objId` caches. So on a
shape-0 draft: delete the m2c temporaries that re-express a subscript, pointer
or induction variable first, re-check the frame (deleting declarations moves
it), and only then read the shape as a verdict.

Measured while writing this: func_800A09AC reads 1010/1022 positionally, which
looks like "start over", and its shape distance is 126 runs -- so it really is
a re-derivation and the note saying so is right. func_800BB98C reads 6/131 and
its shape distance is 0: nothing but register names, which is what put it in
the permuter queue instead of a reading queue.

Usage:
    shapescan.py 'src/ovl1/*.c' 'src/main/*.c'
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
# The two words IDO leaves behind when it deletes a function outright.
STUB = re.compile(r'\[\s*0\]\s.*\|\s*current=03E00008')
# Pairs the assembler picks freely. A run whose every disagreement is one of
# these is not a shape difference and must not be counted as one.
ALIAS = {frozenset(p) for p in
         [('li', 'addiu'), ('move', 'or'), ('beqz', 'beq'), ('beqzl', 'beql'),
          ('bnez', 'bne'), ('bnezl', 'bnel'), ('nop', 'sll'), ('b', 'beq'),
          ('negu', 'subu')]}


def mnemonic(line):
    parts = line.split()
    return parts[2] if len(parts) > 2 else ''


def shape_runs(listing, difftext):
    """Number of aligndiff runs that are not pure mnemonic aliases."""
    with tempfile.NamedTemporaryFile('w', suffix='.txt', delete=False) as fh:
        fh.write(difftext)
        dpath = fh.name
    try:
        r = subprocess.run([sys.executable, os.path.join(HERE, 'aligndiff.py'),
                            listing, dpath], capture_output=True, text=True)
    finally:
        os.unlink(dpath)
    runs = 0
    for blk in r.stdout.split('--- ')[1:]:
        lines = [l for l in blk.split('\n') if l.strip()]
        rom = [mnemonic(l) for l in lines if l.strip().startswith('ROM')]
        ours = [mnemonic(l) for l in lines if l.strip().startswith('OURS')]
        if len(rom) == len(ours) and all(
                a == b or frozenset((a, b)) in ALIAS
                for a, b in zip(rom, ours)):
            continue
        runs += 1
    return runs


def main():
    rows = []
    for pat in sys.argv[1:]:
        for c in sorted(glob.glob(pat)):
            lines = open(c, errors='replace').read().split('\n')
            for st, en, pi, listing in guard_blocks(lines):
                func = os.path.basename(listing)[:-2]
                if not os.path.exists(listing):
                    continue
                d = tempfile.mkdtemp(prefix='ss_')
                try:
                    sp = os.path.join(d, os.path.basename(c))
                    open(sp, 'w').write('\n'.join(cut_draft(lines, st, en, pi)))
                    env = dict(os.environ,
                               VERIFY_EXTRA_INC=os.path.dirname(os.path.abspath(c)) or '.',
                               VERIFY_SECBASE_SRC=c, VERIFY_MAXDIFF='4000')
                    r = subprocess.run(
                        [sys.executable, os.path.join(HERE, 'verify.py'), sp, func],
                        capture_output=True, text=True, env=env)
                finally:
                    shutil.rmtree(d, ignore_errors=True)
                m = DIFF.search(r.stdout)
                if not m:
                    continue
                pos, tot = int(m.group(1)), int(m.group(2))
                body = '\n'.join(l for l in r.stdout.split('\n')
                                 if l.startswith('  ['))
                # A draft measured ALONE that compiled to `jr $ra / nop` was
                # DELETED, not written badly: `static` whose only callers are
                # still GLOBAL_ASM pragmas is dead to uopt, because
                # asm-processor injects those references after the C compiler
                # has run (LEVER 75). Its shape distance is then whatever
                # difflib makes of a two-word stream -- often 1 -- and it would
                # rank at the very top of this list as the closest draft in the
                # file. func_80023B34 is the worked example: 68/68 positional,
                # shape 1, and its own FACTORY note already says it cannot be
                # measured alone. Flag it instead of ranking it.
                stub = bool(STUB.search(body)) and pos == tot
                rows.append((shape_runs(listing, body), pos, tot, func, c, stub))
    rows.sort()
    print(f'{len(rows)} guarded draft(s), ranked by SHAPE distance')
    print(' shape  positional  function                     file')
    for runs, pos, tot, func, c, stub in rows:
        note = ('   <-- DELETED when measured alone (static, callers still '
                'pragmas); the shape number is meaningless' if stub else '')
        print(f'{runs:6d}  {pos:5d}/{tot:<5d}  {func:28s} {c}{note}')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
