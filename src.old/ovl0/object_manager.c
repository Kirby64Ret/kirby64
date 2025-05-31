// om: object manager

#include <ultra64.h>
#include <macros.h>
#include <PR/os_message.h>

#include "ovl0_2_5.h"
#include "ovl0_3.h"
#include "ovl0_4.h"
#include "main.h" 
#include "omCurrentObj.h"

extern void func_80000A44(void);
extern void fatal_printf(const char *fmt, ...);

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

// rodata

extern const char D_80040230[];
extern const char D_80040250[];
extern const char D_80040274[];
extern const char D_80040294[];
extern const char D_800402B0[];
extern const char D_800402C8[];
extern const char D_800402E0[];
extern const char D_800402F8[];
extern const char D_80040314[];
extern const char D_80040340[];
extern const char D_80040368[];
extern const char D_80040394[];
extern const char D_800403B8[];
extern const char D_800403DC[];
extern const char D_80040414[];
extern const char D_8004044C[];
extern const char D_80040490[];
extern const char D_800404CC[];
extern const char D_80040670[];

// end rodata

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
struct GObj *omGObjListHead[32]; // probably length 32 based on loop asm
void* omGObjListTail[32]; // also length 32? lines up with next symbol
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
struct GObj *omCurrentObj, *D_8004A7C8, *D_8004A7CC;
struct GObjProcess *D_8004A7D0;
s32 D_8004A7D4;
OSMesg D_8004A7D8;
// 0x8004A7DC?
OSMesgQueue HS64_GObjProcMesgQ;
struct UnkStruct8004A7F8 D_8004A7F8[32]; // length 32 based on loop asm in func_8000AAE0 (unrolled)
static u32 pad1, pad2, pad3, pad4, pad5, pad6; // 0x8004AA78 - 0x8004AA8F?

// end bss

extern struct GObj *D_800DE44C;

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

void HS64_GObjThreadPush(struct GObjThread *arg0) {
    arg0->unk0 = gGObjThreadHead;
    gGObjThreadHead = arg0;
    gGObjThreadCount--;
}

struct GObjThreadStack *HS64_GObjThreadStackPop(void) {
    struct GObjThreadStack *temp_v0;

    if (gGObjThreadStackHead == NULL) {
        fatal_printf("om : couldn't get GObjThreadStack\n");
        while (TRUE);
    }
    temp_v0 = gGObjThreadStackHead;
    gGObjThreadStackHead = gGObjThreadStackHead->unk0;
    D_8004A548++;
    return temp_v0;
}

void HS64_GObjThreadStackPush(struct GObjThreadStack *arg0) {
    arg0->unk0 = gGObjThreadStackHead;
    gGObjThreadStackHead = arg0;
    D_8004A548--;
}

struct GObjProcess *HS64_GObjProcessPop(void) {
    struct GObjProcess *temp_v0;

    if (gGObjProcessHead == NULL) {
        fatal_printf("om : couldn't get GObjProcess\n");
        while (TRUE);
    }
    temp_v0 = gGObjProcessHead;
    gGObjProcessHead = gGObjProcessHead->unk0;
    gGObjProcessCount++;
    return temp_v0;
}

// LinkProc?
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_800080C0.s")

void HS64_GObjProcessPush(struct GObjProcess *proc) {
    proc->unk0 = gGObjProcessHead;
    gGObjProcessHead = proc;
    gGObjProcessCount--;
}

// either removes proc from the next/prev linked list,
// or from the parent/child linked list
void unlink_gobj_process(struct GObjProcess *proc) {
    if (proc->unkC != 0) {
        proc->unkC->unk8 = proc->unk8;
    } else {
        D_8004A560[proc->pri] = proc->unk8;
    }
    if (proc->unk8 != 0) {
        proc->unk8->unkC = proc->unkC;
    }
}

void func_80008210(struct GObjProcess *proc) {
    struct GObj *sp1C;

    sp1C = proc->gobj;
    unlink_gobj_process(proc);
    if (proc->unk4 != 0) {
        proc->unk4->unk0 = proc->unk0;
    } else {
        sp1C->proc = proc->unk0;
    }
    if (proc->unk0 != 0) {
        proc->unk0->unk4 = proc->unk4;
    } else {
        sp1C->unk1C = proc->unk4;
    }
}

struct GObjProcess *func_80008280(void) {
    return D_8004A7D0;
}

