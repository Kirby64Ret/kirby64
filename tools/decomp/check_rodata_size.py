#!/usr/bin/env python3
"""Every MIGRATED .rodata block must be exactly its yaml subsegment size.

check_tu_size.py checks .text only. For a segment with MIGRATED rodata
(`.rodata, seg/file` in the yaml) the C file also emits the rodata block, and
that block can come out SHORT the same way .text can: revert a function to a
#pragma and the float constants it was the only user of disappear with it.

Nothing else catches this. The functions still verify, the .text sizes are all
correct, and the only symptom is that the whole segment shrinks and every
later segment shifts -- which surfaces as hundreds of "relocation immediate"
differences with no obvious cause.

Found the hard way: src/ovl2/ovl2_4.c emitted 0x60 where its subsegment is
0xB0, ovl2 came out 80 bytes short, and 358 functions across later segments
reported as differing.

Usage: check_rodata_size.py [seg ...]
"""
import os, re, subprocess, sys, glob

REPO = '/home/user/kirby64_decomp'
os.chdir(REPO)


def expected():
    """{'src/<seg>/<file>.c': size} for every MIGRATED .rodata subsegment."""
    y = open('kirby64.yaml').read()
    out = {}
    for m in re.finditer(r'- name: (\w+)\n(.*?)(?=\n  - name: |\Z)', y, re.S):
        blk = m.group(2)
        subs = []
        for sm in re.finditer(r'- \[(0x[0-9A-Fa-f]+)(?:, (\S+?), ([\w/.]+))?\]', blk):
            subs.append((int(sm.group(1), 16), sm.group(2), sm.group(3)))
        subs.sort(key=lambda x: x[0])
        for i, (off, kind, name) in enumerate(subs):
            if kind != '.rodata' or not name or i + 1 >= len(subs):
                continue
            seg, file = name.split('/')
            out[f'src/{seg}/{file}.c'] = subs[i + 1][0] - off
    return out


def actual(obj):
    h = subprocess.run(['mips-linux-gnu-objdump', '-h', obj],
                       capture_output=True, text=True).stdout
    m = re.search(r'\s\.rodata\s+([0-9a-f]+)', h)
    return int(m.group(1), 16) if m else 0


def main():
    want = sys.argv[1:]
    bad = 0
    for cfile, size in sorted(expected().items()):
        seg = cfile.split('/')[1]
        if want and seg not in want:
            continue
        obj = f'build/{cfile[:-2]}.o'
        if not os.path.exists(obj):
            continue
        got = actual(obj)
        if got != size:
            print(f'{cfile:38} .rodata=0x{got:X} expected=0x{size:X} '
                  f'({got - size:+d})')
            bad += 1
    print(f'-- {bad} migrated rodata block(s) with wrong size --')
    return 1 if bad else 0


if __name__ == '__main__':
    raise SystemExit(main())
