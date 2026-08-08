#!/usr/bin/env python3
"""Set up a decomp-permuter directory for one near-miss function.

Usage: setup_permuter.py <cfile> <func_name>

The project keeps non-matching attempts inside `#ifdef MIPS_TO_C ... #else
#pragma GLOBAL_ASM(...) #endif`. This script builds a permuter input dir by
un-guarding ONLY the target function (so the rest of the file's unparseable
drafts stay excluded), preprocessing, dropping leftover pragmas, and
assembling the ROM's own disassembly as the target object.
"""
import os, re, subprocess, sys, shutil

REPO = '/home/user/kirby64_decomp'
S = os.path.dirname(os.path.abspath(__file__))
PERM = f'{S}/decomp-permuter'
os.chdir(REPO)

CPP_FLAGS = ("-P -Wno-trigraphs -D_LANGUAGE_C -D_FINALROM -DTARGET_N64 -DF3DEX_GBI_2 "
             "-nostdinc -Iinclude/libc -Iinclude -Ilibreultra/include/2.0I -Ibuild "
             "-Ibuild/include -Ibuild/assets -Isrc -Isrc.old -I. "
             "-D'__attribute__(x)=' -D'__asm__(x)='")
IDO_FLAGS = ("-c -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed "
             "-D_LANGUAGE_C -D_FINALROM -O2 -nostdinc -Iinclude/libc -DTARGET_N64 "
             "-DF3DEX_GBI_2 -Iinclude -Ilibreultra/include/2.0I -Ibuild -Ibuild/include "
             "-Ibuild/assets -Isrc -Isrc.old -I. -mips2 -32 -woff 624,568")

def unguard(text, func):
    """Turn the target function's `#ifdef <GUARD> body #else #pragma #endif`
    into just `body`. Line-based: a regex here silently spans neighbouring
    blocks and eats their #endif. Returns (text, found)."""
    lines = text.split('\n')
    pat = re.compile(r'#pragma\s+GLOBAL_ASM\("[^"]*/' + re.escape(func) + r'\.s"\)')
    idx = next((i for i, l in enumerate(lines) if pat.search(l)), None)
    if idx is None:
        return text, False
    # nearest #else above the pragma, then its opening #ifdef
    e = next((i for i in range(idx, -1, -1) if lines[i].strip() == '#else'), None)
    if e is None:
        return text, False
    o = next((i for i in range(e, -1, -1)
              if lines[i].strip().startswith(('#ifdef ', '#ifndef '))), None)
    n = next((i for i in range(idx, len(lines))
              if lines[i].strip() == '#endif'), None)
    if o is None or n is None:
        return text, False
    body = lines[o + 1:e]
    if not any(s.strip() for s in body):
        return text, False
    return '\n'.join(lines[:o] + body + lines[n + 1:]), True

def main():
    cfile, func = sys.argv[1], sys.argv[2]
    outdir = f'{S}/perm/{func}'
    os.makedirs(outdir, exist_ok=True)

    text = open(cfile).read()
    text, found = unguard(text, func)
    if not found and re.search(rf'^\s*\w[\w \t\*]*\b{func}\s*\(.*\)\s*\{{', text, re.M) is None:
        # no draft and no definition: synthesize a starting point with m2c
        print(f'{func}: no draft in file, generating one with m2c')
        ctx = f'{outdir}/ctx.c'
        r = subprocess.run(
            f'mips-linux-gnu-cpp {CPP_FLAGS} -I{os.path.dirname(cfile) or "."} {cfile} -o {ctx}',
            shell=True, capture_output=True, text=True)
        listing0 = None
        for root, _, files in os.walk('asm/nonmatchings'):
            if f'{func}.s' in files:
                listing0 = os.path.join(root, f'{func}.s'); break
        if listing0 is None:
            raise SystemExit(f'no listing for {func}')
        r = subprocess.run([sys.executable, f'{S}/m2c/m2c.py', '--target', 'mips-ido-c',
                            '--context', ctx, listing0], capture_output=True, text=True)
        if r.returncode != 0 or not r.stdout.strip():
            raise SystemExit('m2c failed:\n' + (r.stderr or r.stdout)[-2000:])
        draft = r.stdout
        # m2c emits `? name` for unknown types and `extern` decls it inferred;
        # those must be real C for the permuter to parse them.
        draft = re.sub(r'^\? ', 'void *', draft, flags=re.M)
        draft = re.sub(r'^\?\s*\*', 'void *', draft, flags=re.M)
        text = text.replace(f'#pragma GLOBAL_ASM("{os.path.relpath(listing0)}")', draft, 1)
    elif not found:
        print(f'{func}: already plain C in file (using as-is)')

    tmp_c = f'{outdir}/_src.c'
    open(tmp_c, 'w').write(text)

    # preprocess, then drop the GLOBAL_ASM pragmas pycparser cannot handle
    srcdir = os.path.dirname(cfile) or '.'
    r = subprocess.run(f'mips-linux-gnu-cpp {CPP_FLAGS} -I{srcdir} {tmp_c}',
                       shell=True, capture_output=True, text=True)
    if r.returncode != 0:
        raise SystemExit('cpp failed:\n' + r.stderr[-2000:])
    pp = '\n'.join(l for l in r.stdout.split('\n')
                   if not l.lstrip().startswith('#pragma'))
    open(f'{outdir}/base.c', 'w').write(pp)

    r = subprocess.run([sys.executable, f'{PERM}/strip_other_fns.py',
                        f'{outdir}/base.c', func], capture_output=True, text=True)
    if r.returncode != 0:
        raise SystemExit('strip_other_fns failed:\n' + (r.stderr or r.stdout)[-3000:])

    # target object, assembled from the ROM's own disassembly
    listing = None
    for root, _, files in os.walk('asm/nonmatchings'):
        if f'{func}.s' in files:
            listing = os.path.join(root, f'{func}.s'); break
    if listing is None:
        raise SystemExit(f'no listing for {func}')
    asm = open(listing).read()
    asm = '\n'.join(l for l in asm.split('\n')
                    if not l.lstrip().startswith(('nonmatching', '.size')))
    open(f'{outdir}/target.s', 'w').write(
        open(f'{PERM}/prelude.inc').read() + '\n.set noreorder\n.text\n' + asm)
    r = subprocess.run(
        f'mips-linux-gnu-as -march=vr4300 -mabi=32 -Iinclude {outdir}/target.s '
        f'-o {outdir}/target.o', shell=True, capture_output=True, text=True)
    if r.returncode != 0:
        raise SystemExit('as failed:\n' + r.stderr[-2000:])

    compile_sh = f'{outdir}/compile.sh'
    open(compile_sh, 'w').write(
        f'#!/bin/bash\ncd {REPO} && tools/ido-7.1recomp/cc {IDO_FLAGS} "$@"\n')
    os.chmod(compile_sh, 0o755)

    # sanity: does the starting point compile?
    r = subprocess.run(f'{compile_sh} {outdir}/base.c -o {outdir}/base.o',
                       shell=True, capture_output=True, text=True)
    ok = r.returncode == 0 and os.path.exists(f'{outdir}/base.o')
    print(f'{outdir}: base compiles={ok}')
    if not ok:
        print((r.stdout + r.stderr)[-2000:])
        return 1
    print(f'run: cd {PERM} && ./permuter.py {outdir} -j4')
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
