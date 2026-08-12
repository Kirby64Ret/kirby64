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
    gate_dirty.py --fix      re-guard whatever is red, keeping the draft
    gate_dirty.py --since R  check everything touched since revision R
    gate_dirty.py --all      check the whole tree (slow, but complete)
    gate_dirty.py --staged   check what is staged instead
    gate_dirty.py -q         only print the verdict
"""
import re, subprocess, sys, os

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)


def dirty(staged, since=None):
    """Files to check.

    Default is what git reports as changed. THAT IS NOT ENOUGH ON ITS OWN, and
    the gap is worth spelling out because I walked into it twice: a file that
    was already COMMITTED with a live non-matching function is clean in git and
    therefore invisible here. src/ovl19/ovl19_3.c sat committed with a function
    live at 32/150, and src/ovl8/ovl8.c at 50/128 -- the second one grew its TU
    by 16 bytes and pushed the whole ROM image 16 bytes long. Only a full link
    found either.

    So `--since <rev>` widens the net to everything touched since a known-green
    commit, and `--all` checks the whole tree. Use --since after any period
    where commits went out without a link behind them.
    """
    if '--all' in sys.argv:
        cmd = 'git ls-files src/*/*.c src/*.c'
    elif since:
        cmd = f'git diff --name-only {since}'
    elif staged:
        cmd = 'git diff --cached --name-only'
    else:
        cmd = 'git status --porcelain'
    out = subprocess.run(cmd, shell=True, capture_output=True, text=True).stdout
    porcelain = cmd.startswith('git status')
    files = []
    for line in out.split('\n'):
        line = line.strip()
        if not line:
            continue
        p = line[2:].strip() if porcelain else line
        # Deleted files have nothing to verify; untracked ones are not yet
        # part of the build.
        if p.endswith('.c') and p.startswith('src/') and os.path.exists(p):
            files.append(p)
    return sorted(set(files))


def listing_for(fn):
    """The asm/nonmatchings path for a function, found on disk."""
    for root, _, files in os.walk('asm/nonmatchings'):
        if f'{fn}.s' in files:
            return os.path.join(root, f'{fn}.s')
    return None


def reguard(path, fn, residue):
    """Put one live function back behind #ifdef NON_MATCHING, draft intact.

    Deliberately conservative: it finds the definition by matching a line that
    starts at column 0, contains the name followed by `(`, and is not a
    declaration; then takes the first `}` at column 0 after it as the end. That
    is the shape every function in this tree has. If anything does not match,
    it does nothing and says so, because a bad edit here is worse than a
    manual one -- this runs on files other agents are writing.
    """
    src = open(path).read()
    lines = src.split('\n')
    start = None
    for i, ln in enumerate(lines):
        if re.match(rf'^[A-Za-z_].*\b{re.escape(fn)}\s*\(', ln) and ';' not in ln:
            start = i
            break
    if start is None:
        print(f'      cannot find the definition of {fn} -- re-guard by hand')
        return False
    end = None
    for j in range(start + 1, len(lines)):
        if lines[j].startswith('}'):
            end = j
            break
    if end is None:
        print(f'      cannot find the end of {fn} -- re-guard by hand')
        return False
    # Already guarded? Then the red is a real diff inside a live guard, not a
    # missing one, and re-wrapping would nest guards.
    for k in range(max(0, start - 6), start):
        if lines[k].startswith('#ifdef NON_MATCHING') or lines[k].startswith('#ifdef MIPS_TO_C'):
            print(f'      {fn} is already guarded -- red is inside the guard, look by hand')
            return False
    s = listing_for(fn)
    if s is None:
        print(f'      no listing found for {fn} -- re-guard by hand')
        return False

    lines.insert(end + 1, f'#else\n#pragma GLOBAL_ASM("{s}")\n#endif')
    lines.insert(start, '#ifdef NON_MATCHING\n'
                        f'/* Left live by a lane mid-work, at {residue} insns. Draft kept. */')
    open(path, 'w').write('\n'.join(lines))
    print(f'      re-guarded {fn} ({residue})')
    return True


def main():
    staged = '--staged' in sys.argv
    fix = '--fix' in sys.argv
    since = None
    if '--since' in sys.argv:
        since = sys.argv[sys.argv.index('--since') + 1]
    quiet = '-q' in sys.argv
    files = dirty(staged, since)
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
            # Later definitions first, so earlier line numbers stay valid.
            for fn, d, tot in (reversed(diffs) if fix else diffs):
                if fix:
                    reguard(f, fn, f'{d}/{tot}')
                else:
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
