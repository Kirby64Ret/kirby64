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
 * SEALED 2026-08-25 (34 insns).  The 1-word post-.size tail in its listing is
 * the alignment gap in front of n_alSynDelete, which was its own object in
 * libn_audio.a -- so un-guarding this used to leave the TU 4 bytes short.  The
 * fix asked for in the old note is now applied: n_alSynDelete moved to
 * src/main/libn_audio_2e2.c with its own `c` subsegment at 0x2DC70, and IDO's
 * 16-byte .text padding emits the missing word as this object's tail
 * (libn_audio_2e.o .text = 0x130, all of it accounted for).  This file is now
 * pragma-free. */
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

/* n_alSynDelete followed here until 2026-08-25.  It was its own libn_audio.a
 * object, so it starts on a 16-byte boundary and the fill in front of it has to
 * come from THIS object's .text padding; that only works with the two in
 * separate C files.  See src/main/libn_audio_2e2.c. */
