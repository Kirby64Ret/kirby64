#include "common.h"
#include "types.h"
#include "GObj.h"

#include "buffers.h"
#include "buffers.h"
#include "track_arrays.h"
#include "main/gtl.h"
#include "main/math.h"
#include "main/object_helpers.h"
#include "ovl1/game.h"
#include "ovl1/ovl1_7.h"

#include "plylib.h"

extern f32 gameTicksPerDrawInv;

struct UnkStruct801290D8_2 {
    u8 filler[0x16];
    u16 unk16;
};
extern struct UnkStruct801290D8_2 *D_801290D8;
extern u8 D_800D6C68[];
extern u32 D_800D6D10[][2];
extern u8 D_800D7010[];
extern u8 D_80124000[];

void func_800A5404(void *, void *);
#ifdef PORT
/* ============================================================================
 * PORT support for the in-level scene: the level-config loader func_800F78E4
 * and its helpers (arms further down this file).
 *
 * Two data worlds meet here and each needs its own treatment:
 *
 *  1. TABLES THE TRANSLATION ALREADY MADE NATIVE. D_800D1F98/D_800D01A4 (the
 *     StageArea rows) and D_800D4668 (skybox particle tables) come from
 *     tools/pc/gen_data.py as merged void*[] runs: every original 4-byte word
 *     is one 8-byte host slot, scalars value-preserved in the low half,
 *     pointers relinked. A StageArea row is therefore NINE 8-byte slots, and
 *     nothing that expects the N64's packed 0x24-byte row can read it. The
 *     loader below rebuilds the selected row into pc_stage_cfg, a static
 *     struct with the exact N64 field OFFSETS (u16s at +0x8/+0xA/+0x14/+0x16,
 *     u32s elsewhere), because the compiled readers touch it at byte offsets:
 *     func_800F8560 (u16 +0x16), plylib's D_801290D8->unk14 (u16 +0x14),
 *     ovl2.c's music/bgcolor reads (+0xC/+0xA), func_800F81A4's
 *     ((s32*)cfg)[1], func_800F6E30/func_800F72B0's ((u32*)cfg)[0]/[1].
 *
 *  2. THE AREA-SETUP BLOB (func_800A9AA8): raw BIG-ENDIAN cartridge bytes in
 *     the game arena (which sits below 4 GiB, so a u32 slot holds a host
 *     pointer -- same rule as func_800A9250's PORT arm in ovl1_3.c). The
 *     format is documented in include/level_settings_structs.h. Decode is
 *     ON LOAD, TO NATIVE, exactly once (the established decode-on-load
 *     pattern), because every live consumer is compiled C:
 *       - collision header: 17 words byteswapped in place; func_800F8378's
 *         PORT arm then publishes them as a NATIVE LP64 vCollisionHeader in
 *         D_80129418 (ovl2_7's compiled walkers read Triangles/Vertices/
 *         Normals/... through that struct's host layout);
 *       - collision arrays: homogeneous regions (u16 triangles/vertices/
 *         cells/norm-cells/destructables, f32 normals) byteswapped between
 *         section boundaries -- the boundary set is every offset named by any
 *         header, so no element-count formula is ever guessed; WaterData is
 *         the one mixed-layout section and is swapped field-wise;
 *       - track nodes: rebuilt as a NATIVE array of struct Unk80129114_4
 *         (include/unk_structs/D_80129114.h -- the layout ovl2_3/plylib/
 *         ovl2_10's compiled indexing uses on this host), each pointing at a
 *         native PcTrackFooter (LP64 InterpDesc/TrackFooter/Unk80129114_4_4
 *         all share that layout; asserted below) whose point/keyframe/
 *         quartic f32 arrays are byteswapped in the blob;
 *       - kirby/camera nodes: fixed 0x90-byte layout, field-wise swap in
 *         place (scalar-only struct, so LP64 layout == N64 layout);
 *       - node connectors and the routing matrix (D_8012912C): byte data,
 *         left in memory order untouched -- compiled readers use u8 fields;
 *       - entity list: struct Entity is scalar-only (LP64 == N64), decoded
 *         field-wise in place up to the 0x99 terminator.
 *
 * The N64 body relocates offsets inside the blob; consumers here never read
 * the blob's own header words again (they go through the D_8012xxxx globals),
 * so the in-blob writeback is limited to what something might legitimately
 * chase: the three main-header words.
 * ==========================================================================*/
#include "ovl2/ovl2_6.h"          /* level-settings-block format (the header
                                   * ovl2_7's compiled collision code uses) */
#include "unk_structs/D_80129114.h"

struct UnkStruct80129418; /* full definition further down this file */

extern struct BankHeader *D_800D0184[]; /* native bank table (translated data) */
extern void *D_800D1F98[];              /* stage-area table: 8-byte slots */
extern void *D_800D4668[];              /* skybox particle record tables */
extern s32 D_800D6F3C;                  /* +0xC = area count (defsym family) */
extern u8 D_800D6C90[];                 /* entity active flags (canonical base,
                                         * same one spawn.c/helplib/enelib use) */
extern s32 D_801290DC;
extern struct UnkStruct80129418 *D_8012911C;

extern s32 D_80129118;
extern s32 D_80129124;
extern s32 D_80129128;
extern void *D_80129120;
extern struct Entity *D_801290E0;
extern u8 *D_8012912C;                  /* node routing matrix (bytes) */
extern f32 *D_80129130;                 /* per-node track-length table */
extern s32 D_8012B9B0;
extern u8 D_8012B9B8[];                 /* 10 records x 0x30 (bss, doubled) */
extern u32 D_800BE548[];                /* scene light: ambient pair... */
extern u32 D_800BE550[];                /* ...and Lights1 color/dir words */
extern u8 D_800D7B80[];
extern void *D_800D6AB8[];              /* native pointer array on PC (ovl1.c) */
extern f32 D_800D6ED0[4][4];            /* view*proj, built by func_800F6830 */

void *func_800A8358(s32);
void pc_levelload_debug(unsigned int id, unsigned int bytes, unsigned int nodes,
                        unsigned int ents, const void *base);

/* Native mirror of one StageArea row, N64 field offsets (see block comment). */
struct PcStageCfg {
    /* 0x00 */ u32 liGeoBlockA;
    /* 0x04 */ u32 liGeoBlockB;
    /* 0x08 */ u16 skyboxId;
    /* 0x0A */ u16 bgColor;
    /* 0x0C */ u32 musicId;
    /* 0x10 */ u32 biAreaSetup;
    /* 0x14 */ u16 deathCamera;
    /* 0x16 */ u16 stageContents;
    /* 0x18 */ u32 biDustSettings;
    /* 0x1C */ u32 biDustImg;
    /* 0x20 */ u32 areaName32; /* truncated host pointer; statics sit < 4 GiB */
};
static struct PcStageCfg pc_stage_cfg;
typedef char pc_stage_cfg_check[(sizeof(struct PcStageCfg) == 0x24) ? 1 : -1];

/* Native track header handed to every D_80129114 consumer. */
static struct UnkStruct80129114 pc_track_hdr;

/* Native footer: must be layout-identical to the three views compiled code
 * reads it through -- struct Unk80129114_4_4 (pointCount/tension/points/
 * length, named+typed from this exact evidence -- see that struct's
 * comment in include/unk_structs/D_80129114.h), ovl2_3.c's TrackFooter
 * (adds keyframes/quartics) and interpolation.c's InterpDesc/InterpData
 * (mtxGetInterpolatedPosition / func_8001E344). */
struct PcTrackFooter {
    u8 kind;        /* 0x00: interpolation kind */
    u8 unk1;        /* 0x01 */
    s16 n;          /* 0x02: point count */
    f32 unk04;
    void *points;   /* +0x08 on LP64 */
    f32 length;     /* +0x10 */
    f32 *keyframes; /* +0x18 */
    f32 *quartics;  /* +0x20, nullable */
};
typedef char pc_footer_check[
    (sizeof(struct PcTrackFooter) == 40 &&
     __builtin_offsetof(struct PcTrackFooter, n) == __builtin_offsetof(struct Unk80129114_4_4, pointCount) &&
     __builtin_offsetof(struct PcTrackFooter, unk04) == __builtin_offsetof(struct Unk80129114_4_4, tension) &&
     __builtin_offsetof(struct PcTrackFooter, points) == __builtin_offsetof(struct Unk80129114_4_4, points) &&
     __builtin_offsetof(struct PcTrackFooter, length) == __builtin_offsetof(struct Unk80129114_4_4, length) &&
     __builtin_offsetof(struct PcTrackFooter, keyframes) == 24 &&
     __builtin_offsetof(struct PcTrackFooter, quartics) == 32) ? 1 : -1];
typedef char pc_noderec_check[
    (sizeof(struct Unk80129114_4) == 24 &&
     __builtin_offsetof(struct Unk80129114_4, footer) == 8 &&
     __builtin_offsetof(struct Unk80129114_4, links) == 16 &&
     __builtin_offsetof(struct Unk80129114_4, loop) == 22) ? 1 : -1];

static inline u32 pc_be32(u32 v) { return __builtin_bswap32(v); }
static inline u16 pc_be16(u16 v) { return __builtin_bswap16(v); }
static inline u32 pc_rd32(const u8 *p) { return pc_be32(*(const u32 *)p); }
static inline u16 pc_rd16(const u8 *p) { return pc_be16(*(const u16 *)p); }
static inline f32 pc_rdf32(const u8 *p) {
    union { u32 u; f32 f; } c;
    c.u = pc_rd32(p);
    return c.f;
}
static void pc_sw32(u8 *p) { *(u32 *)p = pc_be32(*(u32 *)p); }
static void pc_sw16(u8 *p) { *(u16 *)p = pc_be16(*(u16 *)p); }

/* ---- homogeneous-region swap machinery --------------------------------
 * A region is (blob offset, element width); its extent is "up to the next
 * known boundary", where the boundary set is every offset any header names
 * plus the blob size. Regions are deduplicated (two footers may share a
 * keyframe table) so nothing is ever swapped twice. On overflow the whole
 * swap pass is skipped: deterministic garbage geometry, never corruption. */
#define PC_LVL_MAX_MARKS 1024
static u32 pc_lvl_bounds[PC_LVL_MAX_MARKS];
static int pc_lvl_nbounds;
static struct { u32 off; u8 w; } pc_lvl_regions[PC_LVL_MAX_MARKS];
static int pc_lvl_nregions;
static int pc_lvl_overflow;
static u32 pc_lvl_size;

static void pc_lvl_reset(u32 nbytes) {
    pc_lvl_nbounds = 0;
    pc_lvl_nregions = 0;
    pc_lvl_overflow = 0;
    pc_lvl_size = nbytes;
}
static void pc_lvl_bound(u32 off) {
    int i;
    if (off == 0 || off >= pc_lvl_size) {
        return;
    }
    for (i = 0; i < pc_lvl_nbounds; i++) {
        if (pc_lvl_bounds[i] == off) {
            return;
        }
    }
    if (pc_lvl_nbounds >= PC_LVL_MAX_MARKS) {
        pc_lvl_overflow = 1;
        return;
    }
    pc_lvl_bounds[pc_lvl_nbounds++] = off;
}
static void pc_lvl_region(u32 off, u8 w) {
    int i;
    if (off == 0 || off >= pc_lvl_size) {
        return;
    }
    for (i = 0; i < pc_lvl_nregions; i++) {
        if (pc_lvl_regions[i].off == off) {
            return;
        }
    }
    if (pc_lvl_nregions >= PC_LVL_MAX_MARKS) {
        pc_lvl_overflow = 1;
        return;
    }
    pc_lvl_regions[pc_lvl_nregions].off = off;
    pc_lvl_regions[pc_lvl_nregions].w = w;
    pc_lvl_nregions++;
    pc_lvl_bound(off);
}
static void pc_lvl_swap_regions(u8 *base) {
    int i, j;
    if (pc_lvl_overflow) {
        return;
    }
    for (i = 0; i < pc_lvl_nregions; i++) {
        u32 off = pc_lvl_regions[i].off;
        u32 end = pc_lvl_size;
        u32 o;
        for (j = 0; j < pc_lvl_nbounds; j++) {
            if (pc_lvl_bounds[j] > off && pc_lvl_bounds[j] < end) {
                end = pc_lvl_bounds[j];
            }
        }
        if (pc_lvl_regions[i].w == 2) {
            for (o = off; o + 2 <= end; o += 2) {
                pc_sw16(base + o);
            }
        } else {
            for (o = off; o + 4 <= end; o += 4) {
                pc_sw32(base + o);
            }
        }
    }
}

