#!/usr/bin/env python3
"""Report block-scope function declarations, and the ones that actually lie.

WHY THIS EXISTS

m2c emits the prototypes a function needs inside that function's body:

    void func_801A2558_ovl7(s32 arg0) {
        struct EnemyProbe *func_8010DCAC(void);
        void func_801A2ADC_ovl7(s32);
        ...

Left in place they are a matching crutch, and the k64 maintainers asked for
them to go. They are also actively dangerous, because a block-scope
declaration of a function has FILE-scope linkage: it silently types the
symbol for the whole translation unit and for the linker, while looking
local. Two consequences seen in this tree:

  src/ovl7/ovl7_3.c   `void func_801A2ADC_ovl7(s32);` inside one function
                      contradicted that same file's definition, which takes
                      `struct Ovl7TrackParams *`.

  src/ovl2/plylib.c   four copies spelled func_800BB468 as (u32, s32) when
                      the definition in ovl1_10.c is (s32, s32); a fifth call
                      site elsewhere in the file was left implicitly declared.

Neither showed up in verify.py or in the ROM hash -- the arguments were
integer constants either way -- but both broke the tree's own gcc lint pass,
and one of them would quietly break the PC port, where the parameter is a
real pointer.

WHAT IT REPORTS

  CONFLICT  the same function is declared with two different spellings, or a
            declaration disagrees with the definition found in the tree.
            These are bugs; fix them first.
  REDUNDANT a block-scope declaration that agrees with everything else. Safe
            to hoist to file scope and de-duplicate.

Normalisation is deliberately shallow: parameter NAMES are dropped, types are
compared as written. `s32` and `int` are not unified, because in this tree a
deliberate `s32` is evidence and `int` is m2c residue.

Usage: check_local_protos.py                summary over src/**/*.c
       check_local_protos.py --conflicts    only the disagreements
       check_local_protos.py <file>...      just these
"""
import glob
import re
import sys
from collections import defaultdict

# `void func_xxx(...)` / `s32 func_xxx(...)` / `struct Foo *func_xxx(...)`
_RET = (r'(?P<ret>(?:struct\s+\w+|union\s+\w+|unsigned\s+\w+|\w+)'
        r'(?:\s+\**\s*|\s*\*+\s*))')
DECL = re.compile(r'^[ \t]*(?:extern\s+)?' + _RET +
                  r'(?P<name>\w+)\s*\((?P<args>[^;{]*)\)\s*;[ \t]*$')
DEFN = re.compile(r'^' + _RET +
                  r'(?P<name>\w+)\s*\((?P<args>[^;{]*)\)\s*\{')
KEYWORDS = {'if', 'while', 'for', 'switch', 'return', 'sizeof', 'do', 'else'}
# `extern void (*fp)(GObj *);` declares an OBJECT, not a function -- but
# `void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));` is a
# real function declaration that merely TAKES one. Matching `(*` anywhere on
# the line conflated the two and silently skipped every declaration with a
# function-pointer parameter, so the tree-wide count was an undercount.
# Anchor on the declarator instead: the `(*` must directly follow the return
# type, before any identifier.
FNPTR = re.compile(r'^\s*(?:extern\s+)?[A-Za-z_]\w*[\s*]+\(\s*\*')


def struct_typedefs():
    """{'GObj': 'struct GObj'} for every `typedef struct X {...} X;`.

    Without this, `void (GObj *)` and `void (struct GObj *)` read as a
    conflict when they are the same type spelled two ways -- which is most of
    what a naive comparison finds, and it buries the real disagreements."""
    out = {}
    for f in (glob.glob('include/**/*.h', recursive=True)
              + glob.glob('src/**/*.h', recursive=True)):
        try:
            txt = open(f, errors='replace').read()
        except OSError:
            continue
        for m in re.finditer(r'typedef\s+struct\s+(\w+)\s*\{.*?\}\s*(\w+)\s*;',
                             txt, re.S):
            out[m.group(2)] = m.group(1)
        for m in re.finditer(r'typedef\s+struct\s+(\w+)\s+(\w+)\s*;', txt):
            out[m.group(2)] = m.group(1)
    return out


TYPEDEF = {}


def canon(tok):
    """Collapse `struct X` and its typedef name to one spelling."""
    tok = re.sub(r'\bstruct\s+(\w+)', r'\1', tok)
    return ' '.join(TYPEDEF.get(w, w) for w in tok.split())


