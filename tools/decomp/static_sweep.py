#!/usr/bin/env python3
"""Find functions that should be `static` and are not.

READ THIS FIRST -- THE LEVER IS NARROWER THAN THIS TOOL WAS WRITTEN FOR.

The interprocedural convention that makes sealing pay comes from `ujoin`, which
runs only at -O3, and Makefile:285 gives -O3 to exactly THIRTEEN objects: the
`N_AUDIO_O_FILES` list, all of them src/main/libn_audio*. Everything else in
the tree is -O2 and gets nothing from the keyword. A lane measured three seals
in ovl5 and all three were byte-inert, which is the expected result and not a
surprise -- my worked example below is libn_audio.c, i.e. one of the thirteen.

So: outside src/main/libn_audio*, treat every row here as a TYPE-CORRECTNESS
observation (this function has no business being visible outside its TU) and
not as a matching lever. `--o3` restricts the listing to the thirteen.

AND ONE HAZARD THAT CAN BREAK THE ROM. Sealing a helper whose only caller is
still a `#pragma GLOBAL_ASM` can DELETE IT: the C compiler never sees the
pragma's reference -- asm-processor injects that afterwards -- so IDO sees an
unreferenced static and replaces its body with `jr $ra; nop`. A lane did this
to two helpers in ovl5_5.c and the object came out 512 bytes short. An earlier
version of this docstring said the opposite, on the strength of readelf showing
the local symbol binding correctly in libn_audio.o; binding is not the
question, dead-stripping is. **Seal a function only when a COMPILED C caller
remains in the same TU.**


IDO's interprocedural passes assign a custom calling convention to a function
it can see the whole of -- arguments and live values stay in $t registers
across the call instead of being homed by the o32 sequence. It only does that
for a function it knows nothing outside the translation unit can call, which in
C means `static`. A file-local helper spelled without it gets the o32 entry
sequence, and every caller pays for the homing too.

The payoff is not marginal. Sealing __getTrackByte and __readVarLen `static` in
libn_audio.c took alCSeqNextEvent -- which calls them ten times -- from 209
words differing to 98, and closed both helpers outright. That is the whole
mechanism: not a register floor, not a scheduling artifact, a missing keyword.

A function is a candidate when nothing outside its own translation unit can
reach it:

  - no other .c file names it,
  - no header names it (a prototype in a header is a promise of external
    linkage, and LEVER 49 forbids contradicting a declaration),
  - no `#pragma GLOBAL_ASM` listing assembled into a DIFFERENT object names it.

That last clause is the one that needs care. A listing assembled into the SAME
object binds to a local FUNC symbol without complaint -- proven by readelf on
libn_audio.o -- but binding is not the whole question: see the dead-stripping
hazard at the top. A listing in another overlay's directory blocks the change
outright.

Two things this cannot check, so check them by hand before committing:

  - a function stored into a table that another TU dispatches through. The
    table entry is a data reference, and this sweep reads .c text, so an entry
    in a `.s` data listing under data/ will not be seen. Grep data/ for the
    name.
  - verify.py's report gets confused by a local symbol: it resolves relocs
    through the global map, finds nothing, and prints
    `RELOC TARGET <tubase> != <addr>`. That is a tooling artifact on the TU
    base, not a defect. Read the object with readelf, and gate on the ROM.

WHAT THE RANKINGS MEAN, because the raw count is misleading.

Without a filter 4873 definitions in this tree are unreachable from outside
their own TU, which is a fact about a per-overlay decomp and not a work list.
The default output narrows that to the 870 that are CALLED FROM A STILL-GUARDED
DRAFT in their own file, because a seal can only be measured through a caller
whose score can still move.

`--near` narrows it again, to the pairs where that caller is within 30% of
byte-exact. That is the ranking that predicts anything. The negative that
proves the point: func_8009C154 in ovl1.c has 30 calls from func_8009C4E0, the
highest count in the tree, and sealing it moved 2221/2261 to 2223/2261 -- that
caller is 98% wrong, so nothing about it could have moved either way. Call
count without caller proximity is noise.

Usage:
    static_sweep.py              every candidate called from a guarded draft
    static_sweep.py --near       only those whose caller is a near miss
    static_sweep.py --o3         only the thirteen -O3 objects, where it pays
    static_sweep.py <file.c>     restrict to one file
"""
import glob
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))
os.chdir(ROOT)

