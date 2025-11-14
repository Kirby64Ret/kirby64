#include "common.h"
#include "fault.h"
#include "object_manager.h"
#include "render.h"
#include "anim.h"
#include "object_helpers.h"

// data + early rodata
s32 D_8003DE50 = 10000000;

u32 D_8003DE54 = 0x00000000;

OMPersp D_8003DE58 = {
    NULL, 0.0f, 30.0f, 4.0f / 3.0f, 100.0f, 12800.0f, 1.0f
};

OMOrtho D_8003DE74 = {
    NULL, -160.0f, 160.0f, -120.0f, 120.0f, 100.0f, 12800.0f, 1.0f
};

OMLookAt D_8003DE94 = {
    NULL,
    { 0.0f, 0.0f, 1500.0f },
    { 0.0f, 0.0f, 0.0f },
    { 0.0f, 1.0f, 0.0f }
};

f32 D_8003DEBC[4] = {
    0.0f, 0.0f, 0.0f, 0.0f
};

f32 D_8003DECC[5] = {
    0.0f, 0.0f, 0.0f, 0.0f, 1.0f
};

f32 D_8003DEE0[5] = {
    0.0f, 0.0f, 0.0f, 0.0f, 0.0f
};

f32 D_8003DEF4[4] = {
    0.0f, 1.0f, 1.0f, 1.0f
};

// bss
struct GObjThread *gGObjThreadHead; // 0x8004A540
u32 gGObjThreadCount;
u32 omActiveThreadStacks;
u32 gNewEntityStackSize; // 0x8004A54C
void (*D_8004A550)(struct ObjStack *);
struct GObjThreadStack* gGObjThreadStackHead; // 0x8004A554
void (*omProcEndCallback)(struct GObjProcess *);
struct GObjProcess *gGObjProcessHead; // 0x8004A55C
struct GObjProcess *omGObjProcList[4]; // 0x8004A560, probably length 4
u32 gGObjProcessCount;
// 0x8004A574?
GObj *omGObjListHead[32]; // probably length 32 based on loop asm
void* omGObjListTail[32]; // also length 32? lines up with next symbol
GObj *gGObjHead;
// 0x8004A67C? file boundary?
struct GObj* omGObjListDlHead[33]; // length 33?
struct GObj* omGObjListDlTail[33]; // length 33?
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
GObj *omCurrentObj, *omCurrentCamera, *omCurrentDrawObj;
struct GObjProcess *omCurrentProc;
s32 D_8004A7D4;
OSMesg D_8004A7D8;
// 0x8004A7DC?
OSMesgQueue HS64_GObjProcMesgQ;
struct UnkStruct8004A7F8 D_8004A7F8[32]; // length 32 based on loop asm in omDrawAll (unrolled)
u8 D_8004AA78[0x18];

// externs for their own headers
extern u32 D_8003DCA8;
extern void HS64_AObjLinkToAnimation(struct Animation *anim, struct AObj *stack);


struct GObjThread *HS64_GObjThreadPop(void) {
    struct GObjThread *ret;
    if (gGObjThreadHead == NULL) {
        fatal_printf("om : couldn't get GObjThread\n");
        while (TRUE);
    }
    ret = gGObjThreadHead;
    gGObjThreadHead = gGObjThreadHead->next;
    gGObjThreadCount++;
    return ret;
}

void HS64_GObjThreadRelease(struct GObjThread *th) {
    th->next = gGObjThreadHead;
    gGObjThreadHead = th;
    gGObjThreadCount--;
}

struct GObjThreadStack *HS64_GetGObjThreadStack(void) {
    struct GObjThreadStack *ret;

    if (gGObjThreadStackHead == NULL) {
        fatal_printf("om : couldn't get GObjThreadStack\n");
        while (TRUE);
    }
    ret = gGObjThreadStackHead;
    gGObjThreadStackHead = gGObjThreadStackHead->next;
    omActiveThreadStacks++;
    return ret;
}

void HS64_ReleaseGObjThreadStack(struct GObjThreadStack *st) {
    st->next = gGObjThreadStackHead;
    gGObjThreadStackHead = st;
    omActiveThreadStacks--;
}

struct GObjProcess *HS64_GObjProcessPop(void) {
    struct GObjProcess *ret;

    if (gGObjProcessHead == NULL) {
        fatal_printf("om : couldn't get GObjProcess\n");
        while (TRUE);
    }
    ret = gGObjProcessHead;
    gGObjProcessHead = gGObjProcessHead->next;
    gGObjProcessCount++;
    return ret;
}

void HS64_GObjProcessLink(struct GObjProcess *);
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_GObjProcessLink.s")

void HS64_GObjProcessRelease(struct GObjProcess *proc) {
    proc->next = gGObjProcessHead;
    gGObjProcessHead = proc;
    gGObjProcessCount--;
}

void HS64_GObjProcessReleasePri(struct GObjProcess *proc) {
    if (proc->prevPriProc != 0) {
        proc->prevPriProc->nextPriProc = proc->nextPriProc;
    } else {
        omGObjProcList[proc->pri] = proc->nextPriProc;
    }
    if (proc->nextPriProc != 0) {
        proc->nextPriProc->prevPriProc = proc->prevPriProc;
    }
}

