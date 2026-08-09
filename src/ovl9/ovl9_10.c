#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern void func_8019B424_ovl7();
extern FUNCLIST D_8021C864_ovl9;
void func_80202CB4_ovl9(void);
void func_8020358C_ovl9(void);
void func_802048F4_ovl9(void);

extern void func_800B79F4(struct GObj *);
extern f32 D_8021DA4C_ovl9;
extern f32 D_8021DA70_ovl9;
extern FUNCLIST D_8021C7E0_ovl9;
extern FUNCLIST D_8021C7F4_ovl9;
extern FUNCLIST D_8021C810_ovl9;
extern FUNCLIST D_8021C840_ovl9;

extern s32 eneCheckAboveBelowPlayer(void);
extern s32 func_8019A9AC_ovl7(f32, f32);
void func_8020705C_ovl9();

extern f32 D_8021DA64_ovl9;
extern f32 D_8021DA80_ovl9;
extern s32 random_soft_s32_range(s32);
extern FUNCLIST D_8021C884_ovl9;
extern FUNCLIST D_8021C8B4_ovl9;
void func_80204278_ovl9(void);

extern void func_800B6A2C(struct GObj *);
extern void func_8019B164_ovl7(void);
extern void func_8019BC34_ovl7(f32);
void func_802051D4_ovl9(void);
void func_8020554C_ovl9(struct GObj *);
void func_802063AC_ovl9(struct GObj *);

extern void func_8019D4D0_ovl7(f32, s32);
extern void func_8019F3D0_ovl7(void);
extern FUNCLIST D_8021C854_ovl9;

extern void eneTurnCommon(s32);
extern void func_800B3520(void);
extern void func_800A9EA4(s32);
extern FUNCLIST D_8021C7C0_ovl9;
extern FUNCLIST D_8021C7D8_ovl9;

extern s32 func_801A0D74_ovl7(void);
extern void func_8019F3B0_ovl7(void);
extern s32 func_8019BD38_ovl7(void);
extern void func_80199F1C_ovl7(struct GObj *);
extern FUNCLIST D_8021C830_ovl9;

void func_802052E8_ovl9(void);
void func_80205A4C_ovl9(void);

extern s32 D_801CC37C;
extern s32 D_801CC3A0;
extern f32 D_8021DA40_ovl9;
extern f32 D_8021DA48_ovl9;
extern f32 D_8021DA68_ovl9;
extern f32 D_8021DA6C_ovl9;
extern s32 D_801CC454;
extern s32 D_801CC4E4;
extern f32 D_8021DA50_ovl9;

extern f32 D_8021DA90_ovl9;
extern f32 D_8021DAAC_ovl9;

extern FUNCLIST D_8021C7B4_ovl9;
extern FUNCLIST D_8021C7D0_ovl9;
extern FUNCLIST D_8021C7E8_ovl9;
extern FUNCLIST D_8021C800_ovl9;
extern FUNCLIST D_8021C828_ovl9;
extern FUNCLIST D_8021C838_ovl9;
extern FUNCLIST D_8021C83C_ovl9;
extern FUNCLIST D_8021C844_ovl9;
extern FUNCLIST D_8021C86C_ovl9;
extern FUNCLIST D_8021C89C_ovl9;

extern FUNCLIST D_8021C7B0_ovl9;
void func_800B6B8C(struct GObj *);

void func_80201DE0_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C7B0_ovl9);
}

void func_80201E40_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C7B4_ovl9);
}

IN_FILE void func_80201F94_ovl9();
IN_FILE void func_80201E40_ovl9();
void func_80201E88_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC37C;
    D_800DF150[omCurrentObj->objId] = func_80201F94_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    } else {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
    func_801A0D50_ovl7(func_80201E40_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C7B4_ovl9);
}

void func_80201F94_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C7C0_ovl9);
    }
    eneTurnCommon(0x18);
    func_8019F3B0_ovl7();
}

void func_80201FF4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 temp;

    tmp->unk98 = &D_801CC37C;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800A9EA4(0x101E5);
    temp = D_8021DA40_ovl9;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * temp;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = temp;
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_802020F4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (func_8019BD38_ovl7() != 0) {
        if (tmp->unk3C == 0) {
            func_80199F1C_ovl7(arg0);
        }
    }
}

void func_80202150_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
            func_8019B164_ovl7();
            func_8019BC34_ovl7(80.0f);
        }
    }
}

extern void func_800AA018(s32);
extern void func_800AF27C(void);
extern f32 D_8021DA44_ovl9;

