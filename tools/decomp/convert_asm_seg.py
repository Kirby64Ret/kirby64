#!/usr/bin/env python3
"""Convert a segment's `asm` subsegments to `c` in kirby64.yaml and kirby.ld.

Companion to split_ovl.py, which does the listing split. This does the two
bookkeeping edits:

  kirby64.yaml   - [0x..., asm, <dir>/<name>]  ->  - [0x..., c, <dir>/<name>]
  kirby.ld       build/asm/<dir>/<name>.o      ->  build/src/<dir>/<name>.o

kirby.ld is gitignored and regenerated from the yaml by `make setup`, so the
yaml edit is the durable one; the .ld edit just keeps the working tree
buildable without re-running splat over every segment at once.

Only the names actually being converted are rewritten, so unrelated
build/asm/<dir>/*.o entries in the same block are left alone.

Usage: convert_asm_seg.py <ld_segment> <name> [<name> ...] [--write]
"""
import os, re, sys

REPO = '/home/user/kirby64_decomp'
os.chdir(REPO)


def yaml_block(y, seg):
    return re.search(r'(- name: %s\n.*?)(?=\n  - name: |\Z)' % re.escape(seg), y, re.S)


def main():
    args = [a for a in sys.argv[1:] if a != '--write']
    write = '--write' in sys.argv
    if len(args) < 2:
        raise SystemExit(__doc__)
    seg, names = args[0], args[1:]

    y = open('kirby64.yaml').read()
    m = yaml_block(y, seg)
    if not m:
        raise SystemExit(f'no `- name: {seg}` block in kirby64.yaml')
    blk = m.group(1)
    n_yaml = 0
    for name in names:
        blk, k = re.subn(rf'- \[(0x[0-9A-Fa-f]+), asm, {re.escape(name)}\]',
                         rf'- [\1, c, {name}]', blk)
        if k != 1:
            print(f'  WARN yaml: {name} matched {k} subsegments (expected 1)')
        n_yaml += k
    y = y[:m.start(1)] + blk + y[m.end(1):]

    ld = open('kirby.ld').read()
    n_ld = 0
    for name in names:
        ld, k = re.subn(rf'build/asm/{re.escape(name)}\.o', f'build/src/{name}.o', ld)
        n_ld += k
    print(f'{seg}: {n_yaml} yaml subsegment(s), {n_ld} linker entr(ies)')
    if write:
        open('kirby64.yaml', 'w').write(y)
        open('kirby.ld', 'w').write(ld)
    else:
        print('   (dry run; pass --write to apply)')


if __name__ == '__main__':
    main()
