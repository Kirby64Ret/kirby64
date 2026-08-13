#!/usr/bin/env python3
"""Compare every migrated TU's .rodata BYTES against the base ROM.

THE HOLE THIS CLOSES

verify.py compares instructions. A float literal is not an instruction -- the
`lwc1` that loads it is byte-identical whatever the constant's value is, because
the value lives in .rodata and only its ADDRESS appears in the encoding. So a
wrong literal in a migrated translation unit passes verify.py silently.

Demonstrated rather than assumed: mutating 0.4f to 1234.5f in an already-matched
migrated file still reported "48 match, 0 diff". Resolving the anonymous
`<.rodata>` section reference does not help either -- the address is the same,
it is the bytes behind it that changed.

check_rodata.py does not catch it either: it compares rodata SIZES against a
baseline, which finds a DUPLICATED constant (the segment grows) and cannot find
a WRONG one (the segment does not).

The linked ROM's sha1 catches it, but only once the whole tree links, which
during a multi-lane session is rarely true and never quickly.

WHAT IT DOES

For each dotted `.rodata, seg/file` subsegment in kirby64.yaml -- the migrated
model, where the C file owns its constants -- it takes the object's .rodata
section and compares it to the same bytes in baserom.us.z64.

RELOCATED WORDS ARE MASKED, and that is not a weakening. A jump table entry in
an unlinked object holds an addend, not the final address; the linker supplies
the rest. Comparing those to the ROM's linked values would report every jump
table as broken. Their correctness is a .text question -- does the instruction
reference the right table -- and verify.py already answers it.

Needs no link, so it works while another lane has the tree unbuildable, which
is when it is most useful.

Usage:
    check_rodata_bytes.py                  every migrated TU
    check_rodata_bytes.py src/ovl7         only that path prefix
"""
import glob, os, re, subprocess, sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)

OBJDUMP = 'mips-linux-gnu-objdump'
OBJCOPY = 'mips-linux-gnu-objcopy'
BASEROM = 'baserom.us.z64'


def migrated_subsegments():
    """[(cfile, rom_offset, next_rom_offset)] for every dotted .rodata entry.

    The size comes from the NEXT subsegment's start rather than from the
    object, because the object is what is being checked -- deriving the extent
    from the thing under test would make the check vacuous when the object is
    the wrong size.
    """
    lines = open('kirby64.yaml').read().split('\n')
    starts = []
    for ln in lines:
        # EVERY subsegment line, not just the three-element ones. A block's
        # extent is "up to the next thing in the file", and two-element entries
        # -- `[0x49B0, pad]`, `[0xADDR, bin]` -- are things. Matching only the
        # named form makes a block appear to run through its neighbours:
        # check_sections.py had exactly this bug and measured
        # main/libn_audio_2's rodata as 0x550 when it is 0x240, then reported
        # the 784-byte difference as a defect.
        m = re.match(r'\s*-\s*\[\s*(0x[0-9A-Fa-f]+)\s*,([^\]]*)\]', ln)
        if m:
            f = [x.strip() for x in m.group(2).split(',')]
            starts.append((int(m.group(1), 16), f[0] if f else '',
                           f[1] if len(f) > 1 else ''))
    out = []
    for i, (off, kind, name) in enumerate(starts):
        if kind != '.rodata':
            continue
        nxt = starts[i + 1][0] if i + 1 < len(starts) else None
        out.append((f'src/{name}.c', off, nxt))
    return out


def section_bytes(obj, sec):
    r = subprocess.run([OBJCOPY, '-O', 'binary', f'--only-section={sec}',
                        obj, '/dev/stdout'], capture_output=True)
    return r.stdout if r.returncode == 0 else b''


def reloc_offsets(obj, sec):
    """Byte offsets within `sec` that carry a relocation."""
    r = subprocess.run([OBJDUMP, '-r', obj], capture_output=True, text=True)
    offs, cur = set(), None
    for ln in r.stdout.split('\n'):
        m = re.match(r'RELOCATION RECORDS FOR \[([^\]]+)\]', ln)
        if m:
            cur = m.group(1)
            continue
        if cur == sec:
            m = re.match(r'([0-9a-f]{8})\s+R_MIPS', ln)
            if m:
                offs.add(int(m.group(1), 16))
    return offs


def main():
    prefix = sys.argv[1] if len(sys.argv) > 1 else 'src/'
    base = open(BASEROM, 'rb').read()
    problems = checked = 0

    for cfile, off, nxt in migrated_subsegments():
        if not cfile.startswith(prefix):
            continue
        obj = 'build/' + cfile[:-2] + '.o'
        if not os.path.exists(obj):
            continue
        got = section_bytes(obj, '.rodata')
        if not got:
            continue
        checked += 1

        span = (nxt - off) if nxt else len(got)
        if len(got) != span:
            print(f'SIZE  {cfile}: .rodata {len(got):#x}, yaml span {span:#x} '
                  f'({len(got) - span:+d})')
            problems += 1
            # Still compare the overlap: a size error and a value error are
            # different faults and the second is easy to miss behind the first.

        skip = reloc_offsets(obj, '.rodata')
        n = min(len(got), span)
        bad = []
        for i in range(0, n - 3, 4):
            if i in skip:
                continue
            if got[i:i + 4] != base[off + i:off + i + 4]:
                bad.append((i, base[off + i:off + i + 4].hex(), got[i:i + 4].hex()))
        if bad:
            problems += 1
            print(f'BYTES {cfile}: {len(bad)} word(s) differ from the ROM')
            for i, want, have in bad[:6]:
                print(f'        +{i:#06x}  rom {want}  ours {have}')
            if len(bad) > 6:
                print(f'        ... and {len(bad) - 6} more')

    print(f'-- {checked} migrated .rodata block(s) checked, {problems} problem(s) --')
    return 1 if problems else 0


if __name__ == '__main__':
    sys.exit(main())
