#!/usr/bin/env python3
"""The Factory: unattended permuter harvest, byte-exact-or-revert.

WHY THIS EXISTS

Wave 8 spent roughly 300,000 tokens per closed function, and almost all of it
went into compile->diff->tweak loops: an agent looking at a residue and paying
for another guess. decomp-permuter runs that identical search at ~48 variants
per second on CPU and costs nothing. The division of labour that follows is:

    tokens  -> semantics (what does this function DO, which symbol, which type)
    CPU     -> search    (which arrangement of that meaning IDO reproduces)

permute_queue.py already does the search half and drops winning sources in
tools/decomp/perm/_wins/<func>/. Nothing consumed them. This does.

THE SAFETY ARGUMENT, which is the whole point

This process commits to a shared branch with no human watching, so the only
acceptable design is one where a wrong answer CANNOT be committed. The commit
condition is not "verify.py said MATCH" -- Wave 8 caught three separate
functions where verify.py said MATCH and the ROM still broke (a TU that
silently shrank 16 bytes, a wrong string literal that shifted .rodata, a
padding trap). The commit condition is:

    the fully linked ROM's sha1 equals the base ROM's sha1

plus the structural checks, and anything short of that is reverted before the
next candidate is tried. A byte-exact ROM cannot be wrong: every instruction
and every constant is at the address the original had.

WHAT IT DOES NOT DO

It does not invent drafts. The permuter mutates an existing arrangement; it
cannot supply meaning that is not already there. Functions blocked on
register-allocation floors stay blocked, and this loop will grind them
forever without closing them -- that is expected and is why agents still
matter. It also pastes the permuter's PREPROCESSED source, which is correct
but ugly (expanded typedefs, no comments). Correctness first; a later pass can
prettify without touching the ROM.

RUN IT ONLY WHILE THE LANES ARE PAUSED

The gate builds the whole shared tree, so a lane with a file mid-edit fails
it and the candidate is rejected for someone else's reason. Measured: six
consecutive score-0 candidates rejected in ~6 seconds each while three lanes
were live, and one of them (func_80176108_ovl5) verified MATCH the moment it
was tried against a quiet tree. So the harvest runs at drain points, in the
same window the manager uses to commit. A rejection while lanes are live
means nothing and the candidate must be retried, which is why rejected wins
are moved to _harvested/ rather than deleted.

Usage:  factory.py            harvest forever
        factory.py --once     one pass over pending wins, then exit
"""
import glob
import os
import re
import shutil
import subprocess
import sys
import time

REPO = '/home/user/kirby64_decomp'
TOOLS = os.path.join(REPO, 'tools', 'decomp')
WINS = os.path.join(TOOLS, 'perm', '_wins')
DONE = os.path.join(TOOLS, 'perm', '_harvested')
PY = os.path.join(REPO, '.venv', 'bin', 'python3')
BASE_SHA1 = '6cea2d46b929a3bb347b060a77fccc83526fb855'
BRANCH = 'claude/kirbyy64-decomp-eval-plan-4gxjjk'

os.chdir(REPO)


def log(msg):
    line = f'[{time.strftime("%H:%M:%S")}] factory: {msg}'
    print(line, flush=True)


def sh(cmd, timeout=1800):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True,
                          timeout=timeout)


def find_owner(func):
    """Which .c file carries this function's guarded draft or pragma."""
    for cf in glob.glob('src/**/*.c', recursive=True):
        text = open(cf, errors='replace').read()
        if re.search(r'GLOBAL_ASM\("[^"]*/' + re.escape(func) + r'\.s"\)', text):
            return cf
    return None


def extract_function(src_path, func):
    """Pull `func`'s definition out of a permuter output source."""
    text = open(src_path, errors='replace').read()
    m = re.search(r'^[A-Za-z_][\w \t\*]*\b' + re.escape(func) + r'\s*\([^;]*?\)\s*\{',
                  text, re.M)
    if not m:
        return None
    i, depth = m.end() - 1, 0
    while i < len(text):
        if text[i] == '{':
            depth += 1
        elif text[i] == '}':
            depth -= 1
            if depth == 0:
                return text[m.start():i + 1]
        i += 1
    return None


def splice(cfile, func, body):
    """Replace the function's guarded block with the winning plain C.

    Returns the original file text so the caller can restore it. The guard is
    removed entirely: a function that is byte-exact belongs unguarded, and
    leaving a stale #ifdef around it is how nested guards happened in Wave 8.

    LINE-ANCHORED ON PURPOSE. The first version of this matched
    `#ifdef NON_MATCHING .*? #pragma GLOBAL_ASM("<func>.s")` with re.DOTALL,
    which anchors on the FIRST guard in the file and swallows every guarded
    function between there and the target. It silently deleted four unrelated
    functions out of ovl5_5.c and the link failed with undefined references to
    them. Never span an unknown region to find a pragma: find the pragma line,
    then expand outward only while the lines are that function's own guard.
    """
    lines = open(cfile, errors='replace').read().split('\n')
    pat = re.compile(r'#pragma GLOBAL_ASM\("[^"]*/' + re.escape(func) + r'\.s"\)')
    idx = next((i for i, l in enumerate(lines) if pat.search(l)), None)
    if idx is None:
        return None

    start, end = idx, idx                      # the pragma line alone
    # Expand DOWN over an #endif that closes this pragma's guard.
    if idx + 1 < len(lines) and lines[idx + 1].strip() == '#endif':
        # Expand UP: #else, then the draft body, then the #ifdef that opened
        # it -- refusing to cross another pragma or a nested #endif.
        j = idx - 1
        if j >= 0 and lines[j].strip() == '#else':
            k = j - 1
            while k >= 0:
                s = lines[k].strip()
                if s.startswith('#ifdef ') and ('NON_MATCHING' in s or 'MIPS_TO_C' in s):
                    start, end = k, idx + 1
                    break
                if s.startswith('#endif') or 'GLOBAL_ASM' in s:
                    break                      # ran into a neighbour: leave it alone
                k -= 1

    new = lines[:start] + body.split('\n') + lines[end + 1:]
    open(cfile, 'w').write('\n'.join(new))
    return '\n'.join(lines)


def gate():
    """The arbiter. A byte-exact linked ROM, or nothing."""
    r = sh(f'bash {TOOLS}/mk.sh')
    # IDO writes `cfe: Error:` with a capital E and gcc writes `error:`.
    # Grepping only for the lowercase form reported every IDO compile failure
    # as a link failure, which sent the diagnosis in the wrong direction.
    blob = r.stdout + r.stderr
    if 'error:' in blob or 'cfe: Error' in blob:
        return False, 'compile error'
    if 'kirby.us.z64: OK' not in r.stdout:
        return False, 'link/sha1 failed'
    got = sh('sha1sum build/kirby.us.z64').stdout.split()[0]
    if got != BASE_SHA1:
        return False, f'sha1 {got[:12]} != base'
    for tool, ok in (('check_tu_size.py', '-- 0 translation'),
                     ('check_sections.py', None),
                     ('check_rodata_bytes.py', '0 problem(s)')):
        out = sh(f'{PY} {TOOLS}/{tool}').stdout
        if ok and ok not in out:
            return False, f'{tool}: {out.strip().splitlines()[-1][:60]}'
    out = sh(f'{PY} {TOOLS}/verify_rom.py').stdout
    if '0 are REAL defects' not in out:
        return False, 'verify_rom: real defects'
    return True, 'green'


def metrics():
    n = len(set(re.findall(r'#pragma GLOBAL_ASM\("([^"]+)"\)',
                           ''.join(open(f, errors='replace').read()
                                   for f in glob.glob('src/**/*.c', recursive=True)))))
    n -= sum(1 for f in glob.glob('asm_manual/**/*.s', recursive=True))
    out = sh(f'{PY} {TOOLS}/verify_rom.py').stdout
    m = re.search(r'^TOTAL\s+(\d+)', out, re.M)
    e = int(m.group(1)) if m else 0
    pct = 100.0 * e / (e + n) if (e + n) else 100.0
    g = sh('timeout 400 make -f Makefile.pc gap').stdout
    mg = re.search(r'un-decompiled functions\s+(\d+)', g)
    owed = int(mg.group(1)) if mg else 0
    port = 100.0 * (1 - owed / 510.0)
    return pct, n, port, owed


def harvest(func):
    d = os.path.join(WINS, func)
    srcs = sorted(glob.glob(os.path.join(d, '**', 'source.c'), recursive=True)) \
        or sorted(glob.glob(os.path.join(d, '*.c')))
    if not srcs:
        return False, 'no source in win dir'
    body = extract_function(srcs[-1], func)
    if not body:
        return False, 'could not extract function'
    cfile = find_owner(func)
    if not cfile:
        return False, 'no owning .c (already closed?)'

    original = splice(cfile, func, body)
    if original is None:
        return False, 'no pragma to replace'

    ok, why = gate()
    if not ok:
        open(cfile, 'w').write(original)
        sh(f'bash {TOOLS}/mk.sh')          # restore objects to the good state
        return False, why

    pct, n, port, owed = metrics()
    msg = (f'factory: {func} | decomp {pct:.1f}% ({n} pragmas left) | '
           f'port {port:.1f}% ({owed} funcs owed)\n\n'
           f'Closed by decomp-permuter and harvested unattended. Committed only\n'
           f'because the fully linked ROM is byte-exact against the base\n'
           f'({BASE_SHA1}) with 0 TU-size problems, clean .rodata bytes and no\n'
           f'real defects from verify_rom.py. Source is the permuter\'s\n'
           f'preprocessed form -- correct, not pretty.\n')
    subprocess.run(['git', 'add', cfile], capture_output=True, text=True)
    subprocess.run(['git', 'commit', '-q', '-m', msg], capture_output=True, text=True)
    subprocess.run(['git', 'push', '-q', '-u', 'origin', BRANCH],
                   capture_output=True, text=True)
    return True, f'committed ({n} left)'


def main():
    os.makedirs(DONE, exist_ok=True)
    once = '--once' in sys.argv
    while True:
        pending = [os.path.basename(p) for p in sorted(glob.glob(os.path.join(WINS, '*')))
                   if os.path.isdir(p)]
        for func in pending:
            log(f'harvesting {func}')
            try:
                ok, why = harvest(func)
            except Exception as e:                      # never die on one bad win
                ok, why = False, f'exception: {e}'
            log(f'{"COMMITTED" if ok else "rejected"} {func}: {why}')
            shutil.move(os.path.join(WINS, func),
                        os.path.join(DONE, f'{func}.{int(time.time())}'))
        if once:
            return
        time.sleep(60)


if __name__ == '__main__':
    main()
