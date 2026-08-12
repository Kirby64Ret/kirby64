#include <ultra64.h>
#include <macros.h>
#include "libn_audio_2.h"

void alCSPPlay(ALCSPlayer *seqp) {
    N_ALEvent evt;

    evt.type = AL_SEQP_PLAY_EVT;

    n_alEvtqPostEvent(&((N_CSPlayer *) seqp)->evtq, &evt, 0);
}

typedef struct {
    /* 0x00 */ u8 pad00[0x9];
    /* 0x09 */ u8 unk09;
    /* 0x0A */ u8 pad0A[0x7];
    /* 0x11 */ u8 unk11;
    /* 0x12 */ u8 pad12[0x6];
} KChanState; /* 0x18 */

typedef struct {
    /* 0x00 */ u8 pad00[0x68];
    /* 0x68 */ KChanState *chanState;
} KCSPlayer;

/* MATCHES, but its listing has a 1-word post-.size tail and it is INTERIOR to
 * the libn_audio_2f subsegment, so un-guarding it shortens the TU by 4 bytes:
 * this was its own object in libn_audio.a and the `c` subsegment has to be
 * split at 0x2DD20 first (PAD 0 -- SUBALIGN(16) emits the residue).  This lane
 * does not own kirby64.yaml.  Upstream shape is libnaudio/n_cspgetchlvol.c. */
#ifdef NON_MATCHING
u8 func_8002D0D0(KCSPlayer *seqp, u8 chan) {
    return (seqp->chanState[chan].unk09 * seqp->chanState[chan].unk11) / 0x7F;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2f/func_8002D0D0.s")
#endif

typedef struct {
    /* 0x00 */ u8   pad00[0x24];
    /* 0x24 */ void *fx_array[1];
} KAuxBus;

void func_8002A508(void *fx, ALSynConfig *c, ALHeap *hp);

/* Same story: 2-word tail, interior, needs the subsegment split at 0x2DD80.
 * Upstream libnaudio/n_synallocfx.c n_alSynAllocFX; func_8002A508 is n_alFxNew. */
#ifdef NON_MATCHING
void *func_8002D120(s16 bus, ALSynConfig *c, ALHeap *hp) {
    func_8002A508(&((KAuxBus *) n_syn->auxBus)->fx_array[bus], c, hp);
    return ((KAuxBus *) n_syn->auxBus)->fx_array[bus];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2f/func_8002D120.s")
#endif

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
