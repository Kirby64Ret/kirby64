# libultraship in this port: what is wired, what is proven, what is not

This is a status document, not a plan. Everything asserted here was run.

    tools/pc/build_lus.sh            build libultraship out of tree
    tools/pc/stage_assets.sh         put Fast3D's shader where LUS can find it
    tools/pc/link.sh                 build and link the port (LUS is the default)
    tools/pc/link.sh --run           ... and run it

    KIRBY_PC_GFXTEST=1               submit a synthetic display list per frame
    KIRBY_PC_WINDOWED=1              force a window (see "fullscreen" below)
    KIRBY_PC_TRACE=1                 log missing symbols instead of stopping
    PC_TRACE=gfx,vi,sched,...        subsystem tracing
    PC_LUS=0                         link the headless backend instead

## The state in one paragraph

libultraship builds, the game links against it at `-m64`, and F3DEX2 display
lists submitted through `osSpTaskLoad`/`osSpTaskStartGo` are executed by Fast3D
and presented in an OpenGL window at the game's own 60 Hz. That path is proven
end to end with a synthetic display list built from the game's own `<PR/gbi.h>`
macros — 1198 frames in 20 s, colours matching the requested fill exactly when
the framebuffer is read back. **The game itself does not reach it**, because
`thread5_game` blocks waiting for the audio thread to report in and
`auThreadMain` is still undecompiled. Audio and input are wired but unproven
for the same reason.

## How LUS's main loop and the game's scheduler were reconciled

This was the question the whole task turned on, and the answer is that they do
not conflict — for one specific reason that is worth stating precisely, because
it is a property of *this* port and not of ports in general.

`src/pc/os_thread.c` runs every N64 thread as a `ucontext` on **one host
thread**. That was chosen for the game's sake: Kirby 64 has no locks anywhere
and uses `osSetIntMask(OS_IM_NONE)` as an assertion that nothing else is
executing. But it is also exactly what makes libultraship embeddable, because
every constraint LUS has is a *thread affinity* constraint:

* an OpenGL context is bound to a thread — there is only one thread;
* SDL must be pumped on the thread that created the window — one thread;
* Fast3D's `Interpreter` keeps process-global state (`g_exec_stack`) — one
  thread.

So there is no ownership question to resolve. LUS calls happen wherever the
game reaches them and "wherever" is always the same OS thread. **The SSB64
method's collapse of the N64 threads into a single loop is the price of using
real threads; this port does not pay it because it does not have them.**

What replaces the main loop is a mapping of LUS's fixed per-frame order onto
events the game already emits:

| LUS main loop      | this port                                                    |
|--------------------|--------------------------------------------------------------|
| `HandleEvents()`   | `pcb_pump()` from `pc_pump_events()`, which every blocking libultra call goes through (rate-limited to 1 kHz) |
| game logic         | the game threads, dispatched by N64 priority                 |
| draw + present     | `pcb_gfx_run()` from `osSpTaskStartGo()` on an `M_GFXTASK`    |
| idle frame         | `pcb_frame_end()` at VI retrace runs the GUI alone if no display list arrived |

The frame boundary is therefore the *game's*, not a timer. That is strictly
better than a timer: `src/main/sched.c` recycles framebuffers off the same
event, so the two cannot disagree.

### The pacing consequence, which was not obvious

`GfxWindowBackendSDL::SwapBuffersBegin` calls `SyncFramerateWithTime`, which
sleeps until `1/targetFps` has elapsed. It runs inside `Interpreter::EndFrame`,
which this port calls from `osSpTaskStartGo` — so **LUS's frame limiter sleeps
inside the game's RSP execution, with the game's scheduler stopped behind it**,
while `src/pc/os_vi.c` is separately pacing the whole system from the clock the
game reads through `osGetCount`.

Two limiters on one frame beat against each other rather than averaging. The
game's VI wins, because sched.c's task state machine is driven by the retrace
and cannot be paced by anything else, so LUS's target is set far above the real
rate and its deadline is always already past. `KIRBY_PC_TARGET_FPS` overrides.

## What Fast3D needs that the game does not provide

**A resource archive, before it can draw anything at all.** This is the one
that will surprise people: `gfx_opengl.cpp` loads
`shaders/opengl/default.shader.glsl` *through the ResourceManager* and calls
`abort()` if it is missing, with the message "missing f3d.o2r?". A port that
mounts nothing does not merely lack textures — it cannot draw a triangle.
`tools/pc/stage_assets.sh` copies that shader out of the libultraship checkout
into `port/assets/`, which LUS mounts as a FolderArchive.

