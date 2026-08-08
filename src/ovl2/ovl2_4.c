#include "common.h"
#include "macros.h"
#include "GObj.h"
#include "DObj.h"
#include "track_arrays.h"
#include "ovl1/util.h"
#include "ovl1/track.h"

extern void *D_801245C0;
extern u32 D_801245C4[][3];
extern u32 D_80124624;
extern u32 D_80124630;
extern const char D_801288E0[];
extern const char D_8012890C[];

void func_800B1900(s32);
void func_800A7F74(s32, s32, u32, f32, f32, f32);
s32 func_800FD9D4(s32);
void func_800A9864(s32, s32, s32);
void func_800AA018(s32);
void func_800AF27C(void);
void func_800B4D40(s32);

void func_800FD330(s32 arg0) {
    if (D_800DD710[D_800E0D50[omCurrentObj->objId]] != -1) {
        D_800E10D0[omCurrentObj->objId] = D_800E10D0[D_800E0D50[omCurrentObj->objId]];
        D_800E1290[omCurrentObj->objId] = D_800E1290[D_800E0D50[omCurrentObj->objId]];
        D_800E1450[omCurrentObj->objId] = D_800E1450[D_800E0D50[omCurrentObj->objId]];
    }
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801245C0);
}

#ifdef NON_MATCHING
void func_800FD418(GObj *arg0) {
    s32 objId = omCurrentObj->objId;
    s32 temp_v0 = D_800EC2E0[objId].as_s32;
    s32 id16 = objId & 0xFFFF;
    u32 *temp_s0;
    s32 v1;

    if (temp_v0 < 0xA) {
        temp_s0 = D_801245C4[temp_v0];
        v1 = temp_s0[0];
        if (v1 != 0) {
            goto skip;
        }
    }
    temp_s0 = D_801245C4[temp_v0];
    func_800B1900(id16);
    v1 = temp_s0[0];
skip:
    if (temp_s0 == &D_80124624) {
        D_800DEF90[omCurrentObj->objId] = func_800B4D40;
    }
    func_800A9864(v1, 0x1869F, 0x10);
    func_800AA018(temp_s0[1]);
    func_800AA018(temp_s0[2]);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_800AF27C();
    func_800B1900((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_4/func_800FD418.s")
#endif

#ifdef NON_MATCHING
u32 func_800FD570(s32 arg0, u32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    s32 temp_v0;
    Vector sp28;

    if (arg0 != 0) {
        utilGetTransformSRT(&sp28, (DObj *) arg0);
    } else {
        sp28.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp28.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        sp28.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    }
    if (D_801245C4[arg1][0] != 0) {
        temp_v0 = func_800FD9D4(0);
        if (temp_v0 == -1) {
            utilPrintf(D_801288E0);
            return 0;
        }
        D_800EC2E0[temp_v0].as_u32 = arg1;
        gEntitiesNextPosXArray[temp_v0] = sp28.x + arg2;
        gEntitiesNextPosYArray[temp_v0] = sp28.y + arg3;
        gEntitiesNextPosZArray[temp_v0] = sp28.z + arg4;
    } else if (D_801245C4[arg1] != &D_80124630) {
        func_800A7F74(3, 2, D_801245C4[arg1][1], sp28.x + arg2, sp28.y + arg3, sp28.z + arg4);
    } else {
        func_800A7F74(0, 2, D_801245C4[arg1][1], sp28.x + arg2, sp28.y + arg3, sp28.z + arg4);
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_4/func_800FD570.s")
#endif

#ifdef NON_MATCHING
s32 func_800FD754(s32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    u32 *temp_v0 = D_801245C4[arg0];

    if (temp_v0[0] != 0) {
        s32 temp_v0_2 = func_800FD9D4(0);
        if (temp_v0_2 == -1) {
            utilPrintf(D_8012890C);
            return 0;
        }
        D_800EC2E0[temp_v0_2].as_s32 = arg0;
        gEntitiesNextPosXArray[temp_v0_2] = arg1;
        gEntitiesNextPosYArray[temp_v0_2] = arg2;
        gEntitiesNextPosZArray[temp_v0_2] = arg3;
        return 1;
    }
    if (temp_v0 != &D_80124630) {
        func_800A7F74(3, 2, temp_v0[1], arg1, arg2, arg3);
    } else {
        func_800A7F74(0, 2, temp_v0[1], arg1, arg2, arg3);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_4/func_800FD754.s")
#endif

extern const char *D_8012893C;

u32 func_800FD874(s32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    s32 temp_v0;
    u32 temp_a1;

    if (D_801245C4[arg0][0] != 0) {
        temp_v0 = func_800FD9D4(0);
        if (temp_v0 == -1) {
            utilPrintf(&D_8012893C);
        } else {
            D_800EC2E0[temp_v0].as_s32 = arg0;
            gEntitiesNextPosXArray[temp_v0] = arg1;
            gEntitiesNextPosYArray[temp_v0] = arg2;
            gEntitiesNextPosZArray[temp_v0] = arg3;
            gEntitiesAngleXArray[temp_v0] = arg4;
            gEntitiesAngleYArray[temp_v0] = arg5;
            gEntitiesAngleZArray[temp_v0] = arg6;
            return 1;
        }
    }
    return 0;
}

s32 func_800FD968(s32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    s32 temp_v0;

    temp_v0 = func_800FD9D4(arg0);
    if (temp_v0 != -1) {
        gEntitiesNextPosXArray[temp_v0] = arg1;
        gEntitiesNextPosYArray[temp_v0] = arg2;
        gEntitiesNextPosZArray[temp_v0] = arg3;
    }
    return temp_v0;
}

extern const char D_8012896C[];

s32 func_800FD9D4(s32 arg0) {
    s32 temp_v0;

    temp_v0 = request_track_general(0x22, 0x3C, 0x4A);
    if (temp_v0 == -1) {
        utilPrintf(&D_8012896C);
    } else {
        gEntityFuncListIDArray[temp_v0] = arg0;
    }

    return temp_v0;
}
