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

THIS TOOL IS GUARD-AWARE, AND IT HAS TO BE

It was not, and that cost a build. A lane read "redundant, safe to
de-duplicate" for the block-scope `sqrtf` / `atan2f` declarations in
src/ovl9/ovl9_5.c and deleted them. The file-scope copies it was implicitly
trusting sit inside `#ifdef NON_MATCHING`, which the ROM build never
compiles, so both calls fell back to an implicit `int` return and 3214 lines
of that object moved. Reverted, but the tool sent them there.

So every declaration and every definition is now tagged with the set of
CONFIGURATIONS it is compiled in, using the same arm evaluator as
check_live_pragmas.py (imported from it, so there is one implementation and
not two; an undecidable condition counts as live everywhere, and the
three-arm `#ifdef MIPS_TO_C / #elif defined(PORT) / #else` shape is handled).
Consequences:

  - a copy only counts as a copy if it is live in the SAME configuration;
  - DELETE is only ever advised against a same-file, same-configuration,
    same-signature file-scope copy, which is a fact this tool can prove;
  - a definition is never read out of a dead arm (func_801FB528_ovl9 was
    being reported as `void (GObj *)` from a NON_MATCHING body when the
    live definition is `void (void)`);
  - two spellings in configurations that are never compiled together are
    not a conflict, and neither is a pair that differs only by a typedef
    alias (`f32` vs `float`) or by `()` vs a prototype.

The number that matters is at the end of the CONFLICT summary: how many of
them put two spellings in ONE translation unit, which is the class IDO
rejects outright. That count is 0 for N64, 0 for PORT and 0 for CC_CHECK --
which is the tool agreeing with the three builds that actually pass -- and 9
for MIPS_TO_C, the one configuration nothing compiles, where the drafts have
drifted. Before this file was guard-aware it reported 426 undifferentiated.

WHAT IT REPORTS

  CONFLICT  the same function is declared with two different spellings, or a
            declaration disagrees with the definition, WITHIN ONE
            configuration. These are bugs; fix them first.
  K&R       a `()` declaration (unspecified arguments) coexists with a real
            prototype. Often deliberate in this tree -- several call sites
            omit an argument and rely on the register already in $a0, which
            an ANSI prototype refuses to compile -- so it is reported apart
            from CONFLICT rather than mixed into it.
  BLOCK     block-scope declarations, each with what to do about it:
              HOIST   no file-scope copy in this configuration: add one at
                      file scope and delete the block-scope copies.
              HOIST*  another arm declares the same symbol differently, so a
                      plain hoist would collide there. Hoist inside the guard.
              HOIST?  the signature names a struct declared inside a function
                      body; it cannot be spelled at file scope at all, and
                      moving the struct is what REFOUND.md forbids.
              DELETE  an identical file-scope copy is ALREADY IN SCOPE
                      above this line: this one is genuinely redundant.
              ORDER   the only file-scope copy is BELOW this line, so it is
                      not in scope here and deleting would leave the call
                      implicitly declared.
              SHADOW  a definition sits above this redeclaration, which is
                      usually why it exists -- it re-opens a looser
                      prototype that the definition has closed.
              KEEP    not compiled in this configuration (it belongs to a
                      guarded draft or a PORT arm). REFOUND.md requires a
                      guarded draft's declarations to stay inside the guard.
              CONFLICT disagrees with a file-scope copy in the same file.

            Only HOIST and DELETE are safe to act on mechanically, and both
            were checked against the compiler rather than argued: deleting
            the DELETE row in src/ovl7/ovl7_9.c gives a byte-identical
            object. ORDER and SHADOW mean "not provable from the source
            alone" rather than "certainly wrong" -- deleting the ORDER row in
            src/ovl1/save_file.c happens to be inert because the argument is
            an s32, while the same shape in src/ovl9/ovl9_5.c moved 3214
            lines because sqrtf returns f32. Gate either with an objdump A/B.
            The summary counts everything except KEEP as "actionable".

Normalisation is deliberately shallow: parameter NAMES are dropped, types are
compared as written. `s32` and `int` are not unified, because in this tree a
deliberate `s32` is evidence and `int` is m2c residue.

Usage: check_local_protos.py                  summary over src/**/*.c
       check_local_protos.py --conflicts      only the disagreements
       check_local_protos.py <file>...        these files, with the
                                              per-declaration BLOCK table
       check_local_protos.py --config PORT    evaluate a different build
                                              (N64 default, PORT, MIPS_TO_C,
                                              CC_CHECK)
       check_local_protos.py --config all     conflicts in ANY configuration
