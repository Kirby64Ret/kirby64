#!/usr/bin/env python3
"""Score ONE guarded draft without touching the shared tree.

Two lanes and a factory process build in /home/user/kirby64_decomp at the same
time, so un-guarding a draft in place to run verify.py on it races both of
them -- and a draft left un-guarded for even one of their builds puts a
non-matching function into the ROM. This does what measure_seeds.measure_file
does (copy the file, cut the draft's guard out, hand verify.py the ORIGINAL
path so rodata bases and the compiler override still resolve) and then prints
the diff lines instead of only the count.

Usage: scratchverify.py <file.c> <func>
"""
import os
import shutil
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, HERE)
os.chdir(ROOT)
from measure_seeds import guard_blocks, cut_draft, PRAGMA          # noqa: E402


def main():
    path, func = sys.argv[1], sys.argv[2]
    lines = open(path, errors='replace').read().split('\n')
    for st, en, prag_i, listing in guard_blocks(lines):
        if os.path.basename(listing)[:-2] != func:
            continue
        # cut_draft, not a local copy of the cut: the pragma is not always
        # inside the draft's own conditional group (split sites keep it at the
        # function's address-ordered position), and leaving it in produces
        # "symbol defined twice" rather than a measurement.
        scratch = cut_draft(lines, st, en, prag_i)
        d = tempfile.mkdtemp(prefix='sv_')
        try:
            sp = os.path.join(d, os.path.basename(path))
            open(sp, 'w').write('\n'.join(scratch))
            env = dict(os.environ,
                       VERIFY_EXTRA_INC=os.path.dirname(os.path.abspath(path)) or '.',
                       VERIFY_SECBASE_SRC=path,
                       VERIFY_MAXDIFF=os.environ.get('VERIFY_MAXDIFF', '40'))
            r = subprocess.run([sys.executable, 'tools/decomp/verify.py', sp, func],
                               capture_output=True, text=True, env=env)
            sys.stdout.write(r.stdout)
            sys.stderr.write(r.stderr)
            return r.returncode
        finally:
            shutil.rmtree(d, ignore_errors=True)
    print(f'{func}: no guarded draft found in {path}')
    return 2


if __name__ == '__main__':
    raise SystemExit(main())
