#!/usr/bin/env python3
"""Drop-in replacement for tools/ido-7.1recomp/cc that compiles at -O3.

The recompiled IDO cannot do this itself: `cc -O3` fails because `ujoin` is
missing from tools/ido-7.1recomp (only as1, cc, cfe, ugen and uopt are there).
An earlier note concluded from that -- wrongly -- that -O3
was both unavailable and pointless, on the reasoning that inlining lives in
ujoin/umerge so without them -O3 would equal -O2. The first half was right, the
second was not: `uopt -O3` optimises differently regardless of inlining.

This asks the real driver, with `-show`, what it would run, then runs those four
phases directly with /usr/lib/ rewritten to the local toolchain and -O2 changed
to -O3. No ujoin is needed because the driver never gets to invoke it.

Why it matters: n_audio was built at -O3, so main/libn_audio*.c cannot match at
-O2 no matter how good the source is. Measured on __alCSeqNextDelta (90
instructions, plain upstream libreultra/src/audio/cseq.c): 54 diffs at -O2, 0 at
-O3. Recompiling both audio TUs entirely at -O3 keeps every already-matched
function matching, so it is strictly better there rather than a trade.

Usage: identical to cc. Set VERIFY_CC=tools/decomp/cc_o3.py for verify.py.

Found by the ovl2/main agent in wave 7.
"""
import os, re, shlex, subprocess, sys, tempfile

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
TOOLS = os.path.join(REPO, 'tools/ido-7.1recomp')


def main():
    args = sys.argv[1:]

    show = subprocess.run([TOOLS + '/cc', '-show'] + args,
                          capture_output=True, text=True)
    lines = []
    for l in (show.stdout + show.stderr).split('\n'):
        k = l.find('/usr/lib/')
        if k >= 0:
            lines.append(l[k:])
    if len(lines) != 4:
        sys.stderr.write(show.stdout + show.stderr)
        sys.exit(f'cc_o3: expected 4 phase lines from -show, got {len(lines)}')

    # The phases hand each other files under /tmp/ctm*; those names come from
    # the driver's own run, so they have to be remapped into a directory that
    # actually exists for this invocation.
    tmp = tempfile.mkdtemp(prefix='cco3')
    remap = {}

    def fix(tok):
        if tok is None:
            return None
        def sub(m):
            remap.setdefault(m.group(0),
                             os.path.join(tmp, os.path.basename(m.group(0))))
            return remap[m.group(0)]
        return re.sub(r'/tmp/ctm\w+', sub, tok)

    for line in lines:
        line = line.strip()
        redir = None
        if '>' in line:
            line, redir = line.rsplit('>', 1)
            redir = redir.strip()
        toks = shlex.split(line)
        toks = [t.replace('/usr/lib/', TOOLS + '/')
                if t.startswith('/usr/lib/') else t for t in toks]
        toks = ['-O3' if t == '-O2' else t for t in toks]
        toks = [fix(t) for t in toks]
        out = open(fix(redir), 'wb') if redir else None
        r = subprocess.run(toks, stdout=out, stderr=subprocess.PIPE)
        if out:
            out.close()
        if r.returncode != 0:
            sys.stderr.write(r.stderr.decode('utf-8', 'replace'))
            sys.exit(r.returncode)


if __name__ == '__main__':
    main()
