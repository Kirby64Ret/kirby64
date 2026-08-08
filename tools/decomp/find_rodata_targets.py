#!/usr/bin/env python3
"""Name the data symbol each mis-referenced constant load SHOULD reach.

fix_rodata_refs.py drives itself from verify.py, so it only works where the
function still has a .s listing. For ovl11/ovl14/ovl15 the listings were
deleted by the background `splat split`, so that route is closed.

This takes the other route: decode the BASE ROM directly. For every function
whose linked bytes differ from the ROM only in relocation immediates, walk the
ROM's own instruction words, track what each `lui` put in each register, and
resolve the %hi/%lo pair at the differing instruction into a full address.
That address is what the ROM reaches; the symbol living there is what the C
should name instead of writing a literal.

Prints, per function, the target address, its symbol name if one exists, and
the constant's value, so the substitution is the ROM's own answer rather than
a guess.

Usage: find_rodata_targets.py [seg ...]
"""
import os, re, struct, subprocess, sys, glob

REPO = '/home/user/kirby64_decomp'
os.chdir(REPO)


def segments():
    y = open('kirby64.yaml').read()
    out = []
    for m in re.finditer(r'- name: (\w+)\n(.*?)(?=\n  - name: |\Z)', y, re.S):
        r = re.search(r'start: (0x[0-9A-Fa-f]+)', m.group(2))
        v = re.search(r'vram: (0x[0-9A-Fa-f]+)', m.group(2))
        if r and v:
            out.append((m.group(1), int(r.group(1), 16), int(v.group(1), 16)))
    return out


def subsegment_kinds():
    """[(seg, vram_lo, vram_hi, kind)] so a target address can be classified.

    This matters because the two rodata models want OPPOSITE fixes:

      target in a MIGRATED `.rodata` subsegment -> the C is supposed to emit
        that constant, so a literal is correct and naming a symbol would not
        even link
      target in `data` / an unmigrated `rodata` -> the constant lives in the
        ROM's own block, so the C must NAME it rather than emit a copy

    Without this the tool proposes substitutions that cannot work.
    """
    y = open('kirby64.yaml').read()
    out = []
    for m in re.finditer(r'- name: (\w+)\n(.*?)(?=\n  - name: |\Z)', y, re.S):
        seg, blk = m.group(1), m.group(2)
        r = re.search(r'start: (0x[0-9A-Fa-f]+)', blk)
        v = re.search(r'vram: (0x[0-9A-Fa-f]+)', blk)
        if not (r and v):
            continue
        rbase, vbase = int(r.group(1), 16), int(v.group(1), 16)
        subs = []
        for sm in re.finditer(r'- \[(0x[0-9A-Fa-f]+)(?:, (\S+?),)?', blk):
            subs.append((int(sm.group(1), 16), sm.group(2) or 'pad'))
        subs.sort(key=lambda x: x[0])
        for i, (off, kind) in enumerate(subs):
            nxt = subs[i + 1][0] if i + 1 < len(subs) else off
            out.append((seg, vbase + (off - rbase), vbase + (nxt - rbase), kind))
    return out


def data_symbols():
    """{vram: name} for every dlabel in the data/rodata listings."""
    out = {}
    for f in glob.glob('asm/data/**/*.s', recursive=True):
        cur = None
        for line in open(f):
            m = re.match(r'dlabel (\w+)', line)
            if m:
                cur = m.group(1); continue
            w = re.search(r'/\* \w+ ([0-9A-F]{8}) [0-9A-F]{8} \*/', line)
            if w and cur:
                out[int(w.group(1), 16)] = cur; cur = None
    for line in open('tools/symbol_addrs.txt'):
        m = re.match(r'(\w+)\s*=\s*0x([0-9A-Fa-f]+)\s*;', line)
        if m:
            out.setdefault(int(m.group(2), 16), m.group(1))
    return out