/* Collision header at h (17 NATIVE words, level_settings_structs.h order):
 * register its array sections. WaterData (mixed layout) swaps field-wise. */
static void pc_lvl_collect_collision(u8 *base, const u32 *h) {
    u32 i;
    pc_lvl_region(h[0], 2);  /* Triangles: u16 x10 each */
    pc_lvl_region(h[2], 2);  /* Vertices: s16 triplets */
    pc_lvl_region(h[4], 4);  /* Normals: f32 quads */
    pc_lvl_region(h[6], 2);  /* Triangle_Cells: u16 */
    pc_lvl_region(h[8], 2);  /* Triangle_Norm_Cells: u16 x4 each */
    pc_lvl_region(h[11], 2); /* Destructable_Groups: u16 x3 each */
    pc_lvl_region(h[12], 2); /* Destructable_Indices: u16 */
    pc_lvl_region(h[15], 4); /* Water_Normals: f32 quads */
    if (h[13] != 0 && h[13] < pc_lvl_size) {
        pc_lvl_bound(h[13]);
        for (i = 0; i < h[14] && h[13] + (i + 1) * 0x18 <= pc_lvl_size; i++) {
            u8 *w = base + h[13] + i * 0x18;
            pc_sw16(w + 0x0);
            pc_sw16(w + 0x2);
            pc_sw32(w + 0x8);
            pc_sw32(w + 0xC);
            pc_sw32(w + 0x10);
            pc_sw32(w + 0x14);
        }
    }
}

/* Kirby/camera node: fixed 0x90-byte scalar layout (ovl2_3.c TrackKirbyNode /
 * the KirbyNode+CameraNode doc in level_settings_structs.h). */
static void pc_lvl_swap_kirby_node(u8 *p) {
    u32 o;
    pc_sw16(p + 0x02);              /* entryDirection */
    pc_sw16(p + 0x0C);              /* bytes 0-1 and 4-0xB stay bytes */
    pc_sw16(p + 0x0E);              /* flags */
    pc_sw16(p + 0x10);
    pc_sw16(p + 0x12);
    pc_sw32(p + 0x14);
    pc_sw32(p + 0x18);
    pc_sw32(p + 0x1C);
    pc_sw16(p + 0x2A);              /* camera: bytes 0x20-0x29 stay bytes */
    for (o = 0x2C; o <= 0x8C; o += 4) {
        pc_sw32(p + o);             /* camera f32 block */
    }
}
#endif /* PORT */

/* the definition (src/ovl1/ovl1_3.c) returns void *, not s32 */
void *func_800A9AA8(u32, s32);
u16 func_800F8560(void);
void func_800A7A70(s32, s32, s32);
void func_800A7BF4(s16 *, u8 *);
void utilLoadOverlay(u32);
f32 func_800FA1D4(struct Unk80129114_4_4 *, Vector *, s32);
u32 spawn_entity(u32, struct Entity *);

void func_800F7258(s32);
void func_800AF980(s32);
void func_800B3070(s32, f32);
void func_800A9864(u32, u32, u32);
u32 *func_800A94F4(s32);
void func_800FA414(s32);
void func_800AAF34(s32, s32, f32);
void func_801129AC(void);
void func_801129DC(void);
void func_8010137C(void);
void func_800FBF18(s32);
void func_8001E344(Vector *, void *, f32);
void func_800F8570(s32);

void func_800F6C40(s32 arg0, UNUSED s32 arg1) {
    D_800BE4F8 = 2;
    D_800BE4FC = 1;
    D_800BE534 = arg0;
}

void func_800F6C68(void) {
    D_800BE4F8 = 3;
}

void func_800F6C78(void) {
    D_800BE4F8 = 4;
}

void func_800F6C88(void) {
    D_800BE4F8 = 7;
}

void func_800F6C98(UNUSED GObj *gobj) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    ohSleep((u32) (120.0f * gameTicksPerDrawInv));
    if (D_800E98E0[omCurrentObj->objId] == 3) {
        func_800F6C68();
    }
    if (D_800E98E0[omCurrentObj->objId] == 4) {
        func_800F6C78();
    }
    func_800B1900(omCurrentObj->objId);
}

void func_800F6E04(UNUSED GObj *gobj) {

}

void func_800F6E0C(void *arg0, UNUSED void *_1, UNUSED void *_2) {
    func_8011C2A0(arg0);
}

#ifdef MIPS_TO_C
/* FACTORY: 2/207 words differ. Frame, save set, every call, every branch and
 * the whole loop are exact. The residue is ONE adjacent-instruction schedule
 * swap in the loop preheader: the ROM emits `addiu $fp, %lo(D_800BE504)` then
 * `or $s4,$zero,$zero`, IDO emits them the other way round. Swept and
 * rejected: moving `var_s4 = 0` up next to `var_s3 = 0` is WORSE (12/207 --
 * it also pulls `or $s3,$zero` out of the second beqz's delay slot and shifts
 * the gSegment4StartArray index block); retyping var_s4 u32 is inert. Both
 * instructions are loop PREHEADER material -- one a hoisted invariant
 * address, one a real source statement -- so this is a scheduler tie-break,
 * not a source shape. Permuter fuel.
 * Lever that DID land: the three-way dispatch
 * must be a `switch`, not an if/else chain -- as if/else IDO emits
 * sequential tests instead of the ROM's beqz/beq $s5/beq $s7 dispatch
 * and loses the hoisted constants (137 diffs -> 2). */
void func_800F6E30(s32 arg0) {
    /* These three stay in-body because this draft's calls do not yet agree
     * with the tree's definitions: func_800A2550 is `void (void *)` in
     * ovl1.c and func_800AEE20/func_800AEEB4 are `void (GObj *, f32)` in
     * ovl1_7.c, but m2c gave them an extra leftover register argument.
     * Resolve the arity from the listing before sealing this draft; a
     * file-scope prototype would make the TU disagree with itself. */
    void func_800A2550(u32);
    void func_800AEE20(u32, f32, u32 *);
    void func_800AEEB4(u32, f32, u32 *);
    extern f32 gameTicksPerDraw;
    extern u32 D_800DFA10[];
    extern s32 D_801290D0;
    extern s32 D_800D6E44;
    extern u32 *D_8012E7B0;
    extern u32 *D_8012E7B4;
    s32 temp_a0;
    s32 temp_s0;
    s32 temp_v1;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;
    s32 var_v1;
    u32 var_s3;
    u32 *temp_v0;
    u32 *var_v0;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = func_800F6E04;
    func_800AF980(0x18);
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_800F7258;
    func_800A9864(*(u32 *) D_801290D8, 0x26, 0x10);
    func_800A2550(D_800DFA10[D_801290D0]);
    func_800B3070(0x10, gameTicksPerDraw);
    var_s1 = 0;
    var_s2 = 0;
    var_v1 = omCurrentObj->objId * 4;
    var_v0 = *(u32 **) ((u8 *) gSegment4StartArray + var_v1);
    temp_a0 = var_v0[5];
    if (temp_a0 != 0) {
        var_s3 = 0;
        if (temp_a0 != 0) {
            var_s4 = 0;
            do {
                temp_s0 = *(s32 *) ((u8 *) var_v0[6] + var_s4);
                temp_v0 = func_800A94F4(temp_s0);
                temp_v1 = temp_v0[1];
                switch (temp_v1) {
                case 0:
                    if (var_s2 == 0) {
                        D_800DF690[omCurrentObj->objId] = (u32) temp_v0;
                        D_800DFF50[omCurrentObj->objId] = temp_s0;
                        func_800AEE20(*(u32 *) D_800DF690[omCurrentObj->objId], 0.0f, temp_v0);
                        D_8012E7B0 = NULL;
                        var_s2 += 1;
                    } else {
                        D_8012E7B0 = temp_v0;
                        var_s2 += 1;
                    }
                    break;
                case 1:
                    if (var_s1 == 0) {
                        D_800DF850[omCurrentObj->objId] = (u32) temp_v0;
                        D_800E0110[omCurrentObj->objId] = temp_s0;
                        func_800AEEB4(*(u32 *) D_800DF850[omCurrentObj->objId], 0.0f, temp_v0);
                        D_8012E7B4 = NULL;
                        var_s1 += 1;
                    } else {
                        D_8012E7B4 = temp_v0;
                        var_s1 += 1;
                    }
                    break;
                case 2:
                    func_800FA414(0x8000000D);
                    func_800AAF34(0x10, temp_s0, 0.0f);
                    func_801129AC();
                    func_801129DC();
                    if ((D_800BE500 == 1) && (D_800BE504 == 0)) {
                        D_800D6E44 = 1;
                    }
                    if ((D_800BE500 == 3) && (D_800BE504 == 0)) {
                        D_800D6E44 = 2;
                    }
                    break;
                }
                var_s3 += 1;
                var_s4 += 4;
                var_v1 = omCurrentObj->objId * 4;
                var_v0 = *(u32 **) ((u8 *) gSegment4StartArray + var_v1);
            } while (var_s3 < var_v0[5]);
        }
    }
    *(void (**)(s32, s32, f32)) ((u8 *) D_800DF310 + var_v1) =
        (void (*)(s32, s32, f32)) func_800F6E0C;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: still assembly on the matching build; the m2c sketch above is not
 * compilable. Behavioral port from
 * asm/nonmatchings/ovl2/ovl2_2/func_800F6E30.s -- the menu/level scene
 * setup process: parks the track's process-5 slot, loads the scene's geo
 * blob (func_800A9864, already ported), places the scene's particle
 * emitters from the layout's second node array (func_800A2550, PORT arm in
 * ovl1.c), then walks the geo header's ANIMATION REFS section (+0x14 count
 * at seg[5], +0x18 pointer at seg[6] -- both native after func_800A9250's
 * PORT normalizer) loading every anim block: kind 0 -> model anim bank
 * (D_800DF690 / overflow bank D_8012E7B0), kind 1 -> texture anim bank
 * (D_800DF850 / overflow D_8012E7B4), kind 2 -> camera track + camera anim
 * (func_800AAF34).
 *
 * LP64 notes: anim blocks come back WIDENED from func_800A94F4's PORT arm,
 * so their kind word sits at byte +8 (u32 cell index 2) and their +0x00
 * pointer is read through the low u32 half (the game arena lives below
 * 4 GiB). D_8012E7B0/D_8012E7B4 are the two words plylib's
 * DestructAnimBank reads; on this build they are separate 8-byte-capable
 * bss slots, written as full host pointers. */

/* func_800A2550 is `void (void *)` in ovl1.c; the second argument here is the
 * IDO argument-register device described above func_800F72B0, kept PORT-local
 * so it cannot retype the rest of the TU. */
void func_800A2550(void *, void *);
extern f32 gameTicksPerDraw;
extern u32 D_800DFA10[];
extern s32 D_801290D0;
extern s32 D_800D6E44;
extern void *D_8012E7B0[];
extern void *D_8012E7B4[];

