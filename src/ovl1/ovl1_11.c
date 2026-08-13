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
#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
s32 func_800AB0F4();                                /* extern */

void func_800BB6B0(GObj *gobj) {
    u32 **sp2C;
    Gfx *temp_v0;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    Gfx *var_v0;
    s32 temp_v0_5;
    u32 **temp_t1;

    temp_v0 = gDisplayListHeads->unk0;
    gDisplayListHeads->unk0 = temp_v0 + 8;
    temp_v0->words.w0 = 0xE7000000;
    temp_v0->words.w1 = 0;
    temp_v0_2 = gDisplayListHeads->unk0;
    gDisplayListHeads->unk0 = temp_v0_2 + 8;
    temp_v0_2->words.w1 = 0;
    temp_v0_2->words.w0 = 0xD9FFFFFE;
    temp_v0_3 = gDisplayListHeads->unk0;
    gDisplayListHeads->unk0 = temp_v0_3 + 8;
    temp_t1 = &gSegment4StartArray[gobj->objId];
    temp_v0_3->words.w0 = 0xDB060010;
    temp_v0_3->words.w1 = (u32) *temp_t1;
    temp_v0_4 = gDisplayListHeads->unk0;
    gDisplayListHeads->unk0 = temp_v0_4 + 8;
    temp_v0_4->words.w1 = 0x552048;
    temp_v0_4->words.w0 = 0xE200001C;
    sp2C = temp_t1;
    temp_v0_5 = func_800AB0F4();
    switch (temp_v0_5) {
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
        temp_v0_6 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0;
        temp_v0_6->words.w0 = 0xE7000000;
        temp_v0_7 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0;
        temp_v0_7->words.w0 = 0xD9FFFFFE;
        temp_v0_8 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_8 + 8;
        temp_v0_8->words.w0 = 0xDB060010;
        temp_v0_8->words.w1 = (u32) *temp_t1;
        temp_v0_9 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_9 + 8;
        temp_v0_9->words.w1 = 0x5041C8;
        temp_v0_9->words.w0 = 0xE200001C;
        renderDrawObject_TypeD(gobj);
        temp_v0_10 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_10 + 8;
        temp_v0_10->words.w1 = 0;
        temp_v0_10->words.w0 = 0xE7000000;
        temp_v0_11 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_11 + 8;
        temp_v0_11->words.w1 = 1;
        temp_v0_11->words.w0 = 0xD9FFFFFF;
        var_v0 = gDisplayListHeads[1];
        gDisplayListHeads[1] = var_v0 + 8;
        var_v0->words.w1 = 0x5049D8;
block_6:
        var_v0->words.w0 = 0xE200001C;
        break;
    case 28:
    case 30:
        temp_v0_12 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_12 + 8;
        temp_v0_12->words.w1 = 0;
        temp_v0_12->words.w0 = 0xE7000000;
        temp_v0_13 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_13 + 8;
        temp_v0_13->words.w1 = 0;
        temp_v0_13->words.w0 = 0xD9FFFFFE;
        temp_v0_14 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_14 + 8;
        temp_v0_14->words.w0 = 0xDB060010;
        temp_v0_14->words.w1 = (u32) *temp_t1;
        temp_v0_15 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_15 + 8;
        temp_v0_15->words.w1 = 0x5041C8;
        temp_v0_15->words.w0 = 0xE200001C;
        func_80015BCC(gobj);
        temp_v0_16 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_16 + 8;
        temp_v0_16->words.w1 = 0;
        temp_v0_16->words.w0 = 0xE7000000;
        temp_v0_17 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_v0_17 + 8;
        temp_v0_17->words.w1 = 1;
        temp_v0_17->words.w0 = 0xD9FFFFFF;
        var_v0 = gDisplayListHeads[1];
        gDisplayListHeads[1] = var_v0 + 8;
        var_v0->words.w1 = 0x5049D8;
        goto block_6;
    }
    temp_v0_18 = gDisplayListHeads->unk0;
    gDisplayListHeads->unk0 = temp_v0_18 + 8;
    temp_v0_18->words.w1 = 0;
    temp_v0_18->words.w0 = 0xE7000000;
    temp_v0_19 = gDisplayListHeads->unk0;
    gDisplayListHeads->unk0 = temp_v0_19 + 8;
    temp_v0_19->words.w1 = 1;
    temp_v0_19->words.w0 = 0xD9FFFFFF;
    temp_v0_20 = gDisplayListHeads->unk0;
    gDisplayListHeads->unk0 = temp_v0_20 + 8;
    temp_v0_20->words.w1 = 0x552078;
    temp_v0_20->words.w0 = 0xE200001C;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_11/func_800BB6B0.s")
#endif
#endif

// 7/131 (6 real): ROM keeps the omMakeGObj result in $v0 and dobj in $v0; we get $s0/$v1.
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
