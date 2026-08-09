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

  * an all-`nop` tail is 0x00000000 repeated, which is byte-identical to the
    zero fill the assembler emits for end-of-.text alignment. Dropping it
    changes nothing, and the byte-exact ROM proves it: ovl7_14 and ovl7_16 both
    sat converted with 3-nop tails while sha1 matched.
    Fixed by classifying a zero-only tail as BENIGN.

A tail with any NON-ZERO word is the real trap: those bytes exist nowhere else
and no alignment pad will reproduce them.

classify() -> ('trap' | 'benign' | 'clean', n_words)
"""
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
    if all(int(w, 16) == 0 for w in words):
        return 'benign', len(words)
    return 'trap', len(words)
