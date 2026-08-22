# Re-foundation recipe: decomp-first, port-second

Repo: /home/user/kirby64_decomp. The N64 matching build is byte-exact and the
authority. Rule: a function may only carry a PORT implementation if the decomp
is solved first — MATCHED (preferred) or a verified near-miss draft flagged
for the permuter factory.

## Per-function pipeline

Target sites are `#pragma GLOBAL_ASM(...)` sites that currently carry a PORT
arm (`#ifdef PORT` or `#elif defined(PORT)`), possibly with an old
`#ifdef MIPS_TO_C` sketch above.

1. READ tools/decomp/LEVERS.md FIRST. It is the matching playbook; every
   lever in it is measured. Also screen the padding traps section against
   your function's `.s` tail before starting.
2. Derive the N64 draft from the ASSEMBLY:
   `python3 tools/m2ctx.py <file.c>` (ctx.c at repo root -> copy to /tmp,
   DELETE ctx.c), then
   `python3 /workspace/m2c/m2c.py --target mips-ido-c --context /tmp/ctx_X.c -f <func> <asm.s>`
   (add the overlay rodata .s for jump tables). If an old MIPS_TO_C sketch
   exists at the site, start from it, but re-verify every line against the asm.
   NEVER copy the PORT arm's body — it contains LP64-isms (widened 8-byte anim
   cells, host struct offsets, pc_probe_* calls, uintptr_t) that are WRONG for
   the N64. The PORT arm is a semantics reference only.
3. Place the draft guarded at the site, N64 spelling only:
     #ifdef MIPS_TO_C
     <draft — all externs/prototypes it needs go INSIDE the function/guard>
     #elif defined(PORT)
     <the existing PORT arm, unchanged>
     #else
     #pragma GLOBAL_ASM(...)
     #endif
4. Verify: `python3 tools/decomp/verify.py src/<file>.c <func>` (from repo
   root). Iterate with LEVERS levers. Time-box: if after ~6 focused compile
   iterations the residue is register-shaped (regalloc/one-slot rotation/
   callee-saved permutation), STOP — leave the guarded draft with a comment
   `/* FACTORY: <matched>/<total>, <residue kind> */` above the function and
   move on. That is a success (permuter fuel), not a failure.
5. On MATCH (verify.py prints MATCH for the function):
   a. Screen the tail (LAST `.size` anchor; trailing nops = padding trap —
      if trapped, do NOT un-guard; keep the guarded MATCH with a
      `/* FACTORY: MATCH, padding-trapped TU */` note and report it).
   b. If clean: un-guard — the draft becomes the PLAIN shared function, the
      pragma is deleted. Then reconcile the PORT side:
      - If the matched C is LP64-clean as-is (no N64-only offsets/strides,
        pointers via declared types): DELETE the old PORT arm entirely.
      - Else: keep the divergence MINIMAL — `#ifdef PORT` only around the
        divergent lines inside the matched function, or if unavoidable a
        full `#ifdef PORT variant #else matched C #endif` split.
   c. Re-run `verify.py src/<file>.c --all` and confirm every previously
      matching function in the TU still matches (a new file-scope decl can
      shift codegen — the rules in LEVERS.md apply verbatim).
6. PC compile check after each function:
   `make -f Makefile.pc build/pc/src/<file>.o` (this specific object target
   is the ONLY make invocation you may run).

## Hard rules (from tools/decomp/LEVERS.md, they protect the ROM)

- NEVER run bare `make`, `mk.sh`, or ANY git command. The manager builds and
  commits.
- Never edit an already-matched unguarded function. Weird IS the match.
- Declarations a guarded draft needs go INSIDE the guard.
- Never script/regex-replace a function definition. One function at a time,
  by hand.
- A utilPrintf string must come from that function's own listing `.asciz`.

## Report format

Per function: MATCHED (un-guarded, PORT arm deleted/kept-minimal) |
FACTORY-QUEUED (score, residue kind) | PADDING-TRAPPED (MATCH, needs yaml pad)
| BLOCKED (why). Plus: verify.py --all regression status per file, PC object
build status per file.
