#include <ultra64.h>
#include <macros.h>
#include <PR/n_libaudio.h>
#include "synthInternals.h"
#include <PR/abi.h>

extern N_ALGlobals *n_alGlobals;
extern N_ALSynth *n_syn;
/* 1e+06f = 1e+06f : now emitted by this TU */
/* 1.99996f = 1.99996f : now emitted by this TU */

typedef struct {
    /* 0x00 */ u8  pad00[0x28];
    /* 0x28 */ s16 unk28;
    /* 0x2A */ u8  unk2A;
    /* 0x2B */ u8  pad2B[0x1D];
    /* 0x48 */ s16 unk48;
    /* 0x4A */ u8  pad4A[0x3A];
    /* 0x84 */ s32 unk84;
} KNote;

typedef struct KTone {
    /* 0x00 */ struct KTone *next;
    /* 0x04 */ u8    pad04[0x8];
    /* 0x0C */ KNote *unk0C;
    /* 0x10 */ s16   unk10;
    /* 0x12 */ u8    pad12[0x14];
    /* 0x26 */ s16   unk26;
    /* 0x28 */ KNote *unk28;
    /* 0x2A */ u8    unk2A;
    /* 0x2B */ u8    pad2B[1];
} KTone;

typedef struct {
    /* 0x00 */ u8   pad00[0x1C];
    /* 0x1C */ void **unk1C;
    /* 0x20 */ void **unk20;
    /* 0x24 */ u8   pad24[4];
    /* 0x28 */ u16  unk28;
    /* 0x2A */ u16  unk2A;
    /* 0x2C */ u8   pad2C[0xC];
    /* 0x38 */ void *unk38;
    /* 0x3C */ struct KTone *unk3C;
    /* 0x40 */ struct KTone *unk40;
    /* 0x44 */ u8   pad44[0x18];
    /* 0x5C */ struct KTone *unk5C;
    /* 0x60 */ struct KTone *unk60;
} KAudioMgr;

extern KAudioMgr D_800978E0;

typedef struct N_PVoice_s {
    ALLink                      node;
    struct N_ALVoice_s          *vvoice;
    ADPCM_STATE                 *dc_state;
    ADPCM_STATE                 *dc_lstate;
    ALRawLoop                   dc_loop;
    struct ALWaveTable_s        *dc_table;
    s32                         dc_bookSize;
    ALDMAproc                   dc_dma;
    void                        *dc_dmaState;
    s32                         dc_sample;
    s32                         dc_lastsam;
    s32                         dc_first;
    s32                         dc_memin;
    RESAMPLE_STATE              *rs_state;
    f32                         rs_ratio;
    s32                         rs_upitch;
    f32                         rs_delta;
    s32                         rs_first;
    ENVMIX_STATE                *em_state;
    s16                         em_pan;
    s16                         em_volume;
    s16                         em_cvolL;
    s16                         em_cvolR;
    s16                         em_dryamt;
    s16                         em_wetamt;
    u16                         em_lratl;
    s16                         em_lratm;
    s16                         em_ltgt;
    u16                         em_rratl;
    s16                         em_rratm;
    s16                         em_rtgt;
    s32                         em_delta;
    s32                         em_segEnd;
    s32                         em_first;
    ALParam                     *em_ctrlList;
    ALParam                     *em_ctrlTail;
    s32                         em_motion;
    s32                         offset;
} N_PVoice;


typedef Acmd *(*N_ALCmdHandler)(s32, Acmd *);

typedef struct N_ALFilter_s {
    struct N_ALFilter_s   *source;
    N_ALCmdHandler        handler;
    ALSetParam            setParam;
    s16                   inp;
    s16                   outp;
    s32                   type;
} N_ALFilter;

typedef struct N_ALMainBus_s {
    N_ALFilter           filter;
} N_ALMainBus;

#define N_AL_MAIN_L_OUT         1248
#define N_AL_MAIN_R_OUT         1616
#define N_AL_AUX_L_OUT          1984
#define N_AL_AUX_R_OUT          2352
#define N_AL_DIVIDED            368
#define N_FIXED_SAMPLE          184
#define N_AL_DECODER_IN         368
#define N_AL_TEMP_0             0
#define N_AL_TEMP_1             368
#define N_AL_TEMP_2             736
#define ADPCMFSIZE              16
#define LFSAMPLES               4
#define MIN(a,b) (((a)<(b))?(a):(b))
#define ADPCMFBYTES             9
#define ADPCMVSIZE              8

