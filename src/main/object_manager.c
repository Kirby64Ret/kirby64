#include "common.h"
#include "crash_screen.h"
#include "object_manager.h"
#include "code_11720.h"

// bss
struct GObjThread *gGObjThreadHead; // 0x8004A540
u32 gGObjThreadCount;
u32 D_8004A548;
u32 gNewEntityStackSize; // 0x8004A54C
void (*D_8004A550)(struct ObjStack *);
struct GObjThreadStack* gGObjThreadStackHead; // 0x8004A554
s32 D_8004A558;
struct GObjProcess *gGObjProcessHead; // 0x8004A55C
struct GObjProcess *D_8004A560[4]; // probably length 4
u32 gGObjProcessCount;
// 0x8004A574?
struct GObj *D_8004A578[32]; // probably length 32 based on loop asm
void* D_8004A5F8[32]; // also length 32? lines up with next symbol
struct GObj *gGObjHead;
// 0x8004A67C? file boundary?
struct GObj* gHighestPrioDLLinkProcs[33]; // length 33?
struct GObj* gDLLinkProcs[33]; // length 33?
u32 gGObjCount;
struct OMMtx *gOMMtxHead;
u32 gOMMtxCount;
void (*D_8004A798)();
struct AObj *gAObjHead;
u32 gAObjCount;
struct MObj* gMObjHead;
u32 gMObjCount;
struct DObj* gDObjHead;
u32 gDObjCount;
u32 D_8004A7B4;
u32 D_8004A7B8;
struct Camera* gCameraHead;
u32 gCameraCount;
struct GObj *D_8004A7C4, *D_8004A7C8, *D_8004A7CC;
struct GObjProcess *D_8004A7D0;
s32 D_8004A7D4;
OSMesg D_8004A7D8;
// 0x8004A7DC?
OSMesgQueue HS64_GObjProcMesgQ;
struct UnkStruct8004A7F8 D_8004A7F8[32]; // length 32 based on loop asm in func_8000AAE0 (unrolled)
u8 D_8004AA78[0x18];

struct GObjThread *HS64_GObjThreadPop(void) {
    struct GObjThread *ret;
    if (gGObjThreadHead == NULL) {
        fatal_printf("om : couldn't get GObjThread\n");
        while (TRUE);
    }
    ret = gGObjThreadHead;
    gGObjThreadHead = gGObjThreadHead->unk0;
    gGObjThreadCount++;
    return ret;
}
// #pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GObjThreadPop.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GObjThreadPush.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GObjThreadStackPop.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GObjThreadStackPush.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GObjProcessPop.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_800080C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GObjProcessPush.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/unlink_gobj_process.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008210.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008280.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GetGObjProcessStack.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GetGObjProcessStackSize.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000831C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GObjPop.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GObjPush.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_800083CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008434.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_800084A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGInsertDLLink.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGSetupCameraDLLink.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGSetupDLLink_HighestPrioMax.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGDLLinkDestructor.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_OMMtxPop.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_OMMtxPush.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_AObjPop.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_AObjLinkToAnimation.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008840.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008850.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_AObjPush.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_MObjPop.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_MObjPush.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_DObjPop.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_DObjPush.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_CameraPop.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_CameraPush.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008DA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_AObjNew.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000984C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_800098AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_800099E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009A44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009B5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009BD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009C38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009D5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009DF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A02C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGAddCommon.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A180.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A1C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A200.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A24C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A29C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGMoveCommon.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A508.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A544.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGLinkObjDLCommon.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A684.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A6D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A730.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A764.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A7A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A7DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A830.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGMoveObjDL.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGMoveObjDLHead.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A980.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000A9C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000AA04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000AA38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000AA6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000AAA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000AAE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000ABAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGDispatchProc.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_8000AD88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_omInit.s")