def norm_args(a):
    """Drop parameter names, keep types as written."""
    a = ' '.join(a.split())
    # An empty parameter list is NOT `(void)`. In this tree it is usually
    # deliberate: several call sites omit an argument and rely on the GObj*
    # already sitting in $a0, which an ANSI prototype refuses to compile.
    # Folding the two together reported those as conflicts with the real
    # `(void)` declarations elsewhere.
    if a == '':
        return 'unspecified'
    if a == 'void':
        return 'void'
    out = []
    for p in a.split(','):
        p = p.strip()
        if p == '...':
            out.append(p)
            continue
        # a trailing identifier that is not a type word is the parameter name
        m = re.match(r'^(.*?[\s*])(\w+)$', p)
        if m and m.group(2) not in ('int', 'char', 'void', 'float', 'double',
                                    'long', 'short', 'unsigned', 'signed'):
            p = m.group(1)
        out.append(canon(' '.join(p.replace('*', ' * ').split())))
    return ', '.join(out)


def norm_ret(r):
    return canon(' '.join(r.replace('*', ' * ').split()))


def scan(path):
    """[(line, name, signature, is_block_scope)] plus definitions found."""
    decls, defns, depth = [], [], 0
    for i, line in enumerate(open(path, errors='replace'), 1):
        code = line.split('//')[0]
        m = DECL.match(code.rstrip())
        if (m and m.group('name') not in KEYWORDS
                # `return func_x(a);` parses as return type `return` naming a
                # function `func_x`. The keyword can appear on either side, so
                # both have to be rejected.
                and m.group('ret').split()[0] not in KEYWORDS
                and not FNPTR.search(code)):
            sig = f"{norm_ret(m.group('ret'))} ({norm_args(m.group('args'))})"
            decls.append((i, m.group('name'), sig, depth > 0))
        elif depth == 0:
            d = DEFN.match(code)
            if d and d.group('name') not in KEYWORDS:
                defns.append((i, d.group('name'),
                              f"{norm_ret(d.group('ret'))} "
                              f"({norm_args(d.group('args'))})"))
        depth += code.count('{') - code.count('}')
        if depth < 0:
            depth = 0
    return decls, defns


def main():
    argv = [a for a in sys.argv[1:] if not a.startswith('--')]
    only_conflicts = '--conflicts' in sys.argv
    TYPEDEF.update(struct_typedefs())
    files = argv or sorted(glob.glob('src/**/*.c', recursive=True))

    sigs = defaultdict(set)        # name -> {signature}
    where = defaultdict(list)      # name -> [(path, line, sig, block_scope)]
    defined = {}                   # name -> (path, line, sig)
    for path in files:
        if path.startswith('src/pc/'):
            continue
        try:
            decls, defns = scan(path)
        except OSError:
            continue
        for ln, name, sig, blk in decls:
            sigs[name].add(sig)
            where[name].append((path, ln, sig, blk))
        for ln, name, sig in defns:
            defined[name] = (path, ln, sig)
            sigs[name].add(sig)

    conflicts = sorted(n for n in sigs if len(sigs[n]) > 1 and where[n])
    print('== CONFLICT: declared with more than one spelling ==')
    for n in conflicts:
        d = defined.get(n)
        print(f'{n}:')
        if d:
            print(f'    definition  {d[2]}   ({d[0]}:{d[1]})')
        for s in sorted(sigs[n] - ({d[2]} if d else set())):
            hits = [w for w in where[n] if w[2] == s]
            if not hits:
                continue        # a second DEFINITION, not a declaration
            blk = sum(1 for h in hits if h[3])
            print(f'    declared    {s}   x{len(hits)} '
                  f'({blk} block-scope)  e.g. {hits[0][0]}:{hits[0][1]}')
    print(f'-- {len(conflicts)} function(s) with conflicting declarations')

    if not only_conflicts:
        blk = [(n, w) for n in where for w in where[n] if w[3]]
        byfile = defaultdict(int)
        for n, w in blk:
            byfile[w[0]] += 1
        print('\n== REDUNDANT: block-scope declarations, worst files ==')
        for f, c in sorted(byfile.items(), key=lambda x: -x[1])[:20]:
            print(f'{c:>5}  {f}')
        print(f'-- {len(blk)} block-scope declaration(s) in '
              f'{len(byfile)} file(s)')
    return 1 if conflicts else 0


if __name__ == '__main__':
    raise SystemExit(main())
