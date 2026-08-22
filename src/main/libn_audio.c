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

/* The same nodes seen through their BYTE fields: KTone's `unk28` pointer covers
 * 0x28..0x2B, so the two flag bytes at 0x2A/0x2B cannot be spelled in that
 * struct at all. */
typedef struct KToneB {
    /* 0x00 */ struct KToneB *next;
    /* 0x04 */ u8    pad04[0x8];
    /* 0x0C */ KNote *unk0C;
    /* 0x10 */ u8    pad10[0xF];
    /* 0x1F */ u8    unk1F;
    /* 0x20 */ u8    pad20[0xA];
    /* 0x2A */ u8    unk2A;
    /* 0x2B */ u8    unk2B;
} KToneB;

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

void func_80023360(u8 arg0) {
    if (arg0 >= 0x80) {
        arg0 = 0x7F;
    }
    D_8009793A = arg0;
}

typedef struct {
    /* 0x00 */ u8 pad00[0x38];
    /* 0x38 */ u8 unk38;
    /* 0x39 */ u8 pad39[1];
    /* 0x3A */ u8 unk3A;
    /* 0x3B */ u8 pad3B[1];
    /* 0x3C */ u8 unk3C;
} KChanVoice;

typedef struct KChan {
    /* 0x00 */ struct KChan *next;
    /* 0x04 */ struct KChan *owner;
    /* 0x08 */ u8 pad08[0x1A];
    /* 0x22 */ u8 unk22;
    /* 0x23 */ u8 pad23[0x5];
    /* 0x28 */ KChanVoice *unk28;
    /* 0x2C */ u8 pad2C[0x2];
    /* 0x2E */ u8 unk2E;
    /* 0x2F */ u8 unk2F;
    /* 0x30 */ u8 unk30;
} KChan;

extern KChan *D_80097920;

#ifdef PORT
/* ============================= PORT-ONLY VIEW =============================
 *
 * The PC arms below need the COMPLETE layouts of Kirby's SFX engine
 * structures, which the matching lane above only declares as partial views
 * (KChan / KTone / KToneB / KNote / KAudioMgr, each spelling just the fields
 * one function touches).  On N64 all views agree because a pointer is 4
 * bytes; at LP64 the partial views drift apart.  The full structs below are
 * HAND-PLACED so that the fields the ALREADY-COMPILED partial views touch on
 * the hot path land at the same LP64 offsets:
 *
 *   KToneX: wait@24 (KTone.unk10), volume@42 (KChan.unk22), id@46
 *   (KTone.unk26), note@48 (KChan.unk28/KTone.unk28), tag@56 (KTone.unk2A),
 *   chanVol/panOverride/revOverride@58/59/60 (KChan.unk2E/2F/30).
 *
 *   KNoteX: chanVol/chanPan/chanFx@56/58/60 (KChanVoice.unk38/3A/3C -- the
 *   per-sound volume/pan/reverb setters func_80023384/3F4/464 write these),
 *   id@72 (KNote.unk48).
 *
 * KNOWN DIVERGENCE, deliberate: the pause/stop-all paths (func_80023794,
 * func_80023884, func_80023990, func_80023A28, func_80024628) read a few
 * note fields through N64-offset views that cannot be reconciled with each
 * other at LP64 (e.g. KTone.unk2A lands at 56 while KToneB.unk2A lands at
 * 50).  Those paths only run on pause/settings-change; the stray offsets
 * land in N_ALVoice.clientPrivate, which the SFX path never reads, so the
 * cost is a note that fades out by itself instead of being cut.  Fixing it
 * needs a decomp-lane pass over the partial views, not a port hack.
 *
 * The KAudioMgr full view lives at the SAME LP64 offsets as the partial one
 * for every field the compiled code touches; src/pc/pc_audio_bss.c defines
 * the storage whole and static-asserts the shared offsets.
 * ========================================================================= */
#include <PR/n_libaudio.h>

typedef struct KOscNode {
    /* one LFO/envelope modulator on an SFX note (pool A, N64 0x24) */
    struct KOscNode *next;
    u8  id;                 /* slot selector (opcode operand) */
    u8  type;               /* waveform 0..8 */
    u8  dest;               /* destination selector */
    u8  mod;                /* modifier: hi nibble op, lo nibble var slot */
    f32 period;
    f32 depth;
    f32 base;
    f32 phase;
    f32 hold;               /* random-hold period (types 4/5/8) */
    f32 prev;               /* previous random value (type 5) */
    f32 value;              /* current random value */
} KOscNode;

typedef struct KNoteX {
    /* one SFX voice (pool B, N64 0x4C) */
    struct KNoteX *next;    /*  0 */
    N_ALVoice voice;        /*  8..55 at LP64 */
    u8  chanVol;            /* 56 == KChanVoice.unk38 */
    u8  prevChanVol;        /* 57 */
    u8  chanPan;            /* 58 == KChanVoice.unk3A */
    u8  prevChanPan;        /* 59 */
    u8  chanFx;             /* 60 == KChanVoice.unk3C */
    u8  prevChanFx;         /* 61 */
    u16 wait;               /* 62 (N64 0x28) */
    u8  state;              /* 64 (N64 0x2A): 0 dead 1 playing 2 fading 3 start */
    u8  priority;           /* 65 (N64 0x2B) */
    s16 cents;              /* 66 (N64 0x2C) */
    s16 prevCents;          /* 68 (N64 0x2E) */
    s16 baseCents;          /* 70 (N64 0x30) */
    u16 id;                 /* 72 == KNote.unk48 */
    u8  vol, prevVol;       /* 74,75 (N64 0x32,0x33) */
    u8  pan, prevPan;       /* 76,77 (N64 0x34,0x35) */
    u8  fx, prevFx;         /* 78,79 (N64 0x36,0x37) */
    u8 *pc;                 /* 80 (N64 0x20) */
    u8 *loopPc;             /* 88 (N64 0x24) */
    void *wave;             /* 96 (N64 0x40) ALWaveTable* */
    KOscNode *oscList;      /* 104 (N64 0x44) */
} KNoteX;

typedef struct KToneX {
    /* one SFX tone/channel (pool C, N64 0x34) */
    struct KToneX *next;    /*  0 */
    struct KToneX *owner;   /*  8 == KChan.owner */
    u8 *pc;                 /* 16 (N64 0x08) */
    u16 wait;               /* 24 == KTone.unk10 */
    s16 dur[6];             /* 26..37 (N64 0x12..0x1D) */
    s8  unk1E;              /* 38 (N64 0x1E) */
    u8  priority;           /* 39 == KToneB.unk1F */
    u8  tieMode;            /* 40 (N64 0x20) */
    u8  pendingOff;         /* 41 (N64 0x21) */
    u8  volume;             /* 42 == KChan.unk22 */
    u8  pan;                /* 43 (N64 0x23) */
    u16 program;            /* 44 (N64 0x24) */
    u16 id;                 /* 46 == KTone.unk26 */
    KNoteX *note;           /* 48 == KChan.unk28 / KTone.unk28 */
    u8  tag;                /* 56 == KTone.unk2A */
    u8  group;              /* 57 (N64 0x2B) */
    u8  chanVol;            /* 58 == KChan.unk2E */
    u8  panOverride;        /* 59 == KChan.unk2F (0x80 = none) */
    u8  revOverride;        /* 60 == KChan.unk30 (0x80 = none) */
    u8  reverb;             /* 61 (N64 0x2C) */
    u8  groupSel;           /* 62 (N64 0x2D) */
    u8  pad63[1];
    u8 *loopPc;             /* 64 (N64 0x0C) */
} KToneX;

typedef struct {
    /* Kirby's LFO-preset record, 16 bytes in the buf3 table (see the PORT
     * arm of auLoadAssets in audio.c for the byte-order fixup). */
    u8  type, dest, mod, speed;
    f32 period;
    f32 depth;
    f32 base;
} KLfoPreset;

typedef struct {
    /* KAudioMgr, complete.  LP64 offsets of the fields the partial view
     * declares are IDENTICAL to the partial view's (asserted in
     * src/pc/pc_audio_bss.c). */
    ALPlayer  node;         /* 0x00..0x1F */
    u8      **toneTable;    /* 0x20 == KAudioMgr.unk1C (buf5 offsets) */
    u8      **sfxTable;     /* 0x28 == KAudioMgr.unk20 (buf4 offsets) */
    u16       soundCount;   /* 0x30 (N64 unk14) */
    u16       lfoCount;     /* 0x32 (N64 unk2C) */
    u16       toneCount;    /* 0x34 == KAudioMgr.unk28 */
    u16       sfxCount;     /* 0x36 == KAudioMgr.unk2A */
    void     *soundArray;   /* 0x38 (N64 unk18) ALSound** */
    KLfoPreset *lfoTable;   /* 0x40 (N64 unk24) */
    KToneX   *freeTones;    /* 0x48 == KAudioMgr.unk38 */
    KNoteX   *liveNotes;    /* 0x50 == KAudioMgr.unk3C == D_8009791C */
    KToneX   *liveTones;    /* 0x58 == KAudioMgr.unk40 == D_80097920 */
    s32       usecPerFrame; /* 0x60 (N64 unk44) */
    u16       noteIdSeq;    /* 0x64 (N64 unk48) */
    u16       toneIdSeq;    /* 0x66 (N64 unk4A) */
    u8        defPriority;  /* 0x68 (N64 unk4C) */
    u8        sfxMasterVol; /* 0x69 (N64 0x5A) == D_8009793A */
    u16       durDefaults[6]; /* 0x6A..0x75 (N64 0x4E..0x59; never written) */
    u8        pad76[2];
    KToneX   *pendNotesB;   /* 0x78 == KAudioMgr.unk5C */
    KToneX   *pendTonesC;   /* 0x80 == KAudioMgr.unk60 */
    KNoteX   *freeNotes;    /* 0x88 (N64 unk34) */
    KOscNode *freeOscs;     /* 0x90 (N64 unk30) */
} KAudioMgrX;

#define kMgr (*(KAudioMgrX *)&D_800978E0)

extern u16 D_8003FA10[];        /* n_eqpower[0..126]; [127] is D_8003FB0E */
extern u16 lbreflect_Int16SinTable[];
extern u16 D_8003FB1C;          /* BGM channel enable mask */
extern f32 D_8003FB18;          /* global tempo scale */
extern s32 D_8003FB20, D_8003FB24;

#ifndef K0_TO_PHYS
/* libn_audio.c does not include <PR/R4300.h>; on PC "physical" is the host
 * pointer (osVirtualToPhysical is identity, everything game-visible sits
 * below 512MB thanks to -no-pie), so the kseg mask is an identity too. */
#define K0_TO_PHYS(x) ((u32)(long)(x) & 0x1FFFFFFF)
#endif

static s16 pc_au_eqpower(s32 i) {
    if (i <= 0) {
        return (s16)D_8003FA10[0];
    }
    if (i >= 127) {
        return 0;               /* n_eqpower[127] */
    }
    return (s16)D_8003FA10[i];
}

/* PORT prototypes for the arms defined at the bottom of this file. */
KToneX *func_80023B34(u8 *pc);
KNoteX *func_80023D5C(u8 *pc);
void func_80023E80(KToneX *tone);
void func_80024750(KNoteX *note);
u32 func_8002581C(ALCSeq *seq, u32 track);
u8 func_80025758(ALCSeq *seq, u32 track);
Acmd *func_80026A10(Acmd *ptr, N_PVoice *f, s32 tsam, s32 nbytes, s32 outp,
                    s32 inp, u32 flags);
s16 func_80026898(f32 tgt, f32 vol, s32 count, u16 *ratel);
Acmd *func_8002714C(N_PVoice *e, s16 *inp, s32 outCount, Acmd *p);
void func_8002649C(void *seqp, N_ALEvent *evt);
void func_800285F8(void *seqp, N_ALEvent *evt);
ALMicroTime func_80026698(void *client);
void func_8002A508(void *fx, ALSynConfig *c, ALHeap *hp);
Acmd *func_80028318(s32 sampleOffset, Acmd *p);
void func_8002AE74(N_ALVoice *v, void *w, f32 pitch, s16 vol, u8 pan, u8 fxmix,
                   ALMicroTime t);
#endif /* PORT */

/* 2/28 diffs at -O3, and only the one-slot temp-register rotation: the ROM puts
 * note->owner in $t7 where IDO picks $t6, and $t6 is unused in the ROM -- one
 * source temp was created and eliminated before the loop.  36 variants swept
 * across four passes, ALL 2: for/while/do-while, owner and unk28 locals of both
 * struct types, comparison operand order, ternary and `> 0x7F` clamp forms, a
 * u8/s32 local copy of the parameter, the inlined-helper parameter-copy shape at
 * either or both call sites, chained store, K&R definition, s32 return, a third
 * parameter, dead locals leading and trailing, volatile on the owner and next
 * loads, three if/else line collapses, and a blank line before the loop. */
void func_80023384(KChan *chan, u8 arg1)
{
  KChan *note;
  KChan *next;
  if (arg1 >= 0x80)
  {
    arg1 = 0x7F;
  }
  chan->unk30 = arg1;
  if (chan->unk28 != ((void *) 0))
  {
    chan->unk28->unk3C = arg1 & 0xFFFF;
  }
  note = D_80097920;
  while (note != ((void *) 0))
  {
    next = note->next;
    if (note->owner == chan)
    {
      note->unk30 = arg1;
      if (note->unk28 != ((void *) 0))
      {
        note->unk28->unk3C = arg1;
      }
    }
    note = next;
  }

}

