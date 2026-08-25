#include <ultra64.h>
#include <macros.h>
#include "libn_audio_2.h"

typedef struct {
    /* 0x00 */ u8   pad00[0x24];
    /* 0x24 */ void *fx_array[1];
} KAuxBus;

void func_8002A508(void *fx, ALSynConfig *c, ALHeap *hp);

/* SEALED 2026-08-25 (22 insns).  Upstream libnaudio/n_synallocfx.c
 * n_alSynAllocFX; func_8002A508 is n_alFxNew.  Its listing's 2-word post-.size
 * tail is the alignment gap in front of func_8002D180, which was the next
 * libn_audio.a object -- so this function needs a C file of its own for IDO's
 * .text padding to emit those two words (libn_audio_2f2.o .text = 0x60). */
void *func_8002D120(s16 bus, ALSynConfig *c, ALHeap *hp) {
    func_8002A508(&((KAuxBus *) n_syn->auxBus)->fx_array[bus], c, hp);
    return ((KAuxBus *) n_syn->auxBus)->fx_array[bus];
}
