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
/* AND IT MUST GIVE auBGMPlayers[] SOMETHING TO POINT AT.
 *
 * auCreatePlayers -- still a #pragma, 0x548 bytes of n_alInit, n_alCSPNew and
 * heap carving -- is what fills that array in. Without it both entries are
 * NULL, and the first thing the game does after the rumble thread replies is
 *
 *     game.c:161  auSetBGMVolume(0, 0x7800)
 *     audio.c:612 alCSPSetVol(auBGMPlayers[0], vol)
 *     libn_audio_2.c:788  n_alEvtqPostEvent(&((N_CSPlayer *) seqp)->evtq, ...)
 *
 * which dereferences 0x50 and takes SIGSEGV inside the audio library, five
 * frames from anything that looks like a port problem.
 *
 * A zeroed block is enough, and that is not luck -- it is how the library is
 * written. n_alEvtqPostEvent's first act is `item = evtq->freeList.next; if
 * (!item) return;`, so an empty event queue swallows every event instead of
 * corrupting anything, and the rest of the BGM API is posts and field reads.
 * So the whole audio API becomes inert rather than fatal, which is the honest
 * state of audio in this port anyway.
 *
 * Sized far larger than N_ALCSPlayer needs (~0xB0) on purpose: nothing here
 * knows which of the several player structs the game will cast this to, and a
 * stand-in that is merely generous cannot be the thing that walks off the end.
 * u64 elements so the alignment is right for any member. */
static u64 sBgmPlayerStorage[2][0x400 / sizeof(u64)];

extern void *auBGMPlayers[2];

/* THE SAME PROBLEM, FOR THE REST OF auCreatePlayers' OUTPUT.
 *
 * auCreatePlayers does not only build the players; it carves a set of
 * per-sound and per-BGM-player arrays out of auHeap and leaves the game
 * holding POINTERS to them. Every one of those pointers is NULL in this build,
 * and the game indexes them without checking -- `auBGMPlayerStatus[playerId] =
 * 1` in auStopSong is a store through NULL, reached from play_music on the
 * game thread's first trip into ovl4.
 *
 * These get static storage instead of heap storage. The array LENGTHS are the
 * one thing that matters: they are set by auCurrentSettings.numSounds, which
 * this stand-in cannot compute, so each is sized past any plausible value
 * rather than exactly. Over-allocating a stand-in is free; under-allocating it
 * is a heap smash that would look like a decompilation bug.
 *
 * Deliberately NOT filled in: auSeqBank, auSeqFile, auSoundPlayer, auSFXPlayer
 * and auBGMSequences. Those are content, not scratch -- code tests them for
 * NULL and takes the "no audio loaded" path, which is the truth here. Handing
 * out a zeroed block instead would send the game down the "audio is ready"
 * path into data that is not there. */
#define PC_AU_MAX_SOUNDS 256

static u8 sSoundPriority[PC_AU_MAX_SOUNDS];
static u8 sSoundIdleCounter[PC_AU_MAX_SOUNDS];
static f32 sSoundPitch[PC_AU_MAX_SOUNDS];
static u16 sSoundVolume[PC_AU_MAX_SOUNDS];
static u8 sSoundPan[PC_AU_MAX_SOUNDS];
static u8 sSoundReverbAmt[PC_AU_MAX_SOUNDS];
static u8 sBgmPlayerStatus[8];
static s32 sBgmSongId[8];
static u8 sBgmSeqData[2][0x4000];

extern u8 *auSoundPriority;
extern u8 *auSoundIdleCounter;
extern f32 *auSoundPitch;
extern u16 *auSoundVolume;
extern u8 *auSoundPan;
extern u8 *auSoundReverbAmt;
extern u8 *auBGMPlayerStatus;
extern s32 *auBGMSongId;
extern u8 *auBGMSeqData[2];

static void pc_au_stand_in_state(void) {
    auBGMPlayers[0] = &sBgmPlayerStorage[0][0];
    auBGMPlayers[1] = &sBgmPlayerStorage[1][0];

    auSoundPriority = sSoundPriority;
    auSoundIdleCounter = sSoundIdleCounter;
    auSoundPitch = sSoundPitch;
    auSoundVolume = sSoundVolume;
    auSoundPan = sSoundPan;
    auSoundReverbAmt = sSoundReverbAmt;

    auBGMPlayerStatus = sBgmPlayerStatus;
    auBGMSongId = sBgmSongId;
    auBGMSeqData[0] = sBgmSeqData[0];
    auBGMSeqData[1] = sBgmSeqData[1];
}

static OSMesgQueue sTickMQ;
static OSMesg sTickMsg[8];
static SCClient sClient;

void auThreadMain(void *arg) {
    OSMesg m;

    (void)arg;

    auInit();

    /* Before the osSendMesg below, which is what releases thread5_game. */
    pc_au_stand_in_state();

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
