#!/usr/bin/env python3
"""The two numbers every Wave 8 commit message carries.

WAVE8.md mandates the format:
    <what> | decomp NN.N% (P pragmas left) | port MM.M% (F funcs owed)

and mandates that both come from the same place every time, because this
project has already shipped three mutually contradictory progress figures
(20%, 48%, 70%) computed three different ways in one day. The denominators
are pinned here so a number in a commit message can be reproduced later.

decomp %  = 100 * E / (E + N)
            E = C functions the LINKED ROM proves byte-exact (verify_rom.py)
            N = functions still behind a #pragma GLOBAL_ASM
            The two padding pragmas under asm_manual/ are inter-TU alignment
            bytes, not functions; they are excluded and are permanent.

port %    = 100 * (1 - F/F0), F  = "un-decompiled functions" from
            `make -f Makefile.pc gap`, F0 = 510, the Wave 8 baseline.
            Port code is frozen; this moves only as functions match.

Usage: progress_wave8.py            print the commit-message fragment
       progress_wave8.py --full     also print the per-segment table
"""
import glob
import os
import re
import subprocess
import sys

REPO = '/home/user/kirby64_decomp'
PORT_BASELINE = 510
os.chdir(REPO)


def pragma_count():
    """Unique GLOBAL_ASM refs, split into real functions and padding."""
    refs = set()
    for f in glob.glob('src/**/*.c', recursive=True):
        with open(f, errors='replace') as fh:
            refs |= set(re.findall(r'#pragma GLOBAL_ASM\("([^"]+)"\)', fh.read()))
    padding = {r for r in refs if r.startswith('asm_manual/')}
    return len(refs - padding), len(padding)


def exact_count():
    """C functions the linked ROM proves byte-exact."""
    out = subprocess.run([sys.executable, 'tools/decomp/verify_rom.py'],
                         capture_output=True, text=True).stdout
    m = re.search(r'^TOTAL\s+(\d+)', out, re.M)
    return int(m.group(1)) if m else 0


def port_owed():
    out = subprocess.run(['make', '-f', 'Makefile.pc', 'gap'],
                         capture_output=True, text=True).stdout
    m = re.search(r'un-decompiled functions\s+(\d+)', out)
    return int(m.group(1)) if m else PORT_BASELINE


def main():
    n, pad = pragma_count()
    e = exact_count()
    f = port_owed()
    decomp = 100.0 * e / (e + n) if (e + n) else 100.0
    port = 100.0 * (1 - f / PORT_BASELINE)
    print(f"decomp {decomp:.1f}% ({n} pragmas left) | port {port:.1f}% ({f} funcs owed)")
    if '--full' in sys.argv:
        print(f"  byte-exact C functions : {e}")
        print(f"  pragma functions left  : {n}")
        print(f"  permanent padding      : {pad} (asm_manual/, never converted)")


if __name__ == '__main__':
    main()
