#include <ultra64.h>
#include <macros.h>
#include "libn_audio_2.h"

/* alCSPSetSeq was its own object in libn_audio.a, so it starts on a 16-byte
 * boundary (0x8002CD60) and its object is padded out to the next one
 * (0x8002CDA0) by IDO's .text padding.  It lives in its own C file for exactly
 * that reason -- see the tail of src/main/libn_audio_2.c.  Keeping it inside
 * libn_audio_2.c cost the 12 bytes of leading fill and made __alSeqNextDelta
 * unconvertible. */
void alCSPSetSeq(ALCSPlayer *seqp, ALCSeq *seq) {
    N_ALEvent evt;

    evt.type = AL_SEQP_SEQ_EVT;
    evt.msg.spseq.seq = seq;

    n_alEvtqPostEvent(&((N_CSPlayer *) seqp)->evtq, &evt, 0);
}
