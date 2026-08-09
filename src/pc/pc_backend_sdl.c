/* SDL2 backend: window, streaming texture, audio queue, game controller.
 *
 * Compiled only when PC_SDL is defined; otherwise this file is empty and the
 * null backend is linked instead. Both define the same symbols, so exactly one
 * may be built -- Makefile.pc picks.
 *
 * NOT BUILT BY DEFAULT, and the reason is a measurement, not a preference.
 * This port is 32-bit (see the header of Makefile.pc: at -m64 three files fail
 * to compile because gbi.h casts pointers into 32-bit display-list words in
 * static initializers). The SDL2 installed on this machine is x86_64 only:
 *
 *     /usr/lib/x86_64-linux-gnu/libSDL2.so           present
 *     /usr/lib/i386-linux-gnu/libSDL2.so             absent
 *     /usr/include/SDL2/SDL_config.h  ->  #include <SDL2/_real_SDL_config.h>
 *                                         which only exists under
 *                                         /usr/include/x86_64-linux-gnu/
 *
 * so both the compile and the link of a -m32 SDL program fail here
 * ("skipping incompatible libSDL2.so ... cannot find -lSDL2"). Installing
 * libsdl2-dev:i386 makes `make -f Makefile.pc PC_SDL=1` work with no change
 * to this file.
 *
 * The framebuffer conversion is the only interesting part. The N64 hands the
 * VI an RGBA5551 buffer in big-endian memory; SDL wants a little-endian
 * packed format. SDL_PIXELFORMAT_RGBA5551 plus a byte swap per pixel gets
 * there without a per-channel unpack.
 */
#ifdef PC_SDL

#include <SDL.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "pc/pc_backend.h"
#include "pc/pc_platform.h"

static SDL_Window *sWindow;
static SDL_Renderer *sRenderer;
static SDL_Texture *sTexture;
static SDL_GameController *sPads[4];
static SDL_AudioDeviceID sAudio;
static int sTexW, sTexH;
static int sAlive = 1;
static u16 *sConv;

void pcb_video_init(int width, int height) {
    if (sWindow != NULL) {
        return;
    }
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_GAMECONTROLLER) != 0) {
        fprintf(stderr, "[pc] SDL_Init: %s\n", SDL_GetError());
        exit(1);
    }
    sWindow = SDL_CreateWindow("Kirby 64", SDL_WINDOWPOS_CENTERED,
                               SDL_WINDOWPOS_CENTERED, width * 2, height * 2,
                               SDL_WINDOW_RESIZABLE);
    sRenderer = SDL_CreateRenderer(sWindow, -1, SDL_RENDERER_ACCELERATED |
                                                    SDL_RENDERER_PRESENTVSYNC);
    SDL_RenderSetLogicalSize(sRenderer, width, height);
}

static void ensure_texture(int w, int h, int fmt) {
    Uint32 sdlfmt = (fmt == 32) ? SDL_PIXELFORMAT_RGBA8888
                                : SDL_PIXELFORMAT_RGBA5551;

    if (sTexture != NULL && sTexW == w && sTexH == h) {
        return;
    }
    if (sTexture != NULL) {
        SDL_DestroyTexture(sTexture);
    }
    sTexture = SDL_CreateTexture(sRenderer, sdlfmt, SDL_TEXTUREACCESS_STREAMING,
                                 w, h);
    sTexW = w;
    sTexH = h;
    free(sConv);
    sConv = (u16 *)malloc((size_t)w * h * 2);
}

void pcb_video_present(const void *fb, int width, int height, int fmt) {
    if (sRenderer == NULL) {
        pcb_video_init(width, height);
    }
    ensure_texture(width, height, fmt);
    if (fb == NULL) {
        return;
    }
    if (fmt == 16) {
        /* Byte-swap the big-endian 5551 halfwords the game wrote. */
        const u16 *src = (const u16 *)fb;
        int n = width * height;
        int i;

        for (i = 0; i < n; i++) {
            u16 v = src[i];
            sConv[i] = (u16)((v >> 8) | (v << 8));
        }
        SDL_UpdateTexture(sTexture, NULL, sConv, width * 2);
    } else {
        SDL_UpdateTexture(sTexture, NULL, fb, width * 4);
    }
    SDL_RenderClear(sRenderer);
    SDL_RenderCopy(sRenderer, sTexture, NULL, NULL);
    SDL_RenderPresent(sRenderer);
}

