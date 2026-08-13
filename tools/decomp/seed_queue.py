#!/usr/bin/env python3
"""Measure EVERY guarded draft, then permute them closest-first, forever.

WHY THIS REPLACES HAND-WRITTEN TARGET LISTS

Measured 2026-08-13, and the split is not subtle:

    permuter on an ORDER residue      2 functions closed in 2.5 minutes
                                      (13 seconds and 2 minutes), 0 tokens
    permuter on a REGISTER residue    600s each on two targets, 573 and 32
                                      improvements, 0 closed
    a lane closing a function         ~400,000 tokens

So the cheapest closure in this project is a lane driving a function down to a
small residue and then NOT finishing it -- handing it to CPU instead. What the
permuter cannot do is invent meaning; what it does better than any agent is
search arrangements. Ordering by residue size is what routes work correctly,
because a small residue is overwhelmingly likely to be an ordering problem and
a large one is not.

priority_queue.py did this from a list I typed out of lane reports. That does
not scale past the ~25 functions a lane happens to mention. This measures all
~460 guarded drafts itself with verify.py, sorts by real diff count, and feeds
the permuter the whole tree closest-first -- then loops forever, re-measuring,
so every draft a lane improves re-enters the queue nearer the front.

Nothing here decides correctness. Wins land in perm/_wins/ and factory.py is
still the only thing that may put one in the tree, through a byte-exact ROM
gate.

Usage: seed_queue.py [seconds_per_function]     default 240
       seed_queue.py --measure-only             print the ranked queue, exit
"""
import glob
import os
import re
import subprocess
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import permute_queue as pq

REPO = pq.REPO
TOOLS = pq.TOOLS
PY = os.path.join(REPO, '.venv', 'bin', 'python3')

GUARD = re.compile(
    r'#ifdef (?:NON_MATCHING|MIPS_TO_C)\b[^\n]*\n(.*?)#else\s*\n'
    r'#pragma GLOBAL_ASM\("([^"]+)"\)', re.S)


# Files a lane has PROVEN unreachable, so CPU must not spend a second on them.
# libn_audio: ssb-decomp-re has a complete matched donor set and Kirby's build
# still cannot be reached -- it passes arguments in $t2/$t3 and omits callee
# saves, i.e. IDO -O3 interprocedural register allocation. Measured and closed.
# Without this the shards start alphabetically at src/main/ and burn the whole
# dead segment before reaching live work; all four were observed sitting in
# libn_audio at once.
DEAD_FILES = ('libn_audio.c', 'libn_audio_2.c', 'libn_audio_2e.c',
              'libn_audio_2f.c', 'libn_audio_b.c')


def padding_trap(sfile):
    """True if the listing carries words after its own function's `.size`.

    Such a function cannot be converted no matter how byte-exact the C gets:
    C emits no trailing padding, so the TU shrinks and every segment after it
    shifts. The permuter does not know that and will happily drive one to
    score 0 -- it produced exactly that on func_8002C990 and func_8002D0D0,
    both of which the ROM gate then rejected. That is CPU spent on something
    that cannot ever be committed, so screen it out at the queue.

    ANCHOR ON THE LAST `.size`. Anchoring on the first matches the migrated
    `.late_rodata` block at the head of a listing and condemns a perfectly
    convertible function -- a bug this project has now made twice.
    """
    try:
        lines = open(sfile, errors='replace').read().split('\n')
    except OSError:
        return False
    last = max((i for i, l in enumerate(lines) if l.strip().startswith('.size')),
               default=None)
    if last is None:
        return False
    return any(l.strip().startswith('/*') for l in lines[last + 1:])


def drafts():
    """(cfile, func) for every pragma that is worth permuting.

    NO GUARD PAIRING. The first version matched
    `#ifdef NON_MATCHING (.*?) #else #pragma(...)` to find guarded drafts, and
    that mis-pairs: a `#ifdef NON_MATCHING` block whose `#else` is not followed
    by a pragma lets the non-greedy span run on to the NEXT block's pragma,
    swallowing the guard in between. It is the same span-an-unknown-region bug
    that made factory.py delete four functions, and here it silently dropped
    every padding trap from the screen.

    There is no need to know whether a pragma has a draft. setup_permuter
    generates one with m2c when none exists, so a bare pragma is valid fuel
    too. Take every pragma, minus the ones that cannot be committed:
      - padding traps (words after the function's own last `.size`);
      - asm_manual/ listings, which ARE padding by construction.
    """
    out = []
    for cf in sorted(glob.glob('src/**/*.c', recursive=True)):
        if any(dead in cf for dead in DEAD_FILES):
            continue
        text = open(cf, errors='replace').read()
        for m in re.finditer(r'#pragma GLOBAL_ASM\("([^"]+)"\)', text):
            sfile = m.group(1)
            if sfile.startswith('asm_manual/') or padding_trap(sfile):
                continue
            out.append((cf, os.path.basename(sfile)[:-2]))
    # Interleave by file. Sorted order puts every pragma of one file together,
    # so four shards taking i%4 all sit in the SAME file at the same time --
    # observed: all four grinding libn_audio at once. Round-robin over files
    # spreads them across segments instead.
    byfile = {}
    for cf, fn in out:
        byfile.setdefault(cf, []).append(fn)
    spread, files = [], list(byfile)
    while files:
        for cf in list(files):
            if byfile[cf]:
                spread.append((cf, byfile[cf].pop(0)))
            else:
                files.remove(cf)
    return spread