// Unused?
struct ObjStack *HS64_GetGObjProcessStack(struct GObjProcess *arg0) {
    if (arg0 == NULL) {
        arg0 = D_8004A7D0;
    }
    if (arg0 != NULL && (arg0->kind == 0 || arg0->kind == 2)) {
        return arg0->payload.thread->objStack;
    }
    return NULL;
}

// Unused?
s32 HS64_GetGObjProcessStackSize(struct GObjProcess *arg0) {
    if (arg0 == NULL) {
        arg0 = D_8004A7D0;
    }
    if (arg0 != NULL) {
        if (arg0->kind == 0 || arg0->kind == 2) {
            return arg0->payload.thread->objStackSize;
        }
    }
    return 0;
}

// Unused?
void func_8000831C(void (*arg0)(struct GObjThreadStack *)) {
    D_8004A558 = arg0;
}

// Unused?
s32 func_80008328(void) {
    struct GObj *gobj;
    s32 listCount;

    gobj = gGObjHead;
    listCount = 0;
    while (gobj != NULL) {
        gobj = gobj->unk4;
        listCount = listCount + 1;
    }
    return listCount + gGObjCount;
}

struct GObj *HS64_GObjPop(void) {
    struct GObj *head;

    if (gGObjHead == NULL) {
        return NULL;
    }
    head = gGObjHead;
    gGObjHead = gGObjHead->unk4;
    gGObjCount++;
    return head;
}

void HS64_GObjPush(struct GObj *arg0) {
    arg0->unk4 = gGObjHead;
    gGObjHead = arg0;
    gGObjCount--;
}

void func_800083CC(struct GObj *arg0, struct GObj *arg1) {
    arg0->unk8 = arg1;
    if (arg1 != 0) {
        arg0->unk4 = arg1->unk4;
        arg1->unk4 = arg0;
    } else {
        arg0->unk4 = omGObjListHead[arg0->link];
        omGObjListHead[arg0->link] = arg0;
    }
    if (arg0->unk4 != 0) {
        arg0->unk4->unk8 = arg0;
    } else {
        omGObjListTail[arg0->link] = arg0;
    }
}

void func_80008434(struct GObj *arg0) {
    struct GObj *phi_a1;

    phi_a1 = omGObjListTail[arg0->link];
    while (phi_a1 != 0 && phi_a1->unk10 < arg0->unk10) {
        phi_a1 = phi_a1->unk8;
    }
    func_800083CC(arg0, phi_a1);
}

void func_800084A0(struct GObj *arg0) {
    struct GObj *phi_v0;
    struct GObj *phi_a1;

    phi_v0 = omGObjListHead[arg0->link];
    while (phi_v0 != 0 && arg0->unk10 < phi_v0->unk10) {
        phi_v0 = phi_v0->unk4;
    }
    if (phi_v0 != 0) {
        phi_a1 = phi_v0->unk8;
    } else {
        phi_a1 = omGObjListTail[arg0->link];
    }
    func_800083CC(arg0, phi_a1);
}

void func_80008528(struct GObj *arg0) {
    if (arg0->unk8 != 0) {
        arg0->unk8->unk4 = arg0->unk4;
    } else {
        omGObjListHead[arg0->link] = arg0->unk4;
    }
    if (arg0->unk4 != 0) {
        arg0->unk4->unk8 = arg0->unk8;
        return;
    }
    omGObjListTail[arg0->link] = arg0->unk8;
}

void omGInsertDLLink(struct GObj *o, struct GObj *highprio_o) {
    o->prevDL = highprio_o;
    if (highprio_o != NULL) {
        o->nextDL = highprio_o->nextDL;
        highprio_o->nextDL = o;
    } else {
        o->nextDL = gHighestPrioDLLinkProcs[o->dl_link];
        gHighestPrioDLLinkProcs[o->dl_link] = o;
    }
    if (o->nextDL != NULL) {
        o->nextDL->prevDL = o;
        return;
    }
    gDLLinkProcs[o->dl_link] = o;
}

void omGSetupCameraDLLink(struct GObj *arg0) {
    struct GObj *i = NULL;
    
    for (i = gDLLinkProcs[arg0->dl_link];
         i != 0 && i->renderPriority < arg0->renderPriority;
         i = i->prevDL
    );
    
    omGInsertDLLink(arg0, i);
}

