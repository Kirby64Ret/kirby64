#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021C738_ovl9;
extern s32 func_8019A7E8_ovl7(f32);

void func_801FD93C_ovl9(void);
void func_801FBB00_ovl9(struct GObj *);

extern void func_801A3280_ovl7(void);
extern s32 func_8019A9AC_ovl7(f32, f32);
extern void func_8019B424_ovl7(struct GObj *);
extern void func_8019C844_ovl7(void *);
void func_801FD1D4_ovl9(struct GObj *);
void func_801FD2C0_ovl9(struct GObj *);
void func_801FE2D8_ovl9(struct GObj *);

void func_801FF1C8_ovl9(struct GObj *);

extern void func_8019B2C0_ovl7(s32);
extern void eneTurnCommon(s32);
/* pointer parameter is load-bearing: it forces the `or $a0, $a1, $zero` move */
extern void func_80111550(void *);
extern void *func_80111C88(s32 *, u32);
extern void func_80111ECC(void *);
extern void func_801A0C70_ovl7(void);
extern s32 D_801C8F14;
extern s32 D_801C8FEC;
extern FUNCLIST D_8021C6D0_ovl9;
extern FUNCLIST D_8021C708_ovl9;
s32 func_80200908_ovl9(void);
void func_802001DC_ovl9(struct GObj *);
void func_80200168_ovl9(void);

struct Ovl9AnimCmd {
    u8 filler0[8];
    struct DObj *unk8;
};
struct Ovl9AnimObj {
    u8 filler0[0x24];
    struct Ovl9AnimCmd *unk24;
};

extern void func_8019C9B0_ovl7(f32, s32);
extern void func_80199F1C_ovl7(struct GObj *);
extern FUNCLIST D_8021C69C_ovl9;
extern FUNCLIST D_8021C750_ovl9;

extern s32 func_801AE7E0_ovl7(s32);

extern void func_800FB914(s32);
extern void func_801AE940_ovl7(s32, f32, f32);
extern FUNCLIST D_8021C770_ovl9;
extern s32 func_801A0D74_ovl7(void);
extern void func_8019F3B0_ovl7(void);

void func_802016A8_ovl9(void);
extern void play_sound(s32);
extern void func_801ACCA0_ovl7(s32, s32, f32, f32);

extern void func_800A2300(struct GObj *);

extern s32 D_801CC1F0;
extern s32 D_801CC358;
extern f32 D_8021D9C0_ovl9;
extern f32 D_8021D9C8_ovl9;
extern s32 D_801CC160;
extern s32 D_801CC184;
extern f32 D_8021D990_ovl9;
extern f32 D_8021D9A4_ovl9;

extern FUNCLIST D_8021C654_ovl9;
extern FUNCLIST D_8021C6B4_ovl9;
extern s32 D_801CC1CC;
extern f32 D_8021D9A8_ovl9;
extern void func_8019C71C_ovl7(f32);
void func_801FD41C_ovl9(void);
void func_801FD080_ovl9(void);
extern f32 D_8021D998_ovl9;
extern f32 D_8021D99C_ovl9;
extern s32 D_801C8DF8;
extern void func_800AA864(s32, s32);
s32 func_801FCA8C_ovl9(void);
extern FUNCLIST D_8021C670_ovl9;
extern void func_801A6C10_ovl7(struct GObj *);
extern s32 eneCheckAboveBelowPlayer(void);
void func_801FBC50_ovl9(struct GObj *);
extern FUNCLIST D_8021C694_ovl9;
extern FUNCLIST D_8021C6A4_ovl9;
extern FUNCLIST D_8021C6A8_ovl9;
extern FUNCLIST D_8021C6B4_ovl9;
extern FUNCLIST D_8021C6EC_ovl9;
extern FUNCLIST D_8021C72C_ovl9;
extern FUNCLIST D_8021C744_ovl9;
extern FUNCLIST D_8021C760_ovl9;
extern FUNCLIST D_8021C784_ovl9;

extern FUNCLIST D_8021C650_ovl9;
void func_800B6B8C(struct GObj *);

void func_801FBAA0_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C650_ovl9);
}

void func_801FBB00_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C654_ovl9);
}

