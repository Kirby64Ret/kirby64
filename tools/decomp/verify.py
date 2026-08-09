#!/usr/bin/env python3
"""Verify that a decompiled function matches the ground-truth asm.old listing.

Usage: verify.py <c_file> <func_name> [func_name...]
       verify.py <c_file> --all        (verify every non-pragma function that has a listing)

Works without the base ROM: target instruction words come from the
`/* OFFSET VRAM WORD */` comments in asm.old/asm/non_matchings/**.
Relocated fields (hi16/lo16/26-bit targets) are masked on both sides,
same as asm-differ does.
"""
import re, glob, os, subprocess, sys, json

REPO = '/home/user/kirby64_decomp'
SCRATCH = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, SCRATCH)      # chdir below would otherwise hide padtrap.py
os.chdir(REPO)

CFLAGS = ('-c -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed '
          '-D_LANGUAGE_C -D_FINALROM {opt} -nostdinc -Iinclude/libc -DTARGET_N64 '
          '-DF3DEX_GBI_2 -Iinclude -Ilibreultra/include/2.0I -Ibuild -Ibuild/include '
          '-Ibuild/assets -Isrc -Isrc.old -I. -mips2 -32 -woff 624,568')
ASFLAGS = '-mtune=vr4300 -march=vr4300 --no-pad-sections -mabi=32 -mips3 -Ibuild -Iinclude'
# per-file OPT_FLAGS overrides from the Makefile
OPT_OVERRIDES = {
    'src/ovl7/yakulib.c': '-O2 -Olimit 1000',
    'src/ovl1/ovl1_5.c': '-O2',
    'src/ovl3/ovl3_1.c': '-O2 -Wo,-loopunroll',
}

_sym = None
def symmap():
    global _sym
    if _sym is None:
        _sym = {}
        for line in open('tools/symbol_addrs.txt'):
            m = re.match(r'(\w+)\s*=\s*0x([0-9A-Fa-f]+)', line)
            if m:
                _sym[m.group(1)] = m.group(2).upper().lstrip('0').rjust(8, '0')
    return _sym

def find_listing(func):
    # real splat output (post-ROM-extraction) is authoritative; a function with
    # no listing was already matched before this session (full-ROM sha1 covers it)
    hits = glob.glob(f'asm/nonmatchings/**/{func}.s', recursive=True)
    return hits[0] if hits else None

def target_words(listing_path):
    # Only collect words inside the glabel...endlabel region: splat "nonmatching"
    # listings put .late_rodata words (float literals) before the .text section,
    # and those are not part of the function's instruction stream.
    words, texts = [], []
    in_text = False
    for line in open(listing_path):
        if line.startswith('glabel '):
            in_text = True
            continue
        if line.startswith('endlabel '):
            break
        if not in_text:
            continue
        m = re.match(r'\s*/\* [0-9A-Fa-f]+ ([0-9A-Fa-f]{8}) ([0-9A-Fa-f]{8}) \*/\s*(.*)', line)
        if m:
            words.append(int(m.group(2), 16))
            texts.append(m.group(3).strip())
    return words, texts

def compile_file(cfile):
    obj = os.path.join('build', cfile[:-2] + '.o')
    os.makedirs(os.path.dirname(obj), exist_ok=True)
    opt = OPT_OVERRIDES.get(cfile, '-O2')
    has_asm = 'GLOBAL_ASM' in open(cfile).read()
    if has_asm:
        # --asm-prelude must match the Makefile's. Without it, `jlabel` is not
        # .global and jump-table labels are dropped; the object still verifies
        # here but then fails to link, AND it lands in build/ looking current,
        # so a later `make` does not rebuild it.
        cmd = (f'python3 tools/asm-processor/build.py '
               f'--asm-prelude include/asmpp_prelude.inc tools/ido-7.1recomp/cc -- '
               f'mips-linux-gnu-as {ASFLAGS} -- {CFLAGS.format(opt=opt)} -o {obj} {cfile}')
    else:
        cmd = f'tools/ido-7.1recomp/cc {CFLAGS.format(opt=opt)} -o {obj} {cfile}'
    r = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    if r.returncode != 0 or not os.path.exists(obj):
        print(r.stdout[-3000:]); print(r.stderr[-3000:])
        raise SystemExit(f'COMPILE FAILED: {cfile}')
    warn = [l for l in (r.stdout + r.stderr).split('\n') if 'rror' in l]
    return obj, warn

