#!/usr/bin/env python3
"""Measure the TRUE residue of every guarded decomp draft. Trust nothing else.

WHY THIS EXISTS

The `/* FACTORY: N/M */` notes are written by hand and the tree mixes two
opposite conventions: some lanes wrote N = words MATCHED, others wrote
N = words DIFFERING. A note reading `1/312` therefore means either "one word
away from byte-exact" or "one word correct out of 312" -- the best and the
worst case in the pool, spelled identically.

That is not a cosmetic problem. It decides which functions lanes work on. Six
notes claiming N in {0,1,2} were re-measured and every one was the opposite:

    func_80155088_ovl3   note 0/230   ->  230 words differ
    func_80161058_ovl3   note 0/288   ->  288 words differ
    func_80152348_ovl3   note 1/312   ->  311 words differ

So a lane dispatched at "the 52 near-matches" spends its budget on the
farthest functions in the tree.

HOW IT MEASURES

Ground truth is verify.py, which compiles the file exactly as the ROM build
does and word-compares against the listing. A guarded draft is invisible to
it, so for each draft this makes a SCRATCH COPY of the translation unit with
that ONE draft un-guarded in place of its pragma, and scores the copy. One at
a time, because two open drafts in a file collide on declarations.

Nothing under src/ is ever modified.

Usage:
    measure_seeds.py                    every file with FACTORY drafts
    measure_seeds.py src/ovl3/kirby.c   just these
    measure_seeds.py --json out.json    also write machine-readable results
"""
import json
import glob
import os
import re
import shutil
import subprocess
import sys
import tempfile

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(REPO)
VERIFY = 'tools/decomp/verify.py'

# THREE CONVENTIONS ARE IN USE IN THE TREE AND THEY MEAN OPPOSITE THINGS.
#
#   `FACTORY: 3/61, ...`                        3 words WRONG out of 61
#   `FACTORY: 201/224 instructions match (23 diffs)`   201 words RIGHT
#   `FACTORY: 43/317 positional; ...`                   43 words RIGHT
#
# Reading every note the first way flags all of the other two kinds as
# disagreeing when they are exactly correct -- and the --fix pass then
# rewrote them into nonsense ("23/224 instructions match (23 diffs)").
# `MATCHFORM` recognises them so the number can be flipped rather than
# mis-read. Nothing normalises the notes to one convention: both alternatives
# are perfectly readable, and rewriting a lane's prose to satisfy a regex is
# the wrong way round.
#
# The `positional` form was found 2026-08-25, six notes in src/ovl2/ovl2_3.c
# and src/ovl2/plylib.c, every one of them reported as "note wrong" and every
# one of them EXACTLY the complement of the measurement (28/166 measuring 138,
# 24/192 measuring 168, 20/202 measuring 182, 13/202 measuring 189, 43/317
# measuring 274, 7/139 measuring 132). Six exact complements is not
# coincidence, and the prose agrees -- 43/317 "positional" sits next to
# "the whole body shifts". Without this line `--fix` would have rewritten all
# six correct notes into wrong ones.
#
# The general lesson for anyone adding a fourth convention: don't. But if you
# meet an unfamiliar one, check whether the disagreements are COMPLEMENTS
# before believing the tool.
FACTORY = re.compile(r'FACTORY:\s*(\d+)\s*/\s*(\d+)')
MATCHFORM = re.compile(r'FACTORY:\s*\d+\s*/\s*\d+\s*'
                       r'(instructions?\s+match|positional)')
PRAGMA = re.compile(r'^\s*#pragma\s+GLOBAL_ASM\("([^"]+)"\)\s*$')
DIFFLINE = re.compile(r'(\w+):\s*DIFF\s+(\d+)/(\d+)\s+insns')
MATCHLINE = re.compile(r'(\w+):\s*MATCH')