void pcb_video_shutdown(void) {
    if (sWindow != NULL) {
        SDL_DestroyWindow(sWindow);
        sWindow = NULL;
    }
}

/* This backend blits an N64 framebuffer; it has no display-list renderer. See
 * the renderer-seam note in pc_backend.h. */
int pcb_has_renderer(void) {
    return 0;
}

void pcb_frame_begin(void) {
}

void pcb_frame_end(void) {
}

void pcb_gfx_run(const void *displayList) {
    (void)displayList;
}

int pcb_alive(void) {
    return sAlive;
}

void pcb_pump(void) {
    SDL_Event ev;

    if (sWindow == NULL) {
        return;
    }
    while (SDL_PollEvent(&ev)) {
        switch (ev.type) {
            case SDL_QUIT:
                sAlive = 0;
                break;
            case SDL_CONTROLLERDEVICEADDED:
                if (ev.cdevice.which < 4 && sPads[ev.cdevice.which] == NULL) {
                    sPads[ev.cdevice.which] =
                        SDL_GameControllerOpen(ev.cdevice.which);
                }
                break;
            default:
                break;
        }
    }
}

/* Keyboard fallback so the port is playable before a pad is plugged in. The
 * mapping is the conventional one for N64 ports. */
static u16 keyboard_buttons(const Uint8 *k, s8 *sx, s8 *sy) {
    u16 b = 0;

    if (k[SDL_SCANCODE_X]) b |= CONT_A;
    if (k[SDL_SCANCODE_C]) b |= CONT_B;
    if (k[SDL_SCANCODE_Z]) b |= CONT_G;      /* Z trigger */
    if (k[SDL_SCANCODE_RETURN]) b |= CONT_START;
    if (k[SDL_SCANCODE_A]) b |= CONT_L;
    if (k[SDL_SCANCODE_S]) b |= CONT_R;
    if (k[SDL_SCANCODE_UP]) b |= CONT_UP;
    if (k[SDL_SCANCODE_DOWN]) b |= CONT_DOWN;
    if (k[SDL_SCANCODE_LEFT]) b |= CONT_LEFT;
    if (k[SDL_SCANCODE_RIGHT]) b |= CONT_RIGHT;
    if (k[SDL_SCANCODE_I]) b |= CONT_E;      /* C-up */
    if (k[SDL_SCANCODE_K]) b |= CONT_D;      /* C-down */
    if (k[SDL_SCANCODE_J]) b |= CONT_C;      /* C-left */
    if (k[SDL_SCANCODE_L]) b |= CONT_F;      /* C-right */

    *sx = (s8)((k[SDL_SCANCODE_D] ? 80 : 0) - (k[SDL_SCANCODE_A] ? 80 : 0));
    *sy = (s8)((k[SDL_SCANCODE_W] ? 80 : 0) - (k[SDL_SCANCODE_S] ? 80 : 0));
    return b;
}

static s8 axis_to_n64(Sint16 v) {
    /* SDL axes are -32768..32767; the N64 stick reads roughly -80..80 and the
     * game clamps at that, so scale rather than clip. */
    int scaled = (v * 80) / 32767;

    if (scaled > 80) scaled = 80;
    if (scaled < -80) scaled = -80;
    return (s8)scaled;
}

