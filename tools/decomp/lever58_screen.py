#!/usr/bin/env python3
"""Screen ROM listings for the LEVER 58 shape (see tools/decomp/LEVERS.md 58,
67, 68, 69).

RE-RUNNABLE, and it is the one place the LEVER 58 discriminator is written
down: LEVERS.md 58 points here rather than carrying a grep of its own, so if
you change what counts as a candidate, change it HERE and say so in 67.

LEVER 58 says a proc declared `(void)` whose ROM listing hands its own
incoming $a0 to a callee is really a `(GObj *)` proc, and that declaring the
parameter frees the register the rest of the body is fighting over.

The cheap version of that test -- "no `sw $a0` in the prologue" -- is far too
weak: on a bloc of 36 drafts enumerated that way, only 7 had the shape. Two
rules do the actual work and both are easy to get wrong by hand:

  * $a0 is CALLER-SAVED, so a call clobbers it. Only the first call on each
    path can receive the incoming argument.
  * a call's DELAY SLOT executes before the transfer, so a `lw $a0, ...`
    sitting under a `jal` is an argument setup, not a later write.

So this walks the listing's control-flow graph from the entry, tracking
whether $a0 still holds the incoming argument, and reports:

  CALL <target>   a call reached with $a0 untouched on every path
  READ  <insn>    an instruction that READS $a0 before anything writes it
                  (a parameter used directly rather than handed on --
                   `lw $s1,0x3C($a0)`, `or $s0,$a0,$zero`)
  HOME  <insn>    a `sw $a0, N($sp)` home store
  RELOAD <insn>   a `lw` back out of that home slot -- the parameter is USED
                  and has to survive a call

The home store is not a veto, and lever 58's original caution reads more
sharply once you separate the two sides:

  * ROM HOMES $a0            -> the source had a parameter, used or not, and
                                declaring it REPRODUCES that store.
                                func_801DBA8C_ovl17 matches with an unused
                                one.
  * ROM does NOT home it, but a CALL or READ consumes it -> a parameter that
                                is used; declare it AND use it.
  * ROM does NOT home it and nothing consumes it -> no parameter. Declaring
                                one here is what costs a word: your draft
                                cannot use it, so IDO homes it and the ROM
                                has no such store. That is the 38/40 that
                                func_801B3C54_ovl7's note recorded before its
                                callee was retyped.

CANDIDATE here is NECESSARY, not sufficient. Two more checks stay manual:

  * the callee must CONSUME $a0. A target that takes no argument, or takes an
    f32 (which arrives in $f12), makes untouched $a0 mean nothing -- three of
    the eight survivors on the bloc that produced this tool failed exactly
    there. Check the callee's OBJECT, not its declaration; that declaration is
    often the very thing that is wrong (LEVER 68).
  * the residue must be an argument rotation. func_8020C378_ovl9 (ovl9_13)
    screens CANDIDATE and the lever still makes it worse; func_800BCA5C
    (ovl1_13) screens CANDIDATE and the lever is inert. Both have a residue
    that starts in the prologue with a frame-size difference, which the lever
    cannot reach (LEVER 69). Look at where diff zero is first.

Usage:
    python3 tools/decomp/lever58_screen.py func_801B3C54_ovl7 [more funcs...]
    python3 tools/decomp/lever58_screen.py --all-guarded src/ovl7/ovl7_10.c
"""
import os
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
ASM = os.path.join(ROOT, 'asm', 'nonmatchings')

STORE = {'sw', 'sb', 'sh', 'swc1', 'sdc1', 'swl', 'swr', 'sd'}
# instructions whose first register operand is a SOURCE, not a destination
NO_DEST = {'mtc1', 'ctc1', 'mthi', 'mtlo', 'teq', 'div', 'divu', 'mult',
           'multu', 'nop', 'break', 'sync', 'cache'}

ROW = re.compile(r'\s*/\*\s*\S+\s+(\S+)\s+\S+\s*\*/\s+(\S+)\s*(.*)')
LABEL = re.compile(r'\s*(\.?L[A-Za-z0-9_]+):\s*$')


def _rows_and_labels(path):
    rows, labels, pending = [], {}, []
    for line in open(path, errors='replace'):
        m = LABEL.match(line)
        if m:
            pending.append(m.group(1).lstrip('.'))
            continue
        m = ROW.match(line)
        if not m:
            continue
        rows.append((m.group(1), m.group(2), m.group(3).strip()))
        for p in pending:
            labels[p] = m.group(1)
        pending = []
    return rows, labels


def _writes_a0(mnem, ops):
    if mnem in STORE or mnem in NO_DEST:
        return False
    if mnem.startswith('b') or mnem.startswith('j'):
        return False
    regs = re.findall(r'\$[a-z0-9]+', ops)
    return bool(regs) and regs[0] == '$a0'


def _reads_a0(mnem, ops):
    regs = re.findall(r'\$[a-z0-9]+', ops)
    if not regs:
        return False
    if mnem in STORE or mnem in NO_DEST or mnem.startswith('b') or mnem.startswith('j'):
        return '$a0' in regs
    return '$a0' in regs[1:]


def find_listing(func):
    r = subprocess.run(['find', ASM, '-name', func + '.s'],
                       capture_output=True, text=True)
    paths = [p for p in r.stdout.split() if p]
    return paths[0] if paths else None


