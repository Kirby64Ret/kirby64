# Build-time asset extraction with Torch

The port follows the SSB64/BattleShip method: the baserom is never read at
runtime. Torch walks it at build time from YAML and emits an `.o2r` resource
archive that libultraship's resource manager mounts.

Run it with:

    torch o2r baserom.us.z64 -s port/yamls -d build/pc

Current result: **10,583 resources, 30.7 MB uncompressed, 13.9 MB archive, zero
errors**, in about 3.5 seconds. Every extracted byte was verified against the
ROM (see "Verification" below).

## Where things live

    port/yamls/config.yml         keyed on the baserom SHA-1; segment table
    port/yamls/us/audio.yml       hand-written, see below
    port/yamls/us/image/          1,486 TEXTURE + TLUT nodes
    port/yamls/us/image_raw/      3,049 unidentified image-bank blocks
    port/yamls/us/geo/            1,234 model/geo blocks
    port/yamls/us/anim/           4,236 animations
    port/yamls/us/misc/             546 level and misc blocks
    port/yamls/us/bin.yml            27 boot binaries
    tools/pc/gen_torch_yaml.py    regenerates everything except audio.yml

Everything except `audio.yml` is generated. Do not hand-edit it.

## The headline finding: Kirby 64's audio is not the format Torch expects

Torch's `NAUDIO:V0` and `NAUDIO:V1` factories are **unusable for Kirby 64**, and
the reason is structural rather than a matter of offsets.

`NAUDIO:V0` parses the SM64 / Ocarina "Audiobank + Audiotable" format: a pair of
index files whose headers are `u16 magic; u16 numEntries; {u32 off, u32 len}[]`
with magic 1 for the ctl and 2 for the tbl, each ctl entry beginning with a
`{numInstruments, numDrums, sharedFlag}` header, and instruments/drums/envelopes
laid out in that dialect. `AudioManager::parse_seq_file` asserts on those magic
values.

Kirby 64 predates that format. It uses the stock **N64 SDK libaudio (`n_audio`)
structures** that `alBnkfNew()` and `alSeqFileNew()` relocate:

    ALBankFile   s16 revision = 0x4231 ('B1'); s16 bankCount; u32 bankArray[]
    ALBank       s16 instCount; u8 flags; u8 pad; s32 sampleRate;
                 u32 percussion; u32 instArray[]
    ALInstrument u8 volume, pan, priority, flags; u8 trem[4]; u8 vib[4];
                 s16 bendRange; s16 soundCount; u32 soundArray[]
    ALSound      u32 envelope; u32 keyMap; u32 wavetable;
                 u8 samplePan, sampleVolume, flags
    ALWaveTable  u32 base; s32 len; u8 type; u8 flags;
                 union { {u32 loop; u32 book} adpcm; {u32 loop} raw }
    ALSeqFile    s16 revision = 0x5331 ('S1'); s16 seqCount; {u32 off, s32 len}[]

There is no bank index, no drum list, no `shared` flag, and no tbl header at all
— the tbl is one flat run of ADPCM data addressed by `ALWaveTable.base`. The two
formats have nothing in common beyond both describing instruments, so no amount
of configuration bridges them.

**This is the same shape of problem SSB64 hit, and it has the same answer, but
it does not need new code.** Torch already ships an ALBankFile walker, written
for Banjo-Kazooie — another SDK libaudio title — as `BK64:SOUNDFONT_CTL` and
`BK64:SOUNDFONT_TBL` in `src/factories/bk64/SoundfontTblFactory.cpp`. Despite
the namespace it contains nothing Banjo-specific. It parses Kirby 64's banks
unmodified.

So: **audio needs no custom factory.** Point the BK64 soundfont factories at the
right offsets and it works. That is the useful difference from SSB64, which did
need custom factories for its relocatable data.

### Which tbl goes with which ctl

Not guessed from the splat subsegment names. `kirby64.yaml` lists

    0x250320  sound/sound_250320      0x2A8CB0  sound/ctl_2A8CB0
    0x2B1510  sound/sound_2B1510      0x3E1400  sound/ctl_3E1400
    0x3E6BC0  sound/sound_3E6BC0      ...

