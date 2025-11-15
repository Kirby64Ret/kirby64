#include <ultra64.h>
#include <macros.h>

#include "ovl2/ovl2_6.h"
#include "ovl2/ovl2_8.h"
#define PTRPTR_800DFBD0
#include "ovl1/ovl1_6.h"
#include "omCurrentObj.h"
#include "buffers.h"
#include "sounds.h"
#include "ovl0/ovl0_2.h"

extern void func_800B4924(void);
extern void procMainMove(void);
extern s32 D_800D6B98;
extern f32 D_8015C668;
extern s32 D_8015C710, D_8015C714, D_8015C718, D_8015C71C;

s32 func_80158120_ovl4(void) {
    s32 phi_v1 = 0;


    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
        return 0;
    }

    if ((gPlayerControllers[0].buttonHeldLong & R_JPAD) != 0) {
        phi_v1 = 1;
    }
    if ((gPlayerControllers[0].buttonHeldLong & L_JPAD) != 0) {
        phi_v1 = -1;
    }
    return phi_v1;
}

void func_80158188_ovl4(void) {

}

void func_80158224_ovl4(s32 arg0);
void func_80159160_ovl4(s32 arg0);

void func_80158190_ovl4(s32 arg0) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            func_80158224_ovl4(arg0);
            break;
        case 1:
            func_80159160_ovl4(arg0);
            break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
            func_801588F4_ovl4(arg0, D_800E98E0[omCurrentObj->objId] - 2);
            break;
        case 9:
            func_801593A4_ovl4();
            break;
    }
    func_800AFA14();
}

void func_80158428_ovl4(s32);

extern s32 D_8015C360[];
extern s32 D_800D6B7C;
extern s32 D_800D6B9C;

void func_800B2F54(s32, s32, f32);
f32 func_80159124_ovl4(s32);

void func_80158224_ovl4(s32 arg0) {
    D_800DF150[omCurrentObj->objId] = NULL;
    D_8015C718 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = 5;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = D_800D6B98;
    func_800B2F54(0x10, D_8015C360[D_8015C71C], func_80159124_ovl4(D_800D6B98));
    func_800A71A0(0x10);
    if (D_800D6B7C != 0) {
        play_sound(SOUND_SELECTJET1);
        D_800E9E20[omCurrentObj->objId] = D_800D6B98 + 1;
        ohSleep(5);
        D_800D6B7C = 0;
        D_800E9C60[omCurrentObj->objId] = 2;
        D_800D6B9C = 0;
        while (D_800E9C60[omCurrentObj->objId] != 0) {
            ohSleep(1);
        }
        ohSleep(5);
    }
    D_800DF150[omCurrentObj->objId] = func_80158428_ovl4;
    while (D_8015C710 == 0) {
        ohSleep(1);
    }
    D_800DF150[omCurrentObj->objId] = NULL;
    D_8015C710 = 2;
    func_800AFA14();
}

void func_80158428_ovl4(s32 arg0) {
    s32 tmp_func_return;

    // what a weird cast
    if (D_800E9AA0[omCurrentObj->objId] != 0) {
        D_800E9AA0[omCurrentObj->objId] = (u8 *)D_800E9AA0[omCurrentObj->objId] - 1;
        return;
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        D_800E98E0[D_8015C718] = 0;
        return;
    }
    if ((gPlayerControllers[0].buttonPressed & 0x9000) != 0) {
        D_8015C710 = 1;
        play_sound(SOUND_KETTEIWL);
        return;
    }
    tmp_func_return = func_80158120_ovl4();
    if (tmp_func_return == 1) {
        if (D_800D6B98 < func_8015874C_ovl4()) {
            D_800E9E20[omCurrentObj->objId] = D_800D6B98 + 1;
            D_800E9C60[omCurrentObj->objId] = 2;
            play_sound(SOUND_SELECTJET1);
            D_800D6B9C = 0;
            D_800E98E0[omCurrentObj->objId] = 0x25;
        } else {
            if ((D_8015C71C == 0) && (func_8015874C_ovl4() == 5)
            || ((D_8015C71C == 1) && (func_8015874C_ovl4() == 6)))
            {
                D_800E9E20[omCurrentObj->objId] = 0;
                D_800E9C60[omCurrentObj->objId] = 2;
                play_sound(SOUND_SELECTJET1);
                D_800D6B9C = 0;
                D_800E98E0[omCurrentObj->objId] = 0x25;
            }
        }
    }
    if (tmp_func_return == -1) {
        if (D_800D6B98 > 0) {
            D_800E9E20[omCurrentObj->objId] = D_800D6B98 - 1;
            D_800E9C60[omCurrentObj->objId] = 1;
            play_sound(SOUND_SELECTJET1);
            D_800D6B9C = 0;
            D_800E98E0[omCurrentObj->objId] = 0x25;
            return;
        }
        if ((D_8015C71C == 0) && (func_8015874C_ovl4() == 5)
        || ((D_8015C71C == 1) && (func_8015874C_ovl4() == 6)))
        {
                D_800E9E20[omCurrentObj->objId] = func_8015874C_ovl4();
                D_800E9C60[omCurrentObj->objId] = 1;
                play_sound(SOUND_SELECTJET1);
                D_800D6B9C = 0;
                D_800E98E0[omCurrentObj->objId] = 0x25;
        }
    }
}

extern u8 D_800D6BC5;
extern s32 gCurrentWorld;
extern s32 D_800D6BA8;

s32 func_8015874C_ovl4(void) {
    if (gCurrentWorld < 6) {
        return gCurrentWorld - 1;
    }
    if (D_800D6BC5 == 0) {
        return 5;
    }
    if (D_800D6BA8 != 0x64) {
        return 5;
    }
    if (check_cutscene_watched(0xD) == 0) {
        return 5;
    }
    return 6;
}

struct DObj *func_801587CC_ovl4(u32 arg0) {
    struct DObj *sp4;

    switch (arg0) {
        case 0:
            sp4 = D_800DFBD0[D_8015C714][0x6C / 4]; break;
        case 1:
            sp4 = D_800DFBD0[D_8015C714][0x58 / 4]; break;
        case 2:
            sp4 = D_800DFBD0[D_8015C714][0x74 / 4]; break;
        case 3:
            sp4 = D_800DFBD0[D_8015C714][0x1C / 4]; break;
        case 4:
            sp4 = D_800DFBD0[D_8015C714][0x18 / 4]; break;
        case 5:
            sp4 = D_800DFBD0[D_8015C714][0x70 / 4]; break;
        case 6:
            sp4 = D_800DFBD0[D_8015C714][0x3C / 4]; break;
    }

    return sp4;
}

void func_80158CFC_ovl4(s32);
struct UnkStruct8015C328 {
    u32 unk0;
};
extern s32 D_8015C328[];
extern s32 D_8015C300[];
extern s32 D_8015C31C, D_8015C320, D_8015C324;
extern const f32 D_8015C664;
// const f32 D_8015C664[] = {550.0f, 65535.0f};

