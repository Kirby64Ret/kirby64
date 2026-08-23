#!/usr/bin/env python3
"""Rewrite float literals as extern references to the ROM's own data symbols.

When a converted function writes a float constant as a literal, IDO puts a
COPY in the object's .rodata and references that. The ROM instead references
a named symbol in the segment's data block. The instruction encodings are
identical apart from the relocation, so this used to pass verification -- but
the duplicate constant grows the segment, and it accounts for the entire
residual ROM difference (rodata oversize on ovl11/13/14/15/16/17/18).

Note the ROM often has SEVERAL distinct symbols holding the SAME value (e.g.
2*pi at D_801E5688/568C/5690). A literal cannot express that -- IDO would
share one slot -- so each use has to name its own symbol.

Driven by verify.py's own diff output, so the symbol and the instruction
index are the ROM's, not guessed. Literals inside a function are matched to
diffs in order: IDO allocates rodata slots in first-use order.

Every file is verified after rewriting and rolled back on any regression.

Usage: fix_rodata_refs.py <file.c> [...]
"""
import os, re, subprocess, sys

# Repo root, derived from this file's own location. Never hardcode an
# absolute path here: it leaks whoever's machine it was written on into
# the repository, and it makes the tool fail for everyone else.
REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)
S = os.path.dirname(os.path.abspath(__file__))

DIFF = re.compile(
    r'^\s*\[\s*(\d+)\]\s+target=\w+ \S+\s+\S+ %lo\((\w+)\)\(\$at\).*?'
    r'references own section', re.M)
FUNC = re.compile(r'^(\w+): DIFF', re.M)
# per-function diff counts, so a rollback decision can see a function that
# regressed into a DIFFERENT class of diff rather than only the rodata one
COUNT = re.compile(r'^(\w+): DIFF (\d+)/', re.M)
# A float literal token, INCLUDING a leading unary minus and scientific
# notation: 1.2f, 9999.0f, .5f, 1e-6f, -0.2f.
#
# The sign matters: the ROM stores -0.2f as its own constant (0xBE4CCCCD), so
# the substitution has to swallow the minus, not leave `-SYM` behind. A minus
# is unary only when what precedes it is not the end of an operand -- `a-0.2f`
# is a subtraction, `(-0.2f` and `= -0.2f` are not.
LIT = re.compile(r'(?<![\w.)\]])(?:-\s*)?(?:\d+\.\d*|\.\d+|\d+)(?:[eE][+-]?\d+)?f')


def run_verify(cfile):
    return subprocess.run([sys.executable, f'{S}/verify.py', cfile, '--all'],
                          capture_output=True, text=True).stdout


def diffs_by_func(out):
    """{func: [symbol, ...]} in instruction order, own-section diffs only."""
    res, cur = {}, None
    for line in out.split('\n'):
        m = FUNC.match(line)
        if m:
            cur = m.group(1); res.setdefault(cur, [])
            continue
        d = DIFF.match(line)
        if d and cur:
            res[cur].append((int(d.group(1)), d.group(2)))
    return {k: [s for _, s in sorted(v)] for k, v in res.items() if v}


def diff_counts(out):
    return {m.group(1): int(m.group(2)) for m in COUNT.finditer(out)}


def body_span(txt, fn):
    m = re.search(rf'^(?!#)(?:[\w\*]+[ \t]+)+?{re.escape(fn)}[ \t]*\([^;{{]*\)\s*\{{',
                  txt, re.M)
    if not m:
        return None
    i, depth = m.end() - 1, 0
    for j in range(i, len(txt)):
        if txt[j] == '{': depth += 1
        elif txt[j] == '}':
            depth -= 1
            if depth == 0:
                return m.start(), j + 1
    return None


def sym_values():
    """{symbol: float32 bits} for every .float/.word in the data listings."""
    out = {}
    for f in __import__('glob').glob('asm/data/**/*.s', recursive=True):
        cur = None
        for line in open(f):
            m = re.match(r'dlabel (\w+)', line)
            if m:
                cur = m.group(1); continue
            w = re.search(r'/\* \w+ \w+ ([0-9A-F]{8}) \*/', line)
            if w and cur:
                out.setdefault(cur, int(w.group(1), 16)); cur = None
    return out