void pcb_input_poll(PCPad *pads, int n) {
    const Uint8 *keys = SDL_GetKeyboardState(NULL);
    int i;

    for (i = 0; i < n; i++) {
        pads[i].button = 0;
        pads[i].stick_x = 0;
        pads[i].stick_y = 0;
        pads[i].present = 0;
    }
    if (n > 0 && keys != NULL) {
        pads[0].present = 1;
        pads[0].button = keyboard_buttons(keys, &pads[0].stick_x,
                                          &pads[0].stick_y);
    }
    for (i = 0; i < n && i < 4; i++) {
        SDL_GameController *c = sPads[i];
        u16 b;

        if (c == NULL) {
            continue;
        }
        pads[i].present = 1;
        b = pads[i].button;
        if (SDL_GameControllerGetButton(c, SDL_CONTROLLER_BUTTON_A)) b |= CONT_A;
        if (SDL_GameControllerGetButton(c, SDL_CONTROLLER_BUTTON_X)) b |= CONT_B;
        if (SDL_GameControllerGetButton(c, SDL_CONTROLLER_BUTTON_START))
            b |= CONT_START;
        if (SDL_GameControllerGetButton(c, SDL_CONTROLLER_BUTTON_LEFTSHOULDER))
            b |= CONT_L;
        if (SDL_GameControllerGetButton(c, SDL_CONTROLLER_BUTTON_RIGHTSHOULDER))
            b |= CONT_R;
        if (SDL_GameControllerGetAxis(c, SDL_CONTROLLER_AXIS_TRIGGERLEFT) > 8000
            || SDL_GameControllerGetAxis(c, SDL_CONTROLLER_AXIS_TRIGGERRIGHT) >
                   8000)
            b |= CONT_G;
        if (SDL_GameControllerGetButton(c, SDL_CONTROLLER_BUTTON_DPAD_UP))
            b |= CONT_UP;
        if (SDL_GameControllerGetButton(c, SDL_CONTROLLER_BUTTON_DPAD_DOWN))
            b |= CONT_DOWN;
        if (SDL_GameControllerGetButton(c, SDL_CONTROLLER_BUTTON_DPAD_LEFT))
            b |= CONT_LEFT;
        if (SDL_GameControllerGetButton(c, SDL_CONTROLLER_BUTTON_DPAD_RIGHT))
            b |= CONT_RIGHT;
        pads[i].button = b;
        pads[i].stick_x =
            axis_to_n64(SDL_GameControllerGetAxis(c, SDL_CONTROLLER_AXIS_LEFTX));
        pads[i].stick_y = (s8)(-axis_to_n64(
            SDL_GameControllerGetAxis(c, SDL_CONTROLLER_AXIS_LEFTY)));
    }
}

void pcb_input_rumble(int port, int on) {
    if (port < 0 || port >= 4 || sPads[port] == NULL) {
        return;
    }
    SDL_GameControllerRumble(sPads[port], on ? 0xFFFF : 0, on ? 0xFFFF : 0,
                             on ? 1000 : 0);
}

void pcb_audio_init(int freq) {
    SDL_AudioSpec want;

    if (sAudio != 0) {
        return;
    }
    if (SDL_InitSubSystem(SDL_INIT_AUDIO) != 0) {
        fprintf(stderr, "[pc] SDL audio: %s\n", SDL_GetError());
        return;
    }
    memset(&want, 0, sizeof(want));
    want.freq = freq;
    want.format = AUDIO_S16SYS;
    want.channels = 2;
    want.samples = 512;
    sAudio = SDL_OpenAudioDevice(NULL, 0, &want, NULL, 0);
    if (sAudio != 0) {
        SDL_PauseAudioDevice(sAudio, 0);
    }
}

void pcb_audio_set_freq(int freq) {
    /* The game changes the AI frequency when the region or the sound mode
     * changes. SDL cannot retune an open device, so close and reopen. */
    if (sAudio != 0) {
        SDL_CloseAudioDevice(sAudio);
        sAudio = 0;
    }
    pcb_audio_init(freq);
}

void pcb_audio_queue(const void *samples, u32 bytes) {
    if (sAudio != 0) {
        SDL_QueueAudio(sAudio, samples, bytes);
    }
}

u32 pcb_audio_queued(void) {
    return (sAudio != 0) ? SDL_GetQueuedAudioSize(sAudio) : 0;
}

#endif /* PC_SDL */