void func_802021C4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9E20[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC37C;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8021DA44_ovl9;
    func_800AA018(0x101E3);
    D_800DF310[omCurrentObj->objId] = func_80202150_ovl9;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80201E40_ovl9(struct GObj *);

void func_802022DC_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80201E40_ovl9);
    }
}

void func_80202348_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    tmp->unk98 = &D_801CC3A0;
    tmp->unk3C = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800A9EA4(0x101E0);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021DA48_ovl9;
    D_800E3210[omCurrentObj->objId] = -1.0f;
    curObjSleepForever();
}

void func_80202464_ovl9(s32 arg0) {

}

extern FUNCLIST D_8021C7CC_ovl9;

void func_8020246C_ovl9(struct GObj *arg0) {
    if (D_800E7880[omCurrentObj->objId] == 1) {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    if (D_800E7880[omCurrentObj->objId] == 2) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    }
    D_800E7880[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C7CC_ovl9);
}

void func_80202518_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021C7D0_ovl9);
}

extern s32 D_801CC3C4;
IN_FILE void func_80202654_ovl9();
IN_FILE void func_80202518_ovl9();
void func_80202560_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC3C4;
    D_800DF150[omCurrentObj->objId] = func_80202654_ovl9;
    D_800E8920[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_80202518_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021C7D0_ovl9);
}

void func_80202654_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021C7D8_ovl9);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

void func_802026B4_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 6;
    func_800A9EA4(0x1022B);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 3.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 1.0f;
    curObjSleepForever();
}

void func_802027B8_ovl9(struct GObj *arg0) {
    s32 dir;

    if (D_800E9720[omCurrentObj->objId] == 0) {
        dir = (gEntitiesNextPosYArray[0] + 20.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) ? -1 : 1;
        D_800E3210[omCurrentObj->objId] = dir;
        D_800E9720[omCurrentObj->objId] = 6;
    } else {
        D_800E9720[omCurrentObj->objId] -= 1;
    }
}

void func_8020285C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -3.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.125f;
    curObjSleepForever();
}

void func_802028F4_ovl9(struct GObj *arg0) {
    if (ABSF(D_800E64D0[omCurrentObj->objId]) < ABSF(D_800E6690[omCurrentObj->objId])) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
        D_800E6690[omCurrentObj->objId] = 0.0;
        D_800E6850[omCurrentObj->objId] = 3.0f;
        func_80199F1C_ovl7(arg0);
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80202518_ovl9);
    }
}

void func_80202A08_ovl9(struct GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
}

void func_80202A4C_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_8021DA4C_ovl9;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C7E0_ovl9);
}

void func_80202AD8_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C7E8_ovl9);
}

extern s32 D_801CC3E8;
IN_FILE void func_80202C28_ovl9();
IN_FILE void func_80202AD8_ovl9();
void func_80202B20_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC3E8;
    D_800DF150[omCurrentObj->objId] = func_80202C28_ovl9;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_80202AD8_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C7E8_ovl9);
}

void func_80202C28_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C7F4_ovl9);
    }
    func_8019D4D0_ovl7(10.0f, 6);
    if (D_800E9C60[omCurrentObj->objId] == 0) {
        func_8019F3D0_ovl7();
    }
}

void func_80202CB4_ovl9(void) {
    if (D_800E83E0[omCurrentObj->objId] == 0xA) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80202AD8_ovl9);
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8021DA50_ovl9;
        D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    }
}

void func_80202D94_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x101E6);
    D_800E3210[omCurrentObj->objId] = 1.0f;
    D_800E3750[omCurrentObj->objId] = -0.125f;
    D_800E3C90[omCurrentObj->objId] = 1.0f;
    curObjSleepForever();
}

void func_80202E30_ovl9(void) {
    f32 v = D_800E3210[omCurrentObj->objId];
    f32 a = (v < 0.0f) ? -v : v;

    if (D_800E3C90[omCurrentObj->objId] <= a) {
        D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
    }
    func_8019B424_ovl7();
    func_80202CB4_ovl9();
}

extern void func_800AA864(s32, s32);
extern void func_800A9760(s32);

void func_80202EC4_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -4.0f;
    D_800E3C90[omCurrentObj->objId] = 4.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
    ohSleep(0xF);
    func_800A9760(0x10046);
    func_800A9EA4(0x101EB);
    func_800AA864(0x101EA, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80202FE0_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_800B3520();
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80202AD8_ovl9);
    } else if (D_800E3C90[omCurrentObj->objId] <= ABSF(D_800E3210[omCurrentObj->objId])) {
        D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
    }
}

