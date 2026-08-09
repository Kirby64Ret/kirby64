#!/usr/bin/env python3
"""What the PC port is still missing, by category, measured from the objects.

This is the porting counterpart to verify_rom.py: rather than asking whether
the code is byte-exact, it asks whether the code EXISTS. Every symbol printed
here is something the native binary cannot link without.

The categories mean different things and should not be added together:

  func_*        un-decompiled game functions. Not porting work at all -- these
                disappear on their own as the matching decompilation proceeds,
                and nothing else can start until they do.
  D_*           data symbols with no definition. Most of the data listings are
                translated automatically (tools/pc/gen_data.py); what is left
                here is the residue that needs a look.
  os* / al* / gu*  the actual platform layer. This is the real port.
  other         libc and named helpers.

Usage: gap.py [--list CATEGORY]
"""
import glob, re, subprocess, sys, os

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)


def symbols():
    objs = glob.glob('build/pc/src/*/*.o') + glob.glob('build/pc/data/*.o')
    if not objs:
        raise SystemExit('no objects -- run `make -f Makefile.pc objs` first')
    out = subprocess.run(['nm'] + objs, capture_output=True, text=True).stdout
    undef, defined = set(), set()
    for line in out.split('\n'):
        p = line.split()
        if len(p) == 2 and p[0] == 'U':
            undef.add(p[1])
        elif len(p) == 3 and p[1] not in 'Uu':
            defined.add(p[2])
    # datatodo.txt's absolute symbols are supplied to the link as --defsym, not
    # by any object, so counting them as missing overstates the gap by 220.
    # See tools/pc/gen_defsyms.py.
    if os.path.exists('build/pc/defsyms.txt'):
        for line in open('build/pc/defsyms.txt'):
            m = re.match(r'--defsym\s+(\w+)=', line)
            if m:
                defined.add(m.group(1))
    return sorted(undef - defined), len(defined)


CATS = [
    ('un-decompiled functions', r'^func_'),
    ('unresolved data',         r'^D_'),
    ('libultra os/io',          r'^(os|__os)'),
    ('audio library',           r'^(al|n_al)'),
    ('gu math',                 r'^gu'),
    # Not gaps: the host libc and libm supply these at link time. Counting
    # them as porting work overstates the platform layer.
    #
    # The membership test is NOT this pattern -- see host_supplied() below,
    # which reads the real symbol tables. The pattern is kept only as the
    # fallback for a machine where those cannot be read.
    ('supplied by libc/libm',
     r'^(memcpy|memset|memmove|strlen|strcpy|bcopy|bzero|sinf|cosf|sqrtf|'
     r'sincosf|_GLOBAL_OFFSET_TABLE_|__stack_chk_fail_local)$'),
    # Linker-script segment bounds, not code. On PC these come from whatever
    # overlay model the port adopts -- see docs/PC_PORT_SURFACE.md.
    ('overlay segment bounds',  r'^ovl\d+_(ROM|VRAM|TEXT|DATA|RODATA|BSS)'),
]


def host_supplied():
    """Symbols the host toolchain resolves at link time, read rather than listed.

    A hand-maintained list was fine while every undefined symbol came from
    game code. The platform layer under src/pc/ broke that: it calls fopen,
    getenv, mmap, snprintf, clock_gettime, swapcontext and references stderr,
    and thirty such names were landing in "libc / other" and being counted as
    remaining PORTING work. They are not -- the link resolves every one of
    them today.

    Three sources, all authoritative rather than guessed:
      * the C library and friends, from their dynamic symbol tables;
      * libgcc, for the 64-bit division helpers a 32-bit build needs;
      * the handful of symbols ld itself defines.

    tools/pc/gen_stubs.py needs the same set for the same reason and has its
    own copy; if a third caller appears, this belongs in a shared module.
    """
    names = set()
    for lib in ('libc.so.6', 'libm.so.6', 'libpthread.so.0', 'librt.so.1'):
        for d in ('/lib/x86_64-linux-gnu', '/usr/lib/x86_64-linux-gnu',
                  '/lib/i386-linux-gnu', '/usr/lib/i386-linux-gnu',
                  '/lib', '/usr/lib'):
            p = os.path.join(d, lib)
            if not os.path.exists(p):
                continue
            out = subprocess.run(['nm', '-D', '--defined-only', p],
                                 capture_output=True, text=True).stdout
            for line in out.split('\n'):
                parts = line.split()
                if len(parts) >= 3 and parts[1] not in 'Aa':
                    names.add(parts[2].split('@')[0])
            break
    # libgcc's soft-arithmetic helpers. gcc emits calls to these for 64-bit
    # division on i386 and always links them.
    names |= {'__udivdi3', '__divdi3', '__umoddi3', '__moddi3', '__udivmoddi4'}
    # Defined by the linker, not by any object.
    names |= {'__executable_start', '_etext', '_edata', '__bss_start', 'end',
              '_GLOBAL_OFFSET_TABLE_'}
    # The host entry point lives in tools/pc/hostmain.c, which is compiled by
    # tools/pc/link.sh rather than into build/pc/src/*/ where this looks.
    names |= {'EntryPoint', 'main'}
    return names


def pragma_names():
    """Every function still behind a #pragma GLOBAL_ASM.

    Matching on `^func_` alone undercounts: plenty of functions have real
    names -- game_tick, auThreadMain, eneTurnCommon, initTrack, saveVerify,
    saveForceCompleteFile, saveCalcHeaderChecksum -- and were landing in the
    "libc / other" bucket, which made the platform layer look bigger than it is
    and the decompilation smaller. The pragma set is the authority.
    """
    out = set()
    for cf in glob.glob('src/**/*.c', recursive=True):
        out |= set(re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)', open(cf).read()))
    return out


def main():
    gap, ndef = symbols()
    want = sys.argv[sys.argv.index('--list') + 1] if '--list' in sys.argv else None

    prag = pragma_names()
    host = host_supplied()
    buckets, seen = [], set()
    for name, pat in CATS:
        if name.startswith('un-decompiled'):
            hit = [s for s in gap if (re.match(pat, s) or s in prag)
                   and s not in host]
        elif name.startswith('supplied by'):
            hit = [s for s in gap if (re.match(pat, s) or s in host)
                   and s not in seen and s not in prag]
        else:
            hit = [s for s in gap if re.match(pat, s) and s not in seen
                   and s not in prag and s not in host]
        seen |= set(hit)
        buckets.append((name, hit))
    buckets.append(('libc / other', [s for s in gap if s not in seen]))

    print(f'{ndef} symbols defined, {len(gap)} still missing\n')
    for name, hit in buckets:
        print(f'  {name:26} {len(hit):5}')
        if want and want in name:
            for s in hit:
                print(f'      {s}')

    NOT_PORT = ('un-decompiled functions', 'unresolved data',
                'supplied by libc/libm')
    plat = sum(len(h) for n, h in buckets if n not in NOT_PORT)
    print(f'\nplatform layer: {plat} symbols. Decompilation still owes '
          f'{len(buckets[0][1])} functions;\nuntil those land the binary cannot '
          f'link no matter how complete the platform layer is.')


if __name__ == '__main__':
    main()
