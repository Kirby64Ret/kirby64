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

    # .bss -- plain zeroed storage, and it must NOT be const
    if kinds == {'space'}:
        n = sum(int(v, 0) for _, v in entries)
        return f'extern u8 {sym}[];\n', f'u8 {c_ident(sym)}[{n}];\n'

    # Strings. The listing may hold several in one block, in which case the
    # only faithful C form is a flat char array with the terminators kept.
    if kinds == {'asciz'}:
        lits = ' '.join(v for _, v in entries)
        return (f'extern {const}char {sym}[];\n',
                f'{const}char {c_ident(sym)}[] = {lits};\n')

    # Anything naming a symbol has to become a pointer array: only the linker
    # can supply the address. Pointer words are 4 bytes and so is a u32, which
    # is precisely why the port is ILP32.
    if any(_is_ref(v) for k, v in entries if k == 'word'):
        body = []
        for k, v in entries:
            if k != 'word':
                # a non-word entry inside a pointer block cannot be expressed;
                # keep the slot so later indices stay right
                body.append('(void *)0 /* ' + k + ' ' + v + ' */')
            elif not _is_ref(v):
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
                ',\n    '.join(body) + '\n}};\n'.replace('}}', '}'))

    # Homogeneous scalar block -- emit its natural C type so the host reads it
    # with the same value the N64 would. These are VALUES, not a byte image:
    # writing 0x3F800000 as a u32 gives the right float on either endianness,
    # whereas copying the ROM's bytes would not.
    if len(kinds) == 1:
        k = kinds.pop()
        if k in CTYPE:
            vals = ', '.join(v for _, v in entries)
            return (f'extern {const}{CTYPE[k]} {sym}[];\n',
                    f'{const}{CTYPE[k]} {c_ident(sym)}[] = {{ {vals} }};\n')

    # Mixed widths -- a struct, in other words. Lay it out as a byte array in
    # HOST order per field, which keeps both the field offsets and the field
    # values correct. Serialising the ROM's big-endian bytes instead would
    # preserve offsets and corrupt every multi-byte value.
    import struct as _s
    raw = bytearray()
    for k, v in entries:
        if k == 'space':
            raw += b'\x00' * int(v, 0)
        elif k == 'asciz':
            raw += v.strip('"').encode('latin-1', 'replace') + b'\x00'
        elif k == 'float':
            raw += _s.pack('<f', float(v))
        elif k == 'double':
            raw += _s.pack('<d', float(v))
        elif k in WIDTH:
            n = int(v, 0) & ((1 << (WIDTH[k] * 8)) - 1)
            raw += n.to_bytes(WIDTH[k], 'little')
    body = ', '.join(f'0x{b:02X}' for b in raw)
    return (f'extern {const}u8 {sym}[];\n',
            f'{const}u8 {c_ident(sym)}[] = {{ {body} }};\n')


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

    nfiles = nsyms = 0
    for path in sorted(glob.glob('asm/data/**/*.s', recursive=True)):
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
    print(f'{nsyms} data symbols -> {nfiles} C files in {outdir}')


if __name__ == '__main__':
    main()
