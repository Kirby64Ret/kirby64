#!/usr/bin/env python3
"""Check every C translation unit's .text size against its yaml subsegment.

This is the most direct integrity check available, and it catches the failure
mode none of the others can: IDO emits alignment padding at the END of a
translation unit, and that padding lives in the LAST function's .s listing.
Convert that last function to C and the padding disappears -- the function
still verifies as MATCH, its own address is still right, but the whole TU
shrinks and every later file in the segment shifts.

A file that is short by a multiple of 16 with its last function converted is
almost always this. Fix: restore the last function to a #pragma GLOBAL_ASM.

Usage: check_tu_size.py            report every mismatched TU
       check_tu_size.py --fix      also revert each short TU's last C function
"""
import re, os, sys, glob, subprocess

# Repo root, derived from this file's own location. Never hardcode an
# absolute path here: it leaks whoever's machine it was written on into
# the repository, and it makes the tool fail for everyone else.
REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

def subsegments():
    """[(cfile, rom_start, rom_end, seg, name)] for every `c` subsegment."""
    y = open('kirby64.yaml').read()
    out = []
    for m in re.finditer(r'- name: (\w+)\n(.*?)(?=\n  - name: |\Z)', y, re.S):
        seg, blk = m.group(1), m.group(2)
        if not re.search(r'start: 0x', blk):
            continue
        subs = []
        # NOTE: must also capture bare/pad subsegments like `- [0x56f00, pad]`.
        # Skipping them makes the NEXT c subsegment look like the TU end and
        # reports a false shortfall equal to the pad size.
        for sm in re.finditer(r'- \[(0x[0-9A-Fa-f]+)((?:, [^\]\n]*)?)\]', blk):
            rest = sm.group(2)
            fm = re.match(r', (\S+?), (\w+)/([\w.]+)$', rest)
            if fm:
                subs.append((int(sm.group(1), 16), fm.group(1), fm.group(2), fm.group(3)))
            else:
                subs.append((int(sm.group(1), 16), None, None, None))
        subs.sort(key=lambda x: x[0])
        for i, (rom, typ, sg, fn) in enumerate(subs):
            if typ != 'c' or i + 1 >= len(subs):
                continue
            out.append((f'src/{sg}/{fn}.c', rom, subs[i + 1][0], sg, fn))
    return out

def text_size(obj):
    h = subprocess.run(['mips-linux-gnu-objdump', '-h', obj],
                       capture_output=True, text=True).stdout
    m = re.search(r'\s\.text\s+([0-9a-f]+)', h)
    return int(m.group(1), 16) if m else None

def last_c_function(cfile, seg, name):
    """Highest-addressed function in the file that is plain C (not a pragma)."""
    txt = open(cfile).read()
    pragmas = set(re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)', txt))
    best = None
    for m in re.finditer(r'^(?!#)(?:[\w\*]+[ \t]+)+?(\w+)[ \t]*\([^;{]*\)\s*\{', txt, re.M):
        fn = m.group(1)
        if fn in pragmas:
            continue
        am = re.match(r'(?:func|D)_([0-9A-Fa-f]{8})', fn)
        addr = int(am.group(1), 16) if am else None
        if addr is None:
            for line in open('tools/symbol_addrs.txt'):
                mm = re.match(rf'{re.escape(fn)}\s*=\s*0x([0-9A-Fa-f]+)\s*;', line)
                if mm:
                    addr = int(mm.group(1), 16); break
        if addr is not None and (best is None or addr > best[1]):
            best = (fn, addr)
    return best[0] if best else None

def revert(cfile, fn, seg, name):
    txt = open(cfile).read()
    m = re.search(rf'^(?!#)((?:[\w\*]+[ \t]+)+?{re.escape(fn)}[ \t]*\([^;{{]*\)\s*\{{.*?^\}})',
                  txt, re.S | re.M)
    if not m:
        return False
    block = (f'// last function in this translation unit: its listing carries the\n'
             f'// TU\'s trailing alignment padding, which C does not emit\n'
             f'#ifdef MIPS_TO_C\n{m.group(1)}\n#else\n'
             f'#pragma GLOBAL_ASM("asm/nonmatchings/{seg}/{name}/{fn}.s")\n#endif')
    open(cfile, 'w').write(txt[:m.start(1)] + block + txt[m.end(1):])
    return True

def main():
    fix = '--fix' in sys.argv
    bad = 0
    for cfile, lo, hi, seg, name in subsegments():
        obj = f'build/{cfile[:-2]}.o'
        if not os.path.exists(obj):
            continue
        got, want = text_size(obj), hi - lo
        if got is None or got == want:
            continue
        bad += 1
        print(f'{cfile:38} .text=0x{got:X} expected=0x{want:X}  ({got-want:+d})')
        if fix and got < want:
            fn = last_c_function(cfile, seg, name)
            if fn and revert(cfile, fn, seg, name):
                print(f'    reverted last C function {fn} -> pragma')
            else:
                print(f'    could not identify/revert the last C function')
    print(f'-- {bad} translation unit(s) with wrong size --')
    return 1 if bad else 0

if __name__ == '__main__':
    raise SystemExit(main())