"""
import glob
import os
import re
import sys
from collections import defaultdict

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from check_live_pragmas import arm_states          # noqa: E402

# The macro state of each build that actually compiles this tree.
#   N64        the matching ROM build: none of the three defined (Makefile)
#   PORT       Makefile.pc: -DPORT -DNON_MATCHING
#   CC_CHECK   the gcc lint pass in Makefile: -DNON_MATCHING, no PORT
#   MIPS_TO_C  never defined by any build; it is the permuter/draft arm, and
#              it is here so a draft's own declarations can still be linted.
CONFIGS = {
    'N64':       frozenset(),
    'PORT':      frozenset({'PORT', 'NON_MATCHING'}),
    'CC_CHECK':  frozenset({'NON_MATCHING'}),
    'MIPS_TO_C': frozenset({'MIPS_TO_C'}),
}

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
TYPEWORDS = ('int', 'char', 'void', 'float', 'double',
             'long', 'short', 'unsigned', 'signed')
# `f32 mf[4][4]` and `f32 [4][4]` are the same parameter. The trailing
# declarator has to come off before the name can, because the name-stripper
# below anchors on the end of the string and an array declarator ends in `]`.
ARRAY_DECL = re.compile(r'((?:\s*\[[^\]]*\])+)\s*$')
# `UNUSED` is a macro (include/macros.h: __attribute__((unused)) under gcc,
# empty under IDO), so `f(UNUSED s32 x)` and `f(s32)` are the same prototype.
# It has a mixed-case twin `Unused`, and NORETURN/ALIGNED8 behave the same, so
# the list is READ from macros.h rather than guessed: any object-like macro
# that expands to nothing or to an __attribute__ is a qualifier, not a type.
# SCREAMING_CASE ahead of a real type is also treated that way as a fallback
# for macros defined elsewhere; a lone all-caps token IS the type
# (`FUNCLIST *`) and is left alone.
MACRO_QUALIFIER = re.compile(r'[A-Z][A-Z0-9_]*$')
# `void (*arg1)()` and `void (*)()` are the same parameter. The name sits
# inside the declarator, where the trailing-identifier stripper cannot see it.
FNPTR_PARAM_NAME = re.compile(r'\(\s*\*\s*(\w+)\s*\)')


def attribute_macros():
    """Object-like macros from include/macros.h that are not types."""
    out = set()
    try:
        txt = open('include/macros.h', errors='replace').read()
    except OSError:
        return out
    for m in re.finditer(r'^[ \t]*#define[ \t]+([A-Za-z_]\w*)[ \t]*(.*)$',
                         txt, re.M):
        name, body = m.group(1), m.group(2).split('//')[0].strip()
        if body == '' or body.startswith('__attribute__'):
            out.add(name)
    return out


QUALIFIERS = set()


def strip_noncode(text):
    """Blank out comments and string/char literals, preserving every offset.

    The brace depth is what separates a file-scope declaration from a
    block-scope one, and it was being counted over raw text. One `{` inside a
    block comment desynchronises it for the rest of the file: the K&R example
    in src/ovl9/ovl9_9.c's note at line 1608 (`func(arg0) s32 arg0; {`) alone
    turned all ten of that file's remaining file-scope declarations into
    phantom block-scope hits.
    """
    out = list(text)
    i, n = 0, len(text)
    state = None          # None | 'line' | 'block' | '"' | "'"
    while i < n:
        c = text[i]
        nxt = text[i + 1] if i + 1 < n else ''
        if state is None:
            if c == '/' and nxt == '/':
                state = 'line'
                out[i] = out[i + 1] = ' '
                i += 2
                continue
            if c == '/' and nxt == '*':
                state = 'block'
                out[i] = out[i + 1] = ' '
                i += 2
                continue
            if c in '"\'':
                state = c
                i += 1
                continue
        elif state == 'line':
            if c == '\n':
                state = None
            else:
                out[i] = ' '
        elif state == 'block':
            if c == '*' and nxt == '/':
                out[i] = out[i + 1] = ' '
                state = None
                i += 2
                continue
            if c != '\n':
                out[i] = ' '
        else:                                   # inside a literal
            if c == '\\':
                out[i] = ' '
                if i + 1 < n and text[i + 1] != '\n':
                    out[i + 1] = ' '
                i += 2
                continue
            if c == state:
                state = None
            elif c != '\n':
                out[i] = ' '
        i += 1
    return ''.join(out)


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
ALIAS = {}


def scalar_typedefs():
    """{'f32': 'float', 'ALMicroTime': 's32'} for plain scalar typedefs.

    These are NOT folded into the compared signature -- the docstring's rule
    stands, a deliberate `s32` is evidence and an `int` is m2c residue, and
    collapsing them would hide that. They are used only to decide SEVERITY: a
    pair that differs only by a typedef alias (`f32` vs `float`,
    `ALMicroTime` vs `s32`) cannot be a compile error, so it must not be
    counted among the in-TU conflicts the summary tells a lane to start with.
    """
    out = {}
    for f in (glob.glob('include/**/*.h', recursive=True)
              + glob.glob('src/**/*.h', recursive=True)
              # libreultra's headers are where ALMicroTime and the rest of the
              # libaudio scalar aliases live, and the audio TUs use both names.
              + glob.glob('libreultra/include/**/*.h', recursive=True)):
        try:
            txt = open(f, errors='replace').read()
        except OSError:
            continue
        for m in re.finditer(r'^[ \t]*typedef[ \t]+([A-Za-z_][\w \t]*?)'
                             r'[ \t]+([A-Za-z_]\w*)[ \t]*;', txt, re.M):
            base, name = ' '.join(m.group(1).split()), m.group(2)
            if base.split()[0] in ('struct', 'union', 'enum') or name == base:
                continue
            out[name] = base
    return out


def expand_aliases(sig):
    """Resolve scalar typedefs so `f32 (f32, f32)` == `float (float, float)`."""
    def one(m):
        tok, seen = m.group(0), 0
        while tok in ALIAS and seen < 8:
            tok = ALIAS[tok]
            seen += 1
        return tok
    return tuple(' '.join(re.sub(r'\w+', one, part).split()) for part in sig)


def canon(tok):
    """Collapse `struct X` and its typedef name to one spelling."""
    tok = re.sub(r'\bstruct\s+(\w+)', r'\1', tok)
    return ' '.join(TYPEDEF.get(w, w) for w in tok.split())


def norm_param(p):
    """One parameter, reduced to its type."""
    p = FNPTR_PARAM_NAME.sub('(*)', p)
    m = ARRAY_DECL.search(p)
    arr = ''
    if m:
        arr = re.sub(r'\s+', '', m.group(1))
        p = p[:m.start()]
    m = re.match(r'^(.*?[\s*])(\w+)\s*$', p)
    if m and m.group(2) not in TYPEWORDS:
        p = m.group(1)
    toks = p.split()
    while (len(toks) >= 2 and [t for t in toks[1:] if t != '*']
           and (toks[0] in QUALIFIERS or MACRO_QUALIFIER.fullmatch(toks[0]))):
        toks = toks[1:]
    p = canon(' '.join(' '.join(toks).replace('*', ' * ').split()))
    return (p + ' ' + arr).strip() if arr else p


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
    return ', '.join('...' if p.strip() == '...' else norm_param(p.strip())
                     for p in a.split(','))


def norm_ret(r):
    return canon(' '.join(r.replace('*', ' * ').split()))


def fmt(sig):
    return f'{sig[0]} ({sig[1]})'


def live_config_map(path):
    """[frozenset of configuration names] indexed by line number - 1."""
    per = None
    for name, defs in CONFIGS.items():
        states = [live for _, _, live in arm_states(path, defs)]
        if per is None:
            per = [set() for _ in states]
        for i, live in enumerate(states):
            if live:
                per[i].add(name)
    return [frozenset(s) for s in (per or [])]


def scan(path):
    """(decls, defns), each entry carrying the configurations it is live in.

    decls: [(line, name, sig, is_block_scope, configs)]
    defns: [(line, name, sig, configs)]
    """
    text = open(path, errors='replace').read()
    code = strip_noncode(text)
    cfgs = live_config_map(path)
    decls, defns, depth = [], [], 0
    # Tags defined INSIDE a function body cannot be named by a file-scope
    # prototype: hoisting one would declare a fresh incomplete type, and
    # moving the struct out is what REFOUND.md forbids. src/ovl2/plylib.c has
    # four such declarations (GenNode, N64PlySlot) and every one of them
    # would be wrong to hoist.
    local_tags = set()
    for line in code.split('\n'):
        t = re.match(r'\s*(?:typedef\s+)?(?:struct|union)\s+(\w+)\s*\{', line)
        if t and depth > 0:
            local_tags.add(t.group(1))
        depth += line.count('{') - line.count('}')
        if depth < 0:
            depth = 0
    depth = 0
    for i, line in enumerate(code.split('\n'), 1):
        here = cfgs[i - 1] if i - 1 < len(cfgs) else frozenset(CONFIGS)
        m = DECL.match(line.rstrip())
        if (m and m.group('name') not in KEYWORDS
                # `return func_x(a);` parses as return type `return` naming a
                # function `func_x`. The keyword can appear on either side, so
                # both have to be rejected.
                and m.group('ret').split()[0] not in KEYWORDS
                and not FNPTR.search(line)):
            sig = (norm_ret(m.group('ret')), norm_args(m.group('args')))
            decls.append((i, m.group('name'), sig, depth > 0, here))
        elif depth == 0:
            d = DEFN.match(line)
            if d and d.group('name') not in KEYWORDS:
                defns.append((i, d.group('name'),
                              (norm_ret(d.group('ret')),
                               norm_args(d.group('args'))), here))
        depth += line.count('{') - line.count('}')
        if depth < 0:
            depth = 0
    return decls, defns, local_tags


def collect(files):
    """Read every file once. Returns (decls, defns) as flat lists with paths."""
    decls, defns, tags = [], [], {}
    for path in files:
        if path.startswith('src/pc/'):
            continue
        try:
            d, f, t = scan(path)
        except OSError:
            continue
        decls += [(path,) + row for row in d]
        defns += [(path,) + row for row in f]
        tags[path] = t
    return decls, defns, tags


def report_conflicts(decls, defns, cfg):
    """Print CONFLICT and K&R for one configuration. Returns (nconf, nkr)."""
    sigs = defaultdict(set)
    where = defaultdict(list)
    defined = {}
    for path, ln, name, sig, blk, cfgs in decls:
        if cfg in cfgs:
            sigs[name].add(sig)
            where[name].append((path, ln, sig, blk))
    for path, ln, name, sig, cfgs in defns:
        if cfg in cfgs:
            sigs[name].add(sig)
            defined.setdefault(name, (path, ln, sig))

    conflicts, krs = [], []
    for n in sorted(sigs):
        if not where[n]:
            continue                    # only ever defined, never declared
        rets = {s[0] for s in sigs[n]}
        specs = {s for s in sigs[n] if s[1] != 'unspecified'}
        if len(rets) > 1 or len(specs) > 1:
            conflicts.append(n)
        elif specs and len(specs) != len(sigs[n]):
            # `()` everywhere and nowhere else is not a K&R-vs-prototype
            # pair, it is just an un-prototyped function.
            krs.append(n)

    print(f'== CONFLICT: two spellings in the same TU or build [{cfg}] ==')
    in_tu = 0
    for n in conflicts:
        d = defined.get(n)
        infile = defaultdict(set)
        for w in where[n]:
            infile[w[0]].add(w[2])
        if d:
            infile[d[0]].add(d[2])
        # A `()` declaration alongside a prototype is NOT the severe class:
        # C89 makes them compatible and this tree uses the pairing on purpose,
        # so it must not be counted as "IDO rejects this".
        same_tu = sorted(f for f, s in infile.items()
                         if len({expand_aliases(x) for x in s
                                 if x[1] != 'unspecified'}) > 1)
        # Two spellings inside ONE translation unit is the severe class: a
        # block-scope extern is scoped file-wide, so IDO rejects the pair
        # outright. Across two files it compiles and lies to the linker.
        note = f'   <-- two spellings in ONE file: {same_tu[0]}' if same_tu else ''
        if len({expand_aliases(x) for x in sigs[n]}) == 1:
            note = '   [typedef alias only, not a compile error]'
        in_tu += 1 if same_tu else 0
        print(f'{n}:{note}')
        if d:
            print(f'    definition  {fmt(d[2])}   ({d[0]}:{d[1]})')
        for s in sorted(sigs[n] - ({d[2]} if d else set())):
            hits = [w for w in where[n] if w[2] == s]
            if not hits:
                continue        # a second DEFINITION, not a declaration
            blk = sum(1 for h in hits if h[3])
            print(f'    declared    {fmt(s)}   x{len(hits)} '
                  f'({blk} block-scope)  e.g. {hits[0][0]}:{hits[0][1]}')
    print(f'-- {len(conflicts)} function(s) with conflicting declarations '
          f'in the {cfg} build; {in_tu} of them have two spellings inside ONE\n'
          f'   translation unit, which is the class IDO rejects outright -- '
          f'start there.')

    if krs:
        print(f'\n== K&R: `()` alongside a real prototype [{cfg}] ==')
        print('   Often deliberate: a call site that omits an argument only '
              'compiles this way.')
        for n in krs:
            kr = sorted({(w[0], w[1]) for w in where[n]
                         if w[2][1] == 'unspecified'})
            real = sorted(s for s in sigs[n] if s[1] != 'unspecified')
            at = f'{kr[0][0]}:{kr[0][1]}' if kr else '(definition only)'
            spelled = fmt(real[0]) if real else '(no prototype)'
            print(f'{n}: `()` at {at}, prototyped as {spelled}')

    return len(conflicts), len(krs)


def report_unreachable(defns):
    """Definitions no configuration compiles. Free once guards are tracked."""
    dead = sorted({(p, ln, name) for p, ln, name, sig, cfgs in defns
                   if not cfgs})
    if not dead:
        return
    print('\n== UNREACHABLE: defined in no configuration at all ==')
    print('   A body no build compiles, and none of the four configurations '
          'can reach.\n   Every one found so far is an inner '
          '`#ifdef NON_MATCHING` nested inside the\n   `#else` of an outer '
          'one, so the inner copy can never be taken -- the same\n   shape '
          'that was cleaned out of src/ovl16/ovl16_2.c by hand.')
    for p, ln, name in dead:
        print(f'{p}:{ln}: {name}')


def report_blocks(decls, defns, tags, cfg, detail):
    """Print the BLOCK section for one configuration. Returns the count."""
    filescope = defaultdict(list)       # (path, name) -> [(line, sig, cfgs)]
    decls_by_file = defaultdict(list)
    defline = defaultdict(list)         # (path, name) -> [line]
    for path, ln, name, sig, blk, cfgs in decls:
        decls_by_file[path].append((ln, name, sig, blk, cfgs))
        if not blk:
            filescope[(path, name)].append((ln, sig, cfgs))
    for path, ln, name, sig, cfgs in defns:
        if cfg in cfgs:
            defline[(path, name)].append(ln)

    rows = defaultdict(list)
    total = 0
    for path, ln, name, sig, blk, cfgs in decls:
        if not blk:
            continue
        total += 1
        if cfg not in cfgs:
            live = ', '.join(sorted(cfgs)) or 'nothing'
            rows[path].append((ln, 'KEEP', name, sig,
                               f'not compiled in {cfg}; live in {live}'))
            continue
        # A copy only helps if it is ALREADY IN SCOPE, i.e. above this line.
        # Nearly every DELETE the first version of this rule produced pointed
        # at a file-scope copy hundreds of lines BELOW the block-scope one
        # (saveVerify: block scope at 77, file scope at 403). Deleting on that
        # basis leaves the call implicitly declared -- the exact failure that
        # moved 3214 lines of ovl9_5.o -- and moving the file-scope copy up
        # instead re-types every call in between, which REFOUND.md forbids.
        same = [(l, s) for l, s, c in filescope.get((path, name), [])
                if cfg in c and l < ln]
        below = [(l, s) for l, s, c in filescope.get((path, name), [])
                 if cfg in c and l > ln and s == sig]
        # A DEFINITION between the two is why the block-scope copy exists: it
        # re-opens a looser prototype that the definition has closed. Removing
        # the K&R redeclaration in src/ovl7/ovl7_17.c's func_801C1288_ovl7 --
        # file-scope `()` at 24, definition `(void)` at 576, redeclaration at
        # 780 -- failed the build with "Type GObj * of this argument is
        # incompatible with type void of function prototype description".
        shadowed = [l for l in defline.get((path, name), ()) if l < ln]
        if not same and below:
            rows[path].append((ln, 'ORDER', name, sig,
                               f'the only file-scope copy is BELOW this, at '
                               f'line {below[0][0]} -- not in scope here'))
        elif not same:
            # Two ways a plain hoist is wrong, both measured by hand before
            # the tool knew them.
            #
            # (a) The signature names a struct defined inside a function
            #     body. A file-scope prototype would declare a fresh
            #     incomplete tag, and moving the struct out is exactly what
            #     REFOUND.md forbids. src/ovl2/plylib.c has four of these.
            local = [t for t in re.findall(r'\w+', fmt(sig))
                     if t in tags.get(path, ())]
            # (b) Another arm declares the same symbol differently. Hoisting
            #     makes this spelling visible to that build too, where it
            #     collides. src/ovl2/ovl2_3.c's func_8001E344 (file scope in
            #     the PORT arm) and src/ovl2/plylib.c's func_8010C734
            #     (block scope in the PORT arm) are both this.
            other = [(l, s2, sorted(c - {cfg}))
                     for l, nm, s2, blk2, c in decls_by_file.get(path, ())
                     if nm == name and cfg not in c and s2 != sig]
            if local:
                rows[path].append((ln, 'HOIST?', name, sig,
                                   f'struct {local[0]} is declared inside a '
                                   f'function body -- cannot be named at '
                                   f'file scope'))
            elif other:
                l, s2, cs = other[0]
                rows[path].append((ln, 'HOIST*', name, sig,
                                   f'no file-scope copy in {cfg}, but '
                                   f'{"/".join(cs)} has {fmt(s2)} at line {l} '
                                   f'-- hoist INSIDE the guard'))
            else:
                rows[path].append((ln, 'HOIST', name, sig,
                                   f'no file-scope copy in {cfg}'))
        elif shadowed:
            rows[path].append((ln, 'SHADOW', name, sig,
                               f'a definition at line {shadowed[-1]} sits '
                               f'above this; the redeclaration may be '
                               f're-opening a looser prototype'))
        elif any(s == sig for _, s in same):
            l = next(l for l, s in same if s == sig)
            rows[path].append((ln, 'DELETE', name, sig,
                               f'identical file-scope copy already in scope '
                               f'at line {l}'))
        else:
            rows[path].append((ln, 'CONFLICT', name, sig,
                               f'file scope says {fmt(same[0][1])} '
                               f'at line {same[0][0]}'))

    if detail:
        for path in sorted(rows):
            print(f'\n== BLOCK-SCOPE declarations in {path} [{cfg}] ==')
            for ln, verdict, name, sig, why in sorted(rows[path]):
                print(f'{ln:>6}  {verdict:<8} {name:<28} {fmt(sig):<44} {why}')
    else:
        print('\n== BLOCK-SCOPE declarations, worst files ==')
        ranked = sorted(rows.items(),
                        key=lambda x: (-sum(1 for e in x[1] if e[1] != 'KEEP'),
                                       -len(x[1])))
        for path, r in ranked[:20]:
            todo = sum(1 for e in r if e[1] != 'KEEP')
            print(f'{todo:>5} actionable of {len(r):<4} {path}')
    verdicts = defaultdict(int)
    for r in rows.values():
        for e in r:
            verdicts[e[1]] += 1
    print(f'-- {total} block-scope declaration(s) in {len(rows)} file(s): '
          + ', '.join(f'{v} {k}' for k, v in sorted(verdicts.items())))
    return total


def main():
    argv = sys.argv[1:]
    cfg = 'N64'
    if '--config' in argv:
        i = argv.index('--config')
        cfg = argv[i + 1]
        del argv[i:i + 2]
    only_conflicts = '--conflicts' in argv
    args = [a for a in argv if not a.startswith('--')]
    if cfg != 'all' and cfg not in CONFIGS:
        print(f'unknown --config {cfg}; pick one of '
              f'{", ".join(CONFIGS)} or all')
        return 2

    TYPEDEF.update(struct_typedefs())
    QUALIFIERS.update(attribute_macros())
    ALIAS.update(scalar_typedefs())
    files = args or sorted(glob.glob('src/**/*.c', recursive=True))
    decls, defns, tags = collect(files)

    bad = 0
    for name in (list(CONFIGS) if cfg == 'all' else [cfg]):
        nconf, _ = report_conflicts(decls, defns, name)
        bad += nconf
        if cfg == 'all':
            print()
    report_unreachable(defns)
    if not only_conflicts:
        report_blocks(decls, defns, tags, 'N64' if cfg == 'all' else cfg,
                      bool(args))
    return 1 if bad else 0


if __name__ == '__main__':
    raise SystemExit(main())
