#!/usr/bin/env python3
"""Every `#pragma GLOBAL_ASM` naming a func_ADDR listing must appear in
ascending address order within its file.

WHY THIS EXISTS

src/ovl9/ovl9_14.c had two pragma FILENAMES transposed: the slot for
func_80210570_ovl9 named func_802130F4_ovl9.s and vice versa. Each pragma
therefore pasted the other function's assembly, and the two bodies were
emitted at each other's addresses -- 67 of that file's 109 functions ended up
misplaced.

Every existing gate was blind to it:

  check_tu_size.py      a swap conserves total size; .text stayed exact
  check_rodata_bytes.py silently skipped the file (see below)
  verify.py             both functions are pragmas, so "unverifiable"

The only visible trace was a relocation drift of exactly 8 bytes bleeding
into two unrelated compiled functions downstream, because these listings
carry their own .late_rodata and the pool is assembled in PRAGMA order: the
4-word block and the 2-word block traded places, so everything between them
sat 8 bytes low.

This check needs no compiler and no build. It is ten lines of real work and
it catches the whole class instantly.

WHAT IT CANNOT SEE

Only listings whose basename encodes an address (func_ADDR[_ovlN].s). Named
functions and hand-written asm_manual listings are skipped, and a file with
fewer than two address-bearing pragmas is trivially in order.

Usage: check_pragma_order.py            check every src/**/*.c
       check_pragma_order.py <file>...  check just these
"""
import glob
import re
import sys

PRAGMA = re.compile(r'#pragma\s+GLOBAL_ASM\("([^"]+)"\)')
ADDR = re.compile(r'func_([0-9A-Fa-f]{8})(?:_ovl\d+)?\.s$')


def check(path):
    """Return a list of (line, name, prev_line, prev_name) inversions."""
    seen = []
    for i, line in enumerate(open(path, errors='replace'), 1):
        m = PRAGMA.search(line)
        if not m:
            continue
        a = ADDR.search(m.group(1))
        if not a:
            continue
        seen.append((i, int(a.group(1), 16), m.group(1).rsplit('/', 1)[-1]))

    bad = []
    for (ln, addr, name), (pln, paddr, pname) in zip(seen[1:], seen):
        if addr < paddr:
            bad.append((ln, name, pln, pname))
    return bad


def main():
    files = sys.argv[1:] or sorted(glob.glob('src/**/*.c', recursive=True))
    total = 0
    for path in files:
        if path.startswith('src/pc/'):
            continue
        try:
            bad = check(path)
        except OSError:
            continue
        for ln, name, pln, pname in bad:
            print(f'{path}: line {pln} {pname} -> line {ln} {name}  '
                  f'(out of ascending address order)')
            total += 1
    print(f'-- {total} pragma-order inversion(s) in {len(files)} file(s)')
    if total:
        print('A transposed pragma filename pastes another function\'s asm at '
              'this address.\nCompare each flagged pragma against the function '
              'its slot actually defines.')
    return 1 if total else 0


if __name__ == '__main__':
    raise SystemExit(main())