void func_802030CC_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9720[omCurrentObj->objId] = 0x78;
    func_800A9760(0x10047);
    func_800A9EA4(0x101EE);
    func_800A9EA4(0x101ED);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 3.0f;
    D_800E3C90[omCurrentObj->objId] = 3.0f;
    curObjSleepForever();
}

/* 88/118 diffs, first 30 instructions exact (frame 0x50, Vector at 0x2C, the
   sp44/sp48 out-param pair and the tmp spill at 0x4C all land correctly with
   `tmp` declared FIRST and two pad words).  Residue is basic-block shape: IDO
   emits `bgtzl` into the big block where the ROM has `bgtz` + nop and hoists
   the `lwc1 0x48($sp)` above the branch.  Swept with no effect: pad count 0-4,
   if/else vs early return vs goto, `!(x > 0)`, dropping the sp38 copy, an
   empty do-block before the branch. */
#ifdef MIPS_TO_C
extern f32 D_8021DA54_ovl9;
extern s32 func_8019A900_ovl7(s32 *);
extern f32 eneGetPlayerHeight(void);
extern void func_801A6DF0_ovl7(struct GObj *);
extern Vector *lbvector_Rotate(Vector *, s32, f32);
extern f32 atan2f(f32, f32);

void func_802031D4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 sp48;
    s32 sp44;
    s32 pad0;
    s32 pad1;
    f32 sp38;
    Vector sp2C;

    D_800E9720[omCurrentObj->objId] -= 1;
    func_8019A900_ovl7(&sp44);
    sp38 = sp48;
    if (D_800E9720[omCurrentObj->objId] <= 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A6DF0_ovl7);
        D_800E9C60[omCurrentObj->objId] = 1;
    } else {
        sp2C.z = 0.0f;
        sp2C.y = 0.0f;
        sp2C.x = D_8021DA54_ovl9;
        lbvector_Rotate(&sp2C, 4, atan2f(eneGetPlayerHeight() - gEntitiesNextPosYArray[omCurrentObj->objId], sp38));
        D_800E6690[omCurrentObj->objId] = sp2C.x;
        D_800E3750[omCurrentObj->objId] = sp2C.y;
        if (tmp->unk3C == 0) {
            if ((f32) sp44 != D_800E6A10[omCurrentObj->objId]) {
                if (ABSF(D_800E64D0[omCurrentObj->objId]) < 1.0f) {
                    func_80199F1C_ovl7(arg0);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802031D4_ovl9.s")
#endif

void func_802033B0_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C800_ovl9);
}

extern s32 D_801CC40C;
IN_FILE void func_80203500_ovl9();
IN_FILE void func_802033B0_ovl9();
void func_802033F8_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC40C;
    D_800DF150[omCurrentObj->objId] = func_80203500_ovl9;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_802033B0_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C800_ovl9);
}

void func_80203500_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C810_ovl9);
    }
    func_8019D4D0_ovl7(10.0f, 6);
    if (D_800E9C60[omCurrentObj->objId] == 0) {
        func_8019F3D0_ovl7();
    }
}

extern f32 D_8021DA58_ovl9;
extern f32 D_8021DA5C_ovl9;
void func_802033B0_ovl9(struct GObj *);

void func_8020358C_ovl9(void) {
    if (D_800E83E0[omCurrentObj->objId] == 0xA) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802033B0_ovl9);
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8021DA58_ovl9;
        D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    } else if (D_800E6A10[omCurrentObj->objId] == D_800E6A10[0]) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802033B0_ovl9);
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8021DA5C_ovl9;
        D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
    }
}

extern void func_800A9760(s32);
extern void func_800AA864(s32, s32);

void func_80203734_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B3520();
    func_800A9760(0x10045);
    func_800A9EA4(0x101E6);
    D_800E3210[omCurrentObj->objId] = 1.0f;
    D_800E3750[omCurrentObj->objId] = -0.125f;
    D_800E3C90[omCurrentObj->objId] = 1.0f;
    curObjSleepForever();
}

void func_802037E0_ovl9(void) {
    f32 v = D_800E3210[omCurrentObj->objId];
    f32 a = (v < 0.0f) ? -v : v;

    if (D_800E3C90[omCurrentObj->objId] <= a) {
        D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
    }
    func_8019B424_ovl7();
    func_8020358C_ovl9();
}

void func_80203874_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 1) {
        D_800E3210[omCurrentObj->objId] = 4.0f;
        D_800E3750[omCurrentObj->objId] = -4.0f;
        D_800E3C90[omCurrentObj->objId] = 4.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
        ohSleep(0xF);
    }
    func_800A9760(0x10046);
    func_800A9EA4(0x101EB);
    func_800AA864(0x101EA, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_802039A4_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_800B3520();
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802033B0_ovl9);
    } else if (D_800E3C90[omCurrentObj->objId] <= ABSF(D_800E3210[omCurrentObj->objId])) {
        D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
    }
}

