#include <ultra64.h>
#include <macros.h>
#include <PR/n_libaudio.h>
#include "synthInternals.h"
#include <PR/abi.h>

extern N_ALGlobals *n_alGlobals;
extern N_ALSynth *n_syn;
extern f32 D_800417A0;

typedef struct {
    /* 0x00 */ u8   pad00[0x1C];
    /* 0x1C */ void **unk1C;
    /* 0x20 */ void **unk20;
    /* 0x24 */ u8   pad24[4];
    /* 0x28 */ u16  unk28;
    /* 0x2A */ u16  unk2A;
    /* 0x2C */ u8   pad2C[0x14];
    /* 0x40 */ void *unk40;
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

void func_80023360(u8 arg0) {
    if (arg0 >= 0x80) {
        arg0 = 0x7F;
    }
    D_8009793A = arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800233F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023464.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800234F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023884.s")

typedef struct {
    /* 0x00 */ u8  pad00[0x28];
    /* 0x28 */ s16 unk28;
    /* 0x2A */ u8  unk2A;
    /* 0x2B */ u8  pad2B[0x1D];
    /* 0x48 */ s16 unk48;
} KNote;

void func_8002397C(KNote *arg0) {
    arg0->unk28 = 0;
    arg0->unk2A = 2;
    arg0->unk48 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023A28.s")

void func_80023AE4(void *arg0) {
    OSIntMask mask = osSetIntMask(OS_IM_NONE);

    if (arg0 != NULL) {
        *(void **) arg0 = D_800978E0.unk40;
        D_800978E0.unk40 = arg0;
    }
    osSetIntMask(mask);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023B34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023C48.s")

s32 func_80023CB0(u16 arg0) {
    if (arg0 < D_800978E0.unk28) {
        goto call;
    }
    return 0;
call:
    return func_80023C48(D_800978E0.unk1C[arg0]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023D5C.s")

s32 func_80023E30(u16 arg0) {
    if (arg0 < D_800978E0.unk2A) {
        goto call;
    }
    return 0;
call:
    return func_80023D5C(D_800978E0.unk20[arg0]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023E80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80024628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80024680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800246E4.s")

void func_80024748(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80024750.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80025758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002581C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alCSeqNextEvent.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alCSeqNew.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alCSeqNewMarker.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/__alCSeqNextDelta.s")

void alLink(ALLink *ln, ALLink *to) {
    ln->next = to->next;
    ln->prev = to;
    if (to->next)
        to->next->prev = ln;
    to->next = ln;
}

void alUnlink(ALLink *ln) {
    if (ln->next)
        ln->next->prev = ln->prev;
    if (ln->prev)
        ln->prev->next = ln->next;
}

void func_80025FA4(ALEventQueue *evtq, s16 type) {
    ALLink *thisNode;
    ALLink *nextNode;
    N_ALEventListItem *thisItem, *nextItem;
    OSIntMask mask;

    mask = osSetIntMask(OS_IM_NONE);

    thisNode = evtq->allocList.next;
    while (thisNode != 0) {
        nextNode = thisNode->next;
        thisItem = (N_ALEventListItem *) thisNode;
        nextItem = (N_ALEventListItem *) nextNode;
        if (thisItem->evt.type == type) {
            if (nextItem)
                nextItem->delta += thisItem->delta;
            alUnlink(thisNode);
            thisNode->next = evtq->freeList.next;
            thisNode->prev = &evtq->freeList;
            if (evtq->freeList.next)
                evtq->freeList.next->prev = thisNode;
            evtq->freeList.next = thisNode;
        }
        thisNode = nextNode;
    }

    osSetIntMask(mask);
}

#ifdef MIPS_TO_C
void n_alEvtqPostEvent(ALEventQueue *evtq, N_ALEvent *evt, ALMicroTime delta) {
    N_ALEventListItem *item;
    N_ALEventListItem *nextItem;
    ALLink *node;
    s32 postAtEnd = 0;
    OSIntMask mask;

    mask = osSetIntMask(OS_IM_NONE);

    item = (N_ALEventListItem *) evtq->freeList.next;
    if (!item) {
        osSetIntMask(mask);
        return;
    }

    alUnlink((ALLink *) item);
    alCopy(evt, &item->evt, sizeof(*evt));

    if (delta == AL_EVTQ_END)
        postAtEnd = -1;

    for (node = &evtq->allocList; node != 0; node = node->next) {
        if (!node->next) {
            if (postAtEnd)
                item->delta = 0;
            else
                item->delta = delta;
            ((ALLink *) item)->next = node->next;
            ((ALLink *) item)->prev = node;
            if (node->next)
                node->next->prev = (ALLink *) item;
            node->next = (ALLink *) item;
            break;
        } else {
            nextItem = (N_ALEventListItem *) node->next;

            if (delta < nextItem->delta) {
                item->delta = delta;
                nextItem->delta -= delta;

                ((ALLink *) item)->next = node->next;
                ((ALLink *) item)->prev = node;
                if (node->next)
                    node->next->prev = (ALLink *) item;
                node->next = (ALLink *) item;
                break;
            }

            delta -= nextItem->delta;
        }
    }

    osSetIntMask(mask);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/n_alEvtqPostEvent.s")
#endif

#ifdef MIPS_TO_C
ALMicroTime func_800261B0(ALEventQueue *evtq, N_ALEvent *evt) {
    N_ALEventListItem *item;
    ALMicroTime delta;
    OSIntMask mask;

    mask = osSetIntMask(OS_IM_NONE);

    item = (N_ALEventListItem *) evtq->allocList.next;

    if (item) {
        alUnlink((ALLink *) item);
        alCopy(&item->evt, evt, sizeof(*evt));
        ((ALLink *) item)->next = evtq->freeList.next;
        ((ALLink *) item)->prev = &evtq->freeList;
        if (evtq->freeList.next)
            evtq->freeList.next->prev = (ALLink *) item;
        evtq->freeList.next = (ALLink *) item;
        delta = item->delta;
    } else {
        evt->type = -1;
        delta = 0;
    }

    osSetIntMask(mask);

    return delta;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800261B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026260.s")

extern u16 D_8003FB1C;

void func_8002638C(u16 arg0) {
    D_8003FB1C = arg0;
}

extern f32 D_8003FB18;

void func_8002639C(f32 arg0) {
    if (arg0 <= 0.0f) {
        arg0 = 1.0f;
    } else if (10.0f < arg0) {
        arg0 = 1.0f;
    }
    D_8003FB18 = arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800263F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026460.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002649C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026B2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026FA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002714C.s")

void func_80027340(ALParam *param) {
    param->next = n_syn->paramList;
    n_syn->paramList = param;
}

s32 n_alLoadParam(N_PVoice *filter, s32 paramID, void *param) {
    N_PVoice *a = filter;

    switch (paramID) {
        case AL_FILTER_SET_WAVETABLE:
            a->dc_table = (ALWaveTable *) param;
            a->dc_memin = (s32) a->dc_table->base;
            a->dc_sample = 0;
            switch (a->dc_table->type) {
                case AL_ADPCM_WAVE:

                    a->dc_table->len = ADPCMFBYTES * ((s32) (a->dc_table->len / ADPCMFBYTES));

                    a->dc_bookSize = 2 * a->dc_table->waveInfo.adpcmWave.book->order *
                                     a->dc_table->waveInfo.adpcmWave.book->npredictors * ADPCMVSIZE;
                    if (a->dc_table->waveInfo.adpcmWave.loop) {
                        a->dc_loop.start = a->dc_table->waveInfo.adpcmWave.loop->start;
                        a->dc_loop.end = a->dc_table->waveInfo.adpcmWave.loop->end;
                        a->dc_loop.count = a->dc_table->waveInfo.adpcmWave.loop->count;
                        alCopy(a->dc_table->waveInfo.adpcmWave.loop->state, a->dc_lstate,
                               sizeof(ADPCM_STATE));
                    } else {
                        a->dc_loop.start = a->dc_loop.end = a->dc_loop.count = 0;
                    }
                    break;

                case AL_RAW16_WAVE:
                    if (a->dc_table->waveInfo.rawWave.loop) {
                        a->dc_loop.start = a->dc_table->waveInfo.rawWave.loop->start;
                        a->dc_loop.end = a->dc_table->waveInfo.rawWave.loop->end;
                        a->dc_loop.count = a->dc_table->waveInfo.rawWave.loop->count;
                    } else {
                        a->dc_loop.start = a->dc_loop.end = a->dc_loop.count = 0;
                    }
                    break;

                default:
                    break;
            }
            break;

        case AL_FILTER_RESET:
            a->dc_lastsam = 0;
            a->dc_first = 1;
            a->dc_sample = 0;

            if (a->dc_table) {
                a->dc_memin = (s32) a->dc_table->base;
                if (a->dc_table->type == AL_ADPCM_WAVE) {
                    if (a->dc_table->waveInfo.adpcmWave.loop)
                        a->dc_loop.count = a->dc_table->waveInfo.adpcmWave.loop->count;
                } else if (a->dc_table->type == AL_RAW16_WAVE) {
                    if (a->dc_table->waveInfo.rawWave.loop)
                        a->dc_loop.count = a->dc_table->waveInfo.rawWave.loop->count;
                }
            }

            break;

        default:
            break;
    }
}

s32 n_alEnvmixerParam(N_PVoice *filter, s32 paramID, void *param) {
    N_PVoice *e = filter;

    switch (paramID) {
        case AL_FILTER_ADD_UPDATE:
            if (e->em_ctrlTail) {
                e->em_ctrlTail->next = (ALParam *) param;
            } else {
                e->em_ctrlList = (ALParam *) param;
            }
            e->em_ctrlTail = (ALParam *) param;
            break;
        case AL_FILTER_RESET:
            e->em_first = 1;
            e->em_motion = AL_STOPPED;
            e->em_volume = 1;
            e->rs_delta = 0.0;
            e->rs_first = 1;
            e->rs_upitch = 0;
            n_alLoadParam(e, AL_FILTER_RESET, param);
            break;
        case AL_FILTER_START:
            e->em_motion = AL_PLAYING;
            break;
        default:
            n_alLoadParam(e, paramID, param);
            break;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800275C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80027610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/n_alEnvmixerPull.s")

Acmd *n_alAuxBusPull(s32 sampleOffset, Acmd *p) {
    Acmd *ptr = p;
    N_ALAuxBus *m = (N_ALAuxBus *) n_syn->auxBus;
    N_PVoice **sources = m->sources;
    s32 i;

    aClearBuffer(ptr++, N_AL_AUX_L_OUT, N_AL_DIVIDED << 1);

    for (i = 0; i < m->sourceCount; i++)
        ptr = n_alEnvmixerPull(sources[i], sampleOffset, ptr);
    return ptr;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80027D58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80027E84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80027F38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80028080.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002810C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80028318.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800285F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002901C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800296C0.s")

void func_80029834(void) {
}

s32 _n_timeToSamples(s32 micros) {
    f32 tmp = ((f32) micros) * n_syn->outputRate / D_800417A0 + 0.5f;

    return (s32) tmp & ~0xf;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80029888.s")

ALParam *__n_allocParam(void) {
    ALParam *update = 0;

    if (n_syn->paramList) {
        update = n_syn->paramList;
        n_syn->paramList = n_syn->paramList->next;
        update->next = 0;
    }
    return update;
}

Acmd *n_alMainBusPull(s32 sampleOffset, Acmd *p) {
    Acmd *ptr = p;

    aClearBuffer(ptr++, N_AL_MAIN_L_OUT, N_AL_DIVIDED << 1);

    ptr = (n_syn->mainBus->filter.handler)(sampleOffset, ptr);

    aMix(ptr++, 0, 0x7fff, N_AL_AUX_L_OUT, N_AL_MAIN_L_OUT);
    aMix(ptr++, 0, 0x7fff, N_AL_AUX_R_OUT, N_AL_MAIN_R_OUT);

    return ptr;
}

#ifdef MIPS_TO_C
Acmd *n_alSavePull(s32 sampleOffset, Acmd *p) {
    Acmd *ptr = p;

    ptr = n_alMainBusPull(sampleOffset, ptr);

    n_aInterleave(ptr++);
    n_aSaveBuffer(ptr++, N_FIXED_SAMPLE << 2, 0, n_syn->sv_dramout);

    return ptr;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/n_alSavePull.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alAudioFrame.s")

void alN_PVoiceNew(N_PVoice *mv, ALDMANew dmaNew, ALHeap *hp) {
    mv->dc_state = alHeapAlloc(hp, 1, sizeof(ADPCM_STATE));
    mv->dc_lstate = alHeapAlloc(hp, 1, sizeof(ADPCM_STATE));
    mv->dc_dma = dmaNew(&mv->dc_dmaState);
    mv->dc_lastsam = 0;
    mv->dc_first = 1;
    mv->dc_memin = 0;

    mv->rs_state = alHeapAlloc(hp, 1, sizeof(RESAMPLE_STATE));
    mv->rs_delta = 0.0;
    mv->rs_first = 1;
    mv->rs_ratio = 1.0;
    mv->rs_upitch = 0;

    mv->em_state = alHeapAlloc(hp, 1, sizeof(ENVMIX_STATE));
    mv->em_first = 1;
    mv->em_motion = AL_STOPPED;
    mv->em_volume = 1;
    mv->em_ltgt = 1;
    mv->em_rtgt = 1;
    mv->em_cvolL = 1;
    mv->em_cvolR = 1;
    mv->em_dryamt = 0;
    mv->em_wetamt = 0;
    mv->em_lratm = 1;
    mv->em_lratl = 0;
    mv->em_lratm = 1;
    mv->em_lratl = 0;
    mv->em_delta = 0;
    mv->em_segEnd = 0;
    mv->em_pan = 0;
    mv->em_ctrlList = 0;
    mv->em_ctrlTail = 0;
}

#ifdef MIPS_TO_C
void n_alSynNew(ALSynConfig *c) {
    s32 i;
    N_ALVoice *vv;
    N_PVoice *pv;
    N_ALVoice *vvoices;
    N_PVoice *pvoices;
    ALHeap *hp = c->heap;
    ALSave *save;
    ALFilter *sources;
    N_PVoice *m_sources;
    ALParam *params;
    ALParam *paramPtr;

    n_syn->head = NULL;
    n_syn->n_seqp1 = NULL;
    n_syn->n_seqp2 = NULL;
    n_syn->n_sndp = NULL;

    n_syn->numPVoices = c->maxPVoices;
    n_syn->curSamples = 0;
    n_syn->paramSamples = 0;
    n_syn->outputRate = c->outputRate;
    n_syn->maxOutSamples = N_FIXED_SAMPLE;
    n_syn->dma = (ALDMANew) c->dmaproc;

    n_syn->sv_dramout = 0;
    n_syn->sv_first = 1;

    n_syn->auxBus = (N_ALAuxBus *) alHeapAlloc(hp, 1, sizeof(N_ALAuxBus));

    n_syn->auxBus->sourceCount = 0;
    n_syn->auxBus->maxSources = c->maxPVoices;
    n_syn->auxBus->sources = (N_PVoice **) alHeapAlloc(hp, c->maxPVoices, sizeof(N_PVoice *));

    n_syn->mainBus = (N_ALMainBus *) alHeapAlloc(hp, 1, sizeof(N_ALMainBus));

    if (c->fxType != AL_FX_NONE) {
        n_syn->auxBus->fx = n_alSynAllocFX(0, c, hp);
        n_syn->mainBus->filter.handler = (N_ALCmdHandler) n_alFxPull;
    } else {
        n_syn->mainBus->filter.handler = (N_ALCmdHandler) n_alAuxBusPull;
    }

    n_syn->pFreeList.next = 0;
    n_syn->pFreeList.prev = 0;
    n_syn->pLameList.next = 0;
    n_syn->pLameList.prev = 0;
    n_syn->pAllocList.next = 0;
    n_syn->pAllocList.prev = 0;

    pvoices = alHeapAlloc(hp, c->maxPVoices, sizeof(N_PVoice));
    for (i = 0; i < c->maxPVoices; i++) {
        pv = &pvoices[i];
        ((ALLink *) pv)->next = n_syn->pFreeList.next;
        ((ALLink *) pv)->prev = &n_syn->pFreeList;
        if (n_syn->pFreeList.next)
            n_syn->pFreeList.next->prev = (ALLink *) pv;
        n_syn->pFreeList.next = (ALLink *) pv;
        pv->vvoice = 0;
        alN_PVoiceNew(pv, n_syn->dma, hp);
        n_syn->auxBus->sources[n_syn->auxBus->sourceCount++] = pv;
    }

    params = alHeapAlloc(hp, c->maxUpdates, sizeof(ALParam));
    n_syn->paramList = 0;
    for (i = 0; i < c->maxUpdates; i++) {
        paramPtr = &params[i];
        paramPtr->next = n_syn->paramList;
        n_syn->paramList = paramPtr;
    }
    n_syn->heap = hp;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/n_alSynNew.s")
#endif

void n_alClose(N_ALGlobals *glob) {
    if (n_alGlobals) {
        n_alSynDelete();
        n_alGlobals = 0;
        n_syn = 0;
    }
}

void n_alInit(N_ALGlobals *g, ALSynConfig *c) {
    if (!n_alGlobals) {
        n_alGlobals = g;
        if (!n_syn) {
            n_syn = &n_alGlobals->drvr;
            n_alSynNew(c);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002A1C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002A290.s")

s32 func_8002A4E4(N_PVoice *filter, s32 paramID, void *param) {
    n_alLoadParam(filter, paramID, param);
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002A508.s")

void n_alSynAddSeqPlayer(ALPlayer *client) {
    OSIntMask mask = osSetIntMask(OS_IM_NONE);

    client->samplesLeft = n_syn->curSamples;

    client->next = n_syn->head;
    n_syn->head = client;

    if (!(n_syn->n_seqp1))
        n_syn->n_seqp1 = client;
    else if (!(n_syn->n_seqp2))
        n_syn->n_seqp2 = client;

    osSetIntMask(mask);
}

void n_alSynAddSndPlayer(ALPlayer *client) {
    OSIntMask mask = osSetIntMask(OS_IM_NONE);

    client->samplesLeft = n_syn->curSamples;

    client->next = n_syn->head;
    n_syn->head = client;

    if (!(n_syn->n_sndp))
        n_syn->n_sndp = client;

    osSetIntMask(mask);
}

#ifdef MIPS_TO_C
void n_alSynAddPlayer(ALPlayer *client) {
    OSIntMask mask = osSetIntMask(OS_IM_NONE);

    client->samplesLeft = n_syn->curSamples;

    client->next = n_syn->head;
    n_syn->head = client;

    osSetIntMask(mask);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/n_alSynAddPlayer.s")
#endif

#ifdef MIPS_TO_C
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/n_alSynStopVoice.s")
#endif

s32 _allocatePVoice(N_PVoice **pvoice, s16 priority) {
    ALLink *dl;
    N_PVoice *pv;
    s32 stolen = 0;

    if ((dl = n_syn->pLameList.next) != 0) {
        *pvoice = (N_PVoice *) dl;
        alUnlink(dl);
        alLink(dl, &n_syn->pAllocList);
    } else if ((dl = n_syn->pFreeList.next) != 0) {
        *pvoice = (N_PVoice *) dl;
        alUnlink(dl);
        alLink(dl, &n_syn->pAllocList);
    } else {
        for (dl = n_syn->pAllocList.next; dl != 0; dl = dl->next) {
            pv = (N_PVoice *) dl;

            if ((pv->vvoice->priority <= priority) && (pv->offset == 0)) {
                *pvoice = pv;
                priority = pv->vvoice->priority;
                stolen = 1;
            }
        }
    }

    return stolen;
}

#ifdef MIPS_TO_C
s32 n_alSynAllocVoice(N_ALVoice *voice, ALVoiceConfig *vc) {
    N_PVoice *pvoice = 0;
    ALFilter *f;
    ALParam *update;
    s32 stolen;

    voice->priority = vc->priority;
    voice->unityPitch = vc->unityPitch;
    voice->table = 0;
    voice->fxBus = vc->fxBus;
    voice->state = AL_STOPPED;
    voice->pvoice = 0;

    stolen = _allocatePVoice(&pvoice, vc->priority);

    if (pvoice) {
        if (stolen) {

            pvoice->offset = 512;
            pvoice->vvoice->pvoice = 0;

            pvoice->vvoice = voice;
            voice->pvoice = pvoice;

            update = __n_allocParam();
            update->delta = n_syn->paramSamples;
            update->type = AL_FILTER_SET_VOLUME;
            update->data.i = 0;
            update->moredata.i = pvoice->offset - 64;

            n_alEnvmixerParam(voice->pvoice, AL_FILTER_ADD_UPDATE, update);

            update = __n_allocParam();
            if (update) {
                update->delta = n_syn->paramSamples + pvoice->offset;
                update->type = AL_FILTER_STOP_VOICE;
                update->next = 0;
                n_alEnvmixerParam(voice->pvoice, AL_FILTER_ADD_UPDATE, update);
            }

        } else {
            pvoice->offset = 0;
            pvoice->vvoice = voice;
            voice->pvoice = pvoice;
        }
    }

    return (pvoice != 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/n_alSynAllocVoice.s")
#endif

