#include <ultra64.h>
#include <macros.h>

#include "omCurrentObj.h"
#include "ovl1/ovl1_6.h"

extern void *D_801245C0;

extern u32 D_801245C4[][3];

void func_800FD330(s32 arg0) {
    if (D_800DD710[D_800E0D50[omCurrentObj->objId]] != -1) {
        D_800E10D0[omCurrentObj->objId] = D_800E10D0[D_800E0D50[omCurrentObj->objId]];
        D_800E1290[omCurrentObj->objId] = D_800E1290[D_800E0D50[omCurrentObj->objId]];
        D_800E1450[omCurrentObj->objId] = D_800E1450[D_800E0D50[omCurrentObj->objId]];
    }
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801245C0);
}

extern u32 D_80124624;
extern s32 D_800B4D40;

// has an easy way to bring the diff down to one instruction,
// but the operands to that instructions are in the wrong order
#ifdef NON_MATCHING
void func_800FD418(struct GObj *arg0) {
    s32 temp_v0 = D_800EC2E0[omCurrentObj->objId].as_s32;
    u32 tmp;

    // temp_v0 = D_800EC2E0[omCurrentObj->objId];
    if (!(temp_v0 < 0xA) || D_801245C4[temp_v0][0] == 0) {
        func_800B1900(omCurrentObj->objId & 0xFFFF);
    }
    if (D_801245C4[temp_v0] == D_801245C4[8]) {
        D_800DEF90[omCurrentObj->objId] = &D_800B4D40;
    }
    func_800A9864(tmp = D_801245C4[temp_v0][0], 0x0001869F, 0x10);
    func_800AA018(D_801245C4[temp_v0][1]);
    func_800AA018(D_801245C4[temp_v0][2]);
    arg0->unk3C->posVec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->unk3C->posVec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->unk3C->posVec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_800AF27C();
    func_800B1900((u16) omCurrentObj->objId);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2_4/func_800FD418.s")
#endif

void func_800A7F74(s32, s32, s32, f32, f32, f32);
s32 func_800FD9D4(s32);
extern u32 D_80124630;
extern const char D_801288E0[];

// no idea tbh
#ifdef NON_MATCHING 
u32 func_800FD570(s32 arg0, u32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    Vector sp28;

    if (arg0 != 0) {
        func_800A4794(&sp28, arg0, arg0);
    } else {
        sp28.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp28.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        sp28.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    }
    if (D_801245C4[arg1][0] != 0) {
        u32 temp_v0_3 = func_800FD9D4(0);
        if (temp_v0_3 == -1) {
            print_error_stub(D_801288E0);
            return 0;
        }
        D_800EC2E0[temp_v0_3].as_u32 = arg1;
        gEntitiesNextPosXArray[temp_v0_3] = sp28.x + arg2;
        gEntitiesNextPosYArray[temp_v0_3] = sp28.y + arg3;
        gEntitiesNextPosZArray[temp_v0_3] = sp28.z + arg4;
    } else if (D_801245C4[arg1] != D_801245C4[9]) {
        func_800A7F74(3, 2, D_801245C4[arg1][1], sp28.x + arg2, sp28.y + arg3, sp28.z + arg4);
    } else {
        func_800A7F74(0, 2, D_801245C4[arg1][1], sp28.x + arg2, sp28.y + arg3, sp28.z + arg4);
    }
    return 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2_4/func_800FD570.s")
#endif


extern const char D_8012890C[];

// uhh idk but it matches better than the function above it
#ifdef NON_MATCHING
s32 func_800FD754(s32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    u32 *temp_v0;

    temp_v0 = D_801245C4[arg0 * 3];
    if (temp_v0[0] != 0) {
        s32 temp_v0_2 = func_800FD9D4(0);
        if (temp_v0_2 == -1) {
            print_error_stub(&D_8012890C);
        }
        else {
            D_800EC2E0[temp_v0_2].as_s32 = arg0;
            gEntitiesNextPosXArray[temp_v0_2] = arg1;
            gEntitiesNextPosYArray[temp_v0_2] = arg2;
            gEntitiesNextPosZArray[temp_v0_2] = arg3;
            return 1;
        }
        return 0;
    }
    if (temp_v0 != D_801245C4[9]) {
        func_800A7F74(3, 2, temp_v0[1], arg1, arg2, arg3);
        return;
    }
    func_800A7F74(0, 2, temp_v0[1], arg1, arg2, arg3);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2_4/func_800FD754.s")
#endif


extern const char *D_8012893C;
u32 func_800FD874(s32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    s32 temp_v0;
    u32 temp_a1;

    if (D_801245C4[arg0][0] != 0) {
        temp_v0 = func_800FD9D4(0);
        if (temp_v0 == -1) {
            print_error_stub(&D_8012893C);
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
        print_error_stub(&D_8012896C);
    } else {
        gEntityFuncListIDArray[temp_v0] = arg0;
    }

    return temp_v0;
}