void func_801FBB48_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC160;
    D_800DF150[omCurrentObj->objId] = func_801FBC50_ovl9;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
    }
    func_801A0D50_ovl7(func_801FBB00_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C654_ovl9);
}

void func_801FBC50_ovl9(struct GObj *arg0) {
    s32 unused;
    s32 sp18;

    sp18 = func_801A0D74_ovl7();

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8019B424_ovl7(arg0);
    }
    eneTurnCommon(1);
    if (sp18 == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, &D_8021C670_ovl9);
    }
    if (sp18 == 0) {
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            if (eneCheckAboveBelowPlayer() == -1) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 0;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FBB00_ovl9);
            }
        }
    }
    func_8019F3B0_ovl7();
}

void func_801FBD64_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC160;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10106);
    func_800A9EA4(0x10107);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021D990_ovl9;
    curObjSleepForever();
}

void func_801FBE70_ovl9(s32 arg0) {
    func_801FCA8C_ovl9();
}

void func_801FBE90_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0xF0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
    func_800A9EA4(0x10108);
    func_800A9EA4(0x10109);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FBF50_ovl9.s")

void func_801FC194_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0x1E;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800A9EA4(0x10106);
    func_800A9EA4(0x10107);
    curObjSleepForever();
}

void func_801FC234_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FBB00_ovl9);
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 -= 1;
    }
}

void func_801FC2B0_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021D998_ovl9;
    play_sound(0x93);
    func_800AA018(0x10104);
    func_800AA864(0x10103, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FC3C4_ovl9(struct GObj *arg0) {
    struct DObj *sp1C = D_800DFBD0[omCurrentObj->objId][3];
    struct Ovl9AnimObj *temp;

    if (D_800E9E20[omCurrentObj->objId] == 0) {
        func_80111550((void *) omCurrentObj->objId);
        temp = func_80111C88(&D_801C8DF8, omCurrentObj->objId);
        temp->unk24->unk8 = sp1C;
        func_80111ECC(temp);
        func_801A0C70_ovl7();
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FBB00_ovl9);
    }
}

void func_801FC488_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0x3C;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
    func_800A9EA4(0x10108);
    func_800A9EA4(0x10109);
    curObjSleepForever();
}

void func_801FC54C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
        if (func_801FCA8C_ovl9() == 0) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = D_8021D99C_ovl9;
            D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
            D_800EA1A0[omCurrentObj->objId] = -1;
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FBB00_ovl9);
        }
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 -= 1;
        if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
            if (tmp->unk3C == 0) {
                if (((u32) D_800DD8D0[omCurrentObj->objId] >> 30) != 0) {
                    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FBB00_ovl9);
                }
            }
        }
    }
}

void func_801FC6E0_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 1;
    if (D_800EA1A0[omCurrentObj->objId] == -1) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0x3C;
        D_800EA1A0[omCurrentObj->objId] = 0;
    }
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 5;
    while (1) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
        func_800AA018(0x10109);
        func_800AA864(0x10108, 4);
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    }
}

extern f32 D_8021D9A0_ovl9;
s32 func_801FCA8C_ovl9(void);

void func_801FC820_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
        if (((u32) D_800DD8D0[omCurrentObj->objId] >> 30) != 0) {
            if (func_801FCA8C_ovl9() == 0) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = D_8021D9A0_ovl9;
            D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FBB00_ovl9);
            }
        }
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 - 1;
    }
}

void func_801FC93C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC184;
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_800A9EA4(0x10106);
    func_800A9EA4(0x10107);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021D9A4_ovl9;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    curObjSleepForever();
}

void func_801FCA84_ovl9(s32 arg0) {

}

s32 func_801FCA8C_ovl9(void) {
    s32 unused; /* load-bearing: puts `ret` at 0x18 */
    s32 ret = 0;

    if (func_8019A9AC_ovl7(-1.0f, 480.0f) == 3) {
        if (eneCheckAboveBelowPlayer() == 1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FBB00_ovl9);
            ret = 1;
        }
    }
    return ret;
}

void func_801FCB20_ovl9(struct GObj *arg0) {
    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
        D_800EA1A0[omCurrentObj->objId] = -1;
    }
    func_80199F1C_ovl7(arg0);
}

extern FUNCLIST D_8021C68C_ovl9;

