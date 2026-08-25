#!/usr/bin/env python3
"""Enumerate guarded drafts whose ROM listing compares a float against a
materialised 0.0f (mtc1 $zero / mtc1 $r0) and which contain no ABS/ABSF.

THREE THINGS THIS LIST DOES NOT TELL YOU, all learned the hard way:

1. It reads the WORKING TREE, which several lanes edit concurrently. A draft
   carrying another lane's in-flight ABSF experiment is excluded, and comes
   back onto the list when that lane reverts. func_8019CE28_ovl7 was reported
   absent on one run and present at 10/4 an hour later for exactly that
   reason, and a lane was told to skip it on the strength of the first run.
   Re-run the sweep yourself; do not trust a list someone pasted at you.

2. A high compare count is not a high payoff. IDO folds `ABSF(a - b)`'s
   `(a - b) < 0.0f` into `c.lt.s a, b`, so a macro applied to a DIFFERENCE
   materialises no zero at all and never appears here. func_801B9E80_ovl7
   closed on an ABSF this sweep listed for an unrelated reason. See LEVER 73.

3. It does not screen for drafts whose PROLOGUE is wrong. Four of the
   strongest-looking candidates -- func_801DF5D0_ovl13, func_801A7524_ovl7,
   func_801133C8, func_801DB870_ovl13 -- are wrong at instruction 0
   (`addiu $sp, -408` against `-0x70` and the like), and a macro edit in the
   body cannot show up in the score at all until the frame is right. Score the
   draft BEFORE working it and look at where diff 0 is; if it is in the
   prologue, fix the shape first (LEVER 69 makes the same point for LEVER 58).

The tell: IDO expands ABSF(x) = ((x) < 0.0f ? -(x) : (x)) into an explicit
c.lt.s against a register loaded from $zero.  A draft that omits the macro is
short exactly the compare, the branch, the neg.s, and -- because the macro
names x three times -- any duplication of the operand expression.
"""
import os, re, sys
sys.path.insert(0, 'tools/decomp')
from measure_seeds import guard_blocks

NEG   = re.compile(r'\bneg\.s\s+(\$f\d+)\s*,\s*(\$f\d+)')
MTC1Z = re.compile(r'\bmtc1\s+\$(?:zero|r0|0)\s*,\s*(\$f\d+)')
CMP   = re.compile(r'\bc\.(?:lt|le)\.s\s+(\$f\d+)\s*,\s*(\$f\d+)')

rows = []
for root, _, files in os.walk('src'):
    for fn in sorted(files):
        if not fn.endswith('.c'):
            continue
        path = os.path.join(root, fn)
        lines = open(path, errors='replace').read().split('\n')
        try:
            blocks = list(guard_blocks(lines))
        except Exception:
            continue
        for st, en, prag_i, listing in blocks:
            if not os.path.exists(listing):
                continue
            asm = open(listing, errors='replace').read()
            zregs = set(MTC1Z.findall(asm))
            if not zregs:
                continue
            n = sum(1 for a, b in CMP.findall(asm) if a in zregs or b in zregs)
            if not n:
                continue
            # A listing with no neg.s cannot contain an ABSF expansion at all:
            # the macro's then-arm IS the negation.  Without this filter the
            # sweep reports every real `x < 0.0f` sign test as well -- 207
            # drafts instead of the ones that can actually pay.
            nneg = len(NEG.findall(asm))
            if not nneg:
                continue
            draft = '\n'.join(lines[st:en])
            if re.search(r'\bABSF?\s*\(', draft):
                continue
            func = os.path.basename(listing)[:-2]
            rows.append((n, nneg, path, func, en - st))

# --screen: score each candidate and report where its FIRST diff is. A draft
# whose diff 0 is the stack adjustment is frame-blocked, and no macro edit in
# its body can move the number until the shape is fixed. One compile each, so
# it is slow -- run it once and keep the output.
if '--screen' in sys.argv:
    import subprocess, tempfile, shutil
    from measure_seeds import cut_draft
    rows.sort(key=lambda r: (-min(r[0], r[1]), -r[0]))
    print(f'{len(rows)} candidate(s); scoring each to find where diff 0 is')
    print('  cmp   neg  first-diff  function')
    for n, nneg, path, func, sz in rows:
        lines = open(path, errors='replace').read().split('\n')
        first = 'unscorable'
        for st, en, prag_i, listing in guard_blocks(lines):
            if os.path.basename(listing)[:-2] != func:
                continue
            d = tempfile.mkdtemp(prefix='as_')
            try:
                sp = os.path.join(d, os.path.basename(path))
                open(sp, 'w').write('\n'.join(cut_draft(lines, st, en, prag_i)))
                env = dict(os.environ,
                           VERIFY_EXTRA_INC=os.path.dirname(os.path.abspath(path)) or '.',
                           VERIFY_SECBASE_SRC=path, VERIFY_MAXDIFF='1')
                r = subprocess.run([sys.executable, 'tools/decomp/verify.py',
                                    sp, func], capture_output=True, text=True,
                                   env=env)
                # NOT just index 0. A lane showed the index-0 test
                # under-reports: prologues here routinely materialise a global
                # before the stack adjustment, so func_801E429C_ovl9 reports
                # its first diff at index 2 and is nonetheless completely
                # frame-blocked. Read the first few diffs and flag any that
                # names $sp or a saved-register slot.
                idx = re.findall(r'^\s*\[\s*(\d+)\]([^\n]*)', r.stdout, re.M)
                if idx:
                    first = idx[0][0]
                    for at, body in idx[:4]:
                        if int(at) > 4:
                            break
                        if re.search(r'\$sp|\bsp,|addiu\s+\$?sp', body):
                            first = f'{first}*'
                            break
                elif 'MATCH' in r.stdout:
                    first = 'MATCH'
            finally:
                shutil.rmtree(d, ignore_errors=True)
            break
        flag = ('  <-- FRAME-BLOCKED, fix the shape first'
                if first.startswith('0') or first.endswith('*') else '')
        print(f'{n:5d} {nneg:5d}  {first:>10s}  {func:28s} {path}{flag}')
    raise SystemExit(0)

rows.sort(key=lambda r: (-min(r[0], r[1]), -r[0]))
print(f'{len(rows)} guarded drafts: mtc1-$zero compare AND a neg.s, no ABS/ABSF')
print('  cmp   neg  function                     file')
for n, nneg, path, func, sz in rows:
    print(f'{n:5d} {nneg:5d}  {func:28s} {path:34s} draft={sz} lines')
