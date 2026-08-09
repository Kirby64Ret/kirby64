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
]


def main():
    gap, ndef = symbols()
    want = sys.argv[sys.argv.index('--list') + 1] if '--list' in sys.argv else None

    buckets, seen = [], set()
    for name, pat in CATS:
        hit = [s for s in gap if re.match(pat, s)]
        seen |= set(hit)
        buckets.append((name, hit))
    buckets.append(('libc / other', [s for s in gap if s not in seen]))

    print(f'{ndef} symbols defined, {len(gap)} still missing\n')
    for name, hit in buckets:
        print(f'  {name:26} {len(hit):5}')
        if want and want in name:
            for s in hit:
                print(f'      {s}')

    plat = sum(len(h) for n, h in buckets if n != 'un-decompiled functions'
               and n != 'unresolved data')
    print(f'\nplatform layer: {plat} symbols. Decompilation still owes '
          f'{len(buckets[0][1])} functions;\nuntil those land the binary cannot '
          f'link no matter how complete the platform layer is.')


if __name__ == '__main__':
    main()
