#!/usr/bin/env python3
"""Attribute every differing word between build/kirby.us.z64 and baserom.

WHY THIS IS A TOOL AND NOT A ONE-LINER

I wrote this comparison inline about six times tonight and it had a bug every
time in the same place. The tempting shape is: collect runs of differing
bytes, merge runs that are close together so the output is readable, then
report how many bytes differ. Merging and counting cannot both use the merged
spans -- the merge deliberately swallows the matching gaps between runs, so
summing the merged spans counts bytes that are IDENTICAL.

With sparse differences the error is not small. A tree with EIGHT differing
words, each within a chain of a preceding one, reported "5,511 regions,
29,020,573 bytes" -- reading as the entire ROM being destroyed when the truth
was one function in one file. That number went into a commit message before I
checked it.

So: differing WORDS are counted exactly and reported individually, and
grouping is presentation only. When there are more than a screenful, the
summary is by owning subsegment, which is the question actually being asked --
"whose work is this?" -- and never a byte total over merged spans.

The other thing this gets right is the shift test. A long run of differences
is usually not many defects; it is one insertion or deletion with everything
after it moved. Testing the region against the base at a few candidate offsets
distinguishes those in one step, and a hit means the fault is a SIZE change at
the region's start rather than N independent wrong instructions.

Usage:
    rom_diff.py                 attribute every differing word
    rom_diff.py --shift         also test long regions for a pure displacement
    rom_diff.py --rom other.z64
"""
import re, sys

BASE = 'baserom.us.z64'
BUILT = 'build/kirby.us.z64'


def subsegments(path='kirby64.yaml'):
    """(rom_offset, kind, name) for every subsegment, in address order.

    Parsed by splitting the bracket rather than by matching a fixed field
    count: entries come as [addr, type], [addr, type, name] and
    [addr, lib, libname, object, section], and a regex that assumes three
    fields silently runs one block through its neighbours. check_sections.py
    and an earlier version of check_rodata_bytes.py both had that bug.
    """
    out = []
    for ln in open(path):
        m = re.match(r'\s*-\s*\[\s*(0x[0-9A-Fa-f]+)\s*,([^\]]*)\]', ln)
        if m:
            f = [x.strip() for x in m.group(2).split(',')]
            out.append((int(m.group(1), 16), f[0] if f else '',
                        ' '.join(f[1:2]) or ''))
    out.sort()
    return out


def owner(segs, off):
    lo, hi = 0, len(segs) - 1
    best = None
    while lo <= hi:
        mid = (lo + hi) // 2
        if segs[mid][0] <= off:
            best, lo = segs[mid], mid + 1
        else:
            hi = mid - 1
    return best or (0, '?', '?')


def main():
    rom = BUILT
    if '--rom' in sys.argv:
        rom = sys.argv[sys.argv.index('--rom') + 1]
    a = open(BASE, 'rb').read()
    b = open(rom, 'rb').read()
    if len(a) != len(b):
        print(f'SIZE {len(b):#x} vs base {len(a):#x}')

    n = min(len(a), len(b))
    words = [i for i in range(0, n - 3, 4) if a[i:i + 4] != b[i:i + 4]]
    if not words:
        print('-- identical --')
        return 0

    segs = subsegments()
    # Presentation grouping only; nothing is counted from these spans.
    groups, cur = [], [words[0], words[0]]
    for w in words[1:]:
        if w - cur[1] <= 64:
            cur[1] = w
        else:
            groups.append(tuple(cur))
            cur = [w, w]
    groups.append(tuple(cur))

    from collections import Counter
    per = Counter()
    for w in words:
        o = owner(segs, w)
        per[f'{o[2] or o[1]} ({o[1]})'] += 1

    print(f'{len(words)} differing word(s) in {len(groups)} region(s)\n')
    for k, v in per.most_common():
        print(f'  {v:6d} word(s)  {k}')
    print()

    for s, e in groups[:40]:
        o = owner(segs, s)
        nw = (e - s) // 4 + 1
        head = f'0x{s:X}..0x{e + 4:X}  {nw} word(s)  {o[2] or o[1]}'
        if nw <= 8 or '--shift' not in sys.argv:
            print(head)
            for w in range(s, min(e + 4, s + 32), 4):
                print(f'    0x{w:X}  rom {a[w:w+4].hex()}  ours {b[w:w+4].hex()}')
            if nw > 8:
                print(f'    ... {nw - 8} more')
        else:
            # ONE DISPLACEMENT OR MANY DEFECTS? A long region that realigns at
            # a fixed offset is a single insertion or deletion at its start,
            # not N wrong instructions, and it needs a completely different fix.
            hit = None
            for sh in (4, -4, 8, -8, 12, -12, 16, -16, 32, -32):
                ok = sum(1 for w in range(s, e, 4)
                         if 0 <= w + sh < n - 3 and a[w:w + 4] == b[w + sh:w + sh + 4])
                if ok > 0.9 * ((e - s) // 4):
                    hit = (sh, ok)
                    break
            if hit:
                print(f'{head}  -- PURE SHIFT {hit[0]:+d} '
                      f'({hit[1]} of {(e - s) // 4} words realign)')
            else:
                print(head)
    if len(groups) > 40:
        print(f'... and {len(groups) - 40} more region(s)')
    return 1


if __name__ == '__main__':
    sys.exit(main())
