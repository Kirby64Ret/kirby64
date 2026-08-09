#include <ultra64.h>
#include <macros.h>
#include <PR/n_libaudio.h>

s32 func_8002C9FC(ALSeq *seq);
void n_alEvtqPostEvent(ALEventQueue *evtq, N_ALEvent *evt, ALMicroTime delta);

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

typedef struct KVoiceState {
    /* 0x00 */ struct KVoiceState *next;
    /* 0x04 */ u8 pad04[0x10];
    /* 0x14 */ struct KVoiceState *unk14;
    /* 0x18 */ u8 pad18[0x8];
    /* 0x20 */ KEnvel *unk20;
    /* 0x24 */ u8 pad24[0xC];
    /* 0x30 */ u8 unk30;
    /* 0x31 */ u8 unk31;
    /* 0x32 */ u8 unk32;
    /* 0x33 */ u8 unk33;
    /* 0x34 */ u8 unk34;
    /* 0x35 */ u8 unk35;
    /* 0x36 */ u8 unk36;
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

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002AD90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002AE74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002AF60.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B158.s")

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

#ifdef NON_MATCHING
/* 3 diffs: the (D0D0 * unk0D * chvol) >> 14 value must land in $a0 and be
 * reused by the sra; IDO takes two temps ($t4/$t5) and reverses the final
 * multu operands. Frame size and both spill slots are exact in this shape --
 * do not reorder the locals (vol, unused, chvol) or the final multiply. */
s16 func_8002C9B0();
s32 func_8002D0D0();

s16 func_8002B238(KVoiceState *state, KSeqPlayer *seqp) {
    s32 vol;
    s32 unused;
    s16 chvol;

    vol = (state->unk36 * state->unk33 * state->unk30) >> 6;
    chvol = func_8002C9B0(seqp);
    vol = (u32)(((func_8002D0D0(seqp, state->unk31) * state->unk20->unk0D * chvol) >> 14) * vol) >> 15;
    return vol;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B238.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B2E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B40C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B524.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B70C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C68C.s")

void func_8002C790(KSeqPlayer *seqp) {
    s32 i;

    for (i = 0; i < seqp->unk3C; i++) {
        seqp->chanState[i].unk00 = NULL;
        seqp->chanState[i].unk10 = 0;
        func_8002B0A8(seqp, i);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C80C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C990.s")

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

#ifdef MIPS_TO_C
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

#ifdef MIPS_TO_C
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

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/__alSeqNextDelta.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/alCSPSetSeq.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/n_alSynSetPitch.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002CE20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002CEC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/alCSPSetVol.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002CF40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002CFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/n_alSynDelete.s")

void alCSPPlay(ALCSPlayer *seqp) {
    N_ALEvent evt;

    evt.type = AL_SEQP_PLAY_EVT;

    n_alEvtqPostEvent(&((N_CSPlayer *) seqp)->evtq, &evt, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002D0D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002D120.s")

void func_8002D180(ALCSPlayer *seqp) {
    N_ALEvent evt;

    evt.type = AL_SEQP_STOPPING_EVT;

    n_alEvtqPostEvent(&((N_CSPlayer *) seqp)->evtq, &evt, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002D1B0.s")