void func_801FCB88_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C68C_ovl9);
}

void func_801FCBCC_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021C694_ovl9);
}

extern s32 D_801CC1A8;
extern FUNCLIST D_8021C694_ovl9;
void func_801FCD1C_ovl9(void);
void func_801FCBCC_ovl9(struct GObj *);

void func_801FCC14_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC1A8;
    D_800DF150[omCurrentObj->objId] = func_801FCD1C_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
    func_801A0D50_ovl7(func_801FCBCC_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021C694_ovl9);
}

void func_801FCD1C_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021C69C_ovl9);
    }
    func_8019C9B0_ovl7(30.0f, 6);
    func_8019F3B0_ovl7();
}

extern void func_8019BC34_ovl7(f32);

void func_801FCD84_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC1A8;
    func_8019BC34_ovl7(80.0f);
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 5.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    func_800AECC0(gameTicksPerDraw * 1.5f);
    func_800AED20(gameTicksPerDraw * 1.5f);
    func_800A9EA4(0x1011A);
    func_800A9EA4(0x1011B);
    curObjSleepForever();
}

void func_801FCEA8_ovl9(struct GObj *arg0) {
    s32 unused;
    f32 sp20[3];
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E6690[omCurrentObj->objId] == 0.0f) {
        if (tmp->unk3C == 0) {
            func_8019C71C_ovl7(-0.5f);
        } else {
            sp20[0] = 5.0f;
            sp20[1] = 0.0;
            sp20[2] = 5.0f;
            func_8019C844_ovl7(sp20);
        }
    } else {
        func_801FD080_ovl9();
    }
}

void func_801FCF50_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC1CC;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800A9EA4(0x1011A);
    func_800A9EA4(0x1011B);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021D9A8_ovl9;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    curObjSleepForever();
}

void func_801FD078_ovl9(s32 arg0) {

}

void func_801FD080_ovl9(void) {
    s32 unused;
    f32 sp20[3];

    if (ABSF(D_800E64D0[omCurrentObj->objId]) < 0.5f) {
        sp20[0] = 5.0f;
        sp20[1] = 0.0;
        sp20[2] = 5.0f;
        func_8019C844_ovl7(sp20);
    }
}

void func_801FD108_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C6A4_ovl9);
}

void func_801FD150_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801FD1D4_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A3280_ovl7();
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C6A4_ovl9);
}

void func_801FD1D4_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021C6A8_ovl9);
}

void func_801FD21C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10119);
    func_800A9EA4(0x10118);
    curObjSleepForever();
}

void func_801FD274_ovl9(s32 arg0) {

}

extern FUNCLIST D_8021C6AC_ovl9;

void func_801FD27C_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C6AC_ovl9);
}

void func_801FD2C0_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C6B4_ovl9);
}

void func_801FD308_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    tmp->unk98 = &D_801CC1F0;
    D_800DF150[omCurrentObj->objId] = func_801FD41C_ovl9;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
    }
    func_801A0D50_ovl7(func_801FD2C0_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C6B4_ovl9);
}

void func_801FD41C_ovl9(void) {
    s32 unused; /* dead local is load-bearing: it moves the spill slot to 0x18 */
    s32 temp = func_801A0D74_ovl7();

    func_8019B2C0_ovl7(1);
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, &D_8021C6D0_ovl9);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

void func_801FD490_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC1F0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    func_800A9EA4(0x10127);
    curObjSleepForever();
}

void func_801FD53C_ovl9(struct GObj *arg0) {
    if (func_8019A9AC_ovl7(320.0f, 560.0f) == 3) {
        func_8019B424_ovl7(arg0);
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FD2C0_ovl9);
    }
}

void func_801FD5C0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC1F0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AECC0(gameTicksPerDraw * 2.0f);
    func_800AED20(gameTicksPerDraw * 2.0f);
    func_800A9EA4(0x10128);
    ohSleep(0xA);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    ohSleep(7);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FD2C0_ovl9(struct GObj *);

void func_801FD71C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FD2C0_ovl9);
    }
}

void func_801FD788_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            play_sound(0x95);
            func_800FB914(1);
            func_801AE940_ovl7(2, 60.0f, -28.0f);
        }
    }
}

