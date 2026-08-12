#ifndef LIBN_AUDIO_2_H
#define LIBN_AUDIO_2_H

/* Shared declarations for the run of n_audio library objects that follows
 * src/main/libn_audio_2.c.  Each of those objects was its own .o in
 * libn_audio.a, so each one ends on a 16-byte boundary; they are split into one
 * C file per object (libn_audio_2b .. libn_audio_2f) and kirby.ld's
 * SUBALIGN(16) supplies the inter-object fill the ROM has.  Splitting is what
 * unblocks them: as one translation unit a C definition cannot emit the
 * trailing nops, and the TU came out 40 bytes short. */

#include <ultra64.h>
#include <PR/n_libaudio.h>

typedef struct {
    /* 0x00 */ u8  pad00[0x88];
    /* 0x88 */ s32 offset;
} KPVoice;

typedef struct KParam_s {
    /* 0x00 */ struct KParam_s *next;
    /* 0x04 */ s32 delta;
    /* 0x08 */ s16 type;
    /* 0x0C */ union {
        f32 f;
        s32 i;
    } data;
    /* 0x10 */ union {
        f32 f;
        s32 i;
    } moredata;
} KParam;

KParam *__n_allocParam(void);
s32 n_alEnvmixerParam(KPVoice *p, s32 paramID, void *param);

/* Kirby's N_ALCSPlayer differs from the stock SDK layout; only evtq is used. */
typedef struct {
    u8                  unk00[0x50];
    ALEventQueue        evtq;
} N_CSPlayer;

void n_alEvtqPostEvent(ALEventQueue *evtq, N_ALEvent *evt, ALMicroTime delta);

#endif
