#include "common.h"
#include "object_manager.h"
#include "fault.h"
#include "GObj.h"

// ovl0_4 (gtl??)
void func_8001806C(struct GObj *arg0);

void func_8000B3E0(s32 link, void (*cb)(GObj*, void*), void* param) {
    GObj* curr;
    GObj* next;

    curr = omGObjListHead[link];
    while (curr != NULL) {
        next = curr->next;
        cb(curr, param);
        curr = next;
    }
}

void func_8000B448(void (*cb)(GObj*, void*), void* param) {
    GObj* curr;
    GObj* next;
    s32 link;

    for (link = 0; link < 32; link++) {
        curr = omGObjListHead[link];
        while (curr != NULL) {
            next = curr->next;
            cb(curr, param);
            curr = next;
        }
    }
}

#ifdef MIPS_TO_C
s32 func_8000B4D4(s32 link, GObj* (*cb)(GObj*, void*), void* param, s32 single) {
    GObj* curr;
    GObj* next;
    GObj* ret = NULL;

    curr = omGObjListHead[link];
    while (curr != NULL) {
        GObj* retVal;

        next = curr->next;
        retVal = cb(curr, param);

        if (retVal != NULL) {
            ret = retVal;
            if (single) {
                return ret;
            }
        }
        curr = next;
    }

    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B4D4.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000B57C(s32 (*arg0)(void *, ?), ? arg1, s32 arg2) {
    s32 temp_v0;
    s32 var_s5;
    void **var_s6;
    void *temp_s0;
    void *var_a0;

    var_s5 = 0;
    var_s6 = &omGObjListHead;
loop_1:
    var_a0 = *var_s6;
    if (var_a0 != NULL) {
loop_2:
        temp_s0 = var_a0->unk4;
        temp_v0 = arg0(var_a0, arg1);
        if (temp_v0 != 0) {
            var_s5 = temp_v0;
            if (arg2 == 1) {
                return temp_v0;
            }
        }
        var_a0 = temp_s0;
        if (temp_s0 == NULL) {
            goto block_6;
        }
        goto loop_2;
    }
block_6:
    var_s6 += 4;
    if (var_s6 == &omGObjListTail) {
        return var_s5;
    }
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B57C.s")
#endif

GObj *ohCheckId(GObj *g, s32 id) {
    return (id == g->objId) ? g : NULL;
}

void func_8000B65C(u32 link, u32 id) {
    func_8000B4D4(link, ohCheckId, id, 1);
}

void ohFindById(u32 id) {
    func_8000B57C(ohCheckId, id, 1);
}

void ohUpdateStub(GObj *g) {
    // stubbed out; the intended code is presented below.
    // cmdProcessCommands(NULL);
}

void ohSleep(s32 frames) {
    if (omCurrentProc->payload.thread->objStack->stack[7] != STACK_TOP_MAGIC) {
        fatal_printf("gobjthread stack over  gobjid = %d\n", omCurrentProc->gobj->objId);
    }

    while (frames != 0) {
        osSendMesg(&HS64_GObjProcMesgQ, (OSMesg)1, OS_MESG_NOBLOCK);
        osStopThread(NULL);
        frames--;
    }
}

void ohGObjPause(GObj *g) {
    GObjProcess* proc;

    if (g == NULL) {
        g = omCurrentObj;
    }

    proc = g->procListHead;
    while (proc != NULL) {
        proc->paused = TRUE;
        proc = proc->next;
    }
}

void ohGObjResume(GObj *g) {
    GObjProcess* proc;

    if (g == NULL) {
        g = omCurrentObj;
    }

    proc = g->procListHead;
    while (proc != NULL) {
        proc->paused = FALSE;
        proc = proc->next;
    }
}

void ohPause(GObjProcess *proc) {
    if (proc == NULL) {
        proc = omCurrentProc;
    }
    proc->paused = 1;
}

void ohResume(GObjProcess *proc) {
    if (proc == NULL) {
        proc = omCurrentProc;
    }
    proc->paused = 0;
}

#ifdef MIPS_TO_C
void func_8000B7F0(GObj *arg0, s32 arg1) {
    GObj *var_a0;
    GObjProcess *var_v0;

    var_a0 = arg0;
    if (var_a0 == NULL) {
        var_a0 = omCurrentObj;
    }
    var_v0 = var_a0->procListHead;
    if (var_v0 != NULL) {
        do {
            if (arg1 == var_v0->entryPoint) {
                var_v0->paused = 1;
            }
            var_v0 = var_v0->next;
        } while (var_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B7F0.s")
#endif

#ifdef MIPS_TO_C
void func_8000B830(GObj *arg0, s32 arg1) {
    GObj *var_a0;
    GObjProcess *var_v0;

    var_a0 = arg0;
    if (var_a0 == NULL) {
        var_a0 = omCurrentObj;
    }
    var_v0 = var_a0->procListHead;
    if (var_v0 != NULL) {
        do {
            if (arg1 == var_v0->entryPoint) {
                var_v0->paused = 0;
            }
            var_v0 = var_v0->next;
        } while (var_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B830.s")
#endif

#ifdef MIPS_TO_C

void func_8000B870(GObj *arg0) {
    GObj *var_a0;
    GObjProcess *temp_s1;
    GObjProcess *var_s0;

    var_a0 = arg0;
    if (var_a0 == NULL) {
        var_a0 = omCurrentObj;
    }
    var_s0 = var_a0->procListHead;
    if (var_s0 != NULL) {
        do {
            temp_s1 = var_s0->next;
            func_80008DA8(var_s0);
            var_s0 = temp_s1;
        } while (temp_s1 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B870.s")
#endif

void ohCreateDefaultMatricesDeg(DObj *d) {
    func_80009628(d, 0x12, 0);
    func_80009628(d, 0x15, 0);
    func_80009628(d, 0x20, 0);
}

void ohCreateDefaultMatricesRad(DObj *d) {
    func_80009628(d, 0x12, 0);
    func_80009628(d, 0x1A, 0);
    func_80009628(d, 0x20, 0);
}

void ohCreateDefaultCameraMatrices(Camera *cam) {
    omCameraAddMtx(cam, MTX_TYPE_PERSP_FAST, 0);
    omCameraAddMtx(cam, MTX_TYPE_LOOKAT, 0);
}

void ohDobjTreeRemoveAllMObjs(GObj *g) {
    DObj *d = (DObj *)g->data;

    while (d != NULL) {
        func_80009B5C(d);
        d = func_8000BE90(d);
    }
}

DObj *ohAddDObj(void) {
    DObj *dobj;

    dobj = omGObjAddDObj();
    ohCreateDefaultMatricesDeg(dobj);
    return dobj;
}

DObj *ohAddDObjSibling(void) {
    DObj *dobj;

    dobj = omDObjAddSibling();
    ohCreateDefaultMatricesDeg(dobj);
    return dobj;
}

DObj *ohAddDObjChild(void) {
    DObj *dobj;

    dobj = omDObjAddChild();
    ohCreateDefaultMatricesDeg(dobj);
    return dobj;
}

DObj *ohAddDObjRad(void) {
    DObj *dobj;

    dobj = omGObjAddDObj();
    ohCreateDefaultMatricesRad(dobj);
    return dobj;
}

DObj *ohAddDObjSiblingRad(void) {
    DObj *d;

    d = omDObjAddSibling();
    ohCreateDefaultMatricesRad(d);
    return d;
}

DObj *ohAddDObjChildRad(void) {
    DObj *d;

    d = omDObjAddChild();
    ohCreateDefaultMatricesRad(d);
    return d;
}

#ifdef MIPS_TO_C

void func_8000BAEC(s32 arg0, s32 *arg1, void **arg2) {
    ? sp80;
    ? sp40;
    s32 sp3C;
    void *sp38;
    ? *var_v0;
    s32 *var_s0;
    s32 var_v0_2;
    void **var_s1;
    void *var_v0_3;

    var_s0 = arg1;
    var_s1 = arg2;
    sp38 = NULL;
    sp3C = 0;
    var_v0 = &sp40;
    do {
        var_v0 += 0x10;
        var_v0->unk-C = 0;
        var_v0->unk-8 = 0;
        var_v0->unk-4 = 0;
        var_v0->unk-10 = 0;
    } while (var_v0 != &sp80);
    var_v0_2 = *var_s0;
    if (var_v0_2 != 0x12) {
        do {
            if (var_v0_2 != 0) {
                var_v0_3 = ohAddDObjChild((&sp38)[var_v0_2].unk-4, var_s0->unk4);
                (&sp38)[var_s0->unk0] = var_v0_3;
            } else {
                var_v0_3 = ohAddDObj(arg0, var_s0->unk4);
                sp38 = var_v0_3;
            }
            var_v0_3->unk1C = var_s0->unk8;
            var_v0_3->unk20 = var_s0->unkC;
            var_v0_3->unk24 = var_s0->unk10;
            if (var_s1 != NULL) {
                *var_s1 = var_v0_3;
                var_s1 += 4;
            }
            var_v0_2 = var_s0->unk14;
            var_s0 += 0x14;
        } while (var_v0_2 != 0x12);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BAEC.s")
#endif

void func_8000BBE0(GObj *g) {
    if (g == NULL) {
        g = omCurrentObj;
    }
    while (g->data != NULL) {
        func_80009DF4(g->data);
    }
}

void ohDeleteAllObjects(void) {
    GObj* curr;
    GObj* next;
    s32 i;

    for (i = 0; i < 32; i++) {
        curr = omGObjListHead[i];
        while (curr != NULL) {
            next = curr->next;
            omGDeleteObj(curr);
            curr = next;
        }
    }
}

GObj *ohCreateModel(s32 objId, void (*updateCB)(GObj*), s32 objLink, s32 objPriority,
                    void (*renderCB)(GObj*), u8 dlLink, s32 dlPriority, s32 cameraTag, void* dobjBP, s32 setMatrices,
                    u8 procKind, void (*procFunc)(GObj*), s32 procPriority) {
    GObj* gobj;
    DObj* dobj;

    gobj = HS64_omMakeGObj(objId, updateCB, objLink, objPriority);
    if (gobj == NULL) {
        return NULL;
    }

    omLinkGObjDL(gobj, renderCB, dlLink, dlPriority, cameraTag);

    dobj = omGObjAddDObj(gobj, dobjBP);
    if (setMatrices) {
        ohCreateDefaultMatricesDeg(dobj);
    }
    if (procFunc != NULL) {
        omCreateProcess(gobj, procFunc, procKind, procPriority);
    }
    return gobj;
}

GObj* ohCreateCamera(s32 objId, void (*updateCB)(GObj*), s32 objLink, s32 objPriority,
                     void (*renderCB)(GObj*), s32 dlPriority, s32 dlLinkBitMask, s32 cameraTag, s32 defaultMatrices,
                     u8 procKind, void (*procFunc)(GObj*), s32 procPriority, s32 defaultFlags) {
    GObj *g;
    Camera *cam;

    g = HS64_omMakeGObj(objId, updateCB, objLink, objPriority);
    if (g == NULL) {
        return NULL;
    }
    omGLinkObjDLCamera(g, renderCB, dlPriority, dlLinkBitMask, cameraTag);
    cam = omGObjSetCamera(g);
    if (defaultMatrices) {
        ohCreateDefaultCameraMatrices(cam);
    }
    if (procFunc != NULL) {
        omCreateProcess(g, procFunc, procKind, procPriority);
    }
    if (defaultFlags) {
        cam->flags = CAMERA_FLAG_1 | CAMERA_FLAG_2 | CAMERA_FLAG_4;
        cam->bgcolor = 0x000000FF;
    }
    return g;
}

Camera *ohCreateCameraWrapper(s32 link, s32 pri, s32 dlPriority, s32 flags, s32 bgColor) {
    GObj *g;
    Camera *cam;

    g = ohCreateCamera(-1, ohUpdateStub, link, pri, &func_8001806C, dlPriority, 0, 0, 0, 0, 0, 0, 0);
    if (g == NULL) {
        return NULL;
    }
    cam = g->data;
    cam->flags = flags;
    cam->bgcolor = bgColor;
    return g;
}