void HS64_GObjProcessUnlink(struct GObjProcess *proc) {
    GObj *o;

    o = proc->gobj;
    HS64_GObjProcessReleasePri(proc);
    if (proc->prev != 0) {
        proc->prev->next = proc->next;
    } else {
        o->procListHead = proc->next;
    }
    if (proc->next != 0) {
        proc->next->prev = proc->prev;
    } else {
        o->procListTail = proc->prev;
    }
}

struct GObjProcess *HS64_GetCurrentProc(void) {
    return omCurrentProc;
}

// Unused
struct ObjStack *HS64_GetGObjProcessStack(struct GObjProcess *proc) {
    if (proc == NULL) {
        proc = omCurrentProc;
    }
    if (proc != NULL && (proc->kind == 0 || proc->kind == 2)) {
        return proc->payload.thread->objStack;
    }
    return NULL;
}

// Unused
s32 HS64_GetGObjProcessStackSize(struct GObjProcess *proc) {
    if (proc == NULL) {
        proc = omCurrentProc;
    }
    if (proc != NULL) {
        if (proc->kind == 0 || proc->kind == 2) {
            return proc->payload.thread->objStackSize;
        }
    }
    return 0;
}

// Unused
void HS64_SetProcEndCallback(void (*cb)(struct GObjProcess *)) {
    omProcEndCallback = cb;
}

// Unused
s32 HS64_CountGObjs(void) {
    GObj *gobj;
    s32 listCount;

    gobj = gGObjHead;
    listCount = 0;
    while (gobj != NULL) {
        gobj = gobj->next;
        listCount = listCount + 1;
    }
    return listCount + gGObjCount;
}

GObj *HS64_GObjPop(void) {
    GObj *head;

    if (gGObjHead == NULL) {
        return NULL;
    }
    head = gGObjHead;
    gGObjHead = gGObjHead->next;
    gGObjCount++;
    return head;
}

void HS64_GObjRelease(GObj *o) {
    o->next = gGObjHead;
    gGObjHead = o;
    gGObjCount--;
}

void omLinkGObjAfter(GObj *o, GObj *prevObj) {
    o->prev = prevObj;
    if (prevObj) {
        o->next = prevObj->next;
        prevObj->next = o;
    } else {
        o->next = omGObjListHead[o->link];
        omGObjListHead[o->link] = o;
    }
    if (o->next) {
        o->next->prev = o;
    } else {
        omGObjListTail[o->link] = o;
    }
}

void omLinkGObjAfterSamePriority(GObj *o) {
    GObj *tail;

    tail = omGObjListTail[o->link];
    while (tail != 0 && tail->pri < o->pri) {
        tail = tail->prev;
    }
    omLinkGObjAfter(o, tail);
}

void omLinkGObjBeforeSamePriority(GObj *o) {
    GObj *head;
    GObj *tail;

    head = omGObjListHead[o->link];
    while (head != 0 && o->pri < head->pri) {
        head = head->next;
    }
    if (head != 0) {
        tail = head->prev;
    } else {
        tail = omGObjListTail[o->link];
    }
    omLinkGObjAfter(o, tail);
}

void func_80008528(GObj *arg0) {
    if (arg0->prev != 0) {
        arg0->prev->next = arg0->next;
    } else {
        omGObjListHead[arg0->link] = arg0->next;
    }
    if (arg0->next != 0) {
        arg0->next->prev = arg0->prev;
        return;
    }
    omGObjListTail[arg0->link] = arg0->prev;
}

void omGInsertDLLink(GObj *o, GObj *highprio_o) {
    o->prevDL = highprio_o;
    if (highprio_o != NULL) {
        o->nextDL = highprio_o->nextDL;
        highprio_o->nextDL = o;
    } else {
        o->nextDL = omGObjListDlHead[o->dl_link];
        omGObjListDlHead[o->dl_link] = o;
    }
    if (o->nextDL != NULL) {
        o->nextDL->prevDL = o;
        return;
    }
    omGObjListDlTail[o->dl_link] = o;
}

void omGSetupCameraDLLink(GObj *arg0) {
    GObj *i = NULL;
    
    for (i = omGObjListDlTail[arg0->dl_link];
         i != 0 && i->renderPriority < arg0->renderPriority;
         i = i->prevDL
    );
    
    omGInsertDLLink(arg0, i);
}

void omGSetupDLLink_HighestPrioMax(GObj *arg0) {
    GObj *phi_v0;
    GObj *phi_a1;

    phi_v0 = omGObjListDlHead[arg0->dl_link];
    while (phi_v0 != 0 && arg0->renderPriority < phi_v0->renderPriority) {
        phi_v0 = phi_v0->nextDL;
    }
    if (phi_v0 != 0) {
        phi_a1 = phi_v0->prevDL;
    } else {
        phi_a1 = omGObjListDlTail[arg0->dl_link];
    }
    omGInsertDLLink(arg0, phi_a1);
}