def obj_functions(obj):
    """Return {name: [(word, text, reloc_type_or_None), ...]} for .text symbols."""
    # -z is REQUIRED: without it objdump collapses runs of zero words into
    # '...', silently dropping the nops IDO emits after infinite loops and
    # producing spurious diffs on functions that actually match.
    dis = subprocess.run(f'mips-linux-gnu-objdump -dr -z -j .text {obj}',
                         shell=True, capture_output=True, text=True).stdout
    funcs, cur, insns = {}, None, None
    lines = dis.split('\n')
    i = 0
    while i < len(lines):
        line = lines[i]
        m = re.match(r'[0-9a-f]+ <(\S+)>:', line)
        if m:
            cur = m.group(1); insns = funcs.setdefault(cur, [])
            i += 1; continue
        m = re.match(r'\s*([0-9a-f]+):\s+([0-9a-f]{8})\s+(.*)', line)
        if m and cur is not None:
            word = int(m.group(2), 16); text = m.group(3)
            reloc = None
            if i + 1 < len(lines):
                rm = re.match(r'\s*[0-9a-f]+:\s+(R_MIPS_\S+)\s+(\S+)', lines[i+1])
                if rm:
                    reloc = rm.group(1)
                    text += f' <{rm.group(2)}>'
                    i += 1
            insns.append((word, text, reloc))
        i += 1
    return funcs

def resolve_sym_expr(expr):
    """Resolve 'D_800D6B54 + 0x8' / 'func_80023464' / 'name+0x4' to an absolute
    address, or None if unknown. D_/func_ names encode their own address."""
    expr = expr.strip().replace(' ', '')
    m = re.match(r'([A-Za-z_]\w*)((?:[+-]0x[0-9A-Fa-f]+|[+-]\d+)?)$', expr)
    if not m:
        return None
    name, add = m.group(1), m.group(2)
    hm = re.match(r'(?:func|D|jtbl)_([0-9A-Fa-f]{8})(?:_\w+)?$', name)
    if hm:
        base = int(hm.group(1), 16)
    elif name in symmap():
        base = int(symmap()[name], 16)
    else:
        return None
    return base + (int(add, 0) if add else 0)

def target_reloc_addr(text):
    m = re.search(r'%(?:hi|lo)\(([^)]+)\)', text)
    if not m:
        m = re.match(r'\s*(?:jal|j)\s+(\S+)', text)
    return resolve_sym_expr(m.group(1)) if m else None

def current_reloc_addr(text):
    m = re.search(r'<([^>]+)>$', text)
    return resolve_sym_expr(m.group(1)) if m else None

def mask(word, reloc):
    if reloc in ('R_MIPS_HI16', 'R_MIPS_LO16', 'R_MIPS_GOT16'):
        return word & 0xFFFF0000
    if reloc == 'R_MIPS_26':
        return word & 0xFC000000
    return word