and adjacency alone would let you pair either ctl with either tbl. The answer is
in the game's own data: `auPublicSettings` (`asm/data/main/audio.data.s`, ROM
0x3FF50) is the `AuSettings` struct `auLoadAssets()` reads in
`src/main/audio.c`:

    +0x14 bank1Start  0x003E1400   +0x18 bank1End 0x003E6BC0
    +0x1C table1Start 0x003E6BC0
    +0x20 bank2Start  0x002A8CB0   +0x24 bank2End 0x002B1510
    +0x28 table2Start 0x002B1510
    +0x2C romSbkStart 0x00250320

so `ctl_3E1400` pairs with `sound_3E6BC0`, and `ctl_2A8CB0` pairs with
`sound_2B1510`. Each ctl is immediately followed by its own tbl; they are not
interleaved.

The data confirms it independently. Walking each ctl and taking
`max(wavetable.base + len)` gives the exact tbl length:

    bank1 (SFX)    0xB89CC  -> aligned 0xB89D0 = gap to next subsegment  ✓
    bank2 (music)  0x12FEEE -> aligned 0x12FEF0 = gap to next subsegment ✓

A wrong pairing would not produce a consistent length in either direction.

### What the banks actually contain

Parsed from the ROM, not estimated:

| | bank1 (SFX) | bank2 (music) |
|---|---|---|
| ctl offset / size | 0x3E1400 / 0x57C0 | 0x2A8CB0 / 0x8860 |
| tbl offset / size | 0x3E6BC0 / 0xB89D0 | 0x2B1510 / 0x12FEF0 |
| sample rate | 44100 | 32000 |
| instrument slots | 1 | 57 (56 distinct + percussion at ctl+0x2BD0) |
| ALSound entries | 106 | 171 |
| distinct ADPCM wavetables | 106 | 139 |
| envelopes / keymaps | 1 / 106 | 56 / 171 |
| ADPCM books / loops | 106 / 34 | 139 / 95 |

Plus 63 sequences in the `'S1'` file at 0x250320 (0x58990 bytes), each in SDK
compressed-MIDI form — every one begins `00 00 00 44`, which is `trackOffset[0]`
pointing just past the 0x44-byte `ALCMidiHdr` of 16 track offsets and a
division. Total 245 distinct ADPCM samples across both banks.

Those numbers are plausible for a 1999 platformer of this size and, more to the
point, they are self-consistent: the wavetable extents tile their tbl exactly.

### Why audio is exported as raw blocks rather than decoded samples

`SOUNDFONT_CTL`/`SOUNDFONT_TBL` and the `BLOB` for the sequence bank emit the
ROM bytes verbatim. That is the right call here rather than a limitation:
`src/main/audio.c` already contains decompiled `alBnkfNew()` and
`alSeqFileNew()`, so the port relocates the bank itself exactly as the N64 build
does. Splitting the sequence file into per-sequence resources would actively
break it — `alSeqFileNew()` patches `seqArray[i].offset` in place against the
base address of the whole file.

If per-sample AIFF export is wanted later (for a music-replacement feature, say)
that does need a new factory, because the BK64 walker computes sizes but does
not decode ADPCM.

## Textures

1,486 `TEXTURE` nodes, generated from `assets_image.json`. Format comes from the
filename infix (`3.i4.png` is I4); size is computed as `ceil(w*h*bpp/8)` because
the manifest does not store it.

That size math was verified rather than assumed: sorting all 4,535 image entries
by offset within their bank and differencing gives **4,444 gaps of exactly 0, 80
of 16, 3 of 528, and zero overlaps**. The banks are densely packed, so any wrong
size would show up immediately as a negative gap.

The 3,049 entries carrying `meta.size` instead of `meta.dims` are unidentified
raw blocks and are emitted as `BLOB`. They are a real gap in identification, not
in extraction.

CI4/CI8 nodes deliberately do not carry `tlut:`/`colors:`. Torch synthesises an
extra TLUT asset when it sees those keys, so a palette shared by several CI
textures would be duplicated once per referencing texture. The two real palettes
are emitted once each as explicit `TLUT` nodes instead. Nothing is lost — see
the next section for why static texture binding does not apply to this game
anyway.

## Display lists: they decode, but nothing binds them to textures

Torch's `DisplayListFactory` parses Kirby 64's F3DEX2 correctly. Feeding it a
real entry point produces exactly what it should — `gsDPPipeSync`,
`gsSPClearGeometryMode`, `gsDPSetCombineLERP`, `gsDPSetTile`, `gsSPVertex` with
the vertex array pulled out into a proper `Vtx[]`, `gsSP2Triangles`,
`gsSPEndDisplayList`. `tools/pc/gen_torch_yaml.py --geo-gfx` emits 3,307 display
lists across 382 geo blocks and Torch processes them without error.

