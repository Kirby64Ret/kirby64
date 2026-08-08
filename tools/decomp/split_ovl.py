#!/usr/bin/env python3
"""Split a monolithic `asm, <seg>/<file>` listing into per-function listings.

splat produces one big .s per `asm` subsegment; converting the subsegment to
`c` makes it produce asm/nonmatchings/<seg>/<file>/<func>.s plus a C file of
#pragma GLOBAL_ASM stubs.  Re-running splat over the whole tree would rewrite
every segment at once, so this does the same split for one segment only.

Split points are the `nonmatching <fn>, 0x<size>` directives.  Everything from
one directive up to the next belongs to that function -- which is exactly what
puts the translation unit's TRAILING ALIGNMENT PADDING (the nops that follow
the final `.size`) into the LAST function's listing, where it has to live.

Usage: split_ovl.py <seg>            (dry run: report what would be written)
       split_ovl.py <seg> --write
"""
import os, re, sys, glob

REPO = '/home/user/kirby64_decomp'
os.chdir(REPO)

HDR = re.compile(r'^nonmatching (\w+), (0x[0-9A-Fa-f]+|\d+)\s*$', re.M)


def split_file(path):
    """[(func, text)] -- text is the exact per-function listing."""
    txt = open(path).read()
    marks = list(HDR.finditer(txt))
    out = []
    for i, m in enumerate(marks):
        end = marks[i + 1].start() if i + 1 < len(marks) else len(txt)
        body = txt[m.start():end]
        # trim only trailing blank lines; a trailing nop run is real padding
        body = body.rstrip('\n') + '\n'
        out.append((m.group(1), body))
    return out


def main():
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    seg = sys.argv[1]
    write = '--write' in sys.argv

    srcs = sorted(glob.glob(f'asm/{seg}/*.s'))
    if not srcs:
        raise SystemExit(f'no asm/{seg}/*.s to split')

    total = 0
    for src in srcs:
        name = os.path.basename(src)[:-2]
        funcs = split_file(src)
        if not funcs:
            print(f'{src}: no `nonmatching` directives, skipped')
            continue
        total += len(funcs)
        outdir = f'asm/nonmatchings/{seg}/{name}'
        cfile = f'src/{seg}/{name}.c'
        print(f'{src}: {len(funcs):4d} functions -> {outdir}/ + {cfile}')
        if not write:
            continue
        os.makedirs(outdir, exist_ok=True)
        os.makedirs(f'src/{seg}', exist_ok=True)
        for fn, body in funcs:
            with open(f'{outdir}/{fn}.s', 'w') as fh:
                fh.write(body)
        if os.path.exists(cfile):
            print(f'  !! {cfile} already exists, not overwriting')
            continue
        with open(cfile, 'w') as fh:
            fh.write('#include <ultra64.h>\n#include <macros.h>\n\n')
            for fn, _ in funcs:
                fh.write(f'#pragma GLOBAL_ASM("{outdir}/{fn}.s")\n\n')
    print(f'-- {total} functions across {len(srcs)} translation units --')
    if not write:
        print('   (dry run; pass --write to apply)')


if __name__ == '__main__':
    main()
