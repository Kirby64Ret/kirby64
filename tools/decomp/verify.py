#!/usr/bin/env python3
"""Verify that a decompiled function matches its ground-truth splat listing.

Usage: verify.py <c_file> <func_name> [func_name...]
       verify.py <c_file> --all        (verify every non-pragma function that has a listing)

Works without the base ROM: target instruction words come from the
`/* OFFSET VRAM WORD */` comments in asm/nonmatchings/**.
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
          '-Ibuild/assets -Isrc -I. -mips2 -32 -woff 624,568')
ASFLAGS = '-mtune=vr4300 -march=vr4300 --no-pad-sections -mabi=32 -mips3 -Ibuild -Iinclude'
def _makefile_overrides():
    """Per-file compiler settings, READ FROM THE MAKEFILE rather than copied.

    These were duplicated here as literals, and the duplicate went stale: the
    Makefile gives main/libn_audio*.c a -O3 compiler and this file did not, so
    verify.py scored 60 pragmas -- the whole remaining pool in main -- against
    the wrong compiler for months, and reported 7 phantom diffs on already
    matched functions.

    Parsing the Makefile means the two cannot disagree again. If a rule appears
    that this parser does not understand, it is better to fail loudly here than
    to silently verify against settings the ROM build does not use.
    """
    opt, cc = {}, {}
    mk = open('Makefile').read()
    for path, flags in re.findall(
            r'^\$\(BUILD_DIR\)/(\S+)\.o:\s*OPT_FLAGS\s*=\s*(.+)$', mk, re.M):
        opt[path + '.c'] = flags.strip()
    # The N_AUDIO rule names its files in a variable, then overrides CC to route
    # them through cc_o3.py. Match that shape specifically; anything else is
    # reported rather than guessed at.
    m = re.search(r'^N_AUDIO_O_FILES\s*:?=\s*(.+)$', mk, re.M)
    if m and 'cc_o3.py' in mk:
        for o in m.group(1).split():
            f = o.replace('$(BUILD_DIR)/', '').replace('.o', '.c')
            cc[f] = 'python3 tools/decomp/cc_o3.py'
    return opt, cc

OPT_OVERRIDES, CC_OVERRIDES = _makefile_overrides()

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

_migrated = None
def rodata_is_migrated(cfile):
    """Does this C file's segment emit its OWN .rodata?

    kirby64.yaml distinguishes two rodata models. A DOTTED entry --
    `[0x7DCC0, .rodata, ovl1/game]` -- means src/ovl1/game.c emits its own
    literals into its own .rodata section. An undotted `rodata` entry means the
    constants stay in a shared asm data blob and every function must reference
    them as extern symbols.

    The distinction decides whether "our object references its own .rodata
    where the ROM names a symbol" is a defect or the intended result, so the
    check below cannot be right without it.
    """
    global _migrated
    if _migrated is None:
        _migrated = set()
        for line in open('kirby64.yaml'):
            m = re.search(r'\[\s*0x[0-9A-Fa-f]+\s*,\s*\.rodata\s*,\s*([\w/]+)\s*\]', line)
            if m:
                _migrated.add('src/' + m.group(1) + '.c')
    cf = os.path.normpath(cfile)
    if cf in _migrated:
        return True
    # A SWEEP TEMP COPY must inherit the real file's status. Harnesses copy
    # src/ovl19/helper.c to src/ovl19/helper.jb2_helper.c (or .ab_tmp.c) and
    # verify that; keying purely off the path made the copy read as unmigrated,
    # so every own-.rodata reference came back a phantom diff --
    # func_80220138_ovl19 measured 1/65 on the copy and MATCH in place. That is
    # exactly the false residue an agent then spends a wave chasing.
    #
    # A copy is recognised as `<migrated stem>.<anything>.c` in the same
    # directory. Requiring the DOT is what keeps src/ovl1/ovl1_2.c from being
    # treated as a copy of src/ovl1/ovl1.c.
    d, base = os.path.split(cf)
    stem = base[:-2] if base.endswith('.c') else base
    for m in _migrated:
        md, mbase = os.path.split(m)
        if md == d and stem.startswith(mbase[:-2] + '.'):
            return True
    return False

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
    # Write UNDER build/verify/, never to build/<cfile>.o itself.
    #
    # Sharing make's object path poisons the next build. Running
    # `VERIFY_CC=cc_o3.py verify.py src/main/audio.c` left an -O3 audio.o where
    # make expects an -O2 one; make did not rebuild it (source older than
    # object) and the following link produced 33 phantom REAL DEFECT lines
    # across a file nobody had touched. That cost a full bad build to diagnose.
    #
    # The same hazard exists for a merely non-matching draft: the object lands
    # looking current even though it would fail to link.
    obj = os.path.join('build/verify', cfile[:-2] + '.o')
    os.makedirs(os.path.dirname(obj), exist_ok=True)
    opt = OPT_OVERRIDES.get(cfile, '-O2')
    # n_audio was built at -O3, so main/libn_audio*.c cannot match at -O2 no
    # matter how good the source is. tools/decomp/cc_o3.py drives the four IDO
    # phases directly, which the cc driver cannot (ujoin is missing).
    #
    # This used to be a comment sitting above a line that read VERIFY_CC from
    # the environment and did nothing else, so the note was true and the tool
    # ignored it: anyone running `verify.py src/main/libn_audio.c` got -O2
    # answers for an -O3 translation unit. 7 of libn_audio.c's already-matched
    # functions reported a diff on a byte-exact ROM because of it, and any
    # attempt on its 38 remaining pragmas -- the largest single pool in main --
    # was being scored against the wrong compiler. The Makefile picks the
    # compiler per file; so does this now. VERIFY_CC still overrides both.
    CC = CC_OVERRIDES.get(cfile, 'tools/ido-7.1recomp/cc')
    CC = os.environ.get('VERIFY_CC', CC)
    has_asm = 'GLOBAL_ASM' in open(cfile).read()
    if has_asm:
        # --asm-prelude must match the Makefile's. Without it, `jlabel` is not
        # .global and jump-table labels are dropped; the object still verifies
        # here but then fails to link, AND it lands in build/ looking current,
        # so a later `make` does not rebuild it.
        cmd = (f'python3 tools/asm-processor/build.py '
               f'--asm-prelude include/asmpp_prelude.inc {CC} -- '
               f'mips-linux-gnu-as {ASFLAGS} -- {CFLAGS.format(opt=opt)} -o {obj} {cfile}')
    else:
        cmd = f'{CC} {CFLAGS.format(opt=opt)} -o {obj} {cfile}'
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

SECBASE = {}

def load_secbase(cfile):
    """vram base of this TU's own .text and .rodata, from the yaml subsegments.

    A migrated-rodata TU emits ANONYMOUS references -- objdump prints
    `<.rodata>` with the offset in the instruction's immediate, because the
    relocation is against the section symbol rather than a named one. Without a
    base address those cannot be compared at all, which left this tool with
    only two bad options: count every one as a diff (making every migrated
    function look broken -- 19 spurious diffs in one already-matched file), or
    report and skip them (which is what it did, and which means a WRONG FLOAT
    LITERAL still reports MATCH, since the value lives entirely in the low half
    the LO16 comparison already declines to check).

    Resolving the section base closes both. The offset is then an absolute
    address and gets compared like any named symbol.
    """
    SECBASE.clear()
    name = cfile[len('src/'):-2]
    seg = name.split('/')[0]
    y = open('kirby64.yaml').read()
    m = re.search(r'- name: ' + re.escape(seg) + r'\n(.*?)(?=\n  - name: |\Z)',
                  y, re.S)
    if not m:
        return
    blk = m.group(1)
    ms = re.search(r'start: (0x[0-9A-Fa-f]+)', blk)
    mv = re.search(r'vram: (0x[0-9A-Fa-f]+)', blk)
    if not (ms and mv):
        return
    start, vram = int(ms.group(1), 16), int(mv.group(1), 16)
    for kind, sec in (('c', '.text'), (r'\.rodata', '.rodata')):
        mm = re.search(r'- \[(0x[0-9A-Fa-f]+), ' + kind + r', ' +
                       re.escape(name) + r'\]', blk)
        if mm:
            SECBASE[sec] = int(mm.group(1), 16) - start + vram


def resolve_sym_expr(expr):
    """Resolve 'D_800D6B54 + 0x8' / 'func_80023464' / 'name+0x4' to an absolute
    address, or None if unknown. D_/func_ names encode their own address."""
    expr = expr.strip().replace(' ', '')
    if expr in SECBASE:
        return SECBASE[expr]
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
    load_secbase(cfile)
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
                          f'word(s) after its own .size. Those are the LINKER\'s '
                          f'32-byte alignment fill before the next object, not the '
                          f'function\'s bytes, so converting it leaves the TU '
                          f'16*k bytes short under kirby.ld\'s SUBALIGN(16). This '
                          f'is FIXABLE: see "PADDING TRAPS" in LEVERS.md -- add '
                          f'a `pad` subsegment to '
                          f'kirby64.yaml plus the matching `. += 0x10;` in '
                          f'kirby.ld, in the SAME edit as the conversion.')
    if listing is None:
        return None, f'{func}: no listing (unverifiable — matched before per-function listings existed; full-ROM sha1 covers it)'
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
    rodata_notes = []
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
                    # A LO16 relocation only determines the LOW 16 BITS of the
                    # word. If those agree, the linked instruction is
                    # byte-identical no matter what the high half does -- and
                    # the high half is carried by the paired HI16, which this
                    # loop deliberately does not check.
                    #
                    # Comparing full addresses here was therefore stricter than
                    # the instruction encodes, and it reported 12 phantom diffs
                    # on a byte-exact ROM: the same `%lo(D_803FC100)` against
                    # our `D_803D6900 + 0x5800` in 12 files across ovl2, ovl4
                    # and ovl5, all on functions verify_rom.py calls byte-exact.
                    # The two addresses differ by 0x20000, which has nothing in
                    # its low half, so both encode 0xC100.
                    #
                    # Reported rather than silently dropped, because a
                    # coinciding low half CAN hide a genuinely wrong symbol.
                    # verify_rom.py compares the LINKED ROM and is the arbiter
                    # for that; this tool cannot be, since it never links.
                    if creloc == 'R_MIPS_LO16' and (ta & 0xFFFF) == (ca & 0xFFFF):
                        rodata_notes.append(
                            f'  [{i:4}] {ctext}  [LO16 {ca:08X} vs {ta:08X}: '
                            f'same low half, same linked word; high half is the '
                            f'HI16\'s and is not checked here]')
                    else:
                        ok = False
                        ctext += f'  [RELOC TARGET {ca:08X} != {ta:08X}]'
            elif ta is not None and re.search(r'<\.(rodata|data|bss)\b', ctext):
                # The ROM reaches a NAMED symbol; we reach our own section.
                # objdump prints `<.rodata>` here, which does not resolve, so
                # the comparison cannot be made from the immediate alone.
                #
                # WHETHER THIS IS A DEFECT DEPENDS ON THE SEGMENT'S RODATA
                # MODEL, which is why this used to be wrong in both directions.
                #
                # UNMIGRATED segment: the constants live in a shared asm data
                # blob, so emitting a literal makes IDO quietly write a
                # DUPLICATE copy into .rodata and grow the segment. Before this
                # check existed the function passed and that duplication was
                # the whole of the residual ROM difference. Fix the source:
                # reference the real data symbol as an extern instead.
                #
                # MIGRATED segment (a dotted `.rodata, seg/file` entry): the
                # file owning its literals is the POINT of the migration, and
                # the linked words are identical. Counting it as a diff makes
                # every such function look broken -- 9 of them across ovl16 and
                # ovl17 the day that migration landed -- and sends agents
                # chasing a residue that is not there. Report it, do not count
                # it; check_sections.py catches a genuine duplicate as an
                # oversize, and verify_rom.py remains the arbiter.
                note = '  [references own section, ROM references a symbol]'
                if rodata_is_migrated(cfile):
                    rodata_notes.append(f'  [{i:4}] {ctext}{note} -- OK, '
                                        f'{cfile} owns its .rodata')
                else:
                    ok = False
                    ctext += note
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
        if rodata_notes:
            return True, (f'{func}: MATCH ({len(cur)} insns) '
                          f'[{len(rodata_notes)} uncounted relocation note(s)]\n'
                          + '\n'.join(rodata_notes[:10]))
        return True, f'{func}: MATCH ({len(cur)} insns)'
    return False, f'{func}: DIFF {len(diffs)}/{n} insns\n' + '\n'.join(diffs[:int(__import__("os").environ.get("VERIFY_MAXDIFF","40"))])

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