void omGSetupDLLink_HighestPrioMax(struct GObj *arg0) {
    struct GObj *phi_v0;
    struct GObj *phi_a1;

    phi_v0 = gHighestPrioDLLinkProcs[arg0->dl_link];
    while (phi_v0 != 0 && arg0->renderPriority < phi_v0->renderPriority) {
        phi_v0 = phi_v0->nextDL;
    }
    if (phi_v0 != 0) {
        phi_a1 = phi_v0->prevDL;
    } else {
        phi_a1 = gDLLinkProcs[arg0->dl_link];
    }
    omGInsertDLLink(arg0, phi_a1);
}

void omGDLLinkDestructor(struct GObj *arg0) {
    if (arg0->prevDL != 0) {
        arg0->prevDL->nextDL = arg0->nextDL;
    } else {
        gHighestPrioDLLinkProcs[arg0->dl_link] = arg0->nextDL;
    }
    if (arg0->nextDL != 0) {
        arg0->nextDL->prevDL = arg0->prevDL;
    } else {
        gDLLinkProcs[arg0->dl_link] = arg0->prevDL;
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

void HS64_OMMtxPush(struct OMMtx *arg0) {
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

void HS64_AObjPush(struct AObj *arg0) {
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

struct GObjThread *HS64_GObjThreadPop();
void func_800080C0(struct GObjProcess *);

struct GObjProcess *func_80008A18(struct GObj *arg0, void (*arg1)(void), u8 kind, u32 pri) {
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
            oThread->objStack = &HS64_GObjThreadStackPop()->stack;
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
            fatal_printf(D_80040340);
            while (1);

    }
    func_800080C0(oProcess);
    return oProcess;
}

// a somewhat more granular version of func_80008A18
struct GObjProcess *func_80008B94(struct GObj *arg0, struct GObjThread *entry, u32 pri, s32 arg3, struct ObjStack *arg4, u32 stackSize) {
    struct GObjProcess *oProcess;
    struct GObjThread *oThread;
    s32 phi_a1;

    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    oProcess = HS64_GObjProcessPop();
    if (pri >= 4) {
        fatal_printf(D_80040368); //"om : GObjProcess's priority is bad value\n"
        while (1);
    }
    oProcess->pri = pri;
    oProcess->unk15 = 0;
    oProcess->gobj = arg0;
    oProcess->entryPoint = entry;
    oThread = HS64_GObjThreadPop(); oProcess->payload.thread = oThread;
    if (stackSize == 0) {
        oProcess->kind = HS64_GOBJPROC_KIND_GOBJTHREAD;
        oThread->objStack = &HS64_GObjThreadStackPop()->stack;
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

void ohSleep(s32 arg);

void omEndProcess(struct GObjProcess *arg0) {
    void (*temp_v0)(struct GObjProcess *);
    u8 temp_v0_4;
    void (*temp_v0_3)(struct ObjStack *);

    if ((arg0 == 0) || (arg0 == D_8004A7D0)) {
        D_8004A7D4 = 1;
        temp_v0_4 = D_8004A7D0->kind;
        if (temp_v0_4 == 0 || temp_v0_4 == 2) {
            ohSleep(1);
            return;
        }
    } else {
        temp_v0 = D_8004A558;
        if (temp_v0 != 0) {
            temp_v0(arg0);
        }
        switch (arg0->kind) {
            case 0:
                osDestroyThread(&arg0->payload.thread->thread);
                HS64_GObjThreadStackPush(&arg0->payload.thread->objStack->stack[0] - 1); // why???
                HS64_GObjThreadPush(arg0->payload.thread);
                break;
            case 1:
                break;
            case 2:
                osDestroyThread(&arg0->payload.thread->thread);
                temp_v0_3 = D_8004A550;
                if (temp_v0_3 != 0) {
                    temp_v0_3(arg0->payload.thread->objStack);
                }
                HS64_GObjThreadPush(arg0->payload.thread);
        }
        func_80008210(arg0);
        HS64_GObjProcessPush(arg0);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80008EC4.s")

void func_80008EC4(struct DObj *, u8, u8, u32);

void omDObjAppendMtx(struct DObj *arg0, u8 arg1, u8 arg2) {
    func_80008EC4(arg0, arg1, arg2, arg0->unk56);
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80009658.s")

extern void HS64_AObjLinkToAnimation(struct Animation *anim, struct AObj *stack);

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

extern f32 D_8004064C;

void omDObjResetAnimation(struct unk8000BE90Func *arg0) {
    struct AObj *temp_s1;
    struct AObj *phi_s0;

    phi_s0 = arg0->unk6C;
    while (phi_s0 != 0) {
        temp_s1 = phi_s0->next;
        HS64_AObjPush(phi_s0);
        phi_s0 = temp_s1;
    }
    arg0->unk6C = 0;
    arg0->unk74 = D_8004064C;
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

extern f32 D_80040650;

void func_80009918(struct unk80008840 *arg0) {
    struct AObj *temp_s1;
    struct AObj *phi_s0;

    phi_s0 = arg0->unk90;
    while (phi_s0 != 0) {
        temp_s1 = phi_s0->next;
        HS64_AObjPush(phi_s0);
        phi_s0 = temp_s1;
    }
    arg0->unk90 = 0;
    arg0->unk98 = D_80040650;
}

struct AObj *omCameraAddAObj(struct Animation* arg0, u8 arg1) {
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

extern f32 D_80040654;

// Unused?
void func_800099E4(struct Animation *anim) {
    struct AObj *temp_s1;
    struct AObj *phi_s0;

    phi_s0 = anim->aobj;
    while (phi_s0 != 0) {
        temp_s1 = phi_s0->next;
        HS64_AObjPush(phi_s0);
        phi_s0 = temp_s1;
    }
    anim->aobj = 0;
    anim->scale = D_80040654;
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/omDObjAddMObj.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80009B5C.s")

extern f32 D_8004065C;

// Not really sure what's going on here
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80009BD4.s")

struct DObj *func_80009C38(struct GObj *gobj, u8 *arg1) {
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
        gobj->unkF = 1;
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

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80009CE8.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80009D5C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80009DF4.s")

extern const f32 D_80040660;

struct Camera *func_80009F7C(struct GObj *gobj) {
    int i;
    struct Camera *cam;

    if (gobj == 0) {
        gobj = omCurrentObj;
    }
    gobj->unkF = 3;
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
    cam->unk74 = D_80040660;
    cam->unk78 = 1.0f;
    cam->unk7C = 0.0f;
    return cam;
}

void func_8000A02C(struct Camera *cam) {
    struct AObj *aobj;
    struct GObj *gobj;
    struct OMMtx *mtx;
    int i;

    gobj = cam->gobj;
    gobj->unkF = 0;
    gobj->unk3C = NULL;

    for (i = 0; i < 2; i++) {
        mtx = cam->unk64[i];

        if (mtx != NULL) {
            HS64_OMMtxPush(mtx);
        }
    }

    // not an easy loop
    aobj = cam->aobj;
    while (aobj != NULL) {
        struct AObj *anext = aobj->next;

        HS64_AObjPush(aobj);
        aobj = anext;
    }

    HS64_CameraPush(cam);
}

struct GObj *omGAddCommon(u32 id, void (*arg1)(void), u8 link, u32 arg3) {
    struct GObj *toReturn;

    if (link >= 32) {
        fatal_printf(D_800403DC, link, id); // "omGAddCommon() : link num over : link = %d : id = %d\n"
        while (1);
    }
    toReturn = HS64_GObjPop();
    if (toReturn == NULL) {
        return NULL;
    }
    toReturn->objId = id;
    toReturn->link = link;
    toReturn->unk10 = arg3;
    toReturn->unk14 = arg1;
    toReturn->proc = NULL;
    toReturn->unk1C = 0;
    toReturn->unk44 = 0;
    toReturn->unkF = 0;
    toReturn->unk3C = NULL;
    toReturn->dl_link = 0x21;
    toReturn->unk40 = 0.0f;
    toReturn->unk48 = 0;
    toReturn->unk4C = 0;
    return toReturn;
}

struct GObj *func_8000A180(s32 id, void (*func)(void), u8 link, u32 arg3) {
    struct GObj *temp_v0;

    temp_v0 = omGAddCommon(id, func, link, arg3);
    if (temp_v0 == NULL) {
        return NULL;
    } else {
        func_80008434(temp_v0);
        return temp_v0;
    }
}

struct GObj *func_8000A1C0(s32 arg0, s32 arg1, u8 arg2, s32 arg3) {
    struct GObj *temp_v0;

    temp_v0 = omGAddCommon(arg0, arg1, arg2, arg3);
    if (temp_v0 == 0) {
        return NULL;
    }
    func_800084A0(temp_v0);
    return temp_v0;
}

struct GObj *func_8000A200(s32 arg0, s32 arg1, struct GObj *arg2) {
    struct GObj *temp_v0;

    temp_v0 = omGAddCommon(arg0, arg1, arg2->link, arg2->unk10);
    if (temp_v0 == 0) {
        return NULL;
    }
    func_800083CC(temp_v0, arg2);
    return temp_v0;
}

struct GObj *func_8000A24C(s32 arg0, s32 arg1, struct GObj *arg2) {
    struct GObj *temp_v0;

    temp_v0 = omGAddCommon(arg0, arg1, arg2->link, arg2->unk10);
    if (temp_v0 == 0) {
        return NULL;
    }
    func_800083CC(temp_v0, arg2->unk8);
    return temp_v0;
}

void func_8000BBE0(struct GObj *);
void func_8000B870(struct GObj *);

void func_8000A29C(struct GObj *arg0) {
    if (arg0 == 0 || arg0 == omCurrentObj) {
        D_8004A7D4 = 2;
        return;
    }
    func_8000B870(arg0);
    switch (arg0->unkF) {
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
    HS64_GObjPush(arg0);
}

// i genuinely don't know what's going on here
#ifdef NON_MATCHING
void omGMoveCommon(s32 arg0, struct GObj *gobj, u8 link, u32 arg3, struct GObj *arg4) {
    GObjProcess *proc;

    if (link >= 0x20) {
        fatal_printf(&D_80040414, link, gobj->objId);
        while (1);
    }
    if (gobj == NULL) {
        gobj = omCurrentObj;
    }
    proc = gobj->proc;
    gobj->proc = NULL;
    gobj->unk1C = 0;

    while (proc != NULL) {
        unlink_gobj_process(proc);
        proc = proc->unk0;
    }

    func_80008528(gobj);
    gobj->link = link;
    gobj->unk10 = arg3;
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
            func_800083CC(gobj, arg4->unk8);
            break;
    }
    while (proc != NULL) {
        func_800080C0(proc);
        proc = proc->unk0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000A350.s")
#endif

void func_8000A498(struct GObj *arg0, u8 arg1, s32 arg2) {
    omGMoveCommon(0, arg0, arg1, arg2, NULL);
}

void func_8000A4D0(struct GObj *arg0, u8 arg1, s32 arg2) {
    omGMoveCommon(1, arg0, arg1, arg2, NULL);
}

void func_8000A508(struct GObj *arg0, struct GObj *arg1) {
    omGMoveCommon(2, arg0, arg1->link, arg1->unk10, arg1);
}

void func_8000A544(struct GObj *arg0, struct GObj *arg1) {
    omGMoveCommon(3, arg0, arg1->link, arg1->unk10, arg1);
}

extern u32 D_8003DCA8;

void omGLinkObjDLCommon(struct GObj *arg0, s32 arg1, u8 link, s32 prio, s32 arg4) {
    if (link >= 0x20) {
        // "omGLinkObjDLCommon() : dl_link num over : dl_link = %d : id = %d\n"
        fatal_printf(&D_8004044C, link, arg0->objId);
        while (1);
    }
    arg0->dl_link = link;
    arg0->renderPriority = prio;
    arg0->unk2C = arg1;
    arg0->unk34 = arg4;
    arg0->unkE = D_8003DCA8 - 1;
}

void func_8000A5FC(struct GObj *gobj, s32 arg1, u8 link, s32 prio, s32 arg4) {
    if (gobj == NULL) {
        gobj = omCurrentObj;
    }
    omGLinkObjDLCommon(gobj, arg1, link, prio, arg4);
    omGSetupCameraDLLink(gobj);
}

void func_8000A640(struct GObj *arg0, s32 arg1, u8 link, s32 prio, s32 arg4) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    omGLinkObjDLCommon(arg0, arg1, link, prio, arg4);
    omGSetupDLLink_HighestPrioMax(arg0);
}

void func_8000A684(struct GObj *arg0, s32 arg1, s32 arg2, struct GObj *arg3) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    omGLinkObjDLCommon(arg0, arg1, arg3->dl_link, arg3->renderPriority, arg2);
    omGInsertDLLink(arg0, arg3);
}

void func_8000A6D8(struct GObj *arg0, s32 arg1, s32 arg2, struct GObj *arg3) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    omGLinkObjDLCommon(arg0, arg1, arg3->dl_link, arg3->renderPriority, arg2);
    omGInsertDLLink(arg0, arg3->unk8);
}

void func_8000A730(struct GObj *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    arg0->dl_link = 0x20;
    arg0->renderPriority = arg2;
    arg0->unk2C = arg1;
    arg0->unk30 = arg3;
    arg0->unk34 = arg4;
    arg0->unk38 = 0;
    arg0->unkE = D_8003DCA8 - 1;
}

void func_8000A764(struct GObj *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    func_8000A730(arg0, arg1, arg2, arg3, arg4);
    omGSetupCameraDLLink(arg0);
}

void func_8000A7A0(struct GObj *arg0, s32 arg1, s32 prio, s32 arg3, s32 arg4) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    func_8000A730(arg0, arg1, prio, arg3, arg4);
    omGSetupDLLink_HighestPrioMax(arg0);
}

void func_8000A7DC(struct GObj *arg0, s32 arg1, s32 arg2, s32 arg3, struct GObj *arg4) {
    if (arg0 == NULL) {
        arg0 = omCurrentObj;
    }

    func_8000A730(arg0, arg1, arg4->renderPriority, arg2, arg3);
    omGInsertDLLink(arg0, arg4);
}

void func_8000A830(struct GObj *arg0, s32 arg1, s32 arg2, s32 arg3, struct GObj *arg4) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }

    func_8000A730(arg0, arg1, arg4->renderPriority, arg2, arg3);
    omGInsertDLLink(arg0, arg4->unk8);
}

void omGMoveObjDL(struct GObj *arg0, u8 link, s32 arg2) {
    if (link >= 0x20) {
        fatal_printf(&D_80040490, link, arg0->objId); // "omGMoveObjDL() : dl_link num over : dl_link = %d : id = %d\n"
        while (1);
    }
    omGDLLinkDestructor(arg0);
    arg0->dl_link = link;
    arg0->renderPriority = arg2;
    omGSetupCameraDLLink(arg0);
}

void omGMoveObjDLHead(struct GObj *arg0, u8 link, s32 arg2) {
    if (link >= 0x20) {
        fatal_printf(D_800404CC, link, arg0->objId); // "omGMoveObjDLHead() : dl_link num over : dl_link = %d : id = %d\n"
        while (1);
    }
    omGDLLinkDestructor(arg0);
    arg0->dl_link = link;
    arg0->renderPriority = arg2;
    omGSetupDLLink_HighestPrioMax(arg0);
}

void func_8000A980(struct GObj *arg0, struct GObj *arg1) {
    omGDLLinkDestructor(arg0);
    arg0->dl_link = arg1->dl_link;
    arg0->renderPriority = arg1->renderPriority;
    omGInsertDLLink(arg0, arg1);
}

void func_8000A9C0(struct GObj *arg0, struct GObj *arg1) {
    omGDLLinkDestructor(arg0);
    arg0->dl_link = arg1->dl_link;
    arg0->renderPriority = arg1->renderPriority;
    omGInsertDLLink(arg0, arg1->prevDL);
}

void func_8000AA04(struct GObj *arg0, s32 arg1) {
    omGDLLinkDestructor(arg0);
    arg0->renderPriority = arg1;
    omGSetupCameraDLLink(arg0);
}

void func_8000AA38(struct GObj *arg0, s32 arg1) {
    omGDLLinkDestructor(arg0);
    arg0->renderPriority = arg1;
    omGSetupDLLink_HighestPrioMax(arg0);
}

void func_8000AA6C(struct GObj *arg0, struct GObj *arg1) {
    omGDLLinkDestructor(arg0);
    arg0->renderPriority = arg1->renderPriority;
    omGInsertDLLink(arg0, arg1);
}

void func_8000AAA4(struct GObj *arg0, struct GObj *arg1) {
    omGDLLinkDestructor(arg0);
    arg0->renderPriority = arg1->renderPriority;
    omGInsertDLLink(arg0, arg1->unk8);
}

extern struct GObj *D_8004A700;

void func_8000AAE0(void) {
    int i;
    struct GObj *obj;

    D_8004A7C8 = NULL;
    D_8004A7CC = NULL;

    for (i = 0; i < 32; i++) {
        D_8004A7F8[i].unk0 = D_8003DCA8 - 1;
    }

    obj = D_8004A700;
    while (obj) {
        if ((obj->unk44 & 1) == 0) {
            D_8003DE54 = 3;
            D_8004A7C8 = obj;
            obj->unk2C(obj);
            D_8003DE54 = 0;
        }
        obj = obj->nextDL;
    }
}

extern s32 D_8004A7D4;
u32 func_8000ABAC(struct GObj *gobj) {
    u32 temp_a1;

    D_8003DE54 = 1;
    omCurrentObj = gobj;
    gobj->unk14();
    temp_a1 = gobj->unk4;
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
    void (*entry)(struct GObj *);

    D_8003DE54 = 2;
    omCurrentObj = proc->gobj;
    D_8004A7D0 = proc;

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

    ret = proc->unk8;

    omCurrentObj = NULL;
    D_8004A7D0 = NULL;
    D_8003DE54 = 0;

    switch (D_8004A7D4) {
        case 2:
            D_8004A7D4 = 0;
            while (ret != NULL && ret->gobj == proc->gobj) {
                ret = ret->unk8;
            }

            func_8000A29C(proc->gobj);
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
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000AC3C.s")
#endif

void func_8000AD88(void) {
    s32 i;

    D_8004A7D4 = 0;
    omCurrentObj = NULL;
    D_8004A7D0 = NULL;
    for (i = 0; i < 32; i++) {
        struct GObj *tmp = omGObjListHead[i];

        while (tmp != NULL) {
            if (((tmp->unk44 & 0x40) == 0) && (tmp->unk14 != NULL)) {
                tmp = func_8000ABAC(tmp);
            } else {
                tmp = tmp->unk4;
            }
        }
    }

    for (i = 3; i >= 0; i--) {
        struct GObjProcess *tmp = D_8004A560[i];

        while (tmp != NULL) {
            if (tmp->unk15 == 0) {
                tmp = omGDispatchProc(tmp);
            } else {
                tmp = tmp->unk8;
            }
        }
    }
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000AE84.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000B3E0.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000B448.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000B4D4.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000B57C.s")

// is arg0 really a function pointer?
// void *func_8000B63C(void (*arg0)(void), s32 arg1);
u32 *func_8000B63C(u32 *arg0, s32 arg1) {
    return (arg1 == *arg0) ? arg0 : NULL;
}

// void func_8000B4D4(u32, void*, s32, s32);

void func_8000B65C(u32 arg0, s32 arg1) {
    func_8000B4D4(arg0, &func_8000B63C, arg1, 1);
}

void func_8000B57C(void*, s32, s32);

void func_8000B688(s32 arg0) {
    func_8000B57C(&func_8000B63C, arg0, 1);
}

void func_8000B6B4(s32 arg0) {

}

void ohSleep(s32 arg) {
    if (D_8004A7D0->payload.thread->objStack->stack[7] != STACK_TOP_MAGIC) {
        fatal_printf(D_80040670, D_8004A7D0->gobj->objId); // "gobjthread stack over  gobjid = %d\n"
    }

    while (arg != 0) {
        osSendMesg(&HS64_GObjProcMesgQ, (OSMesg)1, OS_MESG_NOBLOCK);
        osStopThread(NULL);
        arg--;
    }
}

void func_8000B758(struct GObj *arg0) {
    struct GObjProcess *proc;

    if (arg0 == NULL) {
        arg0 = omCurrentObj;
    }
    proc = arg0->proc;
    while (proc != NULL) {
        proc->unk15 = 1;
        proc = proc->unk0;

    }
}

void func_8000B78C(struct GObj *arg0) {
    struct GObjProcess *proc;

    if (arg0 == NULL) {
        arg0 = omCurrentObj;
    }
    proc = arg0->proc;
    while (proc != NULL) {
        proc->unk15 = 0;
        proc = proc->unk0;

    }
}

void func_8000B7C0(struct GObjProcess *arg0) {
    if (arg0 == NULL) {
        arg0 = D_8004A7D0;
    }
    arg0->unk15 = 1;
}

void func_8000B7D8(struct GObjProcess *arg0) {
    if (arg0 == NULL) {
        arg0 = D_8004A7D0;
    }
    arg0->unk15 = 0;
}

void func_8000B7F0(struct GObj *gobj, void (*entryPoint)(struct GObj *)) {
    GObjProcess *proc;

    if (gobj == 0) {
        gobj = omCurrentObj;
    }
    proc = gobj->proc;
    while (proc != 0) {
        if (entryPoint == proc->entryPoint) {
            proc->unk15 = 1;
        }
        proc = proc->unk0;
    }
}

void func_8000B830(struct GObj *gobj, void (*entryPoint)(struct GObj *)) {
    GObjProcess *proc;

    if (gobj == 0) {
        gobj = omCurrentObj;
    }
    proc = gobj->proc;
    while (proc != 0) {
        if (entryPoint == proc->entryPoint) {
            proc->unk15 = 0;
        }
        proc = proc->unk0;
    }
}

void func_8000B870(struct GObj *arg0) {
    struct GObjProcess *temp_s1;
    struct GObjProcess *phi_s0;

    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    phi_s0 = arg0->proc;
    while (phi_s0 != NULL) {
        temp_s1 = phi_s0->unk0;
        omEndProcess(phi_s0);
        phi_s0 = temp_s1;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000B8C0.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000B908.s")

// struct?
void func_8000B950(s32 arg0) {
    func_80009658(arg0, 3, 0);
    func_80009658(arg0, 6, 0);
}
// GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000B950.s")

// unused? don't mind if i do!
void func_8000B988(struct GObj *arg0) {
    struct UnkStruct8004A7C4_3C *phi_s0;

    phi_s0 = arg0->unk3C;
    while (phi_s0 != 0) {
        func_80009B5C(phi_s0);
        phi_s0 = animModelTreeNextNode(phi_s0); // This indicates that struct unk8000BE90Func and struct UnkStruct8004A7C4_3C are the same
    }
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000B9CC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000B9FC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000BA2C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000BA5C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000BA8C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000BABC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000BAEC.s")

void func_8000BBE0(struct GObj *arg0) {
    if (arg0 == NULL) {
        arg0 = omCurrentObj;
    }
    while (arg0->unk3C != 0) {
        func_80009DF4(arg0->unk3C);
    }
}

// loop meme
#ifdef NON_MATCHING
void func_8000BC34(void) {
    struct GObj *phi_s0;
    int i;

    for (i = 0; i < 32; i++) {
        phi_s0 = omGObjListHead[i];
        while (phi_s0 != NULL) {
            func_8000A29C(phi_s0);
            phi_s0 = phi_s0->unk4;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000BC34.s")
#endif

struct GObj *func_8000BCA4(s32 arg0, s32 arg1, s32 arg2, u32 arg3,
    s32 arg4, u8 arg5, s32 arg6, s32 arg7, u8 *arg8, s32 arg9, u8 argA, s32 argB, u32 argC) {
    struct GObj *temp_v0;
    struct DObj *x;

    temp_v0 = func_8000A180(arg0, arg1, (u8)arg2, arg3);
    if (temp_v0 == 0) {
        return NULL;
    }
    func_8000A5FC(temp_v0, arg4, arg5, arg6, arg7);

    x = func_80009C38(temp_v0, arg8);
    if (arg9 != 0) {
        func_8000B8C0(x);
    }
    if (argB != 0) {
        func_80008A18(temp_v0, argB, argA, argC);
    }
    return temp_v0;
}

struct GObj *func_8000BD3C(s32 id, void (*func)(void), s32 link, u32 arg3, s32 arg4, s32 arg5,
    s32 arg6, s32 arg7, s32 arg8, u8 arg9, s32 argA, u32 argB, s32 argC) {
    struct GObj *temp_v0;
    struct Camera *temp_v0_2;

    temp_v0 = func_8000A180(id, func, (u8) link, arg3);
    if (temp_v0 == 0) {
        return NULL;
    }
    func_8000A764(temp_v0, arg4, arg5, arg6, arg7);
    temp_v0_2 = func_80009F7C(temp_v0);
    if (arg8 != 0) {
        func_8000B950(temp_v0_2);
    }
    if (argA != 0) {
        func_80008A18(temp_v0, argA, arg9, argB);
    }
    if (argC != 0) {
        temp_v0_2->unk80 = 7;
        temp_v0_2->unk84 = 0xFF;
    }
    return temp_v0;
}

void func_8001806C(struct unk80017FEC *arg0);

struct GObj *func_8000BDF0(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    struct GObj *temp_v0;
    struct UnkStruct8004A7C4_3C *temp_v1;

    temp_v0 = func_8000BD3C(-1, &func_8000B6B4, arg0, arg1, &func_8001806C, arg2, 0, 0, 0, 0, 0, 0, 0);
    if (temp_v0 == NULL) {
        return NULL;
    }
    temp_v1 = temp_v0->unk3C;
    temp_v1->unk80 = arg3;
    temp_v1->unk84 = arg4;
    return temp_v0;
}
