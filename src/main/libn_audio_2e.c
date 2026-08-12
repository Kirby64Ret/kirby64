#include <ultra64.h>
#include <macros.h>
#include "libn_audio_2.h"

/* The `< 0` tests on the u8 parameters are upstream n_alSynSetFXMix's; IDO does
 * not fold them away and the ROM has the dead bgez/negu pair for each. */
void func_8002CF40(N_ALVoice *v, u8 arg1, u8 arg2) {
    KParam *update;

    if (v->pvoice) {
        update = __n_allocParam();
        if (update == 0) {
            return;
        }

        update->delta = n_syn->paramSamples + ((KPVoice *) v->pvoice)->offset;
        update->type = 0x11;
        if (arg1 < 0) {
            update->data.i = -arg1;
        } else {
            update->data.i = arg1;
        }
        if (arg2 < 0) {
            update->moredata.i = -arg2;
        } else {
            update->moredata.i = arg2;
        }
        update->next = 0;

        n_alEnvmixerParam((KPVoice *) v->pvoice, 3, update);
    }
}

/* Near-clone of func_8002CF40 above (one parameter instead of two, type 0x10):
 * upstream n_alSynSetPan.  The `< 0` test on the u8 parameter is upstream's and
 * the ROM has the dead bgez/negu pair, same as its twin.
 *
 * MATCHES byte-for-byte (34 insns, first compile), but it is INTERIOR to the
 * libn_audio_2e subsegment and its listing has a 1-word post-.size tail, so
 * un-guarding it shortens the TU by 4 bytes.  It was its own object in
 * libn_audio.a: split the `c` subsegment at 0x2DC70 (PAD 0 -- SUBALIGN(16)
 * emits the residue) and this file becomes pragma-free.  This lane does not own
 * kirby64.yaml. */
#ifdef NON_MATCHING
void func_8002CFE4(N_ALVoice *v, u8 arg1) {
    KParam *update;

    if (v->pvoice) {
        update = __n_allocParam();
        if (update == 0) {
            return;
        }

        update->delta = n_syn->paramSamples + ((KPVoice *) v->pvoice)->offset;
        update->type = 0x10;
        if (arg1 < 0) {
            update->data.i = -arg1;
        } else {
            update->data.i = arg1;
        }
        update->next = 0;

        n_alEnvmixerParam((KPVoice *) v->pvoice, 3, update);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2e/func_8002CFE4.s")
#endif

void n_alSynDelete(void) {
    n_syn->head = 0;
    n_syn->n_seqp1 = NULL;
    n_syn->n_seqp2 = NULL;
    n_syn->n_sndp = NULL;
}
