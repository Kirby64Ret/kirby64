#!/usr/bin/env python3
"""Which un-decompiled functions the PC port is actually waiting on, by file.

WHY THIS EXISTS

The port and the decompilation are not separate projects racing each other --
the port is BLOCKED on the decompilation, and only on a specific, knowable
subset of it. tools/pc/gap.py says so in its own summary:

    platform layer: 21 symbols. Decompilation still owes 56 functions;
    until those land the binary cannot link no matter how complete the
    platform layer is.

Those 56 are the only functions whose completion changes whether a native
binary exists. Everything else in the tree improves the match percentage. So
the port's link gap is the decompilation's priority order, and this tool is
the wire between them: it takes gap.py's list of undefined func_* symbols,
finds the `#pragma GLOBAL_ASM` that still stands in for each one, and groups
them into per-file work packages that can be handed to lanes without two
lanes ever touching the same file.

Re-run it whenever a wave of lanes lands. As functions close, the list
shrinks; when it reaches zero the link is a platform-layer problem only.

Usage: port_blockers.py            the work packages
       port_blockers.py --flat     one function per line
"""
import glob
import os
import re
import subprocess
import sys
from collections import defaultdict

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

PRAGMA = re.compile(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)')


def blockers():
    """The func_* symbols gap.py reports as undefined for the PC link."""
    r = subprocess.run([sys.executable, 'tools/pc/gap.py', '--list', 'func'],
                       capture_output=True, text=True)
    if r.returncode != 0 and not r.stdout:
        raise SystemExit('gap.py failed -- run `make -f Makefile.pc objs` '
                         'first:\n' + r.stderr.strip())
    out = set()
    for line in r.stdout.split('\n'):
        s = line.strip()
        # the category table lines are "  name   count"; symbols stand alone
        if re.fullmatch(r'[A-Za-z_]\w*', s):
            out.add(s)
    return out


def main():
    want = blockers()
    loc = defaultdict(list)
    for f in sorted(glob.glob('src/**/*.c', recursive=True)):
        if f.startswith('src/pc/'):
            continue
        try:
            for line in open(f, errors='replace'):
                m = PRAGMA.search(line)
                if m and m.group(1) in want:
                    loc[f].append(m.group(1))
        except OSError:
            continue

    placed = {fn for v in loc.values() for fn in v}
    if '--flat' in sys.argv:
        for f in sorted(loc):
            for fn in loc[f]:
                print(f'{f}\t{fn}')
        return 0

    print(f'{"n":>4}  file')
    for f in sorted(loc, key=lambda x: (-len(loc[x]), x)):
        print(f'{len(loc[f]):>4}  {f}')
        for fn in loc[f]:
            print(f'          {fn}')
    print(f'\n-- {len(placed)} blocking pragma(s) in {len(loc)} file(s)')

    missing = sorted(want - placed)
    if missing:
        # A blocker with no pragma is not a decompilation task: it is either a
        # library symbol the platform layer owes, or a function whose listing
        # is referenced from somewhere this scan does not look.
        print(f'-- {len(missing)} blocker(s) with no GLOBAL_ASM in src/ '
              f'(platform-layer or library, not decomp work):')
        for m in missing:
            print(f'          {m}')
    print('\nAssign whole FILES to lanes, never individual functions in a '
          'shared file:\ntwo lanes editing one file is the merge conflict that '
          'costs more than the work.')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