Two things stop that being immediately useful, and the first is the important
one.

**Every texture address in every Kirby 64 display list is a placeholder.** Of
the 6,843 `gsDPSetTextureImage` commands reachable from the geo blocks, *all
6,843* have a segment-0x00 address — values like `0x0000000A`, which are indices,
not pointers. The real binding lives in the geo header: field `+0x0C`
(`img_refs`) is a null-terminated list of pointers **to the SETTIMG commands
themselves**, which the loader rewrites with real addresses when it loads a
bank. Verified on a 200-block sample: 830 of 830 `img_refs` entries point at a
word whose opcode byte is 0xFD (`G_SETTIMG`).

So Torch cannot resolve a Kirby texture from a display list, and no upstream
factory can, because the information is not there. Textures must be exported
standalone — which is what the `image/` nodes do — and the port must patch them
in at load time exactly as the N64 code does. This is the texture-side analogue
of the audio finding, and it is why `assets_image.json` is load-bearing rather
than merely convenient.

**Segment 0x04 is per-geo-block.** All 689 geo blocks are self-contained: every
header pointer is `0x04xxxxxx` with `xxxxxx` less than that block's own size, so
segment 4 resolves to the block's own ROM offset. Torch's `:config: segments:`
override is per-yml-*file*, so a GFX export needs one yml per block — which is
what `--geo-gfx` emits. A further 1,187 of 1,620 `gsSPDisplayList`/branch targets
point into segment 0x0E, a shared segment supplied at runtime, and are likewise
unresolvable statically.

Geo blocks are therefore emitted as `BLOB` by default. The port walks them with
the game's own geo code, which it has to do regardless.

## Verification

Every non-texture resource was read back out of the archive and compared against
the ROM: **9,092 / 9,092 byte-exact**. For the 1,486 textures, the ROM texels
appear verbatim inside the `OTEX` payload: **1,486 / 1,486**. Audio was checked
separately and all five blocks are byte-exact.

Re-run the check any time with the snippet in `tools/pc/gen_torch_yaml.py`'s
`--check` mode plus a `zipfile` read of the archive.

## Two Torch behaviours worth knowing

**Torch reads the top byte of every offset as a segment number.**
`Decompressor::TranslateAddr` calls `IS_SEGMENTED(addr)`, which is true for
`(addr >> 24)` in `1..0x1F`. Kirby 64's ROM is 32 MB and its assets run to
0x1E8BB50, so every offset at or above 0x01000000 — a large share of the image,
geo and animation banks — is misread as segmented and fails with *"Segment data
missing from game config, please add an entry for segment 1"*. The fix is the
identity map in `config.yml`: segment N maps to `N << 24`, making the
translation a no-op. Games with ROMs under 16 MB never hit this, which is why no
upstream config does it.

**`TEXTURE` nodes require a `symbol:` key even for archive export.**
`TextureFactory::parse` reads it with no default and throws, which aborts the
entire run. The generator emits `k64_tex_<offset>`.

## How much of this comes from kirby64.yaml

Almost none, which is worth stating because it is the natural assumption.

`kirby64.yaml` resolves the ROM into 151 code segments plus exactly **nine**
opaque `bin` subsegments. The whole asset region 0x4AA8F0–0x1E8BB50 is a single
`bin` entry named `game_assets` marked `extract: False`. There is no texture,
geo or animation metadata in it at all.

So kirby64.yaml mechanically drives **5 of 10,583 resources** — the audio
blocks, and even those needed `auPublicSettings` to pair correctly. The other
10,578 come from `assets_image.json`, `assets_geo.json` and `assets.json`, and
from those the generation *is* fully mechanical: no per-asset hand entry, and
the only manual decisions are format-class routing and the exclusions below.

Generation covers **100 % of the identified assets**. What it does not cover is
identification itself: 3,049 image-bank blocks and 545 geo-bank blocks are still
unlabelled `block.bin`, and they extract as byte-exact blobs rather than as
typed resources.

Seven catch-all entries in `assets.json` (`bin/kirby.u.4AA8F0.bin` and friends,
up to 3.3 MB each) are dropped because they simply span thousands of the
fine-grained entries; emitting both would duplicate ~10 MB into the archive.
One nested alias survives — `bin/kirby_model.bin` sits inside
`assets/geo/bank_2/7/geo.bin` — and is reported by the generator as harmless.