void func_80203A90_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    if (D_800E9720[omCurrentObj->objId] <= 0) {
        D_800E9720[omCurrentObj->objId] = 0x78;
    }
    func_800A9760(0x10047);
    func_800A9EA4(0x101EE);
    func_800A9EA4(0x101ED);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 3.0f;
    D_800E3C90[omCurrentObj->objId] = 3.0f;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80203BA8_ovl9.s")

void func_80203DFC_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800B3520();
    func_800A9760(0x10046);
    func_800A9EA4(0x101E9);
    func_800AA864(0x101E8, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80203E9C_ovl9(struct GObj *arg0) {
    func_800B3520();
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802033B0_ovl9);
    }
}

void func_80203F0C_ovl9(struct GObj *arg0) {
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8021DA64_ovl9;
    D_800E8920[omCurrentObj->objId] = 0;
}

extern FUNCLIST D_8021C820_ovl9;

void func_80203F84_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C820_ovl9);
}

void func_80203FC8_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021C828_ovl9);
}

extern s32 D_801CC430;
void func_8020412C_ovl9(void);

void func_80204010_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    tmp->unk98 = &D_801CC430;
    D_800DF150[omCurrentObj->objId] = func_8020412C_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    }
    func_801A0D50_ovl7(func_80203FC8_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021C828_ovl9);
}

void func_8020412C_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021C830_ovl9);
    }
    func_8019F3B0_ovl7();
}

extern s32 D_801CC430;
extern void func_800B3520(void);
extern void func_800A9EA4(s32);

void func_80204184_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC430;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800B3520();
    if (((u32) D_800DD8D0[omCurrentObj->objId] >> 30) == 0) {
        do {
            ohSleep(1);
        } while ((D_800DD8D0[omCurrentObj->objId] & 0xC0000000) == 0);
    }
    func_800B3520();
    func_800A9EA4(0x10224);
    curObjSleepForever();
}

void func_80204270_ovl9(s32 arg0) {

}

void func_80204278_ovl9(void) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C != 0) {
        tmp->unk3C = 0;
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    if (random_soft_s32_range(2) == 0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.125f;
}

void func_80204360_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC454;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10223);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_8021DA68_ovl9;
    D_800E6850[omCurrentObj->objId] = 1.0f;
    D_800E3C90[omCurrentObj->objId] = D_8021DA6C_ovl9;
    curObjSleepForever();
}

void func_80204484_ovl9(struct GObj *arg0) {
    s32 *p = &D_800E9720[omCurrentObj->objId];

    if (*p == 0) {
        func_80204278_ovl9();
        D_800E9720[omCurrentObj->objId] = random_soft_s32_range(0x10) + 0x10;
    } else {
        *p = *p - 1;
    }
}

void func_80204500_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C838_ovl9);
}

extern void func_801A3280_ovl7(void);
void func_802045F8_ovl9(GObj *);

void func_80204548_ovl9(void) {
    D_800DF150[omCurrentObj->objId] = func_802045F8_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7();
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A3280_ovl7();
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C838_ovl9);
}

void func_802045F8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021C83C_ovl9);
}

void func_80204640_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10224);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_802046BC_ovl9(s32 arg0) {

}

void func_802046C4_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_8021DA70_ovl9;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C840_ovl9);
}

void func_80204750_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C844_ovl9);
}

extern s32 D_801CC478;
extern FUNCLIST D_8021C844_ovl9;
IN_FILE void func_8020488C_ovl9();
IN_FILE void func_80204750_ovl9();
void func_80204798_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC478;
    D_800DF150[omCurrentObj->objId] = func_8020488C_ovl9;
    D_800E8920[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_80204750_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C844_ovl9);
}

void func_8020488C_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C854_ovl9);
    }
    func_8019D4D0_ovl7(10.0f, 6);
    func_8019F3D0_ovl7();
}

extern f32 D_8021DA74_ovl9;
extern f32 D_8021DA78_ovl9;
extern s32 func_8019A7E8_ovl7(f32);

void func_802048F4_ovl9(void) {
    if (D_800E83E0[omCurrentObj->objId] == 0xA) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80204750_ovl9);
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8021DA74_ovl9;
    } else if (func_8019A7E8_ovl7(480.0f) != 0) {
        if (D_800E6A10[omCurrentObj->objId] == D_800E6A10[0]) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80204750_ovl9);
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = D_8021DA78_ovl9;
        }
    }
}