`port/assets/` and `port/o2r/` are **separate directories on purpose**.
`ArchiveManager::GetArchiveListInPaths` mounts a directory as a folder only if
it contains no `.o2r`/`.otr`/`.zip`/`.mpq`; dropping a Torch-built
`kirby64.o2r` into `port/assets` would silently unmount the shaders and turn a
working renderer into an abort.

**Segmented addresses are not resolved the way the game builds them.**
`Interpreter::SegAddr` treats `w1` as segmented only when bit 0 is set — the
OTR convention, where `DisplayListFactory` writes `seg | 1`. A raw N64 display
list carries even segmented addresses (`0x06001234`) and Fast3D will dereference
one as a host pointer. Nothing in this port hits it yet because the synthetic
list uses no segments and the game builds none yet, but **it is the first thing
that will break when real game display lists start flowing**, and the fix has
to be decided then: either mark segment references on the way in, or teach the
port's `G_MOVEWORD`/`G_MW_SEGMENT` handling to hand Fast3D pre-resolved
pointers.

**Nothing else.** The display-list format itself needs no adaptation: this
tree's `<PR/gbi.h>` already stores two `uintptr_t` per command, exactly like
libultraship's `F3DGfx`, so a `Gfx*` casts straight across at LP64.

## What the game provides that Fast3D does not want

**The XBUS split.** Kirby 64's scheduler runs graphics as an SP task followed
by a separate DP task: `func_80001FAC` calls
`osDpSetNextBuffer(task.t.output_buff, rdpBufSize)`. Under Fast3D that split
does not exist — Fast3D consumes the SP's *input* list and draws it, and
nothing ever writes an RDP command FIFO. `osDpSetNextBuffer` raising DP-done
and returning is the correct translation, not a stub.

**A framebuffer.** `osViSwapBuffer` still moves the pointers, and it must:
`scCheckGfxTaskDefault` picks a free buffer by comparing against
`osViGetCurrentFramebuffer` and `osViGetNextFramebuffer`. But no pixels cross
that boundary any more, so `pcb_video_present` is dead code under this backend
and `pcb_has_renderer()` selects between the two behaviours.

**Multiple graphics tasks per frame.** `Interpreter::Run` clears the
framebuffer on entry, so it is one-call-per-frame by construction. Kirby's
scheduler has a yield/resume path that can produce two tasks for one displayed
frame; if that happens the second erases the first. It is detected and warned
about once rather than silently flickering.

## LP64: what actually broke

The port had to move to `-m64` because libultraship is a 64-bit library. The
compile was the easy part (one `uintptr_t` typedef, already done). Three *data*
bugs were not, and all three were found by running:

1. **Truncated pointers.** `src/main/dma.c` does `dma_copy(..., (u32)vAddr, ...)`
   — correct on N64, a silent top-32-bit drop under a PIE at
   `0x555555554000`. The first 64-bit run memcpy'd to `0x5575b640`. The fix is
   not to edit the game: the port links **`-no-pie`** so the image loads at
   `0x400000` and the truncation is lossless. `pc_check_low_memory()` aborts at
   startup if that ever stops being true.

2. **bss sized for a 32-bit pointer.** `tools/pc/gen_data.py` emitted
   `.space N` blocks at their N64 size. `sched.c` declares
   `OSMesg D_80048C98[8]`; the listing says `.space 32`; at LP64 that needs 64,
   and the 32 bytes it overran were `scTaskMQ`, whose `mtqueue` became the
   message value `1`. Generated bss is now doubled — an exact upper bound,
   since only pointers grow and alignment never exceeds 8.

3. **`u32` is `unsigned long` in libreultra.** Its `<PR/ultratypes.h>` says
   `typedef unsigned long u32`, which is 8 bytes at `-m64`, so every struct it
   compiles has doubled fields while the game's headers disagree. `osViModeNtscLan1`
   read back as `ctrl = 0, width = 12574` — the port reported a 12574-pixel-wide
   display. `tools/pc/lu_lp64.h` is force-included ahead of it and claims its
   include guard; libreultra is a submodule and is also read by the matching
   build, so it could not be fixed in place.