def arm_end(body):
    """Index into `body` of the group's own first top-level #elif/#else.

    `body` is the group's contents WITHOUT its opening #if and closing #endif.
    Depth matters: a draft may hold a nested conditional, and cutting at the
    first #elif/#else anywhere truncates the body mid-block."""
    depth = 0
    for k, b in enumerate(body):
        t = b.lstrip()
        if t.startswith('#if'):
            depth += 1
        elif t.startswith('#endif'):
            depth -= 1
        elif depth == 0 and t.startswith(('#elif', '#else')):
            return k
    return len(body)


def _defines(arm, func):
    """Does this arm contain a DEFINITION of `func` (not just a call)?"""
    pat = re.compile(r'^[A-Za-z_].*[\s*]' + re.escape(func) + r'\s*\(')
    for l in arm:
        if pat.match(l) and not l.rstrip().endswith(';'):
            return True
    return False


def guard_blocks(lines):
    """[(open_idx, endif_idx, pragma_idx, listing)] for every draft arm.

    A draft is normally in the same conditional group as the GLOBAL_ASM pragma
    it stands in for, and that is what this used to require. It is NOT always
    so: when the draft needs a type the file does not declare until later, the
    pragma has to stay at the function's address-ordered position while the C
    arms sit further down (src/ovl2/ovl2_8.c's func_8010EA68 and func_8010F140,
    src/ovl11/ovl11.c's func_801DD270_ovl11 -- each with an explanatory comment
    at the pragma saying exactly that). Those drafts reported UNSCORABLE for
    years, and not because they were broken: this function was cutting the
    EMPTY arm at the pragma site, so verify.py compiled a TU with no such
    function in it and said "not found in compiled object". Their real residues
    are 236/242, 515/521 and 32/136.

    So: pair a draft arm with its pragma wherever that pragma lives in the
    file, and prefer the arm that actually DEFINES the function."""
    stack, groups = [], []
    pragmas = {}
    for i, l in enumerate(lines):
        s = l.lstrip()
        m = PRAGMA.match(l)
        if m:
            pragmas[os.path.basename(m.group(1))[:-2]] = i
        if s.startswith('#if'):
            stack.append(i)
        elif s.startswith('#endif') and stack:
            st = stack.pop()
            if 'MIPS_TO_C' in lines[st] or 'NON_MATCHING' in lines[st]:
                groups.append((st, i))

    best = {}
    for st, en in groups:
        body = lines[st + 1:en]
        arm = body[:arm_end(body)]
        own = [(st + 1 + k, PRAGMA.match(b).group(1))
               for k, b in enumerate(body) if PRAGMA.match(b)]
        cands = []
        if own:
            cands.append((own[-1][0], own[-1][1]))
        else:
            for func, pi in pragmas.items():
                if _defines(arm, func):
                    cands.append((pi, func + '.s'))
        for prag_i, listing in cands:
            func = os.path.basename(listing)[:-2]
            rank = (1 if _defines(arm, func) else 0)
            if func not in best or rank > best[func][0]:
                best[func] = (rank, st, en, prag_i, listing)
    return sorted((v[1], v[2], v[3], v[4]) for v in best.values())


def cut_draft(lines, st, en, prag_i):
    """The scratch TU with this ONE draft un-guarded in place of its pragma.

    The pragma is not always inside the group (see guard_blocks), so it is
    removed by INDEX rather than by filtering the group's own body."""
    body = lines[st + 1:en]
    keep = [b for b in body[:arm_end(body)] if not PRAGMA.match(b)]
    out = lines[:st] + keep + lines[en + 1:]
    if not (st <= prag_i <= en):
        idx = prag_i + (len(keep) - (en - st + 1)) if prag_i > en else prag_i
        if PRAGMA.match(out[idx]):
            del out[idx]
    return out


