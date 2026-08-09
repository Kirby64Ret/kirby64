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

77 of the 495 do not land in any data block because they are ROM FILE offsets
rather than VRAM addresses (D_39E90 = 0x39E90 and friends -- asset pointers).
Those cannot be resolved this way; they need the ROM-loading path, so they are
reported rather than silently emitted as something wrong.

Usage: gen_defsyms.py [-o build/pc/defsyms.txt]
"""
import bisect, glob, os, re, sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

ADDR = re.compile(r'/\*\s*(?:[0-9A-F]+\s+)?(8[0-9A-F]{7})\s')


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

    blocks = data_blocks()
    starts = [b[0] for b in blocks]

    text = open('datatodo.txt').read()
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
    print(f'{len(unresolved)} unresolvable: ROM file offsets, not VRAM '
          f'addresses -- these need the ROM-loading path')
    for n, e in unresolved[:8]:
        print(f'    {n} = {e}')
    if len(unresolved) > 8:
        print(f'    ... and {len(unresolved) - 8} more')


if __name__ == '__main__':
    main()
