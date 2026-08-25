#!/usr/bin/env python3
"""Find drafts written `void` whose ROM listing RETURNS A VALUE (and the reverse).

func_801E073C_ovl17 is why this exists. Its draft was `void`, it scored 202 of
205, and the reason was in the first twenty words of the listing: every early
exit is `b .L801E0A64_ovl17` with `or $v0, $zero, $zero` in the delay slot, and
both event arms end that branch with `addiu $v0, $zero, 0x1`. The function
returns s32 -- 0 from the three guards, 1 from either handled event. Giving it
that signature took it to 124/206. Both call sites discard the value, which is
exactly why the draft could be written `void` and look right for months.

This is a WRONG-TYPE bug, not only a matching one: the port compiles the same
arm, and a caller that ever tests the result gets whatever was in $v0.

The screen needs no compiler. For every guarded draft it reads the listing,
finds the epilogue (the block ending `jr $ra`), and asks whether any exit path
puts a value in $v0:

    - an instruction writing $v0 in the DELAY SLOT of a `b <epilogue>`
    - an instruction writing $v0 in the two words before `jr $ra` or in its
      own delay slot

A `jal` result does not count: $v0 there is the CALLEE's return value, and a
tail call that leaves it in place is the one shape this cannot distinguish --
those are reported separately as WEAK rather than mixed in.

    rettype_screen.py                 whole tree
    rettype_screen.py src/ovl9        just those paths

Reports both directions. The reverse one needs a WHOLE-FUNCTION test rather
than an epilogue one: a non-void function often sets $v0 well before its
epilogue and branches there, so "nothing at the epilogue" is not evidence. The
first cut of this screen reported 51 non-void drafts that way and almost all
were fine; it now claims a non-void draft looks void only when the listing
never writes $v0/$v1/$f0/$f2 at all, which finds none in the tree today.

MEASURED 2026-08-25 over all 701 guarded drafts: TEN are declared `void` and
return a value. They span seven overlays, so this is not one lane's habit.
"""
import glob
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, HERE)
os.chdir(ROOT)

from measure_seeds import guard_blocks   # noqa: E402

WORD = re.compile(r'/\* \w+ ([0-9A-Fa-f]{8}) ([0-9A-Fa-f]{8}) \*/\s+(\S+)\s*(.*?)\s*$')
LABEL = re.compile(r'^\s*(\.?L?[\w.]+):\s*$')
# Instructions whose FIRST operand is the destination register. Loads, moves,
# arithmetic. Excludes stores and branches, whose first operand is a source.
WRITES_FIRST = re.compile(
    r'^(or|addu|addiu|add|subu|sub|and|andi|xor|xori|nor|sll|srl|sra|sllv|srlv|'
    r'srav|slt|slti|sltu|sltiu|lui|li|move|lw|lh|lhu|lb|lbu|lwl|lwr|mfhi|mflo|'
    r'mfc1|dmfc1|negu|neg|not|movn|movz|ori)$')


def parse(path):
    """[(kind, label_or_none, mnemonic, operands)] in listing order."""
    out = []
    for line in open(path, errors='replace'):
        m = LABEL.match(line)
        if m:
            out.append(('label', m.group(1), '', ''))
            continue
        m = WORD.search(line)
        if m and not m.group(3).startswith('.'):
            out.append(('insn', None, m.group(3), m.group(4)))
    return out


def dest(mnem, ops):
    if not WRITES_FIRST.match(mnem):
        return None
    first = ops.split(',')[0].strip()
    return first.lstrip('$') if first.startswith('$') else first


