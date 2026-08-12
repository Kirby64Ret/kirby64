#include <ultra64.h>
#include <macros.h>
#include <PR/n_libaudio.h>

s32 func_8002C9FC(ALSeq *seq);
char __alSeqNextDelta(ALSeq *seq, s32 *pDeltaTicks);
void alSeqSetLoc(ALSeq *seq, ALSeqMarker *m);
s32 alSeqGetTicks(ALSeq *seq);
void func_8002C990(N_ALVoice *voice, s16 priority);
void n_alEvtqPostEvent(ALEventQueue *evtq, N_ALEvent *evt, ALMicroTime delta);

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

typedef struct {
    /* 0x00 */ struct KParam_s *next;
    /* 0x04 */ s32 delta;
    /* 0x08 */ s16 type;
    /* 0x0A */ s16 unity;
    /* 0x0C */ f32 pitch;
    /* 0x10 */ s16 volume;
    /* 0x12 */ u8  pan;
    /* 0x13 */ u8  fxMix;
    /* 0x14 */ s32 samples;
    /* 0x18 */ void *wave;
    /* 0x1C */ u8  unk1C;
    /* 0x1D */ u8  unk1D;
} KStartParam;

s32 _n_timeToSamples(ALMicroTime t);

/* Kirby's N_ALCSPlayer differs from the stock SDK layout; only evtq is used here. */
typedef struct {
    u8                  unk00[0x50];
    ALEventQueue        evtq;
} N_CSPlayer;

typedef struct {
    /* 0x00 */ u8  unk00;
    /* 0x01 */ u8  unk01;
    /* 0x02 */ u8  unk02;
    /* 0x03 */ u8  pad03[9];
    /* 0x0C */ s16 unk0C;
} KSound;

typedef struct {
    /* 0x00 */ KSound *unk00;
    /* 0x04 */ s16 unk04;
    /* 0x06 */ u8  unk06;
    /* 0x07 */ u8  unk07;
    /* 0x08 */ u8  unk08;
    /* 0x09 */ u8  unk09;
    /* 0x0A */ u8  unk0A;
    /* 0x0B */ u8  unk0B;
    /* 0x0C */ f32 unk0C;
    /* 0x10 */ u8  unk10;
    /* 0x11 */ u8  unk11;
    /* 0x12 */ u8  unk12;
    /* 0x13 */ u8  unk13;
    /* 0x14 */ u8  unk14;
    /* 0x15 */ u8  pad15[3];
} KChanState;

typedef struct {
    /* 0x00 */ u8 pad00[0x0C];
    /* 0x0C */ u8 unk0C;
    /* 0x0D */ u8 unk0D;
} KEnvel;

typedef struct {
    /* 0x00 */ u8 pad00[0x10];
    /* 0x10 */ struct KVoiceState *clientPrivate;
} KVoice;

typedef struct {
    /* 0x00 */ u8 pad00[0x08];
    /* 0x08 */ KSound *unk08;
    /* 0x0C */ KSound *unk0C[1];
} KSoundBank;

/* Kirby's sequence player; same fields as N_ALSeqPlayer but a different layout. */
typedef struct {
    /* 0x00 */ u8            pad00[0x18];
    /* 0x18 */ ALSeq        *target;
    /* 0x1C */ ALMicroTime   curTime;
    /* 0x20 */ u8            pad20[0x0C];
    /* 0x2C */ s32           uspt;
    /* 0x30 */ s32           nextDelta;
    /* 0x34 */ s32           state;
    /* 0x38 */ u8            pad38[0x18];
    /* 0x50 */ ALEventQueue  evtq;
    /* 0x64 */ u8            pad64[0x20];
    /* 0x84 */ ALOscStop     stopOsc;
    /* 0x88 */ ALSeqMarker  *loopStart;
    /* 0x8C */ ALSeqMarker  *loopEnd;
    /* 0x90 */ s32           loopCount;
} KSeqp;

