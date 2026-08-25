#!/usr/bin/env python3
"""Drop-in replacement for tools/ido-7.1recomp/cc that compiles at -O3.

n_audio was built at -O3, so main/libn_audio*.c cannot match at -O2 no matter
how good the source is. Measured on __alCSeqNextDelta (90 instructions, plain
upstream libreultra/src/audio/cseq.c): 54 diffs at -O2, 0 at -O3.

This file has TWO modes.


MODE 1 -- DEFAULT, "phase -O3" (what the ROM build uses)
--------------------------------------------------------
Ask the real driver, with `-show`, what it would run at -O2, then run those
four phases (cfe, uopt, ugen, as1) directly with /usr/lib/ rewritten to the
local toolchain and -O2 changed to -O3. The driver is never allowed to reach
its own -O3 path, so no ucode tools are needed.

This is the mode the Makefile's N_AUDIO_O_FILES rule uses, and it must stay
byte-for-byte what it was: nine objects and the ROM sha1 depend on it.


MODE 2 -- OPT-IN, `CC_O3_UJOIN=1`, the REAL interprocedural -O3
---------------------------------------------------------------
The genuine IDO -O3 pipeline is

    cfe -> ujoin -> uld -> usplit -> umerge -> uopt -> ugen -> as1

(with -non_shared; -call_shared drops umerge).  ujoin/uld/usplit/umerge are
absent from tools/ido-7.1recomp, which is why mode 1 exists at all.  They are
NOT absent from the repository: libreultra/tools/ido-5.3recomp/ido5.3_recomp/
carries native x86-64 recompiled builds of all four.  The recompiled binaries
rewrite an exec of `/usr/lib/X` to `<directory of the running binary>/X`
(REDIRECT_USR_LIB in libc_impl.c), so putting the four 5.3 tools in a
directory beside the 7.1 ones is enough to make `cc -O3` run end to end.
_toolchain() assembles exactly that directory out of hardlinks -- no binary is
added to the tree, and both sets stay where they are.

Mixing 5.3's ucode tools with 7.1's cfe/uopt/ugen is faithful, not a hack:
compiled this way, every function in src/main/libn_audio.c that matches today
still matches byte-for-byte.

What mode 2 buys is the ONE thing mode 1 cannot do -- IDO's interprocedural
calling convention.  For a `static` callee whose call sites are all visible,
uopt drops the o32 argument registers and picks its own.  Measured on a
synthetic (S *, float): mode 1 and a non-static callee both emit the standard
`mtc1 $a1, $f12` entry move; mode 2 with `static` puts the pointer in $a0 and
the float in $f12 with no entry move at all -- which is precisely what the ROM
does in func_80026460, func_8002581C ($t2/$t3), __alSeqNextDelta and the rest
of the ABI-blocked pool.


THREE THINGS MODE 2 DOES THAT WILL BITE YOU
-------------------------------------------
1. It REVERSES the order of functions in the object.  Six functions written
   e1..e6 come out e6..e1.  This is why mode 2 cannot simply become the
   default: our audio sources are written in ROM address order, and mode 1
   preserves source order, so the ROM matches today only because of that.
   It also means asm-processor cannot be used with mode 2 -- it asserts that
   each GLOBAL_ASM dummy appears after the previous one and fails with
   "Wrongly computed size for section .text".  Score mode-2 candidates on a
   pragma-free scratch copy of the TU (see scratchpad/ujoin/mkprobe.py).

2. Whatever gets the custom convention has to be `static`, and IDO INLINES a
   small static at -O3 rather than calling it -- so the function disappears
   and there is nothing to score.  `CC_O3_NOINLINE=1` passes the driver's
   `-noinline`, which keeps the interprocedural convention and suppresses the
   inlining.  That combination is what makes func_80026460 come out exact.

3. `static` functions lose their names in the -O3 object, so verify.py reports
   them as "not found in compiled object".  Compare the words by hand against
   the listing (or teach verify.py to locate them) -- a blank is not a zero.
"""
import os, re, shlex, subprocess, sys, tempfile

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
TOOLS = os.path.join(REPO, 'tools/ido-7.1recomp')
# Native x86-64 recompiles of the ucode tools IDO 7.1's own recomp omits.
UCODE_SRC = os.path.join(REPO, 'libreultra/tools/ido-5.3recomp/ido5.3_recomp')
UCODE_TOOLS = ('ujoin', 'uld', 'usplit', 'umerge')
# Derived, not tracked: build/ is gitignored and this is pure hardlinks.
MERGED = os.path.join(REPO, 'build/ido-o3-ujoin')