extern s32 D_801CC214;
void func_801FD788_ovl9(s32, s32, f32);

void func_801FD7E4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9E20[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC214;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.5f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.25f;
    func_800AA018(0x10124);
    D_800DF310[omCurrentObj->objId] = func_801FD788_ovl9;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    ohSleep(0x1E);
    func_800AA864(0x10123, 1);
    D_800E9E20[omCurrentObj->objId] = 2;
    curObjSleepForever();
}

void func_801FD93C_ovl9(void) {
    struct DObj *temp = D_800DFBD0[omCurrentObj->objId][4];
    struct Ovl9AnimObj *obj;

    func_80111550(omCurrentObj->objId);
    obj = func_80111C88(&D_801C8F14, omCurrentObj->objId);
    obj->unk24->unk8 = temp;
    func_80111ECC(obj);
    func_801A0C70_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD9B0_ovl9.s")

void func_801FDAE0_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            D_800E8920[omCurrentObj->objId] = 0;
        }
    }
}

/* 3 diffs: the ROM emits the lwc1 of D_8021D9B0_ovl9 BEFORE the
   omCurrentObj->objId load; IDO schedules the 4.0f mtc1 first. Registers and
   every other instruction are exact. Locals-as-initializer, plain-statement
   assignment and declaration order all swept with no effect. */
#ifdef MIPS_TO_C
extern s32 D_801CC238;
extern f32 D_8021D9B0_ovl9;

void func_801FDB28_ovl9(struct GObj *arg0) {
    f32 temp;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 four = 4.0f;

    temp = D_8021D9B0_ovl9;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    D_800E8920[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC238;
    D_800E3210[omCurrentObj->objId] = four;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = temp;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * four;
    func_800AECC0(0.0f);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FDB28_ovl9.s")
#endif

void func_801FDC7C_ovl9(s32 arg0) {

}

void func_801FDC84_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9E20[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC1F0;
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        ohSleep(0x1E);
        func_800AA864(0x10123, 1);
        D_800E9C60[omCurrentObj->objId] = 0;
    }
    func_800A9EA4(0x10127);
    ohSleep(0xF);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FD2C0_ovl9(struct GObj *);

void func_801FDDB4_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FD2C0_ovl9);
    }
}

void func_801FDE20_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9E20[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC1F0;
    D_800DDFD0[omCurrentObj->objId] = 5;
    func_800A9EA4(0x10127);
    ohSleep(8);
    func_80199F1C_ovl7(arg0);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FDED0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (tmp->unk3C == 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FD2C0_ovl9);
        }
    }
}

extern s32 D_801CC25C;
extern f32 D_8021D9B4_ovl9;
extern f32 D_8021D9B8_ovl9;
void func_801FDF50_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC25C;
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_800AECC0(gameTicksPerDraw * 1.5f);
    func_800AED20(gameTicksPerDraw * 1.5f);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021D9B4_ovl9;
    if (tmp->unk3B != 2) {
        func_800A9EA4(0x10128);
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    }
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.5f;
    D_800E3C90[omCurrentObj->objId] = D_8021D9B8_ovl9;
    curObjSleepForever();
}

void func_801FE100_ovl9(s32 arg0) {

}

extern f32 D_8021D9BC_ovl9;
extern void func_80199628_ovl7(struct GObj *);

void func_801FE108_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021D9BC_ovl9;
    if (tmp->unk3B == 2) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        D_800E9C60[omCurrentObj->objId] = 1;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    }
    tmp->unk3B = -1;
    func_80199628_ovl7(arg0);
}

void func_801FE1EC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (gEntityFuncListIDArray[omCurrentObj->objId] == 2) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_8021D9C0_ovl9;
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FD2C0_ovl9);
    } else if (tmp->unk3C == 0) {
        tmp->unk3C = 1;
    }
}

void func_801FE2D8_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C6EC_ovl9);
}

extern FUNCLIST D_8021C6EC_ovl9;
extern s32 D_801CC280;
IN_FILE void func_801FE434_ovl9(void);
void func_801FE320_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    tmp->unk98 = &D_801CC280;
    D_800DF150[omCurrentObj->objId] = func_801FE434_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
    }
    func_801A0D50_ovl7(func_801FE2D8_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C6EC_ovl9);
}