void func_800F6E30(UNUSED s32 arg0) {
    u32 *seg;
    u32 i;
    s32 gotModel = 0;
    s32 gotTexture = 0;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = func_800F6E04;
    func_800AF980(0x18);
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *))func_800F7258;
    func_800A9864(((u32 *)D_801290D8)[0], 0x26, 0x10);
    func_800A2550((void *)(uintptr_t)D_800DFA10[D_801290D0], NULL);
    func_800B3070(0x10, gameTicksPerDraw);

    seg = gSegment4StartArray[omCurrentObj->objId];
    for (i = 0; i < seg[5]; i++) {
        s32 id = ((s32 *)(uintptr_t)seg[6])[i];
        u32 *blk = func_800A94F4(id);

        switch (blk[2]) { /* widened kind word (byte +8) */
            case 0:
                if (gotModel == 0) {
                    D_800DF690[omCurrentObj->objId] = (u32)(uintptr_t)blk;
                    D_800DFF50[omCurrentObj->objId] = id;
                    func_800AEE20((struct GObj *)(uintptr_t)*blk, 0.0f);
                    D_8012E7B0[0] = NULL;
                } else {
                    D_8012E7B0[0] = blk;
                }
                gotModel++;
                break;
            case 1:
                if (gotTexture == 0) {
                    D_800DF850[omCurrentObj->objId] = (u32)(uintptr_t)blk;
                    D_800E0110[omCurrentObj->objId] = id;
                    func_800AEEB4((struct GObj *)(uintptr_t)*blk, 0.0f);
                    D_8012E7B4[0] = NULL;
                } else {
                    D_8012E7B4[0] = blk;
                }
                gotTexture++;
                break;
            case 2:
                func_800FA414(0x8000000D);
                func_800AAF34(0x10, id, 0.0f);
                func_801129AC();
                func_801129DC();
                if ((D_800BE500 == 1) && (D_800BE504 == 0)) {
                    D_800D6E44 = 1;
                }
                if ((D_800BE500 == 3) && (D_800BE504 == 0)) {
                    D_800D6E44 = 2;
                }
                break;
        }
        seg = gSegment4StartArray[omCurrentObj->objId];
    }
    D_800DF310[omCurrentObj->objId] = (void (*)(s32, s32, f32))func_800F6E0C;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F6E30.s")
#endif

void func_800F716C(GObj *gobj) {
    if ((D_800BE500 == 1) && (D_800BE504 == 2)) {
        gSPFogPosition(gDisplayListHeads[0]++, 102, 1003);
        gSPFogPosition(gDisplayListHeads[1]++, 102, 1003);
    } else {
        gSPFogPosition(gDisplayListHeads[0]++, 920, 1000);
        gSPFogPosition(gDisplayListHeads[1]++, 920, 1000);
    }
    gDrawFuncList[gSegment4StartArray[gobj->objId][2]](gobj);
}

void func_800F7258(s32 arg0) {
    func_800A5404(&D_800D7010[0], &D_80124000[0]);
    func_800A5404(&D_800D7010[0x18], &D_80124000[0]);
    func_800A5404(&D_800D7010[0x30], &D_80124000[0]);
}

/* 2/85 diffs, structurally exact.  Residue: the ROM loads objId straight into
 * $v1 and shifts in place (lw $v1,0($t4); sll $v1,$v1,2); IDO loads into $v0 and
 * shifts into $v1, i.e. `idx` and the scaled-index temp fail to coalesce.
 * Measured: `seg` lands in $a1 only when it is passed as a SECOND argument to
 * func_800A2550/func_800AA018 (IDO argument-register targeting) -- that alone
 * took 16 diffs to 4.  A named `idx` then took 4 to 2.  Swept without moving it:
 * decl order (all 6), u32 vs s32 for idx/temp, switch-through-temp, second
 * dispatch as a switch, seg inlined, byte-offset idx, GObj* local for
 * omCurrentObj, capturing func_800A9864's return into temp, `temp = 0` pad.
 * LEVER 55 CHECKED AND DISPROVED, 2026-08-25. The residue reads exactly like
 * lever 55 -- a load right after `jal func_800A9864` that refuses $v0 -- but
 * it is not one. Every callee this function reaches is declared (a gcc
 * -Wimplicit-function-declaration pass over the un-guarded TU reports only
 * `request_track_general`, in an unrelated function at line 1705), and both
 * halves of the experiment are inert: retyping the file-scope
 * `void func_800A9864(u32, u32, u32)` to `void *` scores 2/85, and DELETING
 * that declaration outright so the call really is an implicit `int f()` also
 * scores 2/85. IDO does not gate $v0 on the callee's return type here.
 * Re-measured 2026-08-24, true residue 2/85. New datum: DROPPING `idx` and
 * writing `omCurrentObj->objId` inline at both uses does produce the ROM's
 * in-place shift (`lw $vN` / `sll $vN,$vN,2`), but IDO then picks $v0 for the
 * whole chain and the score is 4/85 -- all four the same $v0/$v1 rename, the
 * neighbouring-register floor. Kept the 2/85 spelling; the 4/85 one is the
 * shape to feed the permuter if the register swap is ever reachable. */
#ifdef NON_MATCHING
extern u32 D_800DFA10[];
void func_800B491C(GObj *);
void func_800A2550(void *, void *);
void func_800AA018(s32, void *);

/* MEASURED 2026-08-24, an experiment worth not repeating: the two words are
   `lw $v1,0($t4)` / `sll $v1,$v1,2` where IDO emits `lw $v0` / `sll $v1,$v0`.
   The ROM shifts IN PLACE, which means the loaded objId has no second use --
   so inlining `omCurrentObj->objId` at both the array index and the
   D_800DFA10 index, and dropping the `idx` local, DOES produce the in-place
   shift. It also moves the whole chain to $v0 and scores 4/85, because two
   further instructions then use $v0 where the ROM uses $v1. The in-place
   shift is reachable; the register is not. Kept the 2/85 spelling. */
