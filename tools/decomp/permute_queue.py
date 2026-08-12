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

GUARD = re.compile(
    r'#ifdef (?:NON_MATCHING|MIPS_TO_C)\s*$.*?^#pragma GLOBAL_ASM\("([^"]+)"\)',
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
            [sys.executable, os.path.join(TOOLS, 'decomp-permuter', 'permuter.py'),
             '-j', str(jobs), '--better-only', '--stop-on-zero', d],
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
    hits = sorted(glob.glob(os.path.join(d, 'output-*')))
    scores = [int(s) for s in re.findall(r'score = (\d+)', out.replace('\r', '\n'))]
    best = min(scores) if scores else None

    if best == 0:
        os.makedirs(WINS, exist_ok=True)
        dst = os.path.join(WINS, fn)
        shutil.rmtree(dst, ignore_errors=True)
        shutil.copytree(hits[-1] if hits else d, dst)
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


def main():
    ap = argparse.ArgumentParser()
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