void func_80204A90_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10236);
    func_800A9EA4(0x10235);
    D_800E3210[omCurrentObj->objId] = 1.0f;
    D_800E3750[omCurrentObj->objId] = -0.125f;
    D_800E3C90[omCurrentObj->objId] = 1.0f;
    curObjSleepForever();
}

void func_80204B38_ovl9(void) {
    f32 v = D_800E3210[omCurrentObj->objId];
    f32 a = (v < 0.0f) ? -v : v;

    if (D_800E3C90[omCurrentObj->objId] <= a) {
        D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
    }
    func_8019B424_ovl7();
    func_802048F4_ovl9();
}

void func_80204BCC_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800B3520();
    func_800A9EA4(0x10232);
    func_800A9EA4(0x10231);
    curObjSleepForever();
}

void func_80204C2C_ovl9(struct GObj *arg0) {
    if (D_800E83E0[omCurrentObj->objId] != 0xA) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80204750_ovl9);
    }
}

void func_80204C98_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 2.5f;
    D_800E3C90[omCurrentObj->objId] = 2.5f;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204D5C_ovl9.s")

void func_80204F80_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800B3520();
    ohSleep(0x14);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80204750_ovl9(struct GObj *);

void func_80205000_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80204750_ovl9);
    }
}

void func_8020506C_ovl9(struct GObj *arg0) {
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8021DA80_ovl9;
    D_800E8920[omCurrentObj->objId] = 0;
}

struct Ovl9_10AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[0x10];
    f32 unk14;
    u8 filler18[8];
};

#ifdef MIPS_TO_C
// 13 diffs: structurally exact; the ROM's pointer locals sit one register slot
// later than IDO places them (see func_802052E8_ovl9).
void func_802050E4_ovl9(struct Ovl9_10AnimInfo *arg0) {
    struct DObj *a = D_800DFBD0[omCurrentObj->objId][1];
    struct DObj *b = D_800DFBD0[omCurrentObj->objId][2];
    struct DObj *c = D_800DFBD0[omCurrentObj->objId][3];
    struct DObj *d = D_800DFBD0[omCurrentObj->objId][4];

    a->pos.v.y = arg0->unk14 - gEntitiesNextPosYArray[omCurrentObj->objId];
    b->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId] - arg0->unk14;
    c->pos.v.y = D_800EB320[omCurrentObj->objId] - gEntitiesNextPosYArray[omCurrentObj->objId];
    d->pos.v.y = arg0->unk14 - D_800EB320[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = arg0->unk14;
    D_800EA1A0[omCurrentObj->objId] = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802050E4_ovl9.s")
#endif

struct Ovl9_10AnimCmdA {
    u8 filler0[0x10];
    f32 unk10;
    u8 filler14[8];
    f32 unk1C;
};

struct Ovl9_10AnimCmdB {
    u8 filler0[8];
    struct DObj *unk8;
    u8 fillerC[0x10];
    f32 unk1C;
};

struct Ovl9_10AnimObj {
    u8 filler0[0x1C];
    struct Ovl9_10AnimCmdA *unk1C;
    u8 filler20[4];
    struct Ovl9_10AnimCmdB *unk24;
};

extern s32 D_801C90A0;
/* the (void *) parameter is load-bearing: it forces `or $a0, $v1, $zero` */
void func_80111550(void *);
struct Ovl9_10AnimObj *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl9_10AnimObj *);
s32 func_80110150(struct Ovl9_10AnimInfo *);
s32 func_80110B00(struct Ovl9_10AnimInfo *);
s32 func_80110FD4(struct Ovl9_10AnimInfo *);

void func_802051D4_ovl9(void) {
    struct DObj *a;
    struct DObj *b;
    struct Ovl9_10AnimInfo sp30;
    struct Ovl9_10AnimObj *p;
    f32 t;
    s32 r;

    a = D_800DFBD0[omCurrentObj->objId][3];
    b = D_800DFBD0[omCurrentObj->objId][4];
    t = (a->pos.v.y < 0.0f) ? -a->pos.v.y : a->pos.v.y;
    func_80111550((void *) omCurrentObj->objId);
    p = func_80111C88(&D_801C90A0, omCurrentObj->objId);
    p->unk1C->unk1C = t;
    p->unk1C->unk10 = t * 0.5f;
    p->unk24->unk8 = b;
    p->unk24->unk1C = a->pos.v.y;
    func_80111ECC(p);
    r = func_80110B00(&sp30);
    if (r == 0) {
        r = func_80110150(&sp30);
        if (r == 0) {
            r = func_80110FD4(&sp30);
        }
    }
    if (r != 0 && sp30.unk2 != 0xA) {
        func_802050E4_ovl9(&sp30);
    }
}