void func_800F72B0(UNUSED s32 arg0) {
    u32 *seg;
    s32 temp;
    s32 idx;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = func_800B491C;
    func_800AF980(8);
    func_800A9864(((u32 *)D_801290D8)[1], 0x26, 0x10);
    idx = omCurrentObj->objId;
    seg = gSegment4StartArray[idx];
    switch (seg[2]) {
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
            break;
        default:
            func_800A2550((void *)D_800DFA10[idx], seg);
            seg = gSegment4StartArray[omCurrentObj->objId];
            break;
    }
    temp = seg[5];
    if (temp != 0) {
        if (temp != 1) {
            if (temp == 2) {
                func_800AA018(((u32 *)seg[6])[1], seg);
                seg = gSegment4StartArray[omCurrentObj->objId];
            } else {
                goto end;
            }
        }
        func_800AA018(((u32 *)seg[6])[0], seg);
    }
end:
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F72B0.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 19/32 instructions match (13 diffs). Body, instruction count
 * and loop structure are exact; the residue is the whole $t file
 * allocated one slot low (ROM $t8/$t7 then $t9/$t1/$t2/$t3, IDO $t7/$t6
 * then $t8/$t9/$t1/$t2) -- one $t temp is consumed before the pair in
 * the ROM. Levers already spent (keep them): priming the locals before
 * the loop in the ROM's first-assignment order (val, src, i, dst, p)
 * fixes $v0/$v1/$a0-$a3 at no instruction cost (22 -> 13); the ROM
 * materialises D_800D6D10 TWICE, so the loop bound must be spelled
 * (u8 *) 0x800D6D10 to stop IDO CSEing the one base -- measured
 * alternatives: (u8 *) D_800D6D10 = 28 diffs, &D_800D6C94[0x7C] = 17. */
// 13/32 diffs; the residue is ONLY the whole $t file allocated one slot low
// (ROM t8/t7 then t9/t1/t2/t3, IDO t7/t6 then t8/t9/t1/t2 -- the bound is $t0
// in both, and the relative order idx<sym is right; the whole pair just starts
// one register low, so one $t temp is allocated before it in the ROM).
// Two reusable levers got it here:
//   * IDO hands out $v0/$v1/$a0..$a3 in order of FIRST ASSIGNMENT, so priming
//     the locals before the loop in the ROM's register order (val, src, i,
//     dst, p) fixes the allocation at no instruction cost -- the dead stores
//     are eliminated but the ordering survives (22 -> 13).
//   * the ROM materialises D_800D6D10 TWICE; IDO CSEs one symbol, so the loop
//     bound has to be spelled as something else. (u8 *) 0x800D6D10 is the only
//     form that stays 2 instructions; it costs one `ori` where the ROM has
//     `addiu`.  Re-measured this wave: (u8 *) D_800D6D10 CSEs and costs 28,
//     &D_800D6C94[0x7C] costs 17.  0x800D6D10 stays the best spelling.
extern u8 D_800D6C94[];

void func_800F7404(s32 arg0) {
    u32 val;
    s32 i;
    u8 *p;
    u8 *dst;
    u32 *src;

    val = 0;
    src = D_800D6D10[arg0];
    i = 0;
    dst = &D_800D6C94[0x3C];
    p = dst;
    do {
        val = *src;
        p = dst;
        for (i = 0; i < 0x20; i++) {
            p[i] = val & 1;
            val >>= 1;
        }
        dst += 0x20;
        src++;
    } while (dst != (u8 *) 0x800D6D10);
}
#elif defined(PORT)
/* PORT: unpack the save-file's 64 "permanently collected" bits for this area
 * into one byte per entity. The matching body walks from &D_800D6C94[0x3C]
 * to the ABSOLUTE N64 address 0x800D6D10 (== D_800D6C94 + 0x7C there); on
 * the host that literal never terminates the loop, so the bound is spelled
 * as the two 32-bit words it really is. D_800D6C94[0x3C..0x7B] is the
 * canonical byte range for these flags -- the same one the matching
 * func_800F7484 packs from and func_800F753C (PORT arm above) sets. */
extern u8 D_800D6C94[];

void func_800F7404(s32 arg0) {
    s32 w;
    s32 i;

    for (w = 0; w < 2; w++) {
        u32 val = D_800D6D10[arg0][w];
        for (i = 0; i < 0x20; i++) {
            D_800D6C94[0x3C + w * 0x20 + i] = val & 1;
            val >>= 1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F7404.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 24/46 instructions match (22 diffs). Body and instruction
 * count are exact; the residue is the whole $t file allocated one slot
 * low (ROM $t7/$t8/$t9 where IDO takes $t6/$t7/$t8), the prologue
 * schedule that follows from it, and one `ori` where the ROM has
 * `addiu` for the loop bound. Levers already spent (keep them):
 * priming `val = 0; i = 0;` before the outer loop puts val/i in $v0/$v1
 * and src/dst in $a1/$a2 (42 -> 27); declaration order is inert;
 * `dst++; dst[-1] = val;` reproduces the ROM's `addiu $a2,4` plus
 * `sw -0x4($a2)` in the delay slot, where `*dst++ = val;` does not;
 * dead primes that would consume a $t temp are eliminated before
 * register allocation and do not move the one-slot offset. */
// 22/46 diffs. Body and instruction count are exact; the residue is the whole
// $t register file allocated one slot low (ROM t7/t8/t9 where IDO takes
// t6/t7/t8), the resulting prologue schedule, and one `ori` where the ROM has
// `addiu` for the loop bound. Same family as func_800F7404 above.
// What DID work and is worth keeping if anyone returns to it:
//   * priming `val = 0; i = 0;` BEFORE the outer loop is what puts val/i in
//     $v0/$v1 and src/dst in $a1/$a2 (42 -> 27); declaration order is inert.
//   * spelling src as &D_800D6C94[0x3C] and the bound as a DIFFERENT symbol
//     stops IDO CSEing the one base the ROM materialises twice (45 -> 46
//     instructions). &sym[N] as a loop BOUND is recomputed inside the loop,
//     so only the absolute form (u8 *) 0x800D6D10 costs 2 instructions.
//   * `dst++; dst[-1] = val;` gives the ROM's `addiu $a2,4` + `sw -0x4($a2)`
//     in the delay slot; `*dst++ = val;` puts the bump in the delay slot.
//   * Re-tested this wave: dead primes that would consume a $t temp
//     (dst = D_800D6D10[0] in three positions) are eliminated before register
//     allocation and are completely inert -- the one-slot offset does not move.
extern u8 D_800D6C94[];

void func_800F7484(s32 arg0) {
    u32 val;
    s32 i;
    u8 *p;
    u8 *src;
    u32 *dst;

    val = 0;
    i = 0;
    p = src = &D_800D6C94[0x3C];
    dst = D_800D6D10[arg0];
    do {
        val = 0;
        p = src;
        for (i = 0; i < 0x20; i++) {
            val >>= 1;
            if (p[i] & 1) {
                val |= 0x80000000;
            }
        }
        src += 0x20;
        dst++;
        dst[-1] = val;
    } while (src != (u8 *) 0x800D6D10);
}
#elif defined(PORT)
/* PORT: inverse of func_800F7404 above -- pack the 64 per-entity flag bytes
 * back into the two save words. Same absolute-bound problem, same canonical
 * D_800D6C94[0x3C..0x7B] range. Reached from compiled code TODAY:
 * func_800F6AD4 (scene create) calls this before the matching build's
 * initializer has ever populated the byte range, exactly as on console. */
void func_800F7484(s32 arg0) {
    s32 w;
    s32 i;
    extern u8 D_800D6C94[];

    for (w = 0; w < 2; w++) {
        u32 val = 0;
        for (i = 0; i < 0x20; i++) {
            val >>= 1;
            if (D_800D6C94[0x3C + w * 0x20 + i] & 1) {
                val |= 0x80000000;
            }
        }
        D_800D6D10[arg0][w] = val;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F7484.s")
#endif

#ifdef PORT
/* PORT: D_800D6C68 + 0x68 is the N64 address 0x800D6CD0 -- a byte INSIDE
 * D_800D6C94's block (offset 0x3C), not inside D_800D6C68's own 0x28-byte
 * object. splat split that bss run into separate symbols, so on the host
 * the cross-object spelling writes past D_800D6C68[] into unrelated storage.
 * D_800D6C94[0x3C + i] is the canonical host spelling: it is the byte the
 * compiled func_800F7404/func_800F7484 (PORT arms below) and the spawner
 * func_800F7578 read for the same flag. */
void func_800F753C(void) {
    extern u8 D_800D6C94[];
    s32 temp_v0;

    temp_v0 = D_800E76C0[omCurrentObj->objId];
    if ((temp_v0 >= 0) && (temp_v0 < 0x40)) {
        D_800D6C94[temp_v0 + 0x3C] = 1;
    }
}
#else
void func_800F753C(void) {
    s32 temp_v0;

    temp_v0 = D_800E76C0[omCurrentObj->objId];
    if ((temp_v0 >= 0) && (temp_v0 < 0x40)) {
        D_800D6C68[temp_v0 + 0x68] = 1;
    }
}
#endif

#ifdef MIPS_TO_C
/* FACTORY: 93/179 instructions match (86 diffs). Frame 0x68, the whole
 * save set including $f20-$f30, all four late_rodata literals, the
 * loop and every branch target are right; the residue is an FP temp
 * rotation through the four matrix-projection expressions plus the
 * $s4/$s5 pair being swapped (the ROM holds &D_800D6C94[0x3C] in $s4
 * and &D_800D6C90 in $s5). Levers already spent, keep them: the three
 * projected coordinates must be THREE separate locals, not one reused
 * (101 -> 92); &D_800D6C94[0x3C] must be spelled
 * `(u32) &D_800D6C94[0x3C] + i` so IDO folds the +0x3C into the hoisted
 * base the way the ROM does -- a plain `D_800D6C94[0x3C + i]` leaves it
 * as a load displacement, and a real local pointer spills and grows the
 * frame to 0xA0; and the two outer adds of each dot product must be
 * written REVERSED (`(C*z) + (A*x + B*y)`, then `(...) + m[3][col]`)
 * because IDO inverts the last-evaluated add (92 -> 86). */
void func_800F7578(void) {
    extern s32 D_80129124;
    extern u8 *D_801290E0;
    extern u8 D_800D6C90[];
    extern u8 D_800D6C94[];
    extern f32 D_800D6ED0[4][4];
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f2;
    s32 var_a0;
    s32 var_s3;
    u8 *temp_s2;
    u8 temp_v0;
    u8 temp_v1;
    u8 *var_s1;

    if (D_80129124 != 0) {
        var_s3 = 0;
        if (D_800BE4F8 != 6) {
            var_s1 = D_801290E0;
            if (D_80129124 > 0) {
                do {
                    temp_v0 = var_s1[5];
                    temp_s2 = &D_800D6C90[var_s3];
                    if (!(temp_v0 & 8)) {
                        temp_v1 = *temp_s2;
                        var_a0 = 0;
                        if (!((*(u8 *) ((u32) &D_800D6C94[0x3C] + var_s3) | temp_v1) & 1)) {
                            temp_f0 = *(f32 *) (var_s1 + 8);
                            temp_f2 = *(f32 *) (var_s1 + 0xC);
                            temp_f12 = *(f32 *) (var_s1 + 0x10);
                            temp_f16 = 1.0f / (((D_800D6ED0[2][3] * temp_f12)
                                 + ((D_800D6ED0[0][3] * temp_f0)
                                    + (D_800D6ED0[1][3] * temp_f2)))
                                + D_800D6ED0[3][3]);
                            temp_f14 = (((D_800D6ED0[2][0] * temp_f12)
                                 + ((D_800D6ED0[0][0] * temp_f0)
                                    + (D_800D6ED0[1][0] * temp_f2)))
                                + D_800D6ED0[3][0]) * temp_f16;
                            if (!(temp_f14 > 1.4f) && !(temp_f14 < -1.4f)) {
                                temp_f14_2 = (((D_800D6ED0[2][1] * temp_f12)
                                 + ((D_800D6ED0[0][1] * temp_f0)
                                    + (D_800D6ED0[1][1] * temp_f2)))
                                + D_800D6ED0[3][1]) * temp_f16;
                                if (!(temp_f14_2 > 2.0f) && !(temp_f14_2 < -2.0f)) {
                                    if (temp_v0 & 0x20) {
                                        goto block_14;
                                    }
                                    temp_f14_3 = (((D_800D6ED0[2][2] * temp_f12)
                                 + ((D_800D6ED0[0][2] * temp_f0)
                                    + (D_800D6ED0[1][2] * temp_f2)))
                                + D_800D6ED0[3][2]) * temp_f16;
                                    if (!(temp_f14_3 > 0.9f) && !(temp_f14_3 < -0.9f)) {
block_14:
                                        var_a0 = 1;
                                    }
                                }
                            }
                        }
                        if (var_a0 != 0) {
                            if (temp_v1 & 0x80) {
                                *temp_s2 = temp_v1 | 0x80;
                            } else if (spawn_entity(var_s3, var_s1) != -1) {
                                *temp_s2 = 0x81;
                            }
                        } else if (!(temp_v1 & 1)) {
                            *temp_s2 = temp_v1 & 0x7F;
                        }
                    }
                    var_s3 += 1;
                    var_s1 += 0x2C;
                } while (var_s3 < D_80129124);
            }
        }
    }
}
#elif defined(PORT)
/* PORT: per-frame entity spawner, from asm/nonmatchings/ovl2/ovl2_2/
 * func_800F7578.s. Each entity's world position is pushed through the
 * combined view*projection matrix D_800D6ED0 (built by func_800F6830 earlier
 * in the same tick); entities whose clip coordinates land inside the
 * [-1.4,1.4]x[-2.0,2.0]x[-0.9,0.9] guard band get spawn_entity()ed. The two
 * flag arrays are the canonical host bytes described at func_800F753C:
 * active = D_800D6C90[i] (N64 0x800D6CB0 - 0x28 base), permanent =
 * D_800D6C94[0x3C + i]. Flag protocol per the asm: bit0 = alive now,
 * bit7 = has been spawned at least once (kept set while on screen so the
 * one-shot spawn kinds do not respawn). Entities with unk5 bit3 set are
 * never frustum-spawned; unk5 bit5 skips the depth test. */
void func_800F7578(void) {
    extern u8 D_800D6C94[];
    s32 i;
    struct Entity *e;

    if (D_80129124 == 0 || D_800BE4F8 == 6) {
        return;
    }
    e = D_801290E0;
    for (i = 0; i < D_80129124; i++, e++) {
        u8 *active = &D_800D6C90[i];
        u8 a;
        s32 visible;

        if (e->unk5 & 8) {
            continue;
        }
        a = *active;
        visible = 0;
        if (!((D_800D6C94[0x3C + i] | a) & 1)) {
            f32 x = e->pos[0];
            f32 y = e->pos[1];
            f32 z = e->pos[2];
            f32 w = 1.0f / (D_800D6ED0[3][3] + (D_800D6ED0[0][3] * x +
                            D_800D6ED0[1][3] * y + D_800D6ED0[2][3] * z));
            f32 sx = (D_800D6ED0[3][0] + (D_800D6ED0[0][0] * x +
                      D_800D6ED0[1][0] * y + D_800D6ED0[2][0] * z)) * w;
            if (!(sx > 1.4f) && !(sx < -1.4f)) {
                f32 sy = (D_800D6ED0[3][1] + (D_800D6ED0[0][1] * x +
                          D_800D6ED0[1][1] * y + D_800D6ED0[2][1] * z)) * w;
                if (!(sy > 2.0f) && !(sy < -2.0f)) {
                    if (e->unk5 & 0x20) {
                        visible = 1;
                    } else {
                        f32 sz = (D_800D6ED0[3][2] + (D_800D6ED0[0][2] * x +
                                  D_800D6ED0[1][2] * y + D_800D6ED0[2][2] * z)) * w;
                        if (!(sz > 0.9f) && !(sz < -0.9f)) {
                            visible = 1;
                        }
                    }
                }
            }
        }
        if (visible) {
            if (a & 0x80) {
                *active = a | 0x80;
            } else if (spawn_entity(i, e) != (u32)-1) {
                *active = 0x81;
            }
        } else if (!(a & 1)) {
            *active = a & 0x7F;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F7578.s")
#endif

void func_800F7844(void) {
    switch (D_800BE4FC) {
        case 0:
            D_800BE508 = 0;
            D_800BE50C = 0;
            return;
        case 1:
            D_800BE508 = D_800BE534;
            D_800BE50C = 0;
            return;
        case 2:
            D_800BE500 = D_800BE52C;
            D_800BE504 = D_800BE530;
            D_800BE508 = D_800BE534;
            D_800BE50C = D_800BE538;
            return;
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 27/484 instructions match (457 diffs). The score is a register
 * rotation doing damage across the whole body plus an 8-byte frame delta
 * (0x60 here, 0x68 in the ROM): the blob-relocation walk (including the
 * x4 unroll IDO generates from the plain `for` written here, remainder
 * prologue and all), the entity walk, the flag clear, the skybox-record
 * copy, the light-block copies and both overlay switches all line up
 * instruction-for-instruction with the listing. IDO allocates every temp one
 * slot high from the very first index computation ($t6/$t7 where the ROM
 * takes $t5/$t6), so almost every instruction names a rotated register.
 * Measured inert: making the track count and its loop index unsigned (the
 * ROM's `beqz` on the count is already reproduced), and spelling
 * D_800D6F3C+0xC through a (u32) cast to force the ROM's
 * `%lo(D_800D6F3C + 0xC)` address materialisation -- that one costs 5 diffs
 * and was reverted.
 * NOTE: this draft names struct UnkStruct80129418, which this file declares
 * BELOW the pragma site; it was iterated with the body temporarily placed
 * after that declaration. Anyone re-opening it should do the same rather
 * than moving the declaration up (see the ovl2_8 lesson in REFOUND.md). */
void func_800F78E4(void) {
    /* One stage-area row out of the level table; nine words per area. */
    struct StageArea {
        /* 0x00 */ u32 geoBlockA;
        /* 0x04 */ u32 geoBlockB;
        /* 0x08 */ u16 skyboxId;
        /* 0x0A */ u16 bgColor;
        /* 0x0C */ u32 musicId;
        /* 0x10 */ u32 areaSetup;
        /* 0x14 */ u16 deathCamera;
        /* 0x16 */ u16 stageContents;
        /* 0x18 */ u32 dustSettings;
        /* 0x1C */ u32 dustImage;
        /* 0x20 */ u32 areaName;
    };
    /* Header of the loaded area blob's track section. */
    struct TrackSection {
        /* 0x00 */ u32 count;
        /* 0x04 */ u32 tracks;
        /* 0x08 */ u32 routing;
        /* 0x0C */ u32 lengths;
    };
    /* One entry of that section's track array. */
    struct TrackRecord {
        /* 0x00 */ u32 kirbyNode;
        /* 0x04 */ u32 footer;
        /* 0x08 */ u32 cells;
        /* 0x0C */ u16 unkC;
        /* 0x0E */ s16 pointCount;
    };
    /* Footer each track record points at. */
    struct TrackFooter {
        /* 0x00 */ u32 unk0;
        /* 0x04 */ u32 unk4;
        /* 0x08 */ u32 points;
        /* 0x0C */ u32 unkC;
        /* 0x10 */ u32 keyframes;
        /* 0x14 */ u32 connectors;
    };
    /* One placed entity; the array ends at a record whose track byte is 0x99. */
    struct LevelEntity {
        /* 0x00 */ u8 track;
        /* 0x01 */ u8 pad1[3];
        /* 0x04 */ u8 kind;
        /* 0x05 */ u8 pad5[3];
        /* 0x08 */ Vector pos;
        /* 0x14 */ u8 pad14[0x10];
        /* 0x24 */ f32 trackParam;
        /* 0x28 */ u32 unk28;
    };
    struct SkyboxLayer {
        u32 word[0xC];
    };
    struct LightBlock {
        u32 word[6];
    };
    extern s32 D_800D6F3C;
    extern s32 D_801290DC;
    extern struct UnkStruct80129418 *D_8012911C;
    extern struct StageArea *D_800D1F98[];
    extern u8 *D_800D4668[];
    extern struct TrackSection *D_80129114;
    extern s32 D_80129118;
    extern struct LevelEntity *D_80129120;
    extern struct LevelEntity *D_801290E0;
    extern s32 D_80129124;
    extern s32 D_80129128;
    extern u32 D_8012912C;
    extern u32 D_80129130;
    extern s32 D_8012B9B0;
    extern struct SkyboxLayer D_8012B9B8[];
    extern u8 D_800D6C90[];
    extern u8 D_800D6C94[];
    extern u8 D_800D6AB8[];
    extern u8 D_800D7B80[];
    extern struct LightBlock D_800BE548;
    /* in-body: this draft still calls func_800FA1D4 with m2c's leftover
     * fourth register; the definition in ovl2_3.c takes three arguments and
     * is what the file-scope prototype above spells. */
    f32 func_800FA1D4(u32 footer, Vector *pos, s16 pointCount, s32 *entityIndex);
    Vector pos;
    struct StageArea *area;
    struct TrackRecord *track;
    struct TrackFooter *footer;
    struct LevelEntity *entity;
    struct SkyboxLayer *layer;
    u8 *flag;
    u32 base;
    s32 blobBase;
    u32 trackCount;
    u32 i;
    u32 kind;
    u32 skyboxId;

    area = D_800D1F98[(D_800BE500 * 0xC) + D_800BE504];
    D_801290D8 = (struct UnkStruct801290D8_2 *) &area[D_800BE508];
    *(s32 *) ((u8 *) &D_800D6F3C + 0xC) = 0;
    if (area->geoBlockA != 0) {
        do {
            area += 1;
            *(s32 *) ((u8 *) &D_800D6F3C + 0xC) += 1;
        } while (area->geoBlockA != 0);
    }

    /* Load the area blob and turn every offset it stores into a pointer. */
    base = (s32) func_800A9AA8(((struct StageArea *) D_801290D8)->areaSetup, 3);
    D_801290DC = base;
    blobBase = base;
    ((u32 *) base)[0] += base;
    D_8012911C = (struct UnkStruct80129418 *) ((u32 *) base)[0];
    ((u32 *) base)[1] += base;
    D_80129114 = (struct TrackSection *) ((u32 *) base)[1];
    ((u32 *) base)[2] += base;
    D_80129120 = (struct LevelEntity *) ((u32 *) base)[2];
    D_801290E0 = D_80129120;

    trackCount = D_80129114->count;
    D_80129118 = trackCount;
    D_80129114->tracks += base;
    track = (struct TrackRecord *) D_80129114->tracks;
    for (i = 0; i < trackCount; i++) {
        track->kirbyNode += base;
        track->footer += base;
        track->cells += base;
        footer = (struct TrackFooter *) track->footer;
        footer->points += base;
        footer->keyframes += base;
        if (footer->connectors != 0) {
            footer->connectors += base;
        }
        track += 1;
    }

    /* Give every entity its track parameter. */
    D_80129128 = 0;
    D_80129124 = 0;
    if (base != (u32) D_801290E0) {
        entity = D_80129120;
        if (entity->track != 0x99) {
            do {
                pos = entity->pos;
                kind = entity->kind;
                if ((kind == 0) || (kind == 2)) {
                    track = &((struct TrackRecord *) D_80129114->tracks)[entity->track];
                    D_80129120->trackParam =
                        func_800FA1D4(track->footer, &pos, track->pointCount, &D_80129124);
                    entity = D_80129120;
                }
                D_80129120 = entity + 1;
                D_80129124 += 1;
                entity += 1;
            } while (entity->track != 0x99);
        }
        D_80129120 = D_801290E0;
    }

    flag = D_800D6C90;
    do {
        flag += 4;
        flag[-4] = 0;
        flag[-3] = 0;
        flag[-2] = 0;
        flag[-1] = 0;
    } while (flag != &D_800D6C94[0x3C]);
    func_800F7404(D_800BE508);

    D_80129114->routing += blobBase;
    D_80129114->lengths += blobBase;
    D_8012912C = D_80129114->routing;
    D_80129130 = D_80129114->lengths;

    D_8012B9B0 = 0;
    skyboxId = ((struct StageArea *) D_801290D8)->skyboxId;
    if (skyboxId != 0) {
        layer = (struct SkyboxLayer *) D_800D4668[skyboxId];
        if (layer->word[0] != 0) {
            do {
                D_8012B9B8[D_8012B9B0] = *layer;
                D_8012B9B0 += 1;
                layer += 1;
            } while (layer->word[0] != 0);
        }
    }

    *(struct LightBlock *) &D_800D7010[0x30] = D_800BE548;
    *(struct LightBlock *) ((u8 *) &gKirbyController + 0x10) = D_800BE548;
    func_800A7A70(0, 1, 2);
    func_800A7A70(5, 1, 2);
    func_800A7A70(1, 0x20001, 0x20002);
    func_800A7A70(2, 0x20001, 0x20002);
    *(u8 **) &D_800D6AB8[8] = &D_800D7B80[0x18];
    func_800A7A70(3, 0x10001, 0x10002);
    *(u8 **) &D_800D6AB8[0x10] = &D_800D7B80[0x20];
    func_800A7A70(6, ((struct StageArea *) D_801290D8)->dustSettings,
                  ((struct StageArea *) D_801290D8)->dustImage);
    *(u8 **) &D_800D6AB8[0x1C] = &D_800D7B80[0x28];
    func_800A7BF4(&D_800D7B80[0x10], (u8 *) &gKirbyController + 0x10);
    func_800A7BF4(&D_800D7B80[0x28], &D_800D7010[0x30]);
    switch (func_800F8560()) {
        case 9:
            utilLoadOverlay(7);
            utilLoadOverlay(0x10);
            return;
        case 2:
            utilLoadOverlay(7);
            switch (D_800BE500) {
                case 0:
                    utilLoadOverlay(0xA);
                    return;
                case 1:
                    utilLoadOverlay(0xB);
                    return;
                case 2:
                    utilLoadOverlay(0xC);
                    return;
                case 3:
                    utilLoadOverlay(0xD);
                    return;
                case 4:
                    utilLoadOverlay(0xE);
                    return;
                case 5:
                    utilLoadOverlay(0xF);
                    return;
            }
            return;
        case 1:
        case 3:
            utilLoadOverlay(7);
            utilLoadOverlay(9);
            return;
        case 10:
            utilLoadOverlay(8);
            utilLoadOverlay(0x12);
            return;
        default:
            utilLoadOverlay(8);
            if (D_800D6F3C >= 3) {
                utilLoadOverlay(0x12);
            }
            break;
    }
}

#elif defined(PORT)
/* PORT: the level-config loader, from asm/nonmatchings/ovl2/ovl2_2/
 * func_800F78E4.s and the format doc in include/level_settings_structs.h.
 * See the big block comment at the top of this file for the data-world map
 * (what is already native, what is big-endian, and which consumers dictate
 * each native layout). Differences from the N64 body, all forced by LP64:
 *   - D_801290D8 points at pc_stage_cfg (a native mirror of the 9-slot
 *     translated StageArea row) instead of into the translated table;
 *   - D_80129114 points at pc_track_hdr, whose unk4 is a NATIVE array of
 *     struct Unk80129114_4 records backed by native PcTrackFooter
 *     descriptors, because ovl2_3/plylib/ovl2_10 index those structs with
 *     host strides. The in-blob node array itself is left alone -- nothing
 *     reads it once these records exist;
 *   - the entity walk decodes each 0x2C record in place (struct Entity is
 *     scalar-only, so LP64 == N64) before handing it to the compiled
 *     func_800FA1D4/spawn_entity;
 *   - the D_800BE548/D_800BE550 light block is copied in N64 MEMORY order
 *     (bswap of the value-preserving translated words): its consumers --
 *     func_800A5404-family and func_800A7BF4 -- read r,g,b BYTES, and
 *     gSPLight hands the RSP raw memory. Same canonical-byte-order rule as
 *     the ColorPack note in func_800A9250's PORT arm;
 *   - D_800D6AB8 is a native 8-slot pointer array on this build (see
 *     src/ovl1/ovl1.c), so the N64 byte offsets 8/0x10/0x1C become slots
 *     2/4/7;
 *   - the D_8012B9B8 skybox-particle records copy the translated words
 *     value-preserved, except the one u16 pair at +8/+A that ovl2_6's
 *     compiled readers access as u16 fields. */
void func_800F78E4(void) {
    void **rows;
    void **row;
    u32 id;
    u32 nbytes;
    struct BankHeader *bank;
    u32 *entry;
    u8 *base;
    u32 h0, h1, h2;
    u32 *ch;
    u32 count, nodesOff, u8Off, f32Off;
    struct Unk80129114_4 *recs;
    struct PcTrackFooter *foots;
    u32 i;
    s32 n;

    /* -- stage-area config ------------------------------------------- */
    rows = (void **)D_800D1F98[D_800BE500 * 12 + D_800BE504];
    row = rows + D_800BE508 * 9;
    pc_stage_cfg.liGeoBlockA   = (u32)(uintptr_t)row[0];
    pc_stage_cfg.liGeoBlockB   = (u32)(uintptr_t)row[1];
    pc_stage_cfg.skyboxId      = (u16)((u32)(uintptr_t)row[2] >> 16);
    pc_stage_cfg.bgColor       = (u16)(u32)(uintptr_t)row[2];
    pc_stage_cfg.musicId       = (u32)(uintptr_t)row[3];
    pc_stage_cfg.biAreaSetup   = (u32)(uintptr_t)row[4];
    pc_stage_cfg.deathCamera   = (u16)((u32)(uintptr_t)row[5] >> 16);
    pc_stage_cfg.stageContents = (u16)(u32)(uintptr_t)row[5];
    pc_stage_cfg.biDustSettings = (u32)(uintptr_t)row[6];
    pc_stage_cfg.biDustImg     = (u32)(uintptr_t)row[7];
    pc_stage_cfg.areaName32    = (u32)(uintptr_t)row[8];
    D_801290D8 = (struct UnkStruct801290D8_2 *)&pc_stage_cfg;

    n = 0;
    while ((u32)(uintptr_t)rows[n * 9] != 0) {
        n++;
    }
    *(s32 *)((u8 *)&D_800D6F3C + 0xC) = n; /* defsym family, N64 byte offset */

    /* -- area-setup blob (raw big-endian cartridge bytes) ------------- */
    id = pc_stage_cfg.biAreaSetup;
    bank = D_800D0184[id >> 16];
    entry = bank->miscBlockTable + (id & 0xFFFF);
    nbytes = ((entry[1] - entry[0]) + 3) & 0xFFFFFC;
    base = (u8 *) func_800A9AA8(id, 3);
    D_801290DC = (s32)(uintptr_t)base;

    pc_lvl_reset(nbytes);
    h0 = pc_rd32(base + 0);
    h1 = pc_rd32(base + 4);
    h2 = pc_rd32(base + 8);
    *(u32 *)(base + 0) = (u32)(uintptr_t)(base + h0);
    *(u32 *)(base + 4) = (u32)(uintptr_t)(base + h1);
    *(u32 *)(base + 8) = (u32)(uintptr_t)(base + h2);
    pc_lvl_bound(h0);
    pc_lvl_bound(h1);
    pc_lvl_bound(h2);

    /* -- collision header: native words in place ---------------------- */
    ch = (u32 *)(base + h0);
    for (i = 0; i < 17; i++) {
        ch[i] = pc_be32(ch[i]);
    }
    D_8012911C = (struct UnkStruct80129418 *)ch;
    pc_lvl_collect_collision(base, ch);

    /* -- track/path node section -------------------------------------- */
    {
        u8 *sec = base + h1;
        count = pc_rd32(sec + 0);
        nodesOff = pc_rd32(sec + 4);
        u8Off = pc_rd32(sec + 8);
        f32Off = pc_rd32(sec + 12);
        *(u32 *)(sec + 0) = count;
        *(u32 *)(sec + 4) = (u32)(uintptr_t)(base + nodesOff);
        *(u32 *)(sec + 8) = (u32)(uintptr_t)(base + u8Off);
        *(u32 *)(sec + 12) = (u32)(uintptr_t)(base + f32Off);
        pc_lvl_bound(nodesOff);
        pc_lvl_bound(u8Off);         /* routing matrix: bytes, no swap */
        pc_lvl_region(f32Off, 4);    /* track-length table: f32s */

        if (count == 0 || count > 0x100) {
            count = 0; /* corrupt/degenerate section: publish an empty track
                        * set; every consumer bounds itself on D_80129118 */
        }
        recs = (struct Unk80129114_4 *)func_800A8358(
            (s32)(((count + 1) * (sizeof(struct Unk80129114_4) + sizeof(struct PcTrackFooter))) | 3));
        foots = (struct PcTrackFooter *)(recs + count + 1);
        for (i = 0; i < count; i++) {
            u8 *nr = base + nodesOff + i * 0x10;
            u32 kOff = pc_rd32(nr + 0);
            u32 fOff = pc_rd32(nr + 4);
            u32 cOff = pc_rd32(nr + 8);
            u8 *fr = base + fOff;
            u32 pOff, kfOff, qOff;

            pc_lvl_bound(fOff);
            pc_lvl_bound(cOff);
            if (kOff != 0 && kOff + 0x90 <= nbytes) {
                u32 j;
                for (j = 0; j < i; j++) {
                    if (pc_rd32(base + nodesOff + j * 0x10) == kOff) {
                        break; /* shared kirby node: already swapped */
                    }
                }
                if (j == i) {
                    pc_lvl_bound(kOff);
                    pc_lvl_swap_kirby_node(base + kOff);
                }
            }

            foots[i].kind = fr[0];
            foots[i].unk1 = fr[1];
            foots[i].n = (s16)pc_rd16(fr + 2);
            foots[i].unk04 = pc_rdf32(fr + 4);
            pOff = pc_rd32(fr + 8);
            foots[i].points = base + pOff;
            pc_lvl_region(pOff, 4);
            foots[i].length = pc_rdf32(fr + 0xC);
            kfOff = pc_rd32(fr + 0x10);
            foots[i].keyframes = (f32 *)(base + kfOff);
            pc_lvl_region(kfOff, 4);
            qOff = pc_rd32(fr + 0x14);
            foots[i].quartics = (qOff != 0) ? (f32 *)(base + qOff) : NULL;
            pc_lvl_region(qOff, 4);

            recs[i].unk0 = (struct Unk80129114_4_0 *)(base + kOff);
            recs[i].footer = (struct Unk80129114_4_4 *)&foots[i];
            recs[i].links = (u32)(uintptr_t)(base + cOff);
            recs[i].linkCountHi = nr[0xC];
            recs[i].linkCountLo = nr[0xD];
            recs[i].loop = (s16)pc_rd16(nr + 0xE);
        }
        pc_track_hdr.unk0 = count;
        pc_track_hdr.unk4 = recs;
        D_80129114 = &pc_track_hdr;
        D_80129118 = (s32)count;
        D_8012912C = base + u8Off;
        D_80129130 = (f32 *)(base + f32Off);
    }

    /* one pass over every registered homogeneous region */
    pc_lvl_swap_regions(base);

    /* -- entity list (after the swaps: func_800FA1D4 walks the now-native
     *    footer point arrays to seat each entity on its track node) ----- */
    D_80129128 = 0;
    D_80129124 = 0;
    D_801290E0 = (struct Entity *)(base + h2);
    D_80129120 = D_801290E0;
    if (h2 != 0) {
        struct Entity *e = D_801290E0;
        while (*(u8 *)e != 0x99 && (u32)((u8 *)e - base) + 0x2C <= nbytes) {
            pc_sw16((u8 *)e + 6);
            for (i = 8; i < 0x2C; i += 4) {
                pc_sw32((u8 *)e + i);
            }
            if ((e->respawnFlag == 0 || e->respawnFlag == 2) && e->nodeNum < count) {
                Vector pos;
                pos.x = e->pos[0];
                pos.y = e->pos[1];
                pos.z = e->pos[2];
                e->scale[1] = func_800FA1D4(recs[e->nodeNum].footer, &pos,
                                            recs[e->nodeNum].loop);
            }
            D_80129124++;
            e++;
        }
    }

    /* -- per-area runtime state --------------------------------------- */
    for (i = 0; i < 0x40; i++) {
        D_800D6C90[i] = 0; /* entity active flags (canonical base) */
    }
    func_800F7404(D_800BE508);

    /* -- skybox particle records --------------------------------------- */
    D_8012B9B0 = 0;
    if (pc_stage_cfg.skyboxId != 0) {
        u32 *rec = (u32 *)D_800D4668[pc_stage_cfg.skyboxId];
        if (rec != NULL && rec[0] != 0) {
            for (;;) {
                u8 *dst = D_8012B9B8 + D_8012B9B0 * 0x30;
                u32 k;
                *(u32 *)(dst + 0) = rec[0];
                *(u32 *)(dst + 4) = rec[1];
                *(u16 *)(dst + 8) = (u16)(rec[2] >> 16); /* u16 pair: ovl2_6 */
                *(u16 *)(dst + 10) = (u16)rec[2];        /* reads halves */
                for (k = 3; k < 12; k++) {
                    *(u32 *)(dst + k * 4) = rec[k];
                }
                D_8012B9B0++;
                if (rec[12] == 0 || D_8012B9B0 >= 10) {
                    break; /* 10 = D_8012B9B8's capacity (0x1E0/0x30) */
                }
                rec += 12;
            }
        }
    }

    /* -- scene light block, N64 memory order (see block comment) ------- */
    {
        u32 w[6];
        w[0] = D_800BE548[0];
        w[1] = D_800BE548[1];
        w[2] = D_800BE550[0];
        w[3] = D_800BE550[1];
        w[4] = D_800BE550[2];
        w[5] = D_800BE550[3];
        for (i = 0; i < 6; i++) {
            *(u32 *)(&D_800D7010[0x30] + i * 4) = pc_be32(w[i]);
            *(u32 *)((u8 *)&gKirbyController + 0x10 + i * 4) = pc_be32(w[i]);
        }
    }

    /* -- sound banks, color-mod slots, overlays ------------------------ */
    func_800A7A70(0, 1, 2);
    func_800A7A70(5, 1, 2);
    func_800A7A70(1, 0x20001, 0x20002);
    func_800A7A70(2, 0x20001, 0x20002);
    D_800D6AB8[2] = D_800D7B80 + 0x18; /* N64 byte offset 0x8 -> slot 2 */
    func_800A7A70(3, 0x10001, 0x10002);
    D_800D6AB8[4] = D_800D7B80 + 0x20; /* 0x10 -> slot 4 */
    func_800A7A70(6, (s32)pc_stage_cfg.biDustSettings, (s32)pc_stage_cfg.biDustImg);
    D_800D6AB8[7] = D_800D7B80 + 0x28; /* 0x1C -> slot 7 */
    func_800A7BF4((s16 *)(D_800D7B80 + 0x10), (u8 *)&gKirbyController + 0x10);
    func_800A7BF4((s16 *)(D_800D7B80 + 0x28), &D_800D7010[0x30]);

    pc_levelload_debug(id, nbytes, count, (u32)D_80129124, base);

    switch (func_800F8560()) {
        case 9:
            utilLoadOverlay(7);
            utilLoadOverlay(0x10);
            return;
        case 2:
            utilLoadOverlay(7);
            switch (D_800BE500) {
                case 0:
                    utilLoadOverlay(0xA);
                    return;
                case 1:
                    utilLoadOverlay(0xB);
                    return;
                case 2:
                    utilLoadOverlay(0xC);
                    return;
                case 3:
                    utilLoadOverlay(0xD);
                    return;
                case 4:
                    utilLoadOverlay(0xE);
                    return;
                case 5:
                    utilLoadOverlay(0xF);
                    return;
                default:
                    return;
            }
            break;
        case 1:
        case 3:
            utilLoadOverlay(7);
            utilLoadOverlay(9);
            return;
        case 10:
            utilLoadOverlay(8);
            utilLoadOverlay(0x12);
            return;
        default:
            utilLoadOverlay(8);
            if (D_800D6F3C >= 3) {
                utilLoadOverlay(0x12);
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F78E4.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 59/75 instructions match (16 diffs); exact instruction count,
 * frameless leaf, both switch chains, every branch and every offset.
 * Residue: the two global address registers are swapped ($a1 holds
 * &D_800BE514 and $a2 &D_800BE510, the ROM has them the other way
 * round) plus the constant-materialisation schedule that follows.
 * Statement order is inert here -- reordering the two zero stores, and
 * hoisting the 0.0f store above the node read, both left it at 16.
 * Lever that DID land: the inner switch value must be u32, not the u8
 * the lbu suggests -- as u8 IDO stops sharing the constants 1 and 2
 * with the outer switch and emits two extra `li $at` (62 -> 16). */
void func_800F8078(void) {
    extern void *D_80129114;
    extern u32 D_800BE514;
    u8 *temp_v0;
    u32 temp_a0;

    temp_v0 = *(u8 **) (*(u8 **) ((u8 *) D_80129114 + 4) + D_800BE50C * 0x10);
    D_800BE514 = 0;
    D_800BE510 = 0.0f;
    switch (D_800BE4FC) {
        case 0:
            D_800BE4FC = 0;
            break;
        case 1:
            D_800BE4FC = 1;
            break;
        case 2:
            temp_a0 = temp_v0[3];
            switch (temp_a0) {
                case 0:
                    break;
                case 1:
                    D_800BE514 = 0x80000000;
                    D_800BE510 = 1.0f;
                    break;
                case 2:
                    D_800BE514 = 0x80000000;
                    break;
                case 3:
                    D_800BE510 = 1.0f;
                    break;
            }
            D_800BE514 |= temp_v0[2];
            break;
    }
    if (!(*(s16 *) (temp_v0 + 0xE) & 4)) {
        D_800BE518 = D_800BE4FC;
        D_800BE51C = D_800BE508;
        D_800BE520 = D_800BE50C;
        D_800BE524 = D_800BE510;
    }
}
#elif defined(PORT)
/* PORT: spawn-entry state from the start node's kirby-node blob, from
 * asm/nonmatchings/ovl2/ovl2_2/func_800F8078.s. The node record is the
 * NATIVE array this file's func_800F78E4 arm builds; unk0 is the kirby-node
 * blob whose u16 at +2 was byteswapped by pc_lvl_swap_kirby_node, so the
 * ROM's byte reads become sub-word extraction: lbu +3 (MapIn action) is the
 * low byte, lbu +2 (flag bits OR'd into D_800BE514) the high byte. lh +0xE
 * (flags) is the same native s16. */
void func_800F8078(void) {
    struct PcSpawnKirbyNode {
        u8 unk0;
        u8 unk1;
        u16 unk2;
        u8 pad4[0xA];
        s16 unkE;
    } *node;
    extern u32 D_800BE514;
    u8 action;

    node = (struct PcSpawnKirbyNode *) D_80129114->unk4[D_800BE50C].unk0;
    D_800BE514 = 0;
    D_800BE510 = 0.0f;
    switch (D_800BE4FC) {
        case 0:
            D_800BE4FC = 0;
            break;
        case 1:
            D_800BE4FC = 1;
            break;
        case 2:
            action = (u8) (node->unk2 & 0xFF);
            switch (action) {
                case 0:
                    break;
                case 1:
                    D_800BE514 = 0x80000000;
                    D_800BE510 = 1.0f;
                    break;
                case 2:
                    D_800BE514 = 0x80000000;
                    break;
                case 3:
                    D_800BE510 = 1.0f;
                    break;
            }
            D_800BE514 |= (u8) (node->unk2 >> 8);
            break;
    }
    if (!(node->unkE & 4)) {
        D_800BE518 = D_800BE4FC;
        D_800BE51C = D_800BE508;
        D_800BE520 = D_800BE50C;
        D_800BE524 = D_800BE510;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F8078.s")
#endif

void func_800F81A4(void) {
    extern s32 D_801290D0, D_801290D4, D_8012B9B0;
    extern s32 D_8012913C, D_80129138, D_80129140, D_80129144, D_801292E0;

    D_801290D0 = request_track_general(0x24, 0x4A, 0x50);
    if (((s32 *) D_801290D8)[1] != 0) {
        D_801290D4 = request_track_general(0x25, 0x4A, 0x50);
    }
    if (D_8012B9B0 != 0) {
        func_8010137C();
    }
    func_800FA414(2);
    D_80129138 = D_8012913C = 0;
    D_80129140 = 0;
    D_80129144 = -1;
    D_801292E0 = 0x270F;
    if (func_800F8560() == 9) {
        func_800FA414(0xC);
        func_800FBF18(0);
    }
}

extern f32 D_801293AC;
extern f32 D_801293B0;
extern f32 D_801293B4;
extern f32 D_801293B8;
extern f32 D_801293BC;
extern f32 D_801293C0;
extern f32 D_801293C4;
extern f32 D_801293C8;
extern f32 D_801293CC;
extern f32 D_801293D0;
extern f32 D_801293D4;
extern s32 D_801293D8;
extern s32 D_80129408;
s32 func_800FB914(s32);
void func_800F78E4(void);
void func_800F8378(void);
void func_800F8078(void);
void func_800F81A4(void);

void func_800F8274(void) {
    D_801293AC = 0.0;
    D_801293B0 = 0.0f;
    D_801293B4 = 5.0f;
    D_801293B8 = 16.0f;
    D_801293BC = 0.0f;
    D_801293C0 = 1.0f;
    D_801293C4 = 0.1f;
    D_801293C8 = 0.3f;
    D_801293CC = 3.0f;
    D_801293D0 = 80.0f;
    D_801293D4 = 8.0f;
    D_801293D8 = 0;
    func_800FB914(0);
    D_80129408 = 0xC8;
    *(s32 *) &D_8012940C = 0x64;
    func_800F7844();
    func_800F78E4();
    func_800F8378();
    func_800F8078();
    func_800F81A4();
}

struct UnkStruct80129418 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
    s32 unk30;
    s32 unk34;
    s32 unk38;
    s32 unk3C;
    s32 unk40;
    s32 unk44;
};
extern struct UnkStruct80129418 D_80129418;
extern struct UnkStruct80129418 *D_80129410;
extern struct UnkStruct80129418 *D_8012911C;
extern s32 D_801290DC;

#ifdef PORT
/* PORT: publish the level collision header NATIVELY. The matching body
 * mirrors the blob's 17 offset/length words into D_80129418 as packed s32s;
 * ovl2_7's compiled collision walkers, however, read D_80129410 through
 * struct vCollisionHeader (include/level_settings_structs.h), whose LP64
 * layout has 8-byte pointers. So this arm builds that host struct instead.
 * D_80129418's bss block is 0xF0 bytes on the PC build (N64 0x78, doubled),
 * which holds the 136-byte LP64 vCollisionHeader; the offset words were made
 * native by func_800F78E4's PORT arm, and base fits in s32 because the game
 * arena sits below 2 GiB. */
void func_800F8378(void) {
    struct UnkStruct80129418 *src = D_8012911C;
    uintptr_t base = (uintptr_t)(u32)D_801290DC;
    struct vCollisionHeader *dst = (struct vCollisionHeader *)&D_80129418;
    s32 temp;

    dst->usingFloatVertices = 0;
    dst->header.Triangles = (struct CollisionTriangle *)(base + (u32)src->unk0);
    dst->header.Len_Triangles = (u32)src->unk4;
    dst->header.vertices.Vertices = (s16 *)(base + (u32)src->unk8);
    dst->header.Len_Vertices = (u32)src->unkC;
    dst->header.Triangle_Normals = (struct Normal *)(base + (u32)src->unk10);
    dst->header.Len_Triangle_Normals = (u32)src->unk14;
    dst->header.Triangle_Cells = (u16 *)(base + (u32)src->unk18);
    dst->header.Len_Triangle_Cells = (u32)src->unk1C;
    dst->header.Triangle_Norm_Cells = (struct bgmaprecord *)(base + (u32)src->unk20);
    dst->header.Len_Triangle_Norm_Cells = (u32)src->unk24;
    dst->header.Num_Floor_Norms = (u32)src->unk28;
    dst->header.Destructable_Groups = (struct DynGeo_List *)(base + (u32)src->unk2C);
    dst->header.Destructable_Indices = (u16 *)(base + (u32)src->unk30);
    temp = src->unk34;
    if (temp != 0) {
        dst->header.WaterData = (struct WaterData *)(base + (u32)temp);
    } else {
        dst->header.WaterData = NULL;
    }
    dst->header.Len_WaterData = (u32)src->unk38;
    temp = src->unk3C;
    if (temp != 0) {
        dst->header.Water_Normals = (struct Normal *)(base + (u32)temp);
    } else {
        dst->header.Water_Normals = NULL;
    }
    dst->header.Len_Water_Normals = (u32)src->unk40;
    D_80129410 = (struct UnkStruct80129418 *)dst;
}
#else
void func_800F8378(void) {
    struct UnkStruct80129418 *src = D_8012911C;
    s32 base = D_801290DC;
    s32 temp;

    D_80129418.unk0 = 0;
    D_80129418.unk4 = src->unk0 + base;
    D_80129418.unk8 = src->unk4;
    D_80129418.unkC = src->unk8 + base;
    D_80129418.unk10 = src->unkC;
    D_80129418.unk14 = src->unk10 + base;
    D_80129418.unk18 = src->unk14;
    D_80129418.unk1C = src->unk18 + base;
    D_80129418.unk20 = src->unk1C;
    D_80129418.unk24 = src->unk20 + base;
    D_80129418.unk28 = src->unk24;
    D_80129418.unk2C = src->unk28;
    D_80129418.unk30 = src->unk2C + base;
    D_80129418.unk34 = src->unk30 + base;
    temp = src->unk34;
    if (temp != 0) {
        D_80129418.unk38 = temp + base;
    } else {
        D_80129418.unk38 = 0;
    }
    D_80129418.unk3C = src->unk38;
    temp = src->unk3C;
    if (temp != 0) {
        D_80129418.unk40 = temp + base;
    } else {
        D_80129418.unk40 = 0;
    }
    D_80129418.unk44 = src->unk40;
    D_80129410 = &D_80129418;
}
#endif /* PORT */

#ifdef PORT
/* PORT: loader for a standalone OBJECT-collision blob (destructible level
 * pieces; ovl2_10's func_80114DBC allocates the 0x48-byte destination and
 * func_80114A14 -- compiled -- reads it back as PACKED s32 WORDS, so unlike
 * D_80129418 above this one keeps the N64 word layout, with in-arena
 * addresses that fit s32). The blob is raw BE cartridge bytes: word +0 is
 * the header offset, the 17 header words are decoded on read, and the
 * collision arrays are byteswapped with the same region machinery the level
 * loader uses (boundaries = every offset the header names + blob size). */
void func_800F8464(s32 arg0, struct UnkStruct80129418 *dst) {
    u8 *base;
    u32 nbytes;
    struct BankHeader *bank;
    u32 *entry;
    u32 h[17];
    u32 hdrOff;
    u32 i;
    s32 ibase;

    bank = D_800D0184[(u32)arg0 >> 16];
    entry = bank->miscBlockTable + ((u32)arg0 & 0xFFFF);
    nbytes = ((entry[1] - entry[0]) + 3) & 0xFFFFFC;
    base = (u8 *) func_800A9AA8(arg0, 3);
    ibase = (s32)(uintptr_t)base;

    hdrOff = pc_rd32(base);
    for (i = 0; i < 17; i++) {
        h[i] = pc_rd32(base + hdrOff + i * 4);
    }
    pc_lvl_reset(nbytes);
    pc_lvl_bound(hdrOff);
    pc_lvl_collect_collision(base, h);
    pc_lvl_swap_regions(base);

    dst->unk0 = 0;
    dst->unk4 = (s32)h[0] + ibase;
    dst->unk8 = (s32)h[1];
    dst->unkC = (s32)h[2] + ibase;
    dst->unk10 = (s32)h[3];
    dst->unk14 = (s32)h[4] + ibase;
    dst->unk18 = (s32)h[5];
    dst->unk1C = (s32)h[6] + ibase;
    dst->unk20 = (s32)h[7];
    dst->unk24 = (s32)h[8] + ibase;
    dst->unk28 = (s32)h[9];
    dst->unk2C = (s32)h[10];
    dst->unk30 = (s32)h[11] + ibase;
    dst->unk34 = (s32)h[12] + ibase;
    dst->unk38 = (h[13] != 0) ? (s32)h[13] + ibase : 0;
    dst->unk3C = (s32)h[14];
    dst->unk40 = (h[15] != 0) ? (s32)h[15] + ibase : 0;
    dst->unk44 = (s32)h[16];
}
#else
void func_800F8464(s32 arg0, struct UnkStruct80129418 *dst) {
    s32 base = (s32) func_800A9AA8(arg0, 3);
    struct UnkStruct80129418 *src = (struct UnkStruct80129418 *) (*(s32 *) base + base);
    s32 temp;

    dst->unk0 = 0;
    dst->unk4 = src->unk0 + base;
    dst->unk8 = src->unk4;
    dst->unkC = src->unk8 + base;
    dst->unk10 = src->unkC;
    dst->unk14 = src->unk10 + base;
    dst->unk18 = src->unk14;
    dst->unk1C = src->unk18 + base;
    dst->unk20 = src->unk1C;
    dst->unk24 = src->unk20 + base;
    dst->unk28 = src->unk24;
    dst->unk2C = src->unk28;
    dst->unk30 = src->unk2C + base;
    dst->unk34 = src->unk30 + base;
    temp = src->unk34;
    if (temp != 0) {
        dst->unk38 = temp + base;
    } else {
        dst->unk38 = 0;
    }
    dst->unk3C = src->unk38;
    temp = src->unk3C;
    if (temp != 0) {
        dst->unk40 = temp + base;
    } else {
        dst->unk40 = 0;
    }
    dst->unk44 = src->unk40;
}
#endif /* PORT */









u16 func_800F8560(void) {
    return D_801290D8->unk16;
}

#ifdef MIPS_TO_C
/* FACTORY: 49/110 instructions match (61 diffs); exact instruction
 * count, frameless leaf, all four late_rodata literals, both scan
 * loops and every branch target. Residue is a whole-function register
 * permutation: $v0/$v1 are swapped (the ROM keeps the D_800E6BD0
 * cursor in $v1 and reuses $v0 for arg0*4 then the connector cursor;
 * IDO does the reverse) and the $a file is shifted one slot
 * ($a1/$a0/$a2 vs $a0/$a1/$a2 -- the ROM still has arg0 occupying $a0
 * when it allocates &D_800E5F90[arg0]). Measured inert: an explicit
 * `temp_v0 = arg0 * 4` versus two &sym[arg0] index expressions, and
 * swapping which of the two arrays is indexed first. Two levers DID
 * land and must be kept: D_80129114 has to be read into a LOCAL once
 * (IDO otherwise CSEs its ADDRESS and reloads the pointer, +1
 * instruction, 76 -> 63) and the node address must be spelled
 * base + idx*0x10, not idx*0x10 + base (63 -> 61). */
void func_800F8570(s32 arg0) {
    extern void *D_80129114;
    extern s32 D_800E5F90[];
    extern f32 D_800E6BD0[];
    f32 *temp_v1;
    f32 temp_f0;
    f32 temp_f12;
    f32 var_f0;
    f32 var_f2;
    s16 temp_t0;
    s32 *temp_a1;
    s32 temp_t1;
    s32 temp_v0;
    s32 var_a0;
    s32 var_t1;
    s32 var_t2;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_t5;
    u8 *temp_a0;
    u8 *temp_a2;
    u8 *temp_a3;
    u8 *temp_a3_2;
    u8 *var_v0;

    temp_v1 = &D_800E6BD0[arg0];
    temp_a1 = &D_800E5F90[arg0];
    temp_f0 = *temp_v1;
    if (!(0.0f <= temp_f0) || !(temp_f0 <= 1.0f)) {
        temp_a2 = (u8 *) D_80129114;
        temp_a0 = *(u8 **) (temp_a2 + 4) + *temp_a1 * 0x10;
        temp_a3 = *(u8 **) (temp_a0 + 4);
        temp_t0 = *(s16 *) (temp_a0 + 0xC);
        if (temp_f0 < 0.0f) {
            var_t1 = 0;
            if (temp_t0 == 0) {
                *temp_v1 = 0.0001f;
                return;
            }
            var_v0 = *(u8 **) (temp_a0 + 8);
            if (temp_t0 != 0) {
loop_6:
                temp_a0_2 = var_v0[0];
                var_t1 += 1;
                if ((temp_a0_2 != 0) || (var_v0[1] & 0xF0)) {
                    if (temp_a0_2 != 0) {
                        *temp_v1 = 0.0001f;
                        return;
                    }
                    var_v0 += 4;
                    if (var_t1 == temp_t0) {
                        goto block_11;
                    }
                    goto loop_6;
                }
                goto block_11;
            }
block_11:
            var_f2 = -temp_f0;
            var_a0 = 0;
            goto block_21;
        }
        if (temp_t0 == 0) {
            *temp_v1 = 0.9999f;
            return;
        }
        var_t2 = temp_t0 - 1;
        var_v0 = (*(u8 **) (temp_a0 + 8) + temp_t0 * 4) - 4;
        temp_t1 = *(s16 *) (temp_a3 + 2) - 1;
        if (var_t2 >= 0) {
loop_15:
            temp_a0_3 = var_v0[0];
            var_t2 -= 1;
            if ((temp_t1 != temp_a0_3) || (var_v0[1] & 0xF0)) {
                if (temp_t1 != temp_a0_3) {
                    *temp_v1 = 0.9999f;
                    return;
                }
                var_v0 -= 4;
                if (var_t2 < 0) {
                    goto block_20;
                }
                goto loop_15;
            }
            goto block_20;
        }
block_20:
        var_a0 = 1;
        var_f2 = temp_f0 - 1.0f;
block_21:
        temp_t5 = var_v0[2];
        *temp_a1 = temp_t5;
        temp_a3_2 = *(u8 **) (*(u8 **) (temp_a2 + 4) + temp_t5 * 0x10 + 4);
        temp_f12 = (*(f32 *) (temp_a3 + 0xC) * var_f2) / *(f32 *) (temp_a3_2 + 0xC);
        if (var_a0 != 0) {
            var_f0 = temp_f12;
        } else {
            var_f0 = -temp_f12;
        }
        *temp_v1 = var_f0 + *(f32 *) (*(u8 **) (temp_a3_2 + 0x10) + var_v0[3] * 4);
    }
}
#elif defined(PORT)
/* PORT: track-parameter overflow handler (draft above, verified against
 * asm/nonmatchings/ovl2/ovl2_2/func_800F8570.s). When D_800E6BD0[arg0]
 * leaves [0,1], scan the current node's connector records for the exit at
 * that end -- forward for connectors whose point index is 0 (underflow),
 * backward for the ones at pointCount-1 (overflow) -- skipping connectors
 * flagged 0xF0; a connector at the wrong point index (or no connectors at
 * all) clamps the parameter to 0.0001/0.9999 instead. On a transition the
 * node switches to the connector's target and the leftover distance is
 * rescaled by the two track lengths around the target's keyframe value.
 * Node record fields follow the func_800F8B1C precedent (ovl2_3.c): the
 * connector count is the big-endian s16 kept as raw bytes
 * (linkCountHi<<8|linkCountLo), connectors are untouched byte records
 * behind the u32 links slot, and the footer is this file's native
 * PcTrackFooter. The ROM's exhausted scans
 * fall out with the cursor one record past the run (forward) or one before
 * it (backward) and still consume that record's bytes 2/3 -- replicated
 * as-is, the reads stay inside the level blob. */
void func_800F8570(s32 arg0) {
    f32 *pT = &D_800E6BD0[arg0];
    f32 t = *pT;
    s32 *pNode = &D_800E5F90[arg0];
    struct Unk80129114_4 *node;
    struct PcTrackFooter *footer;
    struct PcTrackFooter *newFooter;
    u8 *conn;
    u8 *c;
    s32 n;
    s32 i;
    s32 dir;
    f32 frac;
    f32 f;

    if (t >= 0.0f && t <= 1.0f) {
        return;
    }
    node = &D_80129114->unk4[*pNode];
    footer = (struct PcTrackFooter *) node->footer;
    n = (s16) ((node->linkCountHi << 8) | node->linkCountLo);
    if (t < 0.0f) {
        if (n == 0) {
            *pT = 0.0001f;
            return;
        }
        c = conn = (u8 *) (uintptr_t) node->links;
        for (i = 0; i < n; i++, c += 4) {
            if (c[0] != 0) {
                *pT = 0.0001f;
                return;
            }
            if (!(c[1] & 0xF0)) {
                break;
            }
        }
        dir = 0;
        frac = -t;
    } else {
        s32 last;

        if (n == 0) {
            *pT = 0.9999f;
            return;
        }
        conn = (u8 *) (uintptr_t) node->links;
        last = footer->n - 1;
        c = conn + (n - 1) * 4;
        for (i = n - 1; i >= 0; i--, c -= 4) {
            if (c[0] != last) {
                *pT = 0.9999f;
                return;
            }
            if (!(c[1] & 0xF0)) {
                break;
            }
        }
        dir = 1;
        frac = t - 1.0f;
    }
    *pNode = c[2];
    newFooter = (struct PcTrackFooter *) D_80129114->unk4[c[2]].footer;
    f = (footer->length * frac) / newFooter->length;
    if (dir == 0) {
        f = -f;
    }
    *pT = f + newFooter->keyframes[c[3]];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F8570.s")
#endif

#ifdef PORT
/* PORT: convert a moving-platform world delta into track progress for
 * entity arg0, from the matched N64 body below with the node access respelled
 * for the NATIVE records (see the func_800F78E4 arm). Projects the XZ
 * delta onto the normalized track tangent, advances D_800E6BD0 by the
 * projected distance, and returns it (ovl1_8's func_800B531C stores it as
 * the knockback carry-over). func_800F8570 (grouped-follower update) is
 * still asm-only; its weak stub logs once under KIRBY_PC_TRACE. */
f32 func_800F8728(s32 arg0, f32 arg1, f32 arg2) {
    struct Unk80129114_4_4 *footer;
    Vector tang;
    f32 inv;
    f32 dist;

    footer = D_80129114->unk4[D_800E5F90[arg0]].footer;
    func_8001E344(&tang, footer, D_800E6BD0[arg0]);
    inv = 1.0f / sqrtf((tang.x * tang.x) + (tang.z * tang.z));
    tang.x *= inv;
    tang.z *= inv;
    dist = (tang.x * arg1) + (tang.z * arg2);
    D_800E6BD0[arg0] += (dist / footer->length) * 0.1f;
    func_800F8570(arg0);
    return dist;
}
#else
/* Matched. Two levers are load-bearing and must be kept: the two symbol reads
 * in the sp34 expression are written in the REVERSE of the ROM's evaluation
 * order (D_800E5F90 first in source, so D_80129114 is evaluated first and
 * takes $t6) -- worth 7 words -- and the final accumulate is spelled
 * `(...) + *sp1C`, not `*sp1C + (...)`, for `add.s $f18,$f8,$f10`.
 * The last two words came from the declaration list: `f32 sp20` DECLARED
 * LAST puts it at the ROM's 0x20 and leaves the 4-byte hole at 0x24. The
 * previous note here concluded the hole was unreachable after sweeping pads
 * and wider aggregates; it is a declaration-ORDER knob, not a size knob.
 * (A splice-and-measure harness that scores a scratch COPY will still print
 * 1/63 here: verify.py derives the .rodata base from the file's PATH, so on a
 * copy the 0.1f load reads as `<.rodata>+0x80` instead of D_80128790.
 * ovl2_2.o's .rodata links at 0x80128710, so +0x80 IS D_80128790. Scored on
 * the real path verify.py prints MATCH; measure_seeds.py now passes
 * VERIFY_SECBASE_SRC so it does too.) */
f32 func_800F8728(s32 arg0, f32 arg1, f32 arg2) {
    extern void *D_80129114;
    extern s32 D_800E5F90[];
    extern f32 D_800E6BD0[];
    void *sp34;
    Vector sp28;
    f32 *sp1C;
    f32 sp20;

    sp34 = *(void **) (D_800E5F90[arg0] * 0x10
                       + (u8 *) *(void **) ((u8 *) D_80129114 + 4) + 4);
    sp1C = &D_800E6BD0[arg0];
    func_8001E344(&sp28, sp34, *sp1C);
    sp20 = 1.0f / sqrtf((sp28.x * sp28.x) + (sp28.z * sp28.z));
    sp28.x = sp28.x * sp20;
    sp28.z = sp28.z * sp20;
    sp20 = (sp28.x * arg1) + (sp28.z * arg2);
    *sp1C = ((sp20 / *(f32 *) ((u8 *) sp34 + 0xC)) * 0.1f) + *sp1C;
    func_800F8570(arg0);
    return sp20;
}
#endif

f32 func_800F8824(Vector *vec, f32 angle) {
    if (vec != NULL) {
        return atanf(-((vec->x * sinf(angle)) + (cosf(angle) * vec->z)) / vec->y);
    } else {
        return 0.0f;
    }
}
