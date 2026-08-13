#!/usr/bin/env python3
"""Detect duplicate-rodata drift by comparing each object's rodata size against
a baseline captured from a known-good (sha1-matching) build.

Why: when ported C writes a float literal that the ROM keeps in an asm `data`
blob, IDO emits its own copy. Every function still assembles to identical bytes
-- verify.py reports MATCH -- but the extra constants shift every later rodata
reference and the ROM stops matching. verify.py structurally cannot see this.
A file's rodata GROWING relative to a green build is the reliable signal
(absolute size is not: pragma-only files legitimately carry jump tables).

  check_rodata.py --save     capture baseline from the current build
  check_rodata.py            compare current objects against the baseline
"""
import re, os, sys, glob, json, subprocess

REPO = '/home/user/kirby64_decomp'
S = os.path.dirname(os.path.abspath(__file__))
BASE = f'{S}/rodata_baseline.json'
os.chdir(REPO)

def sizes():
    out = {}
    for obj in sorted(glob.glob('build/src/**/*.o', recursive=True)):
        r = subprocess.run(['mips-linux-gnu-objdump', '-h', obj],
                           capture_output=True, text=True).stdout
        tot = 0
        for m in re.finditer(r'\s\d+\s+(\.rodata|\.late_rodata)\s+([0-9a-f]+)', r):
            tot += int(m.group(2), 16)
        out[obj] = tot
    return out

def main():
    cur = sizes()
    if '--save' in sys.argv:
        json.dump(cur, open(BASE, 'w'), indent=1)
        print(f'baseline saved: {len(cur)} objects')
        return 0
    if not os.path.exists(BASE):
        print('no baseline; run --save on a green build first'); return 1
    old = json.load(open(BASE))
    bad = 0
    for obj, size in sorted(cur.items()):
        was = old.get(obj)
        if was is None:
            continue
        if size > was:
            print(f'PROBLEM {obj}: rodata {was} -> {size} (+{size-was} bytes). '
                  f'Ported C is emitting constants the ROM keeps elsewhere; '
                  f'the ROM will shift.')
            bad += 1
    print(f'-- {len(cur)} objects, {bad} with grown rodata --')
    return 1 if bad else 0

if __name__ == '__main__':
    raise SystemExit(main())
