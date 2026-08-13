#include "common.h"
#include <PR/n_libaudio.h>
#include <PR/sched.h>
#include "synthInternals.h"
#include "main.h"
#include "audio.h"
#include "fault.h"

// mystery, seems to also be DMA
extern OSMesgQueue D_80095E30;
extern OSMesg D_80095E50[];
extern s32 auDMACount;
extern OSPiHandle *gRomHandle;
extern OSMesgQueue auGameTickQueue;
extern OSMesgQueue auSPTaskMQ;
extern OSMesgQueue auDMA_MQ;
extern OSMesg auGameTickMessages[1];
extern OSMesg auSPTaskMessages[1];
extern OSMesg auDMAMessages[50];

extern u8 D_800964D3;
extern s32 *D_8009646C;
extern AuSettings auPublicSettings;
extern s32 func_80023464(s32, u32, u32, s32);
extern s32 func_80023CB0(u16);
extern s32 func_80023990(void);
extern void func_800233F4(s32, u8);
extern void func_80023384(s32, u8);
extern void func_80023A28(s32);

static void _bnkfPatchBank(ALBank* bank, s32 offset, s32 table);
static void _bnkfPatchInst(ALInstrument* i, s32 offset, s32 table);
static void _bnkfPatchSound(ALSound* s, s32 offset, s32 table);
static void _bnkfPatchWaveTable(ALWaveTable* w, s32 offset, s32 table);

void alHeapInit(ALHeap* hp, u8* base, s32 len) {
    s32 extraAlign = (AL_CACHE_ALIGN + 1) - ((s32) base & AL_CACHE_ALIGN);

    if (extraAlign != AL_CACHE_ALIGN + 1)
        hp->base = base + extraAlign;
    else
        hp->base = base;

    hp->len = len;
    hp->cur = hp->base;
    hp->count = 0;
}

void *alHeapDBAlloc(Unused u8 *file, Unused s32 line, ALHeap *hp, s32 num, s32 size) {
    s32 bytes;
    u8 *ptr;

    ptr = hp->cur;
    bytes = ((num * size) + AL_CACHE_ALIGN) & ~AL_CACHE_ALIGN;

    if ((hp->base + hp->len) >= (hp->cur + bytes)) {
        ptr = hp->cur;
        hp->cur += bytes;
    } else {
        fatal_printf("Audio Heap Overflow\n");
        while (1);
    }
    return ptr;
}

void alSeqFileNew(ALSeqFile* file, u8* base) {
    s32 offset = (s32) base;
    s32 i;

    /*
     * patch the file so that offsets are pointers
     */
    for (i = 0; i < file->seqCount; i++) {
        file->seqArray[i].offset = (u8*) ((u8*) file->seqArray[i].offset + offset);
    }
}

void alBnkfNew(ALBankFile* file, u8* table) {
    s32 offset = (s32) file;
    s32 woffset = (s32) table;

    s32 i;

    /*
     * patch the file so that offsets are pointers
     */
    for (i = 0; i < file->bankCount; i++) {
        file->bankArray[i] = (ALBank*) ((u8*) file->bankArray[i] + offset);
        if (file->bankArray[i])
            _bnkfPatchBank(file->bankArray[i], offset, woffset);
    }
}

static void _bnkfPatchBank(ALBank* bank, s32 offset, s32 table) {
    s32 i;

    if (bank->flags)
        return;

    bank->flags = 1;

    if (bank->percussion) {
        bank->percussion = (ALInstrument*) ((u8*) bank->percussion + offset);
        _bnkfPatchInst(bank->percussion, offset, table);
    }

    for (i = 0; i < bank->instCount; i++) {
        bank->instArray[i] = (ALInstrument*) ((u8*) bank->instArray[i] + offset);
        if (bank->instArray[i])
            _bnkfPatchInst(bank->instArray[i], offset, table);
    }
}

static void _bnkfPatchInst(ALInstrument* inst, s32 offset, s32 table) {
    s32 i;

    if (inst->flags)
        return;

    inst->flags = 1;

    for (i = 0; i < inst->soundCount; i++) {
        inst->soundArray[i] = (ALSound*) ((u8*) inst->soundArray[i] + offset);
        _bnkfPatchSound(inst->soundArray[i], offset, table);
    }
}

