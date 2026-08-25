#!/usr/bin/env python3
"""Try the SWITCH spelling on every guarded draft written as an if/else chain.

func_800B1378 is the worked example and the reason this exists. Its draft was

    if (arg1 != -2) {
        if (arg1 == -1) { A } else { C }
    } else { B }

which lays the three arms out A, C, B. The ROM lays them out A, B, C, so the
positional score read 29/47 -- every word after the first arm -- and shapescan
called the shape distance 4, four runs that are one whole block moving. An
`else if` chain in the ROM's order fixes the block order and gets 16/47: the
blocks land right and the TESTS do not. The `switch` fixes both, because IDO
compiles a switch over two nearby constants by testing the LAST case first and
falling through to the first case's body -- exactly the ROM's
`beq $a1, -2` / `bne $a1, -1` / fallthrough. 47/47 exact.

That is a shape no amount of `if` rearranging reaches, and 45 guarded drafts in
the tree are written as a chain of `else if (v == CONST)` over one variable.
This rewrites each of them as a switch, scores it, and reports the ones that
improve. It NEVER edits the tree: both the base and the candidate are scored
on a scratch copy, so it is safe to run while other lanes are working.

    switch_sweep.py 'src/ovl1/*.c' 'src/ovl3/*.c'
    switch_sweep.py --apply 'src/ovl1/ovl1_7.c'    print the winning source

REFUSALS, and why each one matters
    - an arm containing `break` or `continue`: inside a loop those belong to
      the LOOP, and moving them into a switch silently retargets the `break`.
      That is a behaviour change the score would not show, so the chain is
      skipped rather than guessed at.
    - a test against a non-integer constant, or against a float variable: not
      a switch controlling expression.
    - fewer than two `==` arms: nothing to reorder.
"""
import glob
import os
import re
import shutil
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, HERE)
os.chdir(ROOT)

from measure_seeds import guard_blocks, cut_draft   # noqa: E402

DIFF = re.compile(r':\s*DIFF\s+(\d+)/(\d+)\s+insns')
MATCH = re.compile(r':\s*MATCH\b')
# `v` is deliberately narrow: a name, optionally one `->f`, `.f` or `[i]` step.
# Anything richer is an expression IDO may re-evaluate, and a switch would
# evaluate it once.
LHS = r'[A-Za-z_]\w*(?:(?:->|\.)\w+|\[[A-Za-z_]\w*\])*'
CONST = r'-?(?:0x[0-9A-Fa-f]+|\d+)'
IF_EQ = re.compile(r'\bif\s*\(\s*(' + LHS + r')\s*==\s*(' + CONST + r')\s*\)\s*\{')
ELSE_IF_EQ = re.compile(r'\}\s*else\s+if\s*\(\s*(' + LHS + r')\s*==\s*('
                        + CONST + r')\s*\)\s*\{')
ELSE = re.compile(r'\}\s*else\s*\{')


def match_brace(text, open_idx):
    """Index just past the `}` closing the `{` at open_idx, or None."""
    depth = 0
    i = open_idx
    while i < len(text):
        ch = text[i]
        if ch == '"' or ch == "'":
            q, i = ch, i + 1
            while i < len(text) and text[i] != q:
                i += 2 if text[i] == '\\' else 1
        elif text.startswith('/*', i):
            j = text.find('*/', i + 2)
            i = len(text) if j < 0 else j + 1
        elif text.startswith('//', i):
            j = text.find('\n', i)
            i = len(text) if j < 0 else j
        elif ch == '{':
            depth += 1
        elif ch == '}':
            depth -= 1
            if depth == 0:
                return i + 1
        i += 1
    return None


def find_chain(body):
    """(start, end, var, [(const, arm)], default_or_None) for the first chain."""
    for m in IF_EQ.finditer(body):
        var, first = m.group(1), m.group(2)
        arm_end = match_brace(body, m.end() - 1)
        if arm_end is None:
            continue
        arms = [(first, body[m.end():arm_end - 1])]
        pos, default = arm_end, None
        while True:
            nxt = ELSE_IF_EQ.match(body, pos) or ELSE_IF_EQ.match(body, pos - 1)
            if nxt is None:
                # the `}` is part of the match, so try from one char back too
                nxt = ELSE_IF_EQ.search(body, max(0, pos - 1), pos + 200)
                if nxt is None or nxt.start() > pos:
                    nxt = None
            if nxt is None or nxt.group(1) != var:
                break
            e = match_brace(body, nxt.end() - 1)
            if e is None:
                break
            arms.append((nxt.group(2), body[nxt.end():e - 1]))
            pos = e
        els = ELSE.search(body, max(0, pos - 1), pos + 200)
        if els is not None and els.start() <= pos:
            e = match_brace(body, els.end() - 1)
            if e is not None:
                default = body[els.end():e - 1]
                pos = e
        if len(arms) >= 2:
            return m.start(), pos, var, arms, default
    return None


