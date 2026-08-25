#include <ultra64.h>
#include <macros.h>
#include <PR/n_libaudio.h>
#include "synthInternals.h"
#include <PR/abi.h>
/* MEASURING ANYTHING IN THIS FAMILY: EXPORT THE COMPILER FIRST.
 *
 *     VERIFY_CC="python3 tools/decomp/cc_o3.py" \
 *         python3 tools/decomp/measure_seeds.py src/main/libn_audio.c
 *
 * verify.py picks the -O3 compiler for main/libn_audio*.c by reading the
 * Makefile, but it keys that off the FILE PATH, and measure_seeds.py scores a
 * scratch COPY in /tmp -- which matches no path, so the override is lost and
 * the whole family is silently scored at -O2.  Measured 2026-08-25 on
 * alSeqNextEvent: 98 without VERIFY_CC, 88 with it.  Every bare measure_seeds
 * number ever quoted for these files is an -O2 number.  The same applies to
 * scoring a scratch copy of one of these TUs by hand.
 *
 * A `static` function has a LOCAL symbol, so verify.py's reloc check resolves
 * `jal <it>` through the global map, finds nothing, and prints
 * `RELOC TARGET <TU base> != <target>`.  That is a tooling artifact, not a
 * defect: read `readelf -r` / `readelf -s` on the object, where the relocation
 * points at the local definition and `nm -u` does not list the name.  The
 * linked ROM is the authority (tools/decomp/verify_rom.py). */


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

extern s16 D_8003FA10[];        /* n_eqpower[0..126]; [127] is D_8003FB0E.
                                 * s16, not u16: every ROM reference is an `lh`. */
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
/* __getTrackByte / __readVarLen are `static` and defined above every use, so
   they must NOT be re-declared here: a non-static file-scope prototype ahead of
   a static definition is an error for gcc and changes what uopt -O3 may assume
   for IDO. */
Acmd *func_80026A10(Acmd *ptr, N_PVoice *f, s32 tsam, s32 nbytes, s32 outp,
                    s32 inp, u32 flags);
s16 func_80026898(f32 tgt, f32 vol, s32 count, u16 *ratel);
Acmd *func_8002714C(N_PVoice *e, s16 *inp, s32 outCount, Acmd *p);
void func_8002649C(void *seqp, N_ALEvent *evt);
void func_800285F8(void *seqp, N_ALEvent *evt);
ALMicroTime func_80026698(void *client);
void func_8002A508(ALFx **r, ALSynConfig *c, ALHeap *hp);
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
/* FACTORY: 59/65 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
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
/* FACTORY: 23/62 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
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
/* FACTORY: 30/38 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
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

/* FACTORY: 24/47 -- MEASURED 2026-08-25, was 27/47.
 * The instruction sequence was already EXACT -- every opcode, operand shape and
 * displacement matches and only the register numbers differ, rotated one slot
 * DOWN (ROM $t0/$a1/$a2/$a0 -> IDO $a3/$a0/$a1/$v0), i.e. the ROM reserves one
 * more register at the bottom than IDO does.  Three of the 27 come off with
 * LEVER 61's barrier at the top of the loop body, found by barrier_sweep.py,
 * which reported this placement at 24 and three neighbours at 24 as well.  The
 * rotation is narrower after it but not gone: the head is still
 * ROM $t0/$a3/$t2 against IDO $a3/$a2/$t1.
 *
 * The usual cure for "temps UP a slot" is a non-void callee, but the only
 * callee here is osSetIntMask, which is already non-void and header-declared.
 * Swept with no effect: all 72 declaration permutations that put a pointer
 * first, one and two leading dead scalars, a leading dead pointer, `for` vs
 * `while`, dropping the `next` and `voice` locals, assignment order of
 * node/prev, and an s32 return (29).  Permuter fuel -- a pure register
 * rotation over a matching instruction stream is exactly what it is good at. */
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
        do { } while (0);
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

/* The SFX tone allocator: pops the free-tone list and initialises the record.
 *
 * The ROM reads the tone-bytecode pointer out of $s1 and returns the record in
 * $s0, yet its frame is 0x18 and saves only $ra -- both callee-saved registers
 * are clobbered without ever being written.  The old note called that a `ujoin`
 * custom convention beyond cc_o3.py's reach.  It is NOT: `uopt -O3`, which
 * cc_o3.py already runs, hands exactly this convention to a `static` callee
 * whose C call sites it can all see, and the same lever closed __readVarLen
 * and func_8002C9FC outright.  MEASURED HERE 2026-08-25.
 *
 * FACTORY: 42 of 69 words DIFFER and the COUNT IS NOW EXACT (was 67 of 68).
 * The remaining residue is register naming ($a2-vs-$a1 for the D_800978E0 base,
 * and the four constants 0x40/0x80/0xFF/0x7F materialised in a different order)
 * plus one extra word in the id-wrap block: the ROM masks `++toneIdSeq` ONCE
 * into $v0 and branches on it, where this emits the mask and then a `move`.
 * `id` as u16 and as s32 both give 42, so that is not the spelling.
 *
 * THIS SITE CANNOT BE MEASURED ALONE, and measure_seeds.py will report it as
 * gibberish if you try: spelled `static` with both callers left as pragmas,
 * uopt sees no call at all and DELETES the function.  The trio has to be
 * un-guarded together --
 *
 *   func_80023B34  static, this draft (the `for` loop form)      42 / 69
 *   func_80023C48  un-guarded                                     4 / 26
 *   func_80023D00  un-guarded                                     0 / 23  EXACT
 *
 * -- and then only this body is left.  Both callers are byte-exact or nearly
 * so ONLY under that shape; alone they measure 26 and 23.  So this one function
 * now gates three, and it is the highest-value permuter seed in the file.
 * Two levers found while getting there, both kept in the drafts below: the
 * duration copy must be a `for` loop (IDO peels iterations 0 and 1 to absolute
 * %hi/%lo references and bases the other four off `mgr + 4`; writing the six
 * assignments out gives 68 words and cannot reproduce that), and a `u16`
 * parameter is what makes func_80023D00 home its incoming $a0 -- its live
 * neighbour func_80023CB0 is the same shape and is already matched. */
#ifdef MIPS_TO_C
typedef struct KToneFull {
    /* 0x00 */ struct KToneFull *next;
    /* 0x04 */ struct KToneFull *owner;
    /* 0x08 */ u8  *pc;
    /* 0x0C */ u8  *loopPc;
    /* 0x10 */ s16 wait;
    /* 0x12 */ u16 dur[6];
    /* 0x1E */ u8  unk1E;
    /* 0x1F */ u8  priority;
    /* 0x20 */ u8  unk20;
    /* 0x21 */ u8  unk21;
    /* 0x22 */ u8  volume;
    /* 0x23 */ u8  pan;
    /* 0x24 */ u16 program;
    /* 0x26 */ u16 id;
    /* 0x28 */ void *note;
    /* 0x2C */ u8  reverb;
    /* 0x2D */ u8  groupSel;
    /* 0x2E */ u8  chanVol;
    /* 0x2F */ u8  panOverride;
    /* 0x30 */ u8  revOverride;
} KToneFull;

/* The fields of D_800978E0 this function touches; the file-scope KAudioMgr is a
 * partial view that stops at pad44 and cannot spell 0x4A/0x4C/0x4E. */
typedef struct KMgrToneView {
    /* 0x00 */ u8  pad00[0x38];
    /* 0x38 */ struct KToneFull *freeTones;
    /* 0x3C */ u8  pad3C[0xE];
    /* 0x4A */ u16 toneIdSeq;
    /* 0x4C */ u8  defPriority;
    /* 0x4D */ u8  pad4D[1];
    /* 0x4E */ u16 durDefaults[6];
} KMgrToneView;

