#!/usr/bin/env python3
"""Generate the Torch extraction config for the PC port, from the repo's own asset metadata.

Torch walks `port/yamls/config.yml`, keyed on the baserom SHA-1, then recursively
loads every `.yml` under `port/yamls/us/`. Each top-level mapping in those files
is one resource in the emitted archive. There are ~5,700 of them, so they are
generated rather than hand-maintained -- same argument as tools/pc/gen_data.py.

WHAT DRIVES THE GENERATION, AND WHAT DOES NOT

kirby64.yaml (the splat config) is NOT the source for most of this, which is
worth saying plainly because it is the obvious guess. splat resolves the ROM
into 151 code segments plus exactly 9 opaque `bin` subsegments; the entire
asset region 0x4AA8F0..0x1E8BB50 is a single `bin` entry named `game_assets`
with `extract: False`. There is no texture, geo or animation metadata in it at
all -- `grep -E '\b(i4|ci8|rgba16)\b' kirby64.yaml` finds nothing.

So kirby64.yaml drives only the audio blocks (9 subsegments, and really 5 of
them), and those are hand-written in us/audio.yml because their ctl<->tbl
pairing has to come from the game's `auPublicSettings` table rather than from
subsegment adjacency. Everything else comes from the three JSON manifests at
the repo root, which is where the asset identification work actually lives:

    assets_image.json   4535 entries  textures + raw image-bank blocks
    assets_geo.json     1234 entries  model/geo blocks + raw blocks
    assets.json         4816 entries  animations, level data, misc, boot bins

TRAPS, in the order they bite

1.  The texture FORMAT is in the filename, not the metadata. `meta` carries
    only `dims`; `assets/image/bank_0/3.i4.png` is I4 because of the `.i4.`
    infix. An entry with `meta.size` instead of `meta.dims` is a raw block and
    must become a BLOB, not a TEXTURE -- there are 3049 of those and treating
    them as images produces 3049 garbage textures.

2.  Sizes are NOT stored for textures and must be computed as
    ceil(w * h * bpp / 8). This was verified rather than assumed: sorting all
    4535 image entries by offset within their bank and differencing gives 4444
    gaps of exactly 0, 80 of 16, 3 of 528, and ZERO overlaps. If the size math
    were wrong anywhere that check would show negative gaps.

3.  assets.json contains coarse catch-all regions -- `bin/kirby.u.4AA8F0.bin`
    is 3.3 MB and simply spans thousands of the fine-grained entries. Emitting
    those alongside the fine entries duplicates ~10 MB into the archive. They
    are dropped by _is_catchall(); the small genuine boot binaries in `bin/`
    (rspboot, ipl3font, ...) are kept.

4.  Torch names a resource `<yml path minus extension>/<node key>`. A node key
    of `audio/sfx_bank_ctl` inside `us/audio.yml` becomes `audio/audio/...`.
    Node keys here therefore carry no directory component; the directory comes
    from where the yml file is written.

5.  CI4/CI8 nodes deliberately do NOT set `tlut`/`colors`. Torch's
    TextureFactory synthesises an extra TLUT asset when it sees those keys
    (TextureFactory.cpp, `Companion::AddAsset`), so a palette shared by several
    CI textures would be emitted once per referencing texture under a different
    symbol. The 4 real palettes are emitted once each as explicit TLUT nodes
    instead. Kirby patches texture and TLUT addresses into its display lists at
    runtime through the geo header's img_refs list anyway, so nothing is lost
    by not binding them statically -- see the note in us/geo/README-ish header
    comments and the report in docs/.

6.  `symbol:` is mandatory on TEXTURE nodes. TextureFactory::parse reads it
    with no default and throws, and Torch turns that into a std::terminate that
    kills the whole run -- 10,000 good resources lost to one missing key. It is
    emitted unconditionally even though an o2r export never uses it.

7.  Index numbers in `assets/<class>/bank_N/<idx>/...` are unique only WITHIN a
    bank. Pooling several banks into one yml collapses them onto one namespace
    and YAML silently keeps the last definition, so the archive comes out short
    and the surviving entries point at the wrong ROM ranges. Every render path
    goes through assert_unique().

8.  Geo blocks are emitted as BLOB, not GFX. Their display lists ARE decodable
    (verified: Torch's DisplayListFactory produces correct F3DEX2 for them),
    but every geo block is its own segment-0x04 base -- all 689 blocks have
    header pointers of the form 0x04xxxxxx with xxxxxx < the block's own size.
    Torch's `:config: segments` mapping is per-yml-FILE, so a GFX-based export
    needs one yml file per geo block, and the display lists' texture addresses
    are runtime-patched placeholders (0x0000000A and friends) that Torch cannot
    resolve -- all 6843 G_SETTIMG commands in the game carry a segment-0x00
    address, with the real binding held in the geo header's img_refs list. See
    --geo-gfx for the opt-in per-block GFX emission, and docs/PC_PORT_ASSETS.md
    for the measurement.

One more thing that is not a trap in this file but bites the moment you run
Torch: `port/yamls/config.yml` carries an IDENTITY segment map (segment N ->
N << 24). Torch reads the top byte of every offset as a segment number, so
every asset at or above ROM 0x01000000 -- most of this game -- fails without it.

Usage:
    tools/pc/gen_torch_yaml.py                 # write port/yamls/us/
    tools/pc/gen_torch_yaml.py --check         # report only, write nothing
    tools/pc/gen_torch_yaml.py --geo-gfx       # additionally emit GFX nodes
"""
import argparse
import json
import os
import re
import struct
import sys
from collections import Counter, defaultdict

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
OUT = os.path.join(REPO, "port", "yamls", "us")
ROM_PATH = os.path.join(REPO, "baserom.us.z64")