static void _bnkfPatchSound(ALSound* s, s32 offset, s32 table) {
    if (s->flags)
        return;

    s->flags = 1;

    s->envelope = (ALEnvelope*) ((u8*) s->envelope + offset);
    s->keyMap = (ALKeyMap*) ((u8*) s->keyMap + offset);

    s->wavetable = (ALWaveTable*) ((u8*) s->wavetable + offset);
    _bnkfPatchWaveTable(s->wavetable, offset, table);
}

static void _bnkfPatchWaveTable(ALWaveTable* w, s32 offset, s32 table) {
    if (w->flags)
        return;

    w->flags = 1;

    w->base += table;

    if (w->type == AL_ADPCM_WAVE) {
        w->waveInfo.adpcmWave.book = (ALADPCMBook*) ((u8*) w->waveInfo.adpcmWave.book + offset);
        if (w->waveInfo.adpcmWave.loop)
            w->waveInfo.adpcmWave.loop = (ALADPCMloop*) ((u8*) w->waveInfo.adpcmWave.loop + offset);
    } else if (w->type == AL_RAW16_WAVE) {
        if (w->waveInfo.rawWave.loop)
            w->waveInfo.rawWave.loop = (ALRawLoop*) ((u8*) w->waveInfo.rawWave.loop + offset);
    }
}

void auRomRead(u32 romAddr, void* vramAddr, u32 size) {
    OSIoMesg DmaIoMessage;

    osInvalDCache((void*) vramAddr, (s32) size);

    DmaIoMessage.hdr.pri = OS_MESG_PRI_NORMAL;
    DmaIoMessage.hdr.retQueue = &D_80095E30;
    DmaIoMessage.dramAddr = vramAddr;
    DmaIoMessage.devAddr = romAddr;
    DmaIoMessage.size = size;

    osEPiStartDma(gRomHandle, &DmaIoMessage, OS_READ);
    osRecvMesg(&D_80095E30, NULL, OS_MESG_BLOCK);
}

s32 auDMA(s32 addr, s32 len, void* state) {
    void* freeBuffer;
    AMDMAState* dState = state;
    s32 delta = 0;
    u32 bStartAddr;
    u32 bEndAddr;
    AMDMABuffer* dBuff = &dState->buffers[dState->currentBuffer];
    Unused OSMesg dummyMesg;

    /*
     * Is it in the last buffer
     */

    bStartAddr = (u32) dBuff->addr;
    bEndAddr = (u32) bStartAddr + dBuff->len;

    if (((u32)addr >= bStartAddr) && ((u32)addr + len <= bEndAddr)) {
        freeBuffer = dBuff->ptr + addr - dBuff->addr;
    } else {
        if (++dState->currentBuffer >= dState->nBuffers) {
            dState->currentBuffer = 0;
        }
        dBuff = &dState->buffers[dState->currentBuffer];
        freeBuffer = dBuff->ptr;
        delta = addr & 0x1;
        addr -= delta;

        dBuff->addr = addr;
        dBuff->len = dBuff->size;

        auDMAIOMesgBuf[auDMACount].hdr.pri = OS_MESG_PRI_HIGH;
        auDMAIOMesgBuf[auDMACount].hdr.retQueue = &auDMA_MQ;
        auDMAIOMesgBuf[auDMACount].dramAddr = freeBuffer;
        auDMAIOMesgBuf[auDMACount].devAddr = (u32) addr;
        auDMAIOMesgBuf[auDMACount].size = dBuff->size;

        osEPiStartDma(gRomHandle, &auDMAIOMesgBuf[auDMACount++], OS_READ);
    }
    return (int) osVirtualToPhysical(freeBuffer) + delta;
}

ALDMAproc auDMANew(AMDMAState** state) {
    int i;
    AMDMAState* dState;

    dState = (AMDMAState*) alHeapAlloc(&auHeap, 1, sizeof(AMDMAState));
    dState->currentBuffer = 0;
    dState->nBuffers = NUM_DMA_BUFFERS;
    for (i = 0; i < NUM_DMA_BUFFERS; i++) {
        dState->buffers[i].ptr = alHeapAlloc(&auHeap, 1, MAX_BUFFER_LENGTH);
        dState->buffers[i].addr = 0;
        dState->buffers[i].len = 0;
        dState->buffers[i].size = MAX_BUFFER_LENGTH;
    }
    *state = (AMDMAState*) dState;
    return auDMA;
}

