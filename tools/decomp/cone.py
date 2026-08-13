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

It matters because a traced run of the port reports only ONE unimplemented
function, `game_tick`, and that reads as "one function from a running game".
It is not: the stub returns immediately, so nothing inside it executes. The
cone is the honest measure.

Depth is worth watching. Depth 1 is the direct callees; the cone usually widens
for two or three levels and then collapses as it meets already-decompiled code.

Usage:
  cone.py game_tick                 the whole undecompiled cone
  cone.py game_tick --depth 2       stop after two levels
  cone.py game_tick --by-segment    counts per segment, for briefing agents
  cone.py game_tick --rank          cheapest first, with rank_candidates' score
  cone.py game_tick --tables        also follow dispatch tables (see below)

DIRECT vs TABLE-REACHABLE. Without --tables this follows only jal/j, which is
what must exist for the code path to execute at all. With --tables it also
counts any function held in a pointer table the code takes the address of --
an over-estimate, since taking a table's address does not mean every entry
runs. The two numbers bracket the truth; neither alone is it.
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


_tables = None


def dispatch_tables():
    """{data_symbol: [functions it holds pointers to]}.

    This engine does not reach most of its code with a `jal`. Entity behaviour
    is dispatched through function-pointer tables -- the process entries a GObj
    carries -- so a pure call-graph walk stops at the dispatcher and reports a
    cone smaller than the truth. Tree-wide the tables reference 2520 functions,
    a few hundred of which are typically still undecompiled, so for an entry
    point the table-reachable cone runs several times the direct one.

    No disassembler is needed for this: splat already resolved all 7161 pointer
    words in asm/data to symbol NAMES rather than raw addresses.
    """
    global _tables
    if _tables is None:
        _tables = {}
        for f in glob.glob('asm/data/**/*.s', recursive=True):
            cur = None
            for line in open(f):
                m = re.match(r'dlabel (\w+)', line)
                if m:
                    cur = m.group(1)
                    continue
                m = re.search(r'\.word\s+(func_\w+|\w*[Tt]hread\w*)\s*$', line)
                if m and cur:
                    _tables.setdefault(cur, []).append(m.group(1))
    return _tables


def data_refs(func):
    """Data symbols a function names, which may be dispatch tables."""
    p = listing_of(func)
    if p is None:
        return []
    return set(re.findall(r'%(?:hi|lo)\((\w+)\)', open(p).read()))


def walk(entry, prag, maxdepth, follow_tables=False):
    """{func: depth} for undecompiled functions reachable from entry.

    follow_tables adds indirect reachability: any function held in a table this
    code takes the address of. That is an OVER-estimate in the other direction
    -- taking a table's address does not mean every entry runs -- so the two
    numbers bracket the truth rather than either being it.
    """
    tables = dispatch_tables() if follow_tables else {}
    seen, found = {entry}, {}
    frontier, depth = [entry], 0
    while frontier and (maxdepth is None or depth < maxdepth):
        depth += 1
        nxt = []
        for f in frontier:
            reach = list(callees(f))
            if follow_tables:
                for d in data_refs(f):
                    reach.extend(tables.get(d, ()))
            for c in reach:
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
    found = walk(entry, prag, maxdepth, '--tables' in sys.argv)

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
