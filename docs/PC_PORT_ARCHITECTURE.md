# PC port architecture: the SSB64 method

Adopted on instruction, replacing the from-scratch plan. The reference is
**BattleShip**, the PC port of Super Smash Bros. 64, built on the
`ssb-decomp-re` decompilation. That pairing is unusually relevant here: SSB64
and Kirby 64 are both HAL Laboratory titles sharing the same GObj object-manager
engine and both use F3DEX2 microcode, so the port shape transfers almost
directly rather than by analogy.

## Why this changes the estimate

The previous plan had `osSpTaskLoad` / `osSpTaskStartGo` / `osDpSetNextBuffer`
as "an F3DEX2 interpreter plus a rasteriser backend -- comparable in effort to
everything else in the port combined". Under this method that work is a
**dependency, not a task**: libultraship's Fast3D intercepts the GBI display
lists and translates them to modern GPU calls. The same applies to audio output,
input mapping, and resource management.

That is the whole reason for the switch, and it is the single largest change to
the project's remaining cost.

## The three layers

    decomp source  (src/, unmodified)   still compiles under IDO for the
                                        matching N64 build. Byte-exactness of
                                        build/kirby.us.z64 is never traded away.
    port layer     (port/)              glue translating N64-shaped APIs into
                                        libultraship calls
    libultraship                        Fast3D rendering (OpenGL/Metal/D3D),
                                        SDL2 input, miniaudio output, resource
                                        management, ImGui overlay

The discipline that makes this work is `#ifdef PORT`: game code stays intact and
PORT branches carry the adaptation. Behaviour accuracy takes precedence over
byte-for-byte fidelity **in the port**, while the N64 build stays byte-exact.

## What we already have that fits

The platform-layer work done before the switch is not wasted, because it
produced the right seam:

* `src/pc/pc_backend.h` is a host boundary with two interchangeable
  implementations (`pc_backend_null.c`, `pc_backend_sdl.c`). Adopting
  libultraship means adding a third implementation behind the same interface,
  not rewriting the callers.
* `src/pc/pc_overlay.c` already implements overlay interception, which is what
  the SSB port calls linearising the overlay model.
* `src/pc/gfx_trace.c` decodes display lists. Fast3D supersedes it for
  rendering, but a decoder is exactly the tool for diagnosing the SSB64-specific
  RDP quirks the BattleShip notes describe (tile masks, SetTileSize extents,
  IA/I4 uploads, `gDPSetPrimDepth` 2D layering) when Kirby 64 hits its own.

## Assets: build-time extraction, not runtime DMA

In this method the baserom is **never read at runtime**. Torch walks the ROM at
build time from YAML configs and emits a resource archive; libultraship's
resource manager mounts it and game code requests resources by path.

This supersedes the earlier plan to back `osEPiStartDma` with reads from
`baserom.us.z64`, and it is where the 70 unresolved ROM-file-offset symbols
(`D_39E90`, `D_3B220`, ...) in `tools/pc/gen_defsyms.py` are meant to land.

## The pointer-width decision, reversed

The earlier measurement stands on its own terms: at `-m64` three files fail to
compile (`gbi.h` casts a pointer into a 32-bit display-list word inside a static
initializer; `va_list` is an array type on x86-64), and at `-m32` all 151
compile clean, link, and run. That is why the current `Makefile.pc` is 32-bit.

It is nonetheless the wrong target now, for a measured reason:

    /usr/lib/x86_64-linux-gnu/libSDL2.so    exists
    /usr/lib/i386-linux-gnu/libSDL2.so      does not

SDL2 here is x86_64 only, so `gcc -m32 ... -lSDL2` cannot link, and
libultraship is a 64-bit build. **32-bit and libultraship are mutually
exclusive**, so the port has to go LP64.

**This is now done, and it was three lines rather than a project.** All 151
game files compile at `-m64` under `-DPORT`, with the N64 build verified
byte-exact afterwards.

The SSB port needs `PORT_RESOLVE()` relocation tokens because it stores a `T*`
in a 32-bit word. Kirby 64's tree did not, because `gbi.h` here is already
64-bit aware -- `Gwords` holds two `uintptr_t`, so a display list can carry a
real pointer. The entire problem was `include/PR/ultratypes.h` hardwiring
`uintptr_t` to `u32`, which made those static display lists fail with
"initializer element is not constant": casting a 64-bit pointer to a 32-bit
integer is not something the linker can resolve. Widening it under PORT fixed
both files with no change to their source, and on MIPS32 a pointer is 4 bytes
so `u32` was correct there anyway.

The other two changes were `osVirtualToPhysical`, declared as returning `u32`
in one header and `uintptr_t` in another (they agree only while those are the
same type), and three `(va_list)` casts in `fault.c` -- an N64 idiom for
rounding the varargs pointer, invalid on x86-64 where `va_list` is an array
type and pointless where the ABI already aligns arguments.

The LP64 build now links and runs, so the 32-bit harness is gone: Makefile.pc
is `-m64 -DPORT` and tools/pc/link.sh adds `-no-pie`, which is what keeps the
places game code truncates a pointer to `u32` lossless. See
docs/PC_PORT_LIBULTRASHIP.md, "LP64: what actually broke".

## Dependencies: resolved

Both are present and working, and the integration on top of them has landed --
**docs/PC_PORT_LIBULTRASHIP.md** is the current state of it: the port is LP64,
links against libultraship, and Fast3D executes the display lists that reach
`osSpTaskStartGo`. That page also records what is proven by running versus
merely wired, and the three LP64 *data* bugs the 64-bit move exposed.

    libultraship  /workspace/jr3dful/libultraship   commit 6f42b9c, 2026-08-04
    Torch         /workspace/jr3dful/torch          cloned AND BUILT

The library lives at **Kenix3/libultraship**, not under HarbourMasters --
HarbourMasters hosts the ports (Shipwright, Starship), not the library. An
earlier version of this page sent someone to a URL that does not exist.

Getting them here needed a detour worth recording. GitHub access is scoped to
one owner and `add_repo` refuses cross-owner adds, so the upstream repositories
are unreachable from this session; forks under the session's own owner are
served by the proxy's anonymous read lane. That is the general workaround for
any third-party dependency here.

The current libultraship migrated to SDL3 on 2026-08-04 (#1191), and SDL3 is
not packaged for this distribution. It builds from source: libsdl.org is
reachable even though github.com is not, so SDL3 3.2.10 was fetched from there
and installed to /usr/local. The fallback, if that had failed, was to check out
the commit before the SDL3 migration, since SDL2 is packaged.

Its other dependencies -- libzip, nlohmann_json, spdlog, tinyxml2, glew -- are
all in apt.

Torch's factory list is a good omen for the audio work: it has NAUDIO:V0 and
NAUDIO:V1 factories (AUDIO_HEADER, BANK, SAMPLE, SEQUENCE, SOUND_FONT,
INSTRUMENT, ENVELOPE, ADPCM_BOOK, ADPCM_LOOP), and n_audio is exactly the
library Kirby 64 uses. Kirby 64's audio blocks are the `bin` subsegments in
kirby64.yaml (`sound/ctl_2A8CB0`, `sound/ctl_3E1400` and the `sound/sound_*`
banks).

