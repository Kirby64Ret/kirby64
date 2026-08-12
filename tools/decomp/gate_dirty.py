#!/usr/bin/env python3
"""Verify every C file that is dirty in git, and name the ones that are red.

WHY THIS EXISTS

Three times tonight a lane un-guarded a draft to measure it, died or moved on
before re-guarding, and left a non-matching function compiled into the ROM.
Twice that reached a commit. It is the single most expensive failure mode in
this project and none of the cheap gates see it:

    verify.py <file>      sees it, but only if you already suspect the file
    check_tu_size.py      clean -- the TU is the right size
    check_sections.py     clean -- the sections are the right size
    check_rodata_bytes.py clean -- the rodata is right
    rom_diff.py           sees it, but needs a full link, and with eight lanes
                          writing continuously the tree moves under the build,
                          so a clean answer describes a snapshot that may no
                          longer exist by the time you commit

The answer is to check exactly the files that changed, immediately before
committing them. That is fast because it is proportional to the diff, not to
the tree, and it cannot be invalidated by a lane editing some other file.

WHAT RED MEANS HERE

A function that is written in C and is NOT byte-exact. Either re-guard it
behind `#ifdef NON_MATCHING` with its measured residue recorded, or fix it.
Never commit it as live code.

Usage:
    gate_dirty.py            check every dirty .c file
    gate_dirty.py --staged   check what is staged instead
    gate_dirty.py -q         only print the verdict
"""
import re, subprocess, sys, os

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)


def dirty(staged):
    cmd = 'git diff --cached --name-only' if staged else 'git status --porcelain'
    out = subprocess.run(cmd, shell=True, capture_output=True, text=True).stdout
    files = []
    for line in out.split('\n'):
        line = line.strip()
        if not line:
            continue
        p = line if staged else line[2:].strip()
        # Deleted files have nothing to verify; untracked ones are not yet
        # part of the build.
        if p.endswith('.c') and p.startswith('src/') and os.path.exists(p):
            files.append(p)
    return sorted(set(files))


def main():
    staged = '--staged' in sys.argv
    quiet = '-q' in sys.argv
    files = dirty(staged)
    if not files:
        print('-- no dirty C files --')
        return 0

    bad = []
    for f in files:
        r = subprocess.run([sys.executable, 'tools/decomp/verify.py', f, '--all'],
                           capture_output=True, text=True)
        out = r.stdout + r.stderr
        diffs = re.findall(r'^(\w+): DIFF (\d+)/(\d+)', out, re.M)
        m = re.search(r'(\d+) match, (\d+) diff', out)
        n = int(m.group(2)) if m else (1 if diffs else 0)
        if n:
            bad.append((f, diffs))
            print(f'RED   {f}')
            for fn, d, tot in diffs:
                print(f'        {fn}  {d}/{tot} insns -- re-guard it or fix it')
        elif not quiet:
            print(f'ok    {f}  ({m.group(1) if m else "?"} match)')

    print(f'-- {len(files)} dirty file(s), {len(bad)} red --')
    if bad:
        print('Do not commit these as live code. Put each back behind\n'
              '`#ifdef NON_MATCHING` with its measured residue in a comment,\n'
              'keeping the draft, and the ROM returns to green.')
    return 1 if bad else 0


if __name__ == '__main__':
    sys.exit(main())
