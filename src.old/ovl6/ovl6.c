#include <ultra64.h>
#include <macros.h>
#include "buffers.h"
#include "omCurrentObj.h"
#include "ovl6.h"

extern void func_800067B8(void);
extern void func_8000AD88(void);
extern u32 D_8015A694;

extern void animUpdateModelTreeAnimation(void);

extern struct UnkStruct8015A560 *D_8015A560;
extern u32 D_8015A690;

void func_80151100(void) {
    if (D_8015A694 != 0) {
        func_800067B8();
    }
    func_8000AD88();
}

extern u16 *gCurrFrameBuffer;
extern u16 *gFrameBuffers[3];
extern u16 *D_80048C5C;
extern u32 D_80048C6C;
GLOBAL_ASM("asm/non_matchings/ovl6/func_80151138.s")

extern Gfx *gDisplayListHeads[4];
extern void func_8009E8F4(s32 hidden, u32 a, Gfx **b);

void func_80151204(s32 arg0) {
    gDPPipeSync(gDisplayListHeads[1]++);
    gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
    func_8009E8F4(arg0, 2, &gDisplayListHeads[1]);
    gDPPipeSync(gDisplayListHeads[1]++);
    gDPSetColorDither(gDisplayListHeads[1]++, G_CD_MAGICSQ);
    gDPSetAlphaDither(gDisplayListHeads[1]++, G_AD_DISABLE);
    gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
}

GLOBAL_ASM("asm/non_matchings/ovl6/func_801512F0.s")

void func_801513C8(void) {
    func_800A7A70(0, 0x40001, 0x40002);
}

GLOBAL_ASM("asm/non_matchings/ovl6/func_801513F8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801514A0.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_8015150C.s")

extern u32 D_8015A670[]; // Lights?
extern u32 *D_8015A56C; // lights?
GLOBAL_ASM("asm/non_matchings/ovl6/func_8015166C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_8015170C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_8015198C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80151CD0.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80151DDC.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80151E10.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80151E60.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80152138.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801524C8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80152B28.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80152B9C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80152C10.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80152C84.s")

void func_80152CF8(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl6/func_80152D00.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80152DB8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80152EA8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153040.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153064.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_8015314C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801531FC.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153228.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801532CC.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801532F4.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801533C0.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153424.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_8015347C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801534A8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801534D4.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153530.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_8015358C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801535E8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153644.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153670.s")

void func_801536A0(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl6/func_801536A8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801536E0.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_8015370C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_8015372C.s")

// regalloc
#ifdef NON_MATCHING
void func_8015374C(struct GObj *this) {
    struct UnkStruct8004A7C4_3C_80 *temp_v0;

    temp_v0 = &this->unk3C->unk80->unk8;
    if (this->unk3C->unk80->unk5B != 0) {
        gDPPipeSync(gDisplayListHeads[1]++);
        gDPSetCombineMode(gDisplayListHeads[1]++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
        gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
        gDPSetPrimColor(gDisplayListHeads[1]++, 0, 0, temp_v0->unk50, temp_v0->unk51, temp_v0->unk52, temp_v0->unk53);
        gDPFillRectangle(gDisplayListHeads[1]++, 48, 38, 272, 202);
        gDPPipeSync(gDisplayListHeads[1]++);
        gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl6/func_8015374C.s")
#endif


void func_80153868(void) {
    struct GObj *sp1C;

    if ((D_8015A690 == 0) && (D_800DE44C == 0)) {
        sp1C = omCurrentObj;
        request_track_general(0x11, 0x3F, 0x40);
        omCurrentObj = D_800DE44C;
        omEndProcess(gEntityGObjProcessArray[0x3F]);
        omEndProcess(gEntityGObjProcessArray2[0x3F]);
        omEndProcess(gEntityGObjProcessArray5[0x3F]);
        func_80008A18(omCurrentObj, &animUpdateModelTreeAnimation, 1, 3);
        func_800A9864(D_8015A560->listIndex, 99999, 0xC);
        omCurrentObj = sp1C;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl6/func_8015392C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153A48.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153AA8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153AF8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153B34.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153B80.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153C28.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153CBC.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153D10.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153D6C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153DC8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153E1C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153F00.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80153F2C.s")

void func_8015403C(void) {
    func_80153F2C_ovl6();
}

GLOBAL_ASM("asm/non_matchings/ovl6/func_8015405C.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154088.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154100.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154158.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154180.s")

void func_801541EC(void) {
    func_8009C0E4();
    func_800A2024();
}

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154214.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154258.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154284.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154464.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801544E8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154628.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154690.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801546D8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154748.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154810.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154858.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801548A4.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_801548F8.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154938.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154A40.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154B14.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154BA0.s")

void func_80154C08(void) {
    func_8000AAE0();
    func_80153064_ovl6();
    func_800AC610();
}

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154C38.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154C64.s")

GLOBAL_ASM("asm/non_matchings/ovl6/func_80154D60.s")
