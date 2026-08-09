#!/usr/bin/env python3
"""Flag listings whose entry live-in registers cannot be produced by o32.

Usage:  ipascan.py asm/nonmatchings/main/libn_audio/*.s
        ipascan.py $(python3 -c "import re;print(' '.join(re.findall(
            r'GLOBAL_ASM\\(\"([^\"]+)\"\\)', open('src/main/libn_audio.c').read())))")

The n_audio TUs were built at -O3 WITH ujoin, which gives static callees custom
calling conventions.  A function that reads a saved or temp register before
writing it -- or takes $f12/$f14 alongside $a0/$a1 -- cannot be spelled in C at
any optimisation level, and neither can any CALLER that has to set those
registers up.  Screening with this first is much cheaper than decompiling and
then discovering the frame is 16 bytes off.

Original docstring:
Flag listings whose entry live-in registers cannot be produced by the o32
calling convention -- the signature of a ujoin/IPA custom convention, which is
unreachable from C at any optimisation level.

Legal live-ins: $a0-$a3, $f12/$f14 (only when $a0/$a1 are NOT also live-in),
$sp, $ra, $gp, $zero.  Anything else (a saved or temp register read before it is
written, or $f12 alongside $a0) means the caller passed a value in a register
o32 has no way to place there."""
import re, sys, glob, os
os.chdir('/home/user/kirby64_decomp')

DEF = re.compile(r'^\s*/\*[^*]*\*/\s+(\S+)\s+(.*)$')
# instructions whose FIRST operand is a destination
NODEST = {'sw','sh','sb','swc1','sdc1','swl','swr','beq','bne','beqz','bnez','blez',
          'bgtz','bltz','bgez','beql','bnel','beqzl','bnezl','blezl','bgtzl','bltzl',
          'bgezl','j','jal','jr','b','nop','break','mult','multu','div','divu',
          'c.lt.s','c.le.s','c.eq.s','c.lt.d','c.le.d','c.eq.d','bc1t','bc1f',
          'bc1tl','bc1fl','mtc1','ctc1','teq','sdl','sdr','sd','cache'}

def scan(path):
    txt = open(path).read()
    i = txt.find('glabel ')
    body = txt[i:]
    j = body.find('endlabel ')
    if j >= 0:
        body = body[:j]
    written, livein = set(), []
    CALLCLOB = ['v0','v1','a0','a1','a2','a3','t0','t1','t2','t3','t4','t5','t6',
                't7','t8','t9','lo','hi'] + [f'f{i}' for i in range(0, 20)]
    for line in body.split('\n'):
        m = DEF.match(line)
        if not m:
            continue
        op, rest = m.group(1), m.group(2)
        if op in ('jal','jalr'):
            written.update(CALLCLOB)
            continue
        regs = re.findall(r'\$(\w+)', rest)
        if not regs:
            continue
        # a callee-save store in the prologue is a SAVE, not a use
        if op in ('sw','sdc1','swc1') and re.search(r'\(\$sp\)', rest) and \
           re.match(r'^\$(s[0-7]|fp|ra|f2[0-9]|f3[01])$', rest.split(',')[0].strip()):
            written.add(regs[0])
            continue
        if op == 'mtc1':
            src, dst = regs[0], regs[1] if len(regs) > 1 else None
            uses, defs = [src], [dst] if dst else []
        elif op in NODEST:
            uses, defs = regs, []
        else:
            uses, defs = regs[1:], regs[:1]
        for r in uses:
            if r not in written and r not in ('zero', 'sp', 'ra', 'gp', 'at', 'fp', '31'):
                if r not in [x for x, _ in livein]:
                    livein.append((r, op))
        for r in defs:
            written.add(r)
    return livein

ARGS = {'a0','a1','a2','a3','f12','f13','f14','f15'}
for f in sorted(sys.argv[1:]):
    li = scan(f)
    regs = [r for r, _ in li]
    bad = [r for r in regs if r not in ARGS]
    mixed = ('f12' in regs or 'f14' in regs) and ('a0' in regs or 'a1' in regs)
    tag = 'IPA' if (bad or mixed) else 'ok '
    print(f'{tag} {os.path.basename(f)[:-2]:22s} live-in: {" ".join(regs)}')
