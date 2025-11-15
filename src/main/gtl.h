#ifndef GTL_H
#define GTL_H

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

typedef struct MatrixFuncTable {
    /* 0x00 */ s32 (*unk_00)(Mtx*, void*, Gfx**);
    /* 0x04 */ s32 (*unk_04)(Mtx*, void*, Gfx**);
} MatrixFuncTable; // size = 0x08

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
    /* 0x60 */ MatrixFuncTable* mtxHandler;
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

typedef struct FuncTable {
    /* 0x00 */ u16 flags;
    /* 0x04 */ void (*onPrivUpdate)(void);
    /* 0x08 */ void (*onUpdate)(struct FuncTable *);
    /* 0x0C */ void (*onPrivDraw)(void);
    /* 0x10 */ void (*onDraw)(struct FuncTable *);
} FuncTable; // size == 0x14

extern Gfx *gDisplayListHeads[4];

void gtlSetSegment0F(Gfx **);
void gtlSetUpdateDrawRate(u16 updateRate, u16 drawRate);

#endif // GTL_H
