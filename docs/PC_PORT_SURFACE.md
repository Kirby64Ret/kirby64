# PC port: the platform surface, measured

This is not a plan. It is an inventory, taken from the built objects, of what
the port still needs. Nothing here is estimated; every number comes from
compiling the tree and reading the symbol table.

Regenerate the whole page's numbers with:

    make -f Makefile.pc gap

## The headline

    12974 symbols defined, 1402 still missing

      un-decompiled functions     1081
      unresolved data              220
      libultra os/io                60
      audio library                  9
      gu math                        5
      libc / other                  27

The platform layer -- the part that is actually *porting* work -- is 101
symbols. The other 1301 are decompilation work that has to happen anyway.

## The game's own C already builds natively

All 151 files in `src/` compile with host gcc, today, with no source changes.
That was worth checking early and the result was better than expected.

**The port is 32-bit, and that was measured rather than chosen.** At `-m64`
three files fail:

  * `rdp_reset.c` and `ovl4_1.c` -- `gbi.h` casts a pointer into a 32-bit
    display-list word inside a *static initializer*, which stops being a
    constant expression when pointers are 8 bytes wide.
  * `fault.c` -- `va_list` is an array type on x86-64, so `(va_list)ALIGN4(...)`
    is an invalid cast.

At `-m32` all 151 compile clean. ILP32 also keeps every struct layout and every
pointer-bearing data table bit-identical in shape to the N64's, which is what
lets the translated data tables link at all. Going 64-bit later means reworking
segmented addressing and the display-list format -- a real project, and not a
prerequisite for anything.

## The data listings translate mechanically

`asm/data/**/*.s` holds ~79,000 entries of game data that the N64 build
assembles directly and a native build cannot. This looked like a second
decompilation project. It is not: splat has already resolved every pointer word
to a *symbol name* rather than a raw address -- 7,161 of them -- so the
listings can be translated to C by a script.

`tools/pc/gen_data.py` does that, emitting 9,003 symbols across 177 C files,
all of which compile. It cut the unresolved-data count from 1,959 to 220.

Two things about it are worth knowing:

  * It is **PC-only** and writes nothing the N64 build reads. Migrating data
    into C for the *matching* build means reproducing the ROM's byte layout
    exactly, which is the same hard problem as rodata migration. Here only
    semantics matter, so the two jobs are unrelated and this one cannot break
    the ROM.
  * The generated files include **no game headers**. Many of these symbols are
    declared elsewhere with real types, and a `u32 D_800E1B50[]` definition
    would conflict with an `extern struct Foo *D_800E1B50[]` declaration. C does
    no cross-TU type checking at link time, so isolation is exactly what makes
    the set compile.

Values are emitted as values, not as a byte image: `.float 0.315` becomes an
`f32`, `.word 0x3F800000` becomes a `u32`. Copying the ROM's big-endian bytes
instead would preserve the offsets and corrupt every multi-byte number on a
little-endian host.

## The 101 platform symbols

`gu*` (5 remaining) is pure math and `libreultra/src/gu` already has it.
The audio library logic is portable; only the AI sink is not.

The os/io group is where the actual work is. Grouped by what they need:

**controllers / SI — 17** `osContInit` `osContStartQuery` `osContGetQuery`
`osContStartReadData` `osContGetReadData` `osMotorInit` `__osMotorAccess`
`osEepromProbe` `osEepromRead` `osEepromWrite` `osEepromLongRead`
`osEepromLongWrite` `osPfsInitPak` `osPfsAllocateFile` `osPfsDeleteFile`
`osPfsFindFile` `osPfsReadWriteFile`

The largest group and the least interesting. Controller reads map onto any
input API; EEPROM and the Controller Pak are save data, so back them with a
file; rumble is a no-op or a gamepad call.

**video (VI) — 12** `osCreateViManager` `osViSetMode` `osViSetEvent`
`osViSwapBuffer` `osViBlack` `osViSetYScale` `osViGetCurrentFramebuffer`
`osViGetNextFramebuffer` `osViModeNtscLan1` `osViModeMpalLan1`
`osViModeFpalLan1` `osVirtualToPhysical`

A scanout engine: a mode, a framebuffer pointer, a vsync event. Swapping
buffers and signalling retrace is most of it.

**threads / scheduler — 10** `osCreateThread` `osStartThread` `osStopThread`
`osDestroyThread` `osGetThreadPri` `osSetThreadPri` `osSetIntMask`
`__osGetActiveQueue` `osSpTaskYield` `osSpTaskYielded`

The game relies on N64 priority semantics -- strict priority, no preemption
between equal priorities -- so a naive 1:1 mapping onto OS threads can change
behaviour. A cooperative scheduler is worth considering instead.

**messages — 4** `osCreateMesgQueue` `osSendMesg` `osRecvMesg` `osSetEventMesg`

Blocking queues, and the synchronisation backbone for everything above.

**DMA / PI / cart — 4** `osCartRomInit` `osCreatePiManager` `osEPiLinkHandle`
`osEPiStartDma`

All asset loading goes through here. On PC the cartridge is the ROM file and
DMA becomes a read or a memcpy.

**RSP / RDP — 3** `osSpTaskLoad` `osSpTaskStartGo` `osDpSetNextBuffer`

The renderer boundary, and the single largest piece of work in the port. The
game hands over an F3DEX2 display list and something has to interpret it.
Everything else on this page is plumbing by comparison -- any estimate that
counts symbols rather than weighting these three will be wrong.

**cache — 4** `osInvalDCache` `osInvalICache` `osWritebackDCache`
`osWritebackDCacheAll` -- no-ops on PC.

**timers — 2** `osGetCount` `osGetTime`
**audio sink — 2** `osAiSetFrequency` `osAiSetNextBuffer`
**other — 4** `osInitialize` `osAfterPreNMI` `osSetTime` `osTvType`

## What is already in the tree

`libreultra/src/` contains real libultra sources (os, io, gu, audio, libc,
sched, sp, rg, gt). The `gu*` math is directly reusable. `libreultra/src/
libnaudio/*.c` is the real n_audio source and has already been used to match
21 functions of `src/main/libn_audio.c` near-verbatim.

So the port does not start from nothing: the pure-computation half of libultra
is present, and only the parts that touch hardware need replacing.

## The order of work

The 1,081 un-decompiled functions gate everything. Until they land the binary
cannot link no matter how complete the platform layer is, and that is why the
matching decompilation is still the critical path rather than the renderer.

What *can* proceed in parallel, and has: the native build itself, the data
translation, and this measurement. `make -f Makefile.pc gap` re-reads the
objects, so the numbers on this page move on their own as functions are
matched -- there is no separate porting metric to maintain.
