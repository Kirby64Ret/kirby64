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

/* -------------------------------------------------------------------------
 * THE RENDERER SEAM
 *
 * pcb_video_present() answers "get this block of RGBA5551 onto a screen". A
 * backend with a real renderer never sees such a block: Fast3D intercepts the
 * display list before rasterisation and draws with the host GPU, so nothing
 * ever writes an N64 framebuffer. The seam moves from the framebuffer to the
 * display list, and these four calls are where it moves to.
 *
 * pcb_has_renderer() is what lets both kinds of backend coexist behind one
 * header rather than forcing every caller to be rewritten: os_vi.c presents a
 * framebuffer when it is 0 and marks a frame boundary when it is 1.
 * ------------------------------------------------------------------------- */

/* 1 if this backend rasterises display lists itself. Constant per build. */
int pcb_has_renderer(void);

/* Frame boundaries. begin is called when the game submits the first display
 * list of a frame; end when the VI retraces, i.e. when the game considers the
 * frame finished and asks for it to be shown. */
void pcb_frame_begin(void);
void pcb_frame_end(void);

/* Select the microcode the NEXT display list is written in.
 *
 * On hardware every RSP task carries its own ucode and the RSP boots it before
 * reading a single command, so a task's interpretation never inherits from the
 * task before it. A software interpreter has one global selector and does
 * inherit, which is a real difference and not a pedantic one: Kirby switches
 * to S2DEX2 mid-frame to draw sprites, and if the next task starts while that
 * is still selected, its very first commands are decoded against the sprite
 * table. G_SETOTHERMODE_H/L and G_TRI1 are not in it, so the frame is dropped
 * a command at a time with "Unhandled OP code ... for loaded ucode: 5".
 *
 * s2dex is 0 for F3DEX2/L3DEX2 and 1 for S2DEX2. Called once per task, before
 * pcb_gfx_run. */
void pcb_gfx_set_ucode(int s2dex);

/* Hand an F3DEX2 display list to the renderer. Returns only once it has been
 * consumed, so the caller can then raise SP-done and DP-done in an order the
 * game's scheduler will accept. */
void pcb_gfx_run(const void *displayList);

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