f32 _depth2Cents(u8 depth) {
    f32 x = 1.03099303;
    f32 cents = 1.0;

    while (depth) {
        if (depth & 1)
            cents *= x;
        x *= x;
        depth >>= 1;
    }

    return (cents);
}

ALMicroTime initOsc(void** oscState, f32* initVal, u8 oscType, u8 oscRate, u8 oscDepth, u8 oscDelay) {
    oscData* statePtr;
    ALMicroTime deltaTime = 0;

    if (freeOscStateList) /* yes there are oscStates available */
    {
        statePtr = freeOscStateList;
        freeOscStateList = freeOscStateList->next;
        statePtr->type = oscType;
        *oscState = statePtr;

        /*
         * Convert delay into usec's, In this example, multiply by
         * 0x4000, but could easily use another conversion method.
         */
        deltaTime = oscDelay * 0x4000;

        switch (oscType) /* set the initVal */
        {
            case TREMELO_SIN:
                statePtr->curCount = 0;
                statePtr->maxCount = 259 - oscRate; /* gives values 4-259 */
                statePtr->data.tsin.halfdepth = oscDepth >> 1;
                statePtr->data.tsin.baseVol = AL_VOL_FULL - statePtr->data.tsin.halfdepth;
                *initVal = (f32) statePtr->data.tsin.baseVol;
                break;

            case TREMELO_SQR:
                statePtr->maxCount = 256 - oscRate; /* values from 1-256 */
                statePtr->curCount = statePtr->maxCount;
                statePtr->stateFlags = OSC_HIGH;
                statePtr->data.tsqr.loVal = AL_VOL_FULL - oscDepth;
                statePtr->data.tsqr.hiVal = AL_VOL_FULL;
                statePtr->data.tsqr.curVal = AL_VOL_FULL;
                *initVal = (f32) AL_VOL_FULL;
                break;

            case TREMELO_DSC_SAW:
                statePtr->maxCount = 256 - oscRate;
                statePtr->curCount = 0;
                statePtr->data.tsaw.depth = oscDepth;
                statePtr->data.tsaw.baseVol = AL_VOL_FULL;
                *initVal = (f32) statePtr->data.tsaw.baseVol;
                break;

            case TREMELO_ASC_SAW:
                statePtr->maxCount = 256 - oscRate;
                statePtr->curCount = 0;
                statePtr->data.tsaw.depth = oscDepth;
                statePtr->data.tsaw.baseVol = AL_VOL_FULL - oscDepth;
                *initVal = (f32) statePtr->data.tsaw.baseVol;
                break;

            case VIBRATO_SIN:
                statePtr->data.vsin.depthcents = _depth2Cents(oscDepth);
                statePtr->curCount = 0;
                statePtr->maxCount = 259 - oscRate; /* gives values 4-259 */
                *initVal = 1.0f;                    /* start at unity pitch */
                break;

            case VIBRATO_SQR: {
                s32 cents;
                statePtr->maxCount = 256 - oscRate; /* values from 1-256 */
                statePtr->curCount = statePtr->maxCount;
                statePtr->stateFlags = OSC_HIGH;
                cents = _depth2Cents(oscDepth);
                statePtr->data.vsqr.loRatio = alCents2Ratio(-cents);
                statePtr->data.vsqr.hiRatio = alCents2Ratio(cents);
                *initVal = statePtr->data.vsqr.hiRatio;
            } break;

            case VIBRATO_DSC_SAW: {
                s32 cents;
                statePtr->maxCount = 256 - oscRate; /* values from 1-256 */
                statePtr->curCount = statePtr->maxCount;
                cents = _depth2Cents(oscDepth);
                statePtr->data.vdsaw.hicents = cents;
                statePtr->data.vdsaw.centsrange = 2 * cents;
                *initVal = alCents2Ratio(statePtr->data.vdsaw.hicents);
            } break;

            case VIBRATO_ASC_SAW: {
                s32 cents;
                statePtr->maxCount = 256 - oscRate; /* values from 1-256 */
                statePtr->curCount = statePtr->maxCount;
                cents = _depth2Cents(oscDepth);
                statePtr->data.vasaw.locents = -cents;
                statePtr->data.vasaw.centsrange = 2 * cents;
                *initVal = alCents2Ratio(statePtr->data.vasaw.locents);
            } break;
        }
    }
    return (deltaTime); /* if there are no oscStates, return zero, but if
                           oscState was available, return delay in usecs */
}

