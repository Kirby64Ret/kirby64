#!/usr/bin/env python3
"""For every class-(a) padding trap, compute the `pad` subsegment it needs.

The pad does NOT go at the trapped function's `.size`. `as` rounds a section's
SIZE up to 16 and pads with zeros, and `nop` encodes as zero -- so the object
already supplies the first part of the tail by itself, and a pad written at the
`.size` asks for the whole tail on top of that. The double count is what broke
every previous attempt at this (see LEVERS.md, "PADDING TRAPS").

    content   = (subseg_end - subseg_start) - 4 * (trailing nops in the .s)
    pad_start = subseg_start + align16(content)
    pad_bytes = subseg_end - pad_start          # 0 => no pad needed

Round to 16, not to the section's `Algn` field: ovl17_2.o reports `Algn 2**5`
and rounding to 32 predicts no pad, which was built and is wrong. `Algn` is a
placement requirement and kirby.ld's SUBALIGN(16) overrides it.

Closed on this: func_801FB9DC_ovl9 (- [0x1A9AE0, pad]) and func_801E0B38_ovl17
(- [0x22BEE0, pad]). Subsegments whose yaml already carries a pad are now
SKIPPED -- before that they came back with a further suggestion one 16-byte
step LOWER than the pad already in the file, and applying either would have
broken a green ROM.

TWO CORRECTNESS FIXES, both from a lane's report on 2026-08-25:

  - the trapped listing chosen is the HIGHEST-ADDRESSED one, not whichever
    `.s` glob returned last. Filesystem order has nothing to do with layout,
    and the pad belongs to the last function in the subsegment because that is
    the only one whose tail fill lies between two objects. When a TU has more
    than one trapped listing the scan now says so on a `#` line and names the
    ones it did not pick.
  - subsegments already followed by a `pad` line are skipped, as above.

A row here is a COSTING, not a green light: the draft still has to be
byte-exact, and the pad should be gated with the draft still guarded first.
STILL UNRESOLVED, so treat it as suspect: a lane reports the ovl12/code_1EB520
row as bogus, on the grounds that the existing `- [0x1EB520, pad]` (which sits
BEFORE that subsegment, so the skip above does not catch it) already covers a
stray `nop`, and that the object's .text is already exactly the subsegment
size. I could not confirm that from the numbers alone -- `.text` equals the
subsegment size for ovl3/ovl3_4 too, and that row is believed genuine, because
the size is measured with the draft still GUARDED and the pragma includes the
fill. Gate that one especially carefully.

Usage: padscan.py     (from the repo root)
"""
import os, re, sys, glob, subprocess
sys.path.insert(0, 'tools/decomp')
import padtrap, yaml

d = yaml.safe_load(open('kirby64.yaml'))
# collect ordered subsegment list per segment
rows = []
for seg in d['segments']:
    if not isinstance(seg, dict) or 'subsegments' not in seg:
        continue
    subs = seg['subsegments']
    ends = {}
    for i, ss in enumerate(subs):
        if isinstance(ss, list) and len(ss) >= 3 and ss[1] == 'c':
            start = ss[0]
            nxt = None
            for ss2 in subs[i+1:]:
                if isinstance(ss2, list) and isinstance(ss2[0], int):
                    nxt = ss2[0]; break
                if isinstance(ss2, dict):
                    break
            if nxt:
                rows.append((ss[2], start, nxt))
print("%-28s %-10s %-10s %-8s %-6s %s" % ("TU","start","end","cur.text","tail","suggested pad"))
# Subsegments that ALREADY have a `pad` line after them in kirby64.yaml.
# Without this the scan re-suggests a pad for every trap that has already been
# fixed, one 16-byte step LOWER than the one in the file -- which is what it
# did for ovl9/ovl9_8 and ovl17/ovl17_2 after those two were closed, and
# applying either would have broken a green ROM.
_padded = set()
try:
    _yaml = open('kirby64.yaml', errors='replace').read().split('\n')
    for _i, _l in enumerate(_yaml):
        _m = re.match(r'\s*- \[0x[0-9A-Fa-f]+, c, (\S+)\]', _l)
        if _m and _i + 1 < len(_yaml) and re.match(r'\s*- \[0x[0-9A-Fa-f]+, pad\]',
                                                  _yaml[_i + 1]):
            _padded.add(_m.group(1))
except OSError:
    pass

for name, start, end in rows:
    if name in _padded:
        continue
    cfile = 'src/%s.c' % name
    if not os.path.exists(cfile):
        continue
    ldir = 'asm/nonmatchings/%s' % name
    if not os.path.isdir(ldir):
        continue
    # Find the trapped listing with the HIGHEST ADDRESS -- not the last one
    # glob happens to return.
    #
    # A lane caught this on 2026-08-25: a TU with more than one trapped
    # listing had its pad computed against whichever `.s` glob yielded last,
    # which is filesystem order and has nothing to do with layout. The pad
    # belongs to the LAST FUNCTION IN THE SUBSEGMENT, because that is the only
    # one whose tail fill sits between two objects. The bogus row it produced
    # -- ovl12/code_1EB520, naming a stray `nop` at the subsegment's START
    # that an existing pad already covers -- would have shifted a TU whose
    # .text is already exactly right.
    traps = []
    for s in glob.glob(ldir + '/*.s'):
        fn = os.path.basename(s)[:-2]
        try:
            kind, n = padtrap.classify(s, fn)
        except Exception:
            continue
        if kind != 'trap':
            continue
        # The listing's own address, read from its first instruction comment
        # (`/* ROMOFF VRAM WORD */  insn`), so "highest" means highest in the
        # ROM rather than highest in the alphabet.
        addr = -1
        try:
            for line in open(s, errors='replace'):
                m = re.search(r'/\*\s*[0-9A-Fa-f]+\s+([0-9A-Fa-f]{8})\s', line)
                if m:
                    addr = int(m.group(1), 16)
                    break
        except OSError:
            pass
        traps.append((addr, fn, n, s))
    if not traps:
        continue
    traps.sort()
    _, fn, n, s = traps[-1]
    if len(traps) > 1:
        others = ', '.join(t[1] for t in traps[:-1])
        print("# %s: %d trapped listings, using the highest-addressed (%s); "
              "others: %s" % (name, len(traps), fn, others))
    obj = 'build/%s.o' % cfile[:-2]
    cur = None
    if os.path.exists(obj):
        out = subprocess.run(['objdump','-h',obj], capture_output=True, text=True).stdout
        m = re.search(r'\.text\s+([0-9a-f]{8})', out)
        if m: cur = int(m.group(1), 16)
    unguarded = (end - start) - n*4
    padded = (unguarded + 15) // 16 * 16
    padaddr = start + padded
    need = end - padaddr
    print("%-28s %-10s %-10s %-8s %-6s %s" % (
        name, hex(start), hex(end), hex(cur) if cur else '?', n,
        ("- [%s, pad]  (%d bytes)  %s" % (hex(padaddr), need, fn)) if need > 0
        else ("NO PAD NEEDED (%s)" % fn)))
