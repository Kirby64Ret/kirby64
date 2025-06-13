#include <PR/gbi.h>

#include "common.h"
#include "GObj.h"
#include "main/object_manager.h"
#include "main/gtl.h"
#include "ovl1/ovl1_6.h"
#include "ovl2/ovl2_8.h"
#include "ovl1_7.h"
#include "main/rdp_reset.h"
#include "buffers.h"
#include "unk_structs/D_800DE350.h"

extern GObj *D_800D6B24;
extern u32 D_800D6B30;
extern u8 D_800D6B2B;

extern void func_80018170(GObj *);

void func_800BB580(GObj *gobj) {

}

// many hidden unused saved registers
#ifdef NON_MATCHING
void func_800BB588(GObj *gobj) {
    while (1) {
        if (D_800DD8D0[gobj->objId] & 0x40000000) {
            D_800D6B30 ++;
            switch (D_800D6B2B) {
                case 0:
                    D_800D6B24 = NULL;
                    omGDeleteObj(D_800D6B24);
                    func_800B1900(gobj->objId);
                    break;
                case 2:
                    D_800D6B24 = NULL;
                    func_800067B8(D_800D6B24);
                    break;
            }
        } else {
            animUpdateModelTreeAnimation(gobj);
        }
        ohSleep(1);
    }
}
#else
void func_800BB588(GObj *gobj);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_11/func_800BB588.s")
#endif

#ifdef NON_MATCHING
void func_800BB6B0(GObj *gobj) {
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPClearGeometryMode(gDisplayListHeads[0]++, G_ZBUFFER);
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[gobj->objId]);
    gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);

    switch (func_800AB0F4()) {
        case 19:
        case 21:
        case 23:
        case 25:
            func_800143A4(gobj);
            break;
        case 27:
        case 29:
            func_8001585C(gobj);
            break;
        case 20:
        case 22:
        case 24:
        case 26:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPClearGeometryMode(gDisplayListHeads[1]++, G_ZBUFFER);
            gSPSegment(gDisplayListHeads[1]++, 0x04, gSegment4StartArray[gobj->objId]);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
            func_80014AD4(gobj);
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSetGeometryMode(gDisplayListHeads[1]++, G_ZBUFFER);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
            break;
        case 28:
        case 30:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPClearGeometryMode(gDisplayListHeads[1]++, G_ZBUFFER);
            gSPSegment(gDisplayListHeads[1]++, 0x04, gSegment4StartArray[gobj->objId]);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
            func_80015BCC(gobj);
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSetGeometryMode(gDisplayListHeads[1]++, G_ZBUFFER);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
            break;
    }
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPClearGeometryMode(gDisplayListHeads[0]++, G_ZBUFFER);
    gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
}
#else
void func_800BB6B0(GObj *gobj);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_11/func_800BB6B0.s")
#endif

#ifdef NON_MATCHING
extern struct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    f32 unkC;
} D_800D5290[];

Vector *func_800BB98C(s32 arg0, s32 arg1) {
    GObj *gobj;
    GObj *prevObj;
    Camera *cam;
    s32 track;
    struct DObj *dobj;

    gobj = HS64_omMakeGObj(8, NULL, 0x19, 0x80000000);
    if (gobj != NULL) {
        D_800D6B24 = gobj;
        omGLinkObjDLCamera(gobj, &func_80018170, 8, 0x100, -1);
        cam = omGObjSetCamera(gobj);
        omCameraAddMtx(cam, MTX_TYPE_ORTHO, 1);
        omCameraAddMtx(cam, MTX_TYPE_LOOKAT, 1);
        cam->perspMtx.ortho.scale = 10.0f;
        cam->perspMtx.ortho.left = -150.0f;
        cam->perspMtx.ortho.right = 150.0f;
        cam->perspMtx.ortho.bottom = -110.0f;
        cam->perspMtx.ortho.top = 110.0f;
        cam->perspMtx.ortho.near = 3000.0f;
        func_80007C00(&cam->viewport, 10.0f, 10.0f, 310.0f, 230.0f);
        track = request_track_general(0x2B, 0x3C, 0x4A);
        prevObj = omCurrentObj;
        omCurrentObj = D_800DE350[track];
        omEndProcess(gEntityGObjProcessArray[track]);
        omEndProcess(gEntityGObjProcessArray2[track]);
        omEndProcess(gEntityGObjProcessArray5[track]);
        omCreateProcess(omCurrentObj, &func_800BB588, 0, 3);
        func_800A9864(D_800D5290[arg0].unk0, 0x1869F, 8);
        func_800AA018(D_800D5290[arg0].unk4);
        if (D_800D5290[arg0].unk8 != 0) {
            func_800AA018(D_800D5290[arg0].unk8);
        }
        omCurrentObj->onDraw = func_800BB6B0;
        dobj = omCurrentObj->data;
        dobj->scale.v.x = D_800D5290[arg0].unkC;
        dobj->scale.v.y = D_800D5290[arg0].unkC;
        omCurrentObj = prevObj;
        D_800D6B2B = arg1;
        return &dobj->scale;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_11/func_800BB98C.s")
#endif
