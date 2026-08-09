/* The host boundary.
 *
 * Everything above this line is libultra semantics; everything below it is
 * SDL (or nothing). Two implementations exist and exactly one is compiled:
 *
 *   pc_backend_null.c  default. Real monotonic time, no window, no sound,
 *                      no input. The platform layer is fully exercised and
 *                      the build links with nothing but libc and librt.
 *   pc_backend_sdl.c   built when PC_SDL is defined. SDL2 window + streaming
 *                      texture, SDL audio queue, SDL game controller.
 *
 * WHY THE NULL BACKEND IS THE DEFAULT, measured rather than chosen: this
 * tree's port is 32-bit (see Makefile.pc), and the SDL2 installed here is
 * x86_64 only --
 *
 *     /usr/lib/x86_64-linux-gnu/libSDL2.so        exists
 *     /usr/lib/i386-linux-gnu/libSDL2.so          does not
 *     /usr/include/SDL2/SDL_config.h -> /usr/include/x86_64-linux-gnu/SDL2/
 *
 * so `gcc -m32 ... -lSDL2` fails with "skipping incompatible libSDL2.so".
 * A 32-bit SDL2 (libsdl2-dev:i386) makes `make -f Makefile.pc PC_SDL=1` work
 * with no source change. Until then the null backend keeps every other part
 * of the port compiling and measurable, which is the point of Makefile.pc.
 */
#ifndef PC_BACKEND_H
#define PC_BACKEND_H

#include <PR/ultratypes.h>

typedef struct {
    u16 button;  /* CONT_* bits, already in N64 layout */
    s8 stick_x;  /* -80..80 */
    s8 stick_y;
    u8 present;
} PCPad;

/* Video. fmt is 16 for RGBA5551 and 32 for RGBA8888, matching the N64
 * framebuffer formats the game selects through the VI control register. */
void pcb_video_init(int width, int height);
void pcb_video_present(const void *fb, int width, int height, int fmt);
void pcb_video_shutdown(void);

/* Returns 0 once the user has asked to quit. */
int pcb_alive(void);

/* Drain host events. Cheap, called every scheduling point. */
void pcb_pump(void);

/* Input. Fills MAXCONTROLLERS entries. */
void pcb_input_poll(PCPad *pads, int n);
void pcb_input_rumble(int port, int on);

/* Audio. 16-bit stereo interleaved, native byte order. */
void pcb_audio_init(int freq);
void pcb_audio_set_freq(int freq);
void pcb_audio_queue(const void *samples, u32 bytes);
u32 pcb_audio_queued(void);

#endif /* PC_BACKEND_H */
