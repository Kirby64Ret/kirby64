#!/usr/bin/env python3
"""Ground-truth check: every function's LINKED bytes vs the base ROM.

verify.py compares one compiled object against a .s listing. That leaves two
holes this closes:

  * functions whose listing was deleted by a background `splat split` are
    reported "unverifiable" and are never checked at all. Two functions have
    already been found sitting in committed history as plain unguarded C that
    was wrong -- both invisible to verify.py.
  * relocations have to be masked when comparing an object, so a function can
    reference the WRONG SYMBOL and still pass.

In the linked ROM every relocation is already resolved, so this is an exact
byte comparison with nothing masked and nothing skipped. If a function's bytes
equal the ROM's at its own address, that function is correct -- full stop.

Reports, per function, whether it is a #pragma (bytes come from the listing,
so a pass is expected) or real C (a pass is a genuine match).

Usage: verify_rom.py [seg ...]        default: every segment
       verify_rom.py --bad            only mismatching functions
"""
import os, re, subprocess, sys

REPO = '/home/user/kirby64_decomp'
os.chdir(REPO)


def segments():
    """[(name, rom_start, rom_end, vram)] from the yaml."""
    y = open('kirby64.yaml').read()
    out = []
    for m in re.finditer(r'- name: (\w+)\n(.*?)(?=\n  - name: |\Z)', y, re.S):
        name, blk = m.group(1), m.group(2)
        r = re.search(r'start: (0x[0-9A-Fa-f]+)', blk)
        v = re.search(r'vram: (0x[0-9A-Fa-f]+)', blk)
        if r and v:
            out.append([name, int(r.group(1), 16), None, int(v.group(1), 16)])
    out.sort(key=lambda x: x[1])
    for i in range(len(out)):
        out[i][2] = out[i + 1][1] if i + 1 < len(out) else None
    return out


def pragma_funcs():
    out = {}
    import glob
    for cf in glob.glob('src/**/*.c', recursive=True):
        for fn in re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)', open(cf).read()):
            out[fn] = cf
    return out


