#ifndef _MAIN_4_H_
#define _MAIN_4_H_

struct Camera;

struct UnkStruct8004A7F8 {
    /* 0x00 */ u8 drawFrame;
    /* 0x04 */ Gfx* glists[4];
}; // sizeof == 0x14

struct unkAddr8004A7C8_2 {
    u8 filler[0x3C];
    f32 x;
    f32 y;
    f32 z;
};

struct unkAddr8004A7C8 {
    u8 filler[0x2C];
    u32 unk2C;
    u32 unk30;
    u32 unk34;
    u32 unk38;
    struct unkAddr8004A7C8_2* data;
};

// extern struct unkAddr8004A7C8* omCurrentCamera;
struct UnkStruct80014264 {
    struct UnkStruct80014264 *unk0;
    struct UnkStruct80014264 *unk4;
    struct UnkStruct80014264 *unk8;
    u32 unkC;
    struct UnkStruct80014264 *unk10;
    u32 unk14;
    u32 *unk18;
    u32 unk1C;
    f32 unk20;
    u32 unk24;
    u32 *unk28;
    void (*unk2C)(void);
};
// 00000000
// 00000000
// 00000000
// 801D32A0
// 3E4CCCCD
// 3E4CCCCD
// 3E4CCCCD
// 00000000
// 00000000
// 00000100
// 801D32A0
// 00000000
// 00000000
// 00000000
// 00000000
// 00000000
// 00000000
// FF7FFFFF
// 40000000
// 00000000
// 00000000
// 00000000

// Gfx macros
#define gSPMvpRecalc(pkt) gImmp21((pkt), G_SPECIAL_1, 0, 1, 0)
#define gsSPMvpRecalc() gsImmp21(G_SPECIAL_1, 0, 1, 0)
#define G_TX_TILE_5 (5)
#define G_TX_TILE_BLOCK (6)

typedef struct {
    /* 0x00 */ s32 (*unk0)(Mtx*, void*, Gfx**);
    /* 0x04 */ s32 (*unk4)(Mtx*, void*, Gfx**);
} MatrixHandler;

extern MatrixHandler *renderMatrixHandler;

extern s32 renderCameraScissorTop;
extern s32 renderCameraScissorBottom;
extern s32 renderCameraScissorLeft;
extern s32 renderCameraScissorRight;

extern Mtx *renderProjectionMtx;
extern f32 renderObjectScale;
extern Mat4 renderPerspectiveMtxF;
extern Mat4 renderMVPMatrixF;
extern Mat4 D_8004AB18;
extern Mat4 D_8004AB58;

extern s32 renderLevelOfDetail;

void renderSetCameraScissors(s32 top, s32 bottom, s32 left, s32 right);
void renderSetMatrixHandler(MatrixHandler *handler);

// Unnamed functions
void func_8001663C(Gfx **arg0, struct Camera *arg1, s32 ar2);

#endif // _MAIN_4_H_
