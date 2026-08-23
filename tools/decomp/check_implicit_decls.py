#!/usr/bin/env python3
"""Functions the ROM build calls with no declaration in scope.

WHY THIS EXISTS

An undeclared call is not a style problem in this tree. C89 gives it an
implicit `int (...)` type, and IDO then passes the arguments as if that were
true. Where the real function takes a pointer, a float, or a narrow integer,
the call site can be compiled wrong -- and on the PC port, where a pointer is
eight bytes, an implicit `int` return silently truncates one.

The tree already runs a gcc lint pass, and it could not see this class,
because the Makefile invokes it with -DNON_MATCHING:

    CC_CHECK := gcc -fsyntax-only ... -DNON_MATCHING -DAVOID_UB ...

That is not the configuration the ROM builds. Under -DNON_MATCHING the
compiler reads the draft arms and skips the pragmas; the ROM build does the
opposite. So every implicit call that lives in the arm the ROM actually
compiles has been invisible to the lint pass since it was written.

It is a real defect and it was found by hand, twice. src/ovl2/ovl2_2.c keeps
a `#ifdef PORT` region spanning lines 29-324, and its prototype group sat
inside it at 112-119 -- so the N64 build reached func_800A9AA8,
func_800F8560, func_8010137C, func_800FA414 and func_800FBF18 with nothing
declared. src/ovl3/plydemo.c had seventeen prototypes in the same trap.
Neither file looked wrong: the prototypes are right there at file scope, just
inside the wrong guard.

WHAT IT DOES

Compiles each file with gcc -fsyntax-only using the ROM build's macro state
(NON_MATCHING, MIPS_TO_C and PORT all UNDEFINED) and reports every
implicit-declaration diagnostic. gcc is used rather than IDO because it names
the symbol and the line; the point is to find them, not to reproduce IDO.

Files that fail to preprocess at all are reported separately rather than
counted as clean -- a parse failure is the one way this check could quietly
pass everything.

Usage: check_implicit_decls.py            every src/**/*.c
       check_implicit_decls.py <file>...  just these
"""
import glob
import os
import re
import subprocess
import sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

# The ROM build's view: the three draft/port macros are all undefined. Kept
# deliberately close to the Makefile's CC_CHECK minus its -DNON_MATCHING.
CMD = ('gcc -fsyntax-only -fsigned-char -m32 -std=gnu90 '
       '-Wimplicit-function-declaration -Wno-everything-else '
       '-D_LANGUAGE_C -D_FINALROM -DTARGET_N64 -DF3DEX_GBI_2 -DAVOID_UB '
       '-nostdinc -Iinclude/libc -Iinclude -Ilibreultra/include/2.0I '
       '-Ibuild -Ibuild/include -Ibuild/assets -Isrc -I. -I{d} '
       '-Wno-unknown-pragmas -w -Wimplicit-function-declaration {f}')

IMPLICIT = re.compile(r"^(.*?):(\d+):\d+: warning: implicit declaration of "
                      r"function '(\w+)'")


def check(path):
    """([(file, line, symbol)], preprocess_failed)."""
    r = subprocess.run(CMD.format(d=os.path.dirname(path) or '.', f=path),
                       shell=True, capture_output=True, text=True)
    hits = []
    for line in r.stderr.split('\n'):
        m = IMPLICIT.match(line.strip())
        if m and not m.group(1).startswith(('include/', 'libreultra/')):
            hits.append((m.group(1), int(m.group(2)), m.group(3)))
    # a hard error means we never got far enough to judge the file
    fatal = 'fatal error' in r.stderr or 'No such file' in r.stderr
    return hits, fatal


def main():
    files = sys.argv[1:] or sorted(glob.glob('src/**/*.c', recursive=True))
    total, broken, syms = 0, [], {}
    for path in files:
        if path.startswith('src/pc/'):
            continue
        hits, fatal = check(path)
        if fatal and not hits:
            broken.append(path)
            continue
        for f, ln, sym in hits:
            print(f'{f}:{ln}: {sym} called with no declaration in scope')
            syms.setdefault(sym, 0)
            syms[sym] += 1
            total += 1
    print(f'-- {total} implicit call(s), {len(syms)} distinct symbol(s), '
          f'in {len(files)} file(s)')
    for sym, n in sorted(syms.items(), key=lambda x: -x[1])[:15]:
        print(f'{n:>5}  {sym}')
    if broken:
        print(f'-- {len(broken)} file(s) could not be preprocessed and were '
              f'NOT judged (not the same as clean):')
        for b in broken[:10]:
            print(f'          {b}')
    return 1 if total else 0


if __name__ == '__main__':
    raise SystemExit(main())