A fourth bug was in the port's own scheduler and only showed up because LP64
work made the boot go further: `dispatch()` derived the *outgoing* ucontext
from `__osRunningThread`, which `pc_block_on` deliberately sets to NULL before
switching away. The blocked thread's registers were saved into the boot context
instead of its own slot, and the next thread to block overwrote them. It
survives with two alternating threads and crashes with eight.

## What does not work

* **The game never reaches the renderer.** `thread5_game` starts the audio
  thread and blocks on `gThreadInitializedMQ`; `auThreadMain`'s weak stub
  returns without posting. `gtlInit()` is never called. This is decompilation
  work, not porting work, and it gates everything below.
* **Audio is wired but never exercised.** `pcb_audio_queue` calls
  `AudioPlayerPlayFrame`; nothing calls it, because `osAiSetNextBuffer`'s only
  caller is `auThreadMain`. There is also a **known rate mismatch**: the N64 AI
  runs at whatever `osAiSetFrequency` was asked for and LUS's `AudioSettings`
  defaults to 44100. It is deliberately not "fixed" by guessing.
* **Input is wired but never exercised**, for the same reason. Rumble is
  unimplemented rather than faked.
* **Controller remappings may not persist.** Ship::Window and Ship::ControlDeck
  both need the Config at *construction*, while `Context::CreateDefaultInstance`
  constructs the Config itself — so the Context is assembled by hand here
  (see `lus_init`) to thread one Config through. That part works; what is
  untested is the save path, because no controller has been remapped.
* **The crash handler is off by default** (`KIRBY_PC_CRASHHANDLER=1` enables
  it). `Ship::CrashHandler` installs SIGINT/SIGTERM handlers whose body is
  `exit(1)`, which runs static destructors — GL teardown, thread-pool joins —
  from a signal handler. Neither is async-signal-safe.
* **Nothing else notices SIGTERM either**, which is why `src/pc/os_time.c`
  installs its own handler. Without it the process ignores Ctrl-C and `timeout`
  entirely; SDL does not synthesise `SDL_EVENT_QUIT` for it here.
* **Fullscreen on a virtual display wedges.** LUS persists
  `Window.Fullscreen.Enabled`; once it is `true`, SDL waits for a mode switch a
  virtual display never completes, `IsFrameReady` stays false, and every frame
  is silently dropped. That looks exactly like a broken renderer and is not
  one. `KIRBY_PC_WINDOWED=1` forces it off.
* **No game assets are committed yet.** `port/o2r/` is empty in the tree.
  The mount itself is verified: a 13.9 MB Torch-built `kirby64.o2r` from the
  asset workstream was mounted alongside the shader folder and the renderer
  kept running unchanged (1195 frames in 20 s), so dropping the archive into
  `port/o2r/` really is the whole integration on this side.
* **The RDP quirks the BattleShip notes warn about are entirely unexplored.**
  Tile masks, `SetTileSize` extents, IA/I4 uploads and `gDPSetPrimDepth` 2D
  layering cannot be hit by fill rectangles. Expect them the day the game
  submits its first real list. `src/pc/gfx_trace.c` is the tool for that and
  now decodes correctly at LP64 (it walked the list as `u32*` before, reading
  every command's low half twice).

## Building libultraship here

Three things were needed and none is obvious:

1. **SDL3 from source.** Commit `6f42b9c` migrated LUS to SDL3 and SDL3 is not
   in apt on Ubuntu 24.04. Built to `/usr/local`.
2. **Three stub files.** Ubuntu ships `libzip-dev` without `libzip-tools`, but
   `libzip-targets.cmake` imports `libzip::zipcmp`/`zipmerge`/`ziptool` as
   IMPORTED executables and hard-errors when `/usr/bin/zipcmp` is absent. LUS
   never runs them; empty executables at those paths are enough.
3. **A one-line patch to the LUS checkout.** `cmake/dependencies/common.cmake`
   downloads `stb_image.h` from `github.com/nothings/stb/raw/...`, which this
   environment's proxy answers 403 while allowing `raw.githubusercontent.com`.
   `file(DOWNLOAD)` does not fail the configure — it writes a zero-byte file —
   so the failure surfaces minutes later as "stbi_uc was not declared". The
   patch switches the host and adds a status check.

Everything else (ImGui, prism, thread-pool, monocypher) FetchContent-clones
from github over git, which this environment allows.
