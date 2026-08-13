#!/usr/bin/env python3
"""Find not-yet-decompiled functions that are clones of already-matched ones.

HAL reused code heavily -- both across overlays in this game and across their
other N64 titles. A function whose opcode stream is identical to one already
written in C can usually be decompiled by copying that C and renaming the
symbols it references, which is far cheaper than decompiling from scratch.

Matching ignores everything that legitimately differs between two copies:
  - the low 16 bits of every instruction (relocation immediates: %hi/%lo,
    branch/jump displacements, stack offsets, small constants)
  - the jump target of J/JAL
What is left is the opcode + register skeleton, which is what actually has to
agree for two functions to have come from the same C.

Reports clone groups where at least one member is already C (a donor) and at
least one is still a #pragma (a candidate).

Usage: find_clones.py [--min-insns N]   (default 12; below that too noisy)
"""
import re, os, sys, glob
from collections import defaultdict

REPO = '/home/user/kirby64_decomp'
os.chdir(REPO)

WORD = re.compile(r'/\* [0-9A-F]{5,8} [0-9A-F]{8} ([0-9A-F]{8}) \*/')


def skeleton(path):
    """(opcode/register skeleton, instruction count) for one listing."""
    words = [int(w, 16) for w in WORD.findall(open(path).read())]
    out = []
    for w in words:
        op = w >> 26
        if op in (2, 3):            # J / JAL -- target is a relocation
            out.append(op << 26)
        elif op == 0 or op == 16 or op == 17 or op == 18:
            out.append(w)           # SPECIAL/COPz: no immediate field
        else:
            out.append(w & 0xFFFF0000)   # mask the 16-bit immediate
    return bytes(b for x in out for b in x.to_bytes(4, 'big')), len(out)


def pragma_funcs():
    """{func: cfile} for every function still behind a #pragma."""
    out = {}
    for cf in glob.glob('src/**/*.c', recursive=True):
        for fn in re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)', open(cf).read()):
            out[fn] = cf
    return out


def main():
    minins = 12
    if '--min-insns' in sys.argv:
        minins = int(sys.argv[sys.argv.index('--min-insns') + 1])

    prag = pragma_funcs()
    groups = defaultdict(list)
    for f in glob.glob('asm/nonmatchings/**/*.s', recursive=True):
        fn = os.path.basename(f)[:-2]
        sk, n = skeleton(f)
        if n < minins:
            continue
        groups[sk].append((fn, f, n))

    # A function with a listing but no live pragma has been decompiled: the
    # listing is left behind but the C is what builds. Those are the donors.
    rows = []
    for sk, members in groups.items():
        donors = [m for m in members if m[0] not in prag]
        cands = [m for m in members if m[0] in prag]
        if donors and cands:
            rows.append((len(cands), donors, cands))
    rows.sort(key=lambda r: -r[0])

    total = 0
    for _, donors, cands in rows:
        total += len(cands)
        d = donors[0]
        print(f'{d[0]} ({d[2]} insns, already C) <- {len(cands)} pragma clone(s):')
        for fn, f, n in cands[:8]:
            print(f'    {fn:28} {prag[fn]}')
        if len(cands) > 8:
            print(f'    ... and {len(cands)-8} more')
    print(f'-- {total} pragma functions are exact clones of {len(rows)} already-C functions --')


if __name__ == '__main__':
    main()