static KToneFull *func_80023B34(u8 *pc) {
    KToneFull *tone;
    OSIntMask mask;
    u16 id;
    s32 i;

    mask = osSetIntMask(OS_IM_NONE);
    tone = (*(KMgrToneView *) &D_800978E0).freeTones;
    if (tone != NULL) {
        (*(KMgrToneView *) &D_800978E0).freeTones = tone->next;
        tone->wait = 1;
        tone->pc = pc;
        tone->loopPc = pc;
        tone->unk1E = 0x30;
        tone->priority = (*(KMgrToneView *) &D_800978E0).defPriority;
        for (i = 0; i < 6; i++) {
            tone->dur[i] = (*(KMgrToneView *) &D_800978E0).durDefaults[i];
        }
        tone->unk20 = 0;
        tone->unk21 = 0;
        tone->note = NULL;
        tone->owner = NULL;
        tone->volume = 0xFF;
        tone->pan = 0x40;
        tone->reverb = 0x40;
        tone->chanVol = 0x7F;
        tone->panOverride = 0x80;
        tone->revOverride = 0x80;
        id = ++(*(KMgrToneView *) &D_800978E0).toneIdSeq;
        if (id == 0) {
            id = ++(*(KMgrToneView *) &D_800978E0).toneIdSeq;
        }
        tone->id = id;
        tone->groupSel = 0;
    }
    osSetIntMask(mask);
    return tone;
}
#elif defined(PORT)
KToneX *func_80023B34(u8 *pc) {
    OSIntMask mask = osSetIntMask(OS_IM_NONE);
    KToneX *tone = kMgr.freeTones;
    u16 id;
    s32 i;

    if (tone != NULL) {
        kMgr.freeTones = tone->next;
        tone->wait = 1;
        tone->pc = pc;
        tone->loopPc = pc;
        tone->unk1E = 0x30;
        tone->priority = kMgr.defPriority;
        for (i = 0; i < 6; i++) {
            tone->dur[i] = kMgr.durDefaults[i];
        }
        tone->tieMode = 0;
        tone->pendingOff = 0;
        tone->note = NULL;
        tone->owner = NULL;
        tone->volume = 0xFF;
        tone->pan = 0x40;
        tone->reverb = 0x40;
        tone->chanVol = 0x7F;
        tone->panOverride = 0x80;
        tone->revOverride = 0x80;
        id = ++kMgr.toneIdSeq;
        if (id == 0) {
            id = ++kMgr.toneIdSeq;
        }
        tone->id = id;
        tone->groupSel = 0;
    }
    osSetIntMask(mask);
    return tone;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023B34.s")
#endif

/* FACTORY: 4 of 26 words, and ONLY with func_80023B34 above un-guarded and
 * `static` -- see its note; alone this measures 26.  The four are the stack
 * SLOTS of the two spilled locals: the ROM puts the interrupt mask at 0x24($sp)
 * and the returned record at 0x2C($sp), leaving 0x28 unused, where this puts
 * them at 0x28 and 0x24 with no hole.  The frame size (0x30) and every
 * instruction are already right.  IDO assigns slots in declaration order
 * ascending, so the hole says the ROM had a third local between them that it
 * kept in a register; four declaration orders were swept (5, 5, 7 and 9 words)
 * and this one is the best.  The separate `ret` copy is load-bearing: folding
 * it back into `return tone` costs the frame size as well. */
#ifdef MIPS_TO_C
KToneFull *func_80023C48(u8 *pc) {
    KToneFull *ret;
    OSIntMask mask;
    KToneFull *tone;

    mask = osSetIntMask(OS_IM_NONE);
    tone = func_80023B34(pc);
    if (tone != NULL) {
        tone->next = (KToneFull *) D_80097920;
        D_80097920 = (KChan *) tone;
    }
    ret = tone;
    osSetIntMask(mask);
    return ret;
}
#elif defined(PORT)
/* The ROM passes the tone-bytecode pointer to func_80023B34 in $s1 (the
 * interprocedural convention uopt gives a static callee); an earlier draft
 * dropped the argument. */
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

/* FACTORY: BYTE-EXACT, 0 of 23, but only with func_80023B34 above un-guarded
 * and `static` -- see its note.  Alone it measures 23, and it cannot be sealed
 * until func_80023B34's body closes, because the argument reaches that callee
 * in $s1.  Two levers, both read off its already-matched live twin
 * func_80023CB0 three lines up: the parameter is `u16` (that is what makes IDO
 * home the incoming $a0 at 0x20($sp) before masking it, which an `s32`
 * parameter with an explicit `& 0xFFFF` does not do -- worth 19 words), and the
 * index goes into func_80023B34 through D_800978E0.unk1C, not as itself. */
#ifdef MIPS_TO_C
KToneFull *func_80023D00(u16 arg0) {
    if (arg0 >= D_800978E0.unk28) {
        return NULL;
    }
    return func_80023B34((u8 *) D_800978E0.unk1C[arg0]);
}
#elif defined(PORT)
/* An earlier draft passed the INDEX where the ROM loads the tone-bytecode
 * pointer out of the table before the call. */
KToneX *func_80023D00(s32 arg0) {
    s32 idx = arg0 & 0xFFFF;

    if (idx >= (s32)kMgr.toneCount) {
        return NULL;
    }
    return func_80023B34(kMgr.toneTable[idx]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023D00.s")
#endif

/* The SFX note allocator: pops the free-note list, pushes onto the live list
 * and initialises the record.  Unlike its tone twin func_80023B34 this one is
 * plain o32 -- it homes $a0 and spills the record across the second
 * osSetIntMask -- so it is genuinely closable.
 *
 * FACTORY: 12 of 53 words DIFFER, and the instruction SEQUENCE is now EXACT:
 * same count, same opcodes, same operand shapes and displacements in the same
 * order, with only register NAMES differing -- one slot of rotation
 * ($a1/$a2/$v0 in the ROM where IDO picks $a2/$v0/$a1).  Ideal permuter fuel.
 *
 * The earlier note here claimed 31/53 and said the draft below scored it; it
 * did not, because the draft referenced KAudioMgr fields (unk34/unk3C/unk48/
 * unk4C) the file-scope partial view does not declare, so it never compiled.
 * With a local KMgrNoteView it measures 31, and the whole 19-word difference
 * between 31 and 12 was ONE spelling: writing the id-wrap retry as
 * `id = ++seq;` a second time makes IDO re-derive the value through an extra
 * `move`, where the ROM's `addiu $t5, $v0, 1 / sh / andi $v0, $t5, 0xFFFF` is
 * the masked increment written out.  Also swept, all worse or equal: all six
 * declaration orders (12/12/14/15/14/15), `id` as u16/s32/u32, `mask` as u32,
 * and returning KNoteFull * instead of s32. */
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

/* The fields of D_800978E0 this function touches; the file-scope KAudioMgr is a
 * partial view whose pad2C/pad44 cover 0x34, 0x48 and 0x4C. */
typedef struct KMgrNoteView {
    /* 0x00 */ u8  pad00[0x34];
    /* 0x34 */ struct KNoteFull *freeNotes;
    /* 0x38 */ u8  pad38[4];
    /* 0x3C */ struct KNoteFull *liveNotes;
    /* 0x40 */ u8  pad40[8];
    /* 0x48 */ u16 noteIdSeq;
    /* 0x4A */ u8  pad4A[2];
    /* 0x4C */ u8  defPriority;
} KMgrNoteView;

#define kmgrN (*(KMgrNoteView *) &D_800978E0)

s32 func_80023D5C(void *arg0) {
    KNoteFull *note;
    OSIntMask mask;
    s32 id;

    mask = osSetIntMask(OS_IM_NONE);
    note = kmgrN.freeNotes;
    if (note != NULL) {
        kmgrN.freeNotes = note->next;
        note->next = kmgrN.liveNotes;
        kmgrN.liveNotes = note;

        note->unk28 = 1;
        note->unk20 = arg0;
        note->unk24 = arg0;
        note->unk2A = 3;
        note->unk32 = 0x7F;
        note->unk34 = 0x40;
        note->unk36 = 0;
        note->unk2C = 0;
        note->unk2B = kmgrN.defPriority;
        note->unk44 = 0;
        note->unk30 = 0;
        note->unk38 = 0xFF;
        note->unk3A = 0x40;
        note->unk3C = 0;

        id = ++kmgrN.noteIdSeq;
        if (id == 0) {
            kmgrN.noteIdSeq = id + 1;
            id = (u16) (id + 1);
        }
        note->unk48 = id;
    }
    osSetIntMask(mask);
    return (s32) note;
}
#elif defined(PORT)
KNoteX *func_80023D5C(u8 *pc) {
    OSIntMask mask = osSetIntMask(OS_IM_NONE);
    KNoteX *note = kMgr.freeNotes;
    s32 id;

    if (note != NULL) {
        kMgr.freeNotes = note->next;
        note->next = kMgr.liveNotes;
        kMgr.liveNotes = note;

        note->wait = 1;
        note->pc = pc;
        note->loopPc = pc;
        note->state = 3;
        note->vol = 0x7F;
        note->pan = 0x40;
        note->fx = 0;
        note->cents = 0;
        note->priority = kMgr.defPriority;
        note->oscList = NULL;
        note->baseCents = 0;
        note->chanVol = 0xFF;
        note->chanPan = 0x40;
        note->chanFx = 0;

        id = ++kMgr.noteIdSeq;
        if (id == 0) {
            id = ++kMgr.noteIdSeq;
        }
        note->id = id;
    }
    osSetIntMask(mask);
    return note;
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
 * the ALCSeq field offsets are confirmed exact by the listing.
 *
 * SEALED 2026-08-25 at 49/49.  The one scheduling decision above was never the
 * residue: it was the o32 calling convention.  `uopt -O3` -- which
 * tools/decomp/cc_o3.py has run all along -- gives a `static` callee whose call
 * sites it can all see its own register assignment, which is what the ROM used.
 * The only change needed was the word `static`.  It must STAY static; dropping
 * it restores the o32 entry moves and breaks this and its two callers. */
static u8 __getTrackByte(ALCSeq *seq, u32 track) {
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

/* __readVarLen (upstream libreultra/src/audio/cseq.c).
 *
 * The three m2c holes that used to stand here -- `$t1`, `$t2` and `$t3` read
 * unset -- are all recovered from the listing, which is unambiguous about each:
 *   $t2  the ALCSeq*.  Its only use is `or $a0, $t2, $zero` in front of both
 *        `jal __getTrackByte` sites, i.e. it IS that callee's first argument.
 *   $t3  the track index, likewise `or $a1, $t3, $zero` at both call sites.
 *   $t1  the running accumulator `value`: seeded by `or $t1, $v0, $zero` /
 *        `andi $t1, $v0, 0x7F`, advanced by `sll $t7, $t1, 7` +
 *        `addu $t1, $t7, $t8`, and returned by `or $v0, $t1, $zero`.
 * $t2 and $t3 are never written here and survive both calls, which is what
 * makes them a ujoin custom convention rather than ordinary parameters.
 *
 * FACTORY: 27 of 27 words DIFFER against a 24-word listing (22 of those 24 are
 * the function; the last `jr $ra; nop` pair is a separate unnamed function
 * inside the same `.size`).  That fold is NOT a padding trap and does not block
 * an un-guard -- padtrap.py calls the class 'swallowed'; it is the next,
 * uncalled function of the TU and a conversion just writes out
 * `void func_80025874(void) {}` after this one, as ovl5_2.c does for
 * func_80160A70_ovl5.  Only the BODY blocks this site.  The residue is entirely
 * the convention: the
 * arithmetic core -- `andi 0x80`, `andi 0x7F`, `sll 7`, `andi 0x7F`,
 * `andi 0x80`, `bnez`, `addu` -- comes out instruction for instruction, and
 * the 3-word excess is o32 saving $s0/$s1/$s2 (6 words) less the four
 * `or $aN, $tN` argument moves the ROM needs and an o32 build does not.
 *
 * SEALED 2026-08-25, byte-exact, and the ujoin story above is WRONG about the
 * cause.  `uopt -O3` -- which tools/decomp/cc_o3.py has run all along --
 * assigns the interprocedural convention itself; the only defect was that this
 * definition and __getTrackByte's were not spelled `static`.  Both are now, and
 * the "3-word excess" (the o32 $s0/$s1/$s2 save) is gone.
 *
 * THE RELOC QUESTION IS SETTLED, and the answer is that nothing breaks.  A
 * `static` definition keeps a LOCAL FUNC symbol in the object, and
 * asm-processor assembles the surviving `#pragma GLOBAL_ASM` listings into the
 * same object, so alCSeqNextEvent.s's `jal __readVarLen` binds to it:
 *   readelf -r  ->  R_MIPS_26  000024bc  __readVarLen
 *   readelf -s  ->  000024bc  FUNC  LOCAL  __readVarLen
 * and 0x24bc + the TU base 0x80023360 is 0x8002581C.  `nm -u` lists neither
 * name.  So a caller left as a pragma does NOT have to be sealed in the same
 * change.  What DOES break is verify.py's report: it resolves a reloc through
 * the global symbol map, finds no global, and prints
 * `RELOC TARGET 80023360 != 8002581C` -- a tooling artifact on the TU base,
 * not a defect.  Read the object, not that line.
 *
 * The body is plain ANSI C, so the port takes it too -- but it must stay
 * `static`: an exported spelling puts the o32 entry moves back. */
static u32 __readVarLen(ALCSeq *seq, u32 track) {
    u32 value;
    u32 c;

    value = __getTrackByte(seq, track);
    if (value & 0x80) {
        value &= 0x7F;
        do {
            c = __getTrackByte(seq, track);
            value = (value << 7) + (c & 0x7F);
        } while (c & 0x80);
    }
    return value;
}

/* The next, uncalled function of the TU: the ROM folds its `jr $ra; nop` inside
   __readVarLen's own `.size` (padtrap.py class 'swallowed'), so it has to be
   written out here or the TU comes up two words short. */
void func_80025874(void) {
}

/* Upstream libreultra/src/audio/cseq.c alCSeqNextEvent, re-derived from the
 * listing rather than pasted: the event-type constants (3 AL_TEMPO_EVT, 0x12
 * AL_TRACK_END, 4 AL_SEQ_END_EVT, 0x13 AL_CSP_LOOPSTART, 0x14 AL_CSP_LOOPEND,
 * 1 AL_SEQ_MIDI_EVT), the ALEvent/ALMIDIEvent/ALTempoEvent displacements
 * (type 0x0, ticks 0x4, status 0x8, byte1 0x9, byte2 0xA, duration 0xC; tempo
 * byte1/2/3 at 0xB/0xC/0xD with `len` at 0xA deliberately left unwritten) and
 * the six-byte AL_CMIDI_LOOPEND_CODE record (count at loc[1], reset value at
 * loc[0], a big-endian 32-bit backwards delta at loc[2..5]) all come from the
 * `.s`.  The uninitialised `track` is real: the ROM reads its stack home at
 * 0x24($sp) before the scan loop has written it.
 *
 * FACTORY: 71/190 as of 2026-08-25, was 98 the same day and 209 before
 * __readVarLen and __getTrackByte were sealed `static` (their custom convention
 * is now real in the object, so this function's ten `jal`s no longer force the
 * o32 homing).  The 209 reasoning below is kept only for the history.
 *
 * The last 27 came off with LEVER 61's barrier at the top of the track-scan
 * loop body, found by barrier_sweep.py.  The sweep is unambiguous about the
 * placement: 71 there, 72 at the delta accumulate near the end, 75 and 76 one
 * and two statements further into the loop, and 197-199 at any of the
 * __getTrackByte calls in the event bodies -- those last raise the instruction
 * COUNT (203-205 against the ROM's 190), so a barrier inside an event body
 * costs real instructions rather than moving existing ones.  Running the sweep
 * again over the fixed draft finds nothing further: 71 is its floor.
 *
 * RE-MEASURED and still worthless after the sealing: hoisting
 * `seq->lastDeltaTicks` into a local before the scan loop, which is what the
 * ROM's `lw $a2, 0x10($a0)` at index 6 looks like.  Byte-identical at 71.  The
 * old note recorded that at 209/210 and the seal did not change it, so the
 * hoist really is IDO's own and the upstream spelling stays.
 *
 * PREVIOUSLY: 209 of 210 words DIFFER against a 190-word ROM.  The 20-word excess
 * is one cause, ten times over: `minDelta` and `track` live in $t1/$t3 in the
 * ROM and stay there ACROSS all ten `jal`s -- the -O3 ujoin custom convention,
 * which also hands __readVarLen its arguments in $t2/$t3 (see its own
 * listing).  Without ujoin (tools/decomp/cc_o3.py has none) an o32 build must
 * spill and reload both around every call.  Swept: hoisting
 * `seq->lastDeltaTicks` into a local before the scan loop, which is what the
 * ROM's `lw $a2, 0x10($a0)` looks like -- no change at all (209/210), so the
 * hoist is IDO's and the upstream spelling below is kept.
 *
 * The body is plain ANSI C over the public ALCSeq/ALEvent, so the port takes
 * it too. */
#if defined(MIPS_TO_C) || defined(PORT)
u8 __getTrackByte(ALCSeq *seq, u32 track);
u32 __readVarLen(ALCSeq *seq, u32 track);

void alCSeqNextEvent(ALCSeq *seq, ALEvent *event) {
    u32 deltaTicks;
    u32 minDelta = 0xFFFFFFFF;
    s32 i;
    s32 track;
    u8 status;
    u8 type;

    for (i = 0; i < 16; i++) {
        if ((seq->validTracks >> i) & 1) {
            do { } while (0);
            if (seq->deltaFlag) {
                seq->evtDeltaTicks[i] -= seq->lastDeltaTicks;
            }
            deltaTicks = seq->evtDeltaTicks[i];
            if (deltaTicks < minDelta) {
                minDelta = deltaTicks;
                track = i;
            }
        }
    }

    status = __getTrackByte(seq, track);

    if (status == AL_MIDI_Meta) {
        type = __getTrackByte(seq, track);
        if (type == AL_MIDI_META_TEMPO) {
            event->type = AL_TEMPO_EVT;
            event->msg.tempo.status = status;
            event->msg.tempo.type = type;
            event->msg.tempo.byte1 = __getTrackByte(seq, track);
            event->msg.tempo.byte2 = __getTrackByte(seq, track);
            event->msg.tempo.byte3 = __getTrackByte(seq, track);
            seq->lastStatus[track] = 0;
        } else if (type == AL_MIDI_META_EOT) {
            seq->validTracks ^= 1 << track;
            if (seq->validTracks != 0) {
                event->type = AL_TRACK_END;
            } else {
                event->type = AL_SEQ_END_EVT;
            }
        } else if (type == AL_CMIDI_LOOPSTART_CODE) {
            __getTrackByte(seq, track);
            __getTrackByte(seq, track);
            seq->lastStatus[track] = 0;
            event->type = AL_CSP_LOOPSTART;
        } else if (type == AL_CMIDI_LOOPEND_CODE) {
            u8 *loc = seq->curLoc[track];
            u32 loopDelta;

            if (loc[1] == 0) {
                loc[1] = loc[0];
                seq->curLoc[track] = loc + 6;
            } else {
                if (loc[1] != 0xFF) {
                    loc[1] = loc[1] - 1;
                }
                loopDelta = (loc[2] << 24) + (loc[3] << 16) + (loc[4] << 8) + loc[5];
                seq->curLoc[track] = (loc + 6) - loopDelta;
            }
            seq->lastStatus[track] = 0;
            event->type = AL_CSP_LOOPEND;
        }
    } else {
        event->type = AL_SEQ_MIDI_EVT;
        if (status & 0x80) {
            event->msg.midi.status = status;
            event->msg.midi.byte1 = __getTrackByte(seq, track);
            seq->lastStatus[track] = status;
        } else {
            event->msg.midi.status = seq->lastStatus[track];
            event->msg.midi.byte1 = status;
        }

        if (((event->msg.midi.status & 0xF0) != AL_MIDI_ProgramChange) &&
            ((event->msg.midi.status & 0xF0) != AL_MIDI_ChannelPressure)) {
            event->msg.midi.byte2 = __getTrackByte(seq, track);
            if ((event->msg.midi.status & 0xF0) == AL_MIDI_NoteOn) {
                event->msg.midi.duration = __readVarLen(seq, track);
            }
        } else {
            event->msg.midi.byte2 = 0;
        }
    }

    event->msg.midi.ticks = minDelta;
    seq->lastDeltaTicks = minDelta;
    seq->lastTicks += minDelta;

    if (event->type != AL_TRACK_END) {
        seq->evtDeltaTicks[track] += __readVarLen(seq, track);
    }
    seq->deltaFlag = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alCSeqNextEvent.s")
#endif

/* Upstream libreultra/src/audio/cseq.c alCSeqNew, cross-checked field by field
 * against the listing (base 0x0, validTracks 0x4, qnpt 0x8, lastTicks 0xC,
 * lastDeltaTicks 0x10, deltaFlag 0x14, curLoc 0x18, curBUPtr 0x58, curBULen
 * 0x98, lastStatus 0xA8, evtDeltaTicks 0xB8, and ALCMidiHdr.division at 0x40).
 *
 * SEALED 2026-08-25, byte-exact, WITHOUT changing a character of this body.
 * The 70-of-70 note above diagnosed the right effect and the wrong cause: the
 * ROM does park `i` and `seq + 4*i` in caller-saved $t5/$t4 across the
 * `jal __readVarLen`, but that is legal only because uopt -O3 knows
 * __readVarLen's clobber set, and it knows that for a `static` callee whose
 * call sites are all in the TU.  Spelling __readVarLen `static` -- no ujoin,
 * no source change here -- made all 66 words fall out at once.  A `#pragma
 * GLOBAL_ASM` caller elsewhere in the TU does not spoil that; see the reloc
 * note on __readVarLen.
 * Rejected sweeps kept for the record: `((ALCMidiHdr *) ptr)->trackOffset[i]`
 * for `seq->base->trackOffset[i]` drops the `lw $t7, 0x0($s0)` the ROM performs
 * every iteration (a smaller diff against a wrong shape, LEVERS 48).
 *
 * The body is plain ANSI C over the public ALCSeq, so the port takes it too. */
void alCSeqNew(ALCSeq *seq, u8 *ptr) {
    u32 i;
    u32 tmpOff;

    seq->base = (ALCMidiHdr *) ptr;
    seq->validTracks = 0;
    seq->lastDeltaTicks = 0;
    seq->lastTicks = 0;
    seq->deltaFlag = 1;

    for (i = 0; i < 16; i++) {
        seq->lastStatus[i] = 0;
        seq->curBUPtr[i] = 0;
        seq->curBULen[i] = 0;

        tmpOff = seq->base->trackOffset[i];
        if (tmpOff != 0) {
            seq->validTracks |= 1 << i;
            seq->curLoc[i] = ptr + tmpOff;
            seq->evtDeltaTicks[i] = __readVarLen(seq, i);
        } else {
            seq->curLoc[i] = 0;
        }
    }

    seq->qnpt = 1.0f / (f32) seq->base->division;
}

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

void n_alEvtqFlushType(ALEventQueue *evtq, s16 type) {
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
 * tools/ido-7.1recomp, which is the same blocker as __readVarLen/__readVarLen
 * (args in $t2/$t3).  No source spelling reaches it.
 *
 * MEASURED 2026-08-25 AND THE ABOVE IS WRONG ABOUT THE CAUSE.  ujoin is not
 * what assigns the convention -- `uopt -O3`, which cc_o3.py already runs,
 * assigns it to any `static` callee whose call sites it can all see.  The
 * blocker was only that this definition is not spelled `static`.  Spell it
 * `static`, un-guard the CALLER func_8002649C in the same TU (uopt needs every
 * call site as C -- with the caller left as a pragma this measures 12/12), and
 * write the swallowed 0x80026494 stub out as `void func_80026494(void) {}`
 * BEFORE this function: verify.py then reports MATCH (13 insns), with today's
 * default compiler and no ujoin at all.
 * NOT SEALABLE, and the caller chain is now traced to its root.  This function
 * has TWO ROM callers, func_8002649C and func_8002901C, and uopt only assigns
 * the convention if it can see them as C.  func_8002649C is 141/127 and cannot
 * be un-guarded, and its OWN residue is the same lever one level up: its
 * listing reads `lw $s7, 0x2C($s6)` at entry -- seqp arrives in $s6 -- and it
 * uses $s0..$s7 while saving none of them, so IT needs to be `static` with its
 * caller visible, and its only caller is func_8002901C at 422/425.  So the
 * chain is func_80026460 <- func_8002649C <- func_8002901C, and nothing below
 * func_8002901C can close.  Do not spend another pass on this leaf; the work
 * is func_8002901C's body.
 * Its listing also swallows the next, unnamed function of the TU inside its own
 * `.size` (`jr $ra; nop` at 0x80026494 -- padtrap.py class 'swallowed').  That
 * is not a padding trap: a conversion writes it out as
 * `void func_80026494(void) {}` after this one.  Measured 2026-08-25 with the
 * stub on a scratch copy: it does not shorten the residue, because the extra
 * `mtc1` shifts the whole body one slot and verify.py's tail trim needs the
 * lengths to line up.  Body-blocked, not fold-blocked. */
/* FACTORY: 13/14 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
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

/* n_alCSPHandleMetaMsg (upstream libnaudio/n_cspplayer.c): applies a MIDI
 * set-tempo meta event and RE-TIMES everything already queued.  The listing
 * gives the whole shape: the guard is `msg.tempo.status == 0xFF` (AL_MIDI_Meta)
 * and `msg.tempo.type == 0x51` (AL_MIDI_META_TEMPO), the new tempo is the
 * three-byte big-endian value at msg.tempo.byte1/2/3 (the ROM bases those on
 * `&event->msg`, hence the 0x7/0x8/0x9 displacements off `$a1 + 4`), and the
 * two loops are "unlink every queued AL_SEQP_STOPPING_EVT onto a private list,
 * accumulating absolute ticks" followed by "rescale each one by
 * `newUspt * (delta / oldUspt)` and re-insert it into the delta-sorted queue",
 * the insertion being n_alEvtqPostEvent's own walk written out.
 *
 * FACTORY: 141 of 141 words DIFFER against a 127-word ROM, and the 14-word
 * excess is exactly seven `sw`/`lw` pairs: the ROM uses $s0..$s7 and saves
 * NONE of them -- its whole prologue is `sw $ra` in a 0x18 frame -- because
 * `seqp` arrives in $s6 under ujoin and the callee owns the saved bank.  The
 * opcode sequence otherwise lines up at 0.85 with the only structural
 * insertions being those restores.  tools/decomp/cc_o3.py has no ujoin.
 *
 * The body is plain ANSI C, so the port takes it too. */
#if defined(MIPS_TO_C) || defined(PORT)
void func_80026460(KCSeqp *seqp, f32 tempo);

/* Mirrors the file-scope KCSeqpNew (declared further down, and REFOUND.md
 * forbids moving it up) so the two fields this touches sit at the same LP64
 * offsets as the record func_800296C0 actually allocates. */
typedef struct KCSeqpTempo {
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
} KCSeqpTempo;

void func_8002649C(void *seqpArg, N_ALEvent *event) {
    KCSeqpTempo        *seqp = (KCSeqpTempo *) seqpArg;
    N_ALEventListItem  *item;
    N_ALEventListItem  *next;
    N_ALEventListItem  *nextItem;
    N_ALEventListItem  *sorted = NULL;
    ALMicroTime         ticks = 0;
    ALMicroTime         saveTicks;
    ALMicroTime         oldUspt;
    ALLink             *node;
    OSIntMask           mask;

    if (event->msg.tempo.status != AL_MIDI_Meta) {
        return;
    }
    if (event->msg.tempo.type != AL_MIDI_META_TEMPO) {
        return;
    }

    oldUspt = seqp->uspt;
    func_80026460((KCSeqp *) seqp, (f32) ((event->msg.tempo.byte1 << 16) |
                               (event->msg.tempo.byte2 << 8) |
                               event->msg.tempo.byte3));

    /* Pull every pending sequence-reference event off the queue, keeping the
     * running tick total so each one can be re-posted at the new tempo. */
    item = (N_ALEventListItem *) seqp->evtq.allocList.next;
    while (item != NULL) {
        next = (N_ALEventListItem *) ((ALLink *) item)->next;
        ticks += item->delta;
        if (item->evt.type == AL_SEQP_STOPPING_EVT) {
            alUnlink((ALLink *) item);
            if (sorted != NULL) {
                ((ALLink *) item)->prev = (ALLink *) sorted;
                ((ALLink *) item)->next = ((ALLink *) sorted)->next;
                if (((ALLink *) sorted)->next) {
                    ((ALLink *) sorted)->next->prev = (ALLink *) item;
                }
                ((ALLink *) sorted)->next = (ALLink *) item;
            } else {
                ((ALLink *) item)->next = NULL;
                ((ALLink *) item)->prev = NULL;
                sorted = item;
            }
            saveTicks = ticks;
            if (next != NULL) {
                ticks -= item->delta;
                next->delta += item->delta;
            }
            item->delta = saveTicks;
        }
        item = next;
    }

    item = sorted;
    while (item != NULL) {
        next = (N_ALEventListItem *) ((ALLink *) item)->next;
        item->delta = seqp->uspt * (item->delta / oldUspt);

        mask = osSetIntMask(OS_IM_NONE);

        for (node = &seqp->evtq.allocList; node != 0; node = node->next) {
            if (!node->next) {
                ((ALLink *) item)->next = node->next;
                ((ALLink *) item)->prev = node;
                if (node->next) {
                    node->next->prev = (ALLink *) item;
                }
                node->next = (ALLink *) item;
                break;
            } else {
                nextItem = (N_ALEventListItem *) node->next;

                if (item->delta < nextItem->delta) {
                    nextItem->delta -= item->delta;
                    ((ALLink *) item)->next = node->next;
                    ((ALLink *) item)->prev = node;
                    if (node->next) {
                        node->next->prev = (ALLink *) item;
                    }
                    node->next = (ALLink *) item;
                    break;
                }

                item->delta -= nextItem->delta;
            }
        }

        osSetIntMask(mask);
        item = next;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002649C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026698.s")

/* __n_getRate (upstream libnaudio/n_env.c): splits an envelope ramp into the
 * 16.16 rate pair the envmixer microcode wants.  D_800414C4 is the `.float
 * 65535` this reconstructs as a literal.
 *
 * FACTORY: 57 of 93 words DIFFER against a 94-word ROM, and the shape is
 * exact -- same count to within the one word IDO saves, same opcodes, same
 * order.  The residue is the calling convention: the ROM takes `count` in $a0
 * and `ratel` in $a1 while the two floats arrive in $f12/$f14, which no o32
 * prototype produces (a float in argument slot 0 or 1 uses the FPR *and*
 * burns the matching integer slot, so an o32 (f32, f32, s32, u16 *) puts
 * count/ratel in $a2/$a3 -- exactly what this compiles to).  That is IDO's
 * -O3 ujoin custom convention for a `static` callee, and ujoin is missing from
 * tools/ido-7.1recomp, so no source spelling reaches it.  Every remaining diff
 * is the $a2/$a3-for-$a0/$a1 substitution and the register renaming it drags
 * behind it.
 *
 * The convention is reachable and ujoin is not needed -- measured 2026-08-25.
 * Spell this `static` and un-guard its caller func_8002714C (and
 * n_alEnvmixerPull above it): `uopt -O3`, which cc_o3.py already runs, then
 * gives it $a0/$a1 + $f12/$f14 and the first 42 words come out byte-exact.
 * 57 -> 51, and the residue is no longer the ABI: the ROM has two extra words
 * around the `65535.0f` literal (`lwc1 %lo(D_800414C4)` / `lui $at,0x4F00`)
 * that this spelling does not emit.  That is a literal-pool question now.
 *
 * The body is plain ANSI C, so the port takes it too. */
#if defined(MIPS_TO_C) || defined(PORT)
s16 func_80026898(f32 tgt, f32 vol, s32 count, u16 *ratel) {
    f32 invt;
    f32 ratio;
    f32 w;
    s16 ratem;
    s16 talign;

    if (count == 0) {
        if (vol <= tgt) {
            *ratel = 0xFFFF;
            return 0x7FFF;
        }
        *ratel = 0;
        return 0;
    }

    invt = 1.0f / (f32) count;
    if (tgt < 1.0f) {
        tgt = 1.0f;
    }
    if (vol <= 0.0f) {
        vol = 1.0f;
    }

    ratio = (tgt - vol) * invt * 8.0f;
    talign = (s16) ratio;
    w = (ratio - (f32) talign) + 1.0f;
    ratem = (s16) w;
    *ratel = (u16) (65535.0f * (w - (f32) ratem));

    return talign - 1 + ratem;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026898.s")
#endif

/* _decodeChunk (upstream libreultra/src/libnaudio/n_load.c): DMAs one chunk of
 * compressed ADPCM into DMEM and emits the decode command for it.
 *
 * The ujoin convention hides the parameter list, but the listing names every
 * register itself.  $s1 is the dma length (it is `blez`-tested and then handed
 * to `f->dc_dma` as its second argument), $s2 is the N_PVoice (0x28 dc_dma,
 * 0x2C dc_dmaState, 0x3C dc_memin, 0x10 dc_lstate, 0xC dc_state, 0x38
 * dc_first), $s3 is `flags` (tested against A_LOOP and shifted into bits
 * 28..31), $s5 is `tsam` (`sll 1` gives the output byte count), $s0 is the
 * Acmd cursor.  $s4 and $s6 are the two s16s, and which is which is DECIDED by
 * the first two instructions: with a 0x18 frame, `sw $s4, 0x2C($sp)` and
 * `sw $s6, 0x28($sp)` write the CALLER's frame at +0x14 and +0x10 -- the o32
 * home slots for stack arguments 5 and 4 -- so $s6 is argument 4 (`outp`) and
 * $s4 is argument 5 (`inp`).  That also matches the hardware: A_LOADBUFF's
 * DMEM destination is the compressed-data buffer, and A_ADPCM's low 12 bits
 * are where the decoded PCM lands.
 *
 * FACTORY: 75 of 77 words DIFFER against a 71-word ROM.  The arithmetic core
 * -- the `andi 7` / `subu` / `+8` / `andi 0xFFF` / `sll 12` chain and both
 * command word packings -- comes out instruction for instruction; the 6-word
 * excess is o32 homing ptr, f and nbytes across the indirect `jal` plus the
 * unfilled `jalr` delay slot, because the ROM holds all of them in $s0..$s6
 * under ujoin.  Swept: `outp`/`inp` as s16 (the sign extension the ROM's four
 * leading `sll`/`sra` perform) and as s32 -- 75/77 either way, so the s32
 * spelling is kept, which is also what the port's existing prototype and
 * func_80026B2C's K&R call site need.
 *
 * The body is plain ANSI C, so the port takes it too. */
#if defined(MIPS_TO_C) || defined(PORT)
#ifndef K0_TO_PHYS
#define K0_TO_PHYS(x) ((u32)(x) & 0x1FFFFFFF)
#endif

#define n_aSetLoop(pkt, a)                                              \
{                                                                       \
    Acmd *_a = (Acmd *)pkt;                                             \
                                                                        \
    _a->words.w0 = _SHIFTL(A_SETLOOP, 24, 8);                           \
    _a->words.w1 = (unsigned int)(a);                                   \
}

#define n_aADPCMdec(pkt, s, f, c, x, d)                                 \
{                                                                       \
    Acmd *_a = (Acmd *)pkt;                                             \
                                                                        \
    _a->words.w0 = (_SHIFTL(A_ADPCM, 24, 8) | _SHIFTL(s, 0, 24));       \
    _a->words.w1 = (_SHIFTL(f, 28, 4) | _SHIFTL(c, 16, 12) |            \
                    _SHIFTL(x, 12, 4) | _SHIFTL(d, 0, 12));             \
}

Acmd *func_80026A10(Acmd *ptr, N_PVoice *f, s32 tsam, s32 nbytes, s32 outp,
                    s32 inp, u32 flags) {
    Acmd *p = ptr;
    s32 addr;
    s32 rem;

    if (nbytes > 0) {
        addr = (s32) f->dc_dma(f->dc_memin, nbytes, f->dc_dmaState);
        rem = addr & 7;
        nbytes += rem;
        n_aLoadBuffer(p++, (nbytes - (nbytes & 7)) + 8, inp, addr - rem);
    } else {
        rem = 0;
    }

    if (flags & A_LOOP) {
        n_aSetLoop(p++, K0_TO_PHYS(f->dc_lstate));
    }

    n_aADPCMdec(p++, K0_TO_PHYS(f->dc_state), flags, tsam << 1, rem, outp);

    f->dc_first = 0;
    return p;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026A10.s")
#endif

/* IPA-BLOCKED.  Verbatim upstream libreultra/src/libnaudio/n_load.c
 * n_alAdpcmPull; the instruction stream lines up but the frame is 0xA0 against
 * the ROM's 0xB0 and `f` lands in $s0 where the ROM uses $s7.  The reason is
 * the callee: _decodeChunk is func_80026A10, which reads its arguments from
 * $s0/$s1/$s2/$s3/$s5 (ujoin custom convention), so this caller has to reserve
 * the low saved registers and spell the call in a way o32 cannot.  Same class
 * as __readVarLen/__readVarLen. */
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

/* _pullSubFrame (upstream libnaudio/n_env.c): emits one 184-sample envmixer
 * sub-frame.  The four command words are read off the listing --
 * `0x09000000 | ltgt` / `lratm:lratl`, `0x09060000 | cvolL` /
 * `dryamt:wetamt`, `0x09040000 | rtgt` / `rratm:rratl`, and
 * `0x03010000 | cvolR` / phys(em_state) -- which is A_SETVOL three times and
 * then A_ENVMIXER with the right channel volume packed into w0's low half,
 * the naudio ABI's own shape.  The non-first path is the bare
 * `0x03000000` envmixer.  `*outp += 0x170` and `em_delta += 0xB8` are the
 * sub-frame advance.
 *
 * FACTORY: 133 of 134 words DIFFER against a 125-word ROM.  The opcode
 * sequence lines up at 0.85 and every inserted word is an o32 spill: the ROM
 * receives the N_PVoice in $s0 and `outp` in $s3 and never saves either, so it
 * needs no prologue beyond `sw $ra` -- ujoin again, the same blocker as its
 * callee func_80026898 and its caller n_alEnvmixerPull.  An o32 definition has
 * to save $s0/$s1, home $a1, and reload both around the two calls, which is
 * the whole 9-word excess.
 *
 * 133 -> 18, re-measured 2026-08-25 with the DEFAULT compiler: spell this
 * function and its callee func_80026898 `static` and un-guard n_alEnvmixerPull
 * with them.  NOT SEALABLE in that shape -- n_alEnvmixerPull itself measures
 * 393/401 there, so it cannot be un-guarded, and without it uopt sees no C call
 * site for this function and deletes it outright.  The 18 is a permuter target,
 * not a closure: this leaf is blocked on n_alEnvmixerPull's body.  ujoin is not needed -- `uopt -O3` gives a static callee its own
 * convention.  What is left is a register-naming cascade only ($t6/$t7 and
 * $f4/$f6 role swaps), i.e. a permuter seed rather than an ABI wall.
 * func_80026898 goes 57 -> 51 in the same shape, and its first 42 words become
 * byte-exact -- the convention is fixed and the residue moves to a two-word
 * shift around the 65535.0f literal load.
 *
 * The body is plain ANSI C, so the port takes it too. */
#if defined(MIPS_TO_C) || defined(PORT)
#define n_aSetVolume(pkt, f, v, t, r)                                   \
{                                                                       \
    Acmd *_a = (Acmd *)pkt;                                             \
                                                                        \
    _a->words.w0 = (_SHIFTL(A_SETVOL, 24, 8) | _SHIFTL(f, 16, 8) |      \
                    _SHIFTL(v, 0, 16));                                 \
    _a->words.w1 = _SHIFTL(t, 16, 16) | _SHIFTL(r, 0, 16);              \
}

#define n_aEnvMixer(pkt, f, v, s)                                       \
{                                                                       \
    Acmd *_a = (Acmd *)pkt;                                             \
                                                                        \
    _a->words.w0 = (_SHIFTL(A_ENVMIXER, 24, 8) | _SHIFTL(f, 16, 8) |    \
                    _SHIFTL(v, 0, 16));                                 \
    _a->words.w1 = (unsigned int)(s);                                   \
}

extern s16 D_8003FA10[];        /* n_eqpower[0..127] */

s16 func_80026898(f32 tgt, f32 vol, s32 count, u16 *ratel);
Acmd *func_80026FA8(N_PVoice *e, s16 *outp, Acmd *p);

Acmd *func_8002714C(N_PVoice *e, s16 *outp, s32 outCount, Acmd *p) {
    Acmd *ptr = p;

    if ((e->em_motion != 1) || (outCount == 0)) {
        return ptr;
    }

    ptr = func_80026FA8(e, outp, ptr);

    if (e->em_first != 0) {
        e->em_first = 0;
        e->em_ltgt = (D_8003FA10[e->em_pan] * e->em_volume) >> 15;
        e->em_lratm = func_80026898((f32) e->em_ltgt, (f32) e->em_cvolL, e->em_segEnd,
                                    &e->em_lratl);
        e->em_rtgt = (D_8003FA10[127 - e->em_pan] * e->em_volume) >> 15;
        e->em_rratm = func_80026898((f32) e->em_rtgt, (f32) e->em_cvolR, e->em_segEnd,
                                    &e->em_rratl);

        n_aSetVolume(ptr++, 0, e->em_ltgt, e->em_lratm, e->em_lratl);
        n_aSetVolume(ptr++, A_VOL | A_LEFT, e->em_cvolL, e->em_dryamt, e->em_wetamt);
        n_aSetVolume(ptr++, A_VOL, e->em_rtgt, e->em_rratm, e->em_rratl);
        n_aEnvMixer(ptr++, A_INIT, e->em_cvolR, osVirtualToPhysical(e->em_state));
    } else {
        n_aEnvMixer(ptr++, 0, 0, osVirtualToPhysical(e->em_state));
    }

    *outp += 0x170;
    e->em_delta += 0xB8;

    return ptr;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002714C.s")
#endif

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

/* FACTORY: 23/23 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
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

/* n_alEnvmixerPull (upstream libnaudio/n_env.c): drains the voice's parameter
 * list, emitting one 184-sample sub-frame per event gap.
 *
 * jtbl_800414CC is `param->type` 0..0x11 against synthInternals.h's filter
 * message ids, and it is what identifies the two start-voice arms: index 13
 * (AL_FILTER_START_VOICE_ALT) reads `wave` at 0x18 and is the full
 * ALStartParamAlt path, index 14 (AL_FILTER_START_VOICE) reads it at 0xC and
 * is the short ALStartParam one.  Kirby's ALStartParamAlt carries two extra
 * bytes past `wave` -- an explicit wet index at 0x1C and a dry index at 0x1D
 * with 0x5F meaning "derive both from fxMix" -- which is the KStartParam view
 * below.  Both `n_alLoadParam` calls pass 5 (AL_FILTER_SET_WAVETABLE), and
 * AL_FILTER_STOP_VOICE passes 4 (AL_FILTER_RESET), read off the listing.
 *
 * The equal-power pan table is D_8003FA10 indexed `[127 - x]` everywhere
 * except the type-17 dry amount, which the ROM reads at `[128 - x]`
 * (`lh 0x0($t8)` where the other sites use `lh -0x2($t8)` off the same held
 * base).  That asymmetry is reproduced literally rather than tidied.
 *
 * FACTORY: 391 of 401 words DIFFER.  The opcode sequence is right instruction
 * for instruction -- including the signed-division break checks around
 * `/ N_FIXED_SAMPLE` -- and the 10-word shortfall plus every register name is
 * ujoin: the ROM calls func_8002714C with the N_PVoice in $s0 and `&outp` in
 * $s3 (and homes `&inp` in the argument slot the callee never reads), holds
 * `&D_8003FA10[128]` in $fp, and spills `f` and `lastDelta` to 0xA0/0x94($sp).
 * tools/decomp/cc_o3.py has no ujoin, so an o32 build passes those in $a0/$a1
 * and rebalances the whole frame.  Same blocker as func_8002714C and
 * func_80026898 below it.
 *
 * The body is plain ANSI C, so the port takes it too. */
#if defined(MIPS_TO_C) || defined(PORT)
typedef struct KStartParam {
    /* 0x00 */ struct ALParam_s *next;
    /* 0x04 */ s32   delta;
    /* 0x08 */ s16   type;
    /* 0x0A */ s16   unity;
    /* 0x0C */ f32   pitch;
    /* 0x10 */ s16   volume;
    /* 0x12 */ u8    pan;
    /* 0x13 */ u8    fxMix;
    /* 0x14 */ s32   samples;
    /* 0x18 */ void *wave;
    /* 0x1C */ u8    wetIndex;
    /* 0x1D */ u8    dryIndex;
} KStartParam;

extern s16 D_8003FA10[];        /* n_eqpower[0..127] */

Acmd *func_8002714C(N_PVoice *e, s16 *outp, s32 outCount, Acmd *p);
s16 func_80027610(s32 delta, s32 cvol, s32 ratl, s32 ratm);

Acmd *n_alEnvmixerPull(N_PVoice *f, s32 sampleOffset, Acmd *p) {
    ALParam     *param;
    KStartParam *sp;
    Acmd        *ptr = p;
    s32          count;
    s32          delta;
    s32          lastDelta = sampleOffset;
    s32          nSamples = N_FIXED_SAMPLE;
    s16          inp = 0;
    s16          outp = 0;
    s32          pan;
    s32          volume;

    while (f->em_ctrlList != NULL) {
        param = f->em_ctrlList;
        delta = ((param->delta + 0x5C) / N_FIXED_SAMPLE) * N_FIXED_SAMPLE;
        count = delta - lastDelta;
        lastDelta = delta;
        if (nSamples < count) {
            break;
        }

        switch (param->type) {
            case AL_FILTER_START_VOICE_ALT:
                sp = (KStartParam *) param;
                if (sp->unity != 0) {
                    f->rs_upitch = 1;
                }
                n_alLoadParam(f, AL_FILTER_SET_WAVETABLE, sp->wave);
                f->em_motion = 1;
                f->em_first = 1;
                f->em_delta = 0;
                f->em_segEnd = ((sp->samples + 0x5C) / N_FIXED_SAMPLE) * N_FIXED_SAMPLE;
                f->em_volume = (sp->volume * sp->volume) >> 15;
                f->em_pan = sp->pan;
                if ((sp->wetIndex != 0) || (sp->dryIndex != 0x5F)) {
                    f->em_wetamt = D_8003FA10[127 - sp->wetIndex];
                    f->em_dryamt = D_8003FA10[127 - sp->dryIndex];
                } else {
                    f->em_dryamt = D_8003FA10[sp->fxMix];
                    f->em_wetamt = D_8003FA10[127 - sp->fxMix];
                }
                if (sp->samples != 0) {
                    f->em_cvolL = 1;
                    f->em_cvolR = 1;
                } else {
                    volume = f->em_volume;
                    pan = f->em_pan;
                    f->em_cvolL = (D_8003FA10[pan] * volume) >> 15;
                    f->em_cvolR = (D_8003FA10[127 - pan] * volume) >> 15;
                }
                f->rs_ratio = sp->pitch;
                break;

            case AL_FILTER_SET_VOLUME:
            case AL_FILTER_SET_PAN:
            case AL_FILTER_SET_FXAMT:
            case 17:
                delta = f->em_delta;
                if (delta >= f->em_segEnd) {
                    volume = f->em_volume;
                    pan = f->em_pan;
                    f->em_ltgt = (D_8003FA10[pan] * volume) >> 15;
                    f->em_delta = f->em_segEnd;
                    f->em_cvolL = f->em_ltgt;
                    f->em_rtgt = (D_8003FA10[127 - pan] * volume) >> 15;
                    f->em_cvolR = f->em_rtgt;
                } else {
                    f->em_cvolL = func_80027610(delta, f->em_cvolL, f->em_lratl, f->em_lratm);
                    f->em_cvolR = func_80027610(f->em_delta, f->em_cvolR, f->em_rratl,
                                                f->em_rratm);
                }
                if (f->em_cvolL == 0) {
                    f->em_cvolL = 1;
                }
                if (f->em_cvolR == 0) {
                    f->em_cvolR = 1;
                }
                param = f->em_ctrlList;
                if (param->type == AL_FILTER_SET_PAN) {
                    f->em_pan = param->data.i;
                }
                if (param->type == AL_FILTER_SET_VOLUME) {
                    f->em_delta = 0;
                    f->em_volume = (param->data.i * param->data.i) >> 15;
                    f->em_segEnd = ((param->moredata.i + 0x5C) / N_FIXED_SAMPLE) *
                                   N_FIXED_SAMPLE;
                }
                if (param->type == AL_FILTER_SET_FXAMT) {
                    f->em_dryamt = D_8003FA10[param->data.i];
                    f->em_wetamt = D_8003FA10[127 - param->data.i];
                }
                if (param->type == 17) {
                    f->em_dryamt = D_8003FA10[128 - param->moredata.i];
                    f->em_wetamt = D_8003FA10[127 - param->data.i];
                }
                f->em_first = 1;
                break;

            case AL_FILTER_START_VOICE:
                if (((KStartParam *) param)->unity != 0) {
                    f->rs_upitch = 1;
                }
                n_alLoadParam(f, AL_FILTER_SET_WAVETABLE, (void *) param->data.i);
                f->em_motion = 1;
                break;

            case AL_FILTER_STOP_VOICE:
                ptr = func_8002714C(f, &outp, count, ptr);
                n_alEnvmixerParam(f, AL_FILTER_RESET, NULL);
                break;

            case AL_FILTER_FREE_VOICE:
                ((N_PVoice *) param->data.i)->offset = 0;
                alUnlink((ALLink *) param->data.i);
                alLink((ALLink *) param->data.i, &n_syn->pLameList);
                break;

            case AL_FILTER_SET_PITCH:
                ptr = func_8002714C(f, &outp, count, ptr);
                f->rs_ratio = f->em_ctrlList->data.f;
                break;

            case AL_FILTER_SET_UNITY_PITCH:
                ptr = func_8002714C(f, &outp, count, ptr);
                f->rs_upitch = 1;
                break;

            case AL_FILTER_SET_WAVETABLE:
                ptr = func_8002714C(f, &outp, count, ptr);
                n_alLoadParam(f, AL_FILTER_SET_WAVETABLE, (void *) f->em_ctrlList->data.i);
                break;

            default:
                ptr = func_8002714C(f, &outp, count, ptr);
                n_alEnvmixerParam(f, f->em_ctrlList->type,
                                  (void *) f->em_ctrlList->data.i);
                break;
        }

        inp += count * 2;
        nSamples -= count;

        param = f->em_ctrlList;
        f->em_ctrlList = param->next;
        if (f->em_ctrlList == NULL) {
            f->em_ctrlTail = NULL;
        }
        param->next = n_syn->paramList;
        n_syn->paramList = param;
    }

    ptr = func_8002714C(f, &outp, nSamples, ptr);

    if (f->em_segEnd < f->em_delta) {
        f->em_delta = f->em_segEnd;
    }

    return ptr;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/n_alEnvmixerPull.s")
#endif

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

/* n_alCSPHandleMIDIMsg (upstream libnaudio/n_cspplayer.c): the whole MIDI
 * dispatcher for the compressed-sequence player.
 *
 * Both jump tables are decoded from the listing.  jtbl_80041514 is indexed
 * `(status & 0xF0) - 0x80` over 97 entries and only six of them are live --
 * 0x80 note off, 0x90 note on, 0xA0 poly pressure, 0xB0 control change, 0xC0
 * program change, 0xD0 channel pressure, 0xE0 pitch bend.  jtbl_80041698 is
 * `controller - 7` over 19 entries; controllers 0x40 (sustain) and 0x5B (fx1)
 * are handled by the two explicit compares IDO put in front of it, which is
 * why the source is one flat `switch (byte1)`.
 *
 * The record layouts all come out of the listing: the channel state is the
 * SDK's ALChanState with five Kirby bytes after `pitchBend` (0x10 channel
 * pressure, 0x12/0x13 a pair the CC 22/23 handlers feed to func_8002CF40, and
 * 0x14 a bank selector that CC 24 range-checks against the THREE bank slots at
 * seqp+0x20/0x24/0x28 -- the same three func_8002901C's cases 14/24/25 set).
 * The voice record keeps its ALSound at 0x20 (`vs->sound->envelope->
 * releaseTime` is what the note-off hands func_8002B2E8), its channel at 0x31,
 * and a 0..4 state at 0x35 whose 2/4 pair is the sustain-pedal latch.
 *
 * FACTORY: 674 of 678 words DIFFER against a 649-word ROM.  The 29-word excess
 * is ujoin: `seqp` arrives in $s2 and the event pointer in $t0 (the ROM homes
 * $t0 itself at 0xC4($sp), above its own 0xC0 frame -- the caller's slot), and
 * the ROM saves NONE of $s0..$s7/$fp.  An o32 definition must save and restore
 * all nine and home both parameters.  Swept, and worth 31 words: `chanNum` as
 * s32 rather than u8 (709 -> 678; the ROM keeps `status & 0xF` in $s7 as an
 * int and compares it to each voice's channel byte directly, where a u8 local
 * gets re-masked at every one of the eight comparison sites), plus `pan` and
 * the 0x12 copy as s32 (678 -> 674 diffs).  Rejected: `status` as s32 (no
 * change) and `byte1`/`byte2` as s32 (693, worse -- the ROM's `andi $aN, 0xFF`
 * at each call site is the u8 promotion).
 *
 * Its listing also swallows the next, unnamed function of the TU inside its own
 * `.size` (`jr $ra; nop` at 0x80029014 -- padtrap.py class 'swallowed'), which
 * a conversion writes out as `void func_80029014(void) {}` after this one.  It
 * is not a padding trap and it is not what blocks this site; measured with the
 * stub on a scratch copy 2026-08-25, still 672 of 681.
 *
 * PORT CAVEAT, and it is a real one: KMidiVoice needs an ALSound POINTER at
 * N64 0x20, so at LP64 it cannot fit inside the file-scope KVoiceSt
 * (`{ next; u8 pad04[0x34]; }`, 64 bytes) that func_800296C0 allocates with
 * `sizeof`.  The view below and func_8002901C's KCVoiceState are spelled to
 * agree with EACH OTHER at LP64 (both put the post-voice fields at offset 40),
 * but the allocation in func_800296C0 has to grow before the port's sequence
 * player can actually run.  That is a port-lane job, not a decomp one.
 *
 * The body is otherwise plain ANSI C, so the port takes it too. */
#if defined(MIPS_TO_C) || defined(PORT)
/* Kirby's per-channel MIDI state, 0x18 bytes: the SDK's ALChanState (0x10)
 * with five bytes of Kirby extension after `pitchBend`. */
typedef struct KMidiChan {
    /* 0x00 */ ALInstrument *instrument;
    /* 0x04 */ s16  bendRange;
    /* 0x06 */ u8   fxId;
    /* 0x07 */ u8   pan;
    /* 0x08 */ u8   priority;
    /* 0x09 */ u8   vol;
    /* 0x0A */ u8   fxmix;
    /* 0x0B */ u8   sustain;
    /* 0x0C */ f32  pitchBend;
    /* 0x10 */ u8   pressure;
    /* 0x11 */ u8   pad11[1];
    /* 0x12 */ u8   unk12;
    /* 0x13 */ u8   unk13;
    /* 0x14 */ u8   bank;
    /* 0x15 */ u8   pad15[3];
} KMidiChan;

typedef struct KMidiVoice {
    /* 0x00 */ struct KMidiVoice *next;
    /* 0x04 */ u8            voice[0x1C];  /* N_ALVoice; clientPrivate points back here */
    /* 0x20 */ ALSound      *sound;
    /* 0x24 */ ALMicroTime   envEndTime;
    /* 0x28 */ f32           pitch;
    /* 0x2C */ f32           vibrato;
    /* 0x30 */ u8            envGain;
    /* 0x31 */ u8            channel;
    /* 0x32 */ u8            key;
    /* 0x33 */ u8            pressure;
    /* 0x34 */ u8            envPhase;
    /* 0x35 */ u8            state;
    /* 0x36 */ u8            tremelo;
    /* 0x37 */ u8            flags;
} KMidiVoice;

typedef struct KMidiSeqp {
    /* 0x00 */ ALPlayer      node;
    /* 0x14 */ N_ALSynth    *drvr;
    /* 0x18 */ void         *target;
    /* 0x1C */ ALMicroTime   curTime;
    /* 0x20 */ ALBank       *bank[3];
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
    /* 0x68 */ KMidiChan    *chanState;
    /* 0x6C */ KMidiVoice   *vAllocHead;
    /* 0x70 */ KMidiVoice   *vAllocTail;
    /* 0x74 */ KMidiVoice   *vFreeList;
    /* 0x78 */ u8            unk78;
    /* 0x79 */ u8            pad79[3];
    /* 0x7C */ ALOscInit     initOsc;
    /* 0x80 */ ALOscUpdate   updateOsc;
    /* 0x84 */ ALOscStop     stopOsc;
} KMidiSeqp;

extern u16 D_8003FB1C;          /* BGM channel enable mask */

void func_8002AD90(N_ALVoice *voice, ALWaveTable *w, f32 pitch, s16 vol, u8 pan,
                   u8 fxmix, ALMicroTime t, u8 unk12, u8 unk13);
s32  func_8002B214(void *vs, ALMicroTime t);
s16  func_8002B238(void *vs, void *seqp);
void func_8002B2E8(void *seqp, N_ALVoice *voice, ALMicroTime t);
void func_8002B59C(KMidiSeqp *seqp, ALInstrument *inst, u8 chan);
s32  func_8002B5E8(KMidiVoice *vs, KMidiSeqp *seqp);
KMidiVoice *func_8002B638(KMidiSeqp *seqp, u8 key, u8 chan);
KMidiVoice *func_8002B6A8(KMidiSeqp *seqp, u8 key, u8 vel, u8 chan);
ALSound    *func_8002B70C(KMidiSeqp *seqp, u8 key, u8 vel, u8 chan);
void func_8002CF40(N_ALVoice *voice, u8 unk12, u8 unk13);
void func_8002CFE4(N_ALVoice *voice, u8 fxmix);

void func_800285F8(void *seqpArg, N_ALEvent *event) {
    KMidiSeqp     *seqp = (KMidiSeqp *) seqpArg;
    KMidiChan     *chan;
    KMidiVoice    *vs;
    ALInstrument  *inst;
    ALSound       *sound;
    ALEnvelope    *env;
    ALVoiceConfig  vc;
    N_ALEvent      evt;
    void          *oscState;
    f32            oscValue;
    f32            pitch;
    ALMicroTime    t;
    u8             status;
    u8             byte1;
    u8             byte2;
    s32            chanNum;
    s32            pan;
    s32            unk12;
    u8             unk13;

    status = event->msg.midi.status;
    byte1 = event->msg.midi.byte1;
    byte2 = event->msg.midi.byte2;
    chanNum = status & 0xF;

    switch (status & 0xF0) {
        case AL_MIDI_NoteOn:
            if (byte2 != 0) {
                if (seqp->state != AL_PLAYING) {
                    return;
                }
                if (!(D_8003FB1C & (1 << chanNum))) {
                    return;
                }
                sound = func_8002B70C(seqp, byte1, byte2, chanNum);
                if (sound == NULL) {
                    return;
                }
                chan = &seqp->chanState[chanNum];
                vc.fxBus = 0;
                vc.unityPitch = 0;
                vc.priority = chan->priority;
                vs = func_8002B6A8(seqp, byte1, byte2, chanNum);
                if (vs == NULL) {
                    return;
                }
                n_alSynAllocVoice((N_ALVoice *) vs->voice, &vc);
                vs->envPhase = 0;
                vs->sound = sound;
                if (seqp->chanState[chanNum].sustain >= 0x40) {
                    vs->state = 2;
                } else {
                    vs->state = 0;
                }
                vs->pitch = alCents2Ratio((s16) (((byte1 - sound->keyMap->keyBase) * 100) +
                                                 sound->keyMap->detune));
                vs->envGain = sound->envelope->attackVolume;
                vs->flags = 0;
                vs->envEndTime = seqp->curTime + sound->envelope->attackTime;

                inst = seqp->chanState[chanNum].instrument;

                oscValue = 127.0f;
                if (inst->tremType != 0 && seqp->initOsc != NULL) {
                    t = seqp->initOsc(&oscState, &oscValue, inst->tremType, inst->tremRate,
                                      inst->tremDepth, inst->tremDelay);
                    if (t != 0) {
                        evt.type = AL_TREM_OSC_EVT;
                        evt.msg.osc.vs = (struct N_ALVoiceState_s *) vs;
                        evt.msg.osc.oscState = oscState;
                        n_alEvtqPostEvent(&seqp->evtq, &evt, t);
                        vs->flags |= 1;
                    }
                }
                vs->tremelo = (u8) (u32) oscValue;

                oscValue = 1.0f;
                if (inst->vibType != 0 && seqp->initOsc != NULL) {
                    t = seqp->initOsc(&oscState, &oscValue, inst->vibType, inst->vibRate,
                                      inst->vibDepth, inst->vibDelay);
                    if (t != 0) {
                        evt.type = AL_VIB_OSC_EVT;
                        evt.msg.osc.vs = (struct N_ALVoiceState_s *) vs;
                        evt.msg.osc.chan = chanNum;
                        evt.msg.osc.oscState = oscState;
                        n_alEvtqPostEvent(&seqp->evtq, &evt, t);
                        vs->flags |= 2;
                    }
                }
                vs->vibrato = oscValue;

                chan = &seqp->chanState[chanNum];
                unk13 = chan->unk13;
                pan = chan->fxmix;
                unk12 = chan->unk12;
                pitch = chan->pitchBend * vs->pitch * vs->vibrato;

                env = sound->envelope;
                func_8002AD90((N_ALVoice *) vs->voice, sound->wavetable, pitch,
                              func_8002B238(vs, seqp), func_8002B5E8(vs, seqp) & 0xFF, pan,
                              env->attackTime, unk12, unk13);

                evt.type = AL_SEQP_ENV_EVT;
                evt.msg.vol.voice = (N_ALVoice *) vs->voice;
                evt.msg.vol.vol = sound->envelope->decayVolume;
                evt.msg.vol.delta = sound->envelope->decayTime;
                n_alEvtqPostEvent(&seqp->evtq, &evt, env->attackTime);

                if (event->msg.midi.duration != 0) {
                    evt.type = AL_CSP_NOTEOFF_EVT;
                    evt.msg.midi.status = chanNum | 0x80;
                    evt.msg.midi.byte1 = byte1;
                    evt.msg.midi.byte2 = 0;
                    n_alEvtqPostEvent(&seqp->evtq, &evt,
                                      seqp->uspt * event->msg.midi.duration);
                }
                return;
            }
            /* fallthrough */
        case AL_MIDI_NoteOff:
            vs = func_8002B638(seqp, byte1, chanNum);
            if (vs != NULL) {
                if (vs->state == 2) {
                    vs->state = 4;
                    return;
                }
                vs->state = 3;
                func_8002B2E8(seqp, (N_ALVoice *) vs->voice, vs->sound->envelope->releaseTime);
            }
            return;

        case AL_MIDI_PolyKeyPressure:
            vs = func_8002B638(seqp, byte1, chanNum);
            if (vs != NULL) {
                vs->pressure = byte2;
                n_alSynSetVol((N_ALVoice *) vs->voice, func_8002B238(vs, seqp),
                              func_8002B214(vs, seqp->curTime));
            }
            return;

        case AL_MIDI_ChannelPressure:
            seqp->chanState[chanNum].pressure = byte1;
            return;

        case AL_MIDI_ControlChange:
            switch (byte1) {
                case AL_MIDI_VOLUME_CTRL:
                    seqp->chanState[chanNum].vol = byte2;
                    vs = seqp->vAllocHead;
                    while (vs != NULL) {
                        if (chanNum == vs->channel && vs->envPhase != 3) {
                            n_alSynSetVol((N_ALVoice *) vs->voice, func_8002B238(vs, seqp),
                                          func_8002B214(vs, seqp->curTime));
                        }
                        vs = vs->next;
                    }
                    return;

                case AL_MIDI_PAN_CTRL:
                    seqp->chanState[chanNum].pan = byte2;
                    vs = seqp->vAllocHead;
                    while (vs != NULL) {
                        if (chanNum == vs->channel) {
                            n_alSynSetPan((N_ALVoice *) vs->voice, func_8002B5E8(vs, seqp) & 0xFF);
                        }
                        vs = vs->next;
                    }
                    return;

                case AL_MIDI_PRIORITY_CTRL:
                    seqp->chanState[chanNum].priority = byte2;
                    return;

                case AL_MIDI_SUSTAIN_CTRL:
                    seqp->chanState[chanNum].sustain = byte2;
                    vs = seqp->vAllocHead;
                    while (vs != NULL) {
                        if (chanNum == vs->channel) {
                            if (vs->state != 3) {
                                if (byte2 >= 0x40) {
                                    if (vs->state == 0) {
                                        vs->state = 2;
                                    }
                                } else if (vs->state == 2) {
                                    vs->state = 0;
                                } else if (vs->state == 4) {
                                    vs->state = 3;
                                    func_8002B2E8(seqp, (N_ALVoice *) vs->voice,
                                                  vs->sound->envelope->releaseTime);
                                }
                            }
                        }
                        vs = vs->next;
                    }
                    return;

                case AL_MIDI_FX1_CTRL:
                    seqp->chanState[chanNum].fxmix = byte2;
                    vs = seqp->vAllocHead;
                    while (vs != NULL) {
                        if (chanNum == vs->channel) {
                            func_8002CFE4((N_ALVoice *) vs->voice, byte2);
                        }
                        vs = vs->next;
                    }
                    return;

                case 20:
                    if (byte2 >= 0x79) {
                        seqp->chanState[chanNum].bendRange = 1200;
                    } else {
                        seqp->chanState[chanNum].bendRange = byte2 * 10;
                    }
                    return;

                case 21:
                    seqp->unk78 = byte2;
                    return;

                case 22:
                    chan = &seqp->chanState[chanNum];
                    chan->unk12 = byte2;
                    vs = seqp->vAllocHead;
                    while (vs != NULL) {
                        if (chanNum == vs->channel) {
                            func_8002CF40((N_ALVoice *) vs->voice, byte2,
                                          seqp->chanState[chanNum].unk13);
                        }
                        vs = vs->next;
                    }
                    return;

                case 23:
                    chan = &seqp->chanState[chanNum];
                    chan->unk13 = byte2;
                    vs = seqp->vAllocHead;
                    while (vs != NULL) {
                        if (chanNum == vs->channel) {
                            func_8002CF40((N_ALVoice *) vs->voice,
                                          seqp->chanState[chanNum].unk12, byte2);
                        }
                        vs = vs->next;
                    }
                    return;

                case 24:
                    if (byte2 < 3 && seqp->bank[byte2] != NULL) {
                        seqp->chanState[chanNum].bank = byte2;
                    }
                    return;

                case 25:
                    seqp->chanState[chanNum].priority = byte2;
                    return;
            }
            return;

        case AL_MIDI_ProgramChange:
            if (byte1 < seqp->bank[seqp->chanState[chanNum].bank]->instCount) {
                func_8002B59C(seqp,
                              seqp->bank[seqp->chanState[chanNum].bank]->instArray[byte1],
                              chanNum);
            }
            return;

        case AL_MIDI_PitchBendChange:
            chan = &seqp->chanState[chanNum];
            pitch = alCents2Ratio((chan->bendRange * (((byte2 << 7) + byte1) - 0x2000)) /
                                  8192);
            chan->pitchBend = pitch;
            vs = seqp->vAllocHead;
            while (vs != NULL) {
                if (chanNum == vs->channel) {
                    n_alSynSetPitch((N_ALVoice *) vs->voice,
                                    ((((f32) (u32) seqp->chanState[chanNum].pressure *
                                       (vs->vibrato - 1.0f)) / 127.0f) + 1.0f) *
                                        (vs->pitch * pitch));
                }
                vs = vs->next;
            }
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800285F8.s")
#endif

/* n_alCSPVoiceHandler (upstream libnaudio/n_cspplayer.c): the compressed-
 * sequence player's event pump.  Both jump tables are decoded from the listing
 * -- jtbl_800416E4 is `seqp->nextEvent.type` 0..0x19 (0 AL_SEQ_REF_EVT, 5
 * AL_NOTE_END_EVT, 6 AL_SEQP_ENV_EVT, 7 AL_SEQP_META_EVT, 9 AL_SEQP_API_EVT,
 * 10 AL_SEQP_VOL_EVT, 12 AL_SEQP_PRIORITY_EVT, 13 AL_SEQP_SEQ_EVT, 14
 * AL_SEQP_BANK_EVT, 15/16/17 PLAY/STOP/STOPPING, 2 and 21 sharing the MIDI
 * arm, 22/23 the two oscillator events, 24/25 two Kirby-only bank slots), and
 * jtbl_8004174C is the inner `evt.type - 1` for the events alCSeqNextEvent
 * returns.  The N_ALOscEvent field split (vs at 0x44, oscState at 0x48, chan
 * at 0x4C) is what makes the `jalr $t9` an `updateOsc(oscState, &value)`.
 *
 * The m2c hole `func_80026460(seqp, <unset $a1>)` in the AL_SEQP_SEQ_EVT arm is
 * recovered: the ROM does not set $a1 at all, it sets `$f12` from
 * `%lo(D_8004179C)`, and that word is `.float 500000` -- the MIDI default tempo
 * of 500000 us per quarter note.  (func_80026460's own note explains why the
 * float arrives in $f12 rather than $a1.)
 *
 * FACTORY: 422 of 424 words DIFFER against a 425-word ROM -- the count is one
 * short and the case layout order comes out exactly right, so this is a
 * complete shape with a register-allocation residue on top.  The residue is
 * ujoin again, and visibly so: the ROM hands func_800285F8 its seqp in $s2 and
 * func_8002649C its seqp in $s6, keeps `&seqp->nextEvent` spilled at
 * 0x60($sp), and saves $fp into 0xB0($sp) -- ABOVE its own 0xB0 frame, i.e.
 * into the CALLER's frame -- across those two calls.  tools/decomp/cc_o3.py
 * has no ujoin, so an o32 build parks seqp and &seqp->evtq in $s2/$s5 instead
 * and every register after that is renamed.
 *
 * The body is plain ANSI C and its three record views are laid out to match
 * the file-scope KChanSt / KVoiceSt / KCSeqpNew at LP64 as well as on N64, so
 * the port takes it too. */
#if defined(MIPS_TO_C) || defined(PORT)
/* The three records this handler walks, spelled so that EVERY field lands at
 * the same LP64 offset as the file-scope KChanSt / KVoiceSt / KCSeqpNew views
 * that func_800296C0 allocates -- same member order, same widths, pads only
 * where those views have pads.  (KCSeqpNew itself is declared just BELOW this
 * site and REFOUND.md forbids moving a file-scope declaration to suit a
 * draft, so it is mirrored rather than reused.) */
typedef struct KCChanSt {
    /* 0x00 */ u8  pad00[8];
    /* 0x08 */ u8  priority;
    /* 0x09 */ u8  pad09[3];
    /* 0x0C */ f32 pitchBend;
    /* 0x10 */ u8  bendRange;
    /* 0x11 */ u8  pad11[7];
} KCChanSt;

typedef struct KCVoiceState {
    /* 0x00 */ struct KCVoiceState *next;
    /* 0x04 */ u8  voice[0x1C];     /* N_ALVoice at +0x04; clientPrivate points back here */
    /* 0x20 */ ALSound *sound;      /* unused here; declared so this view and
                                     * func_800285F8's KMidiVoice agree at LP64 */
    /* 0x24 */ s32 envEndTime;
    /* 0x28 */ f32 pitch;
    /* 0x2C */ f32 vibrato;
    /* 0x30 */ u8  envGain;
    /* 0x31 */ u8  pad31[3];
    /* 0x34 */ u8  envPhase;
    /* 0x35 */ u8  pad35[1];
    /* 0x36 */ u8  tremelo;
    /* 0x37 */ u8  flags;
} KCVoiceState;

typedef struct KCSeqpFull {
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
    /* 0x68 */ KCChanSt     *chanState;
    /* 0x6C */ KCVoiceState *vAllocHead;
    /* 0x70 */ KCVoiceState *vAllocTail;
    /* 0x74 */ KCVoiceState *vFreeList;
    /* 0x78 */ u8            unk78;
    /* 0x79 */ u8            pad79[3];
    /* 0x7C */ ALOscInit     initOsc;
    /* 0x80 */ ALOscUpdate   updateOsc;
    /* 0x84 */ ALOscStop     stopOsc;
} KCSeqpFull;

void func_800263F0(KCSeqp *seqp);
void func_80026460(KCSeqp *seqp, f32 tempo);
void func_8002649C(void *seqp, N_ALEvent *evt);
void func_800285F8(void *seqp, N_ALEvent *evt);
void func_8002B158(KCSeqpFull *seqp, void *bank);
s32 func_8002B214(void *vs, ALMicroTime t);
s16 func_8002B238(void *vs, void *seqp);
void func_8002B2E8(void *seqp, N_ALVoice *voice, ALMicroTime t);
s32 func_8002B40C(KCSeqpFull *seqp, N_ALVoice *voice, s32 t);
void func_8002B4B4(KCSeqpFull *seqp, N_ALVoice *voice);
void func_8002C68C(KCSeqpFull *seqp, KCVoiceState *vs);
void func_8002D1B0(N_ALVoice *voice);
void func_8002C790(void *);

s32 func_8002901C(void *node) {
    KCSeqpFull   *seqp = (KCSeqpFull *) node;
    ALEvent       evt;
    N_ALEvent     nextEvt;
    N_ALVoice    *voice;
    KCVoiceState *vs;
    KCChanSt     *ch;
    ALMicroTime   delta;
    void         *oscState;
    f32           oscValue;
    s32           deltaTime;
    u8            chan;

    while (1) {
        switch (seqp->nextEvent.type) {
            case AL_SEQ_REF_EVT:
                if (seqp->target != NULL) {
                    alCSeqNextEvent((ALCSeq *) seqp->target, &evt);
                    switch (evt.type) {
                        case AL_SEQ_MIDI_EVT:
                            func_800285F8(seqp, (N_ALEvent *) &evt);
                            func_800263F0((KCSeqp *) seqp);
                            break;
                        case AL_TEMPO_EVT:
                            func_8002649C(seqp, (N_ALEvent *) &evt);
                            func_800263F0((KCSeqp *) seqp);
                            break;
                        case AL_SEQ_END_EVT:
                            seqp->state = AL_STOPPING;
                            evt.type = AL_SEQP_STOP_EVT;
                            n_alEvtqPostEvent(&seqp->evtq, (N_ALEvent *) &evt, 0x7FFFFFFF);
                            break;
                        case AL_TRACK_END:
                        case AL_CSP_LOOPSTART:
                        case AL_CSP_LOOPEND:
                            func_800263F0((KCSeqp *) seqp);
                            break;
                    }
                }
                break;

            case AL_SEQP_API_EVT:
                nextEvt.type = AL_SEQP_API_EVT;
                n_alEvtqPostEvent(&seqp->evtq, &nextEvt, seqp->frameTime);
                break;

            case AL_NOTE_END_EVT:
                voice = seqp->nextEvent.msg.note.voice;
                n_alSynStopVoice(voice);
                func_8002D1B0(voice);
                vs = voice->clientPrivate;
                if (vs->flags != 0) {
                    func_8002C68C(seqp, vs);
                }
                func_8002B4B4(seqp, voice);
                break;

            case AL_SEQP_ENV_EVT:
                voice = seqp->nextEvent.msg.note.voice;
                vs = voice->clientPrivate;
                if (vs->envPhase == 0) {
                    vs->envPhase = 1;
                }
                delta = seqp->nextEvent.msg.vol.delta;
                vs->envEndTime = seqp->curTime + delta;
                vs->envGain = seqp->nextEvent.msg.vol.vol;
                n_alSynSetVol(voice, func_8002B238(vs, seqp), delta);
                break;

            case AL_TREM_OSC_EVT:
                oscState = seqp->nextEvent.msg.osc.oscState;
                vs = (KCVoiceState *) seqp->nextEvent.msg.osc.vs;
                deltaTime = seqp->updateOsc(oscState, &oscValue);
                vs->tremelo = (u8) (u32) oscValue;
                n_alSynSetVol((N_ALVoice *) vs->voice, func_8002B238(vs, seqp),
                              func_8002B214(vs, seqp->curTime));
                nextEvt.type = AL_TREM_OSC_EVT;
                nextEvt.msg.osc.vs = (struct N_ALVoiceState_s *) vs;
                nextEvt.msg.osc.oscState = oscState;
                n_alEvtqPostEvent(&seqp->evtq, &nextEvt, deltaTime);
                break;

            case AL_VIB_OSC_EVT:
                oscState = seqp->nextEvent.msg.osc.oscState;
                vs = (KCVoiceState *) seqp->nextEvent.msg.osc.vs;
                chan = seqp->nextEvent.msg.osc.chan;
                deltaTime = seqp->updateOsc(oscState, &oscValue);
                vs->vibrato = oscValue;
                ch = &seqp->chanState[chan];
                n_alSynSetPitch((N_ALVoice *) vs->voice,
                                ch->pitchBend * (vs->pitch *
                                    ((((vs->vibrato - 1.0f) * (f32) (u32) ch->bendRange) / 127.0f) + 1.0f)));
                nextEvt.type = AL_VIB_OSC_EVT;
                nextEvt.msg.osc.vs = (struct N_ALVoiceState_s *) vs;
                nextEvt.msg.osc.oscState = oscState;
                nextEvt.msg.osc.chan = chan;
                n_alEvtqPostEvent(&seqp->evtq, &nextEvt, deltaTime);
                break;

            case AL_SEQP_MIDI_EVT:
            case AL_CSP_NOTEOFF_EVT:
                func_800285F8(seqp, &seqp->nextEvent);
                break;

            case AL_SEQP_META_EVT:
                func_8002649C(seqp, &seqp->nextEvent);
                break;

            case AL_SEQP_VOL_EVT:
                vs = seqp->vAllocHead;
                seqp->vol = seqp->nextEvent.msg.spvol.vol;
                while (vs != NULL) {
                    n_alSynSetVol((N_ALVoice *) vs->voice, func_8002B238(vs, seqp),
                                  func_8002B214(vs, seqp->curTime));
                    vs = vs->next;
                }
                break;

            case AL_SEQP_PLAY_EVT:
                seqp->unk78 = 100;
                if (seqp->state != AL_PLAYING) {
                    seqp->state = AL_PLAYING;
                    func_800263F0((KCSeqp *) seqp);
                }
                break;

            case AL_SEQP_STOP_EVT:
                if (seqp->state == AL_STOPPING) {
                    while ((vs = seqp->vAllocHead) != NULL) {
                        voice = (N_ALVoice *) vs->voice;
                        n_alSynStopVoice(voice);
                        func_8002D1B0(voice);
                        if (vs->flags != 0) {
                            func_8002C68C(seqp, vs);
                        }
                        func_8002B4B4(seqp, voice);
                    }
                    func_8002C790(seqp);
                    seqp->state = AL_STOPPED;
                }
                break;

            case AL_SEQP_STOPPING_EVT:
                if (seqp->state == AL_PLAYING) {
                    n_alEvtqFlushType(&seqp->evtq, AL_SEQ_REF_EVT);
                    n_alEvtqFlushType(&seqp->evtq, AL_CSP_NOTEOFF_EVT);
                    n_alEvtqFlushType(&seqp->evtq, AL_SEQP_MIDI_EVT);
                    vs = seqp->vAllocHead;
                    while (vs != NULL) {
                        voice = (N_ALVoice *) vs->voice;
                        if (func_8002B40C(seqp, voice, 0xC350) != 0) {
                            func_8002B2E8(seqp, voice, 0xC350);
                        }
                        vs = vs->next;
                    }
                    seqp->state = AL_STOPPING;
                    nextEvt.type = AL_SEQP_STOP_EVT;
                    n_alEvtqPostEvent(&seqp->evtq, &nextEvt, 0x7FFFFFFF);
                }
                break;

            case AL_SEQP_PRIORITY_EVT:
                seqp->chanState[seqp->nextEvent.msg.sppriority.chan].priority =
                    seqp->nextEvent.msg.sppriority.priority;
                break;

            case AL_SEQP_SEQ_EVT:
                seqp->target = seqp->nextEvent.msg.spseq.seq;
                func_80026460((KCSeqp *) seqp, 500000.0f);
                if (seqp->bank != NULL) {
                    func_8002B158(seqp, seqp->bank);
                }
                break;

            case AL_SEQP_BANK_EVT:
                seqp->bank = seqp->nextEvent.msg.spbank.bank;
                func_8002B158(seqp, seqp->bank);
                break;

            case 24:
                seqp->unk24 = seqp->nextEvent.msg.spbank.bank;
                func_8002B158(seqp, seqp->unk24);
                break;

            case 25:
                seqp->unk28 = seqp->nextEvent.msg.spbank.bank;
                func_8002B158(seqp, seqp->unk28);
                break;
        }

        seqp->nextDelta = func_800261B0(&seqp->evtq, &seqp->nextEvent);
        if (seqp->nextDelta != 0) {
            break;
        }
    }

    seqp->curTime += seqp->nextDelta;
    return (s32) ((f32) seqp->nextDelta / D_8003FB18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002901C.s")
#endif

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
 * comes out 8 bytes short.
 *
 * MEASURED 2026-08-24: the folded-function half of that is correct and the TU
 * comes out the right size with it, but the BODY is not byte-exact -- true
 * residue 3 words. Un-guarding leaves exactly two instructions differing at
 * ROM 0x2a5c5, where the ROM has `sw $t7, 8($v0)` then `lui $t6` and IDO
 * emits them swapped with the registers rotated. So this is a scheduling
 * floor, not a padding trap: writing out func_800299F0 is necessary but not
 * sufficient. Do not re-attempt the un-guard without closing those two
 * first.
 *
 * RE-MEASURED 2026-08-25, still 3/18, and the store-order half is now swept:
 * `n_aInterleave(ptr); ptr++; n_aSaveBuffer(ptr, ...); ptr++;`, the index form
 * `n_aInterleave(&ptr[0]); n_aSaveBuffer(&ptr[1], ...); return ptr + 2;` and
 * the original `ptr++` form are all BYTE-IDENTICAL, and calling the two macros
 * in reverse order costs 10/18 (it swaps the two `lui`s as the old note said).
 * So the two stores are an IDO delay-slot pick -- the ROM fills the branchless
 * pair by hoisting the SECOND command's w0 first -- and no spelling of the
 * pointer arithmetic reaches it.
 * tools/decomp/padtrap.py now classifies the folded half correctly ('swallowed'
 * -- it used to report 'clean'), and it is NOT a padding trap: 0x800299F0 is
 * the next, unnamed function of the TU (alAudioFrame starts at 0x800299F8), so
 * `void func_800299F0(void) {}` written out after this one accounts for it in
 * full and verify.py trims the pair. RE-CONFIRMED 2026-08-25 with the stub in
 * place on a scratch copy: exactly 2 words differ, and they are the two stores
 * above. This site is body-blocked only.
 *
 * And the `static` lever that closed __readVarLen and func_8002C9FC is NOT
 * available here, nor is it needed: ipascan reports this function's live-ins
 * clean, and its only ROM caller is alAudioFrame, which is still a pragma --
 * so spelling it `static` would leave uopt with no visible call site and it
 * would be deleted outright (measured on func_8002C9FC).  Two words of
 * delay-slot scheduling; permuter work, nothing structural. */
/* FACTORY: 3/18 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
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
/* FACTORY: 194/198 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
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

/* FACTORY: 105/195 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
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

/* n_alFxNew (upstream libreultra/src/libnaudio/n_reverb.c): builds the reverb
 * filter and its delay sections from a parameter table.  The table layout is
 * read straight off the listing -- word 0 section_count, word 1 length, then
 * eight words per section: input, output, fbcoef, ffcoef, gain, rsinc source,
 * rsgain source, lowpass fc -- which the three table sizes confirm
 * (D_8003F880 0x68 = 2 + 3*8, D_8003F8E8 0x88 = 2 + 4*8, and the 0x28 tables
 * are 2 + 1*8).  The six jump-table arms are the ALFxId values 1..6 and the
 * fall-through is D_8003F9E8.
 *
 * CONVERTED. This was a byte-exact 256-instruction match that could not be
 * un-guarded, because its listing carried two trailing nops INSIDE it and the
 * function is INTERIOR to the TU (n_alSynAddSeqPlayer followed it), so those
 * nops were an ex-libn_audio.a object boundary that alignment does not put
 * back -- un-guarding shrank .text from 0x7710 to 0x7700. The `c` subsegment
 * is now split at 0x2B510 into main/libn_audio_a2, exactly as prescribed, so
 * SUBALIGN(16) emits the fill and the guard is gone. .rodata is unchanged at
 * 0x630, as predicted.
 *
 * Two spellings were load-bearing and are worth keeping if this is ever
 * re-derived: `i`/`j` must be u16 (the ROM wraps them with `andi 0xFFFF`, not
 * `sll`/`sra`), the delay-line clear loop needs its OWN counter (sharing `i`
 * with the section loop forces it into a callee-saved register where the ROM
 * uses $v1 -- worth 160 words), and `d->rsgain` must be assigned BEFORE
 * `d->rsval`/`d->rsdelta` even though the ROM stores them in field order: that
 * is what puts 1.0f and 173123.4 in the ROM's $f24/$f22 rather than swapped,
 * and it was worth 24 -> 2.  `2.0f * x` (not `2 * x`) gives the ROM's `add.s`.
 *
 * The body is plain ANSI C over synthInternals.h's public types, so the port
 * takes it too. */
extern s32 D_8003F880[];
extern s32 D_8003F8E8[];
extern s32 D_8003F970[];
extern s32 D_8003F998[];
extern s32 D_8003F9C0[];
extern s32 D_8003F9E8[];

void func_8002A508(ALFx **r, ALSynConfig *c, ALHeap *hp) {
    ALFx    *f;
    ALDelay *d;
    s32     *fxParamHdl;
    u16     i;
    u16     j;
    u16     k;

    *r = f = alHeapDBAlloc(0, 0, hp, 1, sizeof(ALFx));

    switch (c->fxType) {
        case AL_FX_SMALLROOM: fxParamHdl = D_8003F880; break;
        case AL_FX_BIGROOM:   fxParamHdl = D_8003F8E8; break;
        case AL_FX_ECHO:      fxParamHdl = D_8003F970; break;
        case AL_FX_CHORUS:    fxParamHdl = D_8003F998; break;
        case AL_FX_FLANGE:    fxParamHdl = D_8003F9C0; break;
        case AL_FX_CUSTOM:    fxParamHdl = c->params; break;
        default:              fxParamHdl = D_8003F9E8; break;
    }

    j = 2;
    f->section_count = fxParamHdl[0];
    f->length = fxParamHdl[1];
    f->delay = alHeapDBAlloc(0, 0, hp, f->section_count, sizeof(ALDelay));
    f->base = alHeapDBAlloc(0, 0, hp, f->length, sizeof(s16));
    f->input = f->base;

    for (k = 0; k < f->length; k++) {
        f->base[k] = 0;
    }

    for (i = 0; i < f->section_count; i++) {
        d = &f->delay[i];
        d->input = fxParamHdl[j++];
        d->output = fxParamHdl[j++];
        d->fbcoef = fxParamHdl[j++];
        d->ffcoef = fxParamHdl[j++];
        d->gain = fxParamHdl[j++];

        if (fxParamHdl[j] != 0) {
            d->rsinc = (2.0f * ((f32) fxParamHdl[j++] / 1000)) / c->outputRate;
            d->rsgain = ((f32) fxParamHdl[j++] / 173123.404906676f) * (d->output - d->input);
            d->rsval = 1.0f;
            d->rsdelta = 0;
            d->rs = alHeapDBAlloc(0, 0, hp, 1, sizeof(ALResampler));
            d->rs->state = alHeapDBAlloc(0, 0, hp, 1, sizeof(RESAMPLE_STATE));
            d->rs->delta = 0.0f;
            d->rs->first = 1;
        } else {
            d->rs = NULL;
            j += 2;
        }

        if (fxParamHdl[j] != 0) {
            d->lp = alHeapDBAlloc(0, 0, hp, 1, sizeof(ALLowPass));
            d->lp->fstate = alHeapDBAlloc(0, 0, hp, 1, sizeof(POLEF_STATE));
            d->lp->fc = fxParamHdl[j++];
            func_8002A1C4(d->lp);
        } else {
            d->lp = NULL;
            j++;
        }
    }
}