#ifdef MIPS_TO_C
// 11/30 diffs: structurally exact, but the ROM keeps objId<<2 in $v0 and `a`
// in $v1 while IDO swaps them. Declaration order/count has no effect; also
// swept with no improvement: a `struct DObj **arr` base local plus inline
// indices (23) or plus two locals (14), swapped declaration order (13),
// inlining both element expressions (30), and assignment statements instead
// of initializers (11). No call in the function, so the callee-return-type
// lever does not apply.
void func_802052E8_ovl9(void) {
    struct DObj *a = D_800DFBD0[omCurrentObj->objId][3];
    struct DObj *b = D_800DFBD0[omCurrentObj->objId][4];

    a->pos.v.y = D_800EB320[omCurrentObj->objId] - gEntitiesNextPosYArray[omCurrentObj->objId];
    b->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId] - D_800EB320[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802052E8_ovl9.s")
#endif

#ifdef MIPS_TO_C
// 20 diffs: structurally exact; the ROM keeps objId<<2 in $v0 and `a` in $v1
// while IDO swaps them (same residue as func_802052E8_ovl9).
void func_80205360_ovl9(void) {
    struct DObj *a = D_800DFBD0[omCurrentObj->objId][1];
    struct DObj *b = D_800DFBD0[omCurrentObj->objId][2];
    struct DObj *c = D_800DFBD0[omCurrentObj->objId][3];
    struct DObj *d = D_800DFBD0[omCurrentObj->objId][4];

    a->pos.v.y = (D_800EA6E0[omCurrentObj->objId] - gEntitiesNextPosYArray[omCurrentObj->objId]) - D_800EAFA0[omCurrentObj->objId];
    b->pos.v.y = -a->pos.v.y;
    c->pos.v.y = D_800EB320[omCurrentObj->objId] - gEntitiesNextPosYArray[omCurrentObj->objId];
    d->pos.v.y = (D_800EA6E0[omCurrentObj->objId] - D_800EB320[omCurrentObj->objId]) + D_800EB160[omCurrentObj->objId];
    if (a->pos.v.y < 0.0f) {
        a->pos.v.y = 0.0f;
    }
    if (0.0f < d->pos.v.y) {
        d->pos.v.y = 0.0f;
    }
    D_800EAFA0[omCurrentObj->objId] += 10.0f;
    D_800EB160[omCurrentObj->objId] += 5.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205360_ovl9.s")
#endif

void func_802054B8_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    if (D_800E7880[omCurrentObj->objId]) {
        *(s32 *) &D_800EA520[omCurrentObj->objId] = D_800E7880[omCurrentObj->objId];
        D_800E7880[omCurrentObj->objId] = 1;
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C864_ovl9);
}

void func_8020554C_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021C86C_ovl9);
}

void func_80205738_ovl9(void);
extern s32 D_801CC49C;

void func_80205594_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_80205738_ovl9;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    D_800EB320[omCurrentObj->objId] = tmp->unk4 + 14.0f;
    D_800EA360[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EADE0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    tmp->unk98 = &D_801CC49C;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_8020554C_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021C86C_ovl9);
}

void func_80205738_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021C884_ovl9);
    }
    if (D_800E9C60[omCurrentObj->objId] == 0) {
        func_8019F3D0_ovl7();
    }
}

extern void func_80198880_ovl7(void *);
extern s32 D_801C417C_ovl7;
extern s32 D_801CC49C;

void func_802057B4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 0;
    temp = D_800E7B20[omCurrentObj->objId];
    func_80198880_ovl7(&D_801C417C_ovl7);
    D_800E7B20[omCurrentObj->objId] = temp;
    tmp->unk98 = &D_801CC49C;
    func_801A0D50_ovl7(func_8020554C_ovl9);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    func_800A9EA4(0x10238);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_802058BC_ovl9(struct GObj *arg0) {
    s32 unused; /* load-bearing: puts the spill of `temp` at 0x18 */
    s32 temp = eneCheckAboveBelowPlayer();

    if (func_8019A9AC_ovl7(960.0f, 320.0f) == 3) {
        if (temp != 1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020554C_ovl9);
        }
    }
}

extern s32 D_801C41A0;
extern s32 D_801CC4C0;
extern f32 D_8021DA84_ovl9;

