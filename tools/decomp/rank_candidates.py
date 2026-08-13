#!/usr/bin/env python3
"""Rank the remaining #pragma functions by how likely they are to match quickly.

Wave 6 found that a crude filter -- no padding, no jump-table labels, no rodata
in the listing, at most one branch -- produced 22 first-compile matches out of
28 attempts. That is a far better hit rate than picking functions at random or
working a file top to bottom, and it is worth having as a tool rather than as a
remembered heuristic.

The score is deliberately simple and the components are printed, so a
disagreement with the ranking is checkable rather than a matter of taste:

  size        short functions are easier, and a wrong guess costs less
  branches    each one is a control-flow shape that has to be guessed right
  jlabel      a jump table. Legal ONLY in a file with a migrated `.rodata`
              subsegment in kirby64.yaml -- otherwise converting it cannot
              link. Treated as disqualifying unless that subsegment exists.
  rodata      the listing carries its own constants. In most files that means
              converting removes rodata the segment still needs.
  float       float code has more ways to differ (register pairing, CSE) and
              historically eats time
  pad         a padding trap, per tools/decomp/padtrap.py. `trap` is
              disqualifying; `benign` is not, and 69 functions were wrongly
              excluded on this basis before the test was fixed.

Usage:
  rank_candidates.py ovl3            top candidates in one segment
  rank_candidates.py ovl3 -n 40      more of them
  rank_candidates.py --all           per-segment counts of the easy tier
"""
import glob, os, re, sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import padtrap
os.chdir(REPO)

BRANCH = re.compile(r'\b(b(?:eq|ne|le|lt|ge|gt)z?l?|beql|bnel|j|bc1[tf]l?)\b')
FLOAT = re.compile(r'\b(l|s)wc1\b|\b(add|sub|mul|div|neg|abs|mov)\.[sd]\b')


def migrated_rodata_files():
    """Files with a dotted `.rodata, seg/file` subsegment in the yaml.

    This is THE test for whether a jump table can legally become C. Nothing
    else -- not a renamed subsegment, not the presence of a rodata listing.
    """
    y = open('kirby64.yaml').read()
    return {f'src/{m}.c' for m in
            re.findall(r'\.rodata,\s*(\w+/[\w.]+)\]', y)}


def scan(path, func):
    txt = open(path).read()
    body = txt
    i = body.find('glabel ')
    if i >= 0:
        body = body[i:]
    j = body.find('endlabel ')
    if j >= 0:
        body = body[:j]
    insns = len(re.findall(r'/\*[^*]*\*/\s+\w', body))
    return {
        'insns': insns,
        'branches': len(BRANCH.findall(body)),
        # A jump TABLE, not a branch target. Matching bare `.L8` here flagged
        # every function that has an ordinary branch and disqualified two
        # thirds of the tree. The table is `.word .L8...` inside a rodata
        # section, or the jlabel macro.
        # A jump table looks DIFFERENT depending on the segment's rodata model,
        # and testing only for the migrated form false-negatives everywhere
        # else. In a MIGRATED file the table sits inside the listing, as the
        # `jlabel` macro or `.word .L8...`. In an UNMIGRATED file the table
        # lives in asm/data/<seg>/<file>.data.s as a `jtbl_8...` symbol and the
        # listing only REFERENCES it -- the `jlabel` directive never appears
        # and the branch targets are ordinary `.L8...` labels. Measured on the
        # unmigrated segments: ovl16 7, ovl13 3, ovl18 2, ovl17/ovl11/ovl12 0
        # listings carry a jump table, all of which the jlabel-only test
        # reported as 0. Test for both forms and let score() decide.
        'jlabel': ('jlabel' in txt
                   or re.search(r'\.word\s+\.L', txt) is not None
                   or re.search(r'\bjtbl_[0-9A-Fa-f]{6,8}', txt) is not None),
        'rodata': 'rodata' in txt,
        'float': len(FLOAT.findall(body)),
        'pad': padtrap.classify(path, func)[0],
    }


def score(f, rodata_ok):
    if f['pad'] == 'trap':
        return None
    if f['jlabel'] and not rodata_ok:
        return None
    if f['rodata'] and not rodata_ok:
        return None
    s = 0.0
    s += f['insns'] * 0.5
    s += f['branches'] * 12
    s += f['float'] * 1.5
    return s


def main():
    argv = sys.argv[1:]
    n = 25
    if '-n' in argv:
        i = argv.index('-n')
        n = int(argv[i + 1])
        del argv[i:i + 2]          # or the count is read back as a segment name
    args = [a for a in argv if not a.startswith('-')]
    show_all = '--all' in sys.argv

    mig = migrated_rodata_files()
    owner = {}
    for cf in glob.glob('src/**/*.c', recursive=True):
        for fn in re.findall(r'GLOBAL_ASM\("[^"]*/(\w+)\.s"\)', open(cf).read()):
            owner[fn] = cf

    rows = []
    for path in glob.glob('asm/nonmatchings/**/*.s', recursive=True):
        func = os.path.basename(path)[:-2]
        cf = owner.get(func)
        if cf is None:
            continue                       # already decompiled
        seg = cf.split('/')[1]
        if args and seg not in args:
            continue
        f = scan(path, func)
        s = score(f, cf in mig)
        if s is None:
            continue
        rows.append((s, seg, func, cf, f))
    rows.sort(key=lambda r: r[0])

    if show_all:
        from collections import Counter
        easy = Counter(r[1] for r in rows if r[0] <= 40)
        tot = Counter(r[1] for r in rows)
        print(f'{"segment":9}{"workable":>10}{"easy tier":>11}')
        for s in sorted(tot, key=lambda x: -easy[x]):
            print(f'{s:9}{tot[s]:10}{easy[s]:11}')
        print(f'{"TOTAL":9}{sum(tot.values()):10}{sum(easy.values()):11}')
        return

    print(f'{"score":>6}  {"function":32} {"file":26} '
          f'{"insn":>5}{"br":>4}{"flt":>5}  notes')
    for s, seg, func, cf, f in rows[:n]:
        notes = []
        if f['pad'] == 'benign':
            notes.append('benign-pad')
        if f['rodata']:
            notes.append('rodata(migrated)')
        # n_audio was built with -O3, and the inlining passes (ujoin/umerge)
        # are missing from the recompiled IDO, so anything there depending on
        # interprocedural analysis cannot be matched at all. The score cannot
        # see that, so say it rather than sending someone at a wall.
        if 'libn_audio' in cf or cf.endswith('main/audio.c'):
            notes.append('-O3 zone: IPA-dependent fns unmatchable')
        print(f'{s:6.0f}  {func:32} {cf[4:]:26} '
              f'{f["insns"]:5}{f["branches"]:4}{f["float"]:5}  {" ".join(notes)}')
    print(f'\n{len(rows)} workable candidate(s) ranked'
          f'{" in " + ", ".join(args) if args else ""}.')


if __name__ == '__main__':
    main()
