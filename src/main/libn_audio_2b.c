#include <ultra64.h>
#include <macros.h>
#include "libn_audio_2.h"

/* n_alSynSetPitch was its own object in libn_audio.a: its listing carries two
 * trailing nops that are the LINKER's fill up to the next object's 16-byte
 * alignment, not instructions.  As its own translation unit SUBALIGN(16) emits
 * them and the function is plain C. */
void n_alSynSetPitch(N_ALVoice *v, f32 pitch) {
    KParam *update;

    if (v->pvoice) {
        update = __n_allocParam();
        if (update == 0) {
            return;
        }

        update->delta = n_syn->paramSamples + ((KPVoice *) v->pvoice)->offset;
        update->type = 7;
        update->data.f = pitch;
        update->next = 0;

        n_alEnvmixerParam((KPVoice *) v->pvoice, 3, update);
    }
}
