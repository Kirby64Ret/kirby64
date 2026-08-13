#!/usr/bin/env python3
"""Classify a listing's post-.size tail. Shared by verify.py and check_layout.py.

A listing whose words continue after the `.size` of its own function carries
the translation unit's alignment padding. C cannot emit those words, so
converting the function shortens the TU and shifts everything after it -- while
verify.py happily reports MATCH, because the function's own instructions are
all correct. That is the PADDING TRAP.

But the naive form of this test -- "anything after the last .size" -- produced
two whole classes of false alarm, and both cost real agent time:

  * `rfind('.size')` on a listing whose ONLY `.size` belongs to a leading
    `.late_rodata` block anchors before `.section .text`, so the entire
    function body reads as padding. (src/ovl2/ovl2_4.c func_800FD9D4.)
    Fixed by requiring the `.size` to name THIS function.

  * a SHORT all-`nop` tail is 0x00000000 repeated, which is byte-identical to
    the zero fill the assembler emits aligning .text to 16 bytes. Dropping it
    changes nothing because the alignment puts it straight back, and the
    byte-exact ROM proves it: ovl7_14 and ovl7_16 both sat converted with
    3-nop tails while sha1 matched.

The cutoff is the alignment quantum, and it was measured, not assumed. Seven
condemned ovl9 drafts were un-guarded at once: six with 1-2 nop tails rebuilt
byte-exact, and the seventh -- func_80209698_ovl9, tail of FOUR nops -- came up
exactly 16 bytes short. A 4-word tail means the function already ended on a
16-byte boundary, so those 16 bytes are a deliberate extra block that no
alignment directive will reproduce.

So a tail is BENIGN iff it is all zero AND shorter than one 16-byte block.
Anything else is the real trap: a non-zero word exists nowhere else, and a
full block is padding the alignment will not regenerate.

classify() -> ('trap' | 'benign' | 'clean', n_words)

UPDATE (measured, 12 functions converted, ROM byte-exact): a 'trap' verdict is
NOT a proof of impossibility. All 22 trap tails in the tree are pure nops
ending at an address 0 mod 32, and IDO's assembler pads .text only to 16 -- the
rest is the LINKER aligning the NEXT object's .text to its sh_addralign of 32
(which a `while (1)` function's `.align 5` sets). kirby.ld's SUBALIGN(16)
overrides that, so the fill has to be declared as a `pad` subsegment in
kirby64.yaml (rendered `. += 0x10;`). See LEVERS.md, section "PADDING
TRAPS". Trap-and-last-in-subsegment =>
needs a pad subsegment. Trap-and-interior => the `c` subsegment is really two
translation units and the boundary is wrong.

UPDATE 2 (wave 14): 'benign' is ALSO position-dependent, and for the same
reason. The "a 1-3 nop tail is put straight back by the 16-byte alignment"
derivation only holds for the LAST function of a translation unit; nothing
re-aligns inside one IDO object, so an INTERIOR 1-3 nop tail marks an object
boundary just as a 4+ word tail does. Read the verdict together with position:

    last in `c` subsegment  + trap   -> add a `pad` subsegment
    last in `c` subsegment  + benign -> genuinely harmless
    interior                + either -> the `c` subsegment is two TUs; split it

and when the residue is exactly align16(end) - end, splitting is the WHOLE fix:
kirby.ld's SUBALIGN(16) emits the fill and a `pad` entry would double it.
Twelve functions were converted this way in wave 14, PAD 0 for seven of them.
"""

ALIGN_WORDS = 4          # .text aligns to 16 bytes; measured, see above.

import re

WORD = re.compile(r'^\s*/\* \w+ \w+ ([0-9A-Fa-f]{8}) \*/\s*\S', re.M)


def classify(listing_path, func):
    try:
        txt = open(listing_path).read()
    except OSError:
        return 'clean', 0
    # The `.size` that closes THIS function, not whatever `.size` happens to be
    # last in the file.
    m = None
    for m in re.finditer(rf'^\.size\s+{re.escape(func)}\s*,', txt, re.M):
        pass
    if m is None:
        return 'clean', 0
    tail = txt[m.end():]
    tail = tail[tail.find('\n') + 1:]
    words = WORD.findall(tail)
    if not words:
        return 'clean', 0
    if all(int(w, 16) == 0 for w in words) and len(words) < ALIGN_WORDS:
        return 'benign', len(words)
    return 'trap', len(words)