def score(path, func, orig):
    """Run verify.py on `path` for `func`; return ('MATCH'|diff_count|None, total)."""
    # The scratch copy lives in a temp directory, so a quoted sibling include
    # (`#include "ovl19_2.h"`) cannot resolve from it -- asm-processor's
    # automatic `-I <dir of the .c>` points at the copy. Hand verify.py the
    # ORIGINAL directory as well. Without this every draft in a file with a
    # sibling include reported "did not compile alone" and was silently left
    # unmeasured.
    # VERIFY_SECBASE_SRC: verify.py derives this TU's .rodata VRAM base from
    # the file's PATH, so a scratch copy resolves none and EVERY migrated
    # rodata reference is counted as a diff. Measured: func_800F8728 scored
    # 1/63 that way and MATCH on the real path (it un-guarded byte-exact), and
    # func_801E05A8_ovl15's true residue is 2, not the 9 reported. Hand
    # verify.py the original path so those references resolve.
    env = dict(os.environ, VERIFY_EXTRA_INC=os.path.dirname(
        os.path.abspath(orig)) or '.',
        VERIFY_SECBASE_SRC=os.path.relpath(os.path.abspath(orig), REPO))
    r = subprocess.run([sys.executable, VERIFY, path, func],
                       capture_output=True, text=True, env=env)
    txt = r.stdout + r.stderr
    m = DIFFLINE.search(txt)
    if m:
        return int(m.group(2)), int(m.group(3))
    if MATCHLINE.search(txt):
        return 'MATCH', None
    return None, None


def measure_file(path):
    src = open(path, errors='replace').read()
    lines = src.split('\n')
    results = []
    for st, en, prag_i, listing in guard_blocks(lines):
        func = os.path.basename(listing)[:-2]
        note = None
        note_line = None
        note_isform = False
        for k, l in enumerate(lines[max(0, st - 12):en]):
            m = FACTORY.search(l)
            if m:
                a, tot = int(m.group(1)), int(m.group(2))
                # See MATCHFORM above: `N/total instructions match` counts the
                # words that are RIGHT, so the residue is the complement.
                note_isform = bool(MATCHFORM.search(l))
                note = (tot - a if note_isform else a, tot)
                note_line = max(0, st - 12) + k
                break
        # scratch copy: this one draft un-guarded, its pragma removed.
        # The PORT arm is dropped at the group's own first top-level #elif /
        # #else -- see arm_end(). Cutting at the FIRST #elif/#else anywhere
        # truncated the body mid-block, which is why 24 drafts once reported
        # "did not compile alone" rather than a number.
        scratch_lines = cut_draft(lines, st, en, prag_i)
        d = tempfile.mkdtemp(prefix='seedmeas_')
        try:
            sp = os.path.join(d, os.path.basename(path))
            open(sp, 'w').write('\n'.join(scratch_lines))
            got, tot = score(sp, func, path)
        finally:
            shutil.rmtree(d, ignore_errors=True)
        results.append({'file': path, 'func': func, 'note': note,
                        'note_line': note_line, 'note_isform': note_isform,
                        'diff': got, 'total': tot})
    return results


def rewrite_notes(rows):
    """Replace every disagreeing `FACTORY: n/total` with the measured number.

    WHY THIS IS A MODE AND NOT A REPORT. The report has said "N note(s)
    disagree with the measurement" for weeks and N kept growing, because a
    number in a comment is nobody's job to fix and there is no gate that can
    catch it -- it is a comment. Meanwhile the notes are what lanes and
    priority_queue.py pick targets from, so a wrong one costs real compiles.

    Measured 2026-08-25 on 600 drafts: 124 notes disagreed, and 102 of them
    claimed to be CLOSER than the truth -- the dangerous direction. The worst
    said 46/1674 where the real residue is 1628/1674. Two were checked by hand
    against the listing before writing this: the measurements were right and
    the notes were fiction, in one file because the draft had never compiled
    at all so no number could ever have been produced for it.

    ONLY THE NUMBERS ARE TOUCHED. The prose around them is a lane's reasoning
    about what was ruled out and is often the most valuable thing in the file;
    it is left exactly as written, with the corrected figure and a marker so
    the disagreement is visible rather than silently papered over.
    """
    by_file = {}
    for r in rows:
        if (r.get('note') and r.get('note_line') is not None
                and isinstance(r.get('diff'), int)
                and r['note'][0] != r['diff']):
            by_file.setdefault(r['file'], []).append(r)
    n = 0
    for path, rs in sorted(by_file.items()):
        lines = open(path, errors='replace').read().split('\n')
        for r in rs:
            i = r['note_line']
            if r.get('note_isform'):
                # `N/total instructions match (M diffs)` -- rewriting the
                # number in place makes it contradict its own parenthesis.
                # These are rare and read fine; leave them to a human.
                continue
            old = f"{r['note'][0]}/{r['note'][1]}"
            new = f"{r['diff']}/{r['total']} [was noted {old}]"
            if old not in lines[i]:
                continue
            lines[i] = lines[i].replace(old, new, 1)
            n += 1
        open(path, 'w').write('\n'.join(lines))
    return n