# Bits per pixel per N64 texture format. Keys are the filename infixes used by
# assets_image.json; values feed both the size computation and the Torch
# `format:` key (which is the same token, upper-cased).
BPP = {
    "i4": 4, "i8": 8,
    "ia4": 4, "ia8": 8, "ia16": 16,
    "ci4": 4, "ci8": 8,
    "rgba16": 16, "rgba32": 32,
}

IMAGE_EXT = re.compile(r"\.([a-z0-9]+)\.png$")
# Catch-all region dumps in assets.json; see trap 3.
CATCHALL = re.compile(r"^bin/kirby\.u\.[0-9A-Fa-f]+\.bin$")


def _is_catchall(name, size):
    return bool(CATCHALL.match(name)) and size > 0x10000


def _ident(s):
    """Torch node keys become C identifiers under `code` export, so keep them safe."""
    return re.sub(r"[^0-9A-Za-z_]", "_", s)


def load_manifests():
    def j(p):
        with open(os.path.join(REPO, p)) as f:
            return json.load(f)
    return j("assets_image.json"), j("assets_geo.json"), j("assets.json")


def parse_images(img):
    """-> (textures, palettes, blobs); each item is a dict ready to render."""
    textures, palettes, blobs = [], [], []
    for name, v in img.items():
        off = int(v["offsets"]["us"][0], 16)
        bank = int(re.search(r"bank_(\d+)", name).group(1))
        stem = _ident(name.split("/", 3)[-1].rsplit(".", 1)[0].replace("/", "_"))
        m = IMAGE_EXT.search(name)
        if not m:
            blobs.append(dict(bank=bank, key=stem, offset=off,
                              size=int(v["meta"]["size"], 16), src=name))
            continue
        fmt = m.group(1)
        w, h = v["meta"]["dims"]
        size = (w * h * BPP[fmt] + 7) // 8
        # A "palette" here is any RGBA16 image referenced through another
        # entry's meta.pal. Emitting it as TLUT rather than RGBA16 is what lets
        # the port upload it with gsDPLoadTLUT instead of as a 4x2 picture.
        item = dict(bank=bank, key=stem, offset=off, fmt=fmt.upper(),
                    width=w, height=h, size=size, src=name)
        textures.append(item)
    # Second pass: promote anything named as somebody's palette.
    pal_names = set()
    for v in img.values():
        for p in v["meta"].get("pal", []):
            pal_names.add(p)
    keep = []
    for t in textures:
        if t["src"] in pal_names:
            t["colors"] = t["width"] * t["height"]
            palettes.append(t)
        else:
            keep.append(t)
    return keep, palettes, blobs


def parse_geo(geo):
    out = []
    for name, v in geo.items():
        off = int(v["offsets"]["us"][0], 16)
        bank = int(re.search(r"bank_(\d+)", name).group(1))
        idx = re.search(r"bank_\d+/(\d+)/", name).group(1)
        kind = "geo" if name.endswith("geo.bin") else "block"
        out.append(dict(bank=bank, key=f"{kind}_{idx}", offset=off,
                        size=int(v["meta"]["size"], 16), src=name, kind=kind))
    return out


def parse_misc(assets):
    """assets.json -> grouped by top-level asset class (anim / misc / bin)."""
    groups = defaultdict(list)
    dropped = 0
    for name, v in assets.items():
        off = int(v["offsets"]["us"][0], 16)
        size = int(v["meta"]["size"], 16)
        if _is_catchall(name, size):
            dropped += 1
            continue
        parts = name.split("/")
        if parts[0] == "bin":
            grp, key = "bin", _ident(parts[-1].rsplit(".", 1)[0])
        else:
            # assets/<class>/bank_N/<idx>/<file>.bin
            cls = parts[1]
            bank = re.search(r"bank_(\d+)", name)
            idx = parts[3] if len(parts) > 4 else "0"
            stem = parts[-1].rsplit(".", 1)[0]
            grp = f"{cls}/bank_{bank.group(1)}" if bank else cls
            key = _ident(f"{stem}_{idx}")
        groups[grp].append(dict(key=key, offset=off, size=size, src=name))
    return groups, dropped


