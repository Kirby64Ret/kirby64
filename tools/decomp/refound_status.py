#!/usr/bin/env python3
"""Rule compliance: no function may be PORTED before its decomp is solved.

THE RULE

    A function may carry a PORT implementation only if its decompilation
    exists first -- either byte-exact (un-guarded C, pragma deleted) or a
    verified near-miss draft guarded for the permuter factory.

WHAT THIS MEASURES

A function VIOLATES the rule when the PC build has real code for it while
the N64 build still assembles the original listing, i.e. its
`#pragma GLOBAL_ASM` survives `unifdef -UPORT` but disappears under
`unifdef -DPORT`. That is exactly "ported, never decompiled".

A function is COMPLIANT once either:
  - the decomp closed: the pragma is gone from BOTH views (the C is live in
    the N64 build, whether or not a PORT arm sits beside it), or
  - a decomp draft exists at the site: an `#ifdef MIPS_TO_C` /
    `#ifdef NON_MATCHING` block carrying a `FACTORY:` residue note, which is
    the permuter's input queue.

Drafts are counted separately from closures because they are a promise, not
a delivery -- but they are the honest state of a function whose only residue
is register allocation, which no source spelling reaches.

Usage:  refound_status.py           summary
        refound_status.py --list    every violating function, by file
        refound_status.py --files   per-file counts, worst first
"""
import glob
import os
import re
import subprocess
import sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

PRAGMA = re.compile(r'GLOBAL_ASM\("([^"]+)"\)')


def view(path, define):
    """The file as one of the two builds sees it."""
    flag = '-D' + define if define else '-U' + 'PORT'
    out = subprocess.run(['unifdef', flag, path], capture_output=True, text=True)
    # unifdef exits 1 when it changed something; both 0 and 1 are success.
    return out.stdout if out.returncode in (0, 1) else ''


def draft_sites(path, text):
    """Set of asm listings whose pragma sits in a conditional group that also
    holds a decomp draft (an `#ifdef MIPS_TO_C` / `#ifdef NON_MATCHING` arm,
    normally carrying a `FACTORY:` residue note).

    A draft is NOT a solved decomp -- the ROM still assembles the listing --
    but it is banked work with a measured residue, and it is the permuter
    factory's input. It is counted apart from functions where nothing has
    been attempted at all."""
    lines = text.split('\n')
    stack, groups = [], []          # groups: (start, end)
    for i, l in enumerate(lines):
        ls = l.lstrip()
        if ls.startswith('#if'):
            stack.append(i)
        elif ls.startswith('#endif') and stack:
            groups.append((stack.pop(), i))
    seeded = set()
    for a in PRAGMA.findall(text):
        # line of this pragma
        ln = next((i for i, l in enumerate(lines) if a in l and 'GLOBAL_ASM' in l), None)
        if ln is None:
            continue
        inner = [g for g in groups if g[0] < ln < g[1]]
        if not inner:
            continue
        st, en = min(inner, key=lambda g: g[1] - g[0])
        block = '\n'.join(lines[st:en + 1])
        if not ('MIPS_TO_C' in block or 'NON_MATCHING' in block):
            continue
        # The residue note is normally inside the guard, but the established
        # house style in ovl5/ovl7/ovl19 puts it in the block comment directly
        # ABOVE the `#ifdef`, where it reads as documentation for the whole
        # site. Both spellings mean the same thing: banked work with a
        # measured residue. Only looking inside re-advertised 80 already
        # drafted functions tree-wide (24 of them in ovl7 alone) as
        # never-attempted, which is exactly the "guarded drafts are not
        # yours" trap RULE ZERO in LEVERS.md exists to prevent -- a lane
        # picking them up re-derives work the permuter already owns.
        if 'FACTORY:' in block:
            seeded.add(a)
            continue
        head = '\n'.join(lines[max(0, st - 80):st]).rstrip()
        if head.endswith('*/'):
            k = head.rfind('/*')
            if k != -1 and 'FACTORY:' in head[k:]:
                seeded.add(a)

    # A draft does not have to share a guard group with its pragma. ovl11.c
    # keeps func_801DD270_ovl11's pragma above a LATER function -- the file
    # notes it explicitly -- while the draft sits in its own `#ifdef
    # MIPS_TO_C` further down. Requiring the two to be co-located reported
    # that function as never-attempted when the lane had in fact banked a
    # measured 32/136 draft with a documented lever sweep. Match on the
    # function NAME as well, which is what actually decides whether the work
    # exists.
    for a in PRAGMA.findall(text):
        if a in seeded:
            continue
        func = os.path.basename(a)
        if func.endswith('.s'):
            func = func[:-2]
        defn = re.compile(r'^\w[\w \t*]*\b%s\s*\(' % re.escape(func), re.M)
        for st, en in groups:
            block = '\n'.join(lines[st:en + 1])
            if ('MIPS_TO_C' in block or 'NON_MATCHING' in block) \
                    and 'FACTORY:' in block and defn.search(block):
                seeded.add(a)
                break
    return seeded


def scan():
    bare, seeded = {}, {}
    for path in sorted(glob.glob('src/**/*.c', recursive=True)):
        if path.startswith('src/pc/'):
            continue
        text = open(path, errors='replace').read()
        if 'GLOBAL_ASM' not in text:
            continue
        n64 = set(PRAGMA.findall(view(path, None)))       # -UPORT: the N64 build
        pc = set(PRAGMA.findall(view(path, 'PORT')))      # -DPORT: the PC build
        violating = n64 - pc
        if not violating:
            continue
        has_draft = draft_sites(path, text)
        b = sorted(violating - has_draft)
        s_ = sorted(violating & has_draft)
        if b:
            bare[path] = b
        if s_:
            seeded[path] = s_
    return bare, seeded


def main():
    bare, seeded = scan()
    nb = sum(len(v) for v in bare.values())
    ns = sum(len(v) for v in seeded.values())

    if '--list' in sys.argv:
        for path in sorted(set(bare) | set(seeded)):
            for a in bare.get(path, []):
                print(f'BARE\t{path}\t{os.path.basename(a)[:-2]}')
            for a in seeded.get(path, []):
                print(f'SEEDED\t{path}\t{os.path.basename(a)[:-2]}')
    elif '--files' in sys.argv:
        allf = {p: len(bare.get(p, [])) + len(seeded.get(p, []))
                for p in set(bare) | set(seeded)}
        for path, n in sorted(allf.items(), key=lambda kv: -kv[1]):
            print(f'{n:5d}  ({len(bare.get(path, [])):3d} bare, '
                  f'{len(seeded.get(path, [])):3d} seeded)  {path}')

    print(f'-- ported, decomp NOT STARTED : {nb}')
    print(f'-- ported, decomp DRAFTED     : {ns}  (near-miss, factory queue)')
    print(f'-- rule outstanding (total)   : {nb + ns}')
    return 1 if (nb + ns) else 0


if __name__ == '__main__':
    raise SystemExit(main())
