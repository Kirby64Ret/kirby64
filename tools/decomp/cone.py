#!/usr/bin/env python3
"""What still has to be decompiled before a given function can actually RUN.

rank_candidates.py sorts by how cheap a function is to match. That is the right
metric for maximising the pragma count, and it is what ten waves have used. It
is the wrong metric for making the PC port run, because cheapness is unrelated
to whether anything depends on the function.

This asks the other question: starting from an entry point, walk the call graph
through the assembly listings and report every function still behind a
`#pragma GLOBAL_ASM`. That set is exactly what stands between the native binary
and executing that code path -- no more, no less.

It matters because the port is currently one symbol from the game loop and that
number is misleading. `game_tick` is the only unimplemented function a traced
run reaches, but only because its stub returns immediately; nothing inside it
executes. The cone is the honest measure.

Depth is worth watching. Depth 1 is the direct callees; the cone usually widens
for two or three levels and then collapses as it meets already-decompiled code.

Usage:
  cone.py game_tick                 the whole undecompiled cone
  cone.py game_tick --depth 2       stop after two levels
  cone.py game_tick --by-segment    counts per segment, for briefing agents
  cone.py game_tick --rank          cheapest first, with rank_candidates' score
"""
import glob, os, re, sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
os.chdir(REPO)

CALL = re.compile(r'\b(?:jal|j)\s+(\w+)')


def listing_of(func):
    hits = glob.glob(f'asm/nonmatchings/**/{func}.s', recursive=True)
    return hits[0] if hits else None


def pragmas():
    """{func: cfile} for everything still behind a pragma."""
    out = {}
    for cf in glob.glob('src/**/*.c', recursive=True):
        for fn in re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)', open(cf).read()):
            out[fn] = cf
    return out


def callees(func):
    p = listing_of(func)
    if p is None:
        return []
    # A function with no listing was decompiled before listings were kept, so
    # its callees are invisible here. That understates the cone rather than
    # overstating it, which is the safe direction for a work list.
    return sorted(set(CALL.findall(open(p).read())) - {func})


def walk(entry, prag, maxdepth):
    """{func: depth} for undecompiled functions reachable from entry."""
    seen, found = {entry}, {}
    frontier, depth = [entry], 0
    while frontier and (maxdepth is None or depth < maxdepth):
        depth += 1
        nxt = []
        for f in frontier:
            for c in callees(f):
                if c in seen:
                    continue
                seen.add(c)
                if c in prag:
                    found[c] = depth
                nxt.append(c)
        frontier = nxt
    return found


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    if not args:
        raise SystemExit(__doc__)
    entry = args[0]
    maxdepth = None
    if '--depth' in sys.argv:
        maxdepth = int(sys.argv[sys.argv.index('--depth') + 1])

    prag = pragmas()
    found = walk(entry, prag, maxdepth)

    if '--by-segment' in sys.argv:
        from collections import Counter
        c = Counter(prag[f].split('/')[1] for f in found)
        print(f'{entry}: {len(found)} undecompiled function(s) in its cone\n')
        for seg, n in sorted(c.items(), key=lambda x: -x[1]):
            print(f'  {seg:8} {n}')
        return

    if '--rank' in sys.argv:
        import rank_candidates as rc
        mig = rc.migrated_rodata_files()
        rows = []
        for f in found:
            p = listing_of(f)
            if p is None:
                continue
            feat = rc.scan(p, f)
            s = rc.score(feat, prag[f] in mig)
            rows.append((s if s is not None else 1e9, f, prag[f], feat, found[f]))
        rows.sort(key=lambda r: r[0])
        print(f'{"score":>6}  {"function":30} {"file":24} {"d":>2}{"insn":>6}{"br":>4}')
        for s, f, cf, feat, d in rows:
            sc = 'BLOCKED' if s >= 1e9 else f'{s:6.0f}'
            print(f'{sc:>6}  {f:30} {cf[4:]:24} {d:2}{feat["insns"]:6}{feat["branches"]:4}')
        print(f'\n{len(rows)} function(s); '
              f'{sum(1 for r in rows if r[0] >= 1e9)} blocked')
        return

    for f, d in sorted(found.items(), key=lambda x: (x[1], x[0])):
        print(f'  depth {d}  {f:30} {prag[f]}')
    print(f'\n{entry}: {len(found)} undecompiled function(s) in its cone')


if __name__ == '__main__':
    main()
