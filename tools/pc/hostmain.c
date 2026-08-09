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

extern void EntryPoint(void);

int main(int argc, char **argv) {
    (void)argc;
    (void)argv;
    printf("kirby64-pc: entering game\n");
    fflush(stdout);
    EntryPoint();
    return 0;
}
