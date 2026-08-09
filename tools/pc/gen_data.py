#!/usr/bin/env python3
"""Translate the MIPS data listings into C, for the PC build only.

The N64 build assembles `asm/data/**/*.s` directly. A native build cannot: the
listings are MIPS assembly. But they are also almost entirely `.word`, and
splat has already resolved every pointer word to a symbol NAME rather than a
raw address -- 7161 of them. So the translation is mechanical.

This is deliberately PC-ONLY and writes nothing the N64 build reads. Migrating
data into C for the N64 build means reproducing the ROM's byte layout exactly
and is the same class of problem as rodata migration; here byte layout does not
matter, only semantics, so the two jobs are completely separate. Nothing in
this file can affect the matching build.

Emitted arrays are untyped `u32` (or `void *` for pointer words). The generated
translation units deliberately include NO game headers: many of these symbols
are declared elsewhere with real types, and a `u32 D_800E1B50[]` definition
would conflict with an `extern struct Foo *D_800E1B50[]` declaration. C has no
cross-TU type checking at link time, so keeping them in isolation is what makes
the whole set compile.

Words are byte-swapped: the listings are big-endian ROM data and the host is
little-endian, so a `.word 0x3F800000` must become the u32 0x3F800000 (a value,
not a byte sequence) for float reinterpretation to work on the host.

Usage: gen_data.py [-o outdir]      default outdir: build/pc/data
"""
import os, re, sys, glob

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

# Directives can be preceded by an address comment, so anchoring on the start
# of the line silently loses ALL of them. The first version of this tool did
# exactly that and dropped 15000+ entries -- .short, .float, .byte, .asciz and
# .double -- producing blocks that were correct-looking but short.
DIRECTIVE = re.compile(r'(?:/\*[^*]*\*/)?\s*'
                       r'\.(word|short|byte|float|double|asciz|space)\s+(.+?)\s*$')
INCBIN = re.compile(r'^\s*\.incbin\s+"([^"]+)"')
DLABEL = re.compile(r'^dlabel\s+(\w+)')
ENDLABEL = re.compile(r'^enddlabel\s+(\w+)')
SECTION = re.compile(r'^\.section\s+(\S+)')


def c_ident(sym):
    return sym


def parse(path):
    """[(symbol, section, entries)] where an entry is ('w', text) or ('z', n)."""
    out, cur, entries, section = [], None, [], '.data'
    for line in open(path):
        m = SECTION.match(line)
        if m:
            section = m.group(1).rstrip(',')
            continue
        m = DLABEL.match(line)
        if m:
            if cur:
                out.append((cur, section, entries))
            cur, entries = m.group(1), []
            continue
        m = ENDLABEL.match(line)
        if m:
            if cur:
                out.append((cur, section, entries))
            cur, entries = None, []
            continue
        if cur is None:
            continue
        m = INCBIN.match(line)
        if m:
            entries.append(('incbin', m.group(1)))
            continue
        m = DIRECTIVE.search(line)
        if m:
            kind, val = m.group(1), m.group(2).strip()
            entries.append(('space' if kind == 'space' else kind, val))
    if cur:
        out.append((cur, section, entries))
    return out


SCALAR = re.compile(r'0x[0-9A-Fa-f]+|-?\d+')
CTYPE = {'word': 'u32', 'short': 'u16', 'byte': 'u8',
         'float': 'f32', 'double': 'f64'}
WIDTH = {'word': 4, 'short': 2, 'byte': 1, 'float': 4, 'double': 8}


def _is_ref(val):
    return not SCALAR.fullmatch(val)


