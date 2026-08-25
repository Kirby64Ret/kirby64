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

# Repo root, derived from this file's own location. Never hardcode an
# absolute path here: it leaks whoever's machine it was written on into
# the repository, and it makes the tool fail for everyone else.
REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
S = os.path.dirname(os.path.abspath(__file__))
PERM = f'{S}/decomp-permuter'
os.chdir(REPO)

CPP_FLAGS = ("-P -Wno-trigraphs -D_LANGUAGE_C -D_FINALROM -DTARGET_N64 -DF3DEX_GBI_2 "
             "-nostdinc -Iinclude/libc -Iinclude -Ilibreultra/include/2.0I -Ibuild "
             "-Ibuild/include -Ibuild/assets -Isrc -I. "
             "-D'__attribute__(x)=' -D'__asm__(x)='")
IDO_FLAGS = ("-c -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed "
             "-D_LANGUAGE_C -D_FINALROM -O2 -nostdinc -Iinclude/libc -DTARGET_N64 "
             "-DF3DEX_GBI_2 -Iinclude -Ilibreultra/include/2.0I -Ibuild -Ibuild/include "
             "-Ibuild/assets -Isrc -I. -mips2 -32 -woff 624,568")

def unguard(text, func):
    """Turn the target function's `#ifdef <GUARD> body #else #pragma #endif`
    into just `body`. Line-based: a regex here silently spans neighbouring
    blocks and eats their #endif. Returns (text, found)."""
    lines = text.split('\n')
    pat = re.compile(r'#pragma\s+GLOBAL_ASM\("[^"]*/' + re.escape(func) + r'\.s"\)')
    idx = next((i for i, l in enumerate(lines) if pat.search(l)), None)
    if idx is None:
        return text, False
    # The `#else` must be the line IMMEDIATELY above the pragma and the
    # `#endif` immediately below.
    #
    # The previous version searched backwards for the nearest `#else` anywhere
    # above. For a BARE pragma -- one not inside a guard at all -- that finds
    # an `#else` belonging to some unrelated earlier block, takes its `#ifdef`
    # as the opening, takes the next `#endif` after the pragma as the close,
    # and deletes everything between. In a file with mixed bare and guarded
    # pragmas that silently removes hundreds of lines, and since this runs on a
    # copy of a real source file the damage looks like a decompilation result.
    # Found by the small-segments agent, which hit it and wrote its own
    # replacement rather than trusting this one.
    if idx == 0 or lines[idx - 1].strip() != '#else':
        return text, False
    if idx + 1 >= len(lines) or lines[idx + 1].strip() != '#endif':
        return text, False
    e, n = idx - 1, idx + 1
    # Walk backwards BALANCED to find the `#if*` this `#else` belongs to.
    #
    # The previous version took the nearest `#ifdef`/`#ifndef` above the
    # `#else`, which is wrong whenever a COMPLETE guard block sits between the
    # real opening and the `#else` -- the nearest opener is then that inner
    # block's, the "body" picked up runs from inside it, and the refusal check
    # below rejects the whole function. It also only recognised `#ifdef` and
    # `#ifndef`, so a draft opened with `#if defined(MIPS_TO_C) || defined(PORT)`
    # was invisible.
    #
    # func_8017232C_ovl5 is both faults at once: opened at `#if defined(...)`,
    # with func_801721CC_ovl5's closed `#ifdef NON_MATCHING` block in between.
    # setup_permuter fell through to "already plain C", cpp then dropped the
    # guarded body, and permuter.py exited in one second with "does not contain
    # any function!" -- a wasted queue slot that reads like a fast failure.
    depth, o = 0, None
    for i in range(e - 1, -1, -1):
        t = lines[i].strip()
        if t.startswith('#endif'):
            depth += 1
        elif t.startswith(('#ifdef ', '#ifndef ', '#if ', '#if(')):
            if depth == 0:
                o = i
                break
            depth -= 1
    if o is None:
        return text, False
    body = lines[o + 1:e]
    # THREE-ARM SHAPE. The re-foundation drafts are
    #     #ifdef MIPS_TO_C / draft / #elif defined(PORT) / port arm / #else /
    #     #pragma / #endif
    # so the region between the opening guard and the `#else` holds the draft
    # AND the `#elif` AND the PORT arm. Emitting all of it yields a dangling
    # `#elif` and permuter.py reports "does not contain any function!". Cut at
    # the first top-level `#elif`: everything before it is the N64 draft, which
    # is the only arm the permuter should ever see.
    depth = 0
    for i, s in enumerate(body):
        t = s.strip()
        if t.startswith(('#ifdef ', '#ifndef ', '#if ')):
            depth += 1
        elif t.startswith('#endif'):
            depth -= 1
        elif t.startswith('#elif') and depth == 0:
            body = body[:i]
            break
    if not any(s.strip() for s in body):
        return text, False
    # A BALANCED nested guard inside the draft is fine; an unbalanced one is
    # not. This used to refuse on any `#ifdef`/`#else`/`#endif` at all, which
    # threw away every draft carrying an inner `#ifdef PORT ... #else ... #endif`
    # -- a shape this tree uses constantly for LP64 pointer widths. initTrack is
    # the worked example: 412 words, 23 diffs, the best words-per-residue row in
    # the queue, and it had never once reached the permuter because of that one
    # inner block. Setup fell through to "already plain C in file", cpp dropped
    # the guarded body, and permuter.py exited in a second.
    #
    # Refuse only what is genuinely ambiguous: a `#else` or `#endif` at depth 0
    # (the group is not the shape this understands), or a second GLOBAL_ASM
    # (another function's pragma has been swept in).
    depth = 0
    for s in body:
        t = s.strip()
        if 'GLOBAL_ASM' in t:
            return text, False
        if t.startswith(('#ifdef ', '#ifndef ', '#if ')):
            depth += 1
        elif t.startswith('#endif'):
            depth -= 1
            if depth < 0:
                return text, False
        elif t.startswith(('#else', '#elif')) and depth == 0:
            return text, False
    if depth != 0:
        return text, False
    return '\n'.join(lines[:o] + body + lines[n + 1:]), True