void func_801FE434_ovl9(void) {
    s32 unused; /* dead local is load-bearing: it moves the spill slot to 0x18 */
    s32 temp = func_801A0D74_ovl7();

    func_8019B2C0_ovl7(1);
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, &D_8021C708_ovl9);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

extern s32 D_801CC280;
extern void func_8019BC34_ovl7(f32);
void func_801FE4A8_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC280;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_8019BC34_ovl7(120.0f);
    func_800A9EA4(0x10128);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    curObjSleepForever();
}

extern f32 D_8021D9C4_ovl9;
extern s32 func_8019B260_ovl7(f32);
void func_801FE594_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (func_8019BD38_ovl7() != 0) {
        if (tmp->unk3C == 0) {
            func_80199F1C_ovl7(arg0);
            return;
        }
    }
    if (func_8019A9AC_ovl7(-1.0f, 240.0f) == 3) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_8021D9C4_ovl9;
        func_8019B424_ovl7(arg0);
        if (func_8019B260_ovl7(80.0f) == 1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FE2D8_ovl9);
    }
}

void func_801FE6F4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (gEntityFuncListIDArray[omCurrentObj->objId] == 1) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_8021D9C8_ovl9;
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FE2D8_ovl9);
    } else if (tmp->unk3C == 0) {
        tmp->unk3C = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE7E0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE97C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FEAAC_ovl9.s")

void func_801FEC1C_ovl9(struct GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        D_800E3750[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] * 4.0f;
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_801FD93C_ovl9();
    }
}

extern s32 D_801CC280;

void func_801FECAC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9E20[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC280;
    D_800DDFD0[omCurrentObj->objId] = 6;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    func_800FB914(1);
    func_801AE940_ovl7(2, 60.0f, -28.0f);
    func_800AA864(0x10123, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FE2D8_ovl9(struct GObj *);

void func_801FEDA0_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FE2D8_ovl9);
    }
}

void func_801FEE0C_ovl9(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800A9EA4(0x10127);
    ohSleep(0x3C);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FEE94_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        if (D_800E9E20[omCurrentObj->objId] != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FE2D8_ovl9);
        }
    }
}

void func_801FEF14_ovl9(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800A9EA4(0x10127);
    ohSleep(8);
    func_80199F1C_ovl7(arg0);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FEFA4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (tmp->unk3C == 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FE2D8_ovl9);
        }
    }
}

extern s32 D_801CC2C8;
extern f32 D_8021D9D4_ovl9;
#ifdef MIPS_TO_C
void func_801FF028_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 zero;
    f32 temp;

    tmp->unk98 = &D_801CC2C8;
    D_800DDFD0[omCurrentObj->objId] = 5;
    func_800AECC0(gameTicksPerDraw * 1.5f);
    func_800AED20(gameTicksPerDraw * 1.5f);
    func_800A9EA4(0x10128);
    zero = 0.0f;
    D_800E6690[omCurrentObj->objId] = zero;
    temp = D_8021D9D4_ovl9;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    D_800E3210[omCurrentObj->objId] = zero;
    D_800E3750[omCurrentObj->objId] = -1.5f;
    D_800E3C90[omCurrentObj->objId] = temp;
    curObjSleepForever();
}
#else
extern s32 D_801CC2C8;
extern f32 D_8021D9D4_ovl9;

/* 6 diffs: pure $f0/$f2 swap between the shared 0.0f and D_8021D9D4_ovl9.
   Swept: literal vs local for either constant, both statement orders, and
   declaration order. This is the coupled FP-register/load-scheduling floor. */
#ifdef MIPS_TO_C
void func_801FF028_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 temp;

    tmp->unk98 = &D_801CC2C8;
    D_800DDFD0[omCurrentObj->objId] = 5;
    func_800AECC0(gameTicksPerDraw * 1.5f);
    func_800AED20(gameTicksPerDraw * 1.5f);
    func_800A9EA4(0x10128);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp = D_8021D9D4_ovl9;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.5f;
    D_800E3C90[omCurrentObj->objId] = temp;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF028_ovl9.s")
#endif
#endif

void func_801FF17C_ovl9(s32 arg0) {

}

