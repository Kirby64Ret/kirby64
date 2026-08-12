#!/usr/bin/env python3
"""Generate abort-on-call stubs for everything the native build is still missing.

Without this the PC port cannot be exercised at all until the last of ~1100
functions is decompiled, because one undefined symbol fails the whole link.
That is a bad place to be: it means no part of the platform layer can be run,
and every renderer or audio decision stays theoretical until the very end.

A stub per missing function turns that around. The binary links now, and it
runs until it reaches something that genuinely is not implemented -- at which
point it prints the symbol's name and stops. The first missing symbol a real
run hits is worth more than any amount of reading, because it is evidence about
what the game actually calls at startup rather than what the symbol table says
might be called.

Stubs are emitted WEAK, so the moment a function is really decompiled the real
definition wins with no bookkeeping and no regeneration ordering problem.

Data symbols get zeroed storage rather than an abort: code takes their address
during startup without dereferencing them, so aborting would fire spuriously.
The size is unknown, so they are generously padded -- a stub build is for
finding out how far the game gets, not for being correct.

Usage: gen_stubs.py [-o build/pc/stubs.c]
"""
import glob, os, re, subprocess, sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

# Enough room that a struct-typed symbol indexed a few entries in stays inside
# its own storage instead of silently walking into the next stub.
DATA_PAD = 0x400


def missing():
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
    if os.path.exists('build/pc/defsyms.txt'):
        for line in open('build/pc/defsyms.txt'):
            m = re.match(r'--defsym\s+(\w+)=', line)
            if m:
                defined.add(m.group(1))
    return sorted(undef - defined)


# Supplied by the host at link time; stubbing them would shadow the real ones.
LIBC = re.compile(r'^(memcpy|memset|memmove|strlen|strcpy|bcopy|bzero|'
                  r'sinf|cosf|sqrtf|_GLOBAL_OFFSET_TABLE_|'
                  r'__stack_chk_fail_local)$')

# Supplied by the LINKER, and this is a different failure mode from the libc
# one: ld only defines these itself when nothing else does, and a weak stub
# still counts as a definition. So stubbing them does not produce a duplicate
# symbol -- it silently WINS, and the program gets a plausible-looking address
# that means nothing.
#
# That is not hypothetical. src/pc/os_pi.c's "refuse a cartridge DMA that lands
# in our own text" guard is `p >= __executable_start && p < _etext`, and with
# both stubbed those two landed 21 bytes apart in the middle of the stub blob,
# so the guard answered "no" to every address. The first overlay load past ovl1
# then memcpy'd 200 KB of ROM over the port's read-only .text and took SIGSEGV
# inside memcpy, three frames below anything that looked related.
#
# Anything ld would define on its own belongs here.
LINKER_PROVIDED = frozenset((
    '__executable_start', '__ehdr_start', '_etext', 'etext', '_edata', 'edata',
    '_end', 'end', '__bss_start', '__bss_start__', '_bss_end__', '__bss_end__',
    '__data_start', '__dso_handle', '_init', '_fini',
    '__preinit_array_start', '__preinit_array_end',
    '__init_array_start', '__init_array_end',
    '__fini_array_start', '__fini_array_end',
    '__start___libc_atexit', '__stop___libc_atexit',
))


