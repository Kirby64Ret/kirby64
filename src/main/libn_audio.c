#include <ultra64.h>
#include <macros.h>
#include <PR/n_libaudio.h>
#include "synthInternals.h"
#include <PR/abi.h>

extern N_ALGlobals *n_alGlobals;
extern N_ALSynth *n_syn;
/* D_800417A0 = 1e+06f : now emitted by this TU */
/* D_800414C8 = 1.99996f : now emitted by this TU */

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

/* 2/28 diffs at -O3, and only the one-slot temp-register rotation: the ROM puts
 * note->owner in $t7 where IDO picks $t6, and $t6 is unused in the ROM -- one
 * source temp was created and eliminated before the loop.  36 variants swept
 * across four passes, ALL 2: for/while/do-while, owner and unk28 locals of both
 * struct types, comparison operand order, ternary and `> 0x7F` clamp forms, a
 * u8/s32 local copy of the parameter, the inlined-helper parameter-copy shape at
 * either or both call sites, chained store, K&R definition, s32 return, a third
 * parameter, dead locals leading and trailing, volatile on the owner and next
 * loads, three if/else line collapses, and a blank line before the loop. */
#ifdef NON_MATCHING
void func_80023384(KChan *chan, u8 arg1) {
    KChan *note;
    KChan *next;

    if (arg1 >= 0x80) {
        arg1 = 0x7F;
    }
    chan->unk30 = arg1;
    if (chan->unk28 != NULL) {
        chan->unk28->unk3C = arg1;
    }
    note = D_80097920;
    while (note != NULL) {
        next = note->next;
        if (note->owner == chan) {
            note->unk30 = arg1;
            if (note->unk28 != NULL) {
                note->unk28->unk3C = arg1;
            }
        }
        note = next;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023384.s")
#endif

/* Twin of func_80023384; same 2/28 register rotation, same swept floor. */
#ifdef NON_MATCHING
void func_800233F4(KChan *chan, u8 arg1) {
    KChan *note;
    KChan *next;

    if (arg1 >= 0x80) {
        arg1 = 0x7F;
    }
    chan->unk2F = arg1;
    if (chan->unk28 != NULL) {
        chan->unk28->unk3A = arg1;
    }
    note = D_80097920;
    while (note != NULL) {
        next = note->next;
        if (note->owner == chan) {
            note->unk2F = arg1;
            if (note->unk28 != NULL) {
                note->unk28->unk3A = arg1;
            }
        }
        note = next;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_800233F4.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80023884.s")


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
#ifdef MIPS_TO_C
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
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_8002581C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alCSeqNextEvent.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alCSeqNew.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/alCSeqNewMarker.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio/func_80026460.s")

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

#ifdef NON_MATCHING
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
#ifdef NON_MATCHING
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

#ifdef NON_MATCHING
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