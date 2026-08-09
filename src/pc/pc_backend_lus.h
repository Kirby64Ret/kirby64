/* The libultraship backend, as an interface sketch.
 *
 * NOT AN IMPLEMENTATION. libultraship and Torch cannot be fetched in this
 * session (docs/PC_PORT_ARCHITECTURE.md, "Current blocker"), so this file
 * exists to make the integration mechanical when they land: it says exactly
 * which LUS entry point each pc_backend.h call maps onto, and -- more
 * usefully -- which ones do NOT map, because those are where the design has
 * to change rather than be filled in.
 *
 * The reason a third backend is cheap at all is that pc_backend.h already
 * separates "what the platform layer needs from a host" from "how a host
 * provides it". pc_backend_null.c and pc_backend_sdl.c are two answers;
 * pc_backend_lus.cpp would be a third, and no caller changes.
 *
 * =====================================================================
 * THE MAPPING
 * =====================================================================
 *
 *   pcb_video_init(w, h)
 *       Ship::Context::CreateInstance(...) plus GetWindow()->Init().
 *       LUS owns the window, the GL/Metal/D3D context and the ImGui overlay,
 *       so this becomes context creation rather than SDL_CreateWindow.
 *
 *   pcb_pump()
 *       Ship::Context::GetInstance()->GetWindow()->GetGui()->... event drain.
 *       LUS pumps SDL itself inside its own frame call, so this may end up
 *       empty and the drain may move into pcb_video_present.
 *
 *   pcb_alive()
 *       GetWindow()->IsRunning(), or the WM_QUIT equivalent LUS exposes.
 *
 *   pcb_input_poll(pads, n)
 *       Ship::Context::GetInstance()->GetControlDeck()->GetPad(i) already
 *       produces an OSContPad. This is the cleanest of the mappings: the
 *       ControlDeck exists precisely to turn modern gamepads into N64 pad
 *       state, so pcb_input_poll becomes a field copy and src/pc/os_cont.c
 *       stops caring where the bits came from.
 *
 *   pcb_input_rumble(port, on)
 *       ControlDeck device -> SetRumble(). Same shape.
 *
 *   pcb_audio_init / set_freq / queue / queued
 *       LUS's miniaudio AudioPlayer: Init(), SetSampleRate(), Play(buf, len),
 *       Buffered(). osAiSetNextBuffer in src/pc/os_ai.c already does the
 *       big-endian sample swap and already paces on the queued-bytes count,
 *       so this is a direct substitution.
 *
 * =====================================================================
 * WHAT DOES NOT MAP, which is the part worth reading
 * =====================================================================
 *
 * 1. pcb_video_present(fb, w, h, fmt) HAS NO LUS EQUIVALENT, and should not
 *    acquire one.
 *
 *    It exists because the current port has no renderer: the N64 framebuffer
 *    is a block of RGBA5551 in RAM and the backend's job is to get it onto a
 *    screen. Under LUS there IS no such block. Fast3D intercepts the display
 *    list before rasterisation and draws with the host GPU, so nothing ever
 *    writes an N64 framebuffer and there is nothing to upload.
 *
 *    The seam therefore moves. Today:
 *
 *        osViSwapBuffer(p)  -> remember p
 *        retrace            -> pcb_video_present(p, ...)
 *
 *    Under LUS:
 *
 *        osSpTaskStartGo(t) -> Fast3D executes t's display list
 *        osViSwapBuffer(p)  -> end-of-frame marker only
 *        retrace            -> LUS presents; no pixels cross this boundary
 *
 *    So pc_backend.h should grow a frame-boundary call -- pcb_frame_begin()
 *    and pcb_frame_end() -- and pcb_video_present becomes null-backend-only.
 *    The framebuffer POINTERS still matter and must keep working:
 *    src/main/sched.c picks a free buffer by comparing against
 *    osViGetCurrentFramebuffer and osViGetNextFramebuffer, and that logic is
 *    unaffected by whether anything is drawn into them.
 *
 * 2. THE DISPLAY LIST HAS TO REACH FAST3D, and src/pc/os_sp.c currently
 *    swallows it. osSpTaskStartGo would call into Fast3D's gfx_run() with
 *    task->t.data_ptr instead of only tracing it. Two consequences:
 *
 *      - the SP-done/DP-done events must be raised AFTER gfx_run returns,
 *        not before, or sched.c will recycle a framebuffer mid-frame. The
 *        deferred-to-next-pump scheme in os_sp.c already has the right shape
 *        for this;
 *      - Fast3D resolves segmented addresses through its own segment table,
 *        which is fed by G_MOVEWORD/G_MW_SEGMENT in the list. src/pc/
 *        gfx_trace.c already tracks that table and can cross-check it.
 *
 * 3. NO ASSET PATH. src/pc/os_pi.c reads baserom.us.z64 at runtime. The SSB
 *    method extracts at build time with Torch and mounts a resource archive,
 *    so osEPiStartDma stops being an I/O path. What it must KEEP is the
 *    overlay interception in src/pc/pc_overlay.c: that is not about where the
 *    bytes come from, it is about the fact that overlay images are MIPS code
 *    and must never be copied over resident x86 code. That test survives the
 *    architecture change unchanged.
 *
 * 4. POINTER WIDTH. LUS is a 64-bit build and this platform layer is
 *    currently 32-bit, which is not a backend detail -- it is the whole
 *    reason the port has to go LP64. Two things in src/pc/ assume ILP32 and
 *    are the places to look first:
 *
 *      - osVirtualToPhysical() in src/pc/os_time.c returns a host pointer in
 *        a uintptr_t on the argument that "physical" and "virtual" are the
 *        same space here. Under LP64 that value no longer fits the 32-bit
 *        word a VI/DP register model would store it in, and it needs the
 *        PORT_RESOLVE()-style indirection the architecture doc describes.
 *      - the RCP register window in src/pc/pc_mmio.c is mapped at 0xA3F00000.
 *        MAP_FIXED there still works under LP64 on Linux, but the address is
 *        no longer "obviously free" and should be checked rather than
 *        assumed.
 *
 *    Nothing else in src/pc/ stores a pointer in a 32-bit field.
 *
 * 5. THREADING. LUS expects to own the main loop. The cooperative scheduler
 *    in src/pc/os_thread.c also owns it, in the sense that it never returns
 *    to its caller once the first thread starts. These are compatible but
 *    only one can be outermost, and the SSB method's answer is to collapse
 *    the N64 threads into a single loop with explicit graphics/audio/input
 *    calls. If that answer is taken, the piece of os_thread.c that survives
 *    is the message-queue interaction, not the context switching -- and
 *    pc_idle() is the natural place for LUS's per-frame call, because it is
 *    already the one point that runs when the game has nothing to do.
 */
#ifndef PC_BACKEND_LUS_H
#define PC_BACKEND_LUS_H

#include "pc/pc_backend.h"

/* Proposed additions to pc_backend.h for the LUS backend. Declared here
 * rather than there so the current two backends do not have to grow empty
 * implementations of calls nothing makes yet. */

/* Frame boundaries, replacing pcb_video_present for renderer-bearing
 * backends. begin is called when the game starts submitting a frame's
 * display lists; end when the VI retraces. */
void pcb_frame_begin(void);
void pcb_frame_end(void);

/* Hand a display list to the renderer. Returns when it has been consumed,
 * so the caller can then raise SP-done and DP-done in the right order. */
void pcb_gfx_run(const void *displayList, u32 sizeHint);

#endif /* PC_BACKEND_LUS_H */
