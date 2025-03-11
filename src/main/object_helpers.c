#include "common.h"
#include "object_manager.h"
#include "fault.h"
#include "GObj.h"

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

void func_8000B6B4(GObj *g) {
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

void func_8000B8C0(DObj *d) {
    func_80009628(d, 0x12, 0);
    func_80009628(d, 0x15, 0);
    func_80009628(d, 0x20, 0);
}

void func_8000B908(DObj *d) {
    func_80009628(d, 0x12, 0);
    func_80009628(d, 0x1A, 0);
    func_80009628(d, 0x20, 0);
}

void func_8000B950(DObj *d) {
    func_80009658(d, 3, 0);
    func_80009658(d, 6, 0);
}

void func_8000B988(GObj *g) {
    DObj *d = (DObj *)g->data;

    while (d != NULL) {
        func_80009B5C(d);
        d = func_8000BE90(d);
    }
}

#ifdef MIPS_TO_C

s32 func_8000B9CC(void) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = func_80009C38();
    sp1C = temp_v0;
    func_8000B8C0(temp_v0);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B9CC.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000B9FC(void) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = func_80009CE8();
    sp1C = temp_v0;
    func_8000B8C0(temp_v0);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000B9FC.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000BA2C(void) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = func_80009D5C();
    sp1C = temp_v0;
    func_8000B8C0(temp_v0);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BA2C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000BA5C(void) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = func_80009C38();
    sp1C = temp_v0;
    func_8000B908(temp_v0);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BA5C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000BA8C(void) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = func_80009CE8();
    sp1C = temp_v0;
    func_8000B908(temp_v0);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BA8C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000BABC(void) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = func_80009D5C();
    sp1C = temp_v0;
    func_8000B908(temp_v0);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BABC.s")
#endif

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
                var_v0_3 = func_8000BA2C((&sp38)[var_v0_2].unk-4, var_s0->unk4);
                (&sp38)[var_s0->unk0] = var_v0_3;
            } else {
                var_v0_3 = func_8000B9CC(arg0, var_s0->unk4);
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

#ifdef MIPS_TO_C

void func_8000BBE0(GObj *arg0) {
    GObj *var_s1;

    var_s1 = arg0;
    if (arg0 == NULL) {
        var_s1 = omCurrentObj;
    }
    if (var_s1->data != NULL) {
        do {
            func_80009DF4(var_s1->data);
        } while (var_s1->data != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BBE0.s")
#endif

void func_8000BC34(void) {
    GObj* curr;
    GObj* next;
    s32 i;

    for (i = 0; i < 32; i++) {
        curr = omGObjListHead[i];
        while (curr != NULL) {
            next = curr->next;
            func_8000A29C(curr);
            curr = next;
        }
    }
}

#ifdef MIPS_TO_C

GObj *func_8000BCA4(s32 arg0, void (*arg1)(), s32 arg2, u32 arg3, s32 arg4, u8 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, u8 argA, s32 argB, s32 argC) {
    GObj *temp_v0;
    s32 temp_a0;

    temp_v0 = HS64_omMakeGObj(arg0, arg1, arg2 & 0xFF, arg3);
    if (temp_v0 == NULL) {
        return NULL;
    }
    func_8000A5FC(temp_v0, arg4, arg5, arg6, arg7);
    temp_a0 = func_80009C38(temp_v0, arg8);
    if (arg9 != 0) {
        func_8000B8C0(temp_a0);
    }
    if (argB != 0) {
        func_80008A18(temp_v0, argB, argA, argC);
    }
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BCA4.s")
#endif

#ifdef MIPS_TO_C

GObj *func_8000BD3C(s32 arg0, void (*arg1)(), s32 arg2, u32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, u8 arg9, s32 argA, s32 argB, s32 argC) {
    struct Camera *sp28;
    GObj *temp_v0;
    struct Camera *temp_v0_2;

    temp_v0 = HS64_omMakeGObj(arg0, arg1, arg2 & 0xFF, arg3);
    if (temp_v0 == NULL) {
        return NULL;
    }
    func_8000A764(temp_v0, arg4, arg5, arg6, arg7);
    temp_v0_2 = func_80009F7C(temp_v0);
    sp28 = temp_v0_2;
    if (arg8 != 0) {
        func_8000B950(temp_v0_2);
    }
    if (argA != 0) {
        func_80008A18(temp_v0, argA, arg9, argB);
    }
    if (argC != 0) {
        sp28->unk80 = 7;
        sp28->unk84 = 0xFF;
    }
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BD3C.s")
#endif

#ifdef MIPS_TO_C

void *func_8000BDF0(s32 arg0, ? arg1, s32 arg2, s32 arg3, s32 arg4) {
    void *temp_v0;
    void *temp_v1;

    temp_v0 = func_8000BD3C(-1, &func_8000B6B4, arg0, arg1, &func_8001806C, arg2, 0, 0, 0, 0, 0, 0, 0);
    if (temp_v0 == NULL) {
        return NULL;
    }
    temp_v1 = temp_v0->data;
    temp_v1->unk80 = arg3;
    temp_v1->unk84 = arg4;
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/object_helpers/func_8000BDF0.s")
#endif
