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


def scan():
    violations = {}   # file -> [asm listing, ...]
    drafted = 0
    for path in sorted(glob.glob('src/**/*.c', recursive=True)):
        if path.startswith('src/pc/'):
            continue
        text = open(path, errors='replace').read()
        if 'GLOBAL_ASM' not in text:
            continue
        n64 = set(PRAGMA.findall(view(path, None)))       # -UPORT: the N64 build
        pc = set(PRAGMA.findall(view(path, 'PORT')))      # -DPORT: the PC build
        bad = sorted(n64 - pc)
        if bad:
            violations[path] = bad
        drafted += len(re.findall(r'FACTORY:', text))
    return violations, drafted


def main():
    violations, drafted = scan()
    total = sum(len(v) for v in violations.values())

    if '--list' in sys.argv:
        for path in sorted(violations):
            for a in violations[path]:
                print(f'{path}\t{os.path.basename(a)[:-2]}')
    elif '--files' in sys.argv:
        for path, v in sorted(violations.items(), key=lambda kv: -len(kv[1])):
            print(f'{len(v):5d}  {path}')

    print(f'-- rule violations (ported, not decompiled): {total} '
          f'in {len(violations)} file(s)')
    print(f'-- decomp drafts seeded for the factory:     {drafted}')
    return 1 if total else 0


if __name__ == '__main__':
    raise SystemExit(main())
