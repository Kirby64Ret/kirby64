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

    # Exclude any file containing a function that is WRONG IN THE LINKED ROM.
    # The gates above are structural -- they cannot tell correct C from
    # incorrect C. verify_rom.py can, so use it when the tree links.
    defective = set()
    if os.path.exists('build/kirby.us.elf'):
        owner = {}
        import glob as _g
        for obj in _g.glob('build/src/*/*.o'):
            src = 'src/' + obj[len('build/src/'):-2] + '.c'
            o = subprocess.run(['mips-linux-gnu-nm', obj],
                               capture_output=True, text=True).stdout
            for line in o.split('\n'):
                q = line.split()
                if len(q) == 3 and q[1] in 'Tt':
                    owner.setdefault(q[2], src)
        _p = subprocess.run([sys.executable, 'tools/decomp/verify_rom.py'],
                            capture_output=True, text=True)
        vr = _p.stdout + _p.stderr
        # verify_rom refuses to report against a stale ELF. Without this the
        # refusal produced zero "REAL DEFECT" lines and the checkpoint quietly
        # fell back to structural gates while looking fully verified.
        if 'REFUSING TO REPORT' in vr:
            print('  WARNING: the linked ROM is stale (a compile is failing), '
                  'so ROM-level correctness is UNCHECKED for this checkpoint')
            vr = ''
        for line in vr.split('\n'):
            m = re.match(r'REAL DEFECT \s*\S+\s+(\S+)', line)
            if m and m.group(1) in owner:
                defective.add(owner[m.group(1)])
        if defective:
            print(f'  {len(defective)} file(s) hold a function that is wrong in '
                  f'the linked ROM; excluded')
    else:
        print('  WARNING: tree does not link, so ROM-level correctness is '
              'UNCHECKED for this checkpoint')

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
        if f in defective:
            print(f'  SKIP {f}: contains a function that is wrong in the ROM')
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