# --------------------------------------------------------------------------
# Geo display-list walking (opt-in, --geo-gfx)
# --------------------------------------------------------------------------
# Geo header, from assets/tools/scut/KirbyCSdatatypes.py `Geo_Header`:
#   0x00 layout  0x04 tex_scroll  0x08 rendering_mode  0x0C img_refs
#   0x10 vtx_refs  0x14 n_unknown2  0x18 unknown2  0x1C numLayouts
# A layout node is 44 bytes and its +0x04 word is the entry-point pointer.
# Entry points are records of (rendering_mode == 0x1C ? 3 : 2) words terminated
# by a leading 4; the non-leading words are seg-04 display-list starts.
GEO_LAYOUT_STRIDE = 44


def geo_dl_starts(rom, base, size):
    hdr = struct.unpack_from(">8I", rom, base)
    mode = hdr[2]
    if mode not in (0x18, 0x1C):
        return []          # 0x13/0x14/0x17/0x1B use different walks; not handled
    nmem = 2 if mode == 0x1C else 1
    layout = base + (hdr[0] & 0xFFFFFF)
    starts = []
    for i in range(hdr[7]):
        ep = struct.unpack_from(">I", rom, layout + i * GEO_LAYOUT_STRIDE + 4)[0]
        if (ep >> 24) != 0x04:
            continue
        pos = base + (ep & 0xFFFFFF)
        off = 0
        while off < size:
            rec = struct.unpack_from(">%dI" % (nmem + 1), rom, pos + off)
            if rec[0] == 4:
                break
            for w in rec[1:]:
                if w and (w >> 24) == 0x04 and (w & 0xFFFFFF) < size:
                    starts.append(w)
            off += (nmem + 1) * 4
    # Preserve order, drop duplicates.
    seen, uniq = set(), []
    for s in starts:
        if s not in seen:
            seen.add(s)
            uniq.append(s)
    return uniq


# --------------------------------------------------------------------------
# Rendering
# --------------------------------------------------------------------------
BANNER = ("# GENERATED by tools/pc/gen_torch_yaml.py -- do not edit by hand.\n"
          "# Source: {src}\n")


def write(path, text, dry):
    if dry:
        return
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w") as f:
        f.write(text)


def render_textures(textures, palettes, dry):
    by_bank = defaultdict(list)
    for t in textures:
        by_bank[t["bank"]].append(t)
    for p in palettes:
        by_bank[p["bank"]].append(p)
    for bank, items in sorted(by_bank.items()):
        assert_unique("image/bank_%d.yml" % bank, items)
        items.sort(key=lambda x: x["offset"])
        out = [BANNER.format(src="assets_image.json")]
        for it in items:
            # `symbol` is not optional: TextureFactory::parse reads it with no
            # default and throws (aborting the whole run) if it is absent, even
            # for an o2r export where the symbol is never used.
            out.append("%s:\n  type: TEXTURE\n  symbol: k64_tex_%X\n"
                       % (it["key"], it["offset"]))
            if "colors" in it:
                out.append("  format: TLUT\n  colors: %d\n" % it["colors"])
            else:
                out.append("  format: %s\n  width: %d\n  height: %d\n"
                           % (it["fmt"], it["width"], it["height"]))
            out.append("  offset: 0x%X\n  size: 0x%X\n\n" % (it["offset"], it["size"]))
        write(os.path.join(OUT, "image", "bank_%d.yml" % bank), "".join(out), dry)
    return sum(len(v) for v in by_bank.values())


def assert_unique(path, items):
    """A duplicate mapping key in a yml is silently last-wins, so guard it here."""
    dup = [k for k, c in Counter(i["key"] for i in items).items() if c > 1]
    if dup:
        raise SystemExit("duplicate node keys in %s: %s%s"
                         % (path, dup[:5], " ..." if len(dup) > 5 else ""))


def render_blobs(path, items, src, dry, header=""):
    assert_unique(path, items)
    items = sorted(items, key=lambda x: x["offset"])
    out = [BANNER.format(src=src), header]
    for it in items:
        out.append("%s:\n  type: BLOB\n  offset: 0x%X\n  size: 0x%X\n\n"
                   % (it["key"], it["offset"], it["size"]))
    write(path, "".join(out), dry)
    return len(items)


