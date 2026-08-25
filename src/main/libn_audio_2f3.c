#include <ultra64.h>
#include <macros.h>
#include "libn_audio_2.h"

void func_8002D180(ALCSPlayer *seqp) {
    N_ALEvent evt;

    evt.type = AL_SEQP_STOPPING_EVT;

    n_alEvtqPostEvent(&((N_CSPlayer *) seqp)->evtq, &evt, 0);
}

/* upstream libnaudio/n_synfreevoice.c n_alSynFreeVoice; N_ALFreeParam's
 * `pvoice` sits at 0xC, where KParam has its `data` union. */
typedef struct {
    /* 0x00 */ struct KParam_s *next;
    /* 0x04 */ s32     delta;
    /* 0x08 */ s16     type;
    /* 0x0C */ KPVoice *pvoice;
} KFreeParam;

void func_800275C0(KPVoice *pvoice);

void func_8002D1B0(N_ALVoice *voice) {
    KFreeParam *update;

    if (voice->pvoice) {
        if (((KPVoice *) voice->pvoice)->offset) {
            update = (KFreeParam *) __n_allocParam();
            if (update != 0) {
                update->delta = n_syn->paramSamples + ((KPVoice *) voice->pvoice)->offset;
                update->type = 0;
                update->pvoice = (KPVoice *) voice->pvoice;

                n_alEnvmixerParam((KPVoice *) voice->pvoice, 3, update);
            }
        } else {
            func_800275C0((KPVoice *) voice->pvoice);
        }
        voice->pvoice = 0;
    }
}