void omGDLLinkDestructor(GObj *arg0) {
    if (arg0->prevDL != 0) {
        arg0->prevDL->nextDL = arg0->nextDL;
    } else {
        omGObjListDlHead[arg0->dl_link] = arg0->nextDL;
    }
    if (arg0->nextDL != 0) {
        arg0->nextDL->prevDL = arg0->prevDL;
    } else {
        omGObjListDlTail[arg0->dl_link] = arg0->prevDL;
    }
}

struct OMMtx *HS64_OMMtxPop(void) {
    struct OMMtx *tmp;

    if (gOMMtxHead == 0) {
        fatal_printf("om : couldn't get OMMtx\n");
        while (TRUE);
    }
    tmp = gOMMtxHead;
    gOMMtxHead = gOMMtxHead->next;
    gOMMtxCount++;
    return tmp;
}

void HS64_OMMtxRelease(struct OMMtx *arg0) {
    arg0->next = gOMMtxHead;
    gOMMtxHead = arg0;
    gOMMtxCount--;
}

struct AObj *HS64_AObjPop(void) {
    struct AObj *toReturn;

    if (gAObjHead == 0) {
        fatal_printf("om : couldn't get AObj\n");
        while (TRUE);
    }
    toReturn = gAObjHead;
    gAObjHead = gAObjHead->next;
    gAObjCount++;
    return toReturn;
}

void HS64_AObjLinkToAnimation(struct Animation *anim, struct AObj *aobj) {
    aobj->next = anim->aobj;
    anim->aobj = aobj;
}

void func_80008840(struct Animation *arg0, struct AObj *aobj) {
    aobj->next = arg0->unk90;
    arg0->unk90 = aobj;
}


// TODO: is this _really_ for Animations?
void func_80008850(struct Animation *anim, struct AObj *aobj) {
    aobj->next = anim->aobj;
    anim->aobj = aobj;
}

void HS64_AObjRelease(struct AObj *arg0) {
    arg0->next = gAObjHead;
    gAObjCount--;
    gAObjHead = arg0;
}

struct MObj* HS64_MObjPop(void) {
    struct MObj *temp_v0;

    if (gMObjHead == 0) {
        fatal_printf("om : couldn't get MObj\n");
        while (TRUE);
    }
    temp_v0 = gMObjHead;
    gMObjHead = gMObjHead->next;
    gMObjCount++;
    return temp_v0;
}

void HS64_MObjPush(struct MObj *arg0) {
    arg0->next = gMObjHead;
    gMObjHead = arg0;
    gMObjCount--;
}

struct DObj *HS64_DObjPop(void) {
    struct DObj *temp_v0;

    if (gDObjHead == 0) {
        fatal_printf("om : couldn't get DObj\n");
        while (TRUE);
    }
    temp_v0 = gDObjHead;
    gDObjHead = gDObjHead->nextFree;
    gDObjCount++;
    return temp_v0;
}

void HS64_DObjPush(struct DObj *arg0) {
    arg0->nextFree = gDObjHead;
    gDObjHead = arg0;
    gDObjCount--;
}

struct Camera *HS64_CameraPop(void) {
    struct Camera *temp_v0;

    if (gCameraHead == 0) {
        fatal_printf("om : couldn't get Camera\n");
        while (TRUE);
    }
    temp_v0 = gCameraHead;
    gCameraHead = gCameraHead->nextFree;
    gCameraCount++;
    return temp_v0;
}

void HS64_CameraPush(struct Camera *arg0) {
    arg0->nextFree = gCameraHead;
    gCameraHead = arg0;
    gCameraCount--;
}

struct GObjProcess *omCreateProcess(GObj *arg0, void (*arg1)(void), u8 kind, u32 pri) {
    struct GObjProcess *sp24;
    struct GObjThread *oThread;
    struct GObjProcess *oProcess;
    
    if (arg0 == NULL) {
        arg0 = omCurrentObj;
    }
    oProcess = HS64_GObjProcessPop();
    if (pri >= 4) {
        fatal_printf("om : GObjProcess's priority is bad value\n");
        while (1);
    }
    oProcess->pri = pri;
    oProcess->kind = kind;
    oProcess->paused = 0;
    oProcess->gobj = arg0;
    oProcess->entryPoint = arg1;
    switch (kind) {
        case HS64_GOBJPROC_KIND_GOBJTHREAD:
            oThread = HS64_GObjThreadPop();
            oProcess->payload.thread = oThread;
            oThread->objStack = &HS64_GetGObjThreadStack()->stack;
            oThread->objStackSize = gNewEntityStackSize;
            osCreateThread(&oThread->thread, D_8003DE50++, arg1, arg0, &(oThread->objStack->stack[gNewEntityStackSize / 8]), 0x33);
            oThread->objStack->stack[7] = STACK_CANARY;
            if (D_8003DE50 >= 20000000) {
                D_8003DE50 = 10000000;
            }
            break;
        case HS64_GOBJPROC_KIND_CALLBACK:
            oProcess->payload.thread = arg1;
            break;
        default:
            fatal_printf("om : GObjProcess's kind is bad value\n");
            while (1);

    }
    HS64_GObjProcessLink(oProcess);
    return oProcess;
}