def render_geo_gfx(rom, geo_items, dry):
    """One yml per geo block, because segment 0x04 is per-block (see trap 6)."""
    n_files = n_nodes = n_skipped = 0
    for it in geo_items:
        if it["kind"] != "geo":
            continue
        try:
            starts = geo_dl_starts(rom, it["offset"], it["size"])
        except struct.error:
            starts = []
        if not starts:
            n_skipped += 1
            continue
        out = [BANNER.format(src="assets_geo.json + geo layout walk"),
               ":config:\n  segments:\n    - [0x04, 0x%X]\n\n" % it["offset"]]
        for i, s in enumerate(starts):
            out.append("dl_%d:\n  type: GFX\n  offset: 0x%08X\n\n" % (i, s))
            n_nodes += 1
        write(os.path.join(OUT, "gfx", "bank_%d" % it["bank"],
                           "%s.yml" % it["key"]), "".join(out), dry)
        n_files += 1
    return n_files, n_nodes, n_skipped


def check_overlaps(all_items):
    rng = sorted((i["offset"], i["offset"] + i["size"], i.get("src", i["key"]))
                 for i in all_items if i.get("size"))
    bad, prev = [], None
    for r in rng:
        if prev and r[0] < prev[1]:
            bad.append((prev, r))
        if not prev or r[1] > prev[1]:
            prev = r
    return bad, rng


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--check", action="store_true", help="report only, write nothing")
    ap.add_argument("--geo-gfx", action="store_true", help="also emit per-geo-block GFX nodes")
    args = ap.parse_args()
    dry = args.check

    img, geo, assets = load_manifests()
    textures, palettes, img_blobs = parse_images(img)
    geo_items = parse_geo(geo)
    misc_groups, dropped = parse_misc(assets)

    n_tex = render_textures(textures, palettes, dry)

    # Split per bank. The index in `assets/image/bank_N/<idx>/block.bin` is only
    # unique WITHIN a bank, so pooling all 3049 into one yml silently collapses
    # them onto ~500 distinct keys -- Torch keeps the last definition of a
    # duplicate mapping key and the archive comes out short and wrong. Caught
    # by comparing every emitted resource against the ROM; assert_unique() below
    # is what stops it recurring.
    n_imgblob = 0
    img_by_bank = defaultdict(list)
    for it in img_blobs:
        img_by_bank[it["bank"]].append(it)
    for bank, items in sorted(img_by_bank.items()):
        n_imgblob += render_blobs(
            os.path.join(OUT, "image_raw", "bank_%d.yml" % bank), items,
            "assets_image.json (meta.size entries)", dry,
            "# Image-bank entries with no identified dimensions.\n\n")

    n_geo = 0
    by_bank = defaultdict(list)
    for g in geo_items:
        by_bank[g["bank"]].append(g)
    for bank, items in sorted(by_bank.items()):
        n_geo += render_blobs(os.path.join(OUT, "geo", "bank_%d.yml" % bank),
                              items, "assets_geo.json", dry)

    n_misc = 0
    for grp, items in sorted(misc_groups.items()):
        n_misc += render_blobs(os.path.join(OUT, grp + ".yml"), items, "assets.json", dry)

    gfx_stats = None
    if args.geo_gfx:
        with open(ROM_PATH, "rb") as f:
            rom = f.read()
        gfx_stats = render_geo_gfx(rom, geo_items, dry)

    everything = (textures + palettes + img_blobs + geo_items
                  + [i for v in misc_groups.values() for i in v])
    overlaps, rng = check_overlaps(everything)

    print("textures (TEXTURE/TLUT nodes) : %d  (%d palettes)" % (n_tex, len(palettes)))
    print("image raw blocks (BLOB)       : %d" % n_imgblob)
    print("geo blocks (BLOB)             : %d" % n_geo)
    print("anim/misc/level/bin (BLOB)    : %d" % n_misc)
    print("catch-all regions dropped     : %d" % dropped)
    print("TOTAL resources               : %d" % (n_tex + n_imgblob + n_geo + n_misc))
    print("ROM bytes covered             : 0x%X" % sum(b - a for a, b, _ in rng))
    print("overlapping ranges            : %d" % len(overlaps))
    # Overlaps are listed, not just counted: a nested alias (a named sub-range
    # of a larger block) is fine and merely duplicates a few KB, whereas a
    # partial overlap would mean the size math is wrong somewhere.
    for a, b in overlaps:
        nested = b[1] <= a[1]
        print("  %-38s 0x%X-0x%X\n  %-38s 0x%X-0x%X  [%s]"
              % (a[2], a[0], a[1], b[2], b[0], b[1],
                 "nested alias, harmless" if nested else "PARTIAL -- size math suspect"))
    if gfx_stats:
        print("geo GFX: %d files, %d display lists, %d geo blocks skipped "
              "(rendering_mode not 0x18/0x1C)" % gfx_stats)


if __name__ == "__main__":
    main()
