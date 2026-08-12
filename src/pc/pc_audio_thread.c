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

#include "main/localsched.h"

extern OSMesgQueue gThreadInitializedMQ;
extern void auInit(void);
extern s32 auRestarting;
extern s32 auSettingsUpdated;

/* IT MUST CONSUME auRestarting AND auSettingsUpdated, or the game deadlocks.
 *
 * This file used to park on a queue nothing posts to. That looked safe -- it
 * yields, so the cooperative scheduler keeps running -- and it hung the port
 * anyway, in a way worth writing down because the symptom pointed nowhere near
 * the cause.
 *
 * The port reached no unimplemented symbol at all, and still never drew a
 * frame: gGameState stuck at 1, gtlDrawnFrameCounter at 0, sRetraceCount at 0.
 * Attaching to the live process gave the answer in one backtrace --
 *
 *     game_tick -> func_800A2B9C -> func_800A74B0   (ovl1_2_2.c:52)
 *     do { } while (func_80020EB4() != 0);
 *     audio.c: return auRestarting | auSettingsUpdated;
 *
 * -- a busy-wait with NO OS CALL IN THE LOOP. On the N64 the audio thread is
 * preempted in and clears those flags. Here the game thread never re-enters
 * the OS, so pc_pump_events() is never called, so no retrace ever fires, so
 * nothing else runs. One non-yielding spin freezes the whole port.
 *
 * Both flags are only ever SET in decompiled C (audio.c 577, 757, 785).
 * Nothing clears them, because the code that clears them is inside
 * auThreadMain, which is still a #pragma. So this stand-in has to.
 *
 * It parks on a SCHEDULER CLIENT queue rather than a dead one, which is both a
 * real yield and a once-per-retrace wakeup -- the same cadence the real audio
 * loop runs at. A NOBLOCK spin would also work, because osRecvMesg pumps, but
 * it would burn a core to do it.
 *
 * CLEARING THESE WITHOUT DOING THE WORK THEY SIGNAL IS A STAND-IN, NOT AN
 * IMPLEMENTATION. auRestarting means "the audio heap is being rebuilt" and
 * auSettingsUpdated means "re-read the settings"; the real thread does that
 * work and then clears them. There is no audio in the port yet, so there is no
 * work to skip -- but the moment auThreadMain is decompiled this whole file
 * goes away, and until then no audio-state bug found here should be trusted.
 */
static OSMesgQueue sTickMQ;
static OSMesg sTickMsg[8];
static SCClient sClient;

void auThreadMain(void *arg) {
    OSMesg m;

    (void)arg;

    auInit();

    /* The argument values are the ROM's own, read off the listing:
       addiu $a1, $zero, 1 and or $a2, $zero, $zero. */
    osSendMesg(&gThreadInitializedMQ, (OSMesg)1, OS_MESG_NOBLOCK);

    osCreateMesgQueue(&sTickMQ, sTickMsg, 8);
    scAddClient(&sClient, &sTickMQ, sTickMsg, 8);
    for (;;) {
        osRecvMesg(&sTickMQ, &m, OS_MESG_BLOCK);
        auRestarting = 0;
        auSettingsUpdated = 0;
    }
}
