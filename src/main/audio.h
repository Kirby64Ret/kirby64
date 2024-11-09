#ifndef _AUDIO_H_
#define _AUDIO_H_

#include "localsched.h"

#define NUM_DMA_BUFFERS 4
#define MAX_BUFFERS 50
#define MAX_BUFFER_LENGTH 1024
#define AUDIO_EXTRA_SAMPLES 80
#define NUM_SONGS 1
#define MAX_VOL 0x7800

#define TREMELO_SIN 1
#define TREMELO_SQR 2
#define TREMELO_DSC_SAW 3
#define TREMELO_ASC_SAW 4
#define VIBRATO_SIN 128
#define VIBRATO_SQR 129
#define VIBRATO_DSC_SAW 130
#define VIBRATO_ASC_SAW 131
#define OSC_HIGH 0
#define OSC_LOW 1
#define TWO_PI 6.2831853f
#define OSC_STATE_COUNT 44

typedef struct {
    u8* heapBase;
    s32 heapSize;
    u16 outputRate;
    u8 maxPVoices;
    u8 maxVVoices;
    u8 maxUpdates;
    u8 maxEvents;
    u8 numSounds;
    u8 maxVoices[2];
    s8 unk_11;
    s8 unk_12;
    u8 unk_13;
    s32 bank1Start;
    s32 bank1End;
    u8* table1Start;
    s32 bank2Start;
    s32 bank2End;
    u8* table2Start;
    s32 romSbkStart;
    u8 fxType;
} AuSettings;

typedef struct {
    u8 rate;
    u8 depth;
    u8 oscCount;
} defData;

typedef struct {
    u8 halfdepth;
    u8 baseVol;
} tremSinData;

typedef struct {
    u8 curVal;
    u8 hiVal;
    u8 loVal;
} tremSqrData;

typedef struct {
    u8 baseVol;
    u8 depth;
} tremSawData;

typedef struct {
    f32 depthcents;
} vibSinData;

typedef struct {
    f32 loRatio;
    f32 hiRatio;
} vibSqrData;

typedef struct {
    s32 hicents;
    s32 centsrange;
} vibDSawData;

typedef struct {
    s32 locents;
    s32 centsrange;
} vibASawData;

typedef struct oscData_s {
    struct oscData_s* next;
    u8 type;
    u8 stateFlags;
    u16 maxCount;
    u16 curCount;
    union {
        defData def;
        tremSinData tsin;
        tremSqrData tsqr;
        tremSawData tsaw;
        vibSinData vsin;
        vibSqrData vsqr;
        vibDSawData vdsaw;
        vibASawData vasaw;
    } data;
} oscData;

typedef struct {
    u32 addr;
    u32 len;
    u32 size;
    char* ptr;
} AMDMABuffer;

typedef struct {
    u32 nBuffers;
    u32 currentBuffer;
    AMDMABuffer buffers[NUM_DMA_BUFFERS];
} AMDMAState;

extern s32 auSettingsUpdated ;
extern s32 auSoundQuality ;
extern s32 auCurrentFxType ;
extern s32 auRestarting ;
extern s32 auFrameCounter ;
extern s16 auSampleCount[] ;
extern u8 auGlobalSoundVolume ;
extern u8 auGlobalSoundReverbAmt ;
extern u8 auHeapBuffer[0x4B000];
extern ALHeap auHeap;
extern void* auHeapBase;
extern s32 auHeapSize;
extern SCClient auClient;
extern OSIoMesg auDMAIOMesgBuf[MAX_BUFFERS];
extern ALGlobals auGlobals;
extern s32 auFrequency;
extern s16* auDataBuffers[3];
extern Acmd* auCmdListPtr;
extern Acmd* auCmdListBuffers[2];
extern SCTaskAudio* auTask;
extern SCTaskAudio* auScTasks[2];
extern ALBank* D_800968B8;
extern s32* auPlayingSound;
extern s32* auStartingSound;
extern s8* auSndpSoundId; // returned by alSndpAllocate
extern u8* auSoundPriority;
extern u8* auSoundIdleCounter;
extern f32* auSoundPitch;
extern u16* auSoundVolume;
extern u8* auSoundPan;
extern u8* auSoundReverbAmt;
extern ALInstrument* auSFXPlayer;
extern ALSndPlayer* auSoundPlayer;

extern ALBank* auSeqBank;
extern ALBank *D_80096468;

extern ALSeqFile* auSeqFile;
extern ALSeqFile *D_80096474;

extern ALCSPlayer* auBGMPlayers[2];
extern ALCSeq* auBGMSequences[2];
extern u8 auGlobalSongPriority;
extern u8* auBGMSeqData[2];
extern u8* auBGMPlayerStatus;
extern s32* auBGMSongId;
extern s32 auBGMVolumeTimer[2];
extern f32 auBGMVolume[2];
extern f32 auSongVolumeRate[2];
extern AuSettings auCurrentSettings;
extern OSTime D_80096968;
extern oscData* freeOscStateList;


void auStopSong(s32 playerId);
extern int func_80023360(u32, u32);


#endif