extern FUNCLIST D_8021C724_ovl9;

void func_801FF184_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C724_ovl9);
}

void func_801FF1C8_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C72C_ovl9);
}

extern s32 D_801CC2EC;
IN_FILE void func_801FF2D0_ovl9(struct GObj *);
extern FUNCLIST D_8021C72C_ovl9;

void func_801FF210_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    tmp->unk98 = &D_801CC2EC;
    D_800DF150[omCurrentObj->objId] = func_801FF2D0_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_801FF1C8_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C72C_ovl9);
}

void func_801FF2D0_ovl9(struct GObj *arg0) {
    s32 unused; /* load-bearing: puts the spill of `v` at 0x18 */
    s32 v = func_801A0D74_ovl7();

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8019B424_ovl7(arg0);
    }
    if (v == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C738_ovl9);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

extern f32 D_8021D9D8_ovl9;
void func_801FF368_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8021D9D8_ovl9;
    tmp->unk98 = &D_801CC2EC;
    func_800A9EA4(0x10158);
    func_800A9EA4(0x10159);
    curObjSleepForever();
}

void func_801FF444_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        if (func_8019A9AC_ovl7(240.0f, 640.0f) == 3) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FF1C8_ovl9);
        }
    }
}

void func_801FF4E8_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            func_801ACCA0_ovl7(0x13, 0, 20.0f, 0.0f);
            play_sound(0xA9);
        }
    }
}

IN_FILE void func_801FF4E8_ovl9(s32, s32, f32);
void func_801FF53C_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AECC0(gameTicksPerDraw * 2.0f);
    func_800AED20(gameTicksPerDraw * 2.0f);
    func_800A9EA4(0x1014D);
    func_800AA864(0x1014C, 1);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x1014F);
    func_800A9EA4(0x1014E);
    D_800DF310[omCurrentObj->objId] = func_801FF4E8_ovl9;
    func_800AF27C();
    func_800AECC0(gameTicksPerDraw * 1.5f);
    func_800AED20(gameTicksPerDraw * 1.5f);
    func_800A9EA4(0x10157);
    func_800AA864(0x10156, 1);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FF1C8_ovl9(struct GObj *);

void func_801FF6B4_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FF1C8_ovl9);
    }
}

void func_801FF720_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800A9EA4(0x1015F);
    func_800A9EA4(0x1015E);
    func_800A9EA4(0x10159);
    func_800AA864(0x10158, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FF7E0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        if (D_800E9E20[omCurrentObj->objId] != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FF1C8_ovl9);
        }
    }
}

void func_801FF860_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C744_ovl9);
}

extern s32 D_801CC310;
extern void func_8019BC34_ovl7(f32);
extern FUNCLIST D_8021C744_ovl9;
IN_FILE void func_801FF974_ovl9(void);
IN_FILE void func_801FF860_ovl9(struct GObj *);
void func_801FF8A8_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC310;
    D_800DF150[omCurrentObj->objId] = func_801FF974_ovl9;
    func_8019BC34_ovl7(80.0f);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_801FF860_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C744_ovl9);
}

void func_801FF974_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C750_ovl9);
    }
    func_8019C9B0_ovl7(20.0f, 9);
    func_8019F3B0_ovl7();
}

extern f32 D_8021D9DC_ovl9;
void func_801FF9DC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8021D9DC_ovl9;
    tmp->unk98 = &D_801CC310;
    func_800A9EA4(0x10158);
    func_800A9EA4(0x10159);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FFAD0_ovl9.s")

void func_801FFC60_ovl9(void) {
    s32 unused;
    f32 sp20[3];

    if (ABSF(D_800E64D0[omCurrentObj->objId]) < 0.5f) {
        sp20[0] = 4.0f;
        sp20[1] = 0.0;
        sp20[2] = 4.0f;
        func_8019C844_ovl7(sp20);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FFCE8_ovl9.s")

IN_FILE void func_801FF860_ovl9(struct GObj *);
void func_801FFE78_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 sp20[3];

    if (tmp->unk3C != 0) {
        sp20[0] = 0.0f;
        sp20[1] = 0.0f;
        sp20[2] = 4.0f;
        func_8019C844_ovl7(sp20);
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FF860_ovl9);
    }
}