def render(sym, section, entries, refs):
    """(forward_declaration, definition) for one data block.

    Pointer words become `&symbol` so the host linker resolves them, which is
    the whole reason this translation is possible at all: splat already turned
    every pointer word into a symbol name rather than a raw address.
    """
    const = 'const ' if section == '.rodata' else ''
    entries = [e for e in entries if e[0] != 'incbin']
    if not entries:
        return '', ''

    kinds = {k for k, _ in entries}

    # .bss -- plain zeroed storage, and it must NOT be const.
    #
    # DOUBLED, and this is not caution, it is a correctness fix found by a
    # crash. The listing records the size the symbol had on N64, where a
    # pointer is 4 bytes. This build is LP64. Every bss object that holds
    # pointers is therefore too small by exactly the number of pointers in it,
    # and the game writes past the end of it into whatever the linker put next.
    #
    # The one that found it: sched.c declares `OSMesg D_80048C98[8]` and the
    # listing says `.space 32`. At LP64 an OSMesg is 8 bytes, so the queue
    # needs 64 -- and the 32 bytes it ran into were scTaskMQ, whose mtqueue
    # field became the message value 1. osSendMesg then dereferenced 0x1.
    #
    # 2x is an exact upper bound rather than a guess: the only thing that grows
    # is a pointer, 4 -> 8, and alignment inside these structs never exceeds 8,
    # so no layout can more than double. It costs address space and nothing
    # else -- these are zeroed pages the game never reads past its own extent.
    # It cannot disturb tools/pc/gen_defsyms.py either, which resolves an
    # absolute N64 address to <symbol>+<offset from that symbol's N64 start>;
    # growing a symbol does not move its own start.
    if kinds == {'space'}:
        n = sum(int(v, 0) for _, v in entries)
        return f'extern u8 {sym}[];\n', f'u8 {c_ident(sym)}[{n * 2}];\n'

    # Strings. The listing may hold several in one block, in which case the
    # only faithful C form is a flat char array with the terminators kept.
    if kinds == {'asciz'}:
        lits = ' '.join(v for _, v in entries)
        return (f'extern {const}char {sym}[];\n',
                f'{const}char {c_ident(sym)}[] = {lits};\n')

    # A block that is BOTH pointer-bearing and mixed-width cannot be an array
    # of anything. 24 blocks are like this -- string tables where inline .asciz
    # data sits next to pointer words (sSoundNames, D_80192F50_ovl3, ...). An
    # earlier version emitted a void* array with a placeholder for each string,
    # which lost the string AND shifted every later index, because a 9-byte
    # string is not one pointer slot. A packed struct is the only faithful
    # form, and it also beats byte-serialisation for the 41 mixed-width blocks
    # with no pointers, since it keeps the pointers and the values both.
    has_ref = any(_is_ref(v) for k, v in entries if k == 'word')
    if len(kinds) > 1:
        fields, inits = [], []
        for i, (k, v) in enumerate(entries):
            if k == 'asciz':
                n = len(v.strip('"').encode('latin-1', 'replace')) + 1
                fields.append(f'    char f{i}[{n}];')
                inits.append(v)
            elif k == 'space':
                fields.append(f'    u8 f{i}[{int(v, 0)}];')
                inits.append('{ 0 }')
            elif k == 'word' and _is_ref(v):
                m = re.match(r'([A-Za-z_]\w*)', v)
                refs.add(m.group(1))
                fields.append(f'    void *f{i};')
                inits.append(f'&{v}' if re.fullmatch(r'\w+', v)
                             else f'(void *)((u8 *)&{m.group(1)} + 0)')
            else:
                fields.append(f'    {CTYPE.get(k, "u32")} f{i};')
                inits.append(v)
        tag = f'{sym}_t'
        decl = ('struct __attribute__((packed)) ' + tag + ' {\n'
                + '\n'.join(fields) + '\n};\n'
                + f'extern {const}struct {tag} {sym};\n')
        body = (f'{const}struct {tag} {c_ident(sym)} = {{\n    '
                + ',\n    '.join(inits) + '\n};\n')
        return decl, body

    # Pure pointer array: only the linker can supply these addresses. A pointer
    # word is 4 bytes and so is a u32, which is precisely why the port is ILP32.
    if has_ref:
        body = []
        for k, v in entries:
            if not _is_ref(v):
                body.append(f'(void *)(u32)({v})')
            elif re.fullmatch(r'\w+', v):
                refs.add(v)
                body.append(f'&{v}')
            else:                                   # `sym + 0x10`
                m = re.match(r'(\w+)\s*([+-])\s*(\S+)', v)
                if m:
                    refs.add(m.group(1))
                    body.append(f'(void *)((u8 *)&{m.group(1)} '
                                f'{m.group(2)} ({m.group(3)}))')
                else:
                    body.append('(void *)0')
        return (f'extern {const}void *{sym}[];\n',
                f'{const}void *{c_ident(sym)}[] = {{\n    ' +
                ',\n    '.join(body) + '\n};\n')

    # Homogeneous scalar block -- emit its natural C type so the host reads it
    # with the same value the N64 would. These are VALUES, not a byte image:
    # writing 0x3F800000 as a u32 gives the right float on either endianness,
    # whereas copying the ROM's bytes would not.
    k = next(iter(kinds))
    if k in CTYPE:
        vals = ', '.join(v for _, v in entries)
        return (f'extern {const}{CTYPE[k]} {sym}[];\n',
                f'{const}{CTYPE[k]} {c_ident(sym)}[] = {{ {vals} }};\n')
    return '', ''


