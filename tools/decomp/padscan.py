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
(- [0x22BEE0, pad]). Rows whose yaml already carries the pad will report a
further one -- that is the scan seeing the pad as the subsegment end, not a
second pad to add.

A row here is a COSTING, not a green light: the draft still has to be
byte-exact, and the pad should be gated with the draft still guarded first.

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
for name, start, end in rows:
    cfile = 'src/%s.c' % name
    if not os.path.exists(cfile):
        continue
    ldir = 'asm/nonmatchings/%s' % name
    if not os.path.isdir(ldir):
        continue
    # find the listing whose tail is a trap
    trap = None
    for s in glob.glob(ldir + '/*.s'):
        fn = os.path.basename(s)[:-2]
        try:
            kind, n = padtrap.classify(s, fn)
        except Exception:
            continue
        if kind == 'trap':
            trap = (fn, n, s)
    if not trap:
        continue
    fn, n, s = trap
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
