#include <ultra64.h>
#include <macros.h>
#include "libn_audio_2.h"

void alCSPSetVol(ALCSPlayer *seqp, s16 vol) {
    N_ALEvent evt;

    evt.type = AL_SEQP_VOL_EVT;
    evt.msg.spvol.vol = vol;

    n_alEvtqPostEvent(&((N_CSPlayer *) seqp)->evtq, &evt, 0);
}
