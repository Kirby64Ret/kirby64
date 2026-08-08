#!/usr/bin/env python3
"""Roll back any converted family member that does not verify in place.

Per-function verification is done with every OTHER function at its correct
size, so a member can pass alone and still fail once its neighbours are back
to their true sizes (the 32-byte dead-epilogue alignment makes these
functions position-dependent). Repeat until the file is stable.
"""
import json, re, subprocess, sys, os
S = os.path.dirname(os.path.abspath(__file__))

fam = json.load(open(sys.argv[1]))
byfn = {it['fn']: it for it in fam}
files = sorted({it['cf'] for it in fam})

for rnd in range(6):
    changed = False
    for cf in files:
        r = subprocess.run([sys.executable, f'{S}/verify.py', cf, '--all'],
                           capture_output=True, text=True)
        for m in re.finditer(r'^(\w+): DIFF', r.stdout, re.M):
            fn = m.group(1)
            if fn not in byfn:
                continue
            it = byfn[fn]
            txt = open(cf).read()
            body = it['body']
            if body not in txt:
                continue
            prag = (f'// needs IDO\'s 32-byte dead-epilogue padding, which C does not emit\n'
                    f'#pragma GLOBAL_ASM("asm/nonmatchings/{it["seg"]}/{it["tu"]}/{fn}.s")')
            open(cf, 'w').write(txt.replace(body, prag, 1))
            print(f'  rolled back {fn} ({cf})')
            changed = True
    if not changed:
        print(f'-- stable after {rnd} round(s) --')
        break