def main():
    want = [a for a in sys.argv[1:] if not a.startswith('-')]
    base = open('baserom.us.z64', 'rb').read()
    built = open('build/kirby.us.z64', 'rb').read()
    if not os.path.exists('build/kirby.us.elf'):
        raise SystemExit('link first')
    nm = subprocess.run(['mips-linux-gnu-nm', 'build/kirby.us.elf'],
                        capture_output=True, text=True).stdout
    sym = {p[2]: int(p[0], 16) for p in (l.split() for l in nm.split('\n'))
           if len(p) == 3}
    dsyms = data_symbols()
    kinds = subsegment_kinds()

    owner = {}
    for obj in glob.glob('build/src/*/*.o'):
        seg = obj.split('/')[2]
        o = subprocess.run(['mips-linux-gnu-nm', obj],
                           capture_output=True, text=True).stdout
        for line in o.split('\n'):
            q = line.split()
            if len(q) == 3 and q[1] in 'Tt' and not q[2].endswith('.NON_MATCHING'):
                owner.setdefault(q[2], (seg, obj))

    prag = set()
    for cf in glob.glob('src/**/*.c', recursive=True):
        prag |= set(re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)', open(cf).read()))

    el = subprocess.run(['mips-linux-gnu-readelf', '-sW', 'build/kirby.us.elf'],
                        capture_output=True, text=True).stdout
    segmap = {s[0]: s for s in segments()}
    found = 0
    for line in el.split('\n'):
        q = line.split()
        if len(q) < 8 or q[3] != 'FUNC' or q[7] == 'UND':
            continue
        try:
            addr, size, name = int(q[1], 16), int(q[2]), q[7]
        except ValueError:
            continue
        if not size or name not in owner or name in prag:
            continue
        seg, obj = owner[name]
        if want and seg not in want:
            continue
        if seg not in segmap:
            continue
        _, rstart, vram = segmap[seg]
        lo = sym.get(f'{seg}_ROM_START')
        if lo is None:
            continue
        a = base[rstart + (addr - vram):][:size]
        b = built[lo + (addr - vram):][:size]
        if a == b or len(a) != size:
            continue
        hi = {}                       # register -> value loaded by lui
        hits = []
        for i in range(0, size, 4):
            w = struct.unpack('>I', a[i:i + 4])[0]
            op, rs, rt = w >> 26, (w >> 21) & 31, (w >> 16) & 31
            imm = w & 0xFFFF
            if op == 0x0F:                                   # lui
                hi[rt] = imm << 16
            elif op in (0x31, 0x35, 0x23, 0x24, 0x25, 0x20, 0x21):
                # lwc1/ldc1/lw/lbu/lhu/lb/lh -- base register in rs
                if rs in hi and a[i:i + 4] != b[i:i + 4]:
                    off = imm - 0x10000 if imm >= 0x8000 else imm
                    hits.append(hi[rs] + off)
        if not hits:
            continue
        src = 'src/' + obj[len('build/src/'):-2] + '.c'
        rows = []
        for tgt in hits:
            kind = next((k for s, lo, hi_, k in kinds
                         if s == seg and lo <= tgt < hi_), None)
            nm_ = dsyms.get(tgt)
            off = rstart + (tgt - vram)
            val = base[off:off + 4]
            f = struct.unpack('>f', val)[0] if len(val) == 4 else None
            # Only an unmigrated data/rodata target with a real symbol can be
            # fixed by naming it. A migrated .rodata target wants a literal; a
            # jump table or a target with no symbol is not a constant load at
            # all and means the decode picked up the wrong %hi pair.
            if kind == '.rodata':
                why = 'MIGRATED -> keep literal'
            elif nm_ is None:
                why = 'no symbol -> not a constant load'
            elif nm_.startswith('jtbl'):
                why = 'jump table -> not a constant'
            elif kind in ('data', 'rodata'):
                why = 'FIXABLE'
            else:
                why = f'in {kind} -> skip'
            rows.append((tgt, nm_ or '-', val.hex().upper(), f, why))
        if not any(r[4] == 'FIXABLE' for r in rows):
            continue
        found += 1
        print(f'{name}  ({src})')
        for tgt, nm_, hx, f, why in rows:
            print(f'    0x{tgt:08X}  {nm_:26} = {hx}  {f!r:22} {why}')
    print(f'\n-- {found} function(s) with unresolved constant references --')


if __name__ == '__main__':
    main()