typedef struct KVoiceState {
    /* 0x00 */ struct KVoiceState *next;
    /* 0x04 */ u8 pad04[0x10];
    /* 0x14 */ struct KVoiceState *unk14;
    /* 0x18 */ u8 pad18[0x8];
    /* 0x20 */ KEnvel *unk20;
    /* 0x24 */ ALMicroTime envEndTime;
    /* 0x28 */ u8 pad28[0x8];
    /* 0x30 */ u8 unk30;
    /* 0x31 */ u8 unk31;
    /* 0x32 */ u8 unk32;
    /* 0x33 */ u8 unk33;
    /* 0x34 */ u8 unk34;
    /* 0x35 */ u8 unk35;
    /* 0x36 */ u8 unk36;
    /* 0x37 */ u8 flags;
} KVoiceState;

typedef struct {
    /* 0x00 */ u8 pad00[0x3C];
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 pad3D[0x2B];
    /* 0x68 */ KChanState *chanState;
    /* 0x6C */ KVoiceState *unk6C;
    /* 0x70 */ KVoiceState *unk70;
    /* 0x74 */ KVoiceState *unk74;
} KSeqPlayer;

void func_8002AD90(N_ALVoice *v, void *w, f32 pitch, s16 vol, u8 pan, u8 fxmix,
                   ALMicroTime t, u8 arg7, u8 arg8) {
    KStartParam *update;

    if (v->pvoice) {
        update = (KStartParam *) __n_allocParam();

        if (fxmix < 0) {
            fxmix = -fxmix;
        }

        if (update == 0) {
            return;
        }

        update->delta = n_syn->paramSamples + ((KPVoice *) v->pvoice)->offset;
        update->next = 0;
        update->type = 0xD;

        update->unity = v->unityPitch;
        update->pan = pan;
        update->volume = vol;
        update->fxMix = fxmix;
        update->unk1C = arg7;
        update->unk1D = arg8;
        update->pitch = pitch;
        update->samples = _n_timeToSamples(t);
        update->wave = w;

        n_alEnvmixerParam((KPVoice *) v->pvoice, 3, update);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002AE74.s")

void func_8002AF60(KSeqp *seqp) {
    N_ALEvent evt;
    s32 deltaTicks;
    ALSeq *seq = seqp->target;

    if ((seqp->state != AL_PLAYING) || (seq == NULL)) {
        return;
    }

    if (!__alSeqNextDelta(seq, &deltaTicks)) {
        return;
    }

    if (seqp->loopCount) {
        if (alSeqGetTicks(seq) + deltaTicks >= seqp->loopEnd->curTicks) {
            alSeqSetLoc(seq, seqp->loopStart);

            if (seqp->loopCount != -1) {
                seqp->loopCount--;
            }
        }
    }

    evt.type = AL_SEQ_REF_EVT;
    n_alEvtqPostEvent(&seqp->evtq, &evt, deltaTicks * seqp->uspt);
}

void func_8002B03C(KSeqPlayer *seqp, KSound *sound, s32 chan) {
    seqp->chanState[chan].unk00 = sound;
    seqp->chanState[chan].unk07 = sound->unk01;
    seqp->chanState[chan].unk09 = 0x7F;
    seqp->chanState[chan].unk08 = sound->unk02;
    seqp->chanState[chan].unk04 = sound->unk0C;
    seqp->chanState[chan].unk11 = sound->unk00;
}

void func_8002B0A8(KSeqPlayer *seqp, s32 chan) {
    seqp->chanState[chan].unk06 = 0;
    seqp->chanState[chan].unk0A = 0;
    seqp->chanState[chan].unk07 = 0x40;
    seqp->chanState[chan].unk09 = 0x7F;
    seqp->chanState[chan].unk08 = 5;
    seqp->chanState[chan].unk0B = 0;
    seqp->chanState[chan].unk04 = 0xC8;
    seqp->chanState[chan].unk0C = 1.0f;
    seqp->chanState[chan].unk12 = 0;
    seqp->chanState[chan].unk13 = 0x5F;
    seqp->chanState[chan].unk14 = 0;
}

void func_8002B158(KSeqPlayer *seqp, KSoundBank *bank) {
    KSound *sound;
    s32 i;

    i = 0;
    do {
        sound = bank->unk0C[i];
        i++;
    } while (sound == NULL);
    for (i = 0; i < seqp->unk3C; i++) {
        func_8002B0A8(seqp, i);
        func_8002B03C(seqp, sound, i);
    }
    if (bank->unk08 != NULL) {
        func_8002B0A8(seqp, i);
        func_8002B03C(seqp, bank->unk08, 9);
    }
}

void func_8002B20C(void) {
}

typedef struct {
    u8                  unk00[0x24];
    s32                 unk24;
} N_CSPTime;

s32 func_8002B214(N_CSPTime *seqp, s32 arg1) {
    s32 ret = 1000;
    s32 delta = seqp->unk24 - arg1;

    if (delta >= 0) {
        return delta;
    }
    return ret;
}

s16 func_8002C9B0();
s32 func_8002D0D0();

s16 func_8002B238(KVoiceState *state, KSeqPlayer *seqp) {
    s32 vol;
    s32 unused;
    s16 chvol;
    s32 t;

    vol = (state->unk36 * state->unk33 * state->unk30) >> 6;
    chvol = func_8002C9B0(seqp);
    t = (func_8002D0D0(seqp, state->unk31) * state->unk20->unk0D * chvol) >> 14;
    vol = (u32)(vol * t) >> 15;
    return vol;
}

void func_8002B2E8(KSeqp *seqp, KVoice *voice, ALMicroTime deltaTime) {
    N_ALEvent evt;
    KVoiceState *vs = voice->clientPrivate;

    if (vs->unk34 == AL_PHASE_ATTACK) {
        ALLink *thisNode;
        ALLink *nextNode;
        N_ALEventListItem *thisItem, *nextItem;

        thisNode = seqp->evtq.allocList.next;
        while (thisNode != 0) {
            nextNode = thisNode->next;
            thisItem = (N_ALEventListItem *)thisNode;
            nextItem = (N_ALEventListItem *)nextNode;
            if (thisItem->evt.type == AL_SEQP_ENV_EVT) {
                if (thisItem->evt.msg.vol.voice == (struct N_ALVoice_s *)voice) {
                    if (nextItem) {
                        nextItem->delta += thisItem->delta;
                    }
                    alUnlink(thisNode);
                    alLink(thisNode, &seqp->evtq.freeList);
                }
            }
            thisNode = nextNode;
        }
    }

    vs->unk33 = 0;
    vs->unk34 = AL_PHASE_RELEASE;
    vs->unk30 = 0;
    vs->envEndTime = seqp->curTime + deltaTime;

    func_8002C990((N_ALVoice *)voice, 0);
    n_alSynSetVol((N_ALVoice *)voice, 0, deltaTime);
    evt.type = AL_NOTE_END_EVT;
    evt.msg.note.voice = (struct N_ALVoice_s *)voice;

    n_alEvtqPostEvent(&seqp->evtq, &evt, deltaTime);
}

u8 func_8002B40C(KSeqp *seqp, KVoice *voice, ALMicroTime killTime) {
    ALLink *thisNode;
    ALLink *nextNode;
    N_ALEventListItem *thisItem;
    ALMicroTime itemTime = 0;
    u8 needsNoteKill = TRUE;

    thisNode = seqp->evtq.allocList.next;
    while (thisNode != 0) {
        nextNode = thisNode->next;
        thisItem = (N_ALEventListItem *)thisNode;
        itemTime += thisItem->delta;

        if (thisItem->evt.type == AL_NOTE_END_EVT) {
            if (thisItem->evt.msg.note.voice == (struct N_ALVoice_s *)voice) {
                if (itemTime > killTime) {
                    if ((N_ALEventListItem *)nextNode) {
                        ((N_ALEventListItem *)nextNode)->delta += thisItem->delta;
                    }
                    alUnlink(thisNode);
                    alLink(thisNode, &seqp->evtq.freeList);
                } else {
                    needsNoteKill = FALSE;
                }
                break;
            }
        }
        thisNode = nextNode;
    }

    return needsNoteKill;
}

void func_8002B4B4(KSeqPlayer *seqp, void *arg1) {
    KVoiceState *prev = NULL;
    KVoiceState *cur = seqp->unk6C;
    KVoiceState *target = (KVoiceState *)((u8 *)arg1 - 4);

    while (cur != NULL) {
        if (cur == target) {
            if (prev != NULL) {
                prev->next = cur->next;
            } else {
                seqp->unk6C = cur->next;
            }
            if (cur == seqp->unk70) {
                seqp->unk70 = prev;
            }
            cur->next = seqp->unk74;
            seqp->unk74 = cur;
            return;
        }
        prev = cur;
        cur = cur->next;
    }
}

/* 12/30 at -O3 (13 with the single-expression `|` chain).  The residue is
 * the register-REUSE phenomenon: the ROM recycles $t6/$t7 for the byte
 * assembly where IDO keeps allocating fresh temps, and the outermost
 * `mul.s` operand order is inert to source order in both directions.
 * Swept: `|` vs `+` vs `*` scaling, all three byte orders, nested vs flat
 * or-chain, a `target` local, dropping `tevt`, inverting the if, and
 * dropping `ftempo`. */
#ifdef NON_MATCHING
void func_8002B524(N_ALEvent *event, KSeqp *seqp) {
    ALTempoEvent *tevt = &event->msg.tempo;
    s32 tempo;
    f32 ftempo;

    if (event->msg.tempo.status == AL_MIDI_Meta) {
        if (event->msg.tempo.type == AL_MIDI_META_TEMPO) {
            tempo = tevt->byte2 << 8;
            tempo |= tevt->byte1 << 16;
            tempo |= tevt->byte3;
            ftempo = (f32)tempo;
            if (seqp->target) {
                seqp->uspt = (s32)(ftempo * seqp->target->qnpt);
            } else {
                seqp->uspt = 488;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B524.s")
#endif

void func_8002B59C(KSeqPlayer *seqp, KSound *sound, s32 chan) {
    seqp->chanState[chan].unk00 = sound;
    seqp->chanState[chan].unk08 = sound->unk02;
    seqp->chanState[chan].unk04 = sound->unk0C;
    seqp->chanState[chan].unk11 = sound->unk00;
}

u8 func_8002B5E8(KVoiceState *state, KSeqPlayer *seqp) {
    s32 vol = seqp->chanState[state->unk31].unk07 + state->unk20->unk0C - 0x40;

    if (vol <= 0) {
        vol = 0;
    }
    if (vol >= 0x7F) {
        vol = 0x7F;
    }
    return vol;
}

KVoiceState *func_8002B638(KSeqPlayer *seqp, u8 arg1, u8 arg2) {
    KVoiceState *state;

    for (state = seqp->unk6C; state != NULL; state = state->next) {
        if ((state->unk32 == arg1) && (state->unk31 == arg2) &&
            (state->unk35 != 3) && (state->unk35 != 4)) {
            return state;
        }
    }
    return NULL;
}

KVoiceState *func_8002B6A8(KSeqPlayer *seqp, u8 arg1, u8 arg2, u8 arg3) {
    KVoiceState *state = seqp->unk74;

    if (state != NULL) {
        seqp->unk74 = state->next;
        state->next = NULL;
        if (seqp->unk6C == NULL) {
            seqp->unk6C = state;
        } else {
            seqp->unk70->next = state;
        }
        seqp->unk70 = state;
        state->unk31 = arg3;
        state->unk32 = arg1;
        state->unk33 = arg2;
        state->unk14 = state;
    }
    return state;
}

/* Upstream __lookupSoundQuick. Indexing soundArray inline at both sites is
 * load-bearing: an `ALSound *sound` local swaps $a2/$a3 (9 diffs). */
ALSound *func_8002B70C(KSeqPlayer *seqp, u8 key, u8 vel, u8 chan) {
    ALInstrument *inst = (ALInstrument *) seqp->chanState[chan].unk00;
    s32 l = 1;
    s32 r = inst->soundCount;
    s32 i;
    ALKeyMap *keymap;

    while (r >= l) {
        i = (l + r) / 2;

        keymap = inst->soundArray[i - 1]->keyMap;

        if ((key >= keymap->keyMin) && (key <= keymap->keyMax) &&
            (vel >= keymap->velocityMin) && (vel <= keymap->velocityMax)) {
            return inst->soundArray[i - 1];
        } else if ((key < keymap->keyMin) ||
                   ((vel < keymap->velocityMin) && (key <= keymap->keyMax))) {
            r = i - 1;
        } else {
            l = i + 1;
        }
    }

    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C044.s")

void func_8002C68C(KSeqp *seqp, KVoiceState *vs) {
    N_ALEventListItem *thisNode, *nextNode;
    s16 evtType;

    thisNode = (N_ALEventListItem *)seqp->evtq.allocList.next;
    while (thisNode) {
        nextNode = (N_ALEventListItem *)thisNode->node.next;
        evtType = thisNode->evt.type;
        if (evtType == AL_TREM_OSC_EVT || evtType == AL_VIB_OSC_EVT) {
            if (thisNode->evt.msg.osc.vs == (struct N_ALVoiceState_s *)vs) {
                (*seqp->stopOsc)(thisNode->evt.msg.osc.oscState);
                alUnlink((ALLink *)thisNode);
                if (nextNode) {
                    nextNode->delta += thisNode->delta;
                }
                alLink((ALLink *)thisNode, &seqp->evtq.freeList);
                if (evtType == AL_TREM_OSC_EVT) {
                    vs->flags = vs->flags & 0xFE;
                } else {
                    vs->flags = vs->flags & 0xFD;
                }
                if (!vs->flags) {
                    return;
                }
            }
        }

        thisNode = nextNode;
    }
}

void func_8002C790(KSeqPlayer *seqp) {
    s32 i;

    for (i = 0; i < seqp->unk3C; i++) {
        seqp->chanState[i].unk00 = NULL;
        seqp->chanState[i].unk10 = 0;
        func_8002B0A8(seqp, i);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C80C.s")

#ifdef NON_MATCHING
/* Correct as C, and verify.py calls it MATCH -- but it is a PADDING TRAP and
   must stay a pragma. Its listing carries 3 nops after `.size`, and it is the
   LAST function in this TU, so nothing after it forces the alignment back:
   converting it leaves libn_audio_2.o 16 bytes short and shifts every segment
   after it. padtrap.py classifies the tail 'benign' because the rule assumes a
   following function in the same section; measured twice against
   check_tu_size.py, which is the tool that sees the linked result. */
void func_8002C990(N_ALVoice *voice, s16 priority) {
    voice->priority = priority;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C990.s")
#endif

typedef struct {
    u8                  unk00[0x3A];
    s16                 unk3A;
    u8                  unk3C[0x3C];
    u8                  unk78;
} N_CSPVol;

s16 func_8002C9B0(N_CSPVol *seqp) {
    return (seqp->unk3A * seqp->unk78) >> 7;
}

void alSeqSetLoc(ALSeq *seq, ALSeqMarker *m) {
    seq->curPtr = m->curPtr;
    seq->lastStatus = m->lastStatus;
    seq->lastTicks = m->lastTicks;
}

s32 alSeqGetTicks(ALSeq *seq) {
    return seq->lastTicks;
}

void func_8002C9F4(void) {
}

/* Upstream __readVarLen, 4/21 at -O3.  Every instruction is right; the ROM's
 * loop RECYCLES $t6/$t7 (dead since before the loop) for the two `andi`s where
 * IDO carries on to $t0/$t1 -- a free-list ordering difference in the register
 * allocator, not a source shape.  17 variants swept, all 4 or worse: operand
 * order, `|` vs `+`, `*128` vs `<<7`, split shift/add, a `hi` local, u32/u8
 * types, a separate loop variable, while(1)+break, if/else, goto-loop, nested
 * block, pointer local, explicit increments, early return, and a volatile
 * pointer read. */
#ifdef NON_MATCHING
s32 func_8002C9FC(ALSeq *seq) {
    s32 value;
    s32 c;

    c = *seq->curPtr++;
    value = c;
    if (c & 0x80) {
        value &= 0x7f;
        do {
            c = *seq->curPtr++;
            value = (value << 7) + (c & 0x7f);
        } while (c & 0x80);
    }
    return value;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C9FC.s")
#endif
/* IPA-BLOCKED, and ipascan cannot see this shape: the ROM moves `seq` and
 * `event` into $a2/$a3 and keeps them live ACROSS the jal to func_8002C9FC,
 * so that callee must preserve two caller-saved registers -- a ujoin custom
 * convention.  o32 has to home them on the stack instead (97/100). */
#ifdef NON_MATCHING
void alSeqNextEvent(ALSeq *seq, ALEvent *event) {
    u8 status;
    s32 deltaTicks;

    deltaTicks = func_8002C9FC(seq);
    seq->lastTicks += deltaTicks;
    status = *seq->curPtr++;

    if (status == AL_MIDI_Meta) {
        u8 type = *seq->curPtr++;

        if (type == AL_MIDI_META_TEMPO) {
            event->type = AL_TEMPO_EVT;
            event->msg.tempo.ticks = deltaTicks;
            event->msg.tempo.status = status;
            event->msg.tempo.type = type;
            event->msg.tempo.len = *seq->curPtr++;
            event->msg.tempo.byte1 = *seq->curPtr++;
            event->msg.tempo.byte2 = *seq->curPtr++;
            event->msg.tempo.byte3 = *seq->curPtr++;
        } else if (type == AL_MIDI_META_EOT) {
            event->type = AL_SEQ_END_EVT;
            event->msg.end.ticks = deltaTicks;
            event->msg.end.status = status;
            event->msg.end.type = type;
            event->msg.end.len = *seq->curPtr++;
        }

        seq->lastStatus = 0;
    } else {
        event->type = AL_SEQ_MIDI_EVT;
        event->msg.midi.ticks = deltaTicks;
        if (status & 0x80) {
            event->msg.midi.status = status;
            event->msg.midi.byte1 = *seq->curPtr++;
            seq->lastStatus = status;
        } else {
            event->msg.midi.status = seq->lastStatus;
            event->msg.midi.byte1 = status;
        }

        if (((event->msg.midi.status & 0xf0) != AL_MIDI_ProgramChange) &&
            ((event->msg.midi.status & 0xf0) != AL_MIDI_ChannelPressure)) {
            event->msg.midi.byte2 = *seq->curPtr++;
        } else {
            event->msg.midi.byte2 = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/alSeqNextEvent.s")
#endif
void alSeqNewMarker(ALSeq *seq, ALSeqMarker *m, u32 ticks) {
    ALEvent evt;
    u8 *savePtr, *lastPtr;
    s32 saveTicks, lastTicks;
    s16 saveStatus, lastStatus;

    if (ticks == 0) {
        m->curPtr = seq->trackStart;
        m->lastStatus = 0;
        m->lastTicks = 0;
        m->curTicks = 0;
        return;
    } else {
        savePtr = seq->curPtr;
        saveStatus = seq->lastStatus;
        saveTicks = seq->lastTicks;

        seq->curPtr = seq->trackStart;
        seq->lastStatus = 0;
        seq->lastTicks = 0;

        do {
            lastPtr = seq->curPtr;
            lastStatus = seq->lastStatus;
            lastTicks = seq->lastTicks;

            alSeqNextEvent(seq, &evt);

            if (evt.type == AL_SEQ_END_EVT) {
                lastPtr = seq->curPtr;
                lastStatus = seq->lastStatus;
                lastTicks = seq->lastTicks;
                break;
            }

        } while (seq->lastTicks < ticks);

        m->curPtr = lastPtr;
        m->lastStatus = lastStatus;
        m->lastTicks = lastTicks;
        m->curTicks = seq->lastTicks;

        seq->curPtr = savePtr;
        seq->lastStatus = saveStatus;
        seq->lastTicks = saveTicks;
    }
}

/* Needs IDO's interprocedural register allocation (-O3/ujoin): the ROM keeps
 * seq/pDeltaTicks/savedPtr in $a2/$t0/$a3 across the call to func_8002C9FC.
 * Its listing also carries two unnamed empty functions (8002CD44/8002CD4C). */
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/__alSeqNextDelta.s")

/* This file ends here because the n_audio functions that follow were each their
 * own object in libn_audio.a and so are 16-byte aligned; they now live in
 * src/main/libn_audio_2b.c .. libn_audio_2f.c, one C file per object, and
 * kirby.ld's SUBALIGN(16) supplies the fill between them.  See libn_audio_2.h. */
void alCSPSetSeq(ALCSPlayer *seqp, ALCSeq *seq) {
    N_ALEvent evt;

    evt.type = AL_SEQP_SEQ_EVT;
    evt.msg.spseq.seq = seq;

    n_alEvtqPostEvent(&((N_CSPlayer *) seqp)->evtq, &evt, 0);
}
