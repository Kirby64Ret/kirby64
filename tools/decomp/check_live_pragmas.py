#!/usr/bin/env python3
"""Every `#pragma GLOBAL_ASM` must actually be reachable in the ROM build.

WHY THIS EXISTS

The per-function recipe says to iterate a draft UN-guarded (verify.py cannot
see a draft that sits behind `#ifdef MIPS_TO_C`) and to re-guard it on the way
out. src/ovl7/ovl7_3.c had a draft whose exit step never happened:

    #ifndef PORT /* WIP iterating, re-guard at exit */
    void func_801A33B8(struct Ovl7TrackParams *arg0) { ... }
    #elif defined(PORT)
    ...
    #else
    #pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A33B8.s")
    #endif

In the ROM build PORT is undefined, so the first arm wins and the pragma is
dead code. The draft was five bytes short of byte-exact, so the linked ROM
came out five bytes wrong -- the only difference in the entire image.

Every other gate passed:

  check_tu_size.py      the draft compiled to the same size as the listing
  check_pragma_order.py the pragma is still present and still in order
  verify.py             reports the draft as a MATCH candidate, not a pragma
  gate_dirty.py         green

Only verify_rom.py caught it, and only after a successful link -- which had
itself been masked for a while by an unrelated compile failure leaving a
stale ELF behind. This check needs neither a compiler nor a build.

HOW IT DECIDES

Preprocessor conditionals are tracked with the ROM build's macro state:
MIPS_TO_C, PORT and NON_MATCHING are all UNDEFINED. A pragma is live if every
enclosing arm is taken under that state. Conditions this cannot evaluate
(anything not built solely from those three names) are treated as live, so
the check never invents a failure it cannot prove.

Usage: check_live_pragmas.py            check every src/**/*.c
       check_live_pragmas.py <file>...  check just these
"""
import glob
import re
import sys

# Undefined in the ROM build. A guard built only from these is decidable here.
OFF = ('MIPS_TO_C', 'PORT', 'NON_MATCHING')
PRAGMA = re.compile(r'#pragma\s+GLOBAL_ASM\("([^"]+)"\)')
IDENT = re.compile(r'[A-Za-z_]\w*')


def taken(cond, kind):
    """Is this arm taken with OFF undefined? None = cannot decide."""
    # A trailing comment is part of the line, not of the condition -- and the
    # very guard this check was written for carried one
    # (`#ifndef PORT /* WIP iterating, re-guard at exit */`).
    c = re.sub(r'/\*.*?\*/', ' ', cond)
    c = c.split('//')[0].strip()
    if kind == 'ifdef':
        return False if c in OFF else None
    if kind == 'ifndef':
        return True if c in OFF else None
    # #if / #elif: only handle defined(X) / !defined(X) over OFF names
    names = set(IDENT.findall(c)) - {'defined'}
    if not names or not names <= set(OFF):
        return None
    expr = c
    for n in OFF:
        expr = re.sub(r'defined\s*\(\s*%s\s*\)' % n, '0', expr)
        expr = re.sub(r'defined\s+%s\b' % n, '0', expr)
        expr = re.sub(r'\b%s\b' % n, '0', expr)
    expr = expr.replace('&&', ' and ').replace('||', ' or ').replace('!', ' not ')
    try:
        return bool(eval(expr, {'__builtins__': {}}, {}))
    except Exception:
        return None


def check(path):
    """Return [(line, listing, reason)] for every pragma dead in the ROM build."""
    # One entry per open conditional: [live, won, murky].
    #   live   this arm's state; None when the condition is not decidable here
    #   won    some EARLIER arm of the same group was provably taken
    #   murky  some earlier arm was undecidable, so it may have been taken
    # Tracking only the immediately preceding arm gets a three-arm guard
    # backwards: in `#ifndef PORT / #elif defined(PORT) / #else`, the #elif is
    # provably false, but the #else is still dead because the FIRST arm won.
    stack, dead = [], []
    for i, line in enumerate(open(path, errors='replace'), 1):
        s = line.lstrip()
        m = re.match(r'#\s*(ifdef|ifndef|if|elif|else|endif)\b(.*)', s)
        if m:
            kw, rest = m.group(1), m.group(2)
            if kw in ('ifdef', 'ifndef', 'if'):
                t = taken(rest, kw)
                stack.append([t, t is True, t is None])
            elif kw == 'elif' and stack:
                live, won, murky = stack[-1]
                t = taken(rest, 'if')
                stack[-1] = [False if won else (None if murky else t),
                             won or t is True,
                             murky or t is None]
            elif kw == 'else' and stack:
                live, won, murky = stack[-1]
                stack[-1] = [None if murky else (not won), True, murky]
            elif kw == 'endif' and stack:
                stack.pop()
            continue
        p = PRAGMA.search(line)
        if p and any(a[0] is False for a in stack):
            dead.append((i, p.group(1).rsplit('/', 1)[-1]))
    return dead


def main():
    files = sys.argv[1:] or sorted(glob.glob('src/**/*.c', recursive=True))
    total = 0
    for path in files:
        if path.startswith('src/pc/'):
            continue
        try:
            for ln, name in check(path):
                print(f'{path}:{ln}: {name} is unreachable in the ROM build')
                total += 1
        except OSError:
            continue
    print(f'-- {total} dead GLOBAL_ASM pragma(s) in {len(files)} file(s)')
    if total:
        print('A draft left un-guarded takes the arm the pragma was meant to '
              'fill.\nRe-guard it as `#ifdef MIPS_TO_C` so the ROM build reaches '
              'the pragma\nagain, then re-check the linked sha1.')
    return 1 if total else 0


if __name__ == '__main__':
    raise SystemExit(main())