// a somewhat more granular version of omCreateProcess
struct GObjProcess *func_80008B94(GObj *arg0, struct GObjThread *entry, u32 pri, s32 arg3, struct ObjStack *arg4, u32 stackSize) {
    struct GObjProcess *oProcess;
    struct GObjThread *oThread;
    s32 phi_a1;

    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    oProcess = HS64_GObjProcessPop();
    if (pri >= 4) {
        fatal_printf("om : GObjProcess's priority is bad value\n");
        while (1);
    }
    oProcess->pri = pri;
    oProcess->paused = 0;
    oProcess->gobj = arg0;
    oProcess->entryPoint = entry;
    oThread = HS64_GObjThreadPop(); oProcess->payload.thread = oThread;
    if (stackSize == 0) {
        oProcess->kind = HS64_GOBJPROC_KIND_GOBJTHREAD;
        oThread->objStack = &HS64_GetGObjThreadStack()->stack;
        oThread->objStackSize = gNewEntityStackSize;
        phi_a1 = (arg3 != -1) ? arg3 : D_8003DE50++;
        osCreateThread(&oThread->thread, phi_a1, entry, arg0, &(oThread->objStack->stack[gNewEntityStackSize / 8]), 0x33);
        oThread->objStack->stack[7] = STACK_CANARY;
        if (D_8003DE50 >= 20000000) {
            D_8003DE50 = 10000000;
        }
    } else {
        oProcess->kind = HS64_GOBJPROC_KIND_OSTHREAD;
        oThread->objStackSize = stackSize;
        oThread->objStack = arg4;
        phi_a1 = (arg3 != -1) ? arg3 : D_8003DE50++;
        osCreateThread(&oThread->thread, phi_a1, entry, arg0,
            ((stackSize / 8) + (u64 *)&arg4->stack),
            0x33);
        arg4->stack[7] = STACK_CANARY;
        if (D_8003DE50 >= 20000000)
            D_8003DE50 = 10000000;
    }
    HS64_GObjProcessLink(oProcess);
    return oProcess;
}

