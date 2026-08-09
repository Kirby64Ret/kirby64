# PC port: the platform surface, measured

This is not a plan. It is an inventory, taken from the built objects, of every
libultra symbol the game's own code actually calls. It bounds the porting work
in a way that reading the SDK headers does not: libultra has hundreds of
entry points and Kirby 64 uses 100.

Regenerate with the snippet at the bottom; it reads `build/src/*/*.o`, so it
stays honest as more of the game moves from assembly into C.

## Totals

| group | symbols | notes |
|---|---|---|
| os / io | 62 | the real platform layer |
| audio (`al*`, `n_al*`) | 25 | library logic is portable; only the AI sink is not |
| `gu*` | 11 | pure math, reusable verbatim |
| misc | 2 | |
| **total** | **100** | |

## os/io, by subsystem

These are the ones that need an actual backend.

**controllers / SI — 17** (largest group, and the least interesting)
`osContInit` `osContStartQuery` `osContGetQuery` `osContStartReadData`
`osContGetReadData` `osMotorInit` `__osMotorAccess` `osEepromProbe`
`osEepromRead` `osEepromWrite` `osEepromLongRead` `osEepromLongWrite`
`osPfsInitPak` `osPfsAllocateFile` `osPfsDeleteFile` `osPfsFindFile`
`osPfsReadWriteFile`

Controller reads map onto any input API. EEPROM and the Controller Pak are
save data — back them with a file. Rumble is a no-op or a gamepad rumble call.

**video (VI) — 12**
`osCreateViManager` `osViSetMode` `osViSetEvent` `osViSwapBuffer` `osViBlack`
`osViSetYScale` `osViGetCurrentFramebuffer` `osViGetNextFramebuffer`
`osViModeNtscLan1` `osViModeMpalLan1` `osViModeFpalLan1` `osVirtualToPhysical`

The VI is a scanout engine: a mode, a framebuffer pointer, and a vsync event.
Swapping buffers and signalling the retrace message is most of it.

**threads / scheduler — 10**
`osCreateThread` `osStartThread` `osStopThread` `osDestroyThread`
`osGetThreadPri` `osSetThreadPri` `osSetIntMask` `__osGetActiveQueue`
`osSpTaskYield` `osSpTaskYielded`

Maps onto host threads. Note the game relies on N64 priority semantics —
strict priority, no preemption between equal priorities — so a naive
1:1 mapping to OS threads can change behaviour. Worth considering a
cooperative scheduler instead.

**messages — 4**
`osCreateMesgQueue` `osSendMesg` `osRecvMesg` `osSetEventMesg`

Blocking queues. Straightforward, but they are the synchronisation backbone
for everything above.

**DMA / PI / cart — 4**
`osCartRomInit` `osCreatePiManager` `osEPiLinkHandle` `osEPiStartDma`

All asset loading goes through here. On PC the "cartridge" is the ROM file (or
extracted assets), and DMA becomes a read or a memcpy.

**RSP / RDP — 3**
`osSpTaskLoad` `osSpTaskStartGo` `osDpSetNextBuffer`

This is the renderer boundary, and the single largest piece of work in the
whole port. The game hands over an F3DEX2 display list; something has to
interpret it. Everything else on this page is plumbing by comparison.

**cache — 4**
`osInvalDCache` `osInvalICache` `osWritebackDCache` `osWritebackDCacheAll`

No-ops on PC.

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

## Honest sizing

The 62 os symbols are mostly small. `osSpTaskLoad` / `osSpTaskStartGo` /
`osDpSetNextBuffer` are three of them and represent an F3DEX2 interpreter plus
a rasteriser backend — comparable in effort to everything else here combined.
Any estimate that counts symbols rather than weighting that one will be wrong.

The prerequisite is unchanged: a PC port needs essentially all of the game's
own code in C. Every remaining `#pragma GLOBAL_ASM` is a function that would
be missing from the binary.

## Regenerating this

```sh
python3 - <<'EOF'
import re, subprocess, glob
called = set()
for obj in glob.glob('build/src/*/*.o'):
    o = subprocess.run(['mips-linux-gnu-nm', '-u', obj],
                       capture_output=True, text=True).stdout
    for l in o.split('\n'):
        p = l.split()
        if len(p) == 2 and p[0] == 'U' and p[1].startswith(('os', '__os')):
            called.add(p[1])
print(len(called)); print('\n'.join(sorted(called)))
EOF
```