def main():
    argv = sys.argv[1:]
    jsonout = None
    if '--json' in argv:
        i = argv.index('--json')
        jsonout = argv[i + 1]
        del argv[i:i + 2]          # its value is NOT a source file
    args = [a for a in argv if not a.startswith('--')]
    files = args or sorted(glob.glob('src/**/*.c', recursive=True))
    all_r = []
    for f in files:
        # Select by whether the file actually CONTAINS A DRAFT, not by whether
        # its notes happen to say "FACTORY:". The text search skipped any draft
        # whose note opens differently -- ovl4_3.c's began "/* 1/138: ..." and
        # ovl4_4.c's "/* 6/163: ..." -- and those two held a one-word and a
        # three-word residue, the closest seeds in that whole bloc. Tree-wide
        # the blind spot covered 78 guarded drafts in 39 files.
        if f.startswith('src/pc/'):
            continue
        try:
            if not guard_blocks(open(f, errors='replace').read().split('\n')):
                continue
        except OSError:
            continue
        all_r += measure_file(f)

    ok = [r for r in all_r if isinstance(r['diff'], int)]
    ok.sort(key=lambda r: r['diff'])
    wrong = [r for r in all_r
             if r['note'] and isinstance(r['diff'], int) and r['note'][0] != r['diff']]

    print(f'{"true":>6}  {"noted":>7}  function')
    for r in ok[:40]:
        n = f"{r['note'][0]}/{r['note'][1]}" if r['note'] else '-'
        flag = '  <-- note wrong' if r in wrong else ''
        print(f"{r['diff']:>6}  {n:>7}  {r['func']}  ({r['file']}){flag}")

    # A draft that is ALREADY BYTE-EXACT scores 'MATCH', which is not an int,
    # so it used to be filed under "unscorable" -- the one bucket nobody reads.
    # Free closures were hiding in it. Surface them first: they cost nothing
    # but the un-guard.
    exact = [r for r in all_r if r['diff'] == 'MATCH']
    if exact:
        print(f'\n== ALREADY BYTE-EXACT in .text: {len(exact)} draft(s) ==')
        print('   The instruction stream matches. That does NOT always mean it '
              'can be\n   un-guarded: a last-function-in-TU or a late_rodata '
              'pool word can still\n   shorten the object. Read the note, then '
              'check check_tu_size.py.')
        for r in exact:
            print(f"   {r['func']}  ({r['file']})")

    unscored = [r for r in all_r
                if not isinstance(r['diff'], int) and r['diff'] != 'MATCH']
    print(f'\n-- {len(all_r)} draft(s) measured, {len(ok)} scored, '
          f'{len(unscored)} unscorable (did not compile alone)')
    print(f'-- {len(wrong)} note(s) disagree with the measurement')
    print(f'-- genuinely within 6 words: '
          f'{len([r for r in ok if r["diff"] <= 6])}')
    if '--fix' in argv:
        n = rewrite_notes(all_r)
        print(f'-- rewrote {n} FACTORY number(s) to the measured value')
    elif wrong:
        print('-- run with --fix to rewrite those numbers in place. A note is '
              'worth\n   the compile that produced it; lanes and '
              'priority_queue.py pick targets\n   from these.')
    if jsonout:
        json.dump(all_r, open(jsonout, 'w'), indent=1)
        print(f'-- wrote {jsonout}')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
