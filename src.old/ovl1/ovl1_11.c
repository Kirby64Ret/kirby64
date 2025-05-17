#include <ultra64.h>
#include <macros.h>
#include "omCurrentObj.h"
#include "ovl1_6.h"
#include "ovl0/ovl0_2_5.h"

extern Gfx *gDisplayListHeads[4];

void func_800BB580(s32 arg0) {

}


extern s32 D_800D6B24;
extern u8 D_800D6B2B;
extern s16 D_800D6B30;

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_11/func_800BB588.s")


u32 func_800AB0F4(struct GObj *);

// regalloc on gDisplayListHeads[1]
#ifdef NON_MATCHING
void func_800BB6B0(struct GObj *arg0) {
    s32 tmp_2;
    tmp_2 = arg0->objId;

    gDPPipeSync(gDisplayListHeads[0]++);
    gSPClearGeometryMode(gDisplayListHeads[0]++, G_ZBUFFER);
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[tmp_2]);
    gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);

    switch (func_800AB0F4(arg0)) {
        case 19:
            func_800143A4_ovl1(arg0);
            break;
        case 27:
        case 29:
            func_8001585C_ovl1(arg0);
            break;
        case 20: case 22: case 24:
        case 26:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPClearGeometryMode(gDisplayListHeads[1]++, G_ZBUFFER);
            gSPSegment(gDisplayListHeads[1]++, 0x04, gSegment4StartArray[tmp_2]);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);

            // possibly draws something?
            func_80014AD4_ovl1(arg0);

            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSetGeometryMode(gDisplayListHeads[1]++, G_ZBUFFER);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
            break;
        case 28: case 30:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPClearGeometryMode(gDisplayListHeads[1]++, G_ZBUFFER);
            gSPSegment(gDisplayListHeads[1]++, 0x04, gSegment4StartArray[tmp_2]);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);

            func_80015BCC_ovl1(arg0);

            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSetGeometryMode(gDisplayListHeads[1]++, G_ZBUFFER);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
            break;
        default: break;
    }
    
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPSetGeometryMode(gDisplayListHeads[0]++, G_ZBUFFER);
    gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_11/func_800BB6B0.s")
#endif

struct GObj func_8000A180(s32,s32,s32,s32);

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_11/func_800BB98C.s")
