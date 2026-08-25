#!/usr/bin/env python3
"""Enumerate guarded drafts whose ROM listing compares a float against a
materialised 0.0f (mtc1 $zero / mtc1 $r0) and which contain no ABS/ABSF.

The tell: IDO expands ABSF(x) = ((x) < 0.0f ? -(x) : (x)) into an explicit
c.lt.s against a register loaded from $zero.  A draft that omits the macro is
short exactly the compare, the branch, the neg.s, and -- because the macro
names x three times -- any duplication of the operand expression.
"""
import os, re, sys
sys.path.insert(0, 'tools/decomp')
from measure_seeds import guard_blocks

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
            draft = '\n'.join(lines[st:en])
            if re.search(r'\bABSF?\s*\(', draft):
                continue
            func = os.path.basename(listing)[:-2]
            rows.append((n, path, func, en - st))

rows.sort(key=lambda r: -r[0])
print(f'{len(rows)} guarded drafts: mtc1-$zero compare, no ABS/ABSF in draft')
for n, path, func, sz in rows:
    print(f'{n:4d}  {func:28s} {path:34s} draft={sz} lines')