def measure(cf, fn):
    """Diff count for a guarded draft, via verify.py on an un-guarded copy.

    verify.py decides "is this a pragma" from raw file text and ignores
    #ifdef, so the guard has to actually come off to get a number. The file is
    restored in the same breath -- this must never leave a draft live.
    """
    original = open(cf, errors='replace').read()
    try:
        r = subprocess.run([PY, os.path.join(TOOLS, 'setup_permuter.py'), cf, fn],
                           capture_output=True, text=True, timeout=180)
        d = os.path.join(pq.PERM, fn)
        if r.returncode != 0 or not os.path.isdir(d):
            return None
        # setup_permuter writes target.s and base.c; score the base directly.
        s = subprocess.run([PY, os.path.join(TOOLS, 'decomp-permuter', 'permuter.py'),
                            '-j', '1', '--stop-on-zero', '--seed', '0', d],
                           capture_output=True, text=True, timeout=60)
        m = re.findall(r'score = (\d+)', s.stdout + s.stderr)
        return int(m[0]) if m else None
    except Exception:
        return None
    finally:
        if open(cf, errors='replace').read() != original:
            open(cf, 'w').write(original)


def run_cached(cf, fn, seconds, jobs):
    """permute_queue.run_one, minus the setup it throws away every pass.

    run_one rmtree's perm/<fn> and re-runs setup_permuter every time, which
    costs 10-30s of cpp+m2c per function. Over 875 functions that is 4-6 hours
    of pure overhead PER PASS, and it buys nothing when the source has not
    changed since the directory was built. Reuse the directory whenever it is
    newer than its .c file; rebuild only when the lane has touched the file.

    Combined with a short budget this is the difference between ~14 hours and
    ~1.5 hours for a full sweep of the tree. The budget can be short because
    the wins arrive fast or not at all: the two order residues closed at 13
    seconds and 2 minutes, while register floors ran 600s and closed nothing.
    """
    d = os.path.join(pq.PERM, fn)
    fresh = (os.path.isdir(d)
             and os.path.exists(os.path.join(d, 'base.c'))
             and os.path.exists(os.path.join(d, 'target.s'))
             and os.path.getmtime(d) >= os.path.getmtime(cf))
    if not fresh:
        return pq.run_one(cf, fn, seconds, jobs)

    logf = os.path.join(d, 'permuter.out')
    with open(logf, 'wb') as fh:
        p = subprocess.Popen(
            [PY, os.path.join(TOOLS, 'decomp-permuter', 'permuter.py'),
             '-j', str(jobs), '--better-only', '--stop-on-zero', d],
            stdout=fh, stderr=subprocess.STDOUT)
        try:
            p.wait(timeout=seconds)
        except subprocess.TimeoutExpired:
            p.kill()
            p.wait()
    out = open(logf, errors='replace').read().replace('\r', '\n')
    scores = [int(s) for s in re.findall(r'score = (\d+)', out)]
    if scores and min(scores) == 0:
        hits = sorted(glob.glob(os.path.join(d, 'output-*')))
        os.makedirs(pq.WINS, exist_ok=True)
        dst = os.path.join(pq.WINS, fn)
        import shutil
        shutil.rmtree(dst, ignore_errors=True)
        shutil.copytree(hits[-1] if hits else d, dst)
        pq.log(f'*** MATCH {fn} ({cf}) -- source in {dst}')
        return True
    return False


def main():
    """Short budget, whole pool, sharded, forever.

    MEASURING FIRST WAS THE OBVIOUS DESIGN AND IT IS WRONG. Scoring 516 drafts
    costs ~90s each (setup_permuter runs cpp and m2c), i.e. ~13 hours before a
    single permutation starts. And the ranking it buys is barely needed,
    because the closures that matter arrive FAST: the two ovl16 order residues
    landed in 13 seconds and 2 minutes. A short budget over the whole pool
    finds those without knowing in advance which they are, and a register
    floor is not going to close at any budget, so time spent on one is bounded
    waste rather than a wrong bet.

    Shard so several workers share the pool: --shard 0/2 and --shard 1/2.
    """
    seconds = 25
    shard, nshards = 0, 1
    for a in sys.argv[1:]:
        if a.isdigit():
            seconds = int(a)
        elif a.startswith('--shard'):
            v = a.split('=')[-1] if '=' in a else sys.argv[sys.argv.index(a) + 1]
            shard, nshards = (int(x) for x in v.split('/'))
    os.makedirs(pq.PERM, exist_ok=True)

    p = 0
    while True:
        pool = [d for i, d in enumerate(drafts()) if i % nshards == shard]
        p += 1
        pq.log(f'=== seed queue pass {p}: {len(pool)} drafts, shard {shard}/{nshards}, {seconds}s each ===')
        for i, (cf, fn) in enumerate(pool, 1):
            if not os.path.exists(cf):
                continue
            pq.log(f'[{i}/{len(pool)}] {fn} ({cf})')
            try:
                run_cached(cf, fn, seconds, 2)
            except Exception as e:
                pq.log(f'  {fn}: {e}')


if __name__ == '__main__':
    main()
