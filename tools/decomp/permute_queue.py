#!/usr/bin/env python3
"""Run decomp-permuter over every guarded draft, unattended, forever.

WHY THIS EXISTS

An agent lane costs roughly 25,000 tokens per function closed, and most of
that is spent compiling five or ten hand-written source variants and reading
the diff. Measured on this machine, decomp-permuter compiles and scores
about 48 variants PER SECOND -- 8,615 of them in three minutes on three
cores -- and costs nothing but CPU.

So the division of labour is: agents supply the levers that need
understanding (which callee's prototype is wrong, which constant belongs in
rodata, where the TU boundary really is), and this supplies brute force on
everything already close enough that only the arrangement is wrong. Those are
different problems and only one of them needs a language model.

WHAT IT PICKS UP

Every `#ifdef NON_MATCHING` / `#ifdef MIPS_TO_C` block with a
`#pragma GLOBAL_ASM` beside it, i.e. every function somebody has already
written plausible C for. Ordered cheapest-first by instruction count, because
a permuter run's cost grows with function size while its chance of landing
does not.

It never edits src/. A win is written to tools/decomp/perm/_wins/ and logged;
a human or an agent applies it after gating. That is deliberate -- this thing
runs unattended and unattended writes into a tree six lanes are editing is
how you lose a night's work.

Usage:
    permute_queue.py                 run forever, 300s per function
    permute_queue.py --seconds 600   longer per function
    permute_queue.py --jobs 2        leave cores for the build
    permute_queue.py --max-insns 200 skip anything bigger
    permute_queue.py --list          print the queue and exit
"""
import argparse, glob, os, re, shutil, subprocess, sys, time

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
TOOLS = os.path.join(REPO, 'tools', 'decomp')
PERM = os.path.join(TOOLS, 'perm')
WINS = os.path.join(PERM, '_wins')
LOG = os.path.join(PERM, '_queue.log')

os.chdir(REPO)

# THREE GUARD FORMS ARE IN USE AND THE FIRST VERSION OF THIS SAW ONE.
#
#   #ifdef NON_MATCHING                        the common case
#   #ifdef MIPS_TO_C                           same, other spelling
#   #if defined(MIPS_TO_C) || defined(PORT)    "one arm serves both", used
#                                              where nothing in the draft is
#                                              N64-only so the port shares it
#   #ifdef NON_MATCHING // complex math ...     a trailing comment
#
# `#ifdef X\s*$` matches only the first two and only without a comment, so 24
# guarded drafts out of 755 were invisible to the queue -- 21 of them the
# `defined(A) || defined(B)` form. That included func_801E05A8_ovl15, 615
# words at a residue of 2, which is the largest near-miss in the tree; the
# runner reported "does not contain any function!" and moved on, which reads
# like a broken function rather than a guard this regex cannot parse.
#
# Deliberately NOT matched: `#if !defined(MIPS_TO_C) && !defined(PORT)`. That
# arm is taken when neither is defined, which is the ROM build -- a draft
# there is LIVE, not guarded, and check_live_pragmas.py owns that case.
GUARD = re.compile(
    r'#if(?:def)?[ \t]+(?![!\s]*!)(?=[^\n]*(?:NON_MATCHING|MIPS_TO_C))'
    r'[^\n]*$.*?^#pragma GLOBAL_ASM\("([^"]+)"\)',
    re.M | re.S)


def log(msg):
    line = f'[{time.strftime("%H:%M:%S")}] {msg}'
    print(line, flush=True)
    with open(LOG, 'a') as f:
        f.write(line + '\n')


def insns(sfile):
    """Instruction count, read from the ROM's own disassembly."""
    try:
        with open(sfile, errors='replace') as f:
            return sum(1 for l in f if l.strip().startswith('/*'))
    except OSError:
        return 1 << 30


def queue(max_insns):
    """Every guarded draft, cheapest first.

    A draft behind either guard is fair game: the guard records whether the
    draft COMPILES, which matters to CC_CHECK and to the port, and says
    nothing about how close it is.
    """
    out = []
    for cf in sorted(glob.glob('src/*/*.c')) + sorted(glob.glob('src/*.c')):
        text = open(cf, errors='replace').read()
        for m in GUARD.finditer(text):
            sfile = m.group(1)
            fn = os.path.basename(sfile)[:-2]
            n = insns(sfile)
            if n <= max_insns:
                out.append((n, cf, fn))
    out.sort()
    return out


