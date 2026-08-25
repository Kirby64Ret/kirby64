#!/usr/bin/env python3
"""Turn verify.py's POSITIONAL diff into an ALIGNED one, so you can see where
the extra (or missing) instruction is.

verify.py compares word i to word i.  One inserted instruction therefore
reports every word after it as wrong, which is correct and useless: a draft
that is two words long reads 99% different and the two words are invisible.
LEVER 48 warns about the denominator; this is the other half of the same
problem.

The positional output is enough to rebuild the WHOLE compiled stream, because
an index verify.py does not list is an index where current == target.  So this
reconstructs both streams, reduces each instruction to its MNEMONIC (register
names are exactly what you do not want to align on), and runs difflib over
them.  What comes out is a short list of insert/delete/replace runs -- the
places where the two functions actually disagree in shape.

Register-only differences vanish from the output entirely, which is the point:
if this prints nothing but a handful of `li`/`addiu` and `move`/`or` aliases,
the draft is instruction-exact and what is left is a permutation (confirm with
LEVER 65b's opcode test).

Usage:
    VERIFY_MAXDIFF=900 python3 tools/decomp/scratchverify.py <file.c> <func> \
        | grep -a '^  \\[' > /tmp/d.txt
    python3 tools/decomp/aligndiff.py asm/nonmatchings/<seg>/<file>/<func>.s /tmp/d.txt

VERIFY_MAXDIFF matters: the default caps the listing at 40 lines, and a
truncated diff reconstructs a stream that is wrong past the cap.  Pass a value
larger than the diff count.
"""
import difflib
import re
import sys

WORD = re.compile(r'\s*/\* [0-9A-F]+ [0-9A-F]{8} ([0-9A-F]{8}) \*/\s+(\S.*?)\s*$')
DIFF = re.compile(r'\s*\[\s*(\d+)\] target=(\S+) (.*?) \| current=(\S+) (.*)$')


def main():
    tgt = []
    for line in open(sys.argv[1], errors='replace'):
        m = WORD.match(line)
        if not m:
            continue
        text = re.sub(r'\s+', ' ', m.group(2))
        # A listing may carry a leading `.section .late_rodata` block; its
        # `.float` lines match the word pattern and would shift every index.
        if text.startswith('.'):
            continue
        tgt.append((m.group(1), text))

    cur = [list(t) for t in tgt]
    for line in open(sys.argv[2], errors='replace'):
        m = DIFF.match(line.rstrip())
        if not m:
            continue
        i = int(m.group(1))
        while len(cur) <= i:
            cur.append(['????', '<none>'])
        cur[i] = [m.group(4), re.sub(r'\s+', ' ', m.group(5)).strip()]

    a = [t[1].split()[0] for t in tgt]
    b = [c[1].split()[0] if c[1].split() else '?' for c in cur]
    sm = difflib.SequenceMatcher(None, a, b, autojunk=False)
    for tag, i1, i2, j1, j2 in sm.get_opcodes():
        if tag == 'equal':
            continue
        print(f'--- {tag} target[{i1}:{i2}] current[{j1}:{j2}]')
        for k in range(i1, i2):
            print(f'   ROM  {k:4} {tgt[k][1]}')
        for k in range(j1, j2):
            print(f'   OURS {k:4} {cur[k][1]}')


if __name__ == '__main__':
    main()