void omEndProcess(struct GObjProcess *proc) {
    void (*temp_v0)(struct GObjProcess *);
    u8 temp_v0_4;
    void (*temp_v0_3)(struct ObjStack *);

    if ((proc == 0) || (proc == omCurrentProc)) {
        D_8004A7D4 = 1;
        temp_v0_4 = omCurrentProc->kind;
        if (temp_v0_4 == 0 || temp_v0_4 == 2) {
            ohSleep(1);
            return;
        }
    } else {
        temp_v0 = omProcEndCallback;
        if (temp_v0 != 0) {
            temp_v0(proc);
        }
        switch (proc->kind) {
            case 0:
                osDestroyThread(&proc->payload.thread->thread);
                HS64_ReleaseGObjThreadStack(&proc->payload.thread->objStack->stack[0] - 1); // why???
                HS64_GObjThreadRelease(proc->payload.thread);
                break;
            case 1:
                break;
            case 2:
                osDestroyThread(&proc->payload.thread->thread);
                temp_v0_3 = D_8004A550;
                if (temp_v0_3 != 0) {
                    temp_v0_3(proc->payload.thread->objStack);
                }
                HS64_GObjThreadRelease(proc->payload.thread);
        }
        HS64_GObjProcessUnlink(proc);
        HS64_GObjProcessRelease(proc);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008EC4.s")
OMMtx *func_80008EC4(struct DObj *, u8, u8, u32);


OMMtx *omDObjAppendMtx(struct DObj *arg0, u8 arg1, u8 arg2) {
    return func_80008EC4(arg0, arg1, arg2, arg0->unk56);
}

OMMtx* omCameraAddMtx(Camera* cam, u8 kind, u8 arg2) {
    OMMtx* mtx;

    if (cam->mtxCount == ARRAY_COUNT(cam->matrices)) {
        fatal_printf("om : couldn't add OMMtx for Camera\n");
        while (1) {};
    }

    mtx = HS64_OMMtxPop();

    cam->matrices[cam->mtxCount] = mtx;
    cam->mtxCount++;
    mtx->kind = kind;

    switch (kind) {
        case MTX_TYPE_PERSP_FAST:
        case MTX_TYPE_PERSP:
            cam->perspMtx.persp = D_8003DE58;
            cam->perspMtx.persp.mtx = mtx;
            break;
        case MTX_TYPE_ORTHO:
            cam->perspMtx.ortho = D_8003DE74;
            cam->perspMtx.ortho.mtx = mtx;
            break;
        case MTX_TYPE_LOOKAT:
        case MTX_TYPE_LOOKAT_MVIEW:
        case MTX_TYPE_LOOKAT_ROLL:
        case MTX_TYPE_LOOKAT_ROLL_MVIEW:
        case MTX_TYPE_LOOKAT_ROLL_Z:
        case MTX_TYPE_LOOKAT_ROLL_Z_MVIEW:
        case MTX_TYPE_LOOKAT_REFLECT:
        case MTX_TYPE_LOOKAT_REFLECT_MVIEW:
        case MTX_TYPE_LOOKAT_REFLECT_ROLL:
        case MTX_TYPE_LOOKAT_REFLECT_ROLL_MVIEW:
        case MTX_TYPE_LOOKAT_REFLECT_ROLL_Z:
        case MTX_TYPE_LOOKAT_REFLECT_ROLL_Z_MVIEW:
            cam->viewMtx.lookAt = D_8003DE94;
            cam->viewMtx.lookAt.mtx = mtx;
            break;
        case MTX_TYPE_1:
        case MTX_TYPE_2:
            break;
    }

    mtx->unk05 = arg2;
    return mtx;
}

// Initializes a new AObj with an index
struct AObj *HS64_AObjNew(struct Animation *anim, u8 paramID) {
    struct AObj *aobj;

    aobj = HS64_AObjPop();
    aobj->paramID = paramID;
    aobj->kind = 0;
    aobj->unk20 = NULL;
    aobj->goalSpeed = 0.0f;
    aobj->speed = 0.0f;
    aobj->goalVal = 0.0f;
    aobj->startVal = 0.0f;
    aobj->timer = 0.0f;
    aobj->Rduration = 1.0f;
    HS64_AObjLinkToAnimation(anim, aobj);
    return aobj;
}

void omDObjResetAnimation(DObj *dobj) {
    struct AObj *next;
    struct AObj *aobj;

    aobj = dobj->aobj;
    while (aobj != 0) {
        next = aobj->next;
        HS64_AObjRelease(aobj);
        aobj = next;
    }
    dobj->aobj = NULL;
    dobj->timeRemaining = -FLT_MAX;
}

struct AObj *func_800098AC(MObj *mobj, u8 index) {
    struct AObj *toReturn;

    toReturn = HS64_AObjPop();
    toReturn->paramID = index;
    toReturn->kind = 0;
    toReturn->unk20 = NULL;
    toReturn->goalSpeed = 0.0f;
    toReturn->speed = 0.0f;
    toReturn->goalVal = 0.0f;
    toReturn->startVal = 0.0f;
    toReturn->timer = 0.0f;
    toReturn->Rduration = 1.0f;
    func_80008840(mobj, toReturn);
    return toReturn;
}

void func_80009918(MObj *mobj) {
    struct AObj *next;
    struct AObj *aobj;

    aobj = mobj->aobj;
    while (aobj != 0) {
        next = aobj->next;
        HS64_AObjRelease(aobj);
        aobj = next;
    }
    mobj->aobj = NULL;
    mobj->timeRemaining = ANIMATION_DISABLED;
}

struct AObj *omCameraAddAObj(Camera *arg0, u8 arg1) {
    struct AObj *aobj;

    aobj = HS64_AObjPop();
    aobj->paramID = arg1;
    aobj->kind = (u8)0;
    aobj->unk20 = NULL;
    aobj->goalSpeed = 0.0f;
    aobj->speed = 0.0f;
    aobj->goalVal = 0.0f;
    aobj->startVal = 0.0f;
    aobj->timer = 0.0f;
    aobj->Rduration = 1.0f;
    func_80008850(arg0, aobj);
    return aobj;
}

// Unused?
void func_800099E4(struct Animation *anim) {
    struct AObj *tmpnext;
    struct AObj *aobj;

    aobj = anim->aobj;
    while (aobj != 0) {
        tmpnext = aobj->next;
        HS64_AObjRelease(aobj);
        aobj = tmpnext;
    }
    anim->aobj = 0;
    anim->scale = -FLT_MAX;
}

#ifdef NON_MATCHING
MObj* omDObjAddMObj(DObj* dobj, TextureScroll *texture) {
    MObj* mobj;

    mobj = HS64_MObjPop();

    if (dobj->mobjList != NULL) {
        MObj* curr = dobj->mobjList->next;
        MObj* prior = dobj->mobjList;
        while (curr != NULL) {
            prior = curr;
            curr = curr->next;
        }
        prior->next = mobj;
    } else {
        dobj->mobjList = mobj;
    }

    mobj->next = NULL;
    mobj->primLOD = texture->unk_54 / 255.0f;
    mobj->texture = *texture;

    mobj->texture.xScale = texture->xScale;
    mobj->texture.yScale = texture->yScale;
    mobj->texIndex1 = 0;
    mobj->texIndex2 = 0;
    mobj->palIndex = 0.f;
    mobj->aobj = NULL;
    mobj->animList = NULL;
    mobj->timeRemaining = ANIMATION_DISABLED;
    mobj->animSpeed = 1.0f;
    mobj->timeElapsed = 0.0f;

    return mobj;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omDObjAddMObj.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009B5C.s")

// Not really sure what's going on here
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009BD4.s")

struct DObj *omGObjAddDObj(GObj *gobj, u8 *arg1) {
    struct DObj *dobj;
    struct DObj *temp_v1;

    if (gobj == NULL) {
        gobj = omCurrentObj;
    }
    dobj = HS64_DObjPop();
    
    if (gobj->data.dobj != NULL) {
        temp_v1 = gobj->data.dobj;
        
        while (temp_v1->next != 0) {
            temp_v1 = temp_v1->next;
        }

        temp_v1->next = dobj;
        dobj->prev = temp_v1;
    } else {
        gobj->kind = 1;
        gobj->data.dobj = dobj;
        dobj->prev = 0;
    }
    dobj->gobj = gobj;
    dobj->parent = (DObj*)1;
    dobj->next = NULL;
    dobj->firstChild = NULL;
    dobj->unk50 = arg1;
    func_80009BD4(dobj);
    return dobj;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omDObjAddSibling.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omDObjAddChild.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009DF4.s")

struct Camera *omGObjSetCamera(GObj *gobj) {
    int i;
    struct Camera *cam;

    if (gobj == 0) {
        gobj = omCurrentObj;
    }
    gobj->kind = 3;
    cam = HS64_CameraPop();

    gobj->data.cam = cam;

    cam->gobj = gobj;

    setup_viewport(&cam->viewport);
    if (1) {
        // stub
    }

    cam->mtxCount = 0;

    for (i = 0; i < ARRAY_COUNT(cam->matrices); i++) {
        cam->matrices[i] = 0;
    }

    cam->flags = 0;
    cam->bgcolor = 0x00000000;
    cam->onBeforeRender = NULL;
    cam->unk8C = 0;
    cam->aobj = NULL;
    cam->animList = NULL;
    cam->timeRemaining = ANIMATION_DISABLED;
    cam->animSpeed = 1.0f;
    cam->timeElapsed = 0.0f;
    return cam;
}

void func_8000A02C(struct Camera *cam) {
    struct AObj *aobj;
    GObj *gobj;
    struct OMMtx *mtx;
    int i;

    gobj = cam->gobj;
    gobj->kind = 0;
    gobj->data.ptr = NULL;

    for (i = 0; i < 2; i++) {
        mtx = cam->matrices[i];

        if (mtx != NULL) {
            HS64_OMMtxRelease(mtx);
        }
    }

    // not an easy loop
    aobj = cam->aobj;
    while (aobj != NULL) {
        struct AObj *anext = aobj->next;

        HS64_AObjRelease(aobj);
        aobj = anext;
    }

    HS64_CameraPush(cam);
}

GObj *omGAddCommon(u32 id, void (*updateCallback)(void), u8 link, u32 pri) {
    GObj *toReturn;

    if (link >= 32) {
        fatal_printf("omGAddCommon() : link num over : link = %d : id = %d\n", link, id);
        while (1);
    }
    toReturn = HS64_GObjPop();
    if (toReturn == NULL) {
        return NULL;
    }
    toReturn->objId = id;
    toReturn->link = link;
    toReturn->pri = pri;
    toReturn->onUpdate = updateCallback;
    toReturn->procListHead = NULL;
    toReturn->procListTail = NULL;
    toReturn->flags = 0;
    toReturn->kind = 0;
    toReturn->data.ptr = NULL;
    toReturn->dl_link = 0x21;
    toReturn->animTimer = 0.0f;
    toReturn->onAnimate = 0;
    toReturn->unk4C = 0;
    return toReturn;
}

GObj *HS64_omMakeGObj(s32 id, void (*func)(void), u8 link, u32 pri) {
    GObj *o;

    o = omGAddCommon(id, func, link, pri);
    if (o == NULL) {
        return NULL;
    } else {
        omLinkGObjAfterSamePriority(o);
        return o;
    }
}

GObj *omAddGObjBeforeSamePriority(s32 arg0, s32 func, u8 arg2, s32 pri) {
    GObj *o;

    o = omGAddCommon(arg0, func, arg2, pri);
    if (o == 0) {
        return NULL;
    } else {
        omLinkGObjBeforeSamePriority(o);
        return o;
    }
}

GObj *omAddGObjAfter(s32 id, s32 func, GObj *arg2) {
    GObj *temp_v0;

    temp_v0 = omGAddCommon(id, func, arg2->link, arg2->pri);
    if (temp_v0 == 0) {
        return NULL;
    }
    omLinkGObjAfter(temp_v0, arg2);
    return temp_v0;
}

GObj *omAddGObjBefore(s32 id, s32 updateCB, GObj *arg2) {
    GObj *temp_v0;

    temp_v0 = omGAddCommon(id, updateCB, arg2->link, arg2->pri);
    if (temp_v0 == 0) {
        return NULL;
    }
    omLinkGObjAfter(temp_v0, arg2->prev);
    return temp_v0;
}

void func_8000BBE0(GObj *);
void func_8000B870(GObj *);

void omGDeleteObj(GObj *gobj) {
    if (gobj == 0 || gobj == omCurrentObj) {
        D_8004A7D4 = 2;
        return;
    }
    func_8000B870(gobj);
    switch (gobj->kind) {
        case 1:
            func_8000BBE0(gobj);
        case 2: // stubbed out sprite functionality
            break;
        case 3:
            func_8000A02C(gobj->data.cam);
    }
    if (gobj->dl_link != 0x21) {
        omGDLLinkDestructor(gobj);
    }
    func_80008528(gobj);
    HS64_GObjRelease(gobj);
}

// i genuinely don't know what's going on here
#ifdef NON_MATCHING
void omGMoveCommon(s32 addWhere, GObj *gobj, u8 link, u32 pri, GObj *arg4) {
    GObjProcess *proc;

    if (link >= 0x20) {
        fatal_printf("omGMoveCommon() : link num over : link = %d : id = %d\n", link, gobj->objId);
        while (1);
    }
    if (gobj == NULL) {
        gobj = omCurrentObj;
    }
    proc = gobj->procListHead;
    gobj->procListHead = NULL;
    gobj->procListTail = 0;

    while (proc != NULL) {
        HS64_GObjProcessReleasePri(proc);
        proc = proc->next;
    }

    func_80008528(gobj);
    gobj->link = link;
    gobj->pri = pri;
    switch (addWhere) { /* irregular */
        case 0:
            omLinkGObjAfterSamePriority(gobj);
            break;
        case 1:
            omLinkGObjBeforeSamePriority(gobj);
            break;
        case 2:
            omLinkGObjAfter(gobj, arg4);
            break;
        case 3:
            omLinkGObjAfter(gobj, arg4->prev);
            break;
    }
    while (proc != NULL) {
        HS64_GObjProcessLink(proc);
        proc = proc->next;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGMoveCommon.s")
#endif

void func_8000A498(GObj *arg0, u8 arg1, s32 arg2) {
    omGMoveCommon(0, arg0, arg1, arg2, NULL);
}

void func_8000A4D0(GObj *arg0, u8 arg1, s32 arg2) {
    omGMoveCommon(1, arg0, arg1, arg2, NULL);
}

void func_8000A508(GObj *arg0, GObj *arg1) {
    omGMoveCommon(2, arg0, arg1->link, arg1->pri, arg1);
}

void func_8000A544(GObj *arg0, GObj *arg1) {
    omGMoveCommon(3, arg0, arg1->link, arg1->pri, arg1);
}

void omGLinkObjDLCommon(GObj *arg0, s32 drawCB, u8 link, s32 prio, s32 arg4) {
    if (link >= 0x20) {
        fatal_printf("omGLinkObjDLCommon() : dl_link num over : dl_link = %d : id = %d\n", link, arg0->objId);
        while (1);
    }
    arg0->dl_link = link;
    arg0->renderPriority = prio;
    arg0->onDraw = drawCB;
    arg0->unk34 = arg4;
    arg0->unkE = D_8003DCA8 - 1;
}

void omLinkGObjDL(GObj *gobj, s32 drawCB, u8 link, s32 prio, s32 arg4) {
    if (gobj == NULL) {
        gobj = omCurrentObj;
    }
    omGLinkObjDLCommon(gobj, drawCB, link, prio, arg4);
    omGSetupCameraDLLink(gobj);
}

void func_8000A640(GObj *arg0, s32 drawCB, u8 link, s32 prio, s32 arg4) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    omGLinkObjDLCommon(arg0, drawCB, link, prio, arg4);
    omGSetupDLLink_HighestPrioMax(arg0);
}

void func_8000A684(GObj *arg0, s32 drawCB, s32 arg2, GObj *arg3) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    omGLinkObjDLCommon(arg0, drawCB, arg3->dl_link, arg3->renderPriority, arg2);
    omGInsertDLLink(arg0, arg3);
}

void func_8000A6D8(GObj *o, s32 drawCB, s32 arg2, GObj *arg3) {
    if (o == 0) {
        o = omCurrentObj;
    }
    omGLinkObjDLCommon(o, drawCB, arg3->dl_link, arg3->renderPriority, arg2);
    omGInsertDLLink(o, arg3->prev);
}

void func_8000A730(GObj *o, GObjFunc drawCallback, s32 pri, s32 arg3, s32 arg4) {
    o->dl_link = 0x20;
    o->renderPriority = pri;
    o->onDraw = drawCallback;
    o->unk30 = arg3;
    o->unk34 = arg4;
    o->unk38 = 0;
    o->unkE = D_8003DCA8 - 1;
}

void omGLinkObjDLCamera(GObj *o, GObjFunc drawCallback, s32 pri, s32 arg3, s32 arg4) {
    if (o == 0) {
        o = omCurrentObj;
    }
    func_8000A730(o, drawCallback, pri, arg3, arg4);
    omGSetupCameraDLLink(o);
}

void func_8000A7A0(GObj *o, s32 arg1, s32 prio, s32 arg3, s32 arg4) {
    if (o == 0) {
        o = omCurrentObj;
    }
    func_8000A730(o, arg1, prio, arg3, arg4);
    omGSetupDLLink_HighestPrioMax(o);
}

void func_8000A7DC(GObj *o, s32 arg1, s32 arg2, s32 arg3, GObj *arg4) {
    if (o == NULL) {
        o = omCurrentObj;
    }

    func_8000A730(o, arg1, arg4->renderPriority, arg2, arg3);
    omGInsertDLLink(o, arg4);
}

void func_8000A830(GObj *o, s32 arg1, s32 arg2, s32 arg3, GObj *arg4) {
    if (o == NULL) {
        o = omCurrentObj;
    }

    func_8000A730(o, arg1, arg4->renderPriority, arg2, arg3);
    omGInsertDLLink(o, arg4->prev);
}

void omGMoveObjDL(GObj *o, u8 link, s32 renderPri) {
    if (link >= 0x20) {
        fatal_printf("omGMoveObjDL() : dl_link num over : dl_link = %d : id = %d\n", link, o->objId);
        while (1);
    }
    omGDLLinkDestructor(o);
    o->dl_link = link;
    o->renderPriority = renderPri;
    omGSetupCameraDLLink(o);
}

void omGMoveObjDLHead(GObj *o, u8 link, s32 renderPri) {
    if (link >= 0x20) {
        fatal_printf("omGMoveObjDLHead() : dl_link num over : dl_link = %d : id = %d\n", link, o->objId);
        while (1);
    }
    omGDLLinkDestructor(o);
    o->dl_link = link;
    o->renderPriority = renderPri;
    omGSetupDLLink_HighestPrioMax(o);
}

void func_8000A980(GObj *o, GObj *arg1) {
    omGDLLinkDestructor(o);
    o->dl_link = arg1->dl_link;
    o->renderPriority = arg1->renderPriority;
    omGInsertDLLink(o, arg1);
}

void func_8000A9C0(GObj *arg0, GObj *arg1) {
    omGDLLinkDestructor(arg0);
    arg0->dl_link = arg1->dl_link;
    arg0->renderPriority = arg1->renderPriority;
    omGInsertDLLink(arg0, arg1->prevDL);
}

void func_8000AA04(GObj *arg0, s32 arg1) {
    omGDLLinkDestructor(arg0);
    arg0->renderPriority = arg1;
    omGSetupCameraDLLink(arg0);
}

void func_8000AA38(GObj *o, s32 renderPri) {
    omGDLLinkDestructor(o);
    o->renderPriority = renderPri;
    omGSetupDLLink_HighestPrioMax(o);
}

void func_8000AA6C(GObj *o, GObj *arg1) {
    omGDLLinkDestructor(o);
    o->renderPriority = arg1->renderPriority;
    omGInsertDLLink(o, arg1);
}

void func_8000AAA4(GObj *arg0, GObj *arg1) {
    omGDLLinkDestructor(arg0);
    arg0->renderPriority = arg1->renderPriority;
    omGInsertDLLink(arg0, arg1->prev);
}

void omDrawAll(void) {
    int i;
    GObj *obj;

    omCurrentCamera = NULL;
    omCurrentDrawObj = NULL;

    for (i = 0; i < 32; i++) {
        D_8004A7F8[i].unk0 = D_8003DCA8 - 1;
    }

    obj = omGObjListDlHead[32];
    while (obj) {
        if (!(obj->flags & GOBJ_FLAGS_HIDDEN)) {
            D_8003DE54 = 3;
            omCurrentCamera = obj;
            obj->onDraw(obj);
            D_8003DE54 = 0;
        }
        obj = obj->nextDL;
    }
}

GObj *omGUpdateObj(GObj *gobj) {
    GObj *g;

    D_8003DE54 = 1;
    omCurrentObj = gobj;
    gobj->onUpdate(gobj);
    g = gobj->next;
    omCurrentObj = NULL;
    D_8003DE54 = 0;
    if (D_8004A7D4 != 0) {
        if (D_8004A7D4 != 2) {
            D_8004A7D4 = 0;
        } else {
            D_8004A7D4 = 0;
            omGDeleteObj(gobj);
        }
    }
    return g;
}

// Matches on decomp.me but not locally??????
#ifdef NON_MATCHING
struct GObjProcess *omGDispatchProc(struct GObjProcess *proc) {
    struct GObjProcess *ret;
    void (*entry)(GObj *);

    D_8003DE54 = 2;
    omCurrentObj = proc->gobj;
    omCurrentProc = proc;

    switch (proc->kind) {
        case 0: case 2:
            osStartThread(&proc->payload.thread->thread);
            osRecvMesg(&HS64_GObjProcMesgQ, NULL, 1);
            break;
        case 1:
            proc->payload.callback(proc->gobj);
            break;
        // case 2: default: break;
    }

    ret = proc->prev;

    omCurrentObj = NULL;
    omCurrentProc = NULL;
    D_8003DE54 = 0;

    switch (D_8004A7D4) {
        case 2:
            D_8004A7D4 = 0;
            while (ret != NULL && ret->gobj == proc->gobj) {
                ret = ret->prev;
            }

            omGDeleteObj(proc->gobj);
            break;
        case 1:
            D_8004A7D4 = 0;
            omEndProcess(proc);
            break;
        case 0: break;
        default: D_8004A7D4 = 0; break;
    }

    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGDispatchProc.s")
#endif

void omUpdateAll(void) {
    s32 i;

    D_8004A7D4 = 0;
    omCurrentObj = NULL;
    omCurrentProc = NULL;
    for (i = 0; i < 32; i++) {
        GObj *tmp = omGObjListHead[i];

        while (tmp != NULL) {
            if (((tmp->flags & GOBJ_FLAGS_SKIPUPDATE) == 0) && (tmp->onUpdate != NULL)) {
                tmp = omGUpdateObj(tmp);
            } else {
                tmp = tmp->next;
            }
        }
    }

    for (i = 3; i >= 0; i--) {
        struct GObjProcess *tmp = omGObjProcList[i];

        while (tmp != NULL) {
            if (tmp->paused == 0) {
                tmp = omGDispatchProc(tmp);
            } else {
                tmp = tmp->nextPriProc;
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_omInit.s")
