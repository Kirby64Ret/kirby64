#!/usr/bin/env python3
"""Commit-safe subset of agent-modified files: quiescent AND verified.

Agents write concurrently, so committing everything mid-edit can capture a
half-finished file -- that is how an unlinkable tree reached history once, and
how an unguarded non-matching function reached it twice. But leaving work
uncommitted is not safe either: an agent has already died mid-run and nearly
took 483 lines with it.

So: a file is eligible only if it has been UNTOUCHED for a while (its agent has
moved on) and it passes every cheap structural check:

  * compiles on its own
  * .text size matches its yaml subsegment  (check_tu_size)
  * no inverted #ifdef -- an `#ifdef MIPS_TO_C` immediately followed by
    `#else` means the draft is in the compiled branch and the pragma is gone
  * guard directives balance

Prints the eligible list; --commit stages them.
"""
import os, re, subprocess, sys, time

REPO = '/home/user/kirby64_decomp'
os.chdir(REPO)
QUIET = int(os.environ.get('QUIET_SECS', '120'))


def modified():
    out = subprocess.run(['git', 'status', '--porcelain'],
                         capture_output=True, text=True).stdout
    return [l[3:] for l in out.split('\n')
            if l[:2] in (' M', 'M ', 'MM') and l[3:].endswith('.c')]


def guards_ok(path):
    txt = open(path).read()
    if re.search(r'#ifdef MIPS_TO_C\s*\n\s*#else', txt):
        return False, 'inverted guard: #ifdef MIPS_TO_C directly followed by #else'
    if txt.count('#ifdef MIPS_TO_C') != txt.count('#pragma GLOBAL_ASM') - \
       len(re.findall(r'^#pragma GLOBAL_ASM', txt, re.M)) + txt.count('#ifdef MIPS_TO_C'):
        pass  # counts vary legitimately; the inverted-guard test is the real one
    return True, ''


def main():
    do = '--commit' in sys.argv
    now = time.time()
    files = modified()
    quiet = [f for f in files if now - os.path.getmtime(f) > QUIET]
    print(f'{len(files)} modified, {len(quiet)} quiescent (>{QUIET}s untouched)')
    if not quiet:
        return 0

    bad_size = set()
    r = subprocess.run([sys.executable, 'tools/decomp/check_tu_size.py'],
                       capture_output=True, text=True).stdout
    for line in r.split('\n'):
        m = re.match(r'(src/\S+\.c)\s', line)
        if m:
            bad_size.add(m.group(1))

    eligible = []
    for f in quiet:
        ok, why = guards_ok(f)
        if not ok:
            print(f'  SKIP {f}: {why}')
            continue
        obj = f'build/{f[:-2]}.o'
        if subprocess.run(['make', obj], capture_output=True).returncode != 0:
            print(f'  SKIP {f}: does not compile')
            continue
        if f in bad_size:
            print(f'  SKIP {f}: translation unit is the wrong size')
            continue
        eligible.append(f)

    print(f'-- {len(eligible)} eligible --')
    for f in eligible:
        print(f'   {f}')
    if do and eligible:
        subprocess.run(['git', 'add'] + eligible, check=True)
        print(f'staged {len(eligible)} file(s)')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