def returns_value(path):
    """(True/False, why) -- does any exit path put a value in $v0?"""
    items = parse(path)
    insns = [(i, it) for i, it in enumerate(items) if it[0] == 'insn']
    if not insns:
        return None, 'no instructions'
    # the epilogue is whatever label most recently precedes a `jr $ra`
    epi = set()
    for i, it in insns:
        if it[2] == 'jr' and '$ra' in it[3]:
            for j in range(i - 1, -1, -1):
                if items[j][0] == 'label':
                    epi.add(items[j][1])
                    break
    weak = False
    for k, (i, it) in enumerate(insns):
        nxt = insns[k + 1][1] if k + 1 < len(insns) else None
        # value in the delay slot of a branch to the epilogue
        if it[2] in ('b', 'j') and nxt is not None:
            tgt = it[3].strip().lstrip('.')
            if any(tgt.endswith(e.lstrip('.')) for e in epi) and \
                    dest(nxt[2], nxt[3]) == 'v0':
                return True, f'`{it[2]} {it[3]}` with `{nxt[2]} {nxt[3]}` in the delay slot'
        # value just before `jr $ra`, or in its delay slot
        if it[2] == 'jr' and '$ra' in it[3]:
            for back in (insns[k - 1][1] if k else None, nxt):
                if back is not None and dest(back[2], back[3]) == 'v0':
                    prev = insns[k - 2][1] if k >= 2 else None
                    if prev is not None and prev[2] in ('jal', 'jalr'):
                        weak = True
                        continue
                    return True, f'`{back[2]} {back[3]}` at the epilogue'
    if weak:
        return None, 'only a jal result reaches $v0'
    # The other direction needs a WHOLE-FUNCTION test, not an epilogue one.
    # A non-void function often sets $v0 (or $f0) well before its epilogue and
    # then branches there, so "nothing at the epilogue" is not evidence: the
    # first cut of this screen reported 51 non-void drafts that way and almost
    # all of them were fine. Only claim a non-void draft looks void when the
    # listing NEVER writes the return registers at all, jal results excluded.
    ever = False
    for k, (i, it) in enumerate(insns):
        prev = insns[k - 1][1] if k else None
        if prev is not None and prev[2] in ('jal', 'jalr'):
            continue                       # $v0 here is the CALLEE's value
        d = dest(it[2], it[3])
        if d in ('v0', 'v1', 'f0', 'f2'):
            ever = True
            break
    return (False, '') if not ever else (None, 'sets $v0/$f0 away from the epilogue')


VOIDSIG = re.compile(r'^\s*(?:static\s+)?void\s+(\w+)\s*\(')
NONVOID = re.compile(r'^\s*(?:static\s+)?(?!void\b)[A-Za-z_]\w*[\w \t*]*\b(\w+)\s*\(')


def main():
    paths = sys.argv[1:] or ['src']
    files = []
    for p in paths:
        files += sorted(glob.glob(os.path.join(p, '**', '*.c'), recursive=True)) \
            if os.path.isdir(p) else sorted(glob.glob(p))
    wrong, maybe_void, weak = [], [], []
    total = 0
    for c in files:
        if c.startswith('src/pc/'):
            continue
        lines = open(c, errors='replace').read().split('\n')
        for st, en, pi, listing in guard_blocks(lines):
            func = os.path.basename(listing)[:-2]
            if not os.path.exists(listing):
                continue
            sig = next((l for l in lines[st:en]
                        if re.match(r'^\s*[A-Za-z_].*\b' + re.escape(func)
                                    + r'\s*\(', l)), None)
            if sig is None:
                continue
            total += 1
            got, why = returns_value(listing)
            is_void = bool(VOIDSIG.match(sig))
            if got is True and is_void:
                wrong.append((func, c, why))
            elif got is False and not is_void:
                maybe_void.append((func, c, sig.strip()[:60]))
            elif got is None and is_void and why.startswith('only a jal'):
                weak.append((func, c))
    print(f'{total} guarded draft(s) screened')
    print(f'\n{len(wrong)} declared `void` whose listing RETURNS A VALUE '
          f'-- a wrong type, not only a wrong score:')
    for func, c, why in wrong:
        print(f'  {func:28s} {c:34s} {why}')
    print(f'\n{len(maybe_void)} declared NON-void whose listing NEVER writes '
          f'$v0/$v1/$f0/$f2 at all:')
    for func, c, sig in maybe_void:
        print(f'  {func:28s} {c:34s} {sig}')
    print(f'\n{len(weak)} `void` draft(s) where only a jal result reaches $v0 '
          f'(a tail call this cannot decide):')
    for func, c in weak:
        print(f'  {func:28s} {c}')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