# A function DEFINITION at column 0: `type name(args) {` possibly with the
# brace on the next line. Deliberately conservative -- a missed candidate costs
# nothing, a false one costs a build.
DEF = re.compile(
    r'^(?!static\b)(?!extern\b)'
    r'((?:const\s+|unsigned\s+|signed\s+|struct\s+|union\s+|enum\s+)*'
    r'[A-Za-z_]\w*\s*\**\s*)'
    r'([A-Za-z_]\w*)\s*\(([^;{]*)\)\s*\{',
    re.M)
PRAGMA = re.compile(r'#pragma GLOBAL_ASM\("([^"]+)"\)')


def tu_of_listing(listing):
    """asm/nonmatchings/<seg>/<tu>/<func>.s -> '<seg>/<tu>'."""
    parts = listing.split('/')
    return '/'.join(parts[2:4]) if len(parts) >= 5 else None


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    only = args[0] if args else None
    # The thirteen -O3 objects (Makefile:285) are the only TUs where sealing
    # can move a byte. --o3 restricts the listing to them.
    o3_only = '--o3' in sys.argv
    O3 = ('libn_audio',)

    cfiles = [c for c in sorted(glob.glob('src/**/*.c', recursive=True))
              if not c.startswith('src/pc/')]
    hfiles = sorted(glob.glob('include/**/*.h', recursive=True)) + \
        sorted(glob.glob('src/**/*.h', recursive=True))

    text = {c: open(c, errors='replace').read() for c in cfiles}
    htext = '\n'.join(open(h, errors='replace').read() for h in hfiles)

    # Tokenise ONCE. Asking "does any other .c name this?" with a regex per
    # (function, file) pair is 6711 x 170 searches and takes longer than the
    # ROM build; an identifier index answers the same question in one pass.
    from collections import Counter
    WORD = re.compile(r'[A-Za-z_]\w*')
    htokens = set(WORD.findall(htext))
    ccount = Counter()
    for t in text.values():
        ccount.update(set(WORD.findall(t)))

    # Which TU does each .c own? A pragma's listing directory names it, and a
    # file with no pragma left owns whatever its siblings say -- fall back on
    # the file's own basename, which is how splat names the directory.
    own_tu = {}
    for c, t in text.items():
        tus = {tu_of_listing(m) for m in PRAGMA.findall(t)}
        tus.discard(None)
        own_tu[c] = tus or {os.path.join(os.path.basename(os.path.dirname(c)),
                                         os.path.basename(c)[:-2])}

    # Every function named by a listing, grouped by the TU it assembles into.
    listing_refs = {}
    for listing in glob.glob('asm/nonmatchings/**/*.s', recursive=True):
        tu = tu_of_listing(listing)
        if tu is None:
            continue
        try:
            body = open(listing, errors='replace').read()
        except OSError:
            continue
        # Every identifier the listing mentions, not just the ones after a
        # jal. A `.*?` between the mnemonic and the name backtracks
        # quadratically on these files -- it took longer than the ROM build --
        # and the narrow version would have missed `%hi(name)` / `%lo(name)`
        # operands anyway, which is exactly how a function's ADDRESS is taken.
        for name in set(WORD.findall(body)):
            listing_refs.setdefault(name, set()).add(tu)

    # Where sealing can actually be MEASURED: a candidate whose callers in the
    # same file are still guarded drafts. Sealing a helper only pays where a
    # caller's score can move -- that is the whole reason the libn_audio seal
    # showed up (alCSeqNextEvent went 209 -> 98 because it calls the two
    # sealed helpers ten times). A candidate every one of whose callers is
    # already byte-exact changes nothing measurable and is a pure risk.
    sys.path.insert(0, HERE)
    from measure_seeds import guard_blocks
    guarded_span = {}
    for c in cfiles:
        spans = []
        lines = text[c].split('\n')
        try:
            for st, en, pi, listing in guard_blocks(lines):
                spans.append('\n'.join(lines[st:en]))
        except Exception:
            pass
        guarded_span[c] = '\n'.join(spans)

    rows = []
    seen = set()
    for c in cfiles:
        if only and c != only:
            continue
        if o3_only and not (c.startswith('src/main/libn_audio')
                            and c.endswith('.c')):
            continue
        t = text[c]
        for m in DEF.finditer(t):
            name = m.group(2)
            if name in ('if', 'for', 'while', 'switch', 'return', 'else',
                        'do', 'sizeof'):
                continue
            # Named anywhere else in C?  ccount[name] counts the FILES that
            # name it, and this file is one of them by definition.
            if ccount[name] > 1 or name in htokens:
                continue
            # Named by a listing that assembles into a DIFFERENT object?
            refs = listing_refs.get(name, set())
            if refs - own_tu[c]:
                continue
            if (c, name) in seen:
                continue
            seen.add((c, name))
            calls = len(re.findall(r'\b' + re.escape(name) + r'\b', t)) - 1
            in_guarded = len(re.findall(r'\b' + re.escape(name) + r'\b',
                                        guarded_span[c]))
            if not in_guarded:
                continue
            rows.append((in_guarded, calls, c, name, m.group(1).strip()))

    # --near: the only ranking that predicts a MEASURABLE change. Join each
    # candidate to the guarded callers in its own file and keep the ones whose
    # caller is already close, because a seal can only show up in a score that
    # has room to move. Sealing func_8009C154 in ovl1.c is the negative that
    # makes the point: 30 calls from func_8009C4E0, the highest count in the
    # tree, and the score went 2221/2261 to 2223/2261 -- that caller is 98%
    # wrong, so nothing about it could have moved either way.
    if '--near' in sys.argv:
        FAC = re.compile(r'FACTORY:\s*(?:DIFF\s*)?(\d+)\s*/\s*(\d+)')
        by_file = {}
        for gcalls, calls, c, name, rtype in rows:
            by_file.setdefault(c, []).append(name)
        near = []
        for c, names in by_file.items():
            lines = text[c].split('\n')
            try:
                blocks = list(guard_blocks(lines))
            except Exception:
                continue
            for st, en, pi, listing in blocks:
                # The note may sit ABOVE the guard or INSIDE it. Looking only
                # above picks up the PREVIOUS function's number in files whose
                # notes live inside the guard -- a lane caught this reporting
                # "func_8017232C_ovl5 2/88" for a function that is really
                # 328/508. Prefer a note inside the draft; fall back to the
                # nearest one above, and only within 45 lines.
                ms = FAC.findall('\n'.join(lines[st:en]))
                if not ms:
                    ms = FAC.findall('\n'.join(lines[max(0, st - 45):st]))
                if not ms:
                    continue
                d, tot = int(ms[-1][0]), int(ms[-1][1])
                # d == 0 is a draft that already matches: no room to show a
                # seal either. And a helper whose only "caller" is itself is
                # just its own definition line inside its own draft.
                if not tot or not d or d / tot > 0.30:
                    continue
                body = '\n'.join(lines[st:en])
                caller = os.path.basename(listing)[:-2]
                for name in names:
                    if name == caller:
                        continue
                    n = len(re.findall(r'\b' + re.escape(name) + r'\b', body))
                    if n >= 2:
                        near.append((d / tot, d, tot, n, name, caller, c))
        near.sort()
        print(f'{len(near)} (helper, near-miss caller) pair(s): the helper is '
              f'sealable and the caller has room to show it')
        print('A row NOT marked [O3] is a type-correctness observation only -- '
              'sealing cannot move a byte at -O2. See the docstring.')
        print('caller residue  calls  helper -> caller (file)')
        for _, d, tot, n, name, caller, c in near:
            tag = '[O3] ' if c.startswith('src/main/libn_audio') else '     '
            print(f'{tag}{d:6d}/{tot:<7d} {n:5d}  {name:24s} -> {caller:26s} {c}')
        return 0

    rows.sort(key=lambda r: (-r[0], -r[1], r[2]))
    print(f'{len(rows)} function(s) that nothing outside their own TU can '
          f'reach, are not `static`, and are CALLED FROM A STILL-GUARDED '
          f'DRAFT in their own file')
    print('Check data/ for a table entry by hand before sealing any of them; '
          'see the module docstring.')
    print(' guarded  calls  file                                function')
    for gcalls, calls, c, name, rtype in rows:
        print(f'{gcalls:8d} {calls:6d}  {c:35s} {rtype} {name}')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