def main():
    cfile, func = sys.argv[1], sys.argv[2]
    # An optional third argument names the parent directory. permute_queue.py
    # runs a base-score scan alongside a permute pass, and both rmtree their
    # working directory before rebuilding it -- sharing perm/<func> means the
    # scan deletes the directory the pass is standing in, which is exactly how
    # a running queue died with FileNotFoundError on its own log file.
    parent = sys.argv[3] if len(sys.argv) > 3 else f'{S}/perm'
    outdir = f'{parent}/{func}'
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

    # The draft must have SURVIVED the preprocessor. If unguard() did not fire
    # and the body sits behind a guard cpp does not take, base.c holds the
    # file's other functions and none of this one -- permuter.py then dies with
    # "does not contain any function!" a second into a 420-second slot, and the
    # queue logs it as an exception rather than as a setup failure. Say so here
    # instead, where the reason is still visible.
    # Look for a DEFINITION, not any occurrence: initTrack is CALLED from the
    # function above it, so a bare name match passed this check on a base.c
    # that held only the call. Require a `(` ... `)` followed by `{`.
    if not re.search(rf'\b{re.escape(func)}\s*\([^;]*?\)\s*\{{', pp, re.S):
        raise SystemExit(
            f'{func}: not present after preprocessing. The draft is behind a '
            f'guard unguard() did not recognise, so there is nothing to '
            f'permute. Check the `#if`/`#else`/`#endif` shape around the '
            f'GLOBAL_ASM pragma in {cfile}.')

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

    # A SWALLOWED FUNCTION IS NOT PART OF THE TARGET.
    #
    # When splat has no name for a tiny function it merges it into the previous
    # symbol's .size, so 13 listings in the tree end with a whole extra
    # `jr $ra` + `nop` that belongs to the NEXT function of the translation
    # unit -- n_alSavePull carries the eight bytes at 0x800299F0 that separate
    # it from alAudioFrame. verify.py already peels those (it looks for a
    # function defined at that address in the object); the permuter did not,
    # so its target was two words longer than anything the draft can compile
    # to and its score could never reach 0 no matter how right the body got.
    # A permanent floor on 13 functions, none of which look unusual in a log.
    try:
        import padtrap
        kind, extra = padtrap.classify(listing, func)
        if kind == 'swallowed' and extra:
            keep, dropped = [], 0
            for line in reversed(asm.split('\n')):
                if dropped < extra and re.match(
                        r'\s*/\* \w+ \w+ [0-9A-Fa-f]{8} \*/\s*\S', line):
                    dropped += 1
                    continue
                keep.append(line)
            asm = '\n'.join(reversed(keep))
            print(f'{func}: dropped {extra} swallowed word(s) from the target -- '
                  f'they belong to the next, unnamed function of the TU '
                  f'(padtrap class "swallowed"). Write it out in C alongside '
                  f'the conversion; see func_80160A70_ovl5 in ovl5_2.c.')
    except Exception as e:                        # noqa: BLE001
        print(f'WARNING: padtrap check failed ({e}); target used unmodified')

    open(f'{outdir}/target.s', 'w').write(
        open(f'{PERM}/prelude.inc').read() + '\n.set noreorder\n.text\n' + asm)
    r = subprocess.run(
        f'mips-linux-gnu-as -march=vr4300 -mabi=32 -Iinclude {outdir}/target.s '
        f'-o {outdir}/target.o', shell=True, capture_output=True, text=True)
    if r.returncode != 0:
        raise SystemExit('as failed:\n' + r.stderr[-2000:])

    # THE COMPILER MUST BE THE ONE THE MAKEFILE GIVES THIS FILE.
    #
    # IDO_FLAGS above says -O2, and the 13 files in N_AUDIO_O_FILES are built
    # at -O3 through tools/decomp/cc_o3.py. verify.py learned that the hard way
    # -- it scored the whole of main against the wrong compiler for months and
    # reported phantom diffs on already-matched functions -- and reads the
    # Makefile now instead of copying literals. The permuter never learned it
    # at all: every libn_audio draft it has ever been handed was optimised
    # against -O2 while the target was compiled at -O3, so a "score 0" there
    # meant nothing about the ROM and a plateau meant nothing about the draft.
    # Reuse verify.py's parse rather than copying the rule a third time.
    cc, opt = 'tools/ido-7.1recomp/cc', IDO_FLAGS
    try:
        from verify import CC_OVERRIDES, OPT_OVERRIDES
        rel = os.path.relpath(os.path.abspath(cfile), REPO)
        cc = CC_OVERRIDES.get(rel, cc)
        if rel in OPT_OVERRIDES:
            opt = opt.replace('-O2', OPT_OVERRIDES[rel])
    except Exception as e:                        # noqa: BLE001
        print(f'WARNING: could not read the Makefile compiler overrides ({e}); '
              f'falling back to {cc} {IDO_FLAGS.split()[0]}')
    compile_sh = f'{outdir}/compile.sh'
    open(compile_sh, 'w').write(
        f'#!/bin/bash\ncd {REPO} && {cc} {opt} "$@"\n')
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
