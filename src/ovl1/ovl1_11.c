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
extern s16 D_800D6B30;
extern u8 D_800D6B2B;

extern void func_80018170(GObj *);

void func_800BB580(GObj *gobj) {

}

void func_800BB588(GObj *gobj) {
    GObj *obj;
    u16 id;
    s32 objId;

    objId = gobj->objId;
    while (1) {
        if (D_800DD8D0[objId] & 0x40000000) {
            obj = D_800D6B24;
            D_800D6B30++;
            switch (D_800D6B2B) {
                case 0:
                    D_800D6B24 = NULL;
                    id = objId;
                    omGDeleteObj(obj);
                    func_800B1900(id);
                    break;
                case 2:
                    D_800D6B24 = NULL;
                    func_800067B8(obj);
                    break;
            }
        } else {
            animUpdateModelTreeAnimation(gobj);
        }
        ohSleep(1);
    }
}

s32 func_800AB0F4(GObj *);

/* FACTORY: 182/189 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
void func_800BB6B0(GObj *gobj) {
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPClearGeometryMode(gDisplayListHeads[0]++, G_ZBUFFER);
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[gobj->objId]);
    gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);

    switch (func_800AB0F4(gobj)) {
        case 19:
        case 21:
        case 23:
        case 25:
            renderDrawDObjFromGObj(gobj);
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
            renderDrawObject_TypeD(gobj);
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

// 7/131 (6 real): ROM keeps the omMakeGObj result in $v0 and dobj in $v0; we get $s0/$v1.
/* FACTORY: 6/131 -- MEASURED 2026-08-25, the first measurement this draft has
   had, and it turned up only because the annotate pass scored every unnoted
   draft in the overlay. Six words from byte-exact and nobody knew.

   TWO independent register residues, both allocation and neither structural:

   (a) indices 16 and 19. The ROM keeps HS64_omMakeGObj's return value in $v0
       for the `sw $v0, %lo(D_800D6B24)` and the `or $a0, $v0, $zero` that
       follow, while ALSO copying it to $s0 in the branch delay slot for later.
       The draft makes the same copy and then reads $s0 for both immediate
       uses. Two spellings of one value; the source says `gobj` either way.

   (b) indices 118-123. dobj lands in $v0 in the ROM and $v1 in the draft, so
       the two `swc1` and the `addiu ..., 0x40` that forms the return value all
       name the other register. Same instructions, same offsets.

   Measured and much WORSE, so do not retry: writing the two scale stores
   through `omCurrentObj->data.dobj` and taking `dobj` afterwards is 37/135 --
   the local is load-bearing and inlining it costs four instructions as well as
   the registers.

   Both residues are register choices over an exact instruction stream. Queued
   in priority_queue.py's TARGETS; this is the best permuter seed in ovl1
   after func_800A84F0. */
#ifdef NON_MATCHING
extern struct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    f32 unkC;
} D_800D5290[];

Vector *func_800BB98C(s32 arg0, s32 arg1) {
    GObj *gobj;
    Camera *cam;
    s32 track;
    GObj *prevObj;
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
        cam->viewMtx.lookAt.eye.z = 3000.0f;
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
        dobj = omCurrentObj->data.dobj;
        dobj->scale.v.y = dobj->scale.v.x = D_800D5290[arg0].unkC;
        omCurrentObj = prevObj;
        D_800D6B2B = arg1;
        return &dobj->scale.v;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_11/func_800BB98C.s")
#endif
