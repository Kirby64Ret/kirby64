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

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002AD90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002AE74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002AF60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B03C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B0A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B158.s")

void func_8002B20C(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B238.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B2E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B40C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B4B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B59C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B5E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B6A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B70C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002B810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C68C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C80C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002C9B0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002D180.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/libn_audio_2/func_8002D1B0.s")