def to_switch(var, arms, default):
    out = ['switch (%s) {' % var]
    for c, arm in arms:
        out.append('        case %s:' % c)
        out.append(arm.rstrip())
        out.append('            break;')
    if default is not None:
        out.append('        default:')
        out.append(default.rstrip())
        out.append('            break;')
    out.append('    }')
    return '\n'.join(out)


def unsafe(arms, default):
    """A bare break/continue in an arm belongs to an enclosing LOOP."""
    for _, arm in arms + ([('', default)] if default is not None else []):
        if re.search(r'\b(break|continue)\s*;', arm):
            return True
    return False


def score(lines, st, en, pi, cfile, func):
    """Score one draft WITHOUT touching the tree.

    The tree is shared with other lanes. An earlier draft of this tool wrote
    the candidate into src/ and restored it afterwards, which is a race: a
    lane saving the same file inside that window loses its edit, or gets this
    tool's candidate committed under its name. Score a scratch copy instead,
    exactly as measure_seeds and shapescan do -- VERIFY_EXTRA_INC so a quoted
    sibling include still resolves from the temp directory, and
    VERIFY_SECBASE_SRC so verify.py can still derive this TU's .rodata base
    from the ORIGINAL path.
    """
    d = tempfile.mkdtemp(prefix='sw_')
    try:
        sp = os.path.join(d, os.path.basename(cfile))
        open(sp, 'w').write('\n'.join(cut_draft(lines, st, en, pi)))
        r = subprocess.run(
            [sys.executable, os.path.join(HERE, 'verify.py'), sp, func],
            capture_output=True, text=True,
            env=dict(os.environ, VERIFY_MAXDIFF='900',
                     VERIFY_EXTRA_INC=os.path.dirname(os.path.abspath(cfile)) or '.',
                     VERIFY_SECBASE_SRC=cfile))
    finally:
        shutil.rmtree(d, ignore_errors=True)
    if MATCH.search(r.stdout):
        return 0, None
    m = DIFF.search(r.stdout)
    return (int(m.group(1)), int(m.group(2))) if m else (None, None)


def main():
    argv = list(sys.argv[1:])
    show = '--apply' in argv
    if show:
        argv.remove('--apply')
    rows = []
    for pat in argv:
        for c in sorted(glob.glob(pat)):
            if c.startswith('src/pc/'):
                continue
            orig = open(c, errors='replace').read()
            lines = orig.split('\n')
            for st, en, pi, listing in guard_blocks(lines):
                func = os.path.basename(listing)[:-2]
                body = '\n'.join(lines[st:en])
                found = find_chain(body)
                if not found:
                    continue
                a, b, var, arms, default = found
                if unsafe(arms, default):
                    print(f'  skip {func}: an arm has break/continue, which '
                          f'would retarget to the switch')
                    continue
                new_body = body[:a] + to_switch(var, arms, default) + body[b:]
                cand_lines = lines[:st] + new_body.split('\n') + lines[en:]
                base = score(lines, st, en, pi, c, func)
                got = score(cand_lines, st,
                            en + (len(cand_lines) - len(lines)), pi, c, func)
                if got[0] is None:
                    print(f'  {func}: switch form did not compile')
                    continue
                rows.append((got[0] - (base[0] if base[0] is not None else 0),
                             base, got, func, c, len(arms)))
                tag = '  <-- MATCH' if got[0] == 0 else ''
                print(f'  {func:28s} {base[0]}/{base[1]} -> {got[0]}/{got[1]}'
                      f'  ({len(arms)} cases){tag}')
                if show and got[0] == 0:
                    print(new_body)
    wins = [r for r in rows if r[0] < 0]
    print(f'\n{len(rows)} chain(s) tried, {len(wins)} improved')
    for d, base, got, func, c, n in sorted(wins):
        print(f'  {func:28s} {base[0]} -> {got[0]}   {c}')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
