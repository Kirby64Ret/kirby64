#!/usr/bin/env python3
"""Every emitted .rodata/.data block must match what the yaml gives it room for.

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

# Repo root, derived from this file's own location. Never hardcode an
# absolute path here: it leaks whoever's machine it was written on into
# the repository, and it makes the tool fail for everyone else.
REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)


def expected(section='.rodata'):
    """{'src/<seg>/<file>.c': size} for every MIGRATED subsegment of `section`.

    A file with NO migrated subsegment must emit NOTHING for that section: its
    data lives in an unmigrated asm block, so anything the C emits is an extra
    copy that grows the segment. That is checked separately below.
    """
    y = open('kirby64.yaml').read()
    out = {}
    for m in re.finditer(r'- name: (\w+)\n(.*?)(?=\n  - name: |\Z)', y, re.S):
        blk = m.group(2)
        subs = []
        for sm in re.finditer(r'- \[(0x[0-9A-Fa-f]+)(?:, (\S+?), ([\w/.]+))?\]', blk):
            subs.append((int(sm.group(1), 16), sm.group(2), sm.group(3)))
        # A block's size ends at the NEXT subsegment of any shape, including the
        # 4- and 5-field `lib` entries the pattern above cannot parse. Without
        # them main/libn_audio_2 measured 0x550 instead of its true 0x240.
        bounds = sorted({int(a, 16)
                         for a in re.findall(r'- \[(0x[0-9A-Fa-f]+)[,\]]', blk)})
        subs.sort(key=lambda x: x[0])
        for off, kind, name in subs:
            if kind != section or not name:
                continue
            nxt = next((b for b in bounds if b > off), None)
            if nxt is None:
                continue
            seg, file = name.split('/')
            out[f'src/{seg}/{file}.c'] = nxt - off
    return out


def actual(obj, section='.rodata'):
    h = subprocess.run(['mips-linux-gnu-objdump', '-h', obj],
                       capture_output=True, text=True).stdout
    m = re.search(r'\s' + re.escape(section) + r'\s+([0-9a-f]+)', h)
    return int(m.group(1), 16) if m else 0


def main():
    want = sys.argv[1:]
    bad = 0
    for section in ('.rodata', '.data'):
        exp = expected(section)
        for obj in sorted(glob.glob('build/src/*/*.o')):
            cfile = 'src/' + obj[len('build/src/'):-2] + '.c'
            seg = cfile.split('/')[1]
            if want and seg not in want:
                continue
            got = actual(obj, section)
            size = exp.get(cfile)
            if size is None:
                # No migrated subsegment -> the C must emit nothing. A local
                # array initializer copied out of a named data symbol makes
                # IDO emit its own blob here, which is invisible to verify.py
                # and shifts the whole segment.
                if got:
                    print(f'{cfile:38} {section}=0x{got:X} but this file has NO '
                          f'migrated {section} subsegment -- it must emit none')
                    bad += 1
            elif got != size:
                print(f'{cfile:38} {section}=0x{got:X} expected=0x{size:X} '
                      f'({got - size:+d})')
                bad += 1
    print(f'-- {bad} section size problem(s) --')
    return 1 if bad else 0


if __name__ == '__main__':
    raise SystemExit(main())
