#include <ultra64.h>
#include <macros.h>
#include "libn_audio_2.h"

void alCSPPlay(ALCSPlayer *seqp) {
    N_ALEvent evt;

    evt.type = AL_SEQP_PLAY_EVT;

    n_alEvtqPostEvent(&((N_CSPlayer *) seqp)->evtq, &evt, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2f/func_8002D0D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2f/func_8002D120.s")

void func_8002D180(ALCSPlayer *seqp) {
    N_ALEvent evt;

    evt.type = AL_SEQP_STOPPING_EVT;

    n_alEvtqPostEvent(&((N_CSPlayer *) seqp)->evtq, &evt, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2f/func_8002D1B0.s")