def screen(func):
    path = find_listing(func)
    if not path:
        return None
    rows, labels = _rows_and_labels(path)
    n = len(rows)
    idx = {a: i for i, (a, _, _) in enumerate(rows)}

    frame = None
    for _, m, o in rows:
        if m == 'addiu' and o.startswith('$sp, $sp, -'):
            frame = o.split('-')[1]
            break
    homes = [(a, m, o) for a, m, o in rows
             if m in STORE and re.findall(r'\$[a-z0-9]+', o)[:1] == ['$a0']
             and '($sp)' in o]
    # A homed parameter that has to survive a call is RE-READ from its home
    # slot, and a liveness scan cannot see that: the home store is normally
    # followed at once by a write to $a0 for the first call's argument, so the
    # incoming value looks dead. Count the reloads instead.
    homereads = []
    for a, m, o in homes:
        slot = o.split(',', 1)[1].strip()          # e.g. "0x48($sp)"
        homereads += [(a2, m2, o2) for a2, m2, o2 in rows
                      if m2.startswith('lw') and o2.endswith(slot) and a2 > a]

    # Two passes, and the split matters: collecting CALL/READ during the
    # worklist made the answer depend on visit order, because a block first
    # reached with $a0 live can be re-reached later on a path where it is not,
    # and a read already recorded cannot be taken back. Run the dataflow to a
    # fixed point first, then read the answers off the settled state.
    # live[i]: True = $a0 still holds the incoming argument on EVERY path here.
    live = [None] * n
    work = [(0, True)]
    while work:
        i, st = work.pop()
        if i >= n:
            continue
        if live[i] is not None:
            if not (live[i] and not st):
                continue                    # nothing new to propagate
            live[i] = False                 # demote True -> False and re-walk
        else:
            live[i] = st
        st = live[i]
        m, o = rows[i][1], rows[i][2]

        if m.startswith('j') or (m.startswith('b') and m != 'break'):
            ds = rows[i + 1] if i + 1 < n else None
            st2 = st and not (ds and _writes_a0(ds[1], ds[2]))
            if m in ('jal', 'jalr'):
                work.append((i + 2, False))     # the call clobbers $a0
                continue
            tgt = o.split(',')[-1].strip().lstrip('.')
            if tgt in labels and labels[tgt] in idx:
                work.append((idx[labels[tgt]], st2))
            if m == 'jr':
                if '$ra' not in o:              # jump-table dispatch
                    for la in set(labels.values()):
                        if la in idx:
                            work.append((idx[la], st2))
                continue
            if m in ('j', 'b'):
                continue
            work.append((i + 2, st2))
            continue

        work.append((i + 1, False if _writes_a0(m, o) else st))

    calls, reads = {}, []
    for i, (a, m, o) in enumerate(rows):
        if not live[i]:
            continue
        ds = rows[i + 1] if i + 1 < n else None
        if m in ('jal', 'jalr'):
            ok = not (ds and _writes_a0(ds[1], ds[2]))
            tgt = o.strip() or '<indirect>'
            calls[tgt] = ok if tgt not in calls else (calls[tgt] and ok)
            continue
        if m.startswith('b') and m != 'break':
            if ds and _reads_a0(ds[1], ds[2]) and not _writes_a0(ds[1], ds[2]):
                reads.append(ds)
            continue
        if _reads_a0(m, o) and not _writes_a0(m, o) \
                and not (m in STORE and '($sp)' in o):
            reads.append((a, m, o))

    return dict(path=path, words=n, frame=frame, homes=homes,
                homereads=homereads,
                calls=[t for t, ok in calls.items() if ok], reads=reads)


def report(func):
    d = screen(func)
    if d is None:
        print('%-26s NO LISTING (matched already, or wrong name)' % func)
        return
    used = bool(d['calls'] or d['reads'])
    if d['homereads']:
        verdict = ('CANDIDATE -- homed AND re-read %d times: declare it AND delete '
                   'whatever local rebuilds it' % len(d['homereads']))
    elif d['homes'] and used:
        verdict = 'CANDIDATE -- parameter used AND homed by the ROM'
    elif d['homes']:
        verdict = 'CANDIDATE -- homed but never re-read: the parameter is unused, declare it anyway'
    elif used:
        verdict = 'CANDIDATE -- parameter used, no home store'
    else:
        verdict = 'no -- $a0 never read, never homed: there is no parameter'
    print('%-26s frame=%-6s words=%-4d %s' % (func, d['frame'], d['words'], verdict))
    for a, m, o in d['homes']:
        print('    HOME  %s  %s %s' % (a, m, o))
    if d['homereads']:
        a, m, o = d['homereads'][0]
        print('    RELOAD %s  %s %s   (and %d more)'
              % (a, m, o, len(d['homereads']) - 1))
    for t in d['calls']:
        print('    CALL  %s        <- check this callee CONSUMES $a0' % t)
    for a, m, o in d['reads'][:6]:
        print('    READ  %s  %s %s' % (a, m, o))


def guarded_funcs(cfile):
    sys.path.insert(0, os.path.join(ROOT, 'tools', 'decomp'))
    from measure_seeds import guard_blocks       # noqa: E402
    lines = open(cfile, errors='replace').read().split('\n')
    return [os.path.basename(listing)[:-2]
            for _, _, _, listing in guard_blocks(lines)]


def main(argv):
    if not argv:
        print(__doc__)
        return 2
    if argv[0] == '--all-guarded':
        names = []
        for f in argv[1:]:
            names += guarded_funcs(f)
    else:
        names = argv
    for f in names:
        report(f)
    return 0


if __name__ == '__main__':
    raise SystemExit(main(sys.argv[1:]))
