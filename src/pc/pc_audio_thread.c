/* A port-only auThreadMain, so the game can reach the renderer.
 *
 * WHY THIS EXISTS
 *
 * The renderer works -- Fast3D executes display lists submitted through
 * osSpTaskStartGo, proven at 59.9 Hz with a synthetic list built from the
 * game's own <PR/gbi.h>. But the GAME never reaches it, and the reason is one
 * function:
 *
 *     main.c   osCreateThread(&gAudioThread, 4, auThreadMain, ...)
 *     audio.c  thread5_game blocks on gThreadInitializedMQ
 *     asm      auThreadMain: auInit, auLoadAssets, auCreatePlayers,
 *              then osSendMesg(&gThreadInitializedMQ, (OSMesg)1, NOBLOCK)
 *
 * auThreadMain is still a #pragma GLOBAL_ASM, so the native build gets a weak
 * abort-on-call stub that returns without posting. thread5_game therefore
 * blocks forever, gtlInit() is never called, and not one display list is ever
 * built. Everything downstream of that -- the whole rendering path, and every
 * Kirby-specific RDP question the port still has to answer -- is unreachable
 * behind a single undecompiled function.
 *
 * This posts that message so the rest of the game can run.
 *
 * WHAT IT DELIBERATELY DOES NOT DO
 *
 * It is not an implementation of auThreadMain and must never be mistaken for
 * one. The real function's audio loop -- alAudioFrame, osAiSetNextBuffer, the
 * task queue -- is absent, so THERE IS NO SOUND. auLoadAssets, auCreatePlayers
 * and alAudioFrame are all still pragmas anyway, so calling them here would
 * only reach their abort stubs.
 *
 * auInit IS decompiled and is called, because it initialises state the rest of
 * the game reads. If it turns out to depend on something not yet present, the
 * call is the first thing to drop.
 *
 * This file disappears on its own: the moment auThreadMain is decompiled, the
 * real definition and this one both become strong symbols and the link fails
 * loudly rather than silently preferring the wrong one. That is intentional --
 * a duplicate-symbol error is the correct way to be told this scaffolding has
 * outlived its purpose. Delete the file at that point.
 */
#include <ultra64.h>
#include <stddef.h>

#include "pc/pc_platform.h"

extern OSMesgQueue gThreadInitializedMQ;
extern void auInit(void);

/* Blocking here rather than spinning matters: os_thread.c runs every N64
   thread as a ucontext on one host thread, so a spin would starve the
   scheduler and nothing else would ever run. Waiting on a queue nothing ever
   posts to parks this thread in the same way the real audio loop parks
   waiting for its task to retire. */
static OSMesgQueue sIdleMQ;
static OSMesg sIdleMsg[1];

void auThreadMain(void *arg) {
    (void)arg;

    auInit();

    /* The argument values are the ROM's own, read off the listing:
       addiu $a1, $zero, 1 and or $a2, $zero, $zero. */
    osSendMesg(&gThreadInitializedMQ, (OSMesg)1, OS_MESG_NOBLOCK);

    osCreateMesgQueue(&sIdleMQ, sIdleMsg, 1);
    for (;;) {
        OSMesg m;
        osRecvMesg(&sIdleMQ, &m, OS_MESG_BLOCK);
    }
}
