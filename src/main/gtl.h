#ifndef GTL_H
#define GTL_H

typedef struct {
    /* 0x00 */ u16 unk0;
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

typedef struct Struct_8004B038 {
    /* 0x00 */ s32 (*unk_00)(Mtx*, void*, Gfx**);
    /* 0x04 */ s32 (*unk_04)(Mtx*, void*, Gfx**);
} Struct_8004B038; // size = 0x08

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
    /* 0x60 */ Struct_8004B038* unk60;
    /* 0x64 */ void* unk64; // fn pointer void(*)(struct DObjDynamicStore *)
    /* 0x68 */ u32 numOMAobjs;
    /* 0x6C */ u32 numOMMobjs;
    /* 0x70 */ u32 numOMDobjs;
    /* 0x74 */ u32 omDobjSize;
    /* 0x78 */ u32 numOMSobjs;
    /* 0x7C */ u32 omSobjSize;
    /* 0x80 */ u32 numOMCameras;
    /* 0x84 */ u32 omCameraSize;
    /* 0x88 */ void (*postInitFunc)(void);
} SceneSetup; // size >= 0x8C

extern Gfx *gDisplayListHeads[4];

#endif // GTL_H
