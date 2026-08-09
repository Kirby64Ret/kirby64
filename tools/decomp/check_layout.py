#!/usr/bin/env python3
"""Detect object-layout drift: every C function must sit at its ROM address.

Catches two things verify.py structurally cannot see:

1. Listings that carry padding words AFTER the `.size` directive (IDO emits
   alignment padding following e.g. an infinite loop). Those words are included
   while the function is a `#pragma GLOBAL_ASM`, but VANISH the moment it
   becomes C -- the function still verifies as MATCH, yet everything after it
   in the segment shifts. Found the hard way in ovl16 (28-byte shift).

2. Any other cause of drift (extra/missing rodata, wrong local count) that
   moves a symbol off its true address.

For each built object it compares every global text symbol's offset against
(vram - segment_vram) taken from the symbol's own name/symbol_addrs.txt.

Usage: check_layout.py [ovlN ...]     (default: all segments with C files)
"""
import re, os, sys, glob, subprocess

REPO = '/home/user/kirby64_decomp'
os.chdir(REPO)

def seg_vram():
    """{'src/<seg>/<file>.c': vram_base_of_that_FILE}.

    Object offsets are relative to each C file's own start, not the segment's,
    so the base must come from the file's `c` subsegment, converted from its
    ROM offset via the segment's rom/vram bases.
    """
    y = open('kirby64.yaml').read()
    out = {}
    for m in re.finditer(r'- name: (\w+)\n(.*?)(?=\n  - name: |\Z)', y, re.S):
        name, blk = m.group(1), m.group(2)
        v = re.search(r'vram: (0x[0-9A-Fa-f]+)', blk)
        r = re.search(r'start: (0x[0-9A-Fa-f]+)', blk)
        if not (v and r):
            continue
        vbase, rbase = int(v.group(1), 16), int(r.group(1), 16)
        for sm in re.finditer(r'- \[(0x[0-9A-Fa-f]+), c, (\w+)/([\w.]+)\]', blk):
            rom = int(sm.group(1), 16)
            out[f'src/{sm.group(2)}/{sm.group(3)}.c'] = vbase + (rom - rbase)
    return out

def canon_addr(sym):
    m = re.match(r'(?:func|D)_([0-9A-Fa-f]{8})(?:_\w+)?$', sym)
    if m:
        return int(m.group(1), 16)
    return None

_named = None
def named_addr(sym):
    global _named
    if _named is None:
        _named = {}
        for line in open('tools/symbol_addrs.txt'):
            mm = re.match(r'(\w+)\s*=\s*0x([0-9A-Fa-f]+)\s*;', line)
            if mm:
                _named[mm.group(1)] = int(mm.group(2), 16)
    return _named.get(sym)

def padded_listings():
    """{func: owning_cfile} for listings with content after .size."""
    bad = {}
    for f in glob.glob('asm/nonmatchings/**/*.s', recursive=True):
        try:
            txt = open(f).read()
        except Exception:
            continue
        # use the LAST .size: a leading .late_rodata block has its own .size,
        # and anchoring on the first one misreads the entire function body as
        # post-.size padding (false positives reported by an agent).
        i = txt.rfind('\n.size ')
        if i < 0:
            continue
        tail = txt[i + 1:]
        tail = tail[tail.find('\n') + 1:]
        if re.search(r'^\s*/\*.*\*/\s*\S', tail, re.M):
            parts = f.split('/')          # asm/nonmatchings/<seg>/<file>/<func>.s
            if len(parts) >= 5:
                bad[os.path.basename(f)[:-2]] = f'src/{parts[2]}/{parts[3]}.c'
    return bad

def main():
    vram = seg_vram()
    pads = padded_listings()
    want = sys.argv[1:]
    problems = 0
    drifted = set()
    for obj in sorted(glob.glob('build/src/**/*.o', recursive=True)):
        seg = obj[len('build/src/'):].split('/')[0]
        if want and seg not in want:
            continue
        base = vram.get('src/' + obj[len('build/src/'):-2] + '.c')
        if base is None:
            continue
        cfile = 'src/' + obj[len('build/src/'):-2] + '.c'
        pragmas = set()
        if os.path.exists(cfile):
            pragmas = set(re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)', open(cfile).read()))
        nm = subprocess.run(['mips-linux-gnu-nm', obj], capture_output=True, text=True).stdout
        for line in nm.split('\n'):
            p = line.split()
            if len(p) != 3 or p[1] not in 'Tt' or p[2].endswith('.NON_MATCHING'):
                continue
            off, sym = int(p[0], 16), p[2]
            # Do NOT skip pragma'd functions. Their offsets are just as
            # checkable, and skipping them created a real blind spot: convert a
            # function whose listing carries post-.size padding and the padding
            # is lost, but if only PRAGMAS follow it nothing here notices --
            # and check_tu_size stays clean too, because IDO's end-of-.text
            # 16-byte alignment pad absorbs the shortfall. The drift only
            # surfaced when a later C function happened to be converted.
            # Found by the n_audio agent on n_alSynAddPlayer/n_alSynStopVoice,
            # which had both "verified MATCH" and a 12-byte drift at once.
            if sym.startswith('_asmpp'):
                continue
            addr = canon_addr(sym) or named_addr(sym)
            if addr is None:
                continue
            expect = addr - base
            if off != expect:
                extra = '  [listing has post-.size padding!]' if sym in pads else ''
                print(f'PROBLEM {cfile}: {sym} at +0x{off:X}, expected +0x{expect:X} '
                      f'(drift {off-expect:+d}){extra}')
                problems += 1
                drifted.add(cfile)
                break        # first drift in a file explains the rest
    # Padding hint -- only for files that ACTUALLY drifted. A trailing nop after
    # .size is usually just segment alignment belonging to the next function, so
    # reporting it unconditionally produced 19 false positives.
    for obj in sorted(glob.glob('build/src/**/*.o', recursive=True)):
        cfile = 'src/' + obj[len('build/src/'):-2] + '.c'
        if not os.path.exists(cfile) or cfile not in drifted:
            continue
        txt = open(cfile).read()
        prag = set(re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)', txt))
        for fn, owner in pads.items():
            if fn in prag or owner != cfile:
                continue
            if re.search(rf'^(?!#)(?:[\w\*]+[ \t]+)+?{re.escape(fn)}[ \t]*\([^;{{]*\)[ \t]*\{{', txt, re.M):
                print(f'  HINT {cfile}: {fn}\'s listing carries post-.size padding; '
                      f'converting it drops those words -- likely the cause of the drift above')
    print(f'-- layout check: {problems} problem(s) --')
    return 1 if problems else 0

if __name__ == '__main__':
    raise SystemExit(main())