void func_80205944_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 1;
    temp = D_800E7B20[omCurrentObj->objId];
    func_80198880_ovl7(&D_801C41A0);
    D_800E7B20[omCurrentObj->objId] = temp;
    tmp->unk98 = &D_801CC4C0;
    func_801A0D50_ovl7(func_8020554C_ovl9);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.75f;
    D_800E3C90[omCurrentObj->objId] = D_8021DA84_ovl9;
    curObjSleepForever();
}

void func_80205A4C_ovl9(void) {
    func_802051D4_ovl9();
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020554C_ovl9);
    }
}

void func_80205AC0_ovl9(struct GObj *arg0) {
    func_802052E8_ovl9();
    func_80205A4C_ovl9();
}

void func_80205AE8_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800B3520();
    func_800A9EA4(0x10237);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.5f;
    D_800E6850[omCurrentObj->objId] = 1.0f;
    curObjSleepForever();
}

extern f32 D_8021DA88_ovl9;

void func_80205B90_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E83E0[omCurrentObj->objId] != 0xA) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_8021DA88_ovl9;
        D_800E5F90[omCurrentObj->objId] = D_800EA360[omCurrentObj->objId];
        D_800E6BD0[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId];
        gEntitiesNextPosXArray[omCurrentObj->objId] = tmp->unk0;
        gEntitiesNextPosZArray[omCurrentObj->objId] = tmp->unk8;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020554C_ovl9);
    }
    func_80205A4C_ovl9();
    if (D_800E6850[omCurrentObj->objId] <= ABSF(D_800E64D0[omCurrentObj->objId])) {
        D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
    }
}

extern f32 D_8021DA8C_ovl9;

void func_80205D44_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 3;
    temp = D_800E7B20[omCurrentObj->objId];
    func_80198880_ovl7(&D_801C417C_ovl7);
    D_800E7B20[omCurrentObj->objId] = temp;
    tmp->unk98 = &D_801CC49C;
    func_801A0D50_ovl7(func_8020554C_ovl9);
    func_800A9EA4(0x10238);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8021DA8C_ovl9;
    curObjSleepForever();
}

void func_80205E5C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    s32 dir;

    if (D_800E83E0[omCurrentObj->objId] == 0xA) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020554C_ovl9);
    }
    dir = (tmp->unk4 + 40.0f < gEntitiesNextPosYArray[0] + 20.0f) ? 1 : -1;
    if (func_8019A9AC_ovl7(960.0f, 320.0f) != 3 || dir == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020554C_ovl9);
    }
    func_80205A4C_ovl9();
}

void func_80205F94_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 3.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = D_8021DA90_ovl9;
    curObjSleepForever();
}

extern f32 D_8021DA94_ovl9;

void func_80206038_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk4 <= gEntitiesNextPosYArray[omCurrentObj->objId]) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = tmp->unk4;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8021DA94_ovl9;
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020554C_ovl9);
    } else {
        func_802052E8_ovl9();
        func_80205A4C_ovl9();
    }
}

extern s32 D_801C41C4;
extern s32 D_801CB548;
extern f32 D_8021DA98_ovl9;

void func_80206138_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 5;
    temp = D_800E7B20[omCurrentObj->objId];
    func_80198880_ovl7(&D_801C41C4);
    D_800E7B20[omCurrentObj->objId] = temp;
    tmp->unk98 = &D_801CB548;
    func_801A0D50_ovl7(func_8020554C_ovl9);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = D_8021DA98_ovl9;
    curObjSleepForever();
}

void func_80206254_ovl9(s32 arg0) {
    func_80205360_ovl9();
}

extern f32 D_8021DA9C_ovl9;
void func_80199628_ovl7(struct GObj *);

void func_80206274_ovl9(struct GObj *arg0) {
    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
        play_sound(0x256);
    }
    D_800E9FE0[omCurrentObj->objId].as_s32 = D_800E9FE0[omCurrentObj->objId].as_s32 + 1;
    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 3) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8021DA9C_ovl9;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        func_80199628_ovl7(arg0);
    } else {
        D_800E3210[omCurrentObj->objId] = -(D_800E3210[omCurrentObj->objId] * 0.5f);
        D_800E8920[omCurrentObj->objId] = 0;
    }
}

void func_802063AC_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021C89C_ovl9);
}

extern FUNCLIST D_8021C89C_ovl9;
void func_802065B0_ovl9(void);

void func_802063F4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_802065B0_ovl9;
    func_802071AC_ovl9();
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    D_800EB320[omCurrentObj->objId] = ent->unk4 + 14.0f;
    D_800EA360[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EADE0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    ent->unk98 = (struct Sub800E1B50_Unk98 *) &D_801CC4E4;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_802063AC_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021C89C_ovl9);
}

