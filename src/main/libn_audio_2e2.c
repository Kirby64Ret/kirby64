#include <ultra64.h>
#include <macros.h>
#include "libn_audio_2.h"

/* n_alSynDelete was its own object in libn_audio.a (0x8002D070), so it starts
 * on a 16-byte boundary.  It lives in its own C file so that the word of fill
 * in front of it is emitted as libn_audio_2e.o's .text padding -- which is what
 * let func_8002CFE4 there be un-guarded.  See the note beside it. */
void n_alSynDelete(void) {
    n_syn->head = 0;
    n_syn->n_seqp1 = NULL;
    n_syn->n_seqp2 = NULL;
    n_syn->n_sndp = NULL;
}
