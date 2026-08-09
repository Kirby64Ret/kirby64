/* Headless backend: real time, no window, no sound, no input.
 *
 * This is the default, and the reason is measured rather than preferred --
 * see the note in pc_backend.h. Short version: this port is 32-bit and the
 * SDL2 on this machine is x86_64 only, so `gcc -m32 ... -lSDL2` cannot link.
 * Build with PC_SDL=1 once a 32-bit SDL2 exists.
 *
 * It is not a placeholder that does nothing useful. With this backend the
 * whole platform layer above it -- scheduler, message queues, VI retrace
 * pacing, DMA out of the cartridge, the audio ring -- runs at true wall-clock
 * rate, so timing bugs and deadlocks are reproducible without a display.
 */
/* Guarded so both backends can sit in the build and only one contributes
 * symbols: pc_backend_sdl.c is the mirror image of this #ifdef. */
#ifndef PC_SDL

#include <stdio.h>
#include <string.h>

#include "pc/pc_backend.h"
#include "pc/pc_platform.h"

static int sFrames;
static int sAudioFreq;
static u32 sAudioQueued;

void pcb_video_init(int width, int height) {
    pc_trace(PC_TR_VI, "[vi] headless %dx%d\n", width, height);
}

void pcb_video_present(const void *fb, int width, int height, int fmt) {
    (void)fb;
    (void)width;
    (void)height;
    (void)fmt;
    sFrames++;
    pc_trace(PC_TR_VI, "[vi] present #%d %p %dx%d fmt%d\n", sFrames, fb, width,
             height, fmt);
}

void pcb_video_shutdown(void) {
}

int pcb_alive(void) {
    return 1;
}

void pcb_pump(void) {
}

void pcb_input_poll(PCPad *pads, int n) {
    int i;

    /* Controller 1 reports present with nothing held. Reporting *no*
     * controllers would send src/main/contpad.c down its "no controller"
     * path, which is a different code path from the one a real session takes,
     * and the point of the headless backend is to exercise the real one. */
    for (i = 0; i < n; i++) {
        pads[i].button = 0;
        pads[i].stick_x = 0;
        pads[i].stick_y = 0;
        pads[i].present = (i == 0);
    }
}

void pcb_input_rumble(int port, int on) {
    pc_trace(PC_TR_CONT, "[cont] rumble %d %d\n", port, on);
}

void pcb_audio_init(int freq) {
    sAudioFreq = freq;
}

void pcb_audio_set_freq(int freq) {
    sAudioFreq = freq;
}

void pcb_audio_queue(const void *samples, u32 bytes) {
    (void)samples;
    /* Drain instantly. A real sink applies backpressure through
     * pcb_audio_queued(); with no device there is nothing to be behind. */
    sAudioQueued = bytes;
    sAudioQueued = 0;
}

u32 pcb_audio_queued(void) {
    return sAudioQueued;
}

#endif /* !PC_SDL */
