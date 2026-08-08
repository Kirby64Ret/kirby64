#include "common.h"
#include "object_manager.h"
#include "anim.h"
#include "fault.h"
#include "GObj.h"

// ovl0_4 (gtl??)
void func_8001806C(struct GObj *arg0);

struct DObjTraDesc {
    /* 0x00 */ s32 id;
    /* 0x04 */ void *dl;
    /* 0x08 */ Vector translate;
};

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

GObj *func_8000B4D4(s32 link, GObj* (*cb)(GObj*, u32), void* param, s32 single) {
    GObj* curr;
    GObj* next;
    GObj* ret = NULL;

    curr = omGObjListHead[link];
    while (curr != NULL) {
        GObj* retVal;

        next = curr->next;
        retVal = cb(curr, (u32)param);

        if (retVal != NULL) {
            ret = retVal;
            if (single == TRUE) {
                return ret;
            }
        }
        curr = next;
    }

    return ret;
}

GObj *func_8000B57C(GObj *(*cb)(GObj *, u32), u32 param, s32 single) {
    GObj *curr;
    GObj *next;
    s32 link;
    GObj *ret = NULL;

    for (link = 0; link < ARRAY_COUNT(omGObjListHead); link++) {
        curr = omGObjListHead[link];

        while (curr != NULL) {
            GObj *retVal;

            next = curr->next;
            retVal = cb(curr, param);

            if (retVal != NULL) {
                ret = retVal;
                if (single == TRUE) {
                    return ret;
                }
            }
            curr = next;
        }
    }
    return ret;
}

GObj *ohCheckId(GObj *g, u32 id) {
    return (id == g->objId) ? g : NULL;
}

void func_8000B65C(u32 link, u32 id) {
    func_8000B4D4(link, ohCheckId, (void *)id, 1);
}

GObj *ohFindById(u32 id) {
    return func_8000B57C(ohCheckId, id, 1);
}

void ohUpdateStub(Unused GObj *g) {
    // stubbed out; the intended code is presented below.
    // cmdProcessCommands(NULL);
}

void ohSleep(s32 frames) {
    if (omCurrentProc->payload.thread->objStack->stack[7] != STACK_CANARY) {
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

void func_8000B7F0(GObj *gobj, void (*entry)(struct GObj *)) {
    GObjProcess *proc;

    if (gobj == NULL) {
        gobj = omCurrentObj;
    }
    proc = gobj->procListHead;
    while (proc != NULL) {
        if (entry == proc->entryPoint) {
            proc->paused = 1;
        }
        proc = proc->next;
    }
}

void func_8000B830(GObj *gobj, void (*entry)(struct GObj *)) {
    GObjProcess *proc;

    if (gobj == NULL) {
        gobj = omCurrentObj;
    }
    proc = gobj->procListHead;
    while (proc != NULL) {
        if (entry == proc->entryPoint) {
            proc->paused = 0;
        }
        proc = proc->next;
    }
}

void func_8000B870(GObj *gobj) {
    GObjProcess *proc;
    GObjProcess *next;

    if (gobj == NULL) {
        gobj = omCurrentObj;
    }
    proc = gobj->procListHead;
    while (proc != NULL) {
        next = proc->next;

        omEndProcess(proc);

        proc = next;
    }
}

void ohCreateDefaultMatricesDeg(DObj *d) {
    omDObjAppendMtx(d, 0x12, 0);
    omDObjAppendMtx(d, 0x15, 0);
    omDObjAppendMtx(d, 0x20, 0);
}

void ohCreateDefaultMatricesRad(DObj *d) {
    omDObjAppendMtx(d, 0x12, 0);
    omDObjAppendMtx(d, 0x1A, 0);
    omDObjAppendMtx(d, 0x20, 0);
}

void ohCreateDefaultCameraMatrices(Camera *cam) {
    omCameraAddMtx(cam, MTX_TYPE_PERSP_FAST, 0);
    omCameraAddMtx(cam, MTX_TYPE_LOOKAT, 0);
}

void ohDobjTreeRemoveAllMObjs(GObj *g) {
    DObj *d = g->data.dobj;

    while (d != NULL) {
        func_80009B5C(d);
        d = animModelTreeNextNode(d);
    }
}

DObj *ohAddDObj(GObj *gobj, u8 *arg1) {
    DObj *new_dobj;

    new_dobj = omGObjAddDObj(gobj, arg1);
    ohCreateDefaultMatricesDeg(new_dobj);
    return new_dobj;
}

DObj *ohAddDObjSibling(DObj *dobj, DObj *sibling) {
    DObj *dobj_ret;

    dobj_ret = omDObjAddSibling(dobj, sibling);
    ohCreateDefaultMatricesDeg(dobj_ret);
    return dobj_ret;
}

DObj *ohAddDObjChild(DObj *dobj, void *arg1) {
    DObj *dobj_ret;

    dobj_ret = omDObjAddChild(dobj, arg1);
    ohCreateDefaultMatricesDeg(dobj_ret);
    return dobj_ret;
}

DObj *ohAddDObjRad(struct GObj *gobj, u8 *arg1) {
    DObj *new_dobj;

    new_dobj = omGObjAddDObj(gobj, arg1);
    ohCreateDefaultMatricesRad(new_dobj);
    return new_dobj;
}

DObj *ohAddDObjSiblingRad(DObj *dobj, DObj *sibling) {
    DObj *d;

    d = omDObjAddSibling(dobj, sibling);
    ohCreateDefaultMatricesRad(d);
    return d;
}

DObj *ohAddDObjChildRad(DObj *dobj, void *arg1) {
    DObj *d;

    d = omDObjAddChild(dobj, arg1);
    ohCreateDefaultMatricesRad(d);
    return d;
}

void func_8000BAEC(GObj *gobj, struct DObjTraDesc *desc, DObj **dobjs) {
    s32 i;
    DObj *dobj;
    DObj *array_dobjs[18];

    for (i = 0; i < ARRAY_COUNT(array_dobjs); i++) {
        array_dobjs[i] = NULL;
    }

    while (desc->id != 18) {
        if (desc->id != 0) {
            dobj = array_dobjs[desc->id] = ohAddDObjChild(array_dobjs[desc->id - 1], desc->dl);
        } else {
            dobj = array_dobjs[0] = ohAddDObj(gobj, desc->dl);
        }

        dobj->pos.v = desc->translate;

        if (dobjs != NULL) {
            *dobjs++ = dobj;
        }
        desc++;
    }
}

void func_8000BBE0(GObj *g) {
    if (g == NULL) {
        g = omCurrentObj;
    }
    while (g->data.ptr != NULL) {
        func_80009DF4(g->data.ptr);
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

GObj *ohCreateCameraWrapper(s32 link, s32 pri, s32 dlPriority, s32 flags, s32 bgColor) {
    GObj *g;
    Camera *cam;

    g = ohCreateCamera(-1, ohUpdateStub, link, pri, &func_8001806C, dlPriority, 0, 0, 0, 0, 0, 0, 0);
    if (g == NULL) {
        return NULL;
    }
    cam = g->data.cam;
    cam->flags = flags;
    cam->bgcolor = bgColor;
    return g;
}