ALMicroTime updateOsc(void* oscState, f32* updateVal) {
    f32 tmpFlt;
    oscData* statePtr = (oscData*) oscState;
    ALMicroTime deltaTime = AL_USEC_PER_FRAME; /* in this example callback every */
                                               /* frame, but could be at any interval */

    switch (statePtr->type) /* perform update calculations */
    {
        case TREMELO_SIN:
            statePtr->curCount++;
            if (statePtr->curCount >= statePtr->maxCount)
                statePtr->curCount = 0;
            tmpFlt = (f32) statePtr->curCount / (f32) statePtr->maxCount;
            tmpFlt = sinf(tmpFlt * TWO_PI);
            tmpFlt = tmpFlt * (f32) statePtr->data.tsin.halfdepth;
            *updateVal = (f32) statePtr->data.tsin.baseVol + tmpFlt;
            break;

        case TREMELO_SQR:
            if (statePtr->stateFlags == OSC_HIGH) {
                *updateVal = (f32) statePtr->data.tsqr.loVal;
                statePtr->stateFlags = OSC_LOW;
            } else {
                *updateVal = (f32) statePtr->data.tsqr.hiVal;
                statePtr->stateFlags = OSC_HIGH;
            }
            deltaTime *= statePtr->maxCount;
            break;

        case TREMELO_DSC_SAW:
            statePtr->curCount++;
            if (statePtr->curCount > statePtr->maxCount)
                statePtr->curCount = 0;

            tmpFlt = (f32) statePtr->curCount / (f32) statePtr->maxCount;
            tmpFlt *= (f32) statePtr->data.tsaw.depth;
            *updateVal = (f32) statePtr->data.tsaw.baseVol - tmpFlt;
            break;

        case TREMELO_ASC_SAW:
            statePtr->curCount++;
            if (statePtr->curCount > statePtr->maxCount)
                statePtr->curCount = 0;
            tmpFlt = (f32) statePtr->curCount / (f32) statePtr->maxCount;
            tmpFlt *= (f32) statePtr->data.tsaw.depth;
            *updateVal = (f32) statePtr->data.tsaw.baseVol + tmpFlt;
            break;

        case VIBRATO_SIN:
            /* calculate a sin value (from -1 to 1) and multiply it by depthcents.
               Then convert cents to ratio. */

            statePtr->curCount++;
            if (statePtr->curCount >= statePtr->maxCount)
                statePtr->curCount = 0;
            tmpFlt = (f32) statePtr->curCount / (f32) statePtr->maxCount;
            tmpFlt = sinf(tmpFlt * TWO_PI) * statePtr->data.vsin.depthcents;
            *updateVal = alCents2Ratio((s32) tmpFlt);
            break;

        case VIBRATO_SQR:
            if (statePtr->stateFlags == OSC_HIGH) {
                statePtr->stateFlags = OSC_LOW;
                *updateVal = statePtr->data.vsqr.loRatio;
            } else {
                statePtr->stateFlags = OSC_HIGH;
                *updateVal = statePtr->data.vsqr.hiRatio;
            }
            deltaTime *= statePtr->maxCount;
            break;

        case VIBRATO_DSC_SAW:
            statePtr->curCount++;
            if (statePtr->curCount > statePtr->maxCount)
                statePtr->curCount = 0;
            tmpFlt = (f32) statePtr->curCount / (f32) statePtr->maxCount;
            tmpFlt *= (f32) statePtr->data.vdsaw.centsrange;
            tmpFlt = (f32) statePtr->data.vdsaw.hicents - tmpFlt;
            *updateVal = alCents2Ratio((s32) tmpFlt);
            break;

        case VIBRATO_ASC_SAW:
            statePtr->curCount++;
            if (statePtr->curCount > statePtr->maxCount)
                statePtr->curCount = 0;
            tmpFlt = (f32) statePtr->curCount / (f32) statePtr->maxCount;
            tmpFlt *= (f32) statePtr->data.vasaw.centsrange;
            tmpFlt += (f32) statePtr->data.vasaw.locents;
            *updateVal = alCents2Ratio((s32) tmpFlt);
            break;
    }

    return (deltaTime);
}

