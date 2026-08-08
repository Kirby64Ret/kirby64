#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "sounds.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_3.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"

#include "ovl17.h"

struct Ovl17AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

struct Ovl17AnimCmd {
    u8 filler0[0x14];
    f32 unk14;
};

struct Ovl17AnimObj {
    u8 filler0[8];
    struct Ovl17AnimCmd *unk8;
};

s32 func_80110150(struct Ovl17AnimInfo *);
s32 func_80110B00(struct Ovl17AnimInfo *);
void func_80111550(u32);
struct Ovl17AnimObj *func_80111C88(s32 *, u32);
void func_80111C4C(struct Ovl17AnimObj *);
struct Ovl17AnimObj *func_80111A04(u32, u32);
void func_80111ECC(struct Ovl17AnimObj *);
struct Ovl17AnimObj *func_801A0464_ovl7(void);
void func_801A3E80_ovl7(struct GObj *);
extern f32 D_800D715C;
extern f32 D_800D7160;
extern f32 D_800D7164;
extern f32 D_800D7168;
extern f32 D_800D716C;
extern f32 D_800D7170;

void func_801E1960_ovl17(void);
void func_800B4924(struct GObj *);
void func_801E4DD4_ovl17(struct GObj *);
void func_800A2300(void);
void func_800A8100(s32, s32, s32, struct DObj *);
void func_800B19F4(s32, u32);
void func_800FD570(s32, s32, f32, f32, f32);
void func_8019D958_ovl7(u16);
s32 func_801E220C_ovl17(void);
s32 func_801E14B0_ovl17(void);
void func_801E2320_ovl17(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E0D00_ovl17.s")

void func_801E109C_ovl17(struct GObj *arg0) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f14;

    D_800E98E0[omCurrentObj->objId] += 1;
    temp_f0 = gEntitiesNextPosZArray[omCurrentObj->objId];
    temp_f2 = gEntitiesNextPosXArray[omCurrentObj->objId];
    temp_f14 = gEntitiesNextPosYArray[omCurrentObj->objId];
    if ((D_800D716C - 120.0f) < sqrtf((temp_f0 * temp_f0) + ((temp_f2 * temp_f2) + (temp_f14 * temp_f14)))) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E1170_ovl17);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E1170_ovl17.s")

void func_801E1424_ovl17(struct GObj *arg0) {
    struct UnkStruct800E1B50 *temp_a0;
    s32 temp_v1;

    temp_v1 = D_800E9560[omCurrentObj->objId];
    temp_a0 = D_800E1B50[omCurrentObj->objId];
    if (temp_v1 < 0x11) {
        ((struct Ovl17AnimObj *) temp_a0->unk8C)->unk8->unk14 = (((f32) temp_v1 + 1.0f) / 17.0f) * 45.0f;
        func_801E14B0_ovl17();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E14B0_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E15A4_ovl17.s")

void func_801E1890_ovl17(struct GObj *arg0) {
    f32 var_f12;
    f32 var_f2;
    f32 var_f2_2;

    if (D_800EAC20[0] < 0.0f) {
        var_f2 = -D_800EAC20[0];
    } else {
        var_f2 = D_800EAC20[0];
    }
    var_f12 = D_800D7170 * 0.5f;
    if (var_f12 <= var_f2) {
        func_801E1960_ovl17();
        var_f12 = D_800D7170 * 0.5f;
    }
    if (D_800EADE0[0] < 0.0f) {
        var_f2_2 = -D_800EADE0[0];
    } else {
        var_f2_2 = D_800EADE0[0];
    }
    if (var_f12 <= var_f2_2) {
        func_801E1960_ovl17();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E1960_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E1CB4_ovl17.s")

void func_801E2170_ovl17(struct GObj *arg0) {
    struct UnkStruct800E1B50 *temp_v1;

    temp_v1 = D_800E1B50[omCurrentObj->objId];
    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 4) {
        temp_v1->unk43 = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        return;
    }
    func_801E220C_ovl17();
}

s32 func_801E220C_ovl17(void) {
    u8 sp4C[4];
    struct UnkStruct800E1B50 *sp48;
    struct Ovl17AnimInfo sp28;
    s32 temp_v1;

    sp48 = D_800E1B50[omCurrentObj->objId];
    func_80111ECC(func_801A0464_ovl7());
    if (sp48->unk8C == NULL) {
        return 0;
    }
    if (func_80110150(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        sp48->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        sp48->unk43 = 0;
    }
    temp_v1 = D_800E83E0[omCurrentObj->objId];
    if ((temp_v1 == 1) || (temp_v1 == 2)) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2320_ovl17);
        return 1;
    }
    return 0;
}

void func_801E2320_ovl17(void) {
    struct UnkStruct800E1B50 *sp24;
    u32 temp_a0;

    sp24 = D_800E1B50[omCurrentObj->objId];
    func_800A2300();
    func_800FD570(0, sp24->unk94->unk18, 0.0f, 0.0f, 0.0f);
    temp_a0 = sp24->unk94->unk1C;
    if (temp_a0 != 0x80000000) {
        play_sound(temp_a0);
    }
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B19F4(0x7D, omCurrentObj->objId);
    ohSleep(1);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E23E0_ovl17.s")

void func_801E2A2C_ovl17(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801E2B78_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 30.0f;
    func_800A9864(0x10085, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801E2AF0_ovl17(arg0);
}

void func_801E2AF0_ovl17(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801E549C_ovl17);
    }
}

void func_801E2B78_ovl17(struct GObj *arg0) {
    if ((gEntityFuncListIDArray[omCurrentObj->objId] != 4) && (D_800EA1A0[D_800E0D50[omCurrentObj->objId]] != 0)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2AF0_ovl17);
        return;
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, D_801E54B0_ovl17);
}

void func_801E2C28_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    do {
        func_800AFBB4(0, omCurrentObj);
        ohSleep(1);
    } while (D_800E9AA0[D_800E0D50[omCurrentObj->objId]] == NULL);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E2CD0_ovl17(struct GObj *arg0) {
    func_801E30BC_ovl17();
}

void func_801E2CF0_ovl17(struct GObj *arg0) {
    Vector sp1C;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10517);
    func_800AFBB4(1, omCurrentObj);
    ohSleep(6);
    utilGetTransformSRT(&sp1C, arg0->data.dobj->firstChild->firstChild);
    func_801ACD90_ovl7(0x3C, 1, &sp1C);
    play_sound(0x1C7);
    ohSleep(6);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2DA0_ovl17(struct GObj *arg0) {
    if (D_800E9AA0[D_800E0D50[omCurrentObj->objId]] == NULL) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2AF0_ovl17);
    }
    func_801E30BC_ovl17();
}

