#!/usr/bin/env python3
"""Screen guarded drafts for LEVER 4's two objId shapes.

Two facts, both measured (func_80169C10_ovl3 241 words, func_8015D3C8_ovl3 242):

  * The ROM materialises `&omCurrentObj` ONCE, holds it in a saved register for
    the whole function, and re-reads BOTH the pointer and `->objId` at every
    use, because any store in between may alias the global.  A draft that
    caches `s32 id = omCurrentObj->objId` DELETES those re-reads.  The fix is
    to spell the field inline at every use.

  * The mirror: an initialised pointer local `T *p = &D_xxxx;` is folded away
    by IDO, which then re-CSEs the address inside EVERY basic block -- two
    words per conditional arm -- where direct symbol access gives one held
    base across the whole region.

THE DISCRIMINATOR IS NOT `%hi(omCurrentObj)` COUNT.  Both closures have
exactly ONE `%hi`: the address is materialised once into a saved register and
the RE-READS are `lw $x, 0x0($sN)` off that held base.  Counting `%hi` finds
the functions where the scheduler split the address instead, which is a
different (and weaker) signal.  So this counts POINTER READS:

    reads  = `lw $x, %lo(omCurrentObj)($y)` + `lw $x, 0x0($held)` where $held
             is a register that received `addiu $held, .., %lo(omCurrentObj)`
    inline = occurrences of `omCurrentObj->objId` (or `->objId` off another
             pointer) already spelled inline in the draft
    cached = uses of the draft's cached objId local

A draft where `reads` far exceeds `inline` and a cached local exists is a
LEVER 4 candidate: the cache is standing in for re-reads the ROM performs.

Usage: objid_screen.py [src/ovl3 src/ovl5 ...] [--min-words N]
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, HERE)
os.chdir(ROOT)
from measure_seeds import guard_blocks, arm_end                    # noqa: E402

HELD = re.compile(r'addiu\s+\$(\w+),\s*\$\w+,\s*%lo\(omCurrentObj\)')
DIRECT = re.compile(r'\blw\s+\$\w+,\s*%lo\(omCurrentObj\)\(\$\w+\)')
WORD = re.compile(r'^\s*/\* [0-9A-F]+ [0-9A-F]{8} ', re.M)

# The cache, in either of the two spellings the tree uses:
#   `s32 objId = omCurrentObj->objId;`   (declared + initialised)
#   `s32 objId;` ... `objId = omCurrentObj->objId;`  (assigned later)
CACHE = re.compile(r'^\s*(?:(?:register|const)\s+)?'
                   r'(?:(?:un)?signed\s+)?'
                   r'(?:s32|u32|s16|u16|int|long|s8|u8)?\s*\**\s*'
                   r'(\w+)\s*=\s*[A-Za-z_][\w\[\]\.\->\s]*->\s*objId\s*;')
INLINE = re.compile(r'->\s*objId')
# any local whose initialiser is `&symbol` or `&symbol[...]`
PTR = re.compile(r'^\s*[A-Za-z_]\w*[\w\s*]*\*\s*(\w+)\s*=\s*&\s*([A-Za-z_]\w*)')


def listing_path(listing):
    for p in (listing, os.path.join('asm/nonmatchings', listing)):
        if os.path.exists(p):
            return p
    return None


def pointer_reads(asm):
    n = len(DIRECT.findall(asm))
    for reg in set(HELD.findall(asm)):
        n += len(re.findall(r'\blw\s+\$\w+,\s*0x0\(\$%s\)' % reg, asm))
    return n


def screen(path):
    lines = open(path, errors='replace').read().split('\n')
    out = []
    for st, en, prag_i, listing in guard_blocks(lines):
        func = os.path.basename(listing)[:-2]
        lp = listing_path(listing)
        if not lp:
            continue
        asm = open(lp, errors='replace').read()
        body = lines[st + 1:en]
        arm = body[:arm_end(body)]
        text = '\n'.join(arm)
        names = []
        for l in arm:
            m = CACHE.match(l)
            if m and m.group(1) not in names:
                names.append(m.group(1))
        cached = 0
        for nm in names:
            cached += len(re.findall(r'\b%s\b' % re.escape(nm), text))
        ptrs = [(m.group(1), m.group(2)) for l in arm
                for m in [PTR.match(l)] if m and 'objId' not in l]
        out.append(dict(file=path, func=func, words=len(WORD.findall(asm)),
                        reads=pointer_reads(asm),
                        inline=len(INLINE.findall(text)),
                        names=names, cached=cached, ptrs=ptrs))
    return out


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    minw = 0
    for a in sys.argv[1:]:
        if a.startswith('--min-words'):
            minw = int(a.split('=')[1])
    args = args or ['src/ovl3', 'src/ovl4', 'src/ovl5', 'src/ovl6']
    files = []
    for a in args:
        if os.path.isdir(a):
            for r, _, fs in os.walk(a):
                files += [os.path.join(r, f) for f in fs if f.endswith('.c')]
        else:
            files.append(a)
    rows = []
    for f in sorted(files):
        rows += screen(f)
    hits = [r for r in rows
            if r['words'] >= minw and
            ((r['names'] and r['reads'] > r['inline']) or r['ptrs'])]
    hits.sort(key=lambda r: -(r['reads'] - r['inline']))
    print(f'{len(rows)} guarded drafts screened, {len(hits)} with a shape\n')
    print(f'{"func":<24} {"words":>5} {"reads":>5} {"inline":>6} {"cached":>6}  shape')
    for r in hits:
        shape = []
        if r['names']:
            shape.append('CACHE ' + ','.join(r['names']))
        if r['ptrs']:
            shape.append('PTR ' + ','.join(f'{a}=&{b}' for a, b in r['ptrs']))
        print(f'{r["func"]:<24} {r["words"]:>5} {r["reads"]:>5} {r["inline"]:>6} '
              f'{r["cached"]:>6}  {"; ".join(shape)}   [{r["file"]}]')


if __name__ == '__main__':
    main()
