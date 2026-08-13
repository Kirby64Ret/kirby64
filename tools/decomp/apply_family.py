#!/usr/bin/env python3
"""Apply a clone family's C form to every member, keeping only what verifies.

Each member is converted, verified on its own, and rolled back to its
#pragma GLOBAL_ASM if it does not come out 0-diff. Nothing that fails is left
in the tree, so this is safe to run unattended -- unlike a bulk conversion,
which can leave a segment silently short.

Rollback matters here because of the dead-epilogue rule (see LEVERS.md):
IDO aligns the unreachable epilogue after an infinite loop to 32 bytes, so
whether a given copy needs trailing nops depends on where it sits relative to
its translation unit's base address. Two copies of identical source therefore
do not always produce identical code, and only verification can tell them
apart.

Usage: apply_family.py <family.json>
       family.json = [{fn, cf, seg, tu, body}] where body is the full C text
"""
import json, os, re, subprocess, sys

REPO = '/home/user/kirby64_decomp'
os.chdir(REPO)
S = os.path.dirname(os.path.abspath(__file__))


def pragma_of(it):
    return f'#pragma GLOBAL_ASM("asm/nonmatchings/{it["seg"]}/{it["tu"]}/{it["fn"]}.s")'


def verify(cf, fn):
    r = subprocess.run([sys.executable, f'{S}/verify.py', cf, fn],
                       capture_output=True, text=True)
    return f'{fn}: MATCH' in r.stdout


def main():
    items = json.load(open(sys.argv[1]))
    kept = failed = skipped = 0
    for it in items:
        cf = it['cf']
        txt = open(cf).read()
        prag = pragma_of(it)
        if prag not in txt:
            skipped += 1
            continue
        # header additions, if the family needs any
        pre = it.get('prelude', '')
        new = txt.replace(prag, it['body'], 1)
        # Insert each missing #include individually, after the file's last
        # existing one. An earlier family may already have rewritten the
        # header block, so anchoring on a fixed prelude string silently does
        # nothing and the build then fails on an undeclared symbol.
        missing = [l for l in pre.splitlines() if l.strip() and l not in new]
        if missing:
            incs = list(re.finditer(r'^#include .*$', new, re.M))
            at = incs[-1].end() if incs else 0
            new = new[:at] + '\n' + '\n'.join(missing) + new[at:]
        open(cf, 'w').write(new)
        if verify(cf, it['fn']):
            kept += 1
            print(f'  MATCH   {it["fn"]}')
        else:
            open(cf, 'w').write(txt)      # exact rollback
            failed += 1
            print(f'  rolled back {it["fn"]}')
    print(f'-- kept {kept}, rolled back {failed}, already done {skipped} --')


if __name__ == '__main__':
    main()
