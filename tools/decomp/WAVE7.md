# Wave 7 brief

Read `tools/decomp/AGENT_GUIDE.md` FIRST and in full. It is the accumulated
result of six waves and every rule in it was paid for. The "Wave 6 levers"
section at the end is the newest and the most immediately useful.

## The job

Convert `#pragma GLOBAL_ASM` functions in YOUR ASSIGNED SEGMENTS into C that
compiles to byte-identical machine code. 1834 pragmas remain; 32 of those are
provably impossible (real padding traps), so the target is the other 1802.

## Rules that are not negotiable

**Stay in your segments.** Other agents are working the same tree at the same
time. Editing a file outside your assignment will collide with them and the
loss is silent.

**Never run `git stash`, `git checkout -- <path>`, `git clean`, or `git
reset`** on anything you did not create in this session. An earlier wave lost
~394 finished functions to a single `git stash`. If you need to undo your own
edit, keep your own backup copy and restore from that.

**Do not commit.** The coordinator commits. Report what you changed.

**Build with `tools/decomp/mk.sh`, never bare `make`.** It takes the build
lock. Two concurrent makes in this tree produced a corrupt object last wave
(`bad reloc symbol index ... for offset 0x8080808`) that looked exactly like a
decompilation defect.

## The gate — a function is done only when ALL of these pass

    tools/decomp/mk.sh                          # build/kirby.us.z64: OK
    python3 tools/decomp/verify.py <file.c> --all      # 0 diff
    python3 tools/decomp/check_tu_size.py             # 0
    python3 tools/decomp/check_layout.py <seg>        # 0
    python3 tools/decomp/check_sections.py            # 0
    python3 tools/decomp/verify_rom.py <seg>          # 0 REAL defects

`verify_rom.py` is the arbiter, not verify.py. verify.py masks relocations, so
it both misses real defects and reports false ones (see the guide). The ROM's
sha1 is `6cea2d46b929a3bb347b060a77fccc83526fb855`; if your build says OK, the
whole tree is byte-exact.

If the build breaks and you did not expect it, run `verify_rom.py` with no
arguments first: its per-segment breakdown will tell you in seconds whether
the break is yours or another agent's mid-edit file.

## Picking targets

The vein that produced 22 first-compile matches last wave:

    pad == 0, no jlabel, no 'rodata' anywhere in the .s, <= 1 branch

That is straight-line entity setup/init. Work it out before reaching for
anything harder. Then widen to 2-4 branches.

Before starting any function, classify its listing:

    import sys; sys.path.insert(0, 'tools/decomp'); import padtrap
    padtrap.classify('asm/nonmatchings/<seg>/<file>/<func>.s', '<func>')

`'trap'` means skip it permanently. `'benign'` and `'clean'` are both ordinary
work. Do not hand-roll this check; the obvious version of it is wrong in two
different ways and previously condemned 71 perfectly convertible functions.

## When a function will not close

Guard the draft and move on — there are 1800 targets and no single one is
worth more than about half an hour:

    #ifdef MIPS_TO_C
    <your draft, INCLUDING any prototypes it needs>
    #else
    #pragma GLOBAL_ASM("asm/nonmatchings/...")
    #endif

Keep the draft's declarations inside the dead branch: hoisting a prototype out
of one changed the register allocation of already-matched functions elsewhere
in the same file (+16 bytes, invisible to verify.py). And check you have not
nested a guard inside an existing one — that quietly activates your C and
disables the pragma.

Record the diff count in a comment so the next wave knows where it stood.

## Report

Number matched, per file. Any NEW structural lever you found, stated as a rule
with the function that proved it — those go into the guide and compound across
waves. Any floor you confirmed, so nobody re-litigates it.