def main():
    outdir = 'build/pc/data'
    if '-o' in sys.argv:
        outdir = sys.argv[sys.argv.index('-o') + 1]
    os.makedirs(outdir, exist_ok=True)

    # Anything already defined in C wins; emitting it again is a duplicate
    # symbol at link time.
    defined = set()
    for cf in glob.glob('src/**/*.c', recursive=True):
        txt = open(cf).read()
        for m in re.finditer(r'^(?!extern)(?:[\w\*]+[ \t]+)+?(\w+)\s*(?:\[[^\]]*\])?\s*=',
                             txt, re.M):
            defined.add(m.group(1))

    # Not every .s on disk is live. 54 rodata listings exist under two names --
    # `<file>.rodata.s` and `<file>_rd.rodata.s` -- byte-identical duplicates
    # left behind when the subsegments were renamed to break a splat name
    # collision. The N64 build links only the `_rd` object, so the plain one is
    # stale; emitting both gives thousands of multiple-definition errors at the
    # native link. build/kirby.ld is the authority on which is real.
    live = None
    if os.path.exists('build/kirby.ld'):
        ld = open('build/kirby.ld').read()
        live = set(re.findall(r'build/asm/data/(\S+?)\.o', ld))
        if not live:
            live = None

    nfiles = nsyms = skipped = 0
    for path in sorted(glob.glob('asm/data/**/*.s', recursive=True)):
        if live is not None and path[len('asm/data/'):-2] not in live:
            skipped += 1
            continue
        blocks = [b for b in parse(path) if b[0] not in defined]
        if not blocks:
            continue
        rel = path[len('asm/data/'):-2].replace('/', '_')
        with open(f'{outdir}/{rel}.c', 'w') as f:
            f.write('/* GENERATED by tools/pc/gen_data.py -- do not edit.\n'
                    '   PC build only; the N64 build assembles the .s directly. */\n'
                    '#include "pc/pc_types.h"\n\n')
            refs, fwds, bodies = set(), [], []
            for sym, section, entries in blocks:
                fwd, body = render(sym, section, entries, refs)
                fwds.append(fwd)
                bodies.append(body)
                nsyms += 1
            # A block routinely points at a symbol defined LATER in the same
            # file, so every local symbol needs a forward declaration -- and it
            # must carry the SAME type as its definition, because `extern u8 X;`
            # against a `u32 X[]` definition is a hard type conflict, not a
            # warning. Symbols from other files get the opaque `extern u8`.
            local = {b[0] for b in blocks}
            f.writelines(fwds)
            for s in sorted(refs - local):
                f.write(f'extern u8 {s};\n')
            f.write('\n')
            f.writelines(bodies)
        nfiles += 1
    print(f'{nsyms} data symbols -> {nfiles} C files in {outdir}'
          + (f' ({skipped} stale listing(s) skipped)' if skipped else ''))


if __name__ == '__main__':
    main()
