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

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2e/func_8002CFE4.s")

void n_alSynDelete(void) {
    n_syn->head = 0;
    n_syn->n_seqp1 = NULL;
    n_syn->n_seqp2 = NULL;
    n_syn->n_sndp = NULL;
}