void func_801FFF2C_ovl9(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_8019BC34_ovl7(80.0f);
    func_800A9EA4(0x1015F);
    func_800A9EA4(0x1015E);
    func_800A9EA4(0x10159);
    func_800A9EA4(0x10158);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    ohSleep(60);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

extern void func_8019C71C_ovl7(f32);
void func_801FFC60_ovl9(void);
void func_801FF860_ovl9(struct GObj *);

void func_8020001C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    Vector sp20;

    if (0.0f == D_800E6690[omCurrentObj->objId]) {
        if (tmp->unk3C == 0) {
            func_8019C71C_ovl7(-0.25f);
        } else {
            sp20.x = 4.0f;
            sp20.z = 4.0f;
            /* load-bearing: the DOUBLE literal forks the second mtc1 $zero */
            sp20.y = 0.0;
            func_8019C844_ovl7(&sp20);
        }
    } else {
        func_801FFC60_ovl9();
    }
    if (tmp->unk3C == 0) {
        if (D_800E9E20[omCurrentObj->objId] != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FF860_ovl9);
        }
    }
}

extern FUNCLIST D_8021C75C_ovl9;

void func_80200124_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C75C_ovl9);
}

void func_80200168_ovl9(void) {
    struct DObj *temp = D_800DFBD0[omCurrentObj->objId][18];
    struct Ovl9AnimObj *obj;

    func_80111550(omCurrentObj->objId);
    obj = func_80111C88(&D_801C8FEC, omCurrentObj->objId);
    obj->unk24->unk8 = temp;
    func_80111ECC(obj);
    func_801A0C70_ovl7();
}

void func_802001DC_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C760_ovl9);
}

extern s32 D_801CC334;
IN_FILE void func_802002F4_ovl9(void);
IN_FILE void func_8020034C_ovl9(struct GObj *);
IN_FILE void func_8020059C_ovl9(struct GObj *);
void func_80200224_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    tmp->unk98 = &D_801CC334;
    D_800DF150[omCurrentObj->objId] = func_802002F4_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_802001DC_ovl9);
    func_8020034C_ovl9(arg0);
    func_8020059C_ovl9(arg0);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C760_ovl9);
}

void func_802002F4_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C770_ovl9);
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_8020034C_ovl9.s")

void func_802004B8_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10185);
    curObjSleepForever();
}

void func_80200504_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        if (func_8019A7E8_ovl7(200.0f) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802001DC_ovl9);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_8020059C_ovl9.s")

void func_802006F0_ovl9(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    play_sound(0x166);
    func_800AA864(0x10183, 1);
    func_800AA018(0x10180);
    play_sound(0x15E);
    D_800E64D0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

extern f32 D_8021D9EC_ovl9;

#ifdef MIPS_TO_C
// 6 diffs: $f12/$f14 are swapped between the 0.0f of ABSF and D_8021D9EC_ovl9.
void func_80200810_ovl9(struct GObj *arg0) {
    if ((D_800E9E20[omCurrentObj->objId] != 0) &&
        (ABSF(D_800E3210[omCurrentObj->objId]) < D_8021D9EC_ovl9) &&
        (ABSF(D_800E64D0[omCurrentObj->objId]) < D_8021D9EC_ovl9)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802001DC_ovl9);
    } else {
        func_80200168_ovl9();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200810_ovl9.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200908_ovl9.s")

void func_80200A88_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    ohSleep(8);
    D_800E64D0[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId];
    curObjSleepForever();
}

void func_80200B84_ovl9(void) {
    if (func_80200908_ovl9() != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802001DC_ovl9);
    } else {
        func_80200168_ovl9();
    }
}

void func_80200BF8_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            D_800E5F90[omCurrentObj->objId] = tmp->unk2C;
            D_800E6BD0[omCurrentObj->objId] = tmp->unk28;
            gEntitiesNextPosYArray[omCurrentObj->objId] = tmp->unk4;
        }
    }
}

void func_80200BF8_ovl9(s32, s32, f32);

void func_80200C80_ovl9(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA018(0x10184);
    D_800DF310[omCurrentObj->objId] = func_80200BF8_ovl9;
    func_800AF27C();
    func_800AA864(0x10185, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80200DA4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        if (D_800E9E20[omCurrentObj->objId] != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802001DC_ovl9);
        }
    }
}