/* Twin of func_80023384; same 2/28 register rotation, same swept floor. */
void func_800233F4(KChan *chan, u8 arg1)
{
  KChanVoice *new_var;
  KChan *note;
  KChan *new_var2;
  KChan *next;
  new_var2 = chan;
  if (arg1 >= 0x80)
  {
    arg1 = 0x7F;
  }
  new_var2->unk2F = arg1;
  new_var = new_var2->unk28;
  if (chan->unk28 != ((void *) 0))
  {
    new_var->unk3A = arg1;
  }
  note = D_80097920;
  while (note != ((void *) 0))
  {
    next = note->next;
    if (note->owner == new_var2)
    {
      note->unk2F = arg1;
      if (note->unk28 != ((void *) 0))
      {
        note->unk28->unk3A = arg1;
      }
    }
    note = next;
  }

}

void func_80023464(KChan *chan, u8 arg1) {
    KChan *note;
    KChan *next;

    if (arg1 >= 0x80) {
        arg1 = 0x7F;
    }
    chan->unk2E = arg1;
    if (chan->unk28 != NULL) {
        chan->unk28->unk38 = (chan->unk22 * arg1) >> 7;
    }
    note = D_80097920;
    while (note != NULL) {
        next = note->next;
        if (note->owner == chan) {
            note->unk2E = arg1;
            if (note->unk28 != NULL) {
                note->unk28->unk38 = (chan->unk22 * arg1) >> 7;
            }
        }
        note = next;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800234F4.s")

/* Splices the two "pending" tone lists onto the two live ones, under an
 * interrupt mask. Decompiled from the listing for the PC PORT, which aborted
 * here: it was the boot path's blocking stub once func_80023990 went live.
 *
 * Both halves are the same shape -- walk to the tail of the pending list, link
 * the live list onto it, then make the pending list the live one and clear the
 * pending head. The first half additionally marks every tone whose unk2A tag
 * is 1: its KNote gets unk84 = 1.
 *
 * The `while (tone->next != NULL)` walks are written with the tail-tracking
 * variable the ROM keeps in $v1, because the ROM tests the CURRENT node's tag
 * after the walk ends -- reading it from the last node, not the NULL.
 *
 * NON_MATCHING: not yet byte-exact, but semantically read off the listing
 * instruction by instruction. The ROM build assembles the pragma below. */
#ifdef NON_MATCHING
void func_80023794(void) {
    KAudioMgr *mgr = &D_800978E0;
    KTone *tone;
    KTone *next;
    KNote *voice;
    s32 mask;

    mask = osSetIntMask(OS_IM_NONE);

    tone = mgr->unk5C;
    if (tone != NULL) {
        next = tone->next;
        while (next != NULL) {
            if (tone->unk2A == 1) {
                voice = tone->unk0C;
                if (voice != NULL) {
                    voice->unk84 = 1;
                }
            }
            tone = next;
            next = next->next;
        }
        if (tone->unk2A == 1) {
            voice = tone->unk0C;
            if (voice != NULL) {
                voice->unk84 = 1;
            }
        }
        tone->next = mgr->unk3C;
        mgr->unk3C = mgr->unk5C;
        mgr->unk5C = NULL;
    }

    tone = mgr->unk60;
    if (tone != NULL) {
        while (tone->next != NULL) {
            tone = tone->next;
        }
        tone->next = mgr->unk40;
        mgr->unk40 = mgr->unk60;
        mgr->unk60 = NULL;
    }

    osSetIntMask(mask);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023794.s")
#endif

/* 23/62 at -O3 and the instruction COUNT and SEQUENCE are exact: both sweep
 * loops, both unlink shapes and the branch-likely duplicates all line up, and
 * the whole residue is that the ROM puts `prev` in $a0 and the saved
 * `node->next` temp in $a1 while IDO swaps the two (and in the second loop
 * swaps $v0/$v1 with them).  Same class as func_80023990/func_80023A28 above.
 * Swept with no movement: all six declaration orders (x2 arm orders -- arm
 * order IS worth 2, `if (prev != NULL)` first is the ROM's polarity),
 * while/for, assigning `node` before or after `prev`, and a cur/node
 * restructure (58, much worse). */
#ifdef NON_MATCHING
void func_80023884(void) {
    KToneB *node;
    KToneB *next;
    KToneB *prev;
    OSIntMask mask;

    mask = osSetIntMask(OS_IM_NONE);

    prev = NULL;
    node = (KToneB *) D_800978E0.unk3C;
    while (node != NULL) {
        next = node->next;
        if (node->unk2B & 0x80) {
            if (prev != NULL) {
                prev->next = node->next;
            } else {
                D_800978E0.unk3C = (KTone *) node->next;
            }
            if (node->unk2A == 1) {
                if (node->unk0C != NULL) {
                    node->unk0C->unk84 = 0;
                }
            }
            node->next = (KToneB *) D_800978E0.unk5C;
            D_800978E0.unk5C = (KTone *) node;
        } else {
            prev = node;
        }
        node = next;
    }

    prev = NULL;
    node = (KToneB *) D_800978E0.unk40;
    while (node != NULL) {
        next = node->next;
        if (node->unk1F & 0x80) {
            if (prev != NULL) {
                prev->next = node->next;
            } else {
                D_800978E0.unk40 = (KTone *) node->next;
            }
            node->next = (KToneB *) D_800978E0.unk60;
            D_800978E0.unk60 = (KTone *) node;
        } else {
            prev = node;
        }
        node = next;
    }

    osSetIntMask(mask);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023884.s")
#endif


void func_8002397C(KNote *arg0) {
    arg0->unk28 = 0;
    arg0->unk2A = 2;
    arg0->unk48 = 0;
}

/* 29/38 diffs, all of them the one-slot ARGUMENT-register rotation: the ROM
 * holds &D_800978E0 in $a2, the constant 2 in $a1 and tone->unk28 in $a0
 * where IDO picks $a1/$a0/$v0.  Every instruction is otherwise in the right
 * place.  Swept leading dummy scalars and all four declaration orders. */
#ifdef NON_MATCHING

/* KAudioMgr needs `KTone *unk38` at 0x38 and `KTone *unk40` at 0x40. */
void func_80023990(void) {
    KTone *tone;
    KNote *voice;
    KTone *last;
    OSIntMask mask;

    mask = osSetIntMask(OS_IM_NONE);
    func_80023794();

    tone = D_800978E0.unk40;
    while (tone != NULL) {
        voice = tone->unk28;
        tone->unk10 = 0;
        tone->unk26 = 0;
        if (voice != NULL) {
            voice->unk28 = 0;
            voice->unk2A = 2;
            voice->unk48 = 0;
        }
        last = tone;
        tone = tone->next;
    }

    if (D_800978E0.unk40 != NULL) {
        last->next = D_800978E0.unk38;
        D_800978E0.unk38 = D_800978E0.unk40;
        D_800978E0.unk40 = NULL;
    }

    osSetIntMask(mask);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023990.s")
#endif

/* 27/47 at -O3, instruction sequence EXACT -- every opcode, operand shape and
 * displacement matches and only the register numbers differ, rotated one slot
 * DOWN this time (ROM $t0/$a1/$a2/$a0 -> IDO $a3/$a0/$a1/$v0), i.e. the ROM
 * reserves one more register at the bottom than IDO does.  The usual cure for
 * "temps UP a slot" is a non-void callee, but the only callee here is
 * osSetIntMask, which is already non-void and header-declared.  Swept with no
 * effect: all 72 declaration permutations that put a pointer first, one and two
 * leading dead scalars, a leading dead pointer, `for` vs `while`, dropping the
 * `next` and `voice` locals, assignment order of node/prev, and an s32 return
 * (29). */
#ifdef NON_MATCHING
typedef struct KToneA28 {
    /* 0x00 */ struct KToneA28 *next;
    /* 0x04 */ void  *unk04;
    /* 0x08 */ u8    pad08[0x8];
    /* 0x10 */ s16   unk10;
    /* 0x12 */ u8    pad12[0x14];
    /* 0x26 */ s16   unk26;
    /* 0x28 */ KNote *unk28;
} KToneA28;

/* KAudioMgr also needs `void *unk38` at 0x38 (pad2C shrinks to 0xC). */
void func_80023A28(KToneA28 *arg0) {
    KToneA28 *node;
    KToneA28 *next;
    KToneA28 *prev;
    KNote *voice;
    OSIntMask mask;

    mask = osSetIntMask(OS_IM_NONE);
    prev = NULL;
    node = D_800978E0.unk40;
    while (node != NULL) {
        next = node->next;
        if ((node == arg0) || (arg0 == node->unk04)) {
            voice = node->unk28;
            node->unk10 = 0;
            node->unk26 = 0;
            if (voice != NULL) {
                voice->unk28 = 0;
                voice->unk2A = 2;
                voice->unk48 = 0;
            }
            if (prev == NULL) {
                D_800978E0.unk40 = node->next;
            } else {
                prev->next = node->next;
            }
            node->next = D_800978E0.unk38;
            D_800978E0.unk38 = node;
        } else {
            prev = node;
        }
        node = next;
    }
    osSetIntMask(mask);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023A28.s")
#endif
void func_80023AE4(void *arg0) {
    OSIntMask mask = osSetIntMask(OS_IM_NONE);

    if (arg0 != NULL) {
        *(void **) arg0 = D_800978E0.unk40;
        D_800978E0.unk40 = arg0;
    }
    osSetIntMask(mask);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023B34.s")

#ifdef NON_MATCHING
#ifndef PORT
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
KChan *func_80023B34();                             /* extern */

KChan *func_80023C48(s32 arg0) {
    KChan *sp2C;
    u32 sp24;
    KChan *temp_v0;

    sp24 = osSetIntMask(1U);
    temp_v0 = func_80023B34();
    if (temp_v0 != NULL) {
        temp_v0->next = D_80097920;
        D_80097920 = temp_v0;
    }
    sp2C = temp_v0;
    osSetIntMask(sp24);
    return sp2C;
}
#else
/* The ROM passes the tone-bytecode pointer to func_80023B34 in $s1 (ujoin
 * custom convention); the earlier draft dropped the argument. */
KToneX *func_80023C48(u8 *pc) {
    OSIntMask mask = osSetIntMask(OS_IM_NONE);
    KToneX *tone = func_80023B34(pc);

    if (tone != NULL) {
        tone->next = (KToneX *)D_80097920;
        D_80097920 = (KChan *)tone;
    }
    osSetIntMask(mask);
    return tone;
}
#endif
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023C48.s")
#endif

s32 func_80023CB0(u16 arg0) {
    if (arg0 < D_800978E0.unk28) {
        goto call;
    }
    return 0;
call:
    return func_80023C48(D_800978E0.unk1C[arg0]);
}

#ifdef NON_MATCHING
#ifndef PORT
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
KChan *func_80023D00(s32 arg0) {
    s32 temp_a0;

    temp_a0 = arg0 & 0xFFFF;
    if (temp_a0 >= (s32) D_800978E0.unk28) {
        return NULL;
    }
    return func_80023B34(temp_a0);
}
#else
/* The draft passed the INDEX where the ROM loads the tone-bytecode pointer
 * out of the table before the custom-convention call. */
KToneX *func_80023D00(s32 arg0) {
    s32 idx = arg0 & 0xFFFF;

    if (idx >= (s32)kMgr.toneCount) {
        return NULL;
    }
    return func_80023B34(kMgr.toneTable[idx]);
}
#endif
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023D00.s")
#endif

/* 31/53 at -O3, and the instruction SEQUENCE is exact: every opcode, operand
 * shape and displacement matches and only the register numbers differ, rotated
 * one slot up ($a1/$a2/$a3 -> $a3/$t0/$t1).  The cause is one extra
 * `move $v0, $aN` at the join of the id retry: the ROM produces both arms of
 * `id = ++D_800978E0.unk48;` directly in $v0, IDO produces them in $a1 and
 * copies.  Swept without effect: all six declaration orders, id as
 * u16/s16/s32/u32 and as no variable at all, goto-into-label vs if/else vs
 * ternary vs a retry loop, leading/trailing pad locals, K&R definition, four
 * return types, and typing the KAudioMgr free-list fields.  The unk2B store
 * POSITION is load-bearing and was found by sweeping all 14 slots
 * (36/34/34/34/33/26/26/25/22/25/26/35/35/36) -- slot 8 is the one below. */
#ifdef MIPS_TO_C
typedef struct KNoteFull {
    /* 0x00 */ struct KNoteFull *next;
    /* 0x04 */ u8  pad04[0x1C];
    /* 0x20 */ void *unk20;
    /* 0x24 */ void *unk24;
    /* 0x28 */ s16 unk28;
    /* 0x2A */ u8  unk2A;
    /* 0x2B */ u8  unk2B;
    /* 0x2C */ s16 unk2C;
    /* 0x2E */ u8  pad2E[2];
    /* 0x30 */ s16 unk30;
    /* 0x32 */ u8  unk32;
    /* 0x33 */ u8  pad33[1];
    /* 0x34 */ u8  unk34;
    /* 0x35 */ u8  pad35[1];
    /* 0x36 */ u8  unk36;
    /* 0x37 */ u8  pad37[1];
    /* 0x38 */ u8  unk38;
    /* 0x39 */ u8  pad39[1];
    /* 0x3A */ u8  unk3A;
    /* 0x3B */ u8  pad3B[1];
    /* 0x3C */ u8  unk3C;
    /* 0x3D */ u8  pad3D[7];
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s16 unk48;
} KNoteFull;

/* KAudioMgr also needs `void *unk34` at 0x34, `void *unk3C` at 0x3C,
 * `u16 unk48` at 0x48 and `u8 unk4C` at 0x4C. */
s32 func_80023D5C(void *arg0) {
    KNoteFull *note;
    OSIntMask mask;
    u16 id;

    mask = osSetIntMask(OS_IM_NONE);
    note = D_800978E0.unk34;
    if (note != NULL) {
        D_800978E0.unk34 = note->next;
        note->next = D_800978E0.unk3C;
        D_800978E0.unk3C = note;

        note->unk28 = 1;
        note->unk20 = arg0;
        note->unk24 = arg0;
        note->unk2A = 3;
        note->unk32 = 0x7F;
        note->unk34 = 0x40;
        note->unk36 = 0;
        note->unk2C = 0;
        note->unk2B = D_800978E0.unk4C;
        note->unk44 = 0;
        note->unk30 = 0;
        note->unk38 = 0xFF;
        note->unk3A = 0x40;
        note->unk3C = 0;

        id = ++D_800978E0.unk48;
        if (id == 0) {
            id = ++D_800978E0.unk48;
        }
        note->unk48 = id;
    }
    osSetIntMask(mask);
    return (s32) note;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023D5C.s")
#endif

s32 func_80023E30(u16 arg0) {
    if (arg0 < D_800978E0.unk2A) {
        goto call;
    }
    return 0;
call:
    return func_80023D5C(D_800978E0.unk20[arg0]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023E80.s")

extern KNote *D_8009791C;

void func_80024628(void) {
    OSIntMask mask = osSetIntMask(OS_IM_NONE);
    KNote *note = D_8009791C;

    while (note != NULL) {
        note->unk28 = 0;
        note->unk2A = 2;
        note->unk48 = 0;
        note = *(KNote **) note;
    }
    osSetIntMask(mask);
}

extern s32 D_8003FB24;

f32 func_80024680(void) {
    D_8003FB24 = D_8003FB24 * 214013 + 0x269EC3;
    return (f32) (s32) ((D_8003FB24 >> 16) & 0xFFFF) / (f32) 65536;
}

extern s32 D_8003FB20;

f32 func_800246E4(void) {
    D_8003FB20 = D_8003FB20 * 214013 + 0x269EC3;
    return (f32) (s32) ((D_8003FB20 >> 16) & 0xFFFF) / (f32) 65536;
}

void func_80024748(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80024750.s")

/* 47/49, but the residue is ONE scheduling decision: the ROM emits `beql` with
 * `lw $a3, 0x18($a2)` (the else arm's first load) hoisted into the delay slot
 * and recomputes `$a0 + track*4` in both arms; IDO emits `beqz`, duplicates the
 * `sll` instead and fills the slot with the shared `addu`.  Everything after is
 * the same instructions one slot out.  Swept: inverted condition, `!= 0`,
 * `> 0`, early return with no else, post-increment dereferences, and an extra
 * pointer local.  Verbatim upstream libreultra/src/audio/cseq.c __getTrackByte;
 * the ALCSeq field offsets are confirmed exact by the listing. */
#ifdef NON_MATCHING
u8 func_80025758(ALCSeq *seq, u32 track) {
    u8 theByte;

    if (seq->curBULen[track]) {
        theByte = *seq->curBUPtr[track];
        seq->curBUPtr[track]++;
        seq->curBULen[track]--;
    } else {
        theByte = *seq->curLoc[track];
        seq->curLoc[track]++;
        if (theByte == AL_CMIDI_BLOCK_CODE) {
            u8 loBackUp, hiBackUp, theLen, nextByte;
            u32 backup;

            nextByte = *seq->curLoc[track];
            seq->curLoc[track]++;
            if (nextByte != AL_CMIDI_BLOCK_CODE) {
                hiBackUp = nextByte;
                loBackUp = *seq->curLoc[track];
                seq->curLoc[track]++;
                theLen = *seq->curLoc[track];
                seq->curLoc[track]++;
                backup = (u32) hiBackUp;
                backup = backup << 8;
                backup += loBackUp;
                seq->curBUPtr[track] = seq->curLoc[track] - (backup + 4);
                seq->curBULen[track] = (u32) theLen;

                theByte = *seq->curBUPtr[track];
                seq->curBUPtr[track]++;
                seq->curBULen[track]--;
            }
        }
    }

    return theByte;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80025758.s")
#endif
#ifdef NON_MATCHING
#ifndef PORT
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
u8 func_8002581C(void) {
    u8 temp_v0;
    u8 temp_v0_2;
    u8 var_t1;

    temp_v0 = func_80025758(M2C_ERROR(/* Read from unset register $t2 */), M2C_ERROR(/* Read from unset register $t3 */));
    var_t1 = temp_v0;
    if (temp_v0 & 0x80) {
        do {
            temp_v0_2 = func_80025758(M2C_ERROR(/* Read from unset register $t2 */), M2C_ERROR(/* Read from unset register $t3 */));
            var_t1 = (M2C_ERROR(/* Read from unset register $t1 */) << 7) + (temp_v0_2 & 0x7F);
        } while (temp_v0_2 & 0x80);
    }
    return var_t1;
}
#else
/* __readVarLen (upstream libreultra/src/audio/cseq.c): the ROM takes seq and
 * track in $t2/$t3 (ujoin custom convention), which the m2c draft could not
 * see; this is the same function with a callable signature. */
u32 func_8002581C(ALCSeq *seq, u32 track) {
    u32 value;
    u32 c;

    value = func_80025758(seq, track);
    if (value & 0x80) {
        value &= 0x7F;
        do {
            c = func_80025758(seq, track);
            value = (value << 7) + (c & 0x7F);
        } while (c & 0x80);
    }
    return value;
}
#endif
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002581C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alCSeqNextEvent.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alCSeqNew.s")

void alCSeqNewMarker(ALCSeq *seq, ALCSeqMarker *m, u32 ticks)
{
    ALEvent     evt;
    ALCSeq      tempSeq;
    s32         i;


    alCSeqNew(&tempSeq, (u8*)seq->base);

    do {
        m->validTracks    = tempSeq.validTracks;
        m->lastTicks      = tempSeq.lastTicks;
        m->lastDeltaTicks = tempSeq.lastDeltaTicks;

        for(i=0;i<16;i++)
        {
            m->curLoc[i]        = tempSeq.curLoc[i];
            m->curBUPtr[i]      = tempSeq.curBUPtr[i];
            m->curBULen[i]      = tempSeq.curBULen[i];
            m->lastStatus[i]    = tempSeq.lastStatus[i];
            m->evtDeltaTicks[i] = tempSeq.evtDeltaTicks[i];
        }

        alCSeqNextEvent(&tempSeq, &evt);

        if (evt.type == AL_SEQ_END_EVT)
            break;

    } while (tempSeq.lastTicks < ticks);

}

char __alCSeqNextDelta(ALCSeq *seq, s32 *pDeltaTicks)
{
    u32     i;
    u32	    firstTime = 0xFFFFFFFF;
    u32     lastTicks = seq->lastDeltaTicks;

    if (!seq->validTracks)
	return FALSE;

    for(i = 0; i < 16 ; i++)
    {
	if((seq->validTracks >> i) & 1)
        {
	    if(seq->deltaFlag)
		seq->evtDeltaTicks[i] -= lastTicks;

	    if(seq->evtDeltaTicks[i] < firstTime)
		firstTime = seq->evtDeltaTicks[i];
        }
    }
 
    seq->deltaFlag = 0;
    *pDeltaTicks = firstTime;

    return TRUE;
}

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

void func_80026260(ALEventQueue *evtq, N_ALEventListItem *items, s32 itemCount) {
    s32 i;
    ALLink *ln;
    ALLink *to;

    evtq->eventCount = 0;
    evtq->allocList.next = 0;
    evtq->allocList.prev = 0;
    evtq->freeList.next = 0;
    evtq->freeList.prev = 0;

    for (i = 0; i < itemCount; i++) {
        ln = (ALLink *) &items[i];
        to = &evtq->freeList;
        ln->next = to->next;
        ln->prev = to;
        if (to->next)
            to->next->prev = ln;
        to->next = ln;
    }
}

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

typedef struct {
    /* 0x00 */ u8            pad00[0x18];
    /* 0x18 */ ALCSeq       *target;
    /* 0x1C */ u8            pad1C[0x10];
    /* 0x2C */ s32           uspt;
    /* 0x30 */ u8            pad30[4];
    /* 0x34 */ s32           state;
    /* 0x38 */ u8            pad38[0x18];
    /* 0x50 */ ALEventQueue  evtq;
} KCSeqp;

void func_800263F0(KCSeqp *seqp) {
    N_ALEvent evt;
    s32 deltaTicks;
    ALCSeq *seq;

    if (seqp->state == AL_PLAYING) {
        seq = seqp->target;
        if (seq != NULL) {
            if (__alCSeqNextDelta(seq, &deltaTicks)) {
                evt.type = AL_SEQ_REF_EVT;
                n_alEvtqPostEvent(&seqp->evtq, &evt, seqp->uspt * deltaTicks);
            }
        }
    }
}

/* 1/14 at -O3 and ABI-BLOCKED, not a source defect.  Verbatim upstream
 * libnaudio/n_csplayer.c __n_setUsptFromTempo, and every instruction lines up
 * one slot late: our only extra word is the entry `mtc1 $a1, $f12`.  The ROM
 * takes `seqp` in $a0 and `tempo` ALREADY IN $f12, which o32 cannot express --
 * a float in argument slot 1 behind an integer slot 0 is passed in $a1, so the
 * move is mandatory.  __n_setUsptFromTempo is `static` upstream and IDO's ujoin
 * gives static callees a custom convention; ujoin is missing from
 * tools/ido-7.1recomp, which is the same blocker as func_8002581C/__readVarLen
 * (args in $t2/$t3).  No source spelling reaches it. */
#ifdef NON_MATCHING
void func_80026460(KCSeqp *seqp, f32 tempo) {
    if (seqp->target) {
        seqp->uspt = (s32) ((f32) tempo * seqp->target->qnpt);
    } else {
        seqp->uspt = 488;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026460.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002649C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026A10.s")

/* IPA-BLOCKED.  Verbatim upstream libreultra/src/libnaudio/n_load.c
 * n_alAdpcmPull; the instruction stream lines up but the frame is 0xA0 against
 * the ROM's 0xB0 and `f` lands in $s0 where the ROM uses $s7.  The reason is
 * the callee: _decodeChunk is func_80026A10, which reads its arguments from
 * $s0/$s1/$s2/$s3/$s5 (ujoin custom convention), so this caller has to reserve
 * the low saved registers and spell the call in a way o32 cannot.  Same class
 * as func_8002581C/__readVarLen. */
#ifdef PORT
/* The draft below mislabels its callee: the ROM's _decodeChunk is
 * func_80026A10 (called with a ujoin custom convention the disassembler
 * attributed to the wrong symbol).  func_80026898 is __n_getRate.  Redirect
 * the name for the PORT build only; the argument list already matches
 * _decodeChunk's. */
#define func_80026898 func_80026A10
#endif
#ifdef NON_MATCHING
Acmd *func_80026B2C(N_PVoice *filter, s16 *outp, s32 outCount, Acmd *p) {
    Acmd *func_80026898();
    Acmd *ptr = p;
    s16 inp;
    s32 tsam;
    s32 nframes;
    s32 nbytes;
    s32 overFlow;
    s32 startZero;
    s32 nOver;
    s32 nSam;
    s32 op;
    s32 nLeft;
    s32 bEnd;
    s32 decoded = 0;
    s32 looped = 0;

    N_PVoice *f = filter;

    if (outCount == 0)
        return ptr;

    inp = N_AL_DECODER_IN;

    aLoadADPCM(ptr++, f->dc_bookSize,
               K0_TO_PHYS(f->dc_table->waveInfo.adpcmWave.book->book));

    looped = (outCount + f->dc_sample > f->dc_loop.end) && (f->dc_loop.count != 0);

    if (looped)
        nSam = f->dc_loop.end - f->dc_sample;
    else
        nSam = outCount;

    if (f->dc_lastsam)
        nLeft = ADPCMFSIZE - f->dc_lastsam;
    else
        nLeft = 0;
    tsam = nSam - nLeft;
    if (tsam < 0) tsam = 0;

    nframes = (tsam + ADPCMFSIZE - 1) >> LFSAMPLES;
    nbytes = nframes * ADPCMFBYTES;

    if (looped) {
        ptr = func_80026898(ptr, f, tsam, nbytes, *outp, inp, f->dc_first);

        if (f->dc_lastsam)
            *outp += (f->dc_lastsam << 1);
        else
            *outp += (ADPCMFSIZE << 1);

        f->dc_lastsam = f->dc_loop.start & 0xf;
        f->dc_memin = (s32) f->dc_table->base + ADPCMFBYTES *
            ((s32) (f->dc_loop.start >> LFSAMPLES) + 1);
        f->dc_sample = f->dc_loop.start;

        bEnd = *outp;
        while (outCount > nSam) {

            outCount -= nSam;

            op = (bEnd + ((nframes + 1) << (LFSAMPLES + 1)) + 16) & ~0x1f;

            bEnd += (nSam << 1);

            if ((f->dc_loop.count != -1) && (f->dc_loop.count != 0))
                f->dc_loop.count--;

            nSam = MIN(outCount, f->dc_loop.end - f->dc_loop.start);
            tsam = nSam - ADPCMFSIZE + f->dc_lastsam;
            if (tsam < 0) tsam = 0;
            nframes = (tsam + ADPCMFSIZE - 1) >> LFSAMPLES;
            nbytes = nframes * ADPCMFBYTES;
            ptr = func_80026898(ptr, f, tsam, nbytes, op, inp, f->dc_first | A_LOOP);

            aDMEMMove(ptr++, op + (f->dc_lastsam << 1), bEnd, nSam << 1);
        }

        f->dc_lastsam = (outCount + f->dc_lastsam) & 0xf;
        f->dc_sample += outCount;
        f->dc_memin += ADPCMFBYTES * nframes;
        return ptr;
    }

    nSam = nframes << LFSAMPLES;

    overFlow = f->dc_memin + nbytes - ((s32) f->dc_table->base + f->dc_table->len);
    if (overFlow < 0)
        overFlow = 0;
    nOver = (overFlow / ADPCMFBYTES) << LFSAMPLES;
    if (nOver > nSam + nLeft)
        nOver = nSam + nLeft;

    nbytes -= overFlow;

    if ((nOver - (nOver & 0xf)) < outCount) {
        decoded = 1;
        ptr = func_80026898(ptr, f, nSam - nOver, nbytes, *outp, inp, f->dc_first);

        if (f->dc_lastsam)
            *outp += (f->dc_lastsam << 1);
        else
            *outp += (ADPCMFSIZE << 1);

        f->dc_lastsam = (outCount + f->dc_lastsam) & 0xf;
        f->dc_sample += outCount;
        f->dc_memin += ADPCMFBYTES * nframes;
    } else {
        f->dc_lastsam = 0;
        f->dc_memin += ADPCMFBYTES * nframes;
    }

    if (nOver) {
        f->dc_lastsam = 0;
        if (decoded)
            startZero = (nLeft + nSam - nOver) << 1;
        else
            startZero = 0;
        aClearBuffer(ptr++, startZero + *outp, nOver << 1);
    }

    return ptr;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026B2C.s")
#endif
#ifdef PORT
#undef func_80026898
#endif
Acmd *func_80026FA8(N_PVoice *e, s16 *outp, Acmd *p) {
    Acmd *func_80026B2C(N_PVoice *filter, s16 *outp, s32 outCount, Acmd *p);
    Acmd *ptr = p;
    s16 inp;
    s32 inCount;
    s32 incr;
    f32 finCount;

    inp = N_AL_DECODER_IN;

    if (e->rs_upitch) {

        ptr = func_80026B2C(e, &inp, N_FIXED_SAMPLE, p);
        aDMEMMove(ptr++, inp, *outp, N_FIXED_SAMPLE << 1);

    } else {

        if (e->rs_ratio > 1.99996f) e->rs_ratio = 1.99996f;

        e->rs_ratio = (s32) (e->rs_ratio * UNITY_PITCH);
        e->rs_ratio = e->rs_ratio / UNITY_PITCH;

        finCount = e->rs_delta + (e->rs_ratio * (f32) N_FIXED_SAMPLE);
        inCount = (s32) finCount;
        e->rs_delta = finCount - (f32) inCount;

        ptr = func_80026B2C(e, &inp, inCount, p);

        incr = (s32) (e->rs_ratio * UNITY_PITCH);
        n_aResample(ptr++, osVirtualToPhysical(e->rs_state), e->rs_first, incr, inp, 0);
        e->rs_first = 0;
    }

    return ptr;
}

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

void func_800275C0(ALLink *ln) {
    ALLink *to;

    alUnlink(ln);

    to = &n_syn->pLameList;
    ln->next = to->next;
    ln->prev = to;
    if (to->next)
        to->next->prev = ln;
    to->next = ln;
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
s16 func_80027610(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a3;

    temp_a0_2 = arg0;
    temp_a2 = arg2;
    arg0 = arg1;
    arg2 = arg3;
    temp_a3 = arg3 << 0x10;
    arg3 = temp_a2;
    temp_a0 = temp_a0_2 >> 3;
    if (temp_a0 == 0) {
        return (s16) arg1;
    }
    return (s16) ((s16) arg1 + (((s32) ((temp_a2 & 0xFFFF) * temp_a0) >> 0x10) + ((temp_a3 >> 0x10) * temp_a0)));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80027610.s")
#endif

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

Acmd *func_80027D58(ALFx *r, s16 *curr_ptr, s32 buff, Acmd *p) {
    Acmd *ptr = p;
    s32 after_end, before_end;
    s16 *updated_ptr, *delay_end;

    delay_end = &r->base[r->length];
    if (curr_ptr < r->base)
        curr_ptr += r->length;
    updated_ptr = curr_ptr + N_FIXED_SAMPLE;

    if (updated_ptr > delay_end) {
        after_end = updated_ptr - delay_end;
        before_end = delay_end - curr_ptr;

        n_aSaveBuffer(ptr++, before_end << 1, buff, osVirtualToPhysical(curr_ptr));
        n_aSaveBuffer(ptr++, after_end << 1, buff + (before_end << 1), osVirtualToPhysical(r->base));
    } else {
        n_aSaveBuffer(ptr++, N_FIXED_SAMPLE << 1, buff, osVirtualToPhysical(curr_ptr));
    }

    return ptr;
}

Acmd *func_80027E84(ALLowPass *lp, s32 buff, Acmd *p) {
    Acmd *ptr = p;
    {
        s16 tmp;

        tmp = buff >> 8;
        n_aLoadADPCM(ptr++, 32, osVirtualToPhysical(lp->fcvec.fccoef));
        n_aPoleFilter(ptr++, lp->first, lp->fgain, tmp, osVirtualToPhysical(lp->fstate));
    }

    lp->first = 0;

    return ptr;
}

Acmd *func_80027F38(ALFx *r, s16 *curr_ptr, s32 buff, s32 count, Acmd *p) {
    Acmd *ptr = p;
    s32 after_end, before_end;
    s16 *updated_ptr, *delay_end;

    delay_end = &r->base[r->length];

    if (curr_ptr < r->base)
        curr_ptr += r->length;
    updated_ptr = curr_ptr + count;

    if (updated_ptr > delay_end) {
        after_end = updated_ptr - delay_end;
        before_end = delay_end - curr_ptr;

        n_aLoadBuffer(ptr++, before_end << 1, buff, osVirtualToPhysical(curr_ptr));
        n_aLoadBuffer(ptr++, after_end << 1, buff + (before_end << 1), osVirtualToPhysical(r->base));
    } else {
        n_aLoadBuffer(ptr++, count << 1, buff, osVirtualToPhysical(curr_ptr));
    }

    return ptr;
}

typedef struct {
    /* 0x00 */ u8  pad00[0x10];
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ u8  pad18[0x4];
    /* 0x1C */ f32 unk1C;
} KOsc;

f32 func_80028080(KOsc *osc, s32 arg1) {
    f32 tmp;

    osc->unk14 = osc->unk14 + osc->unk10 * (f32) arg1;

    if (osc->unk14 > 2.0f) {
        osc->unk14 = osc->unk14 - 4.0f;
    } else {
        osc->unk14 = osc->unk14;
    }

    tmp = osc->unk14;
    if (tmp < 0.0f) {
        tmp = -tmp;
    }
    tmp = tmp - 1.0f;
    return osc->unk1C * tmp;
}

Acmd *func_8002810C(ALFx *r, ALDelay *d, s32 buff, Acmd *p) {
    Acmd *ptr = p;
    s32 ratio, count, rbuff = N_AL_TEMP_2;
    s16 *out_ptr;
    f32 fincount, fratio, delta;
    s32 ramalign = 0, length;
    s32 incount = N_FIXED_SAMPLE;

    if (d->rs) {
        length = d->output - d->input;
        delta = func_80028080(d, incount);
        delta /= length;
        delta = (s32) (delta * UNITY_PITCH);
        delta = delta / UNITY_PITCH;
        fratio = 1.0f - delta;
        fincount = d->rs->delta + (fratio * (f32) incount);
        count = (s32) fincount;
        d->rs->delta = fincount - (f32) count;
        out_ptr = &r->input[-(d->output - d->rsdelta)];
        ramalign = ((s32) out_ptr & 0x7) >> 1;
        ptr = func_80027F38(r, out_ptr - ramalign, rbuff, count + ramalign, ptr);

        ratio = (s32) (fratio * UNITY_PITCH);
        {
            s16 tmp;

            tmp = buff >> 8;
            n_aResample(ptr++, osVirtualToPhysical(d->rs->state), d->rs->first, ratio,
                        rbuff + (ramalign << 1), tmp);
        }
        d->rs->first = 0;
        d->rsdelta += count - incount;
    } else {
        out_ptr = &r->input[-d->output];
        ptr = func_80027F38(r, out_ptr, buff, N_FIXED_SAMPLE, ptr);
    }

    return ptr;
}

#define SWAP(in, out)   \
{                       \
    s16 t = out;        \
    out = in;           \
    in = t;             \
}

Acmd *func_80028318(s32 sampleOffset, Acmd *p) {
    Acmd *ptr = p;
    ALFx *r = (ALFx *) ((N_ALAuxBus *) n_syn->auxBus)->fx;
    s16 i, buff1, buff2, input, output;
    s16 *in_ptr, *out_ptr, gain, *prev_out_ptr = 0;
    ALDelay *d, *pd;

    ptr = n_alAuxBusPull(sampleOffset, p);

    input = N_AL_AUX_L_OUT;
    output = N_AL_AUX_R_OUT;
    buff1 = N_AL_TEMP_0;
    buff2 = N_AL_TEMP_1;

    aMix(ptr++, 0, 0xda83, N_AL_AUX_L_OUT, input);
    aMix(ptr++, 0, 0x5a82, N_AL_AUX_R_OUT, input);

    ptr = func_80027D58(r, r->input, input, ptr);

    aClearBuffer(ptr++, output, N_FIXED_SAMPLE << 1);

    for (i = 0; i < r->section_count; i++) {
        d = &r->delay[i];
        in_ptr = &r->input[-d->input];
        out_ptr = &r->input[-d->output];

        if (in_ptr == prev_out_ptr) {
            SWAP(buff1, buff2);
        } else {
            ptr = func_80027F38(r, in_ptr, buff1, N_FIXED_SAMPLE, ptr);
        }
        ptr = func_8002810C(r, d, buff2, ptr);

        if (d->ffcoef) {
            aMix(ptr++, 0, (u16) d->ffcoef, buff1, buff2);
            if (!d->rs && !d->lp) {
                ptr = func_80027D58(r, out_ptr, buff2, ptr);
            }
        }

        if (d->fbcoef) {
            aMix(ptr++, 0, (u16) d->fbcoef, buff2, buff1);
            ptr = func_80027D58(r, in_ptr, buff1, ptr);
        }

        if (d->lp)
            ptr = func_80027E84(d->lp, buff2, ptr);

        if (!d->rs)
            ptr = func_80027D58(r, out_ptr, buff2, ptr);

        if (d->gain)
            aMix(ptr++, 0, (u16) d->gain, buff2, output);

        prev_out_ptr = &r->input[d->output];
    }

    r->input += N_FIXED_SAMPLE;
    if (r->input > &r->base[r->length])
        r->input -= r->length;

    aDMEMMove(ptr++, output, N_AL_AUX_L_OUT, N_FIXED_SAMPLE << 1);

    return ptr;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800285F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002901C.s")

typedef struct KVoiceSt {
    /* 0x00 */ struct KVoiceSt *next;
    /* 0x04 */ u8 pad04[0x34];
} KVoiceSt;

/* Kirby's channel state is 0x18, not the SDK's ALChanState. */
typedef struct {
    /* 0x00 */ u8 pad00[0x18];
} KChanSt;

typedef struct {
    /* 0x00 */ ALPlayer      node;
    /* 0x14 */ N_ALSynth    *drvr;
    /* 0x18 */ void         *target;
    /* 0x1C */ ALMicroTime   curTime;
    /* 0x20 */ void         *bank;
    /* 0x24 */ void         *unk24;
    /* 0x28 */ void         *unk28;
    /* 0x2C */ s32           uspt;
    /* 0x30 */ s32           nextDelta;
    /* 0x34 */ s32           state;
    /* 0x38 */ u16           chanMask;
    /* 0x3A */ s16           vol;
    /* 0x3C */ u8            maxChannels;
    /* 0x3D */ u8            debugFlags;
    /* 0x3E */ u8            pad3E[2];
    /* 0x40 */ N_ALEvent     nextEvent;
    /* 0x50 */ ALEventQueue  evtq;
    /* 0x64 */ ALMicroTime   frameTime;
    /* 0x68 */ KChanSt      *chanState;
    /* 0x6C */ KVoiceSt     *vAllocHead;
    /* 0x70 */ KVoiceSt     *vAllocTail;
    /* 0x74 */ KVoiceSt     *vFreeList;
    /* 0x78 */ u8            pad78[4];
    /* 0x7C */ ALOscInit     initOsc;
    /* 0x80 */ ALOscUpdate   updateOsc;
    /* 0x84 */ ALOscStop     stopOsc;
} KCSeqpNew;

void func_8002C790(void *);
ALMicroTime func_8002901C(void *);

void func_800296C0(KCSeqpNew *seqp, ALSeqpConfig *c) {
    s32 i;
    N_ALEventListItem *items;
    KVoiceSt *vs;
    KVoiceSt *voices;

    ALHeap *hp = c->heap;

    seqp->bank = 0;
    seqp->unk24 = 0;
    seqp->unk28 = 0;
    seqp->target = NULL;
    seqp->drvr = n_syn;
    seqp->chanMask = 0xff;
    seqp->uspt = 488;
    seqp->nextDelta = 0;
    seqp->state = AL_STOPPED;
    seqp->vol = 0x7FFF;
    seqp->debugFlags = c->debugFlags;
    seqp->frameTime = AL_USEC_PER_FRAME;
    seqp->curTime = 0;
    seqp->initOsc = c->initOsc;
    seqp->updateOsc = c->updateOsc;
    seqp->stopOsc = c->stopOsc;

    seqp->nextEvent.type = AL_SEQP_API_EVT;

    seqp->maxChannels = c->maxChannels;
    seqp->chanState = alHeapDBAlloc(0, 0, hp, c->maxChannels, sizeof(KChanSt));
    func_8002C790(seqp);

    voices = alHeapDBAlloc(0, 0, hp, c->maxVoices, sizeof(KVoiceSt));
    seqp->vFreeList = 0;
    for (i = 0; i < c->maxVoices; i++) {
        vs = &voices[i];
        vs->next = seqp->vFreeList;
        seqp->vFreeList = vs;
    }

    seqp->vAllocHead = 0;
    seqp->vAllocTail = 0;

    items = alHeapDBAlloc(0, 0, hp, c->maxEvents, sizeof(N_ALEventListItem));
    func_80026260(&seqp->evtq, items, c->maxEvents);

    seqp->node.next = NULL;
    seqp->node.handler = func_8002901C;
    seqp->node.clientData = seqp;
    n_alSynAddSeqPlayer(&seqp->node);
}

void func_80029834(void) {
}

s32 _n_timeToSamples(s32 micros) {
    f32 tmp = ((f32) micros) * n_syn->outputRate / 1e+06f + 0.5f;

    return (s32) tmp & ~0xf;
}

void func_80029888(void) {
    ALLink *dl;
    ALLink *ln;
    ALLink *to;

    while ((dl = n_syn->pLameList.next) != 0) {
        alUnlink(dl);
        ln = dl;
        to = &n_syn->pFreeList;
        ln->next = to->next;
        ln->prev = to;
        if (to->next)
            to->next->prev = ln;
        to->next = ln;
    }
}

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

/* 2/18 diffs at -O3: instruction-for-instruction right except that the ROM
 * emits the aSaveBuffer word (0x8) BEFORE the aInterleave word (0x0) while
 * IDO emits them in source order; reversing the two macro calls reverses the
 * two `lui`s as well and is worse.  Its listing also carries an extra unnamed
 * empty function at 0x800299F0 (`jr $ra; nop` past the epilogue), so a
 * conversion must define `void func_800299F0(void) {}` after it or the TU
 * comes out 8 bytes short. */
#ifdef NON_MATCHING
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
/* 194/198 at -O3 and the instruction COUNT is EXACT.  Every block, branch,
 * branch-likely duplicate and memory reference lines up; the entire residue is
 * that IDO HOISTS LOOP-INVARIANT CONSTANTS out of the two loops where the ROM
 * re-materialises them every iteration -- 0x7FFFFFFF (ROM: `lui $a1`/`ori`
 * inside the loop, ours: a callee-saved register), 1e+06f and 0.5f (ROM:
 * `lwc1 %lo(D_800417A4)` and `lui $at, 0x3F000000` inside the loop, ours:
 * $f20/$f22, which also costs the two `sdc1` saves and 8 bytes of frame), -16,
 * and `cmdList` (ROM re-reads its home slot 0x48($sp), ours keeps $s7).
 *
 * The cause is structural, not a source shape: the ROM's constants all come
 * from __n_nextSampleTime and _n_timeToSamplesNoRound, which are `static` and
 * were INLINED BY ujoin -- which runs AFTER uopt, so uopt never saw them inside
 * a loop and never hoisted them.  tools/decomp/cc_o3.py has no ujoin, so the
 * inlining has to be done in the source, and then uopt does see them and does
 * hoist.  No spelling of the source can put the inlining after the optimiser.
 *
 * Worth keeping: making `client` a 1-ELEMENT ARRAY is required and worth 4
 * instructions plus the whole $s3/n_syn reload pattern -- upstream passes
 * `&client` to the helper, so after inlining the local is address-taken and
 * every store through it invalidates IDO's cached `n_syn`.  A plain
 * `ALPlayer *client` gets register-allocated and the reload pattern vanishes. */
#ifdef NON_MATCHING
/* upstream libnaudio/n_synthesizer.c n_alAudioFrame, with __n_nextSampleTime
 * and _n_timeToSamplesNoRound hand-inlined -- the ROM inlines both (ujoin), and
 * tools/decomp/cc_o3.py has no ujoin, so they have to be written out. */
#define N_NEXT_SAMPLE_TIME()                                                    \
    client[0] = 0;                                                                 \
    delta = 0x7fffffff;                                                         \
    if (n_syn->n_sndp)                                                          \
        if ((temp = n_syn->n_sndp->samplesLeft - n_syn->curSamples) < delta) {  \
            client[0] = n_syn->n_sndp;                                             \
            delta = temp;                                                       \
        }                                                                       \
    if (n_syn->n_seqp1)                                                         \
        if ((temp = n_syn->n_seqp1->samplesLeft - n_syn->curSamples) < delta) { \
            client[0] = n_syn->n_seqp1;                                            \
            delta = temp;                                                       \
        }                                                                       \
    if (n_syn->n_seqp2)                                                         \
        if ((n_syn->n_seqp2->samplesLeft - n_syn->curSamples) < delta) {        \
            client[0] = n_syn->n_seqp2;                                            \
        }

Acmd *alAudioFrame(Acmd *cmdList, s32 *cmdLen, s16 *outBuf, s32 outLen) {
    ALPlayer *client[1];
    ALMicroTime temp;
    ALMicroTime delta;
    Acmd *cmdlEnd = cmdList;
    Acmd *cmdPtr;
    s32 nOut;
    s16 *lOutBuf = outBuf;

    if (n_syn->head == 0) {
        *cmdLen = 0;
        return cmdList;
    }

    N_NEXT_SAMPLE_TIME();
    n_syn->paramSamples = client[0]->samplesLeft;
    while (n_syn->paramSamples - n_syn->curSamples < outLen) {
        n_syn->paramSamples &= ~0xf;
        client[0]->samplesLeft +=
            (s32) (((f32) (*client[0]->handler)(client[0]) * n_syn->outputRate / 1e+06f) + 0.5f);
        N_NEXT_SAMPLE_TIME();
        n_syn->paramSamples = client[0]->samplesLeft;
    }

    n_syn->paramSamples &= ~0xf;

    while (outLen > 0) {
        nOut = MIN(n_syn->maxOutSamples, outLen);

        cmdPtr = cmdlEnd;
        n_syn->sv_dramout = (s32) lOutBuf;
        cmdlEnd = n_alSavePull(n_syn->curSamples, cmdPtr);

        outLen -= nOut;
        lOutBuf += nOut << 1;
        if (n_syn->curSamples < 0x7FFFFF47) {
            n_syn->curSamples += nOut;
        } else {
            n_syn->curSamples = 0x80000090;
        }
    }
    *cmdLen = (s32) (cmdlEnd - cmdList);

    func_80029888();

    return cmdlEnd;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alAudioFrame.s")
#endif

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

#ifdef NON_MATCHING
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

void func_8002A1C4(ALLowPass *lp) {
    s32 i, temp;
    s16 fc;
    f64 ffc, fcoef;

    temp = lp->fc * 16384.0f;
    fc = temp >> 15;
    lp->fgain = 16384.0f - fc;

    lp->first = 1;
    for (i = 0; i < 8; i++)
        lp->fcvec.fccoef[i] = 0;

    lp->fcvec.fccoef[i++] = fc;
    fcoef = ffc = (f64) fc / 16384.0;

    for (; i < 16; i++) {
        fcoef *= ffc;
        lp->fcvec.fccoef[i] = (s16) (fcoef * 16384.0);
    }
}

/* upstream libnaudio/n_reverb.c n_alFxParamHdl.  RANGE (2.0) has to be spelled
 * as the INTEGER 2: `x * 2.0f` is strength-reduced by IDO to `add.s $f,$f,$f`
 * (and `x * 2.0` to `add.d`), while `2 * x` materialises 2.0f with lui/mtc1 and
 * gives the ROM's `mul.s`. */
s32 func_8002A290(void *filter, s32 paramID, void *param) {
    ALFx *f = (ALFx *) filter;
    s32 p = (paramID - 2) % 8;
    s32 s = (paramID - 2) / 8;
    s32 val = *(s32 *) param;

    switch (p) {
        case 0:
            f->delay[s].input = (u32) val & 0xFFFFFFF8;
            break;
        case 1:
            f->delay[s].output = (u32) val & 0xFFFFFFF8;
            break;
        case 3:
            f->delay[s].ffcoef = (s16) val;
            break;
        case 2:
            f->delay[s].fbcoef = (s16) val;
            break;
        case 4:
            f->delay[s].gain = (s16) val;
            break;
        case 5:
            f->delay[s].rsinc = (2 * (((f32) val) / 1000)) / n_syn->outputRate;
            break;
        case 6:
            f->delay[s].rsgain =
                (((f32) val) / 173123.404906676f) * (f->delay[s].output - f->delay[s].input);
            break;
        case 7:
            if (f->delay[s].lp) {
                f->delay[s].lp->fc = (s16) val;
                func_8002A1C4(f->delay[s].lp);
            }
            break;
    }
    return 0;
}

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

/* The n_audio functions from here on were each their own object in
 * libn_audio.a, so each ends 16-byte aligned and the ROM has nop fill between
 * them. That fill is the LINKER's, not the function's, so the drafts below were
 * condemned as unconvertible; one C file per object makes SUBALIGN(16) emit it.
 * See src/main/libn_audio_2.h and kirby64.yaml. */

void n_alSynAddPlayer(ALPlayer *client) {
    OSIntMask mask = osSetIntMask(OS_IM_NONE);

    client->samplesLeft = n_syn->curSamples;

    client->next = n_syn->head;
    n_syn->head = client;

    osSetIntMask(mask);
}

#ifdef PORT
/* ==========================================================================
 * PORT ARMS for the functions above that are still #pragma GLOBAL_ASM.
 *
 * On the PC build a GLOBAL_ASM pragma expands to nothing, so each function
 * defined here simply supplies the symbol the pragma leaves undefined; the
 * N64 build never sees any of this.  Sources, per function:
 *
 *   - the n_* library functions are the upstream libreultra/src/libnaudio
 *     C (N_MICRO configuration), which the ROM matches instruction-for-
 *     instruction per the notes in this file;
 *   - the Kirby-specific engine (func_80023xxx/24750/285F8/2901C) is
 *     transcribed from m2c output of the ROM listing, cross-checked against
 *     the upstream n_csplayer.c it was derived from.
 *
 * LAYOUT WARNING: the compact-sequence-player helpers that already compile
 * in libn_audio_2*.c read the player object through N64-offset partial
 * views that contradict each other at LP64 (see the PORT-ONLY VIEW comment
 * near the top of this file).  The one view every EXTERNALLY-CALLED poster
 * agrees on is N_CSPlayer: the event queue at LP64 offset 80.  The player
 * object created here (KCSeqpPC) therefore pins evtq at offset 80 and the
 * handler below re-implements every helper whose partial view disagrees
 * (func_8002B2E8/B40C/B4B4/B638/B6A8/B70C/B214/B238/B5E8/B158/C68C/C790/
 * C9B0/D0D0, func_80026460, func_800263F0) against this one layout.
 * ========================================================================== */

#include <string.h>

/* ------------------------------------------------------------------ CSP -- */

typedef struct {
    ALSound *inst;          /* really ALInstrument* (program) */
    s16  bendRange;         /* cents*10 per full bend */
    u8   unk06;
    u8   pan;
    u8   priority;
    u8   vol;
    u8   fxmix;
    u8   sustain;
    f32  pitchBend;
    u8   pressure;          /* channel pressure -> vibrato depth scale */
    u8   instVol;
    u8   fxDry;             /* unk12: dry select for start params */
    u8   fxWet;             /* unk13: wet select for start params */
    u8   bankSel;           /* unk14: which of the 3 banks 0xC0 uses */
} KChanStPC;

typedef struct KCSeqpPC_s {
    ALPlayer      node;         /*   0 */
    N_ALSynth    *drvr;         /*  32 */
    ALCSeq       *target;       /*  40 */
    void         *bank;         /*  48 */
    void         *bank2;        /*  56 */
    void         *bank3;        /*  64 */
    s32           curTime;      /*  72 */
    s32           uspt;         /*  76 */
    ALEventQueue  evtq;         /*  80  == N_CSPlayer.evtq, LOAD-BEARING */
    s32           nextDelta;
    s32           state;
    u16           chanMask;
    s16           vol;
    u8            maxChannels;
    u8            debugFlags;
    s32           frameTime;
    s32           unk78;
    N_ALEvent     nextEvent;
    KChanStPC    *chanState;
    N_ALVoiceState *vAllocHead;
    N_ALVoiceState *vAllocTail;
    N_ALVoiceState *vFreeList;
    ALOscInit     initOsc;
    ALOscUpdate   updateOsc;
    ALOscStop     stopOsc;
    /* PORT-private: free-list stash so func_80020BB8's fixed-offset read of
     * "player state" (which lands on evtq.freeList.next at LP64) reads zero
     * exactly while the player is stopped.  See pc_cspStash below. */
    ALLink        stash;
    s32           stashed;
} KCSeqpPC;

typedef struct {
    /* KStartParam of libn_audio_2.c at its LP64 offsets (func_8002AD90 and
     * func_8002AE74 build these). */
    void *next;             /*  0 */
    s32   delta;            /*  8 */
    s16   type;             /* 12 */
    s16   unity;            /* 14 */
    f32   pitch;            /* 16 */
    s16   volume;           /* 20 */
    u8    pan;              /* 22 */
    u8    fxMix;            /* 23 */
    s32   samples;          /* 24 */
    void *wave;             /* 32 */
    u8    unk1C;            /* 40 */
    u8    unk1D;            /* 41 */
} PcStartParam;

typedef struct {
    /* KFreeParam of libn_audio_2f.c */
    void *next;
    s32   delta;
    s16   type;
    N_PVoice *pvoice;       /* 16 */
} PcFreeParam;

typedef struct {
    /* generic ALParam/KParam at its LP64 offsets */
    void *next;             /*  0 */
    s32   delta;            /*  8 */
    s16   type;             /* 12 */
    s16   unity;            /* 14 */
    union { f32 f; s32 i; } data;      /* 16 */
    union { f32 f; s32 i; } moredata;  /* 20 */
} PcParam;

#define PC_CSP(p) ((KCSeqpPC *)(p))

static s32 pc_round184(s32 samples) {
    return ((samples + 0x5C) / 184) * 0xB8;
}

static void pc_cspSetUsptFromTempo(KCSeqpPC *seqp, f32 tempo) {
    if (seqp->target) {
        seqp->uspt = (s32)(tempo * seqp->target->qnpt);
    } else {
        seqp->uspt = 488;
    }
}

/* __n_CSPPostNextSeqEvent (replaces the KCSeqp-view func_800263F0) */
static void pc_cspPostNextSeqEvent(KCSeqpPC *seqp) {
    N_ALEvent evt;
    s32 deltaTicks;

    if (seqp->state == AL_PLAYING && seqp->target != NULL) {
        if (__alCSeqNextDelta(seqp->target, &deltaTicks)) {
            evt.type = AL_SEQ_REF_EVT;
            n_alEvtqPostEvent(&seqp->evtq, &evt, seqp->uspt * deltaTicks);
        }
    }
}

static s16 pc_cspVol(KCSeqpPC *seqp) {
    return seqp->vol;
}

static u8 pc_cspChanVol(KCSeqpPC *seqp, u8 chan) {
    /* func_8002D0D0 */
    return (seqp->chanState[chan].vol * seqp->chanState[chan].instVol) / 0x7F;
}

static s16 pc_vsVol(N_ALVoiceState *vs, KCSeqpPC *seqp) {
    /* func_8002B238 */
    s32 vol = (vs->tremelo * vs->velocity * vs->envGain) >> 6;
    s32 t = (pc_cspChanVol(seqp, vs->channel) * vs->sound->sampleVolume *
             pc_cspVol(seqp)) >> 14;

    return (u32)(vol * t) >> 15;
}

static u8 pc_vsPan(N_ALVoiceState *vs, KCSeqpPC *seqp) {
    /* func_8002B5E8 */
    s32 pan = seqp->chanState[vs->channel].pan + vs->sound->samplePan - 0x40;

    if (pan <= 0) pan = 0;
    if (pan >= 0x7F) pan = 0x7F;
    return (u8)pan;
}

static s32 pc_vsDelta(N_ALVoiceState *vs, s32 curTime) {
    /* func_8002B214 */
    s32 delta = vs->envEndTime - curTime;

    return (delta >= 0) ? delta : 1000;
}

static void pc_cspResetChan(KCSeqpPC *seqp, s32 chan) {
    /* func_8002B0A8 */
    KChanStPC *cs = &seqp->chanState[chan];

    cs->unk06 = 0;
    cs->fxmix = 0;
    cs->pan = 0x40;
    cs->vol = 0x7F;
    cs->priority = 5;
    cs->sustain = 0;
    cs->bendRange = 0xC8;
    cs->pitchBend = 1.0f;
    cs->fxDry = 0;
    cs->fxWet = 0x5F;
    cs->bankSel = 0;
}

static void pc_cspSetChanInst(KCSeqpPC *seqp, ALInstrument *inst, s32 chan) {
    /* func_8002B03C */
    KChanStPC *cs = &seqp->chanState[chan];

    cs->inst = (ALSound *)inst;
    cs->pan = inst->pan;
    cs->vol = 0x7F;
    cs->priority = inst->priority;
    cs->bendRange = inst->bendRange;
    cs->instVol = inst->volume;
}

static void pc_cspProgChange(KCSeqpPC *seqp, ALInstrument *inst, s32 chan) {
    /* func_8002B59C */
    KChanStPC *cs = &seqp->chanState[chan];

    cs->inst = (ALSound *)inst;
    cs->priority = inst->priority;
    cs->bendRange = inst->bendRange;
    cs->instVol = inst->volume;
}

static void pc_cspInitFromBank(KCSeqpPC *seqp, ALBank *bank) {
    /* func_8002B158 */
    ALInstrument *inst;
    s32 i;

    i = 0;
    do {
        inst = bank->instArray[i];
        i++;
    } while (inst == NULL);
    for (i = 0; i < seqp->maxChannels; i++) {
        pc_cspResetChan(seqp, i);
        pc_cspSetChanInst(seqp, inst, i);
    }
    if (bank->percussion != NULL) {
        pc_cspResetChan(seqp, 9);
        pc_cspSetChanInst(seqp, bank->percussion, 9);
    }
}

static void pc_cspResetAllChans(KCSeqpPC *seqp) {
    /* func_8002C790 */
    s32 i;

    for (i = 0; i < seqp->maxChannels; i++) {
        seqp->chanState[i].inst = NULL;
        seqp->chanState[i].pressure = 0;
        pc_cspResetChan(seqp, i);
    }
}

static N_ALVoiceState *pc_cspLookupVoice(KCSeqpPC *seqp, u8 key, u8 chan) {
    /* func_8002B638 */
    N_ALVoiceState *vs;

    for (vs = seqp->vAllocHead; vs != NULL; vs = vs->next) {
        if (vs->key == key && vs->channel == chan &&
            vs->phase != AL_PHASE_RELEASE && vs->phase != AL_PHASE_SUSTREL) {
            return vs;
        }
    }
    return NULL;
}

static N_ALVoiceState *pc_cspMapVoice(KCSeqpPC *seqp, u8 key, u8 vel, u8 chan) {
    /* func_8002B6A8 */
    N_ALVoiceState *vs = seqp->vFreeList;

    if (vs != NULL) {
        seqp->vFreeList = vs->next;
        vs->next = NULL;
        if (seqp->vAllocHead == NULL) {
            seqp->vAllocHead = vs;
        } else {
            seqp->vAllocTail->next = vs;
        }
        seqp->vAllocTail = vs;
        vs->channel = chan;
        vs->key = key;
        vs->velocity = vel;
        vs->voice.clientPrivate = vs;
    }
    return vs;
}

static void pc_cspUnmapVoice(KCSeqpPC *seqp, N_ALVoice *voice) {
    /* func_8002B4B4, keyed on the voice's clientPrivate instead of the N64
     * "voice - 4" pointer arithmetic that no LP64 layout can satisfy. */
    N_ALVoiceState *target = (N_ALVoiceState *)voice->clientPrivate;
    N_ALVoiceState *prev = NULL;
    N_ALVoiceState *cur = seqp->vAllocHead;

    while (cur != NULL) {
        if (cur == target) {
            if (prev != NULL) {
                prev->next = cur->next;
            } else {
                seqp->vAllocHead = cur->next;
            }
            if (cur == seqp->vAllocTail) {
                seqp->vAllocTail = prev;
            }
            cur->next = seqp->vFreeList;
            seqp->vFreeList = cur;
            return;
        }
        prev = cur;
        cur = cur->next;
    }
}

static ALSound *pc_cspLookupSound(KCSeqpPC *seqp, u8 key, u8 vel, u8 chan) {
    /* func_8002B70C / __lookupSoundQuick */
    ALInstrument *inst = (ALInstrument *)seqp->chanState[chan].inst;
    s32 l = 1;
    s32 r;
    s32 i;
    ALKeyMap *keymap;

    if (inst == NULL) {
        return NULL;
    }
    r = inst->soundCount;
    while (r >= l) {
        i = (l + r) / 2;
        keymap = inst->soundArray[i - 1]->keyMap;
        if (key >= keymap->keyMin && key <= keymap->keyMax &&
            vel >= keymap->velocityMin && vel <= keymap->velocityMax) {
            return inst->soundArray[i - 1];
        } else if (key < keymap->keyMin ||
                   (vel < keymap->velocityMin && key <= keymap->keyMax)) {
            r = i - 1;
        } else {
            l = i + 1;
        }
    }
    return NULL;
}

static void pc_cspStopOscEvents(KCSeqpPC *seqp, N_ALVoiceState *vs) {
    /* func_8002C68C */
    N_ALEventListItem *item = (N_ALEventListItem *)seqp->evtq.allocList.next;
    N_ALEventListItem *next;
    s16 t;

    while (item != NULL) {
        next = (N_ALEventListItem *)item->node.next;
        t = item->evt.type;
        if ((t == AL_TREM_OSC_EVT || t == AL_VIB_OSC_EVT) &&
            item->evt.msg.osc.vs == (struct N_ALVoiceState_s *)vs) {
            (*seqp->stopOsc)(item->evt.msg.osc.oscState);
            alUnlink((ALLink *)item);
            if (next) {
                next->delta += item->delta;
            }
            alLink((ALLink *)item, &seqp->evtq.freeList);
            if (t == AL_TREM_OSC_EVT) {
                vs->flags &= 0xFE;
            } else {
                vs->flags &= 0xFD;
            }
            if (!vs->flags) {
                return;
            }
        }
        item = next;
    }
}

static void pc_cspReleaseVoice(KCSeqpPC *seqp, N_ALVoice *voice,
                               ALMicroTime deltaTime) {
    /* func_8002B2E8 */
    N_ALEvent evt;
    N_ALVoiceState *vs = (N_ALVoiceState *)voice->clientPrivate;
    void func_8002C990(N_ALVoice *, s16);

    if (vs->envPhase == AL_PHASE_ATTACK) {
        ALLink *node = seqp->evtq.allocList.next;
        ALLink *next;
        N_ALEventListItem *item, *nextItem;

        while (node != NULL) {
            next = node->next;
            item = (N_ALEventListItem *)node;
            nextItem = (N_ALEventListItem *)next;
            if (item->evt.type == AL_SEQP_ENV_EVT &&
                item->evt.msg.vol.voice == (struct N_ALVoice_s *)voice) {
                if (nextItem) {
                    nextItem->delta += item->delta;
                }
                alUnlink(node);
                alLink(node, &seqp->evtq.freeList);
            }
            node = next;
        }
    }
    vs->velocity = 0;
    vs->envPhase = AL_PHASE_RELEASE;
    vs->envGain = 0;
    vs->envEndTime = seqp->curTime + deltaTime;
    func_8002C990(voice, 0);
    n_alSynSetVol(voice, 0, deltaTime);
    evt.type = AL_NOTE_END_EVT;
    evt.msg.note.voice = (struct N_ALVoice_s *)voice;
    n_alEvtqPostEvent(&seqp->evtq, &evt, deltaTime);
}

static u8 pc_cspVoiceNeedsNoteKill(KCSeqpPC *seqp, N_ALVoice *voice,
                                   ALMicroTime killTime) {
    /* func_8002B40C */
    ALLink *node = seqp->evtq.allocList.next;
    ALLink *next;
    N_ALEventListItem *item;
    ALMicroTime itemTime = 0;
    u8 needsKill = TRUE;

    while (node != NULL) {
        next = node->next;
        item = (N_ALEventListItem *)node;
        itemTime += item->delta;
        if (item->evt.type == AL_NOTE_END_EVT &&
            item->evt.msg.note.voice == (struct N_ALVoice_s *)voice) {
            if (itemTime > killTime) {
                if (next) {
                    ((N_ALEventListItem *)next)->delta += item->delta;
                }
                alUnlink(node);
                alLink(node, &seqp->evtq.freeList);
            } else {
                needsKill = FALSE;
            }
            break;
        }
        node = next;
    }
    return needsKill;
}

/* Free-list stash: func_80020BB8 ("is this player busy?") reads the u32 at
 * LP64 offset 80 of the player, which is the low half of
 * evtq.freeList.next.  While the player is STOPPED the free list is parked
 * on a private stash so that word reads zero and the game's wait-for-BGM
 * spin (func_800A74D8) terminates; every event posted at a stopped player
 * is then swallowed by n_alEvtqPostEvent's empty-free-list guard, which is
 * the correct "stopped" behaviour anyway.  The audio thread restocks the
 * free list (pc_cspUnstash) before posting SEQ/PLAY events. */
static void pc_cspStash(KCSeqpPC *seqp) {
    ALLink *n;

    while ((n = seqp->evtq.freeList.next) != NULL) {
        alUnlink(n);
        alLink(n, &seqp->stash);
        seqp->stashed++;
    }
}

void pc_cspUnstash(void *p) {
    KCSeqpPC *seqp = PC_CSP(p);
    ALLink *n;

    while ((n = seqp->stash.next) != NULL) {
        alUnlink(n);
        alLink(n, &seqp->evtq.freeList);
        seqp->stashed--;
    }
}

/* Replacements for the two libreultra na_n_csp*.o posters, so every event
 * poster in the binary uses one and the same evtq offset.  Defining them
 * here makes tools/pc/link.sh drop the superseded libreultra objects. */
void n_alCSPSetChlFXMix(void *seqp, u8 chan, u8 fxmix) {
    N_ALEvent evt;

    evt.type = AL_SEQP_MIDI_EVT;
    evt.msg.midi.ticks = 0;
    evt.msg.midi.status = AL_MIDI_ControlChange | chan;
    evt.msg.midi.byte1 = AL_MIDI_FX1_CTRL;
    evt.msg.midi.byte2 = fxmix;
    n_alEvtqPostEvent(&PC_CSP(seqp)->evtq, &evt, 0);
}

void n_alCSPSetChlPriority(void *seqp, u8 chan, u8 priority) {
    N_ALEvent evt;

    evt.type = AL_SEQP_PRIORITY_EVT;
    evt.msg.sppriority.chan = chan;
    evt.msg.sppriority.priority = priority;
    n_alEvtqPostEvent(&PC_CSP(seqp)->evtq, &evt, 0);
}

/* pc_cspNew: replaces func_800296C0 (whose KCSeqpNew view initialises the
 * event queue at an LP64 offset none of the compiled posters use).  Called
 * from the PORT arm of auCreatePlayers. */
void pc_cspNew(void *p, ALSeqpConfig *c) {
    KCSeqpPC *seqp = PC_CSP(p);
    N_ALEventListItem *items;
    N_ALVoiceState *voices;
    ALHeap *hp = c->heap;
    s32 i;

    memset(seqp, 0, sizeof(*seqp));
    seqp->bank = NULL;
    seqp->bank2 = NULL;
    seqp->bank3 = NULL;
    seqp->target = NULL;
    seqp->drvr = n_syn;
    seqp->chanMask = 0xFF;
    seqp->uspt = 488;
    seqp->nextDelta = 0;
    seqp->state = AL_STOPPED;
    seqp->vol = 0x7FFF;
    seqp->debugFlags = c->debugFlags;
    seqp->frameTime = AL_USEC_PER_FRAME;
    seqp->curTime = 0;
    seqp->initOsc = c->initOsc;
    seqp->updateOsc = c->updateOsc;
    seqp->stopOsc = c->stopOsc;
    seqp->nextEvent.type = AL_SEQP_API_EVT;
    seqp->maxChannels = c->maxChannels;
    seqp->chanState = alHeapDBAlloc(0, 0, hp, c->maxChannels, sizeof(KChanStPC));
    pc_cspResetAllChans(seqp);

    voices = alHeapDBAlloc(0, 0, hp, c->maxVoices, sizeof(N_ALVoiceState));
    seqp->vFreeList = NULL;
    for (i = 0; i < c->maxVoices; i++) {
        voices[i].next = seqp->vFreeList;
        seqp->vFreeList = &voices[i];
    }
    seqp->vAllocHead = NULL;
    seqp->vAllocTail = NULL;

    items = alHeapDBAlloc(0, 0, hp, c->maxEvents, sizeof(N_ALEventListItem));
    func_80026260(&seqp->evtq, items, c->maxEvents);

    seqp->stash.next = NULL;
    seqp->stash.prev = NULL;
    seqp->stashed = 0;

    seqp->node.next = NULL;
    seqp->node.handler = (ALVoiceHandler)func_8002901C;
    seqp->node.clientData = seqp;
    n_alSynAddSeqPlayer(&seqp->node);
}

/* ---------------------------------------------------- compact sequences -- */

static u32 pc_cseqBE32(const u8 *p) {
    return ((u32)p[0] << 24) | ((u32)p[1] << 16) | ((u32)p[2] << 8) | p[3];
}

void alCSeqNew(ALCSeq *seq, u8 *ptr) {
    u32 i, tmpOff;

    /* The sequence image is raw ROM bytes: the 16 track offsets and the
     * division word are big-endian and are read as such here.  Everything
     * past the header is a byte stream. */
    seq->base = (ALCMidiHdr *)ptr;
    seq->validTracks = 0;
    seq->lastDeltaTicks = 0;
    seq->lastTicks = 0;
    seq->deltaFlag = 1;

    for (i = 0; i < 16; i++) {
        seq->lastStatus[i] = 0;
        seq->curBUPtr[i] = 0;
        seq->curBULen[i] = 0;
        tmpOff = pc_cseqBE32(ptr + 4 * i);
        if (tmpOff) {
            seq->validTracks |= 1 << i;
            seq->curLoc[i] = ptr + tmpOff;
            seq->evtDeltaTicks[i] = func_8002581C(seq, i);
        } else {
            seq->curLoc[i] = 0;
        }
    }
    seq->qnpt = 1.0f / (f32)pc_cseqBE32(ptr + 4 * 16);
}

/* __alCSeqGetTrackEvent, inlined into alCSeqNextEvent by the ROM. */
static void pc_cseqGetTrackEvent(ALCSeq *seq, u32 track, ALEvent *event) {
    u32 offset;
    u8 status, type, loopCt, curLpCt, *tmpPtr;

    status = func_80025758(seq, track);
    if (status == AL_MIDI_Meta) {
        type = func_80025758(seq, track);
        if (type == AL_MIDI_META_TEMPO) {
            event->type = AL_TEMPO_EVT;
            event->msg.tempo.status = status;
            event->msg.tempo.type = type;
            event->msg.tempo.byte1 = func_80025758(seq, track);
            event->msg.tempo.byte2 = func_80025758(seq, track);
            event->msg.tempo.byte3 = func_80025758(seq, track);
            seq->lastStatus[track] = 0;
        } else if (type == AL_MIDI_META_EOT) {
            seq->validTracks ^= 1 << track;
            if (seq->validTracks) {
                event->type = AL_TRACK_END;
            } else {
                event->type = AL_SEQ_END_EVT;
            }
        } else if (type == AL_CMIDI_LOOPSTART_CODE) {
            func_80025758(seq, track);
            func_80025758(seq, track);
            seq->lastStatus[track] = 0;
            event->type = AL_CSP_LOOPSTART;
        } else if (type == AL_CMIDI_LOOPEND_CODE) {
            tmpPtr = seq->curLoc[track];
            loopCt = *tmpPtr++;
            curLpCt = *tmpPtr;
            if (curLpCt == 0) {
                *tmpPtr = loopCt;
                seq->curLoc[track] = tmpPtr + 5;
            } else {
                if (curLpCt != 0xFF) {
                    *tmpPtr = curLpCt - 1;
                }
                tmpPtr++;
                offset = (u32)(*tmpPtr++) << 24;
                offset += (u32)(*tmpPtr++) << 16;
                offset += (u32)(*tmpPtr++) << 8;
                offset += *tmpPtr++;
                seq->curLoc[track] = tmpPtr - offset;
            }
            seq->lastStatus[track] = 0;
            event->type = AL_CSP_LOOPEND;
        }
    } else {
        event->type = AL_SEQ_MIDI_EVT;
        if (status & 0x80) {
            event->msg.midi.status = status;
            event->msg.midi.byte1 = func_80025758(seq, track);
            seq->lastStatus[track] = status;
        } else {
            event->msg.midi.status = seq->lastStatus[track];
            event->msg.midi.byte1 = status;
        }
        if ((event->msg.midi.status & 0xF0) != AL_MIDI_ProgramChange &&
            (event->msg.midi.status & 0xF0) != AL_MIDI_ChannelPressure) {
            event->msg.midi.byte2 = func_80025758(seq, track);
            if ((event->msg.midi.status & 0xF0) == AL_MIDI_NoteOn) {
                event->msg.midi.duration = func_8002581C(seq, track);
            }
        } else {
            event->msg.midi.byte2 = 0;
        }
    }
}

void alCSeqNextEvent(ALCSeq *seq, ALEvent *evt) {
    u32 i;
    u32 firstTime = 0xFFFFFFFF;
    u32 firstTrack = 0;
    u32 lastTicks = seq->lastDeltaTicks;

    for (i = 0; i < 16; i++) {
        if ((seq->validTracks >> i) & 1) {
            if (seq->deltaFlag) {
                seq->evtDeltaTicks[i] -= lastTicks;
            }
            if (seq->evtDeltaTicks[i] < firstTime) {
                firstTime = seq->evtDeltaTicks[i];
                firstTrack = i;
            }
        }
    }

    pc_cseqGetTrackEvent(seq, firstTrack, evt);
    evt->msg.midi.ticks = firstTime;
    seq->lastTicks += firstTime;
    seq->lastDeltaTicks = firstTime;
    if (evt->type != AL_TRACK_END) {
        seq->evtDeltaTicks[firstTrack] += func_8002581C(seq, firstTrack);
    }
    seq->deltaFlag = 1;
}

/* __alSeqNextDelta for the uncompressed-sequence path in libn_audio_2.c
 * (Kirby's runtime uses compact sequences only); upstream
 * libreultra/src/audio/seq.c, with readVarLen written out. */
char __alSeqNextDelta(ALSeq *seq, s32 *pDeltaTicks) {
    u8 *savedPtr;
    u32 value;
    u8 c;

    if (seq->curPtr >= seq->base + seq->len) {
        return FALSE;
    }
    savedPtr = seq->curPtr;
    value = *seq->curPtr++;
    if (value & 0x80) {
        value &= 0x7F;
        do {
            c = *seq->curPtr++;
            value = (value << 7) + (c & 0x7F);
        } while (c & 0x80);
    }
    *pDeltaTicks = value;
    seq->curPtr = savedPtr;
    return TRUE;
}

/* --------------------------------------------------- CSP event handlers -- */

/* __n_CSPHandleMIDIMsg (ROM func_800285F8), against KCSeqpPC. */
void func_800285F8(void *p, N_ALEvent *event) {
    KCSeqpPC *seqp = PC_CSP(p);
    N_ALVoiceState *vs;
    N_ALVoice *voice;
    N_ALEvent evt;
    ALMicroTime deltaTime;
    s32 status = event->msg.midi.status & AL_MIDI_StatusMask;
    u8 chan = event->msg.midi.status & AL_MIDI_ChannelMask;
    u8 key = event->msg.midi.byte1;
    u8 vel = event->msg.midi.byte2;
    KChanStPC *cs = &seqp->chanState[chan];

    switch (status) {
    case AL_MIDI_NoteOn:
        if (vel != 0) {
            ALVoiceConfig config;
            ALSound *sound;
            ALInstrument *inst;
            f32 oscValue;
            void *oscState;
            u8 fxmix, pan;
            s16 vol;
            s32 pitchCents;

            if (seqp->state != AL_PLAYING) {
                break;
            }
            if (!(D_8003FB1C & (1 << chan))) {
                break;
            }
            sound = pc_cspLookupSound(seqp, key, vel, chan);
            if (sound == NULL) {
                break;
            }
            config.priority = cs->priority;
            config.fxBus = 0;
            config.unityPitch = 0;
            vs = pc_cspMapVoice(seqp, key, vel, chan);
            if (vs == NULL) {
                break;
            }
            voice = &vs->voice;
            n_alSynAllocVoice(voice, &config);

            vs->envPhase = AL_PHASE_ATTACK;
            vs->sound = sound;
            if (cs->sustain >= 0x40) {
                vs->phase = AL_PHASE_SUSTAIN;
            } else {
                vs->phase = AL_PHASE_NOTEON;
            }
            pitchCents = (s16)((key - sound->keyMap->keyBase) * 100 +
                               sound->keyMap->detune);
            vs->pitch = alCents2Ratio(pitchCents);
            vs->envGain = sound->envelope->attackVolume;
            vs->flags = 0;
            vs->envEndTime = seqp->curTime + sound->envelope->attackTime;

            inst = (ALInstrument *)cs->inst;
            oscValue = 127.0f;
            if (inst->tremType && seqp->initOsc) {
                deltaTime = (*seqp->initOsc)(&oscState, &oscValue,
                                             inst->tremType, inst->tremRate,
                                             inst->tremDepth, inst->tremDelay);
                if (deltaTime) {
                    evt.type = AL_TREM_OSC_EVT;
                    evt.msg.osc.vs = (struct N_ALVoiceState_s *)vs;
                    evt.msg.osc.oscState = oscState;
                    n_alEvtqPostEvent(&seqp->evtq, &evt, deltaTime);
                    vs->flags |= 1;
                }
            }
            vs->tremelo = (u8)oscValue;

            oscValue = 1.0f;
            if (inst->vibType && seqp->initOsc) {
                deltaTime = (*seqp->initOsc)(&oscState, &oscValue,
                                             inst->vibType, inst->vibRate,
                                             inst->vibDepth, inst->vibDelay);
                if (deltaTime) {
                    evt.type = AL_VIB_OSC_EVT;
                    evt.msg.osc.vs = (struct N_ALVoiceState_s *)vs;
                    evt.msg.osc.oscState = oscState;
                    evt.msg.osc.chan = chan;
                    n_alEvtqPostEvent(&seqp->evtq, &evt, deltaTime);
                    vs->flags |= 2;
                }
            }
            vs->vibrato = oscValue;

            fxmix = cs->fxmix;
            pan = pc_vsPan(vs, seqp);
            vol = pc_vsVol(vs, seqp);
            deltaTime = sound->envelope->attackTime;
            func_8002AD90(voice, sound->wavetable,
                          cs->pitchBend * vs->pitch * vs->vibrato, vol, pan,
                          fxmix, deltaTime, cs->fxDry, cs->fxWet);

            evt.type = AL_SEQP_ENV_EVT;
            evt.msg.vol.voice = (struct N_ALVoice_s *)voice;
            evt.msg.vol.delta = sound->envelope->decayTime;
            evt.msg.vol.vol = sound->envelope->decayVolume;
            n_alEvtqPostEvent(&seqp->evtq, &evt, deltaTime);

            if (event->msg.midi.duration) {
                evt.type = AL_CSP_NOTEOFF_EVT;
                evt.msg.midi.status = chan | AL_MIDI_NoteOff;
                evt.msg.midi.byte1 = key;
                evt.msg.midi.byte2 = 0;
                n_alEvtqPostEvent(&seqp->evtq, &evt,
                                  seqp->uspt * event->msg.midi.duration);
            }
            break;
        }
        /* fall through: note on with zero velocity is a note off */
    case AL_MIDI_NoteOff:
        vs = pc_cspLookupVoice(seqp, key, chan);
        if (vs != NULL) {
            if (vs->phase == AL_PHASE_SUSTAIN) {
                vs->phase = AL_PHASE_SUSTREL;
            } else {
                vs->phase = AL_PHASE_RELEASE;
                pc_cspReleaseVoice(seqp, &vs->voice,
                                   vs->sound->envelope->releaseTime);
            }
        }
        break;

    case AL_MIDI_PolyKeyPressure:
        vs = pc_cspLookupVoice(seqp, key, chan);
        if (vs != NULL) {
            vs->velocity = vel;
            n_alSynSetVol(&vs->voice, pc_vsVol(vs, seqp),
                          pc_vsDelta(vs, seqp->curTime));
        }
        break;

    case AL_MIDI_ChannelPressure:
        /* Kirby repurposes channel pressure as the per-channel vibrato
         * depth scale used by the pitch-bend/vibrato recalculation. */
        cs->pressure = key;
        break;

    case AL_MIDI_ControlChange:
        switch (key) {
        case 0x0A: /* pan */
            cs->pan = vel;
            for (vs = seqp->vAllocHead; vs != NULL; vs = vs->next) {
                if (vs->channel == chan) {
                    n_alSynSetPan(&vs->voice, pc_vsPan(vs, seqp));
                }
            }
            break;
        case 0x07: /* volume */
            cs->vol = vel;
            for (vs = seqp->vAllocHead; vs != NULL; vs = vs->next) {
                if (vs->channel == chan && vs->envPhase != AL_PHASE_RELEASE) {
                    n_alSynSetVol(&vs->voice, pc_vsVol(vs, seqp),
                                  pc_vsDelta(vs, seqp->curTime));
                }
            }
            break;
        case 0x10:
        case 0x19:
            cs->priority = vel;
            break;
        case 0x40: /* sustain */
            cs->sustain = vel;
            for (vs = seqp->vAllocHead; vs != NULL; vs = vs->next) {
                if (vs->channel != chan || vs->phase == AL_PHASE_RELEASE) {
                    continue;
                }
                if (vel >= 0x40) {
                    if (vs->phase == AL_PHASE_NOTEON) {
                        vs->phase = AL_PHASE_SUSTAIN;
                    }
                } else if (vs->phase == AL_PHASE_SUSTAIN) {
                    vs->phase = AL_PHASE_NOTEON;
                } else if (vs->phase == AL_PHASE_SUSTREL) {
                    vs->phase = AL_PHASE_RELEASE;
                    pc_cspReleaseVoice(seqp, &vs->voice,
                                       vs->sound->envelope->releaseTime);
                }
            }
            break;
        case AL_MIDI_FX1_CTRL: /* 0x5B: effect send */
            cs->fxmix = vel;
            for (vs = seqp->vAllocHead; vs != NULL; vs = vs->next) {
                if (vs->channel == chan) {
                    n_alSynSetPan(&vs->voice, pc_vsPan(vs, seqp));
                }
            }
            break;
        case 0x14: /* bend range, tenths of a semitone; >= 0x79 = 12 semis */
            if (vel >= 0x79) {
                cs->bendRange = 0x4B0;
            } else {
                cs->bendRange = vel * 10;
            }
            break;
        case 0x15:
            seqp->unk78 = vel;
            break;
        case 0x16: /* dry select */
            cs->fxDry = vel;
            for (vs = seqp->vAllocHead; vs != NULL; vs = vs->next) {
                if (vs->channel == chan) {
                    func_8002CF40(&vs->voice, vel, cs->fxWet);
                }
            }
            break;
        case 0x17: /* wet select */
            cs->fxWet = vel;
            for (vs = seqp->vAllocHead; vs != NULL; vs = vs->next) {
                if (vs->channel == chan) {
                    func_8002CF40(&vs->voice, cs->fxDry, vel);
                }
            }
            break;
        case 0x18: /* bank select (0..2, only if that bank is loaded) */
            if (vel < 3 && (&seqp->bank)[vel] != NULL) {
                cs->bankSel = vel;
            }
            break;
        }
        break;

    case AL_MIDI_ProgramChange: {
        ALBank *bank = (ALBank *)(&seqp->bank)[cs->bankSel];

        if (bank != NULL && key < bank->instCount) {
            pc_cspProgChange(seqp, bank->instArray[key], chan);
        }
        break;
    }

    case AL_MIDI_PitchBendChange: {
        s32 bendVal = ((vel << 7) + key) - 0x2000;
        f32 ratio = alCents2Ratio((cs->bendRange * bendVal) / 8192);

        cs->pitchBend = ratio;
        for (vs = seqp->vAllocHead; vs != NULL; vs = vs->next) {
            if (vs->channel == chan) {
                n_alSynSetPitch(&vs->voice,
                                ((cs->pressure * (vs->vibrato - 1.0f)) / 127.0f +
                                 1.0f) * (vs->pitch * ratio));
            }
        }
        break;
    }
    }
}

/* __n_CSPHandleMetaMsg (ROM func_8002649C): tempo change, plus Kirby's
 * rescale of the already-queued note-off events to the new tempo. */
void func_8002649C(void *p, N_ALEvent *event) {
    KCSeqpPC *seqp = PC_CSP(p);
    N_ALEventListItem *item, *next;
    N_ALEventListItem *collected = NULL;
    s32 oldUspt;
    s32 acc;
    s32 tempo;
    OSIntMask mask;

    if (event->msg.tempo.status != AL_MIDI_Meta ||
        event->msg.tempo.type != AL_MIDI_META_TEMPO) {
        return;
    }
    oldUspt = seqp->uspt;
    tempo = (event->msg.tempo.byte1 << 16) | (event->msg.tempo.byte2 << 8) |
            event->msg.tempo.byte3;
    pc_cspSetUsptFromTempo(seqp, (f32)tempo);

    /* pull every queued note-off out, remembering its ABSOLUTE time */
    acc = 0;
    item = (N_ALEventListItem *)seqp->evtq.allocList.next;
    while (item != NULL) {
        next = (N_ALEventListItem *)item->node.next;
        acc += item->delta;
        if (item->evt.type == AL_CSP_NOTEOFF_EVT) {
            s32 absTime = acc;

            alUnlink((ALLink *)item);
            if (next != NULL) {
                next->delta += item->delta;
            }
            acc -= item->delta;
            item->delta = absTime;
            item->node.next = (ALLink *)collected;
            item->node.prev = NULL;
            collected = item;
        }
        item = next;
    }

    /* re-post them scaled to the new tempo */
    item = collected;
    while (item != NULL) {
        ALLink *node;

        next = (N_ALEventListItem *)item->node.next;
        item->delta = seqp->uspt * (item->delta / oldUspt);
        mask = osSetIntMask(OS_IM_NONE);
        for (node = &seqp->evtq.allocList; node != NULL; node = node->next) {
            if (node->next == NULL) {
                ((ALLink *)item)->next = NULL;
                ((ALLink *)item)->prev = node;
                node->next = (ALLink *)item;
                break;
            } else {
                N_ALEventListItem *ni = (N_ALEventListItem *)node->next;

                if (item->delta < ni->delta) {
                    ni->delta -= item->delta;
                    ((ALLink *)item)->next = node->next;
                    ((ALLink *)item)->prev = node;
                    node->next->prev = (ALLink *)item;
                    node->next = (ALLink *)item;
                    break;
                }
                item->delta -= ni->delta;
            }
        }
        osSetIntMask(mask);
        item = next;
    }
}

/* __n_CSPVoiceHandler (ROM func_8002901C).  Called from alAudioFrame once
 * per audio frame; drives the whole compact-sequence player. */
ALMicroTime func_8002901C(void *node) {
    KCSeqpPC *seqp = PC_CSP(node);
    N_ALEvent evt;
    N_ALVoice *voice;
    N_ALVoiceState *vs;
    ALMicroTime delta;
    void *oscState;
    f32 oscValue;
    u8 chan;
    s32 guard = 0;

    pc_cspUnstash(seqp);

    do {
        switch (seqp->nextEvent.type) {
        case AL_SEQ_REF_EVT:
            if (seqp->target != NULL) {
                alCSeqNextEvent(seqp->target, (ALEvent *)&evt);
                switch (evt.type) {
                case AL_SEQ_MIDI_EVT:
                    func_800285F8(seqp, &evt);
                    pc_cspPostNextSeqEvent(seqp);
                    break;
                case AL_TEMPO_EVT:
                    func_8002649C(seqp, &evt);
                    pc_cspPostNextSeqEvent(seqp);
                    break;
                case AL_SEQ_END_EVT:
                    seqp->state = AL_STOPPING;
                    evt.type = AL_SEQP_STOP_EVT;
                    n_alEvtqPostEvent(&seqp->evtq, &evt, AL_EVTQ_END);
                    break;
                case AL_TRACK_END:
                case AL_CSP_LOOPSTART:
                case AL_CSP_LOOPEND:
                    pc_cspPostNextSeqEvent(seqp);
                    break;
                }
            }
            break;

        case AL_SEQP_API_EVT:
        default:
            evt.type = AL_SEQP_API_EVT;
            n_alEvtqPostEvent(&seqp->evtq, &evt, seqp->frameTime);
            break;

        case AL_NOTE_END_EVT:
            voice = (N_ALVoice *)seqp->nextEvent.msg.note.voice;
            n_alSynStopVoice(voice);
            func_8002D1B0(voice);
            vs = (N_ALVoiceState *)voice->clientPrivate;
            if (vs->flags) {
                pc_cspStopOscEvents(seqp, vs);
            }
            pc_cspUnmapVoice(seqp, voice);
            break;

        case AL_SEQP_ENV_EVT:
            voice = (N_ALVoice *)seqp->nextEvent.msg.vol.voice;
            vs = (N_ALVoiceState *)voice->clientPrivate;
            if (vs->envPhase == AL_PHASE_ATTACK) {
                vs->envPhase = AL_PHASE_DECAY;
            }
            delta = seqp->nextEvent.msg.vol.delta;
            vs->envEndTime = seqp->curTime + delta;
            vs->envGain = seqp->nextEvent.msg.vol.vol;
            n_alSynSetVol(voice, pc_vsVol(vs, seqp), delta);
            break;

        case AL_TREM_OSC_EVT:
            vs = (N_ALVoiceState *)seqp->nextEvent.msg.osc.vs;
            oscState = seqp->nextEvent.msg.osc.oscState;
            delta = (*seqp->updateOsc)(oscState, &oscValue);
            vs->tremelo = (u8)oscValue;
            n_alSynSetVol(&vs->voice, pc_vsVol(vs, seqp),
                          pc_vsDelta(vs, seqp->curTime));
            evt.type = AL_TREM_OSC_EVT;
            evt.msg.osc.vs = (struct N_ALVoiceState_s *)vs;
            evt.msg.osc.oscState = oscState;
            n_alEvtqPostEvent(&seqp->evtq, &evt, delta);
            break;

        case AL_VIB_OSC_EVT:
            vs = (N_ALVoiceState *)seqp->nextEvent.msg.osc.vs;
            oscState = seqp->nextEvent.msg.osc.oscState;
            chan = seqp->nextEvent.msg.osc.chan;
            delta = (*seqp->updateOsc)(oscState, &oscValue);
            vs->vibrato = oscValue;
            n_alSynSetPitch(&vs->voice,
                            seqp->chanState[chan].pitchBend *
                            (vs->pitch *
                             (((vs->vibrato - 1.0f) *
                               (f32)seqp->chanState[chan].pressure) / 127.0f +
                              1.0f)));
            evt.type = AL_VIB_OSC_EVT;
            evt.msg.osc.vs = (struct N_ALVoiceState_s *)vs;
            evt.msg.osc.oscState = oscState;
            evt.msg.osc.chan = chan;
            n_alEvtqPostEvent(&seqp->evtq, &evt, delta);
            break;

        case AL_SEQP_MIDI_EVT:
        case AL_CSP_NOTEOFF_EVT:
            func_800285F8(seqp, &seqp->nextEvent);
            break;

        case AL_SEQP_META_EVT:
            func_8002649C(seqp, &seqp->nextEvent);
            break;

        case AL_SEQP_VOL_EVT:
            seqp->vol = seqp->nextEvent.msg.spvol.vol;
            for (vs = seqp->vAllocHead; vs != NULL; vs = vs->next) {
                n_alSynSetVol(&vs->voice, pc_vsVol(vs, seqp),
                              pc_vsDelta(vs, seqp->curTime));
            }
            break;

        case AL_SEQP_PLAY_EVT:
            seqp->unk78 = 100;
            if (seqp->state != AL_PLAYING) {
                seqp->state = AL_PLAYING;
                pc_cspPostNextSeqEvent(seqp);
            }
            break;

        case AL_SEQP_STOP_EVT:
            if (seqp->state == AL_STOPPING) {
                while ((vs = seqp->vAllocHead) != NULL) {
                    n_alSynStopVoice(&vs->voice);
                    func_8002D1B0(&vs->voice);
                    if (vs->flags) {
                        pc_cspStopOscEvents(seqp, vs);
                    }
                    pc_cspUnmapVoice(seqp, &vs->voice);
                }
                pc_cspResetAllChans(seqp);
                seqp->state = AL_STOPPED;
            }
            break;

        case AL_SEQP_STOPPING_EVT:
            if (seqp->state == AL_PLAYING) {
                n_alEvtqFlushType(&seqp->evtq, AL_SEQ_REF_EVT);
                n_alEvtqFlushType(&seqp->evtq, AL_CSP_NOTEOFF_EVT);
                n_alEvtqFlushType(&seqp->evtq, AL_SEQP_MIDI_EVT);
                for (vs = seqp->vAllocHead; vs != NULL; vs = vs->next) {
                    if (pc_cspVoiceNeedsNoteKill(seqp, &vs->voice, 50000)) {
                        pc_cspReleaseVoice(seqp, &vs->voice, 50000);
                    }
                }
                seqp->state = AL_STOPPING;
                evt.type = AL_SEQP_STOP_EVT;
                n_alEvtqPostEvent(&seqp->evtq, &evt, AL_EVTQ_END);
            }
            break;

        case AL_SEQP_PRIORITY_EVT:
            chan = seqp->nextEvent.msg.sppriority.chan;
            seqp->chanState[chan].priority =
                seqp->nextEvent.msg.sppriority.priority;
            break;

        case AL_SEQP_SEQ_EVT:
            seqp->target = seqp->nextEvent.msg.spseq.seq;
            pc_cspSetUsptFromTempo(seqp, 500000.0f);
            if (seqp->bank != NULL) {
                pc_cspInitFromBank(seqp, seqp->bank);
            }
            break;

        case AL_SEQP_BANK_EVT:
            seqp->bank = seqp->nextEvent.msg.spbank.bank;
            pc_cspInitFromBank(seqp, seqp->bank);
            break;

        case 24: /* Kirby extra: secondary bank */
            seqp->bank2 = seqp->nextEvent.msg.spbank.bank;
            pc_cspInitFromBank(seqp, seqp->bank2);
            break;

        case 25: /* Kirby extra: tertiary bank */
            seqp->bank3 = seqp->nextEvent.msg.spbank.bank;
            pc_cspInitFromBank(seqp, seqp->bank3);
            break;
        }

        seqp->nextDelta = func_800261B0(&seqp->evtq, &seqp->nextEvent);
        if (++guard > 10000) {
            /* queue wedged; resynchronise rather than spin forever */
            seqp->nextEvent.type = AL_SEQP_API_EVT;
            seqp->nextDelta = seqp->frameTime;
            break;
        }
    } while (seqp->nextDelta == 0);

    seqp->curTime += seqp->nextDelta;

    if (seqp->state == AL_STOPPED) {
        pc_cspStash(seqp);
    }

    /* Kirby scales the callback delta by the global tempo multiplier. */
    return (s32)((f32)seqp->nextDelta / D_8003FB18);
}