def host_symbols():
    """Everything the host's C library actually defines.

    The hand-written list above was enough while the only undefined symbols
    came from game code. It stopped being enough the moment src/pc/ appeared:
    a platform layer calls fopen, getenv, snprintf, clock_gettime,
    swapcontext, and references stderr, and a `void stderr(void)` stub does
    not merely shadow the real one -- it fails to compile against <stdio.h>.

    Reading the real symbol table instead of maintaining a list means this
    cannot drift again. Falls back to the regex if the libraries are not
    where they are expected, which only costs the old behaviour.
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
                    # nm prints versioned names as `strcmp@@GLIBC_2.2.5`
                    names.add(parts[2].split('@')[0])
            break
    return names


def declared_objects():
    """Names the sources declare as OBJECTS rather than functions.

    The name-prefix heuristic below (D_, g, ovlN_) covers the symbols splat
    invented names for, and misses every symbol the decompilation has since
    given a real name to. `extern u8 *auSoundPriority;` starts with an 'a', so
    it was being emitted as `void auSoundPriority(void) { ... }` -- a weak
    FUNCTION, living in .text. The port then took SIGSEGV on the perfectly
    ordinary `auSoundPriority = buf;`, because that is a store into read-only
    code, and the crash names the assignment rather than the stub.

    A prefix cannot answer this question; the declaration can, and the
    declaration is right there in the headers. Anything declared `extern`
    with no parentheses in the declarator is an object.
    """
    names = set()
    decl = re.compile(r'\bextern\b(?![^;{}]*\()[^;{}]*;')
    ident = re.compile(r'[A-Za-z_]\w*')
    for pat in ('src/**/*.c', 'src/**/*.h', 'include/**/*.h'):
        for path in glob.glob(pat, recursive=True):
            try:
                text = open(path, errors='replace').read()
            except OSError:
                continue
            for m in decl.finditer(text):
                names.update(ident.findall(m.group(0)))
    return names


def main():
    out = 'build/pc/stubs.c'
    if '-o' in sys.argv:
        out = sys.argv[sys.argv.index('-o') + 1]
    os.makedirs(os.path.dirname(out), exist_ok=True)

    prag = set()
    for cf in glob.glob('src/**/*.c', recursive=True):
        prag |= set(re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)',
                               open(cf).read()))

    host = host_symbols()
    objs = declared_objects()
    funcs, data = [], []
    for s in missing():
        if LIBC.match(s) or s in host or s in LINKER_PROVIDED:
            continue
        # A GLOBAL_ASM pragma is proof it is a function, and it outranks
        # everything else: an `extern` declaration of the same name elsewhere
        # would be a prototype anyway.
        if s.startswith('func_') or s in prag:
            funcs.append(s)
        elif s in objs or s.startswith('D_') or s.startswith('g') \
                or re.match(r'^ovl\d+_', s):
            data.append(s)
        else:
            funcs.append(s)

    with open(out, 'w') as f:
        f.write('/* GENERATED by tools/pc/gen_stubs.py -- do not edit.\n'
                ' *\n'
                ' * Weak abort-on-call stubs for everything not yet\n'
                ' * decompiled or implemented, so the native binary links and\n'
                ' * can be run to find out where it actually stops.\n'
                ' */\n'
                '#include <stdio.h>\n'
                '#include <stdlib.h>\n'
                '#include <string.h>\n\n'
                '/* Two modes, because they answer different questions.\n'
                ' *\n'
                ' * Default: stop at the first missing symbol and name it. That\n'
                ' * is the honest answer to "how far does it get".\n'
                ' *\n'
                ' * KIRBY_PC_TRACE=1: log each missing symbol once and RETURN,\n'
                ' * letting the game run on. The result is a list of everything\n'
                ' * the startup path actually reaches, rather than just the\n'
                ' * first thing -- which is what you want when deciding what to\n'
                ' * implement next. It is not a correctness mode: returning 0\n'
                ' * from a function that should have done something will send\n'
                ' * the game down paths it would never really take, so treat\n'
                ' * the list as a work queue and not as a run.\n'
                ' */\n'
                '#define PC_MAX_SEEN 4096\n'
                'static const char *pc_seen[PC_MAX_SEEN];\n'
                'static int pc_nseen;\n'
                'static int pc_trace = -1;\n\n'
                'static void pc_unimplemented(const char *name) {\n'
                '    int i;\n'
                '    if (pc_trace < 0)\n'
                '        pc_trace = getenv("KIRBY_PC_TRACE") != NULL;\n'
                '    if (!pc_trace) {\n'
                '        fprintf(stderr, "\\n*** not implemented: %s\\n", name);\n'
                '        exit(70);\n'
                '    }\n'
                '    for (i = 0; i < pc_nseen; i++)\n'
                '        if (strcmp(pc_seen[i], name) == 0)\n'
                '            return;\n'
                '    if (pc_nseen < PC_MAX_SEEN)\n'
                '        pc_seen[pc_nseen++] = name;\n'
                '    fprintf(stderr, "unimplemented: %s\\n", name);\n'
                '}\n\n'
                'void pc_stub_report(void) {\n'
                '    fprintf(stderr, "\\n%d distinct unimplemented symbol(s) '
                'reached\\n", pc_nseen);\n'
                '}\n\n'
                '/* RETURNING ZERO IS THE POINT, and it has to be written\n'
                ' * down. A `void` stub leaves whatever happened to be in the\n'
                ' * return register, so under KIRBY_PC_TRACE=1 the caller gets\n'
                ' * garbage rather than nothing -- and a garbage POINTER is\n'
                ' * indistinguishable from a real bug. The one that found this:\n'
                ' * ovl1_3.c does `buf = (void *) func_800A8358(size | arg1);`\n'
                ' * and then dma_read()s into buf. With a void stub buf came\n'
                ' * back 0x1d and the port died inside memcpy, four frames\n'
                ' * below a function whose name was already on the trace list.\n'
                ' * A long return is zero in rax for every integer and pointer\n'
                ' * caller. Float returns still read an untouched xmm0; nothing\n'
                ' * portable fixes that, and no float has caused a fault yet. */\n'
                '\n'
                '/* KIRBY_PC_STUB_ARENA=1 -- return a POINTER instead of zero.\n'
                ' *\n'
                ' * Zero is the right default: it is predictable, and a NULL\n'
                ' * that faults tells you a stub result was used as a pointer.\n'
                ' * But several of the stubs on the startup path ARE allocators\n'
                ' * (ovl1_3.c func_800A8358 is the asset-cache one), and a run\n'
                ' * that stops at the first NULL deref cannot answer "would the\n'
                ' * renderer draw anything if the assets were there".\n'
                ' *\n'
                ' * Under this variable every stub hands back a fresh slice of a\n'
                ' * zeroed arena, so a caller that stores through the result\n'
                ' * writes to memory that belongs to us. The data is nonsense\n'
                ' * and so is anything computed from it -- this answers "how far\n'
                ' * does control reach", nothing else. Never leave it on. */\n'
                '#define PC_STUB_ARENA_SIZE (32u * 1024u * 1024u)\n'
                '#define PC_STUB_SLICE      0x4000u\n'
                'static unsigned char pc_stub_arena[PC_STUB_ARENA_SIZE];\n'
                'static unsigned pc_stub_arena_top;\n'
                'static int pc_stub_arena_on = -1;\n\n'
                'static long pc_stub_value(void) {\n'
                '    unsigned off;\n'
                '    if (pc_stub_arena_on < 0)\n'
                '        pc_stub_arena_on = getenv("KIRBY_PC_STUB_ARENA") != NULL;\n'
                '    if (!pc_stub_arena_on)\n'
                '        return 0;\n'
                '    off = pc_stub_arena_top;\n'
                '    pc_stub_arena_top += PC_STUB_SLICE;\n'
                '    if (pc_stub_arena_top > PC_STUB_ARENA_SIZE) {\n'
                '        pc_stub_arena_top = 0;\n'
                '        off = 0;\n'
                '    }\n'
                '    return (long)(size_t)&pc_stub_arena[off];\n'
                '}\n\n')
        for s in funcs:
            f.write(f'__attribute__((weak)) long {s}(void) '
                    f'{{ pc_unimplemented("{s}"); return pc_stub_value(); }}\n')
        f.write('\n')
        for s in data:
            f.write(f'__attribute__((weak)) unsigned char {s}[{DATA_PAD}];\n')

    print(f'{len(funcs)} function stubs, {len(data)} data stubs -> {out}')
    print('All weak: a real definition overrides its stub automatically, so '
          'this needs no\nregeneration ordering as functions land.')


if __name__ == '__main__':
    main()
