/* Host entry point for the native build.
 *
 * The N64 binary has no main(): the boot ROM jumps to EntryPoint, which sets
 * up the stack and starts the idle thread. EntryPoint is still assembly, so
 * for now this just calls it and the stub layer reports it as unimplemented --
 * which is the correct first answer, and the point of being able to run at all.
 *
 * When the boot path is decompiled or replaced, this is where the host-side
 * setup (window, audio device, ROM file) goes before handing over.
 */
#include <stdio.h>

extern void cboot(void);
extern void pc_stub_report(void);

/* asm/entry.s does two things: zero 0x589B0 bytes of RAM starting at
   gEntryStack, then jump to cboot with $sp pointing into gIdleThread.
   Neither survives the port. The host C runtime already zeroes statics, and
   the stack belongs to the host thread, so the faithful equivalent of the
   whole routine is the tail call. Defining it here (strongly) overrides the
   weak stub. */
void EntryPoint(void) {
    cboot();
}

int main(int argc, char **argv) {
    (void)argc;
    (void)argv;
    printf("kirby64-pc: entering game\n");
    fflush(stdout);
    EntryPoint();
    /* Only reached under KIRBY_PC_TRACE=1, where a missing symbol logs and
       returns instead of exiting. */
    pc_stub_report();
    return 0;
}
