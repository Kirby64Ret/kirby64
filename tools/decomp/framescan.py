#!/usr/bin/env python3
"""Which guarded drafts have the WRONG FRAME, and by how much.

LEVERS 69/74/79 all say the same thing from different directions: a body-level
lever cannot be scored through a wrong prologue. So the frame is the first
thing to screen for, and LEVER 78 says the fix is cheap -- reserved `s32`
slots, whose POSITION decides whether they count at all.

Worked twice on 2026-08-25. func_80225FA8_ovl18 was 0x28 against the ROM's
0x30; two reserved slots ahead of the named locals put it on 0x30 and took it
48/97 -> 45/97, while the same two declared after the named locals were dropped
whole. func_800A8EC0 was 0x20 against 0x30; four ahead took it 95/113 ->
92/113, four interleaved were inert.

WHERE IT DOES NOT WORK, and the rule that predicts it: reserved slots add
LOCAL slots. If the draft's frame is short because the ROM SAVES A REGISTER the
draft does not claim -- func_800A9648, 0x18 against 0x20, where the ROM parks
arg0 in $s0 -- then no number of declarations helps, and one, two and four of
them are all inert there. Read the ROM's prologue for `sw $sN` before reaching
for a pad.

The report prints the ROM immediate in hex (as the listing spells it) and the
draft's in decimal (as objdump spells it); they are not typos.
"""
import glob, os, re, subprocess, sys, tempfile, shutil
sys.path.insert(0, 'tools/decomp')
from measure_seeds import guard_blocks, cut_draft
SP = re.compile(r'addiu\s+\$?sp,\s*\$?sp,\s*(-?(?:0x)?[0-9A-Fa-f]+)')
rows = []
for pat in sys.argv[1:]:
    for c in sorted(glob.glob(pat)):
        lines = open(c, errors='replace').read().split('\n')
        for st, en, pi, listing in guard_blocks(lines):
            func = os.path.basename(listing)[:-2]
            d = tempfile.mkdtemp(prefix='fs_')
            try:
                sp = os.path.join(d, os.path.basename(c))
                open(sp, 'w').write('\n'.join(cut_draft(lines, st, en, pi)))
                env = dict(os.environ,
                           VERIFY_EXTRA_INC=os.path.dirname(os.path.abspath(c)) or '.',
                           VERIFY_SECBASE_SRC=c, VERIFY_MAXDIFF='400')
                r = subprocess.run([sys.executable, 'tools/decomp/verify.py', sp, func],
                                   capture_output=True, text=True, env=env)
            finally:
                shutil.rmtree(d, ignore_errors=True)
            for line in r.stdout.split('\n'):
                if 'addiu' in line and 'sp' in line and 'target=' in line and 'current=' in line:
                    t, cur = line.split('| current=')
                    mt = SP.search(t); mc = SP.search(cur)
                    if mt and mc and mt.group(1) != mc.group(1):
                        rows.append((func, c, mt.group(1), mc.group(1)))
                    break
rows.sort(key=lambda r: r[1])
print(f'{len(rows)} guarded draft(s) with a WRONG FRAME')
print('  function                     ROM      draft    file')
for f, c, t, cu in rows:
    print(f'  {f:28s} {t:>8s} {cu:>8s}  {c}')
