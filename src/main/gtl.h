#ifndef GTL_H
#define GTL_H

#include "render.h"

// todo: number of CFB's instead?
#define NUM_GTL_CONTEXTS 2

enum UcodeTypes {
    UCODE_F3DEX2_FIFO = 0,
    UCODE_F3DEX2_XBUS = 1,
    UCODE_F3DEX2_NON_FIFO = 2,
    UCODE_F3DEX2_NON_XBUS = 3,
    UCODE_F3DEX2_REJ_FIFO = 4,
    UCODE_F3DEX2_REJ_XBUS = 5,
    UCODE_F3DLX2_REJ_FIFO = 6,
    UCODE_F3DLX2_REJ_XBUS = 7,
    UCODE_L3DEX2_FIFO = 8,
    UCODE_L3DEX2_XBUS = 9,
    UCODE_S2DEX2_FIFO = 10,
    UCODE_S2DEX2_XBUS = 11,
// no clue what these are used for, but I _will_ be using them for f3dex3
    UCODE_12_FIFO = 12,
    UCODE_12_XBUS = 13,
    UCODE_12_NON_FIFO = 14,
    UCODE_12_NON_XBUS = 15
};

#ifdef PORT
/* PORT: ONE FIELD PER GENERATED WORD.
 *
 * tools/pc/gen_data.py emits every N64 32-bit data word as a `void *`, which
 * is 8 bytes under -m64, and advances its interior-symbol offsets by 8 to
 * match. So a generated table is a UNIFORM array of pointer-sized words.
 *
 * The N64 struct below is a MIXED layout -- u16/u32/s32 fields at 4-byte
 * offsets, pointers at 4 bytes too. Under LP64 the compiler lays those out
 * with 4-byte scalars and 8-byte pointers, and the two layouts stop agreeing:
 * `setup->postInitFunc` at N64 offset 0x88 (word 34) resolved to a completely
 * different word, which is how gtlStart came to jump to 0x30 and segfault.
 *
 * Making every field pointer-width restores the invariant the data has:
 * field N lives at byte N*8, exactly where gen_data.py put word N.
 *
 * The two sub-word fields need care. N64 is BIG-ENDIAN, so a u16 declared at a
 * word's base occupies that word's HIGH half; the generator preserved the
 * whole word, so those are read with a shift. */
typedef uintptr_t GtlWord;
typedef struct {
    /* word  0 */ GtlWord flags;
    /* word  1 */ void (*onUpdate)(void);
    /* word  2 */ void (*onDraw)(void);
    /* word  3 */ void* heapBase;
    /* word  4 */ GtlWord heapSize;
    /* word  5 */ GtlWord unk14;
    /* word  6 */ GtlWord numContexts;
    /* word  7 */ GtlWord dlBufferSize0;
    /* word  8 */ GtlWord dlBufferSize1;
    /* word  9 */ GtlWord dlBufferSize2;
    /* word 10 */ GtlWord dlBufferSize3;
    /* word 11 */ GtlWord gfxHeapSize;
    /* word 12 */ GtlWord unk30;
    /* word 13 */ GtlWord rdpOutputBufferSize;
    /* word 14 */ void (*beforeRender)(Gfx**);
    /* word 15 */ void (*contpadPoll)(void);
} BufferSetup;
/* A u16 declared at a word base is that word's HIGH half on big-endian, so a
 * read of the generated word needs a shift. Applied at the use site rather
 * than via a macro -- a `#define flags ...` here renamed the field in
 * OSTask_t, Camera and GObj as well, which is exactly the sort of collision a
 * header-wide macro invites. */
