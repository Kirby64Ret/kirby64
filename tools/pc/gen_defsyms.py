#!/usr/bin/env python3
"""Resolve datatodo.txt's absolute symbols for the native link.

`datatodo.txt` is fed to the N64 link with `-T`. It is 495 assignments of the
form `D_8012EB00 = 0x8012EB00;` -- a symbol pinned to a raw N64 VRAM address.
That works on N64 because the linker script puts every segment at its true
address, so an absolute assignment lands inside real data. It cannot work
natively: the host has no such address space, and these 220 symbols were the
ENTIRE unresolved-data residue after the data listings were translated.

The fix mirrors what datatodo.txt already does, one level down. Each address is
mapped to the data block that contains it, and re-expressed as that block's C
symbol plus a byte offset:

    D_8012EB00 = 0x8012EB00        ->    --defsym D_8012EB00=D_8012EAC0+0x40

`ld --defsym` takes exactly that form, so the native link gets the same
aliasing the N64 link gets, without the game sources knowing anything about it.

The residue does not resolve this way, but NOT for the reason first assumed. It
was written up as 77 "ROM file offsets ... asset pointers", and that claim was
carried into the DMA design brief before anyone checked it. Only 6 are ROM file
offsets. The other 71 are VRAM addresses in 0x8012E000-0x8013xxxx that fall
outside every asm/data block, so a cartridge-reading path could never have
satisfied them. They are reported rather than emitted as something plausible
but wrong.

Usage: gen_defsyms.py [-o build/pc/defsyms.txt]
"""
import bisect, glob, os, re, sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

ADDR = re.compile(r'/\*\s*(?:[0-9A-F]+\s+)?(8[0-9A-F]{7})\s')


def named_blocks(skip):
    """[(start, last, symbol)] from tools/symbol_addrs.txt.

    A dlabel only exists while a block is still assembly. Once a block is
    migrated into C the listing goes away, and any datatodo symbol pointing
    INTO it becomes unresolvable -- which is exactly what happened to the six
    entries hand-added for D_800D7178 and D_800D71E8. symbol_addrs.txt still
    carries the address and usually a `// size:0xNN`, so it covers the gap.

    `skip` is the set of names datatodo.txt itself defines; using one of those
    as a base would just move the problem.
    """
    out = []
    for line in open('tools/symbol_addrs.txt'):
        m = re.match(r'(\w+)\s*=\s*0x([0-9A-Fa-f]+)\s*;(.*)', line)
        if not m or m.group(1) in skip:
            continue
        addr = int(m.group(2), 16)
        sz = re.search(r'size:\s*(0x[0-9A-Fa-f]+|\d+)', m.group(3))
        out.append((addr, addr + (int(sz.group(1), 0) - 1 if sz else 0),
                    m.group(1)))
    return out


def data_blocks():
    """[(start_vram, last_vram, symbol)] for every dlabel, sorted by address."""
    blocks = []
    for f in glob.glob('asm/data/**/*.s', recursive=True):
        cur, addrs = None, []
        for line in open(f):
            m = re.match(r'^dlabel (\w+)', line)
            if m:
                if cur and addrs:
                    blocks.append((addrs[0], addrs[-1], cur))
                cur, addrs = m.group(1), []
                continue
            m = ADDR.search(line)
            if m and cur:
                addrs.append(int(m.group(1), 16))
        if cur and addrs:
            blocks.append((addrs[0], addrs[-1], cur))
    blocks.sort()
    return blocks


def main():
    out = 'build/pc/defsyms.txt'
    if '-o' in sys.argv:
        out = sys.argv[sys.argv.index('-o') + 1]
    os.makedirs(os.path.dirname(out), exist_ok=True)

    text = open('datatodo.txt').read()
    own = set(re.findall(r'^(\w+)\s*=', text, re.M))
    blocks = sorted(data_blocks() + named_blocks(own))
    starts = [b[0] for b in blocks]

    lines, unresolved, relative = [], [], 0
    for name, expr in re.findall(r'^(\w+)\s*=\s*([^;]+);', text, re.M):
        expr = expr.strip()
        if not re.fullmatch(r'0x[0-9A-Fa-f]+', expr):
            # already relative to another symbol -- pass it through untouched,
            # which is what makes the six hand-added entries keep working
            lines.append(f'--defsym {name}={expr.replace(" ", "")}')
            relative += 1
            continue
        a = int(expr, 16)
        i = bisect.bisect_right(starts, a) - 1
        if i >= 0 and blocks[i][0] <= a <= blocks[i][1] + 8:
            base, off = blocks[i][2], a - blocks[i][0]
            lines.append(f'--defsym {name}={base}+0x{off:X}'
                         if off else f'--defsym {name}={base}')
        else:
            unresolved.append((name, expr))

    with open(out, 'w') as f:
        f.write('\n'.join(lines) + '\n')

    print(f'{len(lines)} --defsym entries -> {out} '
          f'({relative} already symbol-relative)')
    # Do NOT call these "ROM file offsets" -- most are not. Classify them.
    rom = [u for u in unresolved if int(u[1], 16) < 0x8000000]
    print(f'{len(unresolved)} unresolvable: {len(rom)} ROM file offset(s), '
          f'{len(unresolved) - len(rom)} VRAM address(es) outside every known '
          f'data block')
    for n, e in unresolved[:8]:
        print(f'    {n} = {e}')
    if len(unresolved) > 8:
        print(f'    ... and {len(unresolved) - 8} more')


if __name__ == '__main__':
    main()
