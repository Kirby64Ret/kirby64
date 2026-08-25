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

/* SEALED 2026-08-25 (19 insns).  Upstream shape is libnaudio/n_cspgetchlvol.c.
 * The 1-word post-.size tail in its listing is the alignment gap in front of
 * func_8002D120, which was its own libn_audio.a object; un-guarding this used
 * to leave the TU 4 bytes short.  func_8002D120 now lives in
 * src/main/libn_audio_2f2.c with its own `c` subsegment at 0x2DD20, so IDO's
 * 16-byte .text padding emits that word as this object's tail
 * (libn_audio_2f.o .text = 0x80). */
u8 func_8002D0D0(KCSPlayer *seqp, u8 chan) {
    return (seqp->chanState[chan].unk09 * seqp->chanState[chan].unk11) / 0x7F;
}

/* func_8002D120 followed here until 2026-08-25; see libn_audio_2f2.c. */
