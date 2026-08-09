/* Audio interface: the sink the synthesizer's output lands in.
 *
 * The AI on N64 is a DMA engine with a two-deep buffer queue and nothing
 * else -- no mixing, no format conversion. It reads 16-bit stereo big-endian
 * samples out of RDRAM at a rate set by a divisor off the video clock, and
 * raises an interrupt when a buffer is consumed so the audio thread can hand
 * it the next one. That is the whole device, which is why this file is short:
 * everything interesting in Kirby 64's audio is the n_audio library above it,
 * and that library is portable C already present in libreultra/src/libnaudio.
 *
 * TWO THINGS ARE REAL PORTING WORK HERE and both are done below:
 *
 *   BYTE ORDER. The samples in RDRAM are big-endian because the RSP wrote
 *   them; a little-endian host sound device needs them swapped. Skipping this
 *   does not sound slightly wrong, it sounds like white noise.
 *
 *   BACKPRESSURE. On hardware, osAiGetLength() returning non-zero is how the
 *   audio thread knows the previous buffer is still playing, and it is what
 *   paces the whole audio pipeline. A sink that swallows everything instantly
 *   makes the thread render as fast as the CPU allows. The queued-bytes count
 *   from the host device stands in for the DMA length register.
 *
 * NOTE ON THE GAP MEASUREMENT: nothing in the tree calls these yet.
 * docs/PC_PORT_SURFACE.md lists "audio sink -- 2", but osAiSetFrequency and
 * osAiSetNextBuffer do not appear in `make -f Makefile.pc gap` output, because
 * their only caller is auThreadMain, which is still undecompiled. They are
 * implemented here anyway -- they will be needed the day it lands, and
 * writing them now costs nothing.
 */
#include <ultra64.h>
#include <stddef.h>
#include <string.h>

#include "pc/pc_platform.h"
#include "pc/pc_backend.h"

#define AI_MAX_BUFFER 0x8000

static int sFreq;
static int sOpened;
static u8 sSwap[AI_MAX_BUFFER];

/* What the AI would still have left to play, in bytes, derived from what the
 * host device has queued. */
static u32 sPending;

void pc_ai_init(void) {
    /* Deliberately does not open the device: the game picks the rate with
     * osAiSetFrequency and opening at a guess would mean closing and
     * reopening a moment later. */
}

void pc_ai_tick(void) {
    u32 queued = pcb_audio_queued();

    if (!sOpened) {
        return;
    }
    if (sPending != 0 && queued < sPending) {
        /* A buffer's worth has drained. On hardware this is the AI interrupt,
         * and it is what wakes the audio thread for the next frame. */
        sPending = queued;
        pc_event_fire(OS_EVENT_AI);
    } else {
        sPending = queued;
    }
}

s32 osAiSetFrequency(u32 frequency) {
    /* Hardware computes an integer divisor off the 48.681818 MHz video clock
     * and the achievable rate is therefore not exactly what was asked for --
     * libultra returns the real one and the audio library resamples to it.
     * A host device can usually give the exact rate, so the honest answer is
     * the rate we actually opened. */
    if (frequency == 0) {
        return -1;
    }
    sFreq = (int)frequency;
    if (!sOpened) {
        pcb_audio_init(sFreq);
        sOpened = 1;
    } else {
        pcb_audio_set_freq(sFreq);
    }
    pc_trace(PC_TR_AI, "[ai] frequency %u\n", frequency);
    return (s32)frequency;
}

s32 osAiSetNextBuffer(void *bufPtr, u32 size) {
    const u16 *src = (const u16 *)bufPtr;
    u16 *dst = (u16 *)sSwap;
    u32 n;
    u32 i;

    if (!sOpened) {
        /* The game may set a buffer before setting a frequency; hardware
         * would play it at whatever the AI was last programmed to. Open at
         * the N64's usual output rate rather than dropping the audio. */
        osAiSetFrequency(32000);
    }
    if (bufPtr == NULL || size == 0) {
        return -1;
    }
    if (size > AI_MAX_BUFFER) {
        size = AI_MAX_BUFFER;
    }

    /* Big-endian 16-bit samples to host order. */
    n = size / 2;
    for (i = 0; i < n; i++) {
        u16 v = src[i];

        dst[i] = (u16)((v >> 8) | (v << 8));
    }
    pcb_audio_queue(sSwap, size);
    sPending = pcb_audio_queued();
    pc_trace(PC_TR_AI, "[ai] queue %u bytes (%u pending)\n", size, sPending);
    return 0;
}

u32 osAiGetLength(void) {
    /* Bytes the AI has yet to consume. Non-zero means "still busy". */
    return pcb_audio_queued();
}

u32 osAiGetStatus(void) {
    /* Bit 31 is AI_STATUS_FIFO_FULL (both slots occupied), bit 30 is
     * AI_STATUS_DMA_BUSY. Approximated from how far ahead the host device is:
     * more than two buffers queued counts as full. */
    u32 queued = pcb_audio_queued();
    u32 status = 0;

    if (queued > 0) {
        status |= 0x40000000u;
    }
    if (queued > 2 * 0x1000) {
        status |= 0x80000000u;
    }
    return status;
}