void func_80200E24_ovl9(struct GObj *arg0) {
    if (D_800E0D50[omCurrentObj->objId] == 0) {
        arg0->onAnimate = NULL;
        func_800A2300(arg0);
    }
}

extern FUNCLIST D_8021C780_ovl9;

void func_80200E68_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C780_ovl9);
}

void func_80200EAC_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C784_ovl9);
}

extern s32 D_801CC358;
extern FUNCLIST D_8021C784_ovl9;
IN_FILE void func_80201008_ovl9(struct GObj *);
IN_FILE void func_80200EAC_ovl9(struct GObj *);
void func_80200EF4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk42 = 2;
    *(s8 *) &tmp->unk38 = -1;
    tmp->unk39 = -1;
    tmp->unk98 = &D_801CC358;
    D_800DF150[omCurrentObj->objId] = func_80201008_ovl9;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_80200EAC_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C784_ovl9);
}


extern FUNCLIST D_8021C794_ovl9;
IN_FILE void func_80201168_ovl9(void);
IN_FILE void func_80201404_ovl9(void);
void func_80201008_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    s32 v = func_801A0D74_ovl7();
    s32 *p;

    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        func_80201168_ovl9();
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_80201404_ovl9();
    }
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        p = &D_800E9FE0[omCurrentObj->objId].as_s32;
        if (*p == 0) {
            func_8019B424_ovl7(arg0);
            if (tmp->unk3C == 1) {
                D_800E9FE0[omCurrentObj->objId].as_s32 = 0x14;
            }
        } else {
            *p = *p - 1;
        }
    }
    if (v == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C794_ovl9);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80201168_ovl9.s")

void func_80201404_ovl9(void) {
    f32 v = D_800E3210[omCurrentObj->objId];
    f32 a = (v < 0.0f) ? -v : v;

    if (D_800E3C90[omCurrentObj->objId] <= a) {
        D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
    }
}

void func_80201478_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800EA1A0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC358;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x101A7);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    curObjSleepForever();
}

void func_80200EAC_ovl9(struct GObj *);

void func_80201540_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        if (func_8019A7E8_ovl7(320.0f) != 0) {
            if (func_8019A9AC_ovl7(-1.0f, 120.0f) == 3) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            } else {
                gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80200EAC_ovl9);
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
            D_800EA1A0[omCurrentObj->objId] = 1;
        }
    }
}

void func_8020165C_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            play_sound(0x15C);
            func_802016A8_ovl9();
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_802016A8_ovl9.s")

IN_FILE void func_8020165C_ovl9(s32, s32, f32);
void func_802017F0_ovl9(struct GObj *arg0) {
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800A9EA4(0x101A6);
    D_800DF310[omCurrentObj->objId] = func_8020165C_ovl9;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80200EAC_ovl9(struct GObj *);

void func_802018C0_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80200EAC_ovl9);
    }
}

void func_8020192C_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            play_sound(0x16D);
            func_801ACCA0_ovl7(0x16, 0, 10.0f, -34.0f);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80201984_ovl9.s")

void func_80200EAC_ovl9(struct GObj *);

void func_80201B2C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80200EAC_ovl9);
    }
}

extern s32 func_8019A900_ovl7(s32 *);
void func_80201B98_ovl9(void) {
    s32 unused;
    s32 sp38;
    if (func_8019A900_ovl7(&sp38) != 0) {
        if ((f32) sp38 != D_800E6A10[omCurrentObj->objId]) {
            D_800E6A10[omCurrentObj->objId] = sp38;
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * ABSF(D_800E64D0[omCurrentObj->objId]);
        }
    }
}


extern void func_800B658C(struct GObj *);
void func_80201C44_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B658C;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA864(0x101A7, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80200EAC_ovl9(struct GObj *);

void func_80201D10_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80200EAC_ovl9);
    }
}

void func_80201D7C_ovl9(struct GObj *arg0) {
    if (D_800E7880[omCurrentObj->objId] != 0xFF) {
        if (D_800E83E0[omCurrentObj->objId] == 3) {
            func_801AE7E0_ovl7(3);
        }
    }
}