def lit_bits(tok):
    import struct
    v = float(tok.rstrip('f').replace(' ', ''))
    return struct.unpack('>I', struct.pack('>f', v))[0]


def main():
    VALS = sym_values()
    for cfile in sys.argv[1:]:
        original = open(cfile).read()
        base_out = run_verify(cfile)
        baseline = int(re.search(r'(\d+) diff', base_out.strip().split('\n')[-1]).group(1))
        syms = diffs_by_func(base_out)
        base_counts = diff_counts(base_out)
        if not syms:
            print(f'{cfile}: nothing to fix')
            continue
        # Insert the extern declarations FIRST, so every per-function
        # verification below sees the file's final line numbering. IDO's
        # register allocation is line-number sensitive, so adding them at the
        # end silently invalidated the checks that had already passed.
        decls = sorted({s for v in syms.values() for s in v})
        need = ''.join(f'extern f32 {d};\n' for d in decls
                       if f'extern f32 {d};' not in original)
        txt = original
        if need:
            incs = list(re.finditer(r'^#include .*$', txt, re.M))
            at = incs[-1].end() if incs else 0
            txt = txt[:at] + '\n\n' + need.rstrip('\n') + txt[at:]
            open(cfile, 'w').write(txt)
        applied = 0
        for fn, symlist in syms.items():
            span = body_span(txt, fn)
            if span is None:
                print(f'  {fn}: body not found, skipped')
                continue
            a, b = span
            body = txt[a:b]
            # match each ROM symbol to a literal with the SAME float32 bits,
            # in order -- several symbols may share a value, so position
            # within the run is what distinguishes them
            lits = list(LIT.finditer(body))
            used, pairs, ok = set(), [], True
            for sym in symlist:
                want = VALS.get(sym)
                hit = next((l for l in lits
                            if l.start() not in used and want is not None
                            and lit_bits(l.group(0)) == want), None)
                if hit is None:
                    print(f'  {fn}: no literal matches {sym} '
                          f'({"unknown value" if want is None else format(want, "08X")})')
                    ok = False; break
                used.add(hit.start()); pairs.append((hit, sym))
            if not ok:
                continue
            before = txt
            for lm, sym in sorted(pairs, key=lambda p: -p[0].start()):
                body = body[:lm.start()] + sym + body[lm.end():]
            txt = txt[:a] + body + txt[b:]
            open(cfile, 'w').write(txt)
            now = diff_counts(run_verify(cfile)).get(fn, 0)
            # Compare COUNTS, not just presence in the rodata class: mapping a
            # symbol onto the wrong literal turns 1 rodata diff into dozens of
            # ordinary ones, which a class-only check waves through.
            if now != 0:      # goal is byte-exact; anything else is not a win
                txt = before
                open(cfile, 'w').write(txt)
                print(f'  {fn}: rolled back ({base_counts.get(fn,0)} -> {now})')
            else:
                applied += len(pairs)
        if not applied:
            open(cfile, 'w').write(original)
            print(f'{cfile}: no substitution reached 0 diff, file restored')
            continue
        open(cfile, 'w').write(txt)
        # Roll back only on a REGRESSION. Requiring the whole file to reach
        # 0 diff threw away every per-function gain whenever one unrelated
        # function in the file was still wrong for some other reason.
        out = run_verify(cfile)
        tail = out.strip().split('\n')[-1]
        after = int(re.search(r'(\d+) diff', tail).group(1))
        before_n = baseline
        if after <= before_n:
            print(f'{cfile}: {applied} literal(s) -> data symbols  {tail.strip()}')
        else:
            open(cfile, 'w').write(original)
            print(f'{cfile}: ROLLED BACK (regression {before_n} -> {after})')


if __name__ == '__main__':
    main()
