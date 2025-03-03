#include "common.h"
#include "crash_screen.h"
#include "object_manager.h"
#include "code_11720.h"

// data + early rodata
s32 D_8003DE50 = 10000000;

u32 D_8003DE54 = 0x00000000;

f32 D_8003DE58[7] = {
    0.0f, 0.0f, 30.0f, 4.0f / 3.0f, 100.0f, 12800.0f, 1.0f
};

f32 D_8003DE74[8] = {
    0.0f, -160.0f, 160.0f, -120.0f, 120.0f, 100.0f, 12800.0f, 1.0f
};

f32 D_8003DE94[3][3] = {
    { 0.0f, 0.0f, 0.0f },
    { 1500.0f, 0.0f, 0.0f },
    { 0.0f, 0.0f, 1.0f }
};

u32 D_8003DEB8 = 0x00000000;

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
GObj *omCurrentObj, *D_8004A7C8, *D_8004A7CC;
struct GObjProcess *omCurrentProc;
s32 D_8004A7D4;
OSMesg D_8004A7D8;
// 0x8004A7DC?
OSMesgQueue HS64_GObjProcMesgQ;
struct UnkStruct8004A7F8 D_8004A7F8[32]; // length 32 based on loop asm in func_8000AAE0 (unrolled)
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

void func_800080C0(struct GObjProcess *);
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_800080C0.s")

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

