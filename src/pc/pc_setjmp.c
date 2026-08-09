/* func_800BE320 / func_800BE374 are setjmp and longjmp, hand-written in MIPS
 * assembly. No C can emit them, so unlike everything else in the port's
 * critical path these are not a decompilation target: leaving them as
 * `#pragma GLOBAL_ASM` is correct for the matching build, and the port has to
 * supply its own. `game_tick` is the only caller of the setjmp half.
 *
 * The N64 originals:
 *
 *   func_800BE320(buf)       cfc1 $v0,$31 / sw $ra,$sp,$fp,$s0-$s7 /
 *                            sdc1 $f20..$f30 / return 0
 *   func_800BE374(buf, val)  the exact inverse, then jr $ra
 *
 * WHY THIS IS ASSEMBLY AND NOT A WRAPPER
 *
 * Two C approaches look reasonable and both are wrong, for the same reason:
 *
 *   - Calling the host's setjmp() inside a wrapper saves the WRAPPER's frame,
 *     not the caller's. glibc's jmp_buf is also 200 bytes and the game's
 *     buffer is 0x6C, so it does not even fit.
 *   - ucontext has the identical flaw. I built that version first, on the
 *     reasoning that getcontext/setcontext save the stack pointer and so
 *     survive being called from a wrapper. They do save it -- and what they
 *     save is still the wrapper's frame, which has returned by the time
 *     anything longjmps, and whose stack memory the longjmp call itself is
 *     busy overwriting. It failed exactly as a wrapped setjmp would: the
 *     transfer did not happen and setcontext returned.
 *
 * The primitive has to BE the function the game calls, saving the state of
 * whoever called it. That is what these do. 8 quadwords is 64 bytes and fits
 * the game's 0x6C buffer with room to spare.
 *
 * Layout (System V AMD64 callee-saved set, plus sp and the return address):
 *
 *   +0x00 rbx   +0x08 rbp   +0x10 r12   +0x18 r13
 *   +0x20 r14   +0x28 r15   +0x30 rsp   +0x38 return address
 *
 * The x87/SSE control words are deliberately not saved. The MIPS original
 * saves FCSR because the N64 code changes rounding modes; nothing in the port
 * does, and restoring a stale MXCSR would be a way to introduce a bug rather
 * than avoid one.
 *
 * This is x86-64 System V only. A port to another architecture needs its own
 * block here, which is the honest cost of the primitive being architectural.
 */
#include <ultra64.h>

#include "pc/pc_platform.h"

#if !defined(__x86_64__)
#error "pc_setjmp.c implements setjmp/longjmp in x86-64 System V assembly; \
this target needs its own version."
#endif

__asm__(
    ".text\n"
    ".globl func_800BE320\n"
    ".type  func_800BE320, @function\n"
    "func_800BE320:\n"
    "    movq %rbx,  0x00(%rdi)\n"
    "    movq %rbp,  0x08(%rdi)\n"
    "    movq %r12,  0x10(%rdi)\n"
    "    movq %r13,  0x18(%rdi)\n"
    "    movq %r14,  0x20(%rdi)\n"
    "    movq %r15,  0x28(%rdi)\n"
    /* the caller's rsp is ours plus the return address we were pushed */
    "    leaq 8(%rsp), %rax\n"
    "    movq %rax,  0x30(%rdi)\n"
    "    movq (%rsp), %rax\n"
    "    movq %rax,  0x38(%rdi)\n"
    "    xorl %eax, %eax\n"
    "    ret\n"
    ".size func_800BE320, .-func_800BE320\n"

    ".globl func_800BE374\n"
    ".type  func_800BE374, @function\n"
    "func_800BE374:\n"
    "    movq 0x00(%rdi), %rbx\n"
    "    movq 0x08(%rdi), %rbp\n"
    "    movq 0x10(%rdi), %r12\n"
    "    movq 0x18(%rdi), %r13\n"
    "    movq 0x20(%rdi), %r14\n"
    "    movq 0x28(%rdi), %r15\n"
    "    movq 0x38(%rdi), %rdx\n"   /* return address */
    "    movq 0x30(%rdi), %rsp\n"   /* caller's stack, frame intact */
    /* C requires longjmp(buf, 0) to make setjmp return 1. */
    "    movl %esi, %eax\n"
    "    testl %eax, %eax\n"
    "    jne 1f\n"
    "    movl $1, %eax\n"
    "1:  jmp *%rdx\n"
    ".size func_800BE374, .-func_800BE374\n"
);