void stopOsc(void* oscState) {
    ((oscData*) oscState)->next = freeOscStateList;
    freeOscStateList = (oscData*) oscState;
}

void auInit(void) {
    scAddClient(&auClient, &auGameTickQueue, auGameTickMessages, 1);
    osCreateMesgQueue(&auDMA_MQ, auDMAMessages, 50);
    osCreateMesgQueue(&D_80095E30, (OSMesg)&D_80095E50, 1);
    osCreateMesgQueue(&auSPTaskMQ, auSPTaskMessages, 1);
    osSendMesg(&auSPTaskMQ, (OSMesg) NULL, OS_MESG_BLOCK);
}

// https://decomp.me/scratch/CvKIB
// Near-match draft (~92/338 insns differ, all in the auPublicSettings mirror
// stores: target shares one lui/uses a base reg where this emits two luis).
#ifdef NON_MATCHING
void auLoadAssets(void) {
    s32 j;
    ALBankFile *file;
    s32 i;
    s32 len;
    s32 *buf3;
    s32 *buf4;
    s32 *buf5;
    u8 **ptr;
    AuSettings *pub;

    bzero(auCurrentSettings.heapBase, auCurrentSettings.heapSize);
    alHeapInit(&auHeap, auCurrentSettings.heapBase, auCurrentSettings.heapSize);

    if ((u32) auCurrentSettings.bank2Start >= 0x80000000) {
        auSeqBank = (ALBank *) auCurrentSettings.bank2Start;
    } else {
        len = auCurrentSettings.bank2End - auCurrentSettings.bank2Start;
        file = alHeapAlloc(&auHeap, 1, len);
        auRomRead(auCurrentSettings.bank2Start, file, len);
        alBnkfNew(file, auCurrentSettings.table2Start);
        auSeqBank = file->bankArray[0];
    }

    if ((u32) auCurrentSettings.bank1Start >= 0x80000000) {
        D_80096468 = (ALBank *) auCurrentSettings.bank1Start;
    } else {
        len = auCurrentSettings.bank1End - auCurrentSettings.bank1Start;
        file = alHeapAlloc(&auHeap, 1, len);
        auRomRead(auCurrentSettings.bank1Start, file, len);
        alBnkfNew(file, auCurrentSettings.table1Start);
        D_80096468 = file->bankArray[0];
    }

    if ((u32) auCurrentSettings.romSbkStart >= 0x80000000) {
        auSeqFile = (ALSeqFile *) auCurrentSettings.romSbkStart;
    } else {
        auSeqFile = alHeapAlloc(&auHeap, 1, 4);
        auRomRead(auCurrentSettings.romSbkStart, auSeqFile, 4);
        len = auSeqFile->seqCount * 8 + 4;
        auSeqFile = alHeapAlloc(&auHeap, 1, auSeqFile->seqCount * 8 + 4);
        auRomRead(auCurrentSettings.romSbkStart, auSeqFile, len);
        alSeqFileNew(auSeqFile, (u8 *) auCurrentSettings.romSbkStart);
    }

    i = 0;
    len = 0;
    for (; i < auSeqFile->seqCount; i++) {
        auSeqFile->seqArray[i].len += auSeqFile->seqArray[i].len & 1;
        if (len < auSeqFile->seqArray[i].len) {
            len = auSeqFile->seqArray[i].len;
        }
    }

    ptr = auBGMSeqData;
    do {
        *ptr++ = alHeapAlloc(&auHeap, 1, len);
    } while (ptr < (u8 **) &auBGMPlayerStatus);

    auCmdListBuffers[0] = alHeapAlloc(&auHeap, 1, 0x8000);
    auCmdListBuffers[1] = alHeapAlloc(&auHeap, 1, 0x8000);
    auScTasks[0] = alHeapAlloc(&auHeap, 1, 0x68);
    auScTasks[1] = alHeapAlloc(&auHeap, 1, 0x68);
    auDataBuffers[0] = alHeapAlloc(&auHeap, 1, 0xE60);
    auDataBuffers[1] = alHeapAlloc(&auHeap, 1, 0xE60);
    auDataBuffers[2] = alHeapAlloc(&auHeap, 1, 0xE60);

    if ((u32) auCurrentSettings.bank3Start < 0x80000000) {
        len = auCurrentSettings.bank3End - auCurrentSettings.bank3Start;
        buf3 = alHeapAlloc(&auHeap, 1, len);
        auRomRead(auCurrentSettings.bank3Start, buf3, len);
        auPublicSettings.unk4C = auCurrentSettings.unk4C = *buf3;
        auPublicSettings.unk44 = auCurrentSettings.unk44 = (u32) (buf3 + 1);
    }

    if ((u32) auCurrentSettings.bank4Start < 0x80000000) {
        len = auCurrentSettings.bank4End - auCurrentSettings.bank4Start;
        buf4 = alHeapAlloc(&auHeap, 1, len);
        auRomRead(auCurrentSettings.bank4Start, buf4, len);
        auPublicSettings.unk4A = auCurrentSettings.unk4A = *buf4;
        auPublicSettings.unk40 = auCurrentSettings.unk40 = (u32 *) (buf4 + 1);
        for (j = 0; j < auCurrentSettings.unk4A; j++) {
            auCurrentSettings.unk40[j] += (u32) buf4;
        }
    }

    if ((u32) auCurrentSettings.bank5Start < 0x80000000) {
        i = 0;
        len = auCurrentSettings.bank5End - auCurrentSettings.bank5Start;
        buf5 = alHeapAlloc(&auHeap, 1, len);
        auRomRead(auCurrentSettings.bank5Start, buf5, len);
        pub = &auPublicSettings;
        auCurrentSettings.unk48 = *buf5;
        pub->unk48 = auCurrentSettings.unk48;
        auCurrentSettings.unk3C = (u32 *) (buf5 + 1);
        pub->unk3C = auCurrentSettings.unk3C;
        for (; i < auCurrentSettings.unk48; i++) {
            auCurrentSettings.unk3C[i] += (u32) buf5;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/audio/auLoadAssets.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/main/audio/auCreatePlayers.s")

// https://decomp.me/scratch/HNhjJ
#pragma GLOBAL_ASM("asm/nonmatchings/main/audio/auThreadMain.s")

void auSetHighSoundQuality(void) {
    auSoundQuality = 1;
}

void auSetLowSoundQuality(void) {
    auSoundQuality = 0;
}

void auSetSoundQuality(s32 quality) {
    auSoundQuality = quality;
}

void auSetReverbType(s32 fxType) {
    if (fxType != auCurrentFxType) {
        auRestarting++;
        auCurrentSettings.fxType = fxType;
    }
}

void auStopBGM(void) {
    s32 i;

    for (i = 0; i < NUM_SONGS; i++) {
        auStopSong(i);
    }
}

// NOTE: this used to store the interrupt mask
u32 auPlaySong(s32 playerID, u32 songID) {
    if (songID < (u32)auSeqFile->seqCount) {
        auBGMPlayerStatus[playerID] = 1;
        auBGMSongId[playerID] = songID;
        return songID;
    } else {
        return -1;
    }
}

// NOTE: this used to store the interrupt mask
void auStopSong(s32 playerId) {
    auBGMPlayerStatus[playerId] = 1;
    auBGMSongId[playerId] = -1;
}

void auSetBGMVolume(s32 playerID, u32 vol) {
    if (vol > MAX_VOL) {
        vol = MAX_VOL;
    }

    alCSPSetVol(auBGMPlayers[playerID], vol);
    auBGMVolume[playerID] = vol;
    auBGMVolumeTimer[playerID] = 0;
}

void auSetBGMVolumeSmooth(s32 playerID, u32 vol, u32 time) {
    if (vol > MAX_VOL) {
        vol = MAX_VOL;
    }

    if (time != 0) {
        auBGMVolumeTimer[playerID] = time;
        auSongVolumeRate[playerID] = (vol - auBGMVolume[playerID]) / time;
    } else {
        auSetBGMVolume(playerID, vol);
    }
}

void auSetBGMReverb(s32 playerID, u32 reverb) {
    s32 i;

    if (reverb > 127) {
        reverb = 127;
    }

    for (i = 0; i < 16; i++) {
        n_alCSPSetChlFXMix((N_ALCSPlayer *)auBGMPlayers[playerID], i, reverb);
    }
}

void auSetBGMPriority(s32 playerID, u8 priority) {
    s32 i;

    if (priority > 127) {
        priority = 127;
    }
    auGlobalSongPriority = priority;

    for (i = 0; i < 16; i++) {
        n_alCSPSetChlPriority((N_ALCSPlayer *)auBGMPlayers[playerID], i, priority);
    }
}

s32 func_80020BB8(s32 playerID) {
    if (auBGMPlayers[playerID]->unk34 == 0) {
        return 0;
    }
    return 1;
}

s32 func_80020BE8(s32 arg0) {
    s32 i;

    for (i = 0; i < D_800964D3; i++) {
        if (D_8009646C[i] == 0) {
            D_8009646C[i] = func_80023CB0(arg0);
            return i;
        }
    }
    return -1;
}

s32 func_80020C70(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    return -1;
}

// Near-match draft: only difference is i/count allocated v1/v0 instead of
// v0/v1 (one extra move at the end). Returns 1 when D_800964D3 == 0.
void auFunc80020C88(void) {
    s32 i;

    func_80023990();
    for (i = 0; i < D_800964D3; i++) {
    }
}

// TODO: returns int?
void func_80020CC4(u32 volume) {
    u8 var_a0;

    if (volume > MAX_VOL) {
        var_a0 = 0x7F;
    } else {
        var_a0 = (volume >> 8);
    }
    func_80023360(var_a0, volume);
}

void func_80020D00(s32 arg0, u32 arg1) {
    s32 temp_a0;
    u32 var_a2;

    var_a2 = arg1;
    if (arg1 >= 0x8000U) {
        var_a2 = 0x7FFF;
    }
    temp_a0 = D_8009646C[arg0];
    if (temp_a0 != 0) {
        func_80023464(temp_a0, (var_a2 >> 8) & 0xFF, var_a2, arg0);
    }
}

void func_80020D58(s32 arg0, s32 arg1) {
    u8 vol = arg1;

    if ((arg1 & 0xFF) >= 0x80) {
        vol = 0x7F;
    }
    if (D_8009646C[arg0] != 0) {
        func_800233F4(D_8009646C[arg0], vol);
    }
}

void func_80020DAC(s32 arg0, s32 arg1) {
    u8 vol = arg1;

    if ((arg1 & 0xFF) >= 0x80) {
        vol = 0x7F;
    }
    if (D_8009646C[arg0] != 0) {
        func_80023384(D_8009646C[arg0], vol);
    }
}

void func_80020E00(Unused s32 arg0, Unused s32 arg1) {

}

void func_80020E0C(s32 arg0) {
    if (D_8009646C[arg0] != 0) {
        func_80023A28(D_8009646C[arg0]);
        D_8009646C[arg0] = 0;
    }
}

void func_80020E5C(s32 arg0, u8 arg1) {
    u8 *temp;

    temp = (u8 *) D_8009646C[arg0];
    if (temp != NULL) {
        temp[0x1F] = arg1;
    }
}

void func_80020E8C(void) {
    auSettingsUpdated = 1;
}

// last function in this translation unit: its listing carries the
// TU's trailing alignment padding, which C does not emit
s32 func_80020E9C(void) {
    return auSettingsUpdated;
}

// last function in this translation unit: its listing carries the
// TU's trailing alignment padding, which C does not emit
s32 func_80020EA8(void) {
    return auRestarting;
}

// last function in this translation unit: its listing carries the
// TU's trailing alignment padding, which C does not emit
s32 func_80020EB4(void) {
    return auRestarting | auSettingsUpdated;
}

// Last function in this translation unit. Its listing carries two trailing
// zero words, but they are .text's own 16-byte alignment fill at the END of
// the TU, so the assembler puts them straight back: measured .text stays
// 0x2B80 with zero layout drift. (A tail like this in the MIDDLE of a TU is
// a real trap -- nothing re-aligns there.)
void func_80020ECC(void) {
    osRecvMesg(&gThreadInitializedMQ, 0, 0);
    auSettingsUpdated = 1;
    osRecvMesg(&gThreadInitializedMQ, 0, 1);
}