void func_801E2E24_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x10519);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 1;
    func_800AFBB4(1, omCurrentObj);
    ohSleep(0xC);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2EE8_ovl17(struct GObj *arg0) {
    func_801E30BC_ovl17();
}

void func_801E2F08_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 2;
    func_800AFBB4(0, omCurrentObj);
    ohSleep(0xD2);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2FB8_ovl17(struct GObj *arg0) {
    func_801E30BC_ovl17();
}

void func_801E2FD8_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800AFBB4(0, omCurrentObj);
    curObjSleepForever();
}

void func_801E3024_ovl17(struct GObj *arg0) {
    if ((D_800EA1A0[D_800E0D50[omCurrentObj->objId]] == 0) && (D_800E7B20[D_800E0D50[omCurrentObj->objId]] > 0.0f)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2AF0_ovl17);
    }
}

s32 func_801E30BC_ovl17(void) {
    u8 sp4C[4];
    struct UnkStruct800E1B50 *sp48;
    struct Ovl17AnimInfo sp28;
    s32 temp_a0;

    sp48 = D_800E1B50[omCurrentObj->objId];
    func_80111ECC(func_801A0464_ovl7());
    if (sp48->unk8C == NULL) {
        return 0;
    }
    if (func_80110B00(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        sp48->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        sp48->unk43 = 0;
    }
    temp_a0 = D_800E83E0[omCurrentObj->objId];
    if (temp_a0 != 1) {
        if (temp_a0 == 2) {
            func_800A8100(6, 3, 0, D_800DFBD0[omCurrentObj->objId][4]);
            D_800E7CE0[omCurrentObj->objId] = 1;
            play_sound(0x1BB);
            do { } while (0);
            if (sp28.unkC != 0) {
                D_800E98E0[sp28.unkC] = 1;
            }
            return 1;
        }
    } else {
        D_800E7CE0[omCurrentObj->objId] = 0xF0;
        D_800E7B20[omCurrentObj->objId] = 30.0f;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2AF0_ovl17);
        play_sound(0x1C0);
        return 1;
    }
    return 0;
}

void func_801E328C_ovl17(Vector *arg0) {
    lbvector_Normalize(arg0);
    lbvector_Rotate(arg0, 1, D_800EAC20[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 2, D_800EADE0[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 4, D_800EAFA0[omCurrentObj->objId]);
}

void func_801E3324_ovl17(Vector *arg0) {
    arg0->x = 0.0f;
    arg0->y = 0.0f;
    arg0->z = 1.0f;
    lbvector_Normalize(arg0);
    lbvector_Rotate(arg0, 1, D_800EA6E0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]]);
    lbvector_Rotate(arg0, 2, D_800EA8A0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]]);
    lbvector_Rotate(arg0, 4, D_800EAA60[D_800E0D50[D_800E0D50[omCurrentObj->objId]]]);
}

void func_801E343C_ovl17(Vector *arg0) {
    arg0->x = 0.0f;
    arg0->y = 0.0f;
    arg0->z = 1.0f;
    lbvector_Normalize(arg0);
    lbvector_Rotate(arg0, 1, D_800EA6E0[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 2, D_800EA8A0[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 4, D_800EAA60[omCurrentObj->objId]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E34F4_ovl17.s")

void func_801E36AC_ovl17(struct GObj *arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] *= 0.7f;
    gEntitiesNextPosYArray[omCurrentObj->objId] *= 0.7f;
    gEntitiesNextPosZArray[omCurrentObj->objId] *= 0.7f;
    func_801E373C_ovl17();
}

s32 func_801E373C_ovl17(void) {
    u8 sp4C[4];
    struct UnkStruct800E1B50 *sp48;
    struct Ovl17AnimInfo sp28;
    s32 temp_a0;

    sp48 = D_800E1B50[omCurrentObj->objId];
    func_80111ECC(func_801A0464_ovl7());
    if (sp48->unk8C == NULL) {
        return 0;
    }
    if (func_80110B00(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        sp48->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        sp48->unk43 = 0;
    }
    temp_a0 = D_800E83E0[omCurrentObj->objId];
    if (temp_a0 != 1) {
        if (temp_a0 == 2) {
            D_800E7CE0[omCurrentObj->objId] = 1;
            return 1;
        }
    } else {
        D_800E7CE0[omCurrentObj->objId] = 0x1E;
        D_800E7B20[omCurrentObj->objId] = 1.0f;
        play_sound(0x1C4);
        do { } while (0);
        if (sp28.unkC != 0) {
            D_800E98E0[sp28.unkC] = 1;
        }
        return 1;
    }
    return 0;
}

void func_801E389C_ovl17(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    if (D_800E7880[omCurrentObj->objId] == 0) {
        D_800E0F10[omCurrentObj->objId] = 8;
    } else {
        D_800E0F10[omCurrentObj->objId] = 0x13;
    }
    D_800DF150[omCurrentObj->objId] = func_801E3990_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 10.0f;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    curObjSleepForever();
}

void func_801E3990_ovl17(struct GObj *arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] *= 0.75f;
    gEntitiesNextPosYArray[omCurrentObj->objId] *= 0.75f;
    gEntitiesNextPosZArray[omCurrentObj->objId] *= 0.75f;
    func_801E3A20_ovl17();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E3A20_ovl17.s")

void func_801E4030_ovl17(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801E4178_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 10.0f;
    func_800A9864(0x10084, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801E40F4_ovl17(arg0);
}

void func_801E40F4_ovl17(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801E54C4_ovl17);
    }
}

void func_801E4178_ovl17(void) {
    func_801E4668_ovl17();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, D_801E54D4_ovl17);
}

void func_801E41C4_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10510);
    func_800AF27C();
    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 0) {
        func_800AA018(0x10514);
        ohSleep(0x38);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E4274_ovl17(struct GObj *arg0) {
}

void func_801E427C_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10514);
    curObjSleepForever();
}

void func_801E42CC_ovl17(struct GObj *arg0) {
    func_801E4488_ovl17();
}

void func_801E42EC_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x1050E);
    ohSleep(8);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E4358_ovl17(struct GObj *arg0) {
    func_801E4488_ovl17();
}

void func_801E4378_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA018(0x10510);
    func_800AF27C();
    func_800AFBB4(0, omCurrentObj);
    ohSleep(0x258);
    if (D_800E7B20[D_800E0D50[omCurrentObj->objId]] <= 0.0f) {
        curObjSleepForever();
    }
    D_800E7CE0[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 10.0f;
    func_800AFBB4(1, omCurrentObj);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E4480_ovl17(struct GObj *arg0) {
}

s32 func_801E4488_ovl17(void) {
    u8 sp4C[4];
    struct UnkStruct800E1B50 *sp48;
    struct Ovl17AnimInfo sp28;
    s32 temp_a0;

    sp48 = D_800E1B50[omCurrentObj->objId];
    func_80111ECC(func_801A0464_ovl7());
    if (sp48->unk8C == NULL) {
        return 0;
    }
    if (func_80110B00(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        sp48->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        sp48->unk43 = 0;
    }
    temp_a0 = D_800E83E0[omCurrentObj->objId];
    if (temp_a0 != 1) {
        if (temp_a0 == 2) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E40F4_ovl17);
            D_800E7CE0[omCurrentObj->objId] = 1;
            play_sound(0x1BE);
            do { } while (0);
            if (sp28.unkC != 0) {
                D_800E98E0[sp28.unkC] = 1;
            }
            return 1;
        }
    } else {
        D_800E7CE0[omCurrentObj->objId] = 0x276;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E40F4_ovl17);
        play_sound(0x1C3);
        do { } while (0);
        if (sp28.unkC != 0) {
            D_800E98E0[sp28.unkC] = 1;
        }
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E4668_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E49B8_ovl17.s")

void func_801E4DD4_ovl17(struct GObj *arg0) {
    if (func_801A03B4_ovl7() != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
    }
}
