#include <ultra64.h>
#include <macros.h>
#include "libn_audio_2.h"

void func_8002CE20(N_CSPlayer *seqp, ALBank *b, u8 kind) {
    N_ALEvent evt;

    if (kind == 0) {
        evt.type = AL_SEQP_BANK_EVT;
        evt.msg.spbank.bank = b;
        n_alEvtqPostEvent(&seqp->evtq, &evt, 0);
    } else if (kind == 1) {
        evt.type = 24;
        evt.msg.spbank.bank = b;
        n_alEvtqPostEvent(&seqp->evtq, &evt, 0);
    } else if (kind == 2) {
        evt.type = 25;
        evt.msg.spbank.bank = b;
        n_alEvtqPostEvent(&seqp->evtq, &evt, 0);
    }
}

void func_8002CEC0(N_CSPlayer *seqp, ALBank *b) {
    N_ALEvent evt;

    evt.type = AL_SEQP_BANK_EVT;
    evt.msg.spbank.bank = b;

    n_alEvtqPostEvent(&seqp->evtq, &evt, 0);
}