void func_80008210(struct GObjProcess *proc) {
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

void func_800083CC(GObj *o, GObj *prevObj) {
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

void func_80008434(GObj *o) {
    GObj *tail;

    tail = omGObjListTail[o->link];
    while (tail != 0 && tail->pri < o->pri) {
        tail = tail->prev;
    }
    func_800083CC(o, tail);
}

void func_800084A0(GObj *o) {
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
    func_800083CC(o, tail);
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
    gDObjHead = gDObjHead->unk0;
    gDObjCount++;
    return temp_v0;
}

void HS64_DObjPush(struct DObj *arg0) {
    arg0->unk0 = gDObjHead;
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
    gCameraHead = gCameraHead->unk0;
    gCameraCount++;
    return temp_v0;
}

void HS64_CameraPush(struct Camera *arg0) {
    arg0->unk0 = gCameraHead;
    gCameraHead = arg0;
    gCameraCount--;
}

struct GObjProcess *func_80008A18(GObj *arg0, void (*arg1)(void), u8 kind, u32 pri) {
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
    oProcess->unk15 = 0;
    oProcess->gobj = arg0;
    oProcess->entryPoint = arg1;
    switch (kind) {
        case HS64_GOBJPROC_KIND_GOBJTHREAD:
            oThread = HS64_GObjThreadPop();
            oProcess->payload.thread = oThread;
            oThread->objStack = &HS64_GetGObjThreadStack()->stack;
            oThread->objStackSize = gNewEntityStackSize;
            osCreateThread(&oThread->thread, D_8003DE50++, arg1, arg0, &(oThread->objStack->stack[gNewEntityStackSize / 8]), 0x33);
            oThread->objStack->stack[7] = STACK_TOP_MAGIC;
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
    func_800080C0(oProcess);
    return oProcess;
}

// a somewhat more granular version of func_80008A18
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
    oProcess->unk15 = 0;
    oProcess->gobj = arg0;
    oProcess->entryPoint = entry;
    oThread = HS64_GObjThreadPop(); oProcess->payload.thread = oThread;
    if (stackSize == 0) {
        oProcess->kind = HS64_GOBJPROC_KIND_GOBJTHREAD;
        oThread->objStack = &HS64_GetGObjThreadStack()->stack;
        oThread->objStackSize = gNewEntityStackSize;
        phi_a1 = (arg3 != -1) ? arg3 : D_8003DE50++;
        osCreateThread(&oThread->thread, phi_a1, entry, arg0, &(oThread->objStack->stack[gNewEntityStackSize / 8]), 0x33);
        oThread->objStack->stack[7] = STACK_TOP_MAGIC;
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
        arg4->stack[7] = STACK_TOP_MAGIC;
        if (D_8003DE50 >= 20000000)
            D_8003DE50 = 10000000;
    }
    func_800080C0(oProcess);
    return oProcess;
}

void func_80008DA8(struct GObjProcess *proc) {
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
        func_80008210(proc);
        HS64_GObjProcessRelease(proc);
    }
}

GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80008EC4.s")

void func_80008EC4(struct DObj *, u8, u8, u32);

void func_80009628(struct DObj *arg0, u8 arg1, u8 arg2) {
    func_80008EC4(arg0, arg1, arg2, arg0->unk56);
}

GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009658.s")

// Initializes a new AObj with an index
struct AObj *HS64_AObjNew(struct Animation *anim, u8 index) {
    struct AObj *toReturn;

    toReturn = HS64_AObjPop();
    toReturn->unk4 = index;
    toReturn->unk5 = 0;
    toReturn->unk20 = 0;
    toReturn->unk1C = 0.0f;
    toReturn->unk18 = 0.0f;
    toReturn->unk14 = 0.0f;
    toReturn->unk10 = 0.0f;
    toReturn->unkC = 0.0f;
    toReturn->unk8 = 1.0f;
    HS64_AObjLinkToAnimation(anim, toReturn);
    return toReturn;
}

void func_8000984C(struct unk8000BE90Func *arg0) {
    struct AObj *temp_s1;
    struct AObj *phi_s0;

    phi_s0 = arg0->unk6C;
    while (phi_s0 != 0) {
        temp_s1 = phi_s0->next;
        HS64_AObjRelease(phi_s0);
        phi_s0 = temp_s1;
    }
    arg0->unk6C = 0;
    arg0->unk74 = -FLT_MAX;
}

struct AObj *func_800098AC(s32 arg0, u8 index) {
    struct AObj *toReturn;

    toReturn = HS64_AObjPop();
    toReturn->unk4 = index;
    toReturn->unk5 = 0;
    toReturn->unk20 = 0;
    toReturn->unk1C = 0.0f;
    toReturn->unk18 = 0.0f;
    toReturn->unk14 = 0.0f;
    toReturn->unk10 = 0.0f;
    toReturn->unkC = 0.0f;
    toReturn->unk8 = 1.0f;
    func_80008840(arg0, toReturn);
    return toReturn;
}

void func_80009918(struct unk80008840 *arg0) {
    struct AObj *temp_s1;
    struct AObj *phi_s0;

    phi_s0 = arg0->unk90;
    while (phi_s0 != 0) {
        temp_s1 = phi_s0->next;
        HS64_AObjRelease(phi_s0);
        phi_s0 = temp_s1;
    }
    arg0->unk90 = 0;
    arg0->unk98 = -FLT_MAX;
}

struct AObj *func_80009978(struct Animation* arg0, u8 arg1) {
    struct AObj *temp_v0;

    temp_v0 = HS64_AObjPop();
    temp_v0->unk4 = arg1;
    temp_v0->unk5 = (u8)0;
    temp_v0->unk20 = 0;
    temp_v0->unk1C = 0.0f;
    temp_v0->unk18 = 0.0f;
    temp_v0->unk14 = 0.0f;
    temp_v0->unk10 = 0.0f;
    temp_v0->unkC = 0.0f;
    temp_v0->unk8 = 1.0f;
    func_80008850(arg0, temp_v0);
    return temp_v0;
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

GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009A44.s")

GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009B5C.s")

// Not really sure what's going on here
GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009BD4.s")

struct DObj *func_80009C38(GObj *gobj, u8 *arg1) {
    struct DObj *dobj;
    struct DObj *temp_v1;

    if (gobj == NULL) {
        gobj = omCurrentObj;
    }
    dobj = HS64_DObjPop();
    
    if (gobj->unk3C != NULL) {
        temp_v1 = gobj->unk3C;
        
        while (temp_v1->unk8 != 0) {
            temp_v1 = temp_v1->unk8;
        }

        temp_v1->unk8 = dobj;
        dobj->unkC = temp_v1;
    } else {
        gobj->kind = 1;
        gobj->unk3C = dobj;
        dobj->unkC = 0;
    }
    dobj->gobj = gobj;
    dobj->unk14 = 1;
    dobj->unk8 = NULL;
    dobj->unk10 = NULL;
    dobj->unk50 = arg1;
    func_80009BD4(dobj);
    return dobj;
}

GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009CE8.s")

GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009D5C.s")

GLOBAL_ASM("asm/nonmatchings/main/object_manager/func_80009DF4.s")

struct Camera *func_80009F7C(GObj *gobj) {
    int i;
    struct Camera *cam;

    if (gobj == 0) {
        gobj = omCurrentObj;
    }
    gobj->kind = 3;
    cam = HS64_CameraPop();

    gobj->unk3C = cam;

    cam->gobj = gobj;

    setup_viewport(&cam->viewport);
    if (1) {
        // stub
    }

    cam->unk60 = 0;

    for (i = 0; i < 2; i++) {
        cam->unk64[i] = 0;
    }

    cam->unk80 = 0;
    cam->unk84 = 0;
    cam->unk88 = 0;
    cam->unk8C = 0;
    cam->aobj = NULL;
    cam->unk70 = 0;
    cam->unk74 = -FLT_MAX;
    cam->unk78 = 1.0f;
    cam->unk7C = 0.0f;
    return cam;
}

void func_8000A02C(struct Camera *cam) {
    struct AObj *aobj;
    GObj *gobj;
    struct OMMtx *mtx;
    int i;

    gobj = cam->gobj;
    gobj->kind = 0;
    gobj->unk3C = NULL;

    for (i = 0; i < 2; i++) {
        mtx = cam->unk64[i];

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
    toReturn->unk3C = NULL;
    toReturn->dl_link = 0x21;
    toReturn->unk40 = 0.0f;
    toReturn->unk48 = 0;
    toReturn->unk4C = 0;
    return toReturn;
}

GObj *HS64_omMakeGObj(s32 id, void (*func)(void), u8 link, u32 pri) {
    GObj *o;

    o = omGAddCommon(id, func, link, pri);
    if (o == NULL) {
        return NULL;
    } else {
        func_80008434(o);
        return o;
    }
}

GObj *func_8000A1C0(s32 arg0, s32 arg1, u8 arg2, s32 pri) {
    GObj *o;

    o = omGAddCommon(arg0, arg1, arg2, pri);
    if (o == 0) {
        return NULL;
    } else {
        func_800084A0(o);
        return o;
    }
}

GObj *func_8000A200(s32 id, s32 arg1, GObj *arg2) {
    GObj *temp_v0;

    temp_v0 = omGAddCommon(id, arg1, arg2->link, arg2->pri);
    if (temp_v0 == 0) {
        return NULL;
    }
    func_800083CC(temp_v0, arg2);
    return temp_v0;
}

GObj *func_8000A24C(s32 id, s32 arg1, GObj *arg2) {
    GObj *temp_v0;

    temp_v0 = omGAddCommon(id, arg1, arg2->link, arg2->pri);
    if (temp_v0 == 0) {
        return NULL;
    }
    func_800083CC(temp_v0, arg2->prev);
    return temp_v0;
}

void func_8000BBE0(GObj *);
void func_8000B870(GObj *);

void func_8000A29C(GObj *arg0) {
    if (arg0 == 0 || arg0 == omCurrentObj) {
        D_8004A7D4 = 2;
        return;
    }
    func_8000B870(arg0);
    switch (arg0->kind) {
        case 1:
            func_8000BBE0(arg0);
        case 2:
            break;
        case 3:
            func_8000A02C((struct Camera *)arg0->unk3C);
    }
    if (arg0->dl_link != 0x21) {
        omGDLLinkDestructor(arg0);
    }
    func_80008528(arg0);
    HS64_GObjRelease(arg0);
}

// i genuinely don't know what's going on here
#ifdef NON_MATCHING
void omGMoveCommon(s32 arg0, GObj *gobj, u8 link, u32 pri, GObj *arg4) {
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
    switch (arg0) { /* irregular */
        case 0:
            func_80008434(gobj);
            break;
        case 1:
            func_800084A0(gobj);
            break;
        case 2:
            func_800083CC(gobj, arg4);
            break;
        case 3:
            func_800083CC(gobj, arg4->prev);
            break;
    }
    while (proc != NULL) {
        func_800080C0(proc);
        proc = proc->next;
    }
}
#else
GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGMoveCommon.s")
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

void omGLinkObjDLCommon(GObj *arg0, s32 arg1, u8 link, s32 prio, s32 arg4) {
    if (link >= 0x20) {
        fatal_printf("omGLinkObjDLCommon() : dl_link num over : dl_link = %d : id = %d\n", link, arg0->objId);
        while (1);
    }
    arg0->dl_link = link;
    arg0->renderPriority = prio;
    arg0->onDraw = arg1;
    arg0->unk34 = arg4;
    arg0->unkE = D_8003DCA8 - 1;
}

void func_8000A5FC(GObj *gobj, s32 arg1, u8 link, s32 prio, s32 arg4) {
    if (gobj == NULL) {
        gobj = omCurrentObj;
    }
    omGLinkObjDLCommon(gobj, arg1, link, prio, arg4);
    omGSetupCameraDLLink(gobj);
}

void func_8000A640(GObj *arg0, s32 arg1, u8 link, s32 prio, s32 arg4) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    omGLinkObjDLCommon(arg0, arg1, link, prio, arg4);
    omGSetupDLLink_HighestPrioMax(arg0);
}

void func_8000A684(GObj *arg0, s32 arg1, s32 arg2, GObj *arg3) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    omGLinkObjDLCommon(arg0, arg1, arg3->dl_link, arg3->renderPriority, arg2);
    omGInsertDLLink(arg0, arg3);
}

void func_8000A6D8(GObj *o, s32 arg1, s32 arg2, GObj *arg3) {
    if (o == 0) {
        o = omCurrentObj;
    }
    omGLinkObjDLCommon(o, arg1, arg3->dl_link, arg3->renderPriority, arg2);
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

void func_8000A764(GObj *o, GObjFunc drawCallback, s32 pri, s32 arg3, s32 arg4) {
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

void func_8000AAE0(void) {
    int i;
    GObj *obj;

    D_8004A7C8 = NULL;
    D_8004A7CC = NULL;

    for (i = 0; i < 32; i++) {
        D_8004A7F8[i].unk0 = D_8003DCA8 - 1;
    }

    obj = omGObjListDlHead[32];
    while (obj) {
        if (!(obj->flags & GOBJ_FLAGS_HIDDEN)) {
            D_8003DE54 = 3;
            D_8004A7C8 = obj;
            obj->onDraw(obj);
            D_8003DE54 = 0;
        }
        obj = obj->nextDL;
    }
}

u32 func_8000ABAC(GObj *gobj) {
    u32 temp_a1;

    D_8003DE54 = 1;
    omCurrentObj = gobj;
    gobj->onUpdate(gobj);
    temp_a1 = gobj->next;
    omCurrentObj = NULL;
    D_8003DE54 = 0;
    if (D_8004A7D4 != 0) {
        if (D_8004A7D4 != 2) {
            D_8004A7D4 = 0;
        } else {
            D_8004A7D4 = 0;
            func_8000A29C(gobj);
        }
    }
    return temp_a1;
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

            func_8000A29C(proc->gobj);
            break;
        case 1:
            D_8004A7D4 = 0;
            func_80008DA8(proc);
            break;
        case 0: break;
        default: D_8004A7D4 = 0; break;
    }

    return ret;
}
#else
GLOBAL_ASM("asm/nonmatchings/main/object_manager/omGDispatchProc.s")
#endif

void func_8000AD88(void) {
    s32 i;

    D_8004A7D4 = 0;
    omCurrentObj = NULL;
    omCurrentProc = NULL;
    for (i = 0; i < 32; i++) {
        GObj *tmp = omGObjListHead[i];

        while (tmp != NULL) {
            if (((tmp->flags & 0x40) == 0) && (tmp->onUpdate != NULL)) {
                tmp = func_8000ABAC(tmp);
            } else {
                tmp = tmp->next;
            }
        }
    }

    for (i = 3; i >= 0; i--) {
        struct GObjProcess *tmp = omGObjProcList[i];

        while (tmp != NULL) {
            if (tmp->unk15 == 0) {
                tmp = omGDispatchProc(tmp);
            } else {
                tmp = tmp->nextPriProc;
            }
        }
    }
}

GLOBAL_ASM("asm/nonmatchings/main/object_manager/HS64_omInit.s")