// find structure of D_8015C300 and beyond
// TODO: needed for rodata migration
#ifdef NON_MATCHING
void func_801588F4_ovl4(struct GObj *arg0, s32 arg1) {
    Vector posVec;
    Vector angleVec;
    s32 pad[2];

    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800E9AA0[omCurrentObj->objId] = 0;
    if (func_8015874C_ovl4() < arg1) {
        func_800B1900((u16) omCurrentObj->objId);
    }
    D_800DF150[omCurrentObj->objId] = func_80158CFC_ovl4;
    func_800B2340(&posVec, func_801587CC_ovl4(arg1), D_8015C714);
    gEntitiesNextPosXArray[omCurrentObj->objId] = posVec.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = posVec.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = posVec.z;
    func_800B26D8(&angleVec, func_801587CC_ovl4(arg1), D_8015C714);
    gEntitiesAngleXArray[omCurrentObj->objId] = angleVec.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = angleVec.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = angleVec.z;
    if ((arg1 == 5) && (func_8015874C_ovl4() != 6)) {
        func_800A9864(D_8015C31C, 0x1869F, 0x10);
        if (D_8015C320 != 0) {
            func_800AA018(D_8015C320);
        }
        if (D_8015C324 != 0) {
            func_800AA018(D_8015C324);
        }
    } else {
        func_800A9864(D_8015C300[arg1], 0x1869F, 0x10);
        if (D_8015C328[arg1] != 0) {
            func_800AA018(D_8015C328[arg1]);
        }
        if (D_8015C328[(arg1 * 2) + 1] != 0) {
            func_800AA018(D_8015C328[(arg1 * 2) + 1]);
        }
    }
    if (arg1 == 6) {
        D_800E9AA0[omCurrentObj->objId] = func_800A8234(1, 0, 6);
    }
    while (1) {
        if (arg1 == 2) {
            if ((arg0->unk40 == 24.0f)
             || (arg0->unk40 == 124.0f)
             || (arg0->unk40 == 224.0f)
             || (arg0->unk40 == 324.0f)
             || (arg0->unk40 == 424.0f)
             || (arg0->unk40 == 524.0f))
            {
                D_800E9AA0[omCurrentObj->objId] = func_800A8234(1, 0, 2);
            }
            if ((arg0->unk40 == 50.0f)
             || (arg0->unk40 == 150.0f)
             || (arg0->unk40 == 250.0f)
             || (arg0->unk40 == 350.0f)
             || (arg0->unk40 == 450.0f)
             || (arg0->unk40 == D_8015C664))
            {
                func_800A1F30(D_800E9AA0[omCurrentObj->objId]);
                D_800E9AA0[omCurrentObj->objId] = 0;
            }
        }
        ohSleep(1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl4/ovl4_3/func_801588F4_ovl4.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl4/ovl4_3/func_80158CFC_ovl4.s")

GLOBAL_ASM("asm/non_matchings/ovl4/ovl4_3/func_80158E98_ovl4.s")

GLOBAL_ASM("asm/non_matchings/ovl4/ovl4_3/func_80159124_ovl4.s")

extern void func_800A9F98(s32, f32);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);

void func_80159160_ovl4(s32 arg0) {
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], procMainMove);
    D_800DEF90[omCurrentObj->objId] = &func_800B4924;
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    D_8015C714 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = D_800D6B98;
    func_800A9864(0x3000A, 0x1869F, 0x10, &D_800E3750);
    if (D_8015C71C == 1) {
        func_800A9F98(0x30012, func_80159124_ovl4(D_800D6B98));
    } else {
        func_800A9F98(0x30014, func_80159124_ovl4(D_800D6B98));
    }
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    while (D_8015C710 == 0) {
        if (D_800E9C60[D_8015C718] != 0) {
            func_80158E98_ovl4(D_800D6B98, D_800E9E20[D_8015C718], D_800E9C60[D_8015C718]);
        }
        ohSleep(1);
    }
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl4/ovl4_3/func_801593A4_ovl4.s")

extern s32 D_800D6B78;
void func_80159828_ovl4(void) {
    D_800D6B78 = 0;
    if (func_8015874C_ovl4() == 6) {
        D_8015C71C = 1;
    } else {
        D_8015C71C = 0;
    }
}

void func_8015986C_ovl4(s32 arg0);
GLOBAL_ASM("asm/non_matchings/ovl4/ovl4_3/func_8015986C_ovl4.s")

void gameSetUpdateRate(f32);
void func_801598C4_ovl4(void) {
    s32 phi_s0;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xA0A32FF);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A78D0(0);
    func_800A8724(0);
    func_800A7A40();
    func_80159828_ovl4();
    play_music(0, 0x25);
    func_800A6BC0(0xB);
    D_800E98E0[func_800AEA64(2, 0, 0x70)] = 0;
    D_800E98E0[request_track_general(2, 0, 0x70)] = 1;
    for (phi_s0 = 2; phi_s0 < 9; phi_s0++) {
        D_800E98E0[request_track_general(2, 0, 0x70)] = phi_s0;
    }
    D_800E98E0[func_800AEC70(2, 0, 0x70)] = 9;
    HS64_omMakeGObj(0, func_8015986C_ovl4, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

extern Gfx D_8015C028[];
void func_80159A30_ovl4(Gfx **arg0) {
    gSPDisplayList((*arg0)++, &D_8015C028);
}

GLOBAL_ASM("asm/non_matchings/ovl4/ovl4_3/func_80159A54_ovl4.s")

void func_80159B68_ovl4(s32 arg0);
void func_80159CB8_ovl4(s32 arg0);

void func_80159B00_ovl4(s32 arg0) {
    switch (gEntityFuncListIDArray[omCurrentObj->objId]) {
        case 0:
            func_80159B68_ovl4(arg0);
            break;
        case 1:
            func_80159CB8_ovl4(arg0);
            break;
        default:
            break;
    }
}

void func_80159C40_ovl4(s32 arg0);
void func_800AAF34(s32, s32, f32);
extern s32 D_8015C720;
extern f32 D_8015C670;

void func_80159B68_ovl4(s32 arg0) {
    D_800DF150[omCurrentObj->objId] = func_80159C40_ovl4;
    func_800AAF34(0x10, 0x300AF, 0.0f);
    func_800A71A0(0x10);
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    D_800EA6E0[omCurrentObj->objId] = D_8015C670;
    func_800A9864(0x300B7, 0x1869F, 0x10);
    D_8015C720 = 2;
    ohSleep(1 second);
    play_music(0, 0x17);
    func_800AFA14();
}

#ifdef NON_MATCHING
extern f32 D_8015C674;
void func_80159C40_ovl4(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] += D_800EA6E0[omCurrentObj->objId];
    if (D_800E4C50[omCurrentObj->objId] >= D_8015C674) {
        D_800E4C50[omCurrentObj->objId] -= D_8015C674;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl4/ovl4_3/func_80159C40_ovl4.s")
#endif

void func_80159D70_ovl4(s32 arg0);

void func_800B4924(void);
void func_80159CB8_ovl4(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DF150[omCurrentObj->objId] = func_80159D70_ovl4;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9864(0x300B6, 0x1869F, 0x10);
    func_800AA154(0x300AE);
    D_8015C720 = 1;
    func_800AA018(0x300AD);
    func_800AFA14();
}

void func_80159D70_ovl4(s32 arg0) {

}

extern s32 D_800D6B24;
extern s32 D_8015C720;

void func_80159D78_ovl4(s32 arg0) {
    if ((D_800D6B24 == 0) && (D_8015C720 == 1) && (gPlayerControllers[0].buttonPressed & 0x9000)) {
        utilSetRectColorFullScreen(0, 0, 0);
        utilSpawnRect(0, 0x10, 2);
    }
}

extern s32 D_800D71F8, D_800D71FC;
void func_80159DE8_ovl4(void) {
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_800A6BC0(4);
    D_8015C720 = 0;
    D_800D71F8 = request_track_general(5, 0, 0x70);
    gEntityFuncListIDArray[D_800D71F8] = 0;
    D_800D71FC = request_track_general(5, 0, 0x70);
    gEntityFuncListIDArray[D_800D71FC] = 1;
    HS64_omMakeGObj(0, func_80159D78_ovl4, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

extern Gfx D_8015C3E0[];

void func_80159ED8_ovl4(Gfx **arg0) {
    gSPDisplayList((*arg0)++, &D_8015C3E0);
}

GLOBAL_ASM("asm/non_matchings/ovl4/ovl4_3/func_80159EFC_ovl4.s")
