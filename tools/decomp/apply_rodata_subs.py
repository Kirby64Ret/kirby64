#!/usr/bin/env python3
"""Apply FIXABLE constant substitutions for ONE file. Caller relinks and gates."""
import re, subprocess, sys
sys.path.insert(0, 'tools/decomp')
from fix_rodata_refs import LIT, lit_bits, body_span

cf = sys.argv[1]; seg = cf.split('/')[1]
out = subprocess.run([sys.executable, 'tools/decomp/find_rodata_targets.py', seg],
                     capture_output=True, text=True).stdout
cur = None; jobs = {}
for line in out.split('\n'):
    m = re.match(r'^(\w+)\s+\((src/[\w/.]+)\)', line)
    if m:
        cur = (m.group(1), m.group(2)); jobs[cur] = []; continue
    t = re.match(r'\s+0x([0-9A-F]{8})\s+(\S+)\s+= ([0-9A-F]{8})\s+\S+\s+(.*)$', line)
    if t and cur and t.group(4).strip() == 'FIXABLE':
        jobs[cur].append((t.group(2), int(t.group(3), 16)))
items = [(fn, refs) for (fn, f), refs in jobs.items() if f == cf and refs]
if not items:
    print(f'{cf}: nothing fixable'); raise SystemExit(1)

txt = open(cf).read()
decls = sorted({s for _, refs in items for s, _ in refs})
missing = [d for d in decls if not re.search(rf'\bextern f32 [^;]*\b{d}\b', txt)]
if missing:
    # LINE-NEUTRAL insertion. IDO's register allocation is line-number
    # sensitive, so adding declaration lines shifts every function below and
    # breaks ones that were already correct -- 36, 96 and 63 regressions on
    # three files before this. Put them all on ONE line and consume an
    # existing blank line so the file's line count does not change.
    decl = 'extern f32 ' + ', '.join(missing) + ';'
    incs = list(re.finditer(r'^#include .*$', txt, re.M))
    at = incs[-1].end() if incs else 0
    m = re.compile(r'\n[ \t]*\n').search(txt, at)
    if m is None:
        print(f'{cf}: no blank line to reuse; refusing to shift lines')
        raise SystemExit(1)
    txt = txt[:m.start()] + '\n' + decl + txt[m.end() - 1:]
n = 0
for fn, refs in items:
    span = body_span(txt, fn)
    if span is None:
        continue
    a, b = span; body = txt[a:b]
    lits = list(LIT.finditer(body)); used = set(); pairs = []; ok = True
    for symn, bits in refs:
        hit = next((l for l in lits if l.start() not in used
                    and lit_bits(l.group(0)) == bits), None)
        if hit is None:
            ok = False; break
        used.add(hit.start()); pairs.append((hit, symn))
    if not ok:
        continue
    for lm, symn in sorted(pairs, key=lambda p: -p[0].start()):
        body = body[:lm.start()] + symn + body[lm.end():]
    txt = txt[:a] + body + txt[b:]; n += len(pairs)
open(cf, 'w').write(txt)
print(f'{cf}: {n} substitution(s) in {len(items)} function(s)')