def run_one(cf, fn, seconds, jobs):
    """Set up and permute one function. Returns True if it matched."""
    d = os.path.join(PERM, fn)
    # Always rebuild the directory: the file changes under us constantly as
    # other lanes work, and permuting a stale copy of a function somebody has
    # since improved wastes the whole budget.
    shutil.rmtree(d, ignore_errors=True)
    r = subprocess.run([sys.executable, os.path.join(TOOLS, 'setup_permuter.py'), cf, fn],
                       capture_output=True, text=True)
    if r.returncode != 0 or not os.path.isdir(d):
        log(f'SKIP {fn}: setup failed -- {r.stderr.strip().splitlines()[-1] if r.stderr.strip() else "no output"}')
        return False

    # NOT --quiet: the score is only recoverable from permuter's progress
    # output, and with it suppressed every entry logged best=None. Output goes
    # to a file rather than a pipe -- permuter fans out to worker processes and
    # a filled pipe buffer is a way to deadlock a run that has no other reason
    # to stop.
    logf = os.path.join(d, 'permuter.out')
    t0 = time.time()
    with open(logf, 'wb') as fh:
        p = subprocess.Popen(
            # --stack-diffs IS NOT OPTIONAL HERE, and leaving it off cost a
            # whole afternoon of false matches.
            #
            # decomp-permuter scores through asm-differ, which by DEFAULT
            # normalises stack offsets away so that a reshuffled frame does
            # not swamp the diff. Under that default a function whose only
            # residue is the FRAME SIZE scores 0. verify.py -- and the linked
            # ROM -- disagree, because `addiu $sp, $sp, -0x28` and
            # `addiu $sp, $sp, -0x30` are two different words.
            #
            # Measured 2026-08-25: func_801720D8_ovl5 and func_801721CC_ovl5
            # both logged '*** MATCH' in about a second, and the winning
            # source the permuter wrote out was BYTE-IDENTICAL to the draft
            # already in the tree. Both are 2/61 and 2/88 by verify.py, and
            # both diffs are the prologue and epilogue `addiu $sp`. factory.py
            # rejected them on the ROM gate, as it must, and the queue would
            # have gone on re-finding and re-rejecting them for ever -- with
            # both logs reporting progress.
            #
            # With the flag the score means what the ROM means.
            [sys.executable, os.path.join(TOOLS, 'decomp-permuter', 'permuter.py'),
             '-j', str(jobs), '--better-only', '--stop-on-zero', '--stack-diffs', d],
            stdout=fh, stderr=subprocess.STDOUT)
        try:
            p.wait(timeout=seconds)
        except subprocess.TimeoutExpired:
            p.kill()
            p.wait()
    elapsed = time.time() - t0
    out = open(logf, errors='replace').read().replace('\r', '\n')

    # permuter writes output-<pid>-<n>/ directories for every improvement and
    # names the score in its log; a zero score is the only thing worth waking
    # a human for.
    #
    # Which directory to copy is NOT hits[-1], and getting that wrong silently
    # publishes the wrong source under a '*** MATCH' banner. Two of the first
    # three wins this queue produced were the wrong candidate -- their
    # score.txt read 396 and 46 -- and both cost a round of hand-testing in
    # the tree before the mistake showed. The names sort lexicographically, so
    # output-<pid>-10 lands before output-<pid>-9, and the last improvement is
    # not necessarily the zero-scoring one anyway when several pids interleave.
    # Every output dir carries its own score.txt: read those and take a zero.
    hits = sorted(glob.glob(os.path.join(d, 'output-*')))

    def _score_of(h):
        try:
            return int(open(os.path.join(h, 'score.txt')).read().strip())
        except (OSError, ValueError):
            return None

    def _whitespace_only(h):
        # A mutation that only moves newlines cannot change codegen, and
        # publishing it under a MATCH banner costs the next reader a compile
        # to rediscover that. See harvest_zero_scores.whitespace_only.
        try:
            d = open(os.path.join(h, 'diff.txt'), errors='replace').read()
        except OSError:
            return False
        before, after = [], []
        for line in d.split('\n'):
            if line[:3] in ('---', '+++', '@@ ') or line.startswith('@@'):
                continue
            if line.startswith('-'):
                before.append(line[1:])
            elif line.startswith('+'):
                after.append(line[1:])
        if not before and not after:
            return False
        sq = lambda ps: ''.join(''.join(ps).split())
        return sq(before) == sq(after)

    zeros = [h for h in hits if _score_of(h) == 0]
    scores = [int(s) for s in re.findall(r'score = (\d+)', out.replace('\r', '\n'))]
    best = min(scores) if scores else None

    if zeros or best == 0:
        os.makedirs(WINS, exist_ok=True)
        dst = os.path.join(WINS, fn)
        shutil.rmtree(dst, ignore_errors=True)
        if zeros:
            shutil.copytree(zeros[-1], dst)
        else:
            # The log claimed a zero but no output dir carries one. Copy the
            # whole permuter directory rather than a candidate picked at
            # random, and say so -- a wrong source under a MATCH banner is
            # worse than no source.
            shutil.copytree(d, dst)
            log(f'*** MATCH {fn} ({cf}) -- log says score 0 but NO output dir '
                f'has score.txt 0; copied the whole permuter dir to {dst}')
            return True
        if _whitespace_only(zeros[-1] if zeros else dst):
            log(f'*** MATCH {fn} ({cf}) -- WHITESPACE ONLY, cannot transfer to '
                f'the real TU; source in {dst}')
        else:
            log(f'*** MATCH {fn} ({cf}) -- source in {dst}')
        return True

    # Elapsed time is logged because it is the only way to tell "permuted for
    # the full budget and did not land" from "exited immediately", and those
    # need opposite responses. An early exit is a broken permuter directory,
    # not a hard function.
    log(f'    {fn:28s} best={best} improvements={len(hits)} {elapsed:.0f}s')
    if elapsed < seconds * 0.5 and best is None:
        last = [l for l in out.split('\n') if l.strip()][-3:]
        log(f'      exited early: {" | ".join(l.strip() for l in last)}')
    return False


