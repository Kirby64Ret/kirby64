#!/usr/bin/env python3
"""Give the PC port a C body for every function that still has none.

THE INSIGHT THIS TOOL IS BUILT ON

`make -f Makefile.pc gap` says the port is short 399 functions. Those 399 are
exactly the tree's BARE pragmas -- pragmas with no draft behind them. Every
GUARDED draft already serves the port, because Makefile.pc compiles with
-DNON_MATCHING and that is the branch a guard selects.

And here is the part that changes the economics: **the port does not need
byte-exact code.** It needs code that compiles and behaves correctly. Matching
IDO's register allocator -- the wall that the whole decomp effort is stuck
against -- is irrelevant to whether the port links and runs.

So the port's remaining work is not 399 matching problems. It is 399
*translation* problems, and m2c already does that translation mechanically,
for free, at CPU speed.

WHAT THIS DOES

For each bare pragma: run m2c over its listing with the file's own
preprocessed context, then rewrite

    #pragma GLOBAL_ASM("asm/nonmatchings/seg/file/func.s")

as

    #ifdef NON_MATCHING
    <m2c output>
    #else
    #pragma GLOBAL_ASM("asm/nonmatchings/seg/file/func.s")
    #endif

The N64 build never defines NON_MATCHING, so it keeps taking the pragma and
the ROM stays byte-exact -- that is not a hope, it is what the guard means,
and every gate run afterwards proves it. The port takes the draft and gains a
symbol.

A draft that does not compile is worse than no draft, because CC_CHECK builds
guarded drafts too. So each candidate is compiled before it is kept, and
dropped if it fails.

Usage: port_fill.py [--limit N] [--seg ovl3] [--dry-run]
"""
import glob
import os
import re
import subprocess
import sys

REPO = '/home/user/kirby64_decomp'
S = os.path.join(REPO, 'tools', 'decomp')
PY = os.path.join(REPO, '.venv', 'bin', 'python3')
CPP_FLAGS = ('-Iinclude -Iinclude/libc -Ilibreultra/include/2.0I -Ibuild '
             '-Ibuild/include -Ibuild/assets -Isrc -Isrc.old -I. '
             '-D_LANGUAGE_C -DTARGET_N64 -DF3DEX_GBI_2 -D_FINALROM -DNON_MATCHING')
os.chdir(REPO)


def log(m):
    print(m, flush=True)


def bare_pragmas(seg=None):
    """(cfile, listing, func) for pragmas with no guard around them."""
    out = []
    for cf in sorted(glob.glob('src/**/*.c', recursive=True)):
        if seg and f'/{seg}/' not in cf:
            continue
        lines = open(cf, errors='replace').read().split('\n')
        for i, l in enumerate(lines):
            m = re.search(r'#pragma GLOBAL_ASM\("([^"]+)"\)', l)
            if not m:
                continue
            p = m.group(1)
            if p.startswith('asm_manual/') or not os.path.exists(p):
                continue
            # guarded if the line above is #else and an #ifdef opens it
            if i and lines[i - 1].strip() == '#else':
                continue
            out.append((cf, p, os.path.basename(p)[:-2]))
    return out


def m2c_body(cfile, listing, func):
    ctx = f'/tmp/ctx_{func}.c'
    r = subprocess.run(
        f'mips-linux-gnu-cpp {CPP_FLAGS} -I{os.path.dirname(cfile) or "."} {cfile} -o {ctx}',
        shell=True, capture_output=True, text=True)
    if not os.path.exists(ctx):
        return None
    r = subprocess.run([PY, f'{S}/m2c/m2c.py', '--target', 'mips-ido-c',
                        '--context', ctx, listing],
                       capture_output=True, text=True, timeout=180)
    os.remove(ctx)
    if r.returncode != 0 or not r.stdout.strip():
        return None
    body = r.stdout
    # m2c emits its own commentary lines; keep them, they are useful, but drop
    # any "? function" placeholder decls it puts at the top -- those collide
    # with the file's real declarations.
    body = '\n'.join(l for l in body.split('\n') if not l.startswith('? '))
    if func not in body:
        return None
    return body.strip()


def guard(cfile, listing, func, body):
    src = open(cfile, errors='replace').read()
    old = f'#pragma GLOBAL_ASM("{listing}")'
    if old not in src:
        return False
    new = (f'#ifdef NON_MATCHING\n/* m2c draft, for the PORT only. Not byte-exact and not\n'
           f'   claimed to be: the N64 build takes the pragma below. */\n'
           f'{body}\n#else\n{old}\n#endif')
    open(cfile, 'w').write(src.replace(old, new, 1))
    return True


def compiles(cfile):
    """CC_CHECK-equivalent: gcc with NON_MATCHING, syntax only."""
    r = subprocess.run(
        f'gcc -fsyntax-only -w {CPP_FLAGS} -I{os.path.dirname(cfile) or "."} {cfile}',
        shell=True, capture_output=True, text=True)
    return r.returncode == 0


def main():
    limit = None
    seg = None
    dry = '--dry-run' in sys.argv
    for i, a in enumerate(sys.argv):
        if a == '--limit':
            limit = int(sys.argv[i + 1])
        if a == '--seg':
            seg = sys.argv[i + 1]

    targets = bare_pragmas(seg)
    log(f'bare pragmas: {len(targets)}')
    if dry:
        for cf, p, fn in targets[:20]:
            log(f'  {fn}  ({cf})')
        return

    kept = dropped = 0
    for n, (cf, listing, fn) in enumerate(targets, 1):
        if limit and kept >= limit:
            break
        before = open(cf, errors='replace').read()
        body = m2c_body(cf, listing, fn)
        if not body:
            dropped += 1
            continue
        if not guard(cf, listing, fn, body):
            dropped += 1
            continue
        if not compiles(cf):
            open(cf, 'w').write(before)          # a broken draft is worse than none
            dropped += 1
            continue
        kept += 1
        log(f'[{n}/{len(targets)}] +{fn} ({cf})  kept={kept} dropped={dropped}')
    log(f'DONE kept={kept} dropped={dropped}')


if __name__ == '__main__':
    main()