#define n_aInterleave(pkt)                                              \
{                                                                       \
    Acmd *_a = (Acmd *)pkt;                                             \
                                                                        \
    _a->words.w0 = _SHIFTL(A_INTERLEAVE, 24, 8);                        \
}

#define n_aSaveBuffer(pkt, c, d, s)                                     \
{                                                                       \
    Acmd *_a = (Acmd *)pkt;                                             \
                                                                        \
    _a->words.w0 = (_SHIFTL(A_SAVEBUFF, 24, 8) | _SHIFTL(c, 12, 12)|    \
                    _SHIFTL(d, 0, 12));                                 \
    _a->words.w1 = (unsigned int)(s);                                   \
}

#define n_aLoadBuffer(pkt, c, d, s)                                     \
{                                                                       \
    Acmd *_a = (Acmd *)pkt;                                             \
                                                                        \
    _a->words.w0 = (_SHIFTL(A_LOADBUFF, 24, 8) | _SHIFTL(c, 12, 12)|    \
                    _SHIFTL(d, 0, 12));                                 \
    _a->words.w1 = (unsigned int)(s);                                   \
}

#define n_aLoadADPCM(pkt, c, d)                                         \
{                                                                       \
    Acmd *_a = (Acmd *)pkt;                                             \
                                                                        \
    _a->words.w0 = _SHIFTL(A_LOADADPCM, 24, 8) | _SHIFTL(c, 0, 24);     \
    _a->words.w1 = (unsigned int) d;                                    \
}

#define n_aPoleFilter(pkt, f, g, t, s)                                  \
{                                                                       \
    Acmd *_a = (Acmd *)pkt;                                             \
                                                                        \
    _a->words.w0 = (_SHIFTL(A_POLEF, 24, 8) | _SHIFTL(f, 16, 8) |       \
                    _SHIFTL(g, 0, 16));                                 \
    _a->words.w1 = (_SHIFTL(t, 24, 8) |                                 \
                    _SHIFTL((unsigned int)(s), 0, 24));                 \
}

#define n_aResample(pkt, s, f, p, i, o)                                 \
{                                                                       \
    Acmd *_a = (Acmd *)pkt;                                             \
                                                                        \
    _a->words.w0 = (_SHIFTL(A_RESAMPLE, 24, 8) | _SHIFTL(s, 0, 24));    \
    _a->words.w1 = (_SHIFTL(f, 30, 2) | _SHIFTL(p, 14, 16) |            \
                    _SHIFTL(i, 2, 12) | _SHIFTL(o, 0, 2));              \
}

typedef struct N_ALAuxBus_s {
    ALFilter            filter;
    s32                 sourceCount;
    s32                 maxSources;
    N_PVoice            **sources;
    ALFx                *fx;
    ALFx                *fx_array[AL_MAX_AUX_BUS_SOURCES];
} N_ALAuxBus;

Acmd *n_alMainBusPull(s32 sampleOffset, Acmd *p);
Acmd *n_alEnvmixerPull(N_PVoice *f, s32 sampleOffset, Acmd *p);
s32 n_alLoadParam(N_PVoice *filter, s32 paramID, void *param);
Acmd *n_alAuxBusPull(s32 sampleOffset, Acmd *p);
Acmd *n_alFxPull(s32 sampleOffset, Acmd *p);
ALFxRef n_alSynAllocFX(s16 bus, ALSynConfig *c, ALHeap *hp);
void alN_PVoiceNew(N_PVoice *mv, ALDMANew dmaNew, ALHeap *hp);
ALParam *__n_allocParam(void);
s32 n_alEnvmixerParam(N_PVoice *p, s32 paramID, void *param);

extern u8 D_8009793A;


/* The n_audio functions from here on were each their own object in
 * libn_audio.a, so each ends 16-byte aligned and the ROM has nop fill between
 * them. That fill is the LINKER's, not the function's, so the drafts below were
 * condemned as unconvertible; one C file per object makes SUBALIGN(16) emit it.
 * See src/main/libn_audio_2.h and kirby64.yaml. */

void n_alSynStopVoice(N_ALVoice *v) {
    ALParam *update;
    ALFilter *f;

    if (v->pvoice) {

        update = __n_allocParam();
        if (update == 0)
            return;

        update->delta = n_syn->paramSamples + v->pvoice->offset;
        update->type = AL_FILTER_STOP_VOICE;
        update->next = 0;

        n_alEnvmixerParam(v->pvoice, AL_FILTER_ADD_UPDATE, update);
    }
}