def scan(q, jobs):
    """Print every draft's BASE score without permuting it.

    permuter computes the base score in about a second -- it is one compile
    and one diff -- and then spends the rest of its budget searching. A pass
    that stops right after the base score therefore measures the whole tree in
    minutes, and that measurement is the thing every lane currently spends
    tokens re-deriving one function at a time.

    Two things fall out of it that are worth more than the ranking itself:

      score 0   the draft ALREADY MATCHES and is sitting behind a guard for
                some other reason -- almost always a padding trap, which is a
                solved class as of tonight. Two turned up in the first five
                entries of the real queue.
      low N     the tier where hand-work actually lands. Measured tonight:
                drafts already under 20 diffs closed at 9 of 16, and drafts
                above that at 2 of 20. Lanes should be spending their budget
                on the first group and guarding the second.
    """
    # A SEPARATE DIRECTORY NAMESPACE, and this is not tidiness.
    #
    # Both modes build their working directory at perm/<function> and both
    # rmtree it first, so running a scan while a permute pass is going deletes
    # the directory the pass is standing in. Measured: the queue died with
    # FileNotFoundError on its own permuter.out mid-function. They are meant to
    # run together -- the scan is what tells you where to point the pass -- so
    # they cannot share a namespace.
    scandir = os.path.join(PERM, '_scan')
    os.makedirs(scandir, exist_ok=True)

    print(f'{"base":>6}  {"insns":>5}  function                       file')
    for n, cf, fn in q:
        d = os.path.join(scandir, fn)
        shutil.rmtree(d, ignore_errors=True)
        r = subprocess.run([sys.executable, os.path.join(TOOLS, 'setup_permuter.py'),
                            cf, fn, scandir], capture_output=True, text=True)
        if r.returncode != 0 or not os.path.isdir(d):
            print(f'{"setup":>6}  {n:5d}  {fn:30s} {cf}', flush=True)
            continue
        logf = os.path.join(d, 'scan.out')
        with open(logf, 'wb') as fh:
            p = subprocess.Popen(
                # --stack-diffs for the same reason as in run_one: without it
                # a draft whose only residue is the frame size scans as
                # "base score 0, already matches", which is the most
                # misleading answer this mode can give.
                [sys.executable, os.path.join(TOOLS, 'decomp-permuter', 'permuter.py'),
                 '-j', str(jobs), '--better-only', '--stop-on-zero',
                 '--stack-diffs', d],
                stdout=fh, stderr=subprocess.STDOUT)
            # 25s is generous for one compile plus one diff even on a cold
            # cache; anything slower is a broken directory, not a slow one.
            try:
                p.wait(timeout=25)
            except subprocess.TimeoutExpired:
                p.kill()
                p.wait()
        out = open(logf, errors='replace').read().replace('\r', '\n')
        m = re.search(r'base score = (\d+)', out)
        print(f'{m.group(1) if m else "?":>6}  {n:5d}  {fn:30s} {cf}', flush=True)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--scan', action='store_true',
                    help='measure every draft\'s base score and exit; do not permute')
    ap.add_argument('--seconds', type=int, default=300)
    ap.add_argument('--jobs', type=int, default=2)
    ap.add_argument('--max-insns', type=int, default=400)
    ap.add_argument('--list', action='store_true')
    a = ap.parse_args()

    os.makedirs(PERM, exist_ok=True)
    q = queue(a.max_insns)
    if a.list:
        for n, cf, fn in q:
            print(f'{n:5d}  {fn:30s} {cf}')
        print(f'\n{len(q)} guarded drafts at or under {a.max_insns} instructions')
        return

    if a.scan:
        scan(q, a.jobs)
        return

    log(f'=== queue: {len(q)} drafts, {a.seconds}s each, -j{a.jobs} ===')
    wins = 0
    for i, (n, cf, fn) in enumerate(q, 1):
        # Re-read the file: another lane may have closed this one since the
        # queue was built, in which case the pragma is gone and there is
        # nothing to permute.
        if fn not in open(cf, errors='replace').read():
            continue
        log(f'[{i}/{len(q)}] {fn} ({n} insns, {cf})')
        if run_one(cf, fn, a.seconds, a.jobs):
            wins += 1
    log(f'=== pass complete: {wins} match(es) ===')


if __name__ == '__main__':
    main()