def verify(cfile, func, objfuncs, pragmas=frozenset()):
    if func in pragmas:
        # The function is still a #pragma GLOBAL_ASM, so its bytes come FROM the
        # listing -- comparing them to the listing is circular and always says
        # MATCH. Report it instead of giving a meaningless pass.
        return None, (f'{func}: STILL A PRAGMA -- not decompiled yet. A MATCH here '
                      f'would be circular (its bytes come from the .s file).')
    listing = find_listing(func)
    if listing is not None:
        # A listing with words after its LAST .size carries the translation
        # unit's alignment padding. C cannot emit those, so converting the
        # function silently shortens the TU and shifts everything after it --
        # while this check happily reports MATCH, because the function's own
        # instructions are all correct. Four such traps were found sitting in
        # ovl9 drafts, every one of them reporting MATCH.
        import padtrap
        _kind, _pad = padtrap.classify(listing, func)
        if _kind == 'trap':
            return None, (f'{func}: PADDING TRAP -- its listing has {_pad} '
                          f'non-zero word(s) after its own .size (the TU\'s '
                          f'alignment padding). It can NEVER be C: converting it '
                          f'shortens the TU and shifts the segment, even though the '
                          f'instructions themselves are right.')
    if listing is None:
        return None, f'{func}: no asm.old listing (unverifiable — was decompiled in src.old)'
    twords, ttexts = target_words(listing)
    if func not in objfuncs:
        return False, f'{func}: not found in compiled object'
    cur = objfuncs[func]
    # splat listings may include trailing alignment nops past the function end.
    # Trimming them is necessary, BUT a shortfall here can also mean the C
    # genuinely emits fewer instructions than the ROM -- which still assembles
    # to a "MATCH" while silently shifting everything after it in the segment.
    # Report it so it is never silent; check_layout.py is the authority.
    trimmed = 0
    while len(twords) > len(cur) and twords[-1] == 0:
        twords.pop(); ttexts.pop(); trimmed += 1
    # ...and compiled objects may pad the function tail to alignment with nops
    while len(cur) > len(twords) and cur[-1][0] == 0:
        cur = cur[:-1]
    n = max(len(twords), len(cur))
    diffs = []
    for i in range(n):
        tw = twords[i] if i < len(twords) else None
        cw, ctext, creloc = cur[i] if i < len(cur) else (None, '<missing>', None)
        ok = (tw is not None and cw is not None and
              mask(tw, creloc) == mask(cw, creloc))
        if ok and creloc in ('R_MIPS_LO16', 'R_MIPS_26'):
            # HI16 is skipped: its addend pairs with the following LO16, which
            # carries the full low half and catches any real mismatch.
            ta = target_reloc_addr(ttexts[i])
            ca = current_reloc_addr(ctext)
            if ta is not None and ca is not None:
                if creloc == 'R_MIPS_LO16':
                    imm = cw & 0xFFFF
                    ca += imm - 0x10000 if imm >= 0x8000 else imm
                if ta != ca:
                    ok = False
                    ctext += f'  [RELOC TARGET {ca:08X} != {ta:08X}]'
            elif ta is not None and re.search(r'<\.(rodata|data|bss)\b', ctext):
                # The ROM reaches a NAMED symbol; we reach our own section.
                # objdump prints `<.rodata>` here, which does not resolve, so
                # without this the check was skipped and the function passed --
                # while IDO quietly emitted a duplicate copy of the constant
                # into .rodata, growing the segment. That was the whole of the
                # residual ROM difference. Write the constant as an extern
                # reference to the real data symbol instead of a literal.
                ok = False
                ctext += '  [references own section, ROM references a symbol]'
        if not ok:
            diffs.append(f'  [{i:4}] target={tw:08X} {ttexts[i]:45.45}' if tw is not None
                         else f'  [{i:4}] target=<none>' )
            diffs[-1] += f' | current={cw:08X} {ctext}' if cw is not None else ' | current=<none>'
    if not diffs:
        if trimmed:
            return True, (f'{func}: MATCH ({len(cur)} insns) '
                          f'[WARNING: {trimmed} trailing nop(s) in the ROM listing are not '
                          f'emitted by this C -- if they are part of the function rather than '
                          f'segment alignment, it is {trimmed*4} bytes short and will shift '
                          f'later functions. Confirm with check_layout.py]')
        return True, f'{func}: MATCH ({len(cur)} insns)'
    return False, f'{func}: DIFF {len(diffs)}/{n} insns\n' + '\n'.join(diffs[:40])

def main():
    cfile = sys.argv[1]
    obj, warns = compile_file(cfile)
    objfuncs = obj_functions(obj)
    text = open(cfile).read()
    pragmas = set(re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)', text))
    if sys.argv[2] == '--all':
        targets = [f for f in objfuncs if f not in pragmas]
    else:
        targets = sys.argv[2:]
    ok = bad = unk = 0
    for f in targets:
        res, msg = verify(cfile, f, objfuncs, pragmas)
        if res is True: ok += 1
        elif res is False: bad += 1; print(msg)
        else: unk += 1
        if res is True and len(targets) <= 5: print(msg)
    print(f'== {cfile}: {ok} match, {bad} diff, {unk} unverifiable ==')
    # "0 diff" when NOTHING was checked reads as success and is not. A file
    # whose listings were deleted by the background splat run has every
    # function unverifiable, so this line stayed green while the file held an
    # unguarded non-matching function -- which silently corrupts the ROM.
    # Say so, and make the exit status non-zero so a script cannot miss it.
    if ok == 0 and bad == 0 and unk:
        print(f'!! NOTHING WAS VERIFIED in {cfile}: all {unk} function(s) are '
              f'unverifiable (no .s listing, or still a pragma).\n'
              f'!! "0 diff" here means "0 checks", not "correct". Use '
              f'tools/decomp/verify_rom.py, which compares the LINKED ROM and '
              f'cannot be blinded this way.')
        if warns: print('\n'.join(warns[:10]))
        return 2
    if warns: print('\n'.join(warns[:10]))
    return 1 if bad else 0

if __name__ == '__main__':
    raise SystemExit(main())
