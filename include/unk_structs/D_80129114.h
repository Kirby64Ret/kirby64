/* Track path interpolation descriptor: byte-identical to src/main/
 * interpolation.c's InterpDesc (used directly as that type by func_8001E344,
 * called from ovl2_3.c with this struct's pointer) and to src/ovl2/ovl2_2.c's
 * PORT-side struct PcTrackFooter, whose static asserts pin these offsets and
 * whose loader (func_800A9AA8's caller) fills `n`/`unk04`/`points`/`length`
 * directly from the raw track-section bytes. `kind` selects one of the four
 * InterpKind cases in interpolation.c; `tension` is only read by the CATROM
 * case (func_8001D3D0's Cardinal-spline weight parameter) and is otherwise
 * dead. `points` was declared `struct Unk80129114_4_4_8 *` (a 3-field, 0xC
 * byte struct with no consumer anywhere in the tree); ovl2_3.c's matched
 * func_800FA1D4 instead walks it as `(Vector *)((u8 *) points + i * 0xC)`,
 * and interpolation.c's InterpDesc.points is `Vector *` outright, so this
 * retype only corrects the pointee -- same pointer size, no layout change.
 * `unk04`/`tension` was declared u32; ovl2_2.c's loader fills it with
 * `pc_rdf32` (an explicit float read) and InterpDesc's matching field is
 * f32 -- same size, no layout change either. */
struct Unk80129114_4_4 {
    /* 0x00 */ u8 kind;      /* interpolation kind, see enum InterpKind (interpolation.c) */
    /* 0x02 */ s16 pointCount;
    /* 0x04 */ f32 tension;  /* was u32; CATROM-only Cardinal-spline tension, see comment above */
    /* 0x08 */ Vector *points; /* was struct Unk80129114_4_4_8 *, see comment above */
    /* 0x0C */ f32 length;   /* segment length */
};

struct Unk80129114_4_0 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    s16 unkC;
};

/* One track node. func_800F8B1C (ovl2_3.c, matched) casts this exact layout
 * to the locally-typed `struct TrackNodeHeader` (unk0/footer/links pointers
 * + one native s16 read in place of linkCountHi/linkCountLo) to walk it on
 * the N64 side; `links` stays u32 here rather than a real pointer because
 * the PORT loader deliberately truncates it to a sub-4-GiB host pointer (the
 * same convention documented at func_800A9250's PORT arm in ovl1_3.c and in
 * ovl2_2.c's loader comment) to keep this struct's size/offsets -- asserted
 * in ovl2_2.c as sizeof==24, offsetof(footer)==8, offsetof(links)==16,
 * offsetof(loop)==22 -- identical to the N64 build's 0x10-byte layout scaled
 * up only by the two already-native unk0/footer pointers. Retyping `links`
 * to a real pointer would grow/shift the PORT layout and break those
 * asserts for no N64-side benefit (the N64 arm already reads it through the
 * separately, correctly typed TrackNodeHeader). */
struct Unk80129114_4 {
    struct Unk80129114_4_0 *unk0;   /* kirby/camera node; see local TrackKirbyNode
                                      * in ovl2_3.c for the target layout. No reader
                                      * of its own unk0/4/8/C fields found in this
                                      * overlay's C code to name them from. */
    struct Unk80129114_4_4 *footer;
    u32 links;       /* struct TrackConnection[]; see struct comment above for
                       * why this stays u32 rather than a real pointer */
    u8 linkCountHi;  /* was unkC; combined by ovl2_3.c/ovl2_10.c's PORT arms as
                       * `(s16)((linkCountHi << 8) | linkCountLo)`, but the
                       * matched N64 func_800F8B1C reads the two bytes as one
                       * native s16 through TrackNodeHeader -- they are one
                       * big-endian s16 in memory, kept as two u8s here only
                       * for LP64-safe byte-order-independent PORT access */
    u8 linkCountLo;  /* was unkD */
    s16 loop;        /* was unkE; nonzero = looping segment (ovl2_3.c
                       * func_800F9974: "looping segment: wrap in place") */
};

struct UnkStruct80129114 {
    u32 unk0;    /* node count; func_800FA438's PORT arm bounds-checks a node
                  * index against this. Left unrenamed -- unk4 below (the node
                  * array pointer) is dereferenced 50+ times across 7 files
                  * outside this overlay; renaming either field is a much
                  * larger cross-tree edit than this pass's scope. */
    struct Unk80129114_4 *unk4;  /* struct Unk80129114_4[]: the node array */
};
extern struct UnkStruct80129114 *D_80129114;