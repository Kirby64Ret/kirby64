#include "common.h"
#include "ovl1_3.h"
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "DObj.h"
#include "ovl1_7.h"
#include "unk_structs/D_800DE350.h"
#include "main/object_helpers.h"
#include "main/lbvector.h"
#include "main/lbmatrix.h"
#include "buffers.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800D79D8.h"
#include "main/anim.h"
#include "Player.h"
#include "sprite.h"

// wherever ovl0_3 or code_CA90 is

extern u32 gNewEntityStackSize;
extern s32 gtlDrawnFrameCounter;

extern GObj *D_800D799C;

// in this file
s32 func_800B3234(f32 arg0, f32 arg1, f32 arg2);
s32 func_800B1E08(u32 bit, GObj *gobj, s32 track);

void func_800AD1A0(GObj *gobj);
void animSetModelAnimation(DObj *dobj, AnimCmd *animList, f32 skipFrames);
void animSetTextureAnimation(MObj *mobj, AnimCmd *animList, f32 skipFrames);
void func_8000BBE0(GObj *g);
void func_800BB468(u32 arg0, s32 arg1);
GObj *func_800A19EC(s32 arg0, s32 arg1);
extern s32 D_800D6A38[];
void func_8000F448(DObj *dobj);
void func_8000F980(GObj *obj, UnkE4E4Arg *arg1, DObj **arg2, u8 arg3, u8 arg4, u8 arg5);
void func_8000FB10(GObj *gobj, UnkE4E4Arg *arg1, TextureScroll ***arg2, DObj **arg3, u8 arg4, u8 arg5, u8 arg6);

/* Hoisted out of function bodies. asinf and atan2f matter more than the
 * others: both return f32, and a block-scope declaration that goes missing
 * leaves the call implicitly int. That exact pair, deleted rather than
 * hoisted in ovl9_5.c, moved 3214 lines of that object. */
f32 func_8000EC98(DObj *, s32, f32, s32, s32, f32, f32, f32, f32);
f32 asinf(f32);
f32 atan2f(f32, f32);

void func_800AECC0(f32 arg0) {
    if (arg0 != D_800E09D0[omCurrentObj->objId]) {
        D_800E09D0[omCurrentObj->objId] = arg0;
        animSetModelAnimationSpeed(omCurrentObj, D_800E09D0[omCurrentObj->objId]);
    }
}

void func_800AED20(f32 arg0) {
    if (arg0 != D_800E0B90[omCurrentObj->objId]) {
        D_800E0B90[omCurrentObj->objId] = arg0;
        animSetTextureAnimationSpeed(omCurrentObj, D_800E0B90[omCurrentObj->objId]);
    }
}

void func_800AED80(f32 arg0, s32 arg1) {
    if (arg0 != D_800E09D0[arg1]) {
        GObj *tmp = D_800DE350[arg1];

        D_800E09D0[arg1] = arg0;
        animSetModelAnimationSpeed(tmp, arg0);
    }
}

void func_800AEDD0(f32 arg0, s32 arg1) {
    if (arg0 != D_800E0B90[arg1]) {
        GObj *tmp = D_800DE350[arg1];

        D_800E0B90[arg1] = arg0;
        animSetTextureAnimationSpeed(tmp, arg0);
    }
}

void func_800AEE20(GObj *arg0, f32 arg1) {
    D_800DF310[omCurrentObj->objId] = NULL;
    D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
    animSetModelTreeAnimation(omCurrentObj, arg0, arg1);
    if (arg1 != 0.0f) {
        animUpdateModelTreeAnimation(omCurrentObj);
    }
}

void func_800AEEB4(GObj *arg0, f32 arg1) {
    animSetModelTreeTextureAnimation(omCurrentObj, arg0, arg1);
    if (arg1 != 0.0f) {
        animUpdateModelTreeAnimation(omCurrentObj);
    }
}

void func_800AEF0C(GObj *arg0, f32 arg1, GObj *arg2) {
    D_800DF310[arg2->objId] = NULL;
    D_800DD8D0[arg2->objId] &= 0x3FFFFFFF;
    animSetModelTreeAnimation(arg2, arg0, arg1);
    if (arg1 != 0.0f) {
        animUpdateModelTreeAnimation(arg2);
    }
}

void func_800AEFA4(GObj *arg0, f32 arg1, GObj *arg2) {
    animSetModelTreeTextureAnimation(arg2, arg0, arg1);
    if (arg1 != 0.0f) {
        animUpdateModelTreeAnimation(arg2);
    }
}

void func_800AEFFC(u16 arg0) {
    while (1) {
        if (D_800DD8D0[omCurrentObj->objId] & 0xC0000000) {
            arg0--;
            D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
            if (arg0 == 0) {
                break;
            }
        }
        ohSleep(1);
    }
}

void func_800AF09C(u16 arg0) {
    while (1) {
        if (func_800AF0F4() != 0 || --arg0 != 0) {
            ohSleep(1);
            continue;
        }
        break;
    }
}

s32 func_800AF0F4(void) {
    DObj *node;
    MObj *mobj;
    s32 flag;

    node = omCurrentObj->data.dobj;
    if (node != NULL) {
loop:
        if (node->mobjList != NULL) {
            mobj = node->mobjList;
        } else {
            node = animModelTreeNextNode(node);
            if (node != NULL) {
                goto loop;
            }
        }
    }
    if ((mobj->timeRemaining == -3.4028235e38f) || (mobj->timeRemaining == -1.1342745e38f)) {
        return 0;
    }
    if (mobj->timeRemaining == -1.7014117e38f) {
        D_800DD8D0[omCurrentObj->objId] |= 0x20000000;
    } else if (mobj->timeElapsed < D_800E0B90[omCurrentObj->objId]) {
        flag = D_800DD8D0[omCurrentObj->objId];
        if (flag & 0x20000000) {
            D_800DD8D0[omCurrentObj->objId] = flag & 0xDFFFFFFF;
        } else {
            return 0;
        }
    }
    return 1;
}

u32 func_800AF230(void) {
    if ((((u32)D_800DD8D0[omCurrentObj->objId]) >> 0x1E) != 0) {
        D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
        return 1;
    }
    return 0;
}

void func_800AF27C(void) {
    if ((((u32) D_800DD8D0[omCurrentObj->objId]) >> 0x1E) == 0) {
        do {
            ohSleep(1);
        } while (!(D_800DD8D0[omCurrentObj->objId] & 0xC0000000));
    }
    D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
}

void func_800AF314(void) {
    DObj *tmp = omCurrentObj->data.dobj;

    while (tmp != 0) {
        omDObjResetAnimation(tmp);
        tmp = animModelTreeNextNode(tmp);
    }
    D_800DF310[omCurrentObj->objId] = 0;
    D_800DD8D0[omCurrentObj->objId] = D_800DD8D0[omCurrentObj->objId] & 0x3FFFFFFF;
}

void func_800AF3A0(void) {
    DObj *tmp = omCurrentObj->data.dobj;
    MObj *mobj;

    while (tmp != NULL) {
        mobj = tmp->mobjList;
        while (mobj != NULL) {
            func_80009918(mobj);
            mobj = mobj->next;
        }
        tmp = animModelTreeNextNode(tmp);
    }
}

void func_800AF408(void) {
    DObj *tmp = omCurrentObj->data.dobj;
    MObj *mobj;

    while (tmp != NULL) {
        omDObjResetAnimation(tmp);
        mobj = tmp->mobjList;
        while (mobj != NULL) {
            func_80009918(mobj);
            mobj = mobj->next;
        }
        tmp = animModelTreeNextNode(tmp);
    }
    D_800DF310[omCurrentObj->objId] = NULL;
    D_800DD8D0[omCurrentObj->objId] = D_800DD8D0[omCurrentObj->objId] & 0x3FFFFFFF;
}

void func_800AF4BC(UnkE4E4Arg *arg0, TextureScroll ***arg1, DObj **arg2) {
    s32 sp30[10];
    GObj *cur;
    DObj *dobj;

    cur = omCurrentObj;
    sp30[0] = 0;
    if (cur->kind == 1) {
        sp30[0] = 1;
        func_8000BBE0(NULL);
    }
    if (arg1 == NULL) {
        func_8000F980(cur, arg0, arg2, 0x1C, 0, 0);
        dobj = cur->data.dobj;
        if (dobj->animSpeed != D_800E09D0[omCurrentObj->objId]) {
            animSetModelAnimationSpeed(omCurrentObj, D_800E09D0[omCurrentObj->objId]);
        }
    } else {
        func_8000FB10(cur, arg0, arg1, arg2, 0x1C, 0, 0);
        dobj = cur->data.dobj;
        if (dobj->animSpeed != D_800E09D0[omCurrentObj->objId]) {
            animSetModelAnimationSpeed(omCurrentObj, D_800E09D0[omCurrentObj->objId]);
            animSetTextureAnimationSpeed(omCurrentObj, D_800E0B90[omCurrentObj->objId]);
        }
    }
    if (sp30[0] != 0) {
        func_800AFA88(omCurrentObj);
    }
}

void func_800AF618(void *arg0, TextureScroll ***arg1, DObj **arg2) {
    s32 sp30[10];
    s32 sp2C[1];
    DObj *dobj;
    DObj *node;
    TextureScroll *t;
    TextureScroll **mobjs;

    sp2C[0] = 0;
    sp30[0] = 0;
    if (omCurrentObj->kind == 1) {
        sp2C[0] = 1;
        func_8000BBE0(NULL);
    }
    dobj = omGObjAddDObj(omCurrentObj, arg0);
    *arg2 = dobj;
    func_8000F448(dobj);
    node = omCurrentObj->data.dobj;
    if (arg1 != NULL) {
        sp30[0] = 1;
    }
    while (node != NULL) {
        if (arg1 != NULL) {
#ifdef PORT
            /* The geo blob's texScroll lists are 4-byte u32 slots holding
             * native pointers (func_800A9250's PORT relocator); a
             * TextureScroll ** walk would stride 8 on the LP64 host. Same
             * shape as func_8000FB10's PORT arm in src/main/anim.c. */
            {
                u32 *outer = (u32 *)arg1;
                if (*outer != 0) {
                    u32 *mids = (u32 *)(uintptr_t)*outer;
                    while (*mids != 0 && *mids != 0x99999999U) {
                        omDObjAddMObj(node, (TextureScroll *)(uintptr_t)*mids);
                        mids++;
                    }
                }
                arg1 = (TextureScroll ***)(outer + 1);
            }
#else
            if (*arg1 != NULL) {
                mobjs = *arg1;
                t = *mobjs;
                while (t != NULL) {
                    omDObjAddMObj(node, t);
                    t = mobjs[1];
                    mobjs++;
                }
            }
            arg1++;
#endif
        }
        node = animModelTreeNextNode(node);
    }
    if (sp2C[0] != 0) {
        func_800AFA88(omCurrentObj);
    }
    if (omCurrentObj->data.dobj->animSpeed != D_800E09D0[omCurrentObj->objId]) {
        animSetModelAnimationSpeed(omCurrentObj, D_800E09D0[omCurrentObj->objId]);
        if (sp30[0] != 0) {
            animSetTextureAnimationSpeed(omCurrentObj, D_800E0B90[omCurrentObj->objId]);
        }
    }
}

void func_800AF7A0(u32 df_idx) {
    u32 *tmp;

    if (df_idx == 99999) {
        tmp = gSegment4StartArray[omCurrentObj->objId];
        df_idx = tmp[2];
    }
    omCurrentObj->onDraw = gDrawFuncList[df_idx];
}

s32 func_800AF7EC(GObj *gobj, u8 link, u8 flags, u8 arg3) {
    SPObj *sprite;

    sprite = func_800AC954(omCurrentObj, arg3, func_800A8C40());
    if (sprite == NULL) {
        return 0;
    }
    D_800E02D0[omCurrentObj->objId] = (s32) gobj;
    sprite->renderFlags |= flags;
    omLinkGObjDL(omCurrentObj, &func_800AD1A0, link, 0x80000000, link);
    return 1;
}

void func_800AF890(GObj *gobj, u8 link, u8 flags) {
    func_800AF7EC(gobj, link, flags, 0);
}

void func_800AF8C0(GObj *gobj, u8 link, u8 flags) {
    func_800AF7EC(gobj, link, flags, 1);
}

void func_800AF8F0(GObj *gobj, u8 link, u8 flags) {
    func_800AF7EC(gobj, link, flags, 4);
}

void func_800AF920(s32 arg0) {
#ifdef PORT
    /* UnkStruct800B158C is a raw-offset ILP32 image of the N64 SPObj; under
       the LP64 SPObj (8-byte `next` at 0) its unk13 lands inside unkC instead
       of on renderFlags. Go through the real SPObj (sprite.h -> SPObj.h). */
    SPObj *tmp = omCurrentObj->unk4C;

    if (arg0 < 0) {
        tmp->renderFlags = tmp->renderFlags ^ 8;
        return;
    }
    if (arg0 != 0) {
        tmp->renderFlags = tmp->renderFlags & 0xFFF7;
        return;
    }
    tmp->renderFlags = tmp->renderFlags | 8;
#else
    UnkStruct800B158C *tmp = omCurrentObj->unk4C;

    if (arg0 < 0) {
        tmp->unk13 = tmp->unk13 ^ 8;
        return;
    }
    if (arg0 != 0) {
        tmp->unk13 = tmp->unk13 & 0xFFF7;
        return;
    }
    tmp->unk13 = tmp->unk13 | 8;
#endif
}

void func_800AF96C(s32 arg0) {
#ifdef PORT
    /* Same shear as func_800AF920: unk11 at raw 0x11 lands inside unkC. */
    SPObj *tmp = omCurrentObj->unk4C;

    tmp->unk11 = arg0;
#else
    UnkStruct800B158C *tmp = omCurrentObj->unk4C;

    tmp->unk11 = arg0;
#endif
}

void func_800AF980(s32 pri) {
    omCurrentObj->renderPriority = gEntityRenderPriorityArray[omCurrentObj->objId] = pri;
}

void func_800AF9B8(u16 track, u8 link) {
    omLinkGObjDL(omCurrentObj, gDrawFuncList[track], link, gEntityRenderPriorityArray[omCurrentObj->objId], link);
}

void curObjSleepForever(void) {
    while (1) {
        ohSleep(0x7FFFFFFF);
    }
}

void func_800AFA54(GObj *gobj) {
    func_8000FD78(omCurrentObj, gobj);
    func_800AFA88(omCurrentObj);
}

void func_800AFA88(GObj *gobj) {
    gobj->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    gobj->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    gobj->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    gobj->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    gobj->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    gobj->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    gobj->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    gobj->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    gobj->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
}

void func_800AFBB4(s32 arg0, GObj *gobj) {
    if (arg0 == 0) {
        gobj->flags |= 1;
    } else {
        gobj->flags &= ~1;
    }
    gobj->lastDrawFrame = gtlDrawnFrameCounter - 1;
}

void func_800AFBEC(u32 player, u32 music, s32 sleep) {
    play_music(player, music);
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

// unused...
void play_sound_and_wait(u32 sound, s32 sleep) {
    play_sound(sound);
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFC54(s32 arg0, s32 sleep) {
    func_800FB914(arg0);
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFC88(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_800E2090[omCurrentObj->objId] = x;
    }
    if (y != 65535.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_800E2250[omCurrentObj->objId] = y;
    }
    if (z != 65535.0f) {
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_800E2410[omCurrentObj->objId] = z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFDA0(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesAngleXArray[omCurrentObj->objId] = D_800E4A90[omCurrentObj->objId] = x;
    }
    if (y != 65535.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E4C50[omCurrentObj->objId] = y;
    }
    if (z != 65535.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] = D_800E4E10[omCurrentObj->objId] = z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFEB8(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesScaleXArray[omCurrentObj->objId] = D_800E4FD0[omCurrentObj->objId] = x;
    }
    if (y != 65535.0f) {
        gEntitiesScaleYArray[omCurrentObj->objId] = D_800E5190[omCurrentObj->objId] = y;
    }
    if (z != 65535.0f) {
        gEntitiesScaleZArray[omCurrentObj->objId] = D_800E5350[omCurrentObj->objId] = z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFFD0(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_800E2090[omCurrentObj->objId] += x;
    }
    if (y != 65535.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_800E2250[omCurrentObj->objId] += y;
    }
    if (z != 65535.0f) {
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_800E2410[omCurrentObj->objId] += z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B0100(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesAngleXArray[omCurrentObj->objId] += x;
    }
    if (y != 65535.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += y;
    }
    if (z != 65535.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] += z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B01DC(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesScaleXArray[omCurrentObj->objId] = D_800E4FD0[omCurrentObj->objId] += x;
    }
    if (y != 65535.0f) {
        gEntitiesScaleYArray[omCurrentObj->objId] = D_800E5190[omCurrentObj->objId] += y;
    }
    if (z != 65535.0f) {
        gEntitiesScaleZArray[omCurrentObj->objId] = D_800E5350[omCurrentObj->objId] += z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B030C(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, s32 sleep) {
    if (arg0 != 65535.0f) {
        D_800E2090[omCurrentObj->objId] = arg0;
    }
    if (arg3 != 65535.0f) {
        D_800E2250[omCurrentObj->objId] = arg3;
    }
    if (arg6 != 65535.0f) {
        D_800E2410[omCurrentObj->objId] = arg6;
    }
    if (arg1 != 65535.0f) {
        D_800E4A90[omCurrentObj->objId] = arg1;
    }
    if (arg4 != 65535.0f) {
        D_800E4C50[omCurrentObj->objId] = arg4;
    }
    if (arg7 != 65535.0f) {
        D_800E4E10[omCurrentObj->objId] = arg7;
    }
    if (arg2 != 65535.0f) {
        D_800E4FD0[omCurrentObj->objId] = arg2;
    }
    if (arg5 != 65535.0f) {
        D_800E5190[omCurrentObj->objId] = arg5;
    }
    if (arg8 != 65535.0f) {
        D_800E5350[omCurrentObj->objId] = arg8;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B04D4(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, s32 sleep) {
    if (arg0 != 65535.0f) {
        D_800E3050[omCurrentObj->objId] = arg0;
    }
    if (arg1 != 65535.0f) {
        D_800E3590[omCurrentObj->objId] = arg1;
    }
    if (arg2 == 65536.0f) {
        D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    } else if (arg2 != 65535.0f) {
        D_800E3AD0[omCurrentObj->objId] = ABS(arg2);
    }
    if (arg3 != 65535.0f) {
        D_800E3210[omCurrentObj->objId] = arg3;
    }
    if (arg4 != 65535.0f) {
        D_800E3750[omCurrentObj->objId] = arg4;
    }
    if (arg5 == 65536.0f) {
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
    } else if (arg5 != 65535.0f) {
        D_800E3C90[omCurrentObj->objId] = ABS(arg5);
    }
    if (arg6 != 65535.0f) {
        D_800E33D0[omCurrentObj->objId] = arg6;
    }
    if (arg7 != 65535.0f) {
        D_800E3910[omCurrentObj->objId] = arg7;
    }
    if (arg8 == 65536.0f) {
        D_800E3E50[omCurrentObj->objId] = 65535.0f;
    } else if (arg8 != 65535.0f) {
        D_800E3E50[omCurrentObj->objId] = ABS(arg8);
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B07B4(u8 arg0, u8 arg1, u8 arg2, s32 sleep) {
    if (((arg0 & 1) | 2 | 4) != 0) {
        if (arg0 & 1) {
            D_800E3050[omCurrentObj->objId] = 0.0f;
        }
        if (arg0 & 2) {
            D_800E3210[omCurrentObj->objId] = 0.0f;
        }
        if (arg0 & 4) {
            D_800E33D0[omCurrentObj->objId] = 0.0f;
        }
    }
    if (((arg1 & 1) | 2 | 4) != 0) {
        if (arg1 & 1) {
            D_800E3590[omCurrentObj->objId] = 0.0f;
        }
        if (arg1 & 2) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
        }
        if (arg1 & 4) {
            D_800E3910[omCurrentObj->objId] = 0.0f;
        }
    }
    if (((arg2 & 1) | 2 | 4) != 0) {
        if (arg2 & 1) {
            D_800E3AD0[omCurrentObj->objId] = 65535.0f;
        }
        if (arg2 & 2) {
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
        }
        if (arg2 & 4) {
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
        }
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B0974(f32 arg0, f32 arg1, f32 arg2, s32 sleep) {
    if (arg0 != 65535.0f) {
        if (D_800E10D0[omCurrentObj->objId] == 1.0f) {
            D_800E3050[omCurrentObj->objId] = arg0;
        } else {
            D_800E3050[omCurrentObj->objId] = -arg0;
        }
    }
    if (arg1 != 65535.0f) {
        if (D_800E10D0[omCurrentObj->objId] == 1.0f) {
            D_800E3590[omCurrentObj->objId] = arg1;
        } else {
            D_800E3590[omCurrentObj->objId] = -arg1;
        }
    }
    if (arg2 == 65536.0f) {
        D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    } else if (arg2 != 65535.0f) {
        D_800E3AD0[omCurrentObj->objId] = arg2;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B0AD4(f32 arg0, f32 arg1, f32 arg2, s32 sleep) {
    if (arg0 != 65535.0f) {
        D_800E64D0[omCurrentObj->objId] = arg0;
    }
    if (arg1 != 65535.0f) {
        D_800E6690[omCurrentObj->objId] = arg1;
    }
    if (arg2 == 65536.0f) {
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    } else if (arg2 != 65535.0f) {
        D_800E6850[omCurrentObj->objId] = arg2;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B0BC4(f32 arg0, f32 arg1, f32 arg2, s32 sleep) {
    if (arg0 != 65535.0f) {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            D_800E64D0[omCurrentObj->objId] = arg0;
        } else {
            D_800E64D0[omCurrentObj->objId] = -arg0;
        }
    }
    if (arg1 != 65535.0f) {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            D_800E6690[omCurrentObj->objId] = arg1;
        } else {
            D_800E6690[omCurrentObj->objId] = -arg1;
        }
    }
    if (arg2 == 65536.0f) {
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    } else if (arg2 != 65535.0f) {
        D_800E6850[omCurrentObj->objId] = arg2;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B0D24(GObj *gobj) {
    func_800B1C7C(gobj);
    if (D_800DEDD0[omCurrentObj->objId] != NULL) {
        if (!(D_800DD8D0[omCurrentObj->objId] & 1) && !(D_800DD8D0[omCurrentObj->objId] & 0x80)) {
            D_800DEDD0[omCurrentObj->objId](gobj);
        }
    }
}

void func_800B0D90(GObj *arg0) {
    if (D_800DD710[omCurrentObj->objId] != -1 && !(D_800DD8D0[omCurrentObj->objId] & 0x80)) {
        if (!(D_800DD8D0[omCurrentObj->objId] & 2) && (arg0->data.dobj != NULL) && (D_800DEF90[omCurrentObj->objId] != NULL)) {
            D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
            animUpdateModelTreeAnimation(arg0);
        }
        if (!(D_800DD8D0[omCurrentObj->objId] & 4)) {
            if (D_800DEF90[omCurrentObj->objId] != NULL) {
                D_800DEF90[omCurrentObj->objId](arg0);
            }
        }
        D_800E56D0[omCurrentObj->objId] = 0.0f;
        D_800E5510[omCurrentObj->objId] = D_800E56D0[omCurrentObj->objId];
        D_800E5DD0[omCurrentObj->objId] = 0.0f;
        D_800E5A50[omCurrentObj->objId] =
        D_800E5C10[omCurrentObj->objId] = D_800E5DD0[omCurrentObj->objId];
        if ((D_800DF150[omCurrentObj->objId] != NULL) && !(D_800DD8D0[omCurrentObj->objId] & 8)) {
            D_800DF150[omCurrentObj->objId](arg0);
        }
    }
}

void func_800B0F28(DObj *arg0, s32 arg1, f32 arg2) {
    f32 sp44;
    GObj *sp3C;
    GObj *gobj2;
    f32 sp38;
    s32 bits;
    s32 bank;
    s32 idx;
    Vector sp20;

    switch (arg1) {
        case 9:
            func_800BB468((u32) arg2, 0);
            return;
        case 12:
            sp44 = arg2;
            if (*(s32 *) &sp44 >= 0) {
                play_sound(*(s32 *) &sp44);
                return;
            }
            return;
        case 13:
            sp38 = arg2;
            bits = *(s32 *) &sp38;
            idx = bits & 0xFFFF;
            bank = bits >> 0x10;
            if ((idx >= 0) && (D_800D6A38[bank] != 0)) {
                gobj2 = func_800A19EC(bank, idx);
                if (gobj2 != NULL) {
                    if (gobj2->unk4C != NULL) {
                        sp3C = gobj2;
                        func_800B2340(&sp20, arg0, 0xFFFF);
                        ((OMMtxFloat3 *) sp3C->unk4C)->v.x = sp20.x;
                        ((OMMtxFloat3 *) sp3C->unk4C)->v.y = sp20.y;
                        ((OMMtxFloat3 *) sp3C->unk4C)->v.z = sp20.z;
                        return;
                    }
                    gobj2->onAnimate = (void (*)(struct DObj *, s32, f32)) arg0;
                    return;
                }
            }
            break;
        case -1:
            D_800DD8D0[omCurrentObj->objId] |= 0x40000000;
            return;
        case -2:
            D_800DD8D0[omCurrentObj->objId] |= 0x80000000;
            return;
        default:
            if (D_800DF310[omCurrentObj->objId] != NULL) {
                D_800DF310[omCurrentObj->objId]((s32) arg0, arg1, arg2);
            }
            break;
    }
}

// dispatch D_800DF310
void func_800B113C(s32 arg0, s32 arg1, f32 arg2) {
    f32 sp24;
    GObj *gobj2;
    s32 idx;
    f32 sp18;

    switch (arg1) {
        case 9:
            func_800BB468((u32) arg2, 0);
            return;
        case 12:
            sp24 = arg2;
            if (*(s32 *) &sp24 >= 0) {
                play_sound(*(s32 *) &sp24);
            }
            if (D_800DF310[omCurrentObj->objId] != NULL) {
                D_800DF310[omCurrentObj->objId](arg0, arg1, arg2);
            }
            return;
        case 13:
            sp18 = arg2;
            idx = *(s32 *) &sp18 & 0xFFFF;
            if (idx >= 0) {
                gobj2 = func_800A19EC(*(s32 *) &sp18 >> 0x10, idx);
                if (gobj2 != NULL) {
                    gobj2->onAnimate = (void (*)(struct DObj *, s32, f32)) arg0;
                }
            }
            if (D_800DF310[omCurrentObj->objId] != NULL) {
                D_800DF310[omCurrentObj->objId](arg0, arg1, arg2);
            }
            return;
        case -1:
            D_800DD8D0[omCurrentObj->objId] |= 0x40000000;
            return;
        case -2:
            D_800DD8D0[omCurrentObj->objId] |= 0x80000000;
            return;
        default:
            if (D_800DF310[omCurrentObj->objId] != NULL) {
                D_800DF310[omCurrentObj->objId](arg0, arg1, arg2);
            }
            break;
    }
}

#ifdef NON_MATCHING
void func_800B1378(s32 arg0, s32 arg1, f32 arg2) {
    void (*cb)(s32, s32, f32);

    if (arg1 != -2) {
        if (arg1 == -1) {
            D_800DD8D0[omCurrentObj->objId] |= 0x40000000;
        } else {
            cb = D_800DF310[omCurrentObj->objId];
            if (cb != NULL) {
                cb(arg0, arg1, arg2);
            }
        }
    } else {
        D_800DD8D0[omCurrentObj->objId] |= 0x80000000;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B1378.s")
#endif
void procMainStub(GObj *arg0) {

}

void procMainMove(GObj *gobj) {
    if (!(D_800DD8D0[omCurrentObj->objId] & 0x40)) {
        if (gobj->data.dobj != NULL) {
            gobj->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
            gobj->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
            gobj->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
            gobj->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
            gobj->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
            gobj->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
            gobj->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
            gobj->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
            gobj->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
        }
    }
}

/* FACTORY: 18/116 -- MEASURED 2026-08-25, and the first measurement this draft
   has had. Structure, count and every displacement are exact; the whole residue
   is ONE register. The ROM holds `&omCurrentObj` in $a1 and the draft holds it
   in $a2, and the eighteen words are that base and the values that fall one
   slot behind it -- `lw $t6, 0x0($a1)` against `lw $t6, 0x0($a2)` six times
   over, then the $t5/$t6, $t6/$t7, $t0/$t1 pairs that follow from it.

   The direction matters for whoever tries next: the ROM's base is LOWER, so it
   is the DRAFT that reserves one more register at the bottom, not the ROM. The
   usual "temps up a slot" cures push the other way and are wrong here.

   Measured 2026-08-25 and byte-identical at 18/116, so do not retry:
     - splitting `UnkStruct800B158C *gobj_4C = gobj->unk4C;` into a bare
       declaration plus an assignment, which by LEVER 54's corollary should
       have given it a home slot it does not currently get;
     - declaring var_a0 before gobj_4C.
   Measured and much WORSE: `s32 var_a0` instead of `u16`, 35/115 -- so the u16
   is confirmed by measurement rather than assumed, and the count drops by one
   because the widened type deletes an `andi`.
   barrier_sweep.py is not applicable here: the residue is a register name, not
   a schedule, and there is nothing for a barrier to pin.

   This is a one-slot rotation over an exact instruction stream, which is what
   decomp-permuter is good at, and it is now in priority_queue.py's TARGETS. */
#ifdef NON_MATCHING
#ifdef PORT
/* PORT rewrite of the draft below. UnkStruct800B158C spells the N64 SPObj
 * byte offsets with fixed-width fields, so under the LP64 SPObj every access
 * shears: pos/scale (raw 0x20/0x28) land on width/height, xOffset and
 * yOffset; unk5A (raw 0x5A) lands on bytes 2-3 of gfx[0].b.bg.imagePtr
 * (LP64 0x58..0x60) and unkBA (raw 0xBA) lands on gfx[1].b.bg.imageW --
 * which is exactly the boot-scene background corruption (imagePtr collapsing
 * to its low 16 bits in one buffer, imageW=0 in the other). The N64 aliases
 * resolve to, per kind:
 *   pos.x/pos.y      -> xOffset/yOffset          (SPObj header)
 *   scale.x/y/z      -> xScale/yScale/unk30      (SPObj header)
 *   unk5A/unkBA      -> block+0x1A of gfx[0]/gfx[1]:
 *                         kinds 0/1: b.bg imageFlip (the unk5A/unkBA aliases)
 *                         kinds 2/3: t.ts.sprite scaleW (dead store on N64 --
 *                                    func_800AD1A0 recomputes scaleW before
 *                                    submission -- kept byte-faithful anyway)
 *   unk6F/unkCF      -> block+0x2F = t.ts.sprite imageFlags
 *   unk58/unkB8      -> block+0x18 = t.ts.sprite objX
 *   unk60/unkC0      -> block+0x20 = t.ts.sprite objY */
void func_800B158C(GObj *gobj) {
    SPObj *sp = gobj->unk4C;
    u16 var_a0;

    if (sp != NULL) {
        sp->xOffset = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp->yOffset = gEntitiesNextPosYArray[omCurrentObj->objId];
        sp->xScale = gEntitiesScaleXArray[omCurrentObj->objId];
        sp->yScale = gEntitiesScaleYArray[omCurrentObj->objId];
        sp->unk30 = gEntitiesAngleZArray[omCurrentObj->objId];
        var_a0 = 0;
        switch (sp->unk10) {
            case 0:
            case 1:
                if (D_800E10D0[omCurrentObj->objId] != 0.0f) {
                    var_a0 = 1;
                }
                sp->unk5A = sp->unkBA = var_a0; /* gfx[0]/gfx[1] bg imageFlip */
                break;
            case 2:
            case 3:
                if (D_800E10D0[omCurrentObj->objId] != 0.0f) {
                    var_a0 = 1;
                }
                sp->gfx[0].t.ts.sprite.s.scaleW = sp->gfx[1].t.ts.sprite.s.scaleW = var_a0;
                break;
            case 4:
                if (D_800E10D0[omCurrentObj->objId] != 0.0f) {
                    var_a0 = 1;
                }
                if (D_800E1290[omCurrentObj->objId] != 0.0f) {
                    var_a0 |= 0x10;
                }
                sp->gfx[0].t.ts.sprite.s.imageFlags = sp->gfx[1].t.ts.sprite.s.imageFlags = var_a0;
                sp->gfx[0].t.ts.sprite.s.objX = sp->gfx[1].t.ts.sprite.s.objX =
                    gEntitiesAngleXArray[omCurrentObj->objId];
                sp->gfx[0].t.ts.sprite.s.objY = sp->gfx[1].t.ts.sprite.s.objY =
                    gEntitiesAngleYArray[omCurrentObj->objId];
                break;
        }
    }
}
#else
void func_800B158C(GObj *gobj) {
    UnkStruct800B158C *gobj_4C = gobj->unk4C;
    u16 var_a0;

    if (gobj_4C != NULL) {
        gobj_4C->pos.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        gobj_4C->pos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        gobj_4C->scale.x = gEntitiesScaleXArray[omCurrentObj->objId];
        gobj_4C->scale.y = gEntitiesScaleYArray[omCurrentObj->objId];
        gobj_4C->scale.z = gEntitiesAngleZArray[omCurrentObj->objId];
        var_a0 = 0;
        switch (gobj_4C->unk10) {
            case 0:
            case 1:
            case 2:
            case 3:
                if (D_800E10D0[omCurrentObj->objId] != 0.0f) {
                    var_a0 = 1;
                }
                gobj_4C->unk5A = gobj_4C->unkBA = var_a0;
                break;
            case 4:
                if (D_800E10D0[omCurrentObj->objId] != 0.0f) {
                    var_a0 = 1;
                }
                if (D_800E1290[omCurrentObj->objId] != 0.0f) {
                    var_a0 |= 0x10;
                }
                gobj_4C->unk6F = gobj_4C->unkCF = var_a0;
                gobj_4C->unk58 = gobj_4C->unkB8 = gEntitiesAngleXArray[omCurrentObj->objId];
                gobj_4C->unk60 = gobj_4C->unkC0 = gEntitiesAngleYArray[omCurrentObj->objId];
                break;
        }
    }
}
#endif /* PORT */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B158C.s")
#endif
void func_800B175C(GObj *gobj) {
    if (!(D_800DD8D0[omCurrentObj->objId] & 0x40) && (gobj->data.ptr != NULL)) {
        func_8019BBEC_ovl7();
        procMainMove(gobj);
    }
}

void func_800B17B8(GObj *gobj) {
    if (!(D_800DD8D0[omCurrentObj->objId] & 0x40) && (gobj->data.ptr != NULL)) {
        procMainMove(gobj);
        func_801D1CAC_ovl8();
    }
}

void func_800B1814(GObj *gobj) {
    if (!(D_800DD8D0[omCurrentObj->objId] & 0x40) && (gobj->data.ptr != NULL)) {
        procMainMove(gobj);
        func_801D1E98_ovl8();
    }
}

// Null proc main, used by gEntityGObjProcessArray4
void func_800B1870(GObj *arg0) {

}

// used by gEntityGObjProcessArray3
void objSleepForever(GObj *arg0) {
    while (1) {
        ohSleep(0x7FFFFFFF);
    }
}

void func_800B18B4(GObj *arg0) {
    if (D_800E7CE0[omCurrentObj->objId] != 0) {
        if ((s32) D_800E7CE0[omCurrentObj->objId]-- <= 0) {
            D_800E7CE0[omCurrentObj->objId] = 0;
        }
    }
}

void func_800B1900(u16 track) {
    GObj *gobj;

#ifdef PORT
    /* Dozens of callers across the overlays pass `((u16 *) omCurrentObj)[1]`,
     * which on big-endian N64 is the LOW half of GObj.objId -- and tracks are
     * indexed by objId (src/ovl1/ovl1_6.c stores D_800DE350[i] under the id it
     * gives HS64_omMakeGObj). On a little-endian host the same expression
     * reads the HIGH half, which is 0 for every real id, so those calls all
     * arrive as track 0 and dereference an empty slot. Track 0 is never
     * handed out, so a 0 here with a current object that owns its own slot is
     * always that misread; recover the intended id. */
    if (track == 0 && omCurrentObj != NULL &&
        D_800DE350[(u16)omCurrentObj->objId] == omCurrentObj) {
        track = (u16)omCurrentObj->objId;
    }
#endif
    gobj = D_800DE350[track];
    func_800A9D64(track);
    func_800A99E4(track);
    if (gobj == omCurrentObj) {
        initTrack(omCurrentObj->objId);
        if (omCurrentProc->kind == 0) {
            omGDeleteObj(omCurrentObj);
            ohSleep(1);
        } else {
            omGDeleteObj(omCurrentObj);
        }
    } else {
        initTrack(gobj->objId);
        omGDeleteObj(gobj);
    }
}

// unused...
void drop_process_from_list(GObjProcess **proclist, s32 idx) {
    GObjProcess *proc;

    proc = proclist[idx];
    if (proc != 0) {
        omEndProcess(proc);
        proclist[idx] = 0;
    }
}

void func_800B19F4(s32 flags, s32 track) {
    if (!(D_800DD8D0[track] & 0x80)) {
        D_800DD8D0[track] = (D_800DD8D0[track] & ~0xFF) | (flags & 0xFF);
        func_800B1C7C(D_800DE350[track]);
    }
}

void func_800B1A4C(s32 arg0, s32 arg1) {
    int i;

    for (i = 0; i < 0x70; i++) {
        if (D_800DD710[i] != -1) {
            if (i != arg1) {
                if (!(D_800DD8D0[i] & 0x80)) {
                    D_800DD8D0[i] = (D_800DD8D0[i] & ~0xFF) | (arg0 & 0xFF);
                    func_800B1C7C(D_800DE350[i]);
                }
            }
        }
    }
}

void func_800B1B28(s32 arg0) {
    int i;

    for (i = 0; i < 0x70; i++) {
        if (D_800DD710[i] != -1) {
            if (!(D_800DD8D0[i] & 0x80)) {
                D_800DD8D0[i] = (D_800DD8D0[i] & ~0xFF) | (arg0 & 0xFF);
                func_800B1C7C(D_800DE350[i]);
            }
        }
    }
}

void func_800B1BF0(s32 arg0, s32 arg1) {
    if (arg0 == 0x80) {
        D_800DD8D0[arg1] = (D_800DD8D0[arg1] & ~0xFF) + 0x80;
        func_800B1C7C(D_800DE350[arg1]);
    } else {
        D_800DD8D0[arg1] = D_800DD8D0[arg1] & ~0xFF;
        func_800B1C7C(D_800DE350[arg1]);
    }
}

void func_800B1C7C(GObj *gobj) {
    s32 track = gobj->objId;
    s32 *flagp = &D_800DD8D0[track];

    if ((*flagp & 0x80) && !(*flagp & 0x8000)) {
        ohGObjPause(gobj);
        gobj->flags |= 1;
        *flagp |= 0x8000;
    } else if (!(*flagp & 0x80) && (*flagp & 0x8000)) {
        ohGObjResume(gobj);
        gobj->flags &= ~1;
        *flagp ^= 0x8000;
    } else {
        func_800B1E08(0x01,                            NULL, track);
        func_800B1E08(0x02,  gEntityGObjProcessArray[track], track);
        func_800B1E08(0x04,                            NULL, track);
        func_800B1E08(0x08,                            NULL, track);
        func_800B1E08(0x10, gEntityGObjProcessArray3[track], track);
        func_800B1E08(0x20, gEntityGObjProcessArray4[track], track);
        switch (func_800B1E08(0x40, gEntityGObjProcessArray5[track], track)) {
            case 1:
                gobj->flags |= 1;
                break;
            case 2:
                gobj->flags &= ~1;
                break;
        }
    }
}

s32 func_800B1E08(u32 bit, GObj *gobj, s32 track) {
    s32 ret;

    ret = 0;
    if (((D_800DD8D0[track] & bit) != 0) && ((D_800DD8D0[track] & (bit << 8)) == 0)) {
        if (gobj != 0) {
            ohPause(gobj);
        }
        D_800DD8D0[track] |= (bit << 8);
        ret = 1;
    } else if (((D_800DD8D0[track] & bit) == 0) && (D_800DD8D0[track] & (bit << 8))) {
        if (gobj != 0) {
            ohResume(gobj);
        }
        D_800DD8D0[track] ^= (bit << 8);
        ret = 2;
    }
    return ret;
}

void assign_new_process_entry(struct GObjProcess *ts, void (*func)(struct GObj *)) {
    struct GObjThread *gthread;
    s32 id;

    gthread = ts->payload.thread;
    id = gthread->thread.id;
    ts->entryPoint = func;
    osDestroyThread(&gthread->thread);
    osCreateThread(&gthread->thread,
                   id,
                   func,
                   ts->gobj,
                   &gthread->objStack->stack[gNewEntityStackSize / 8],
                   0x33);
    gthread->objStack->stack[7] = STACK_CANARY;
}

void setProcessMain(GObjProcess *proc, void (*cb)(GObj *)) {
    proc->payload.callback = cb;
}

// gets the closest node on the graph
struct DObj *func_800B1F70(struct DObj *node, struct DObj *stopnode) {
    if (node->firstChild != NULL) {
        node = node->firstChild;
    } else if (node->next != NULL) {
        node = node->next;
    } else {
        while (TRUE) {
            if (node->parent == stopnode) {
                node = NULL;
                break;
            }
            if (node->parent->next != NULL) {
                node = node->parent->next;
                break;
            } else {
                node = node->parent;
            }
        }
    }
    return node;
}

#ifdef PORT
/* Subtree anim-set walker (draft above): walks the DObj tree from arg0,
 * handing each node its slot of the anim-script table (N64 stride 4) and of
 * the 0x2C-byte parameter records. On PC the script table is a widened
 * void*[] -- one 8-byte cell per N64 word -- so that stride is 8; the
 * parameter records are scalar structs at native layout, stride unchanged.
 * Pointers arrive as u32 (the N64 signature); lossless under the -no-pie
 * low-memory invariant. */
void func_800B1FD0(GObj *arg0, u32 arg1, f32 arg2, u32 arg3, f32 arg4) {
    DObj *root = omCurrentObj->data.dobj;
    uintptr_t script = arg1;
    uintptr_t params = arg3;
    DObj *node;

    if ((DObj *) arg0 != root) {
        do {
            if (script != 0) {
                script += 8;
            }
            if (params != 0) {
                params += 0x2C;
            }
            root = animModelTreeNextNode(root);
        } while ((DObj *) arg0 != root);
    }
    node = root;
    if (root != NULL) {
        do {
            func_8000EC98(node, script, arg2, params, 0, arg4, 0.0f, 0.0f, 0.0f);
            node = func_800B1F70(node, root);
            if (script != 0) {
                script += 8;
            }
            if (params != 0) {
                params += 0x2C;
            }
        } while (node != NULL);
    }
}
#else
void func_800B1FD0(GObj *arg0, s32 arg1, f32 arg2, s32 arg3, f32 arg4) {
    DObj *node;
    DObj *root;
    s32 params;
    s32 script;
    s32 s3;
    s32 s4;

    root = omCurrentObj->data.dobj;
    s3 = arg1;
    s4 = arg3;
    if ((DObj *) arg0 != root) {
        do {
            if (s3 != 0) {
                s3 += 4;
            }
            if (s4 != 0) {
                s4 += 0x2C;
            }
            root = animModelTreeNextNode(root);
        } while ((DObj *) arg0 != root);
    }
    node = root;
    params = s4;
    script = s3;
    if (root != NULL) {
        do {
            func_8000EC98(node, script, arg2, params, 0, arg4, 0.0f, 0.0f, 0.0f);
            node = func_800B1F70(node, root);
            if (script != 0) {
                script += 4;
            }
            if (params != 0) {
                params += 0x2C;
            }
        } while (node != NULL);
    }
}
#endif

/* FACTORY: 3/71 words DIFFER (measured with tools/decomp/measure_seeds.py).
 * Semantics are solved: arg1 is the geo blob's texScroll section -- a list of
 * lists -- and each model-tree DObj consumes one outer slot, copying that
 * slot's FIRST TextureScroll node into its MObj's texture block and clearing
 * texIndex1. Swept: entry/src declaration order, block-scoping either local,
 * `*list++`, and mutating arg1 in place -- all 3/71. Residue is purely which
 * scratch register holds `entry` ($a0 in the ROM, $v1 from IDO here); the
 * three diffs are that one register name on the load, the branch and the
 * dependent load. Reading fmt1/siz1 through a u8 lvalue (the ROM's lbu, not
 * the header's signed s8 lb) was worth 2 of the original 5. */
/* PORT: same walk, but the texScroll section is blob data with 4-byte slots.
 * func_800A9250's PORT relocator writes native host pointers into those
 * slots (everything the game can see is below 4 GiB, see src/pc/pc_mmio.c),
 * so the two levels of indirection are u32 loads widened through uintptr_t
 * rather than pointer-to-pointer walks, which on LP64 would step by 8. */
void func_800B20E0(GObj *gobj, TextureScroll ***arg1)
{
  DObj *dobj;
  TextureScroll ***list;
  TextureScroll *new_var;
  TextureScroll *src;
  TextureScroll **entry;
  dobj = gobj->data.dobj;
  list = arg1;
  if (dobj != ((void *) 0))
  {
    do
    {
      if (list != ((void *) 0))
      {
        entry = *list;
        list++;
        if (entry != ((void *) 0))
        {
          src = *entry;
          dobj->mobjList->texture.h_8 = src->h_8;
          dobj->mobjList->texture.fmt1 = *((u8 *) (&src->fmt1));
          new_var = src;
          dobj->mobjList->texture.siz1 = *((u8 *) (&new_var->siz1));
          dobj->mobjList->texture.textures = new_var->textures;
          dobj->mobjList->texture.stretch = new_var->stretch;
          dobj->mobjList->texture.sharedOffset = new_var->sharedOffset;
          dobj->mobjList->texture.t0w = new_var->t0w;
          dobj->mobjList->texture.t0h = new_var->t0h;
          dobj->mobjList->texture.halve = new_var->halve;
          src = *entry;
          dobj->mobjList->texture.xFrac0 = new_var->xFrac0;
          dobj->mobjList->texture.yFrac0 = new_var->yFrac0;
          dobj->mobjList->texture.xScale = new_var->xScale;
          dobj->mobjList->texture.yScale = new_var->yScale;
          dobj->mobjList->texture.field_0x2c = new_var->xFrac0;
          dobj->mobjList->texture.field_0x30 = new_var->xScale;
          dobj->mobjList->texIndex1 = 0;
        }
      }
      dobj = animModelTreeNextNode(dobj);
    }
    while (dobj != ((void *) 0));
  }
}

void func_800B21FC(AnimCmd ***arg0, f32 arg1) {
    DObj *dobj;
    AnimCmd **list;
    s32 first;

    dobj = omCurrentObj->data.dobj;
    list = *arg0;
    first = TRUE;
    dobj->gobj->animTimer = arg1;
    while (dobj != NULL) {
        if (*list != NULL) {
            animSetModelAnimation(dobj, *list, arg1);
            dobj->animCBReceiver = first;
            first = FALSE;
        }
        list++;
        dobj = animModelTreeNextNode(dobj);
    }
}

void func_800B2288(AnimCmd ***arg0, f32 arg1) {
    DObj *node;
    MObj *mobj;
    AnimCmd **list;

    node = omCurrentObj->data.dobj;
    while (node != NULL) {
        if (arg0 != NULL) {
            if (*arg0 != NULL) {
                mobj = node->mobjList;
                list = *arg0;
                if (mobj != NULL) {
                    do {
                        if (*list != NULL) {
                            animSetTextureAnimation(mobj, *list, arg1);
                        }
                        mobj = mobj->next;
                        list++;
                    } while (mobj != NULL);
                }
            }
            arg0++;
        }
        node = animModelTreeNextNode(node);
    }
}

void func_800B2340(Vector *vec, struct DObj *node, u32 track) {
    float finalMtx[4][4];
    float tmpMtx[4][4];

    if (track == 0xFFFF) {
        track = omCurrentObj->objId;
    }
    if (node == NULL) {
        node = omCurrentObj->data.dobj;
    }
    guMtxIdentF(&finalMtx);
    do {
        if ((u32)node->parent != 1) {
            if ((node->scale.v.x != 1.0f) || (node->scale.v.y != 1.0f) || (node->scale.v.z != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx, node->scale.v.x, node->scale.v.y, node->scale.v.z);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
            if ((node->angle.v.x != 0.0f) || (node->angle.v.y != 0.0f) || (node->angle.v.z != 0.0f)) {
                HS64_MkRotationMtxF(tmpMtx, node->angle.v.x, node->angle.v.y, node->angle.v.z);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
            if ((node->pos.v.x != 0.0f) || (node->pos.v.y != 0.0f) || (node->pos.v.z != 0.0f)) {
                HS64_MkTranslateMtxF(tmpMtx, node->pos.v.x, node->pos.v.y, node->pos.v.z);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
        } else {
            if ((gEntitiesScaleXArray[track] != 1.0f) || (gEntitiesScaleYArray[track] != 1.0f) || (gEntitiesScaleZArray[track] != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx, gEntitiesScaleXArray[track], gEntitiesScaleYArray[track], gEntitiesScaleZArray[track]);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
            if ((gEntitiesAngleXArray[track] != 0.0f) || (gEntitiesAngleYArray[track] != 0.0f) || (gEntitiesAngleZArray[track] != 0.0f)) {
                HS64_MkRotationMtxF(tmpMtx, gEntitiesAngleXArray[track], gEntitiesAngleYArray[track], gEntitiesAngleZArray[track]);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
            if ((gEntitiesNextPosXArray[track] != 0.0f) || (gEntitiesNextPosYArray[track] != 0.0f) || (gEntitiesNextPosZArray[track] != 0.0f)) {
                HS64_MkTranslateMtxF(tmpMtx, gEntitiesNextPosXArray[track], gEntitiesNextPosYArray[track], gEntitiesNextPosZArray[track]);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
        }
        node = node->parent;
    } while ((u32)node != 1);
    vec->x = finalMtx[3][0];
    vec->y = finalMtx[3][1];
    vec->z = finalMtx[3][2];
}

#ifdef PORT
/* Functional port; the weak stub aborted the world map's travel state the
 * first time the port ever reached it. The asm walks the PARENT chain
 * (lw 0x14 = DObj.parent; the sketch above calls that field `child`, an m2c
 * naming artifact) and the loop processes each node then stops after the one
 * whose parent is the sentinel 1 -- the same shape as the matched
 * func_800B2928 below, with rotation in place of scale. The euler extraction
 * mirrors the matched extractor in src/ovl1/util.c (asinf/atan2f rows). */
void func_800B26D8(Vector *vec, struct DObj *node, u32 track) {
    Mat4 finalMtx;
    Mat4 tmpMtx;

    if (track == 0xFFFF) {
        track = omCurrentObj->objId;
    }
    if (node == NULL) {
        node = omCurrentObj->data.dobj;
    }
    guMtxIdentF(finalMtx);
    do {
        if ((u32)(uintptr_t)node->parent != 1) {
            if ((node->angle.v.x != 0.0f) || (node->angle.v.y != 0.0f) || (node->angle.v.z != 0.0f)) {
                HS64_MkRotationMtxF(tmpMtx, node->angle.v.x, node->angle.v.y, node->angle.v.z);
                guMtxCatF(finalMtx, tmpMtx, finalMtx);
            }
        } else {
            if ((gEntitiesAngleXArray[track] != 0.0f) || (gEntitiesAngleYArray[track] != 0.0f) ||
                (gEntitiesAngleZArray[track] != 0.0f)) {
                HS64_MkRotationMtxF(tmpMtx, gEntitiesAngleXArray[track], gEntitiesAngleYArray[track],
                                    gEntitiesAngleZArray[track]);
                guMtxCatF(finalMtx, tmpMtx, finalMtx);
            }
        }
        node = node->parent;
    } while ((u32)(uintptr_t)node != 1);

    vec->y = asinf(-finalMtx[0][2]);
    if ((vec->y == 1.5707964f) || (vec->y == -1.5707964f)) {
        vec->x = (vec->y == 1.5707964f) ? atan2f(finalMtx[1][0], finalMtx[1][1])
                                        : atan2f(-finalMtx[1][0], finalMtx[1][1]);
        vec->z = 0.0f;
    } else {
        vec->x = atan2f(finalMtx[1][2], finalMtx[2][2]);
        vec->z = atan2f(finalMtx[0][1], finalMtx[0][0]);
    }
    utilWrapRotation(vec);
}
#else
void func_800B26D8(Vector *vec, struct DObj *node, u32 track) {
    Mat4 finalMtx;
    Mat4 tmpMtx;
    f32 y;

    track = track;
    if (track == 0xFFFF) {
        track = omCurrentObj->objId;
    }
    node = node;
    if (node == 0) {
        node = omCurrentObj->data.dobj;
    }
    guMtxIdentF(finalMtx);
    do {
        if ((u32) node->parent != 1) {
            if ((node->angle.v.x != 0.0f) || (node->angle.v.y != 0.0f) || (node->angle.v.z != 0.0f)) {
                HS64_MkRotationMtxF(tmpMtx, node->angle.v.x, node->angle.v.y, node->angle.v.z);
                guMtxCatF(finalMtx, tmpMtx, finalMtx);
            }
        } else {
            if ((gEntitiesAngleXArray[track] != 0.0f) || (gEntitiesAngleYArray[track] != 0.0f) || (gEntitiesAngleZArray[track] != 0.0f)) {
                HS64_MkRotationMtxF(tmpMtx, gEntitiesAngleXArray[track], gEntitiesAngleYArray[track], gEntitiesAngleZArray[track]);
                guMtxCatF(finalMtx, tmpMtx, finalMtx);
            }
        }
        node = node->parent;
    } while ((u32) node != 1);

    y = asinf(-finalMtx[0][2]);
    vec->y = y;
    if ((y == 1.5707964f) || (vec->y == -1.5707964f)) {
        if (vec->y == 1.5707964f) {
            vec->x = atan2f(finalMtx[1][0], finalMtx[1][1]);
        } else {
            vec->x = atan2f(-finalMtx[1][0], finalMtx[1][1]);
        }
        vec->z = 0.0f;
    } else {
        vec->x = atan2f(finalMtx[1][2], finalMtx[2][2]);
        vec->z = atan2f(finalMtx[0][1], finalMtx[0][0]);
    }
    utilWrapRotation(vec);
}
#endif

void func_800B2928(Vector *vec, struct DObj *node, u32 track) {
    Mat4 finalMtx;
    Mat4 tmpMtx;

    track = track;
    if (track == 0xFFFF) {
        track = omCurrentObj->objId;
    }
    node = node;
    if (node == 0) {
        node = omCurrentObj->data.dobj;
    }
    guMtxIdentF(finalMtx);
    do {
        if ((u32) node->parent != 1) {
            if ((node->scale.v.x != 1.0f) || (node->scale.v.y != 1.0f) || (node->scale.v.z != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx, node->scale.v.x, node->scale.v.y, node->scale.v.z);
                guMtxCatF(finalMtx, tmpMtx, finalMtx);
            }
        } else {
            if ((gEntitiesScaleXArray[track] != 1.0f) || (gEntitiesScaleYArray[track] != 1.0f) || (gEntitiesScaleZArray[track] != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx, gEntitiesScaleXArray[track], gEntitiesScaleYArray[track], gEntitiesScaleZArray[track]);
                guMtxCatF(finalMtx, tmpMtx, finalMtx);
            }
        }
        node = node->parent;
    } while ((u32) node != 1);

    vec->x = finalMtx[0][0];
    vec->y = finalMtx[1][1];
    vec->z = finalMtx[2][2];
}

void func_800B2AD4(Vector *vec, struct DObj *node, u32 track) {
    Vector tmp;
    Mat4 finalMtx;
    Mat4 tmpMtx;

    if (track == 0xFFFF) {
        track = omCurrentObj->objId;
    }

    if (node == 0) {
        node = omCurrentObj->data.dobj;
    }
    guMtxIdentF(finalMtx);
    do {
        if ((u32) node->parent != 1) {
            if ((node->scale.v.x != 1.0f) || (node->scale.v.y != 1.0f) || (node->scale.v.z != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx, 1.0f / node->scale.v.x, 1.0f / node->scale.v.y, 1.0f / node->scale.v.z);
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
            if ((node->angle.v.x != 0.0f) || (node->angle.v.y != 0.0f) || (node->angle.v.z != 0.0f)) {
                func_800A465C(tmpMtx, -node->angle.v.x, -node->angle.v.y, -node->angle.v.z);
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
            if ((node->pos.v.x != 0.0f) || (node->pos.v.y != 0.0f) || (node->pos.v.z != 0.0f)) {
                HS64_MkTranslateMtxF(tmpMtx, -node->pos.v.x, -node->pos.v.y, -node->pos.v.z);
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
        } else {
            if ((gEntitiesScaleXArray[track] != 1.0f) || (gEntitiesScaleYArray[track] != 1.0f) || (gEntitiesScaleZArray[track] != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx,
                    1.0f / gEntitiesScaleXArray[track],
                    1.0f / gEntitiesScaleYArray[track],
                    1.0f / gEntitiesScaleZArray[track]
                );
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
            if ((gEntitiesAngleXArray[track] != 0.0f) || (gEntitiesAngleYArray[track] != 0.0f) || (gEntitiesAngleZArray[track] != 0.0f)) {
                func_800A465C(tmpMtx,
                    -gEntitiesAngleXArray[track],
                    -gEntitiesAngleYArray[track],
                    -gEntitiesAngleZArray[track]
                );
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
            if ((gEntitiesNextPosXArray[track] != 0.0f) || (gEntitiesNextPosYArray[track] != 0.0f) || (gEntitiesNextPosZArray[track] != 0.0f)) {
                HS64_MkTranslateMtxF(tmpMtx,
                    -gEntitiesNextPosXArray[track],
                    -gEntitiesNextPosYArray[track],
                    -gEntitiesNextPosZArray[track]
                );
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
        }
        node = node->parent;
    } while ((u32) node != 1);

    tmp.x = vec->x;
    tmp.y = vec->y;
    tmp.z = vec->z;

    vec->x = ((finalMtx[0][0] * tmp.x) + (finalMtx[1][0] * tmp.y) + (finalMtx[2][0] * tmp.z))
             + finalMtx[3][0];
    vec->y = ((finalMtx[0][1] * tmp.x) + (finalMtx[1][1] * tmp.y) + (finalMtx[2][1] * tmp.z))
             + finalMtx[3][1];
    vec->z = ((finalMtx[0][2] * tmp.x) + (finalMtx[1][2] * tmp.y) + (finalMtx[2][2] * tmp.z))
             + finalMtx[3][2];
}

void func_800B2F54(s32 arg0, AnimCmd *anim, f32 arg2) {
    animSetCameraAnimation((Camera *) D_800D79D8[(arg0 - 10) >> 1], anim, arg2);
}

void func_800B2F90(s32 arg0, AnimCmd *anim, f32 arg2) {
    struct UnkStruct800D79D8 *tmp = D_800D79D8[(arg0 - 10) >> 1];

    animSetCameraAnimation((Camera *) tmp, anim, arg2);
loop:
    if (-3.402823466e+38f != tmp->unk74) {
        ohSleep(1);
        goto loop;
    }
}

void func_800B3008(s32 arg0) {
    struct UnkStruct800D79D8 *tmp = D_800D79D8[(arg0 - 10) >> 1];

loop:
    if (-3.402823466e+38f != tmp->unk74) {
        ohSleep(1);
        goto loop;
    }
}

void func_800B3070(s32 arg0, f32 arg1) {
    struct UnkStruct800D79D8 *tmp = D_800D79D8[(arg0 - 10) >> 1];

    tmp->unk78 = arg1;
}

void func_800B3094(s32 arg0) {
    struct UnkStruct800D79D8 *tmp = D_800D79D8[(arg0 - 10) >> 1];

    tmp->unk74 = -3.402823466e+38f;
}

s32 func_800B30BC(f32 arg0, f32 arg1, s32 arg2) {
    struct Normal *tmp = &D_800E6F50[omCurrentObj->objId];

    return (ABSF(tmp->x) < arg0) && (ABSF(tmp->y) < arg1);
}

s32 func_800B3158(void) {
    if (func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]) != 0) {
        return 0;
    }
    return 1;
}

void func_800B31B4(void) {
    s32 pad;
    struct GObj *gobj = D_800DE350[omCurrentObj->objId];

    if (func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]) != 0) {
        gobj->onAnimate = NULL;
        func_8019B7D8_ovl7(gobj);
        func_8019D8A0((u16) omCurrentObj->objId);
    }
}

// updates distance to player, and uses the input vector to set D_800E6F50 x and y
s32 func_800B3234(f32 x, f32 y, f32 z) {
    s32 pad;
    Vector inVec;
    s32 result;
    Vector fromPlayer;

    D_800E6F50[omCurrentObj->objId].z = 0.0f;
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < -10000.0f) {
        D_800E6F50[omCurrentObj->objId].z = 1.0f;
        return 1;
    } else {
        inVec.x = x;
        inVec.y = y;
        inVec.z = z;
        result = func_800A4F48(D_800D799C->data.ptr, &inVec, 1.7f, 2.4f);
        D_800E6F50[omCurrentObj->objId].x = inVec.x;
        D_800E6F50[omCurrentObj->objId].y = inVec.y;
        fromPlayer.x = x - gEntitiesNextPosXArray[PLAYERTRACK];
        fromPlayer.y = y - (gEntitiesNextPosYArray[PLAYERTRACK] + 20.0f);
        fromPlayer.z = z - gEntitiesNextPosZArray[PLAYERTRACK];
        D_800E6F50[omCurrentObj->objId].originOffset = sqrtf((fromPlayer.x * fromPlayer.x) + (fromPlayer.y * fromPlayer.y) + (fromPlayer.z * fromPlayer.z));
        if (result == 0) {
            if (D_800E6F50[omCurrentObj->objId].originOffset > 500.0f) {
                D_800E6F50[omCurrentObj->objId].z = 1.0f;
                return 1;
            }
        }
        return 0;
    }
}

void func_800B33F4(void) {
    D_800E64D0[omCurrentObj->objId] = 0.0f;

    D_800E3050[omCurrentObj->objId] =
    D_800E3210[omCurrentObj->objId] =
    D_800E33D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId];

    D_800E6690[omCurrentObj->objId] = 0.0f;

    D_800E3590[omCurrentObj->objId] =
    D_800E3750[omCurrentObj->objId] =
    D_800E3910[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];

    D_800E6850[omCurrentObj->objId] = 65535.0f;

    D_800E3AD0[omCurrentObj->objId] =
    D_800E3C90[omCurrentObj->objId] =
    D_800E3E50[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
}

void func_800B3520(void) {
    f32 temp_f0;

    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E6690[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = temp_f0;
    D_800E64D0[omCurrentObj->objId] = temp_f0;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E6850[omCurrentObj->objId] =  65535.0f;
    D_800E3C90[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
}
