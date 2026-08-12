#!/usr/bin/env python3
"""Promote guarded decompilation drafts from MIPS_TO_C to NON_MATCHING.

WHY THIS EXISTS

The tree keeps every non-byte-exact attempt inside a guard:

    #ifdef MIPS_TO_C          (or NON_MATCHING)
    <the draft>
    #else
    #pragma GLOBAL_ASM("...")
    #endif

Neither symbol is defined by the ROM build -- `-DNON_MATCHING` appears in the
Makefile ONLY inside CC_CHECK, which is `gcc -fsyntax-only`. So which guard a
draft sits behind cannot change the ROM by construction.

It changes the PC PORT completely. Makefile.pc compiles with -DNON_MATCHING, so
a draft behind NON_MATCHING is REAL CODE the port executes, and a draft behind
MIPS_TO_C is invisible to it -- the port gets an abort-on-call stub instead,
even though a working implementation is sitting right there in the file.

At the time this was written, 392 drafts were behind MIPS_TO_C and 67 behind
NON_MATCHING. Every one of the 392 that actually compiles is a stub the port
does not need to hit.

THE DISTINCTION IS NOT ARBITRARY. MIPS_TO_C is the correct guard for a raw m2c
dump that does not compile at all; the guide says so, because CC_CHECK runs
with -DNON_MATCHING and a non-compiling draft behind that guard breaks the
build for everyone. This tool only moves drafts that DO compile, which is
exactly the set that was mis-filed.

TWO COMPILERS, BOTH REQUIRED

  CC_CHECK      gcc -fsyntax-only -m32 ...  the repo's own gate; if a draft
                fails this, promoting it breaks `make` for every agent.
  PORT          gcc -m64 -DPORT ...         the port is LP64 and CC_CHECK is
                not. A draft can pass the 32-bit syntax check and still fail
                at -m64 (pointer-width casts, mostly).

A draft is promoted only if both accept it.

Usage:
    promote_drafts.py            report what would move, change nothing
    promote_drafts.py --apply    move them
    promote_drafts.py --apply --file src/ovl1/ovl1_10.c

Files that are dirty in git are SKIPPED unless --force: other agents edit this
tree continuously and rewriting a file mid-edit destroys their work.
"""
import glob, os, re, subprocess, sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

GUARD = re.compile(
    r'^#ifdef MIPS_TO_C\s*$(?P<body>.*?)^#else\s*$\s*^(?P<pragma>#pragma GLOBAL_ASM\("[^"]*/(?P<fn>\w+)\.s"\))\s*$\s*^#endif\s*$',
    re.M | re.S)

CC_CHECK = ('gcc -fsyntax-only -fsigned-char -m32 -D_LANGUAGE_C -D_FINALROM '
            '-DTARGET_N64 -DF3DEX_GBI_2 -nostdinc -Iinclude/libc -Iinclude '
            '-Ilibreultra/include/2.0I -Ibuild -Ibuild/include -Ibuild/assets '
            '-Isrc -Isrc.old -I. -std=gnu90 -w -DNON_MATCHING -DAVOID_UB')

PORT_OWNS = set()

PORT_CC = ('gcc -m64 -fno-pie -std=gnu90 -fsigned-char -O1 -fsyntax-only -w '
           '-D_LANGUAGE_C -DTARGET_N64 -DPORT -DF3DEX_GBI_2 -DAVOID_UB '
           '-DNON_MATCHING -Iinclude -Iinclude/libc -Ilibreultra/include/2.0I '
           '-Ibuild -Ibuild/include -Ibuild/assets -Isrc -Isrc.old -I.')


def compiles(path):
    """Does this file pass BOTH gates? Returns (ok, which_failed)."""
    for name, cc in (('CC_CHECK', CC_CHECK), ('PORT', PORT_CC)):
        r = subprocess.run(f'{cc} {path}', shell=True, capture_output=True, text=True)
        if r.returncode != 0:
            return False, name
    return True, None