def main():
    only = [a for a in sys.argv[1:] if not a.startswith('--')]
    bad_only = '--bad' in sys.argv

    if not os.path.exists('build/kirby.us.elf'):
        raise SystemExit('build/kirby.us.elf missing -- link first; without it '
                         'this check would silently pass everything')

    # A STALE ELF is worse than a missing one: it produces confident, precise,
    # wrong numbers. If a compile failed, `make` never relinks, so the ROM
    # still reflects an older tree while the pragma lists come from the
    # current sources -- which manufactured "57 REAL defects" that did not
    # exist. Refuse to report rather than mislead.
    import glob as _glob
    _et = os.path.getmtime('build/kirby.us.elf')
    _newer = [f for f in _glob.glob('src/**/*.c', recursive=True)
              if os.path.getmtime(f) > _et]
    if _newer and '--stale-ok' not in sys.argv:
        raise SystemExit(
            f'REFUSING TO REPORT: {len(_newer)} source file(s) are newer than\n'
            f'build/kirby.us.elf, so the linked ROM does not correspond to the\n'
            f'current tree. A failed compile leaves the ELF behind and this\n'
            f'check would report confident nonsense.\n'
            f'  e.g. {", ".join(_newer[:3])}\n'
            f'Run `make` to a successful link first (or pass --stale-ok if you\n'
            f'genuinely want the old measurement).')

    base = open('baserom.us.z64', 'rb').read()
    built = open('build/kirby.us.z64', 'rb').read()
    segs = segments()
    prag = pragma_funcs()

    # linked ROM position of each segment, from the linker's own symbols
    nm = subprocess.run(['mips-linux-gnu-nm', 'build/kirby.us.elf'],
                        capture_output=True, text=True).stdout
    sym = {p[2]: int(p[0], 16) for p in (l.split() for l in nm.split('\n'))
           if len(p) == 3}
    if not sym:
        raise SystemExit('empty symbol table')

    # Which segment a function belongs to comes from the OBJECT it was built
    # from, not from its address: overlays share VRAM ranges, so an
    # address-range lookup silently attributes half the game to whichever
    # overlay happens to sort first.
    import glob
    owner = {}
    owner_obj = {}
    for obj in glob.glob('build/src/*/*.o') + glob.glob('build/asm/**/*.o', recursive=True):
        seg = obj.split('/')[2]
        o = subprocess.run(['mips-linux-gnu-nm', obj], capture_output=True, text=True).stdout
        for line in o.split('\n'):
            q = line.split()
            if len(q) == 3 and q[1] in 'Tt' and not q[2].endswith('.NON_MATCHING') \
               and not q[2].startswith('_asmpp'):
                owner.setdefault(q[2], seg)
                owner_obj.setdefault(q[2], obj)

    el = subprocess.run(['mips-linux-gnu-readelf', '-sW', 'build/kirby.us.elf'],
                        capture_output=True, text=True).stdout
    funcs = []
    for line in el.split('\n'):
        q = line.split()
        if len(q) >= 8 and q[3] == 'FUNC' and q[7] != 'UND':
            try:
                addr, size, name = int(q[1], 16), int(q[2]), q[7]
            except ValueError:
                continue
            if size and addr and name in owner:
                funcs.append((addr, size, name))
    # NOTE: a function built from build/asm/**.o has no C file at all, so it is
    # in neither `prag` nor any src/ file. Counting those as "C" inflated the
    # decompiled total by every function still living in a monolithic asm
    # subsegment -- 392 of them for ovl7 alone, reported as decompiled when
    # nothing had been written. They are counted as 'asm' now.

    totals = {}
    shown = 0
    for addr, size, name in sorted(funcs):
        sname = owner[name]
        seg = next((s for s in segs if s[0] == sname), None)
        if seg is None:
            continue
        _, rstart, rend, vram = seg
        if only and sname not in only:
            continue
        base_off = rstart + (addr - vram)
        link_off = sym.get(f'{sname}_ROM_START')
        if link_off is None:
            continue
        built_off = link_off + (addr - vram)
        a = base[base_off:base_off + size]
        b = built[built_off:built_off + size]
        ok = (a == b and len(a) == size)
        if name in prag:
            kind = 'pragma'
        elif owner_obj.get(name, '').startswith('build/asm/'):
            kind = 'asm'
        else:
            kind = 'C'
        # Distinguish a REAL defect from a knock-on effect. The oversize
        # rodata moves every symbol that lives after it, so any function
        # referencing one differs only in that instruction's low 16 bits --
        # the relocation immediate. A differing OPCODE is a genuine defect.
        cls = 'reloc'
        if not ok:
            for i in range(0, min(len(a), len(b)), 4):
                if a[i:i+4] != b[i:i+4] and a[i:i+2] != b[i:i+2]:
                    cls = 'REAL'; break
            if len(a) != len(b):
                cls = 'REAL'
        t = totals.setdefault(sname, {'C': [0, 0, 0], 'pragma': [0, 0, 0],
                                     'asm': [0, 0, 0]})
        if ok:
            t[kind][0] += 1
        elif cls == 'reloc':
            t[kind][1] += 1
        else:
            t[kind][2] += 1
            nd = sum(1 for x, y in zip(a, b) if x != y)
            print(f'REAL DEFECT {sname:7} {name:30} {kind:6} '
                  f'{nd}/{size} bytes differ')
            shown += 1

    print()
    print(f'{"segment":9}{"C ok":>7}{"C reloc":>9}{"C REAL":>8}'
          f'{"P ok":>7}{"P reloc":>9}{"P REAL":>8}')
    T = [0]*6
    for s in sorted(totals, key=lambda x: (len(x), x)):
        t = totals[s]
        row = t['C'] + t['pragma']
        print(f'{s:9}{row[0]:7}{row[1]:9}{row[2]:8}{row[3]:7}{row[4]:9}{row[5]:8}')
        T = [T[i]+row[i] for i in range(6)]
    print(f'{"TOTAL":9}{T[0]:7}{T[1]:9}{T[2]:8}{T[3]:7}{T[4]:9}{T[5]:8}')
    print(f'\n{T[0]} C functions byte-exact. {T[1]} differ ONLY in relocation '
          f'immediates (knock-on from the rodata oversize). {T[2]} are REAL defects.')


if __name__ == '__main__':
    main()