#define GTL_FLAGS(w) ((u16)((w) >> 16))
#else
typedef struct {
    /* 0x00 */ u16 flags;
    /* 0x04 */ void (*onUpdate)(void);
    /* 0x08 */ void (*onDraw)(void);
    /* 0x0C */ void* heapBase;
    /* 0x10 */ u32 heapSize;
    /* 0x14 */ u32 unk14; // count?
    /* 0x18 */ s32 numContexts;
    /* 0x1C */ u32 dlBufferSize0;
    /* 0x20 */ u32 dlBufferSize1;
    /* 0x24 */ u32 dlBufferSize2;
    /* 0x28 */ u32 dlBufferSize3;
    /* 0x2C */ u32 gfxHeapSize;
    /* 0x30 */ u16 unk30;
    /* 0x34 */ s32 rdpOutputBufferSize;
    /* 0x38 */ void (*beforeRender)(Gfx**);
    /* 0x3C */ void (*contpadPoll)(void); // controller read callback?
} BufferSetup;                              // size == 0x40
#endif

typedef struct MatrixFuncTable {
    /* 0x00 */ s32 (*unk_00)(Mtx*, void*, Gfx**);
    /* 0x04 */ s32 (*unk_04)(Mtx*, void*, Gfx**);
} MatrixFuncTable; // size = 0x08

#ifdef PORT
typedef struct {
    /* word  0..15 */ BufferSetup gtlSetup;
    /* word 16 */ GtlWord threadCount;
    /* word 17 */ GtlWord threadStackCount;
    /* word 18 */ GtlWord stackCount;
    /* word 19 */ GtlWord unk4C;
    /* word 20 */ GtlWord procCount;
    /* word 21 */ GtlWord objCount;
    /* word 22 */ GtlWord objectSize;
    /* word 23 */ GtlWord mtxCount;
    /* word 24 */ MatrixHandler *mtxHandler;
    /* word 25 */ void* unk64;
    /* word 26 */ GtlWord AObjCount;
    /* word 27 */ GtlWord MObjCount;
    /* word 28 */ GtlWord DObjCount;
    /* word 29 */ GtlWord omDobjSize;
    /* word 30 */ GtlWord SobjCount;
    /* word 31 */ GtlWord omSobjSize;
    /* word 32 */ GtlWord CameraCount;
    /* word 33 */ GtlWord omCameraSize;
    /* word 34 */ void (*postInitFunc)(void);
} SceneSetup;
#else
typedef struct {
    /* 0x00 */ BufferSetup gtlSetup;
    /* 0x40 */ u32 threadCount;
    /* 0x44 */ u32 threadStackCount;
    /* 0x48 */ u32 stackCount;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ u32 procCount;
    /* 0x54 */ u32 objCount;
    /* 0x58 */ u32 objectSize;
    /* 0x5C */ u32 mtxCount;
    /* 0x60 */ MatrixHandler *mtxHandler;
    /* 0x64 */ void* unk64; // fn pointer void(*)(struct DObjDynamicStore *)
    /* 0x68 */ u32 AObjCount;
    /* 0x6C */ u32 MObjCount;
    /* 0x70 */ u32 DObjCount;
    /* 0x74 */ u32 omDobjSize;
    /* 0x78 */ u32 SobjCount;
    /* 0x7C */ u32 omSobjSize;
    /* 0x80 */ u32 CameraCount;
    /* 0x84 */ u32 omCameraSize;
    /* 0x88 */ void (*postInitFunc)(void);
} SceneSetup; // size = 0x70
#endif

typedef struct FuncTable {
    /* 0x00 */ u16 flags;
    /* 0x04 */ void (*onPrivUpdate)(void);
    /* 0x08 */ void (*onUpdate)(struct FuncTable *);
    /* 0x0C */ void (*onPrivDraw)(void);
    /* 0x10 */ void (*onDraw)(struct FuncTable *);
} FuncTable; // size == 0x14

extern Gfx *gDisplayListHeads[4];
extern s32 gtlDrawnFrameCounter;
extern u32 gtlCurrentContextID;

void gtlMergeDisps(void);
void gtlProcessDisps(void);
void gtlReset(void);
void gtlSetSegment0F(Gfx **);
void gtlSetUpdateDrawRate(u16 updateRate, u16 drawRate);

#endif // GTL_H