def _link(src, dst):
    """Hardlink src to dst, atomically, falling back to a copy across devices.

    A hardlink and not a symlink on purpose: the recompiled binaries locate
    their sibling phases through /proc/self/exe, which resolves a symlink back
    to tools/ido-7.1recomp and would defeat the whole arrangement.
    """
    if os.path.exists(dst) and os.path.samefile(src, dst):
        return
    tmp = dst + '.tmp%d' % os.getpid()
    try:
        os.link(src, tmp)
    except OSError:
        import shutil
        shutil.copy2(src, tmp)
    os.replace(tmp, dst)


def _toolchain():
    """Assemble (lazily, idempotently) a directory holding the 7.1 phases plus
    the four ucode tools, and return its path."""
    missing = [t for t in UCODE_TOOLS
               if not os.path.exists(os.path.join(UCODE_SRC, t))]
    if missing:
        sys.exit('cc_o3: CC_O3_UJOIN=1 but %s missing from %s'
                 % (', '.join(missing), UCODE_SRC))
    os.makedirs(MERGED, exist_ok=True)
    for name in os.listdir(TOOLS):
        _link(os.path.join(TOOLS, name), os.path.join(MERGED, name))
    for name in UCODE_TOOLS:
        _link(os.path.join(UCODE_SRC, name), os.path.join(MERGED, name))
    return MERGED


# Driver chatter that is expected in mode 2 and says nothing about the code.
_NOISE = ('should not be used with ucode', '-Xfullwarn not supported')


def ujoin_mode(args):
    args = ['-O3' if t == '-O2' else t for t in args]
    if os.environ.get('CC_O3_NOINLINE'):
        args = ['-noinline'] + args
    r = subprocess.run([os.path.join(_toolchain(), 'cc')] + args,
                       stderr=subprocess.PIPE)
    err = r.stderr.decode('utf-8', 'replace')
    keep, skip = [], False
    for line in err.split('\n'):
        if any(n in line for n in _NOISE):
            skip = line.rstrip().endswith(':')   # "uld:" heads its warning
            continue
        if skip and line.startswith('Warning:'):
            continue
        skip = False
        if line.strip() == 'uld:':
            continue
        keep.append(line)
    sys.stderr.write('\n'.join(keep))
    sys.exit(r.returncode)


def phase_mode(args):
    show = subprocess.run([TOOLS + '/cc', '-show'] + args,
                          capture_output=True, text=True)
    lines = []
    for l in (show.stdout + show.stderr).split('\n'):
        k = l.find('/usr/lib/')
        if k >= 0:
            lines.append(l[k:])
    if len(lines) != 4:
        sys.stderr.write(show.stdout + show.stderr)
        sys.exit(f'cc_o3: expected 4 phase lines from -show, got {len(lines)}')

    # The phases hand each other files under /tmp/ctm*; those names come from
    # the driver's own run, so they have to be remapped into a directory that
    # actually exists for this invocation.
    tmp = tempfile.mkdtemp(prefix='cco3')
    remap = {}

    def fix(tok):
        if tok is None:
            return None
        def sub(m):
            remap.setdefault(m.group(0),
                             os.path.join(tmp, os.path.basename(m.group(0))))
            return remap[m.group(0)]
        return re.sub(r'/tmp/ctm\w+', sub, tok)

    for line in lines:
        line = line.strip()
        redir = None
        if '>' in line:
            line, redir = line.rsplit('>', 1)
            redir = redir.strip()
        toks = shlex.split(line)
        toks = [t.replace('/usr/lib/', TOOLS + '/')
                if t.startswith('/usr/lib/') else t for t in toks]
        toks = ['-O3' if t == '-O2' else t for t in toks]
        toks = [fix(t) for t in toks]
        out = open(fix(redir), 'wb') if redir else None
        r = subprocess.run(toks, stdout=out, stderr=subprocess.PIPE)
        if out:
            out.close()
        if r.returncode != 0:
            sys.stderr.write(r.stderr.decode('utf-8', 'replace'))
            sys.exit(r.returncode)


def main():
    args = sys.argv[1:]
    if os.environ.get('CC_O3_UJOIN'):
        ujoin_mode(args)
    else:
        phase_mode(args)


if __name__ == '__main__':
    main()