void func_802065B0_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021C8B4_ovl9);
    }
    if (D_800E9C60[omCurrentObj->objId] == 0) {
        func_8019F3D0_ovl7();
    }
}

void func_8020662C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC4E4;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    func_800A9EA4(0x10238);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_802066DC_ovl9(struct GObj *arg0) {
    s32 unused; /* load-bearing: puts the spill of `temp` at 0x18 */
    s32 temp = eneCheckAboveBelowPlayer();

    if (func_8019A9AC_ovl7(960.0f, 320.0f) == 3) {
        if (temp != 1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802063AC_ovl9);
        }
    }
}

extern s32 D_801CC508;
extern f32 D_8021DAA0_ovl9;

void func_80206764_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CC508;
    func_801A0D50_ovl7(func_802063AC_ovl9);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.75f;
    D_800E3C90[omCurrentObj->objId] = D_8021DAA0_ovl9;
    curObjSleepForever();
}

void func_80206820_ovl9(void) {
    func_802051D4_ovl9();
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802063AC_ovl9);
    }
}

void func_80206894_ovl9(void) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (gEntitiesNextPosYArray[omCurrentObj->objId] <= D_800EA8A0[omCurrentObj->objId]) {
            func_8020705C_ovl9();
        }
    }
    func_802052E8_ovl9();
    func_80206820_ovl9();
}

void func_8020691C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800B3520();
    func_800A9EA4(0x10237);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.5f;
    D_800E6850[omCurrentObj->objId] = 1.0f;
    curObjSleepForever();
}

extern f32 D_8021DAA4_ovl9;

void func_802069C4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E83E0[omCurrentObj->objId] != 0xA) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_8021DAA4_ovl9;
        D_800E5F90[omCurrentObj->objId] = D_800EA360[omCurrentObj->objId];
        D_800E6BD0[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId];
        gEntitiesNextPosXArray[omCurrentObj->objId] = tmp->unk0;
        gEntitiesNextPosZArray[omCurrentObj->objId] = tmp->unk8;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802063AC_ovl9);
    }
    func_80206820_ovl9();
    if (D_800E6850[omCurrentObj->objId] <= ABSF(D_800E64D0[omCurrentObj->objId])) {
        D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
    }
}

extern f32 D_8021DAA8_ovl9;

void func_80206B78_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CC4E4;
    func_801A0D50_ovl7(func_802063AC_ovl9);
    func_800A9EA4(0x10238);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8021DAA8_ovl9;
    curObjSleepForever();
}

void func_80206C44_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    s32 dir;

    if (D_800E83E0[omCurrentObj->objId] == 0xA) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802063AC_ovl9);
    }
    dir = (tmp->unk4 + 40.0f < gEntitiesNextPosYArray[0] + 20.0f) ? 1 : -1;
    if (func_8019A9AC_ovl7(960.0f, 320.0f) != 3 || dir == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802063AC_ovl9);
    }
    func_80206820_ovl9();
}

void func_80206D7C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 3.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = D_8021DAAC_ovl9;
    curObjSleepForever();
}

extern f32 D_8021DAB0_ovl9;
void func_80206820_ovl9(void);

void func_80206E20_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk4 <= gEntitiesNextPosYArray[omCurrentObj->objId]) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = tmp->unk4;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8021DAB0_ovl9;
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802063AC_ovl9);
    } else {
        func_802052E8_ovl9();
        func_80206820_ovl9();
    }
}

extern f32 D_8021DAB4_ovl9;

void func_80206F20_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 5;
    temp = D_800E7B20[omCurrentObj->objId];
    func_80198880_ovl7(&D_801C41C4);
    D_800E7B20[omCurrentObj->objId] = temp;
    tmp->unk98 = &D_801CB548;
    func_801A0D50_ovl7(func_802063AC_ovl9);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = D_8021DAB4_ovl9;
    curObjSleepForever();
}

void func_8020703C_ovl9(s32 arg0) {
    func_80205360_ovl9();
}

extern f32 D_8021DAB8_ovl9;

void func_8020705C_ovl9(arg0)
struct GObj *arg0;
{
    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
        play_sound(0x256);
    }
    D_800E9FE0[omCurrentObj->objId].as_s32 = D_800E9FE0[omCurrentObj->objId].as_s32 + 1;
    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 3) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8021DAB8_ovl9;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802063AC_ovl9);
    } else {
        D_800E3210[omCurrentObj->objId] = -(D_800E3210[omCurrentObj->objId] * 0.5f);
        D_800E8920[omCurrentObj->objId] = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802071AC_ovl9.s")