def port_supplied():
    """Functions src/pc/ defines itself. Promoting these breaks the link.

    The platform layer is not only libultra: it also replaces game functions
    that CANNOT be C on the host. func_800BE320/func_800BE374 are setjmp and
    longjmp, hand-written in MIPS assembly in the ROM and in x86-64 System V
    assembly in src/pc/pc_setjmp.c. A promoted MIPS-shaped draft of longjmp is
    not merely wrong on x86-64, it is a duplicate definition and the link
    fails outright -- which is how this was found.

    Read from the built objects rather than a hand-kept list, so it cannot go
    stale as the platform layer grows.
    """
    objs = glob.glob('build/pc/src/pc/*.o')
    if not objs:
        return set()
    out = subprocess.run(['nm', '--defined-only'] + objs,
                         capture_output=True, text=True).stdout
    names = set()
    for line in out.split('\n'):
        parts = line.split()
        if len(parts) == 3 and parts[1] in 'TtWw':
            names.add(parts[2])
    return names


def promote(text, fn):
    """Flip exactly one function's guard from MIPS_TO_C to NON_MATCHING."""
    def sub(m):
        if m.group('fn') != fn:
            return m.group(0)
        return ('#ifdef NON_MATCHING' + m.group('body') + '#else\n'
                + m.group('pragma') + '\n#endif')
    return GUARD.sub(sub, text)


def dirty_files():
    r = subprocess.run('git status --porcelain', shell=True,
                       capture_output=True, text=True)
    return {l[3:].strip() for l in r.stdout.split('\n') if l.strip()}


def main():
    apply = '--apply' in sys.argv
    force = '--force' in sys.argv
    only = None
    if '--file' in sys.argv:
        only = sys.argv[sys.argv.index('--file') + 1]

    dirty = set() if force else dirty_files()
    global PORT_OWNS
    PORT_OWNS = port_supplied()
    if not PORT_OWNS:
        raise SystemExit('build/pc/src/pc/*.o missing -- run '
                         '`make -f Makefile.pc objs` first, or this '
                         'cannot know what the port supplies itself.')
    files = [only] if only else sorted(
        p for p in subprocess.run('git ls-files src/*/*.c', shell=True,
                                  capture_output=True, text=True).stdout.split()
        if p)

    tot_cand = tot_ok = tot_skip = 0
    for cf in files:
        if cf.startswith('src/pc/'):
            continue
        text = open(cf).read()
        names = [m.group('fn') for m in GUARD.finditer(text)]
        blocked = [n for n in names if n in PORT_OWNS]
        if blocked:
            print(f'  {cf}: src/pc/ supplies {" ".join(blocked)} -- not promoted')
            names = [n for n in names if n not in PORT_OWNS]
        if not names:
            continue
        if cf in dirty:
            print(f'SKIP (dirty, another agent owns it): {cf}  '
                  f'{len(names)} candidate(s)')
            tot_skip += len(names)
            continue
        tot_cand += len(names)

        # Try them one at a time against the ORIGINAL, so one bad draft cannot
        # mask a good one, then apply the accepted set together and re-check.
        accepted = []
        tmp = cf[:-2] + '.promote_tmp.c'
        for fn in names:
            open(tmp, 'w').write(promote(text, fn))
            ok, why = compiles(tmp)
            if ok:
                accepted.append(fn)
        if accepted:
            new = text
            for fn in accepted:
                new = promote(new, fn)
            open(tmp, 'w').write(new)
            ok, why = compiles(tmp)
            if not ok:
                # Some pair interacts (a duplicate static helper, usually).
                print(f'  {cf}: {len(accepted)} individually OK but the set '
                      f'fails {why} -- falling back to one at a time')
                keep, cur = [], text
                for fn in accepted:
                    cand = promote(cur, fn)
                    open(tmp, 'w').write(cand)
                    if compiles(tmp)[0]:
                        cur, _ = cand, keep.append(fn)
                accepted, new = keep, cur
        os.path.exists(tmp) and os.remove(tmp)

        tot_ok += len(accepted)
        if accepted:
            print(f'{cf}: {len(accepted)}/{len(names)} promotable  '
                  f'{" ".join(accepted[:6])}{" ..." if len(accepted) > 6 else ""}')
            if apply:
                out = text
                for fn in accepted:
                    out = promote(out, fn)
                open(cf, 'w').write(out)

    print(f'\n{tot_ok} of {tot_cand} MIPS_TO_C drafts compile under both gates'
          f'{" -- APPLIED" if apply else " (dry run; pass --apply)"}.')
    if tot_skip:
        print(f'{tot_skip} more are in files another agent has dirty; re-run later.')
    print('The ROM build defines neither guard, so this cannot change '
          'build/kirby.us.z64.\nRun mk.sh anyway -- CC_CHECK is part of it.')


if __name__ == '__main__':
    main()
