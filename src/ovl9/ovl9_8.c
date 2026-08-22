#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern void func_800AA018(s32);
extern void func_800AF27C(void);

extern void func_8019F410_ovl7(struct DObj *);
extern FUNCLIST D_8021C5AC_ovl9;
extern void func_800AA864(s32, s32);
extern s32 random_soft_s32_range(s32);
extern FUNCLIST D_8021C588_ovl9;

extern s32 D_801C8CFC;
extern s32 D_801C8D44;

struct Ovl9Vec4 {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
};
extern struct Ovl9Vec4 D_8021C5CC_ovl9[];


extern s32 func_8019A7E8_ovl7(f32);
extern void func_8019BB58_ovl7(void);
extern FUNCLIST D_8021C5C0_ovl9;

/* K&R form is load-bearing here: this function's real signature is
 * s32 func_801A0D74_ovl7(GObj *), but every call site in this file (and
 * most of the tree) passes 0 args -- the ROM relies on whatever GObj* is
 * already sitting in $a0. An ANSI prototype breaks compilation with
 * "too few arguments". */
extern s32 func_801A0D74_ovl7();
extern void func_8019F3B0_ovl7(void);
extern void eneTurnCommon(s32);
extern FUNCLIST D_8021C5C8_ovl9;

extern void func_800AECC0(f32);
extern s32 D_801C8CB4_ovl7;
extern FUNCLIST D_8021C598_ovl9;
extern FUNCLIST D_8021C5C4_ovl9;

extern void func_8019D958_ovl7(u16);
extern void func_800A2300(struct GObj *);

extern s32 D_801CC13C;
extern s32 D_801CBF20;
extern s32 D_801CBF44;
extern s32 D_801CBF68;
/* D_8021D958_ovl9: literal, this TU owns its .rodata */

extern FUNCLIST D_8021C504_ovl9;
extern FUNCLIST D_8021C544_ovl9;
extern FUNCLIST D_8021C57C_ovl9;

extern FUNCLIST D_8021C500_ovl9;

void func_801F8730_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C500_ovl9);
}

void func_801F8774_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C504_ovl9);
}

extern s32 D_801CBF20;
extern FUNCLIST D_8021C504_ovl9;
IN_FILE void func_801F8774_ovl9(GObj *);
IN_FILE void func_801F889C_ovl9(struct GObj *);
void func_801F87BC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBF20;
    D_800DF150[omCurrentObj->objId] = func_801F889C_ovl9;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
    }
    func_801A0D50_ovl7(func_801F8774_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C504_ovl9);
}

extern FUNCLIST D_8021C520_ovl9;
void func_801F889C_ovl9(struct GObj *arg0) {
    s32 unused; /* load-bearing: puts the spill of `v` at 0x18 */
    s32 v = func_801A0D74_ovl7();

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8019B424_ovl7(arg0);
    }
    if (v == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, &D_8021C520_ovl9);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        eneTurnCommon(6);
    }
    func_8019F3B0_ovl7();
}

void func_801F8958_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CBF20;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100DA);
    func_800A9EA4(0x100DB);
    curObjSleepForever();
}

extern s32 func_8019B260_ovl7(f32);
void func_801F89FC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        if (func_8019A7E8_ovl7(280.0f) != 0) {
            if (func_8019B260_ovl7(60.0f) == 1) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            } else {
                gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F8774_ovl9);
        }
    }
}


void func_801F8ACC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[0];
    D_800EB320[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] + 200.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBF68;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800A9EA4(0x100D2);
    func_800A9EA4(0x100D3);
    D_800E3210[omCurrentObj->objId] = 8.0f;
    curObjSleepForever();
}

extern s32 D_801CBF44;
void func_801F8BEC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if ((D_800EA6E0[omCurrentObj->objId] <= gEntitiesNextPosYArray[omCurrentObj->objId]) || (D_800EB320[omCurrentObj->objId] <= gEntitiesNextPosYArray[omCurrentObj->objId])) {
        D_800E3750[omCurrentObj->objId] = -1.0f;
        tmp->unk98 = &D_801CBF44;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F8774_ovl9);
    }
}

void func_801F8CBC_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800A9EA4(0x100CE);
    func_800A9EA4(0x100CF);
    curObjSleepForever();
}

void func_801F8D40_ovl9(s32 arg0) {

}

extern s32 D_801CBF20;
/* D_8021D954_ovl9: literal, this TU owns its .rodata */

void func_801F8D48_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBF20;
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800A9EA4(0x100D1);
    func_800AA864(0x100D0, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801F8774_ovl9(struct GObj *);

void func_801F8E60_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F8774_ovl9);
    }
}

extern s32 func_801ACCA0_ovl7(s32, s32, f32, f32);
extern s32 func_801AE940_ovl7(s32, f32, f32);
void func_801F8ECC_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    s32 ret;

    if (arg1 != 0) {
        return;
    }
    if ((s32) arg2 != 1) {
        return;
    }
    func_801ACCA0_ovl7(9, 0, 32.0f, 0.0f);
    ret = func_801AE940_ovl7(5, 0.0f, -20.0f);
    gEntitiesAngleYArray[ret] = gEntitiesAngleYArray[omCurrentObj->objId];
    play_sound(0x96);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
}

void func_801F8F7C_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    if (D_800E8920[omCurrentObj->objId] == 0) {
        func_800AECC0(gameTicksPerDraw * 2.0f);
        func_800AED20(gameTicksPerDraw * 2.0f);
    }
    func_800A9EA4(0x100C8);
    func_800AA864(0x100C7, 1);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x100CA);
    func_800A9EA4(0x100C9);
    D_800DF310[omCurrentObj->objId] = func_801F8ECC_ovl9;
    curObjSleepForever();
}

void func_801F907C_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        if ((u32)D_800DD8D0[omCurrentObj->objId] >> 30) {
            if (D_800E8920[omCurrentObj->objId] == 0) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            } else {
                gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F8774_ovl9);
        }
    }
}

void func_801F9124_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800A9EA4(0x100DB);
    func_800AA864(0x100DA, 3);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801F8774_ovl9(struct GObj *);

void func_801F91CC_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F8774_ovl9);
    }
}

void func_801F9238_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBF44;
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_800A9EA4(0x100DD);
    func_800A9EA4(0x100DC);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    curObjSleepForever();
}

void func_801F936C_ovl9(s32 arg0) {

}

void func_801F9374_ovl9(struct GObj *arg0) {
    f32 v;

    D_800E3210[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * 0.25f;
    D_800E3750[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] * 0.25f;
    v = D_800E3C90[omCurrentObj->objId] * 0.25f;
    D_800E3C90[omCurrentObj->objId] = (v < 0.0f) ? -v : v;
}

void func_801F9410_ovl9(struct GObj *arg0) {
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 7.0f;
}

extern FUNCLIST D_8021C53C_ovl9;
void func_800B6B8C(struct GObj *);

void func_801F9470_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C53C_ovl9);
}

void func_801F94D0_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C544_ovl9);
}

extern s32 D_801CBF8C;
extern FUNCLIST D_8021C544_ovl9;
IN_FILE void func_801F9610_ovl9(void);
IN_FILE void func_801F94D0_ovl9(GObj *);
void func_801F9518_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBF8C;
    D_800DF150[omCurrentObj->objId] = func_801F9610_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    D_800E8920[omCurrentObj->objId] = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_801F94D0_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C544_ovl9);
}

extern FUNCLIST D_8021C560_ovl9;
extern void func_8019B2C0_ovl7(s32);
void func_801F9610_ovl9(void) {
    s32 unused; /* load-bearing: puts the spill of `v` at 0x18 */
    s32 v = func_801A0D74_ovl7();

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8019B2C0_ovl7(1);
    } else {
        func_8019B2C0_ovl7(2);
    }
    if (v == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, &D_8021C560_ovl9);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        eneTurnCommon(6);
        func_8019F3B0_ovl7();
    }
}

void func_801F96DC_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AFBB4(0, omCurrentObj);
    curObjSleepForever();
}

void func_801F974C_ovl9(struct GObj *arg0) {
    if (func_8019A7E8_ovl7(240.0f) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F94D0_ovl9);
    }
}

void func_801F97B8_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AFBB4(1, omCurrentObj);
    func_800AA864(0x100B0, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

/* D_8021D95C_ovl9: literal, this TU owns its .rodata */
/* D_8021D960_ovl9: literal, this TU owns its .rodata */
void func_801F9858_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_8019B164_ovl7();
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0x50;
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        tmp->unk3C = 3;
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            D_800E9020[omCurrentObj->objId] = 4.39823f;
        } else {
            D_800E9020[omCurrentObj->objId] = 1.8849556f;
        }
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 3.0f;
        tmp->unk20 = D_800E64D0[omCurrentObj->objId];
        tmp->unk24 = D_800E6690[omCurrentObj->objId];
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F94D0_ovl9);
    }
}

extern void func_800B6A2C(struct GObj *);
/* D_8021D964_ovl9: literal, this TU owns its .rodata */
void func_801F9A1C_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CBF8C;
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AECC0(gameTicksPerDraw);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800A9EA4(0x100B2);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 3.0f;
    curObjSleepForever();
}

void func_801F9B84_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 <= 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F94D0_ovl9);
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 -= 1;
    }
}

/* D_8021D968_ovl9: literal, this TU owns its .rodata */
void func_801F9C04_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AA864(0x100AC, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801F9CF0_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_8019D958_ovl7((u16) omCurrentObj->objId);
    }
}

extern s32 D_801CBFD4;
void func_801F9D38_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBFD4;
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800A9EA4(0x100AE);
    func_800AECC0(0.0f);
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 3.0f;
    curObjSleepForever();
}

void func_801F9E8C_ovl9(s32 arg0) {

}

void func_801F9E94_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 7.0f;
    curObjSleepForever();
}

void func_801F9F4C_ovl9(s32 arg0) {

}

extern s32 D_801CBFB0;
/* D_8021D96C_ovl9: literal, this TU owns its .rodata */

void func_801F9F54_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CBFB0;
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_800A9EA4(0x100AE);
    func_800AECC0(0.0f);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    curObjSleepForever();
}

void func_801FA08C_ovl9(s32 arg0) {

}

void func_801FA094_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C57C_ovl9);
}

extern FUNCLIST D_8021C57C_ovl9;
IN_FILE void func_801FA1A0_ovl9(struct GObj *);
void func_801FA0DC_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801FA1A0_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    func_801A3280_ovl7();
    D_800E8920[omCurrentObj->objId] = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C57C_ovl9);
}

void func_801FA1A0_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C588_ovl9);
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        eneTurnCommon(6);
        func_8019F3B0_ovl7();
    }
}

void func_801FA21C_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AFBB4(0, omCurrentObj);
    curObjSleepForever();
}

void func_801FA28C_ovl9(struct GObj *arg0) {
    if (func_8019A7E8_ovl7(240.0f) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA094_ovl9);
    }
}

void func_801FA2F8_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AFBB4(1, omCurrentObj);
    func_800AA864(0x100B0, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

/* D_8021D970_ovl9: literal, this TU owns its .rodata */
/* D_8021D974_ovl9: literal, this TU owns its .rodata */
IN_FILE void func_801FA094_ovl9(GObj *);
void func_801FA398_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_8019B164_ovl7();
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        tmp->unk3C = 3;
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            D_800E9020[omCurrentObj->objId] = 4.39823f;
        } else {
            D_800E9020[omCurrentObj->objId] = 1.8849556f;
        }
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA094_ovl9);
    }
}

extern void func_800B6A2C(struct GObj *);
void func_801FA4B8_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    func_800A9EA4(0x100B2);
    func_800AECC0(0.0f);
    ohSleep(30);
    func_800AECC0(gameTicksPerDraw);
    func_800AA864(0x100AC, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FA59C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_8019D958_ovl7((u16) omCurrentObj->objId);
    }
}

void func_801FA5E4_ovl9(struct GObj *arg0) {
    if (D_800E0D50[omCurrentObj->objId] == 0) {
        arg0->onAnimate = NULL;
        func_800A2300(arg0);
    }
}

extern FUNCLIST D_8021C594_ovl9;
extern void func_800B6B8C(struct GObj *);
void func_801FA628_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    if (gEntitiesAngleZArray[omCurrentObj->objId] != 0.0f) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
        gEntitiesAngleZArray[omCurrentObj->objId] = 0.0;
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C594_ovl9);
}


void func_801FA704_ovl9(struct GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021C598_ovl9);
}

extern s32 D_801CBFF8;
IN_FILE void func_801FA80C_ovl9(void);
IN_FILE void func_801FA704_ovl9(struct GObj *);
void func_801FA758_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBFF8;
    D_800DF150[omCurrentObj->objId] = func_801FA80C_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_801FA704_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021C598_ovl9);
}

void func_801FA80C_ovl9(void) {
    /* the three dead locals are load-bearing: they set the 0x28 frame and put
       the spill of `temp` at 0x1C */
    s32 unused0;
    s32 unused1;
    struct DObj *temp = D_800DFBD0[omCurrentObj->objId][3];
    s32 unused2;

    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C5AC_ovl9);
    }
    func_8019F410_ovl7(temp);
}

#ifdef MIPS_TO_C
/* FACTORY: 32/124, whole-function temp rotation.  Structure, schedule and the
   0x18 spill slot are the ROM's; every diff is the same one-slot shift of the
   argument/temp pairs ($a1/$a2 for objId, $a2/$a3 for the unk84 pointer,
   $t0/$t1 for the scaled index). */
extern s32 D_801CABC4_ovl7;
extern struct EnemyEventTable D_801CC01C;
extern s32 D_801CBFF8;
extern void func_801A2ADC_ovl7(void *);
extern void func_800A9760(s32);
extern s32 func_8010B480(struct EnemyProbe *);
extern s32 func_8010BA44(struct EnemyProbe *);
/* Ceiling/floor dweller settle: reset timers into idle anim state 0
 * with the shared hitbox; when flagged as a ceiling variant
 * (D_800E9AA0), flip the model upside down, install the ceiling
 * contact mover func_8010B480 with the ceiling annex, and rotate the
 * hitbox offset a quarter turn (|y|,|z| -> (|z|, -|y|)); otherwise use
 * the floor mover func_8010BA44 and annex.  Then rest: grounded, no
 * vertical motion, uncapped fall speed, idle animation, sleep
 * forever. */
void func_801FA884_ovl9(struct GObj *arg0) {
    EnemyRecord *rec;
    struct EnemyProbe *hit;
    u32 id;

    id = omCurrentObj->objId;
    rec = D_800E1B50[id];
    hit = rec->unk84;
    D_800E9C60[id] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_801A2ADC_ovl7(&D_801CABC4_ovl7);
    func_800A9760(0x10023);
    if (D_800E9AA0[omCurrentObj->objId].as_u32 != 0) {
        f32 ay;
        f32 az;

        rec->unk48 = func_8010B480;
        rec->unk98 = &D_801CC01C;
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 3.1415927f;
        ay = *(f32 *) &hit->headOffsetY;
        if (ay < 0.0f) {
            ay = -ay;
        }
        az = *(f32 *) &hit->footOffsetY;
        if (az < 0.0f) {
            az = -az;
        }
        *(f32 *) &hit->headOffsetY = az;
        *(f32 *) &hit->footOffsetY = -ay;
    } else {
        rec->unk48 = func_8010BA44;
        rec->unk98 = (struct EnemyEventTable *) &D_801CBFF8;
    }
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800AA018(0x100B6);
    curObjSleepForever();
}
#elif defined(PORT)
extern s32 D_801CABC4_ovl7;
extern struct EnemyEventTable D_801CC01C;
extern s32 D_801CBFF8;
extern void func_801A2ADC_ovl7(void *);
extern void func_800A9760(s32);
extern s32 func_8010B480(struct EnemyProbe *);
extern s32 func_8010BA44(struct EnemyProbe *);
/* Ceiling/floor dweller settle: reset timers into idle anim state 0
 * with the shared hitbox; when flagged as a ceiling variant
 * (D_800E9AA0), flip the model upside down, install the ceiling
 * contact mover func_8010B480 with the ceiling annex, and rotate the
 * hitbox offset a quarter turn (|y|,|z| -> (|z|, -|y|)); otherwise use
 * the floor mover func_8010BA44 and annex.  Then rest: grounded, no
 * vertical motion, uncapped fall speed, idle animation, sleep
 * forever. */
void func_801FA884_ovl9(struct GObj *arg0) {
    EnemyRecord *rec;
    struct EnemyProbe *hit;
    u32 id;

    id = omCurrentObj->objId;
    rec = D_800E1B50[id];
    hit = rec->unk84;
    D_800E9C60[id] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_801A2ADC_ovl7(&D_801CABC4_ovl7);
    func_800A9760(0x10023);
    if (D_800E9AA0[omCurrentObj->objId].as_u32 != 0) {
        f32 ay;
        f32 az;

        rec->unk48 = func_8010B480;
        rec->unk98 = &D_801CC01C;
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 3.1415927f;
        ay = *(f32 *) &hit->headOffsetY;
        if (ay < 0.0f) {
            ay = -ay;
        }
        az = *(f32 *) &hit->footOffsetY;
        if (az < 0.0f) {
            az = -az;
        }
        *(f32 *) &hit->headOffsetY = az;
        *(f32 *) &hit->footOffsetY = -ay;
    } else {
        rec->unk48 = func_8010BA44;
        rec->unk98 = (struct EnemyEventTable *) &D_801CBFF8;
    }
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800AA018(0x100B6);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA884_ovl9.s")
#endif

void func_801FAA78_ovl9(struct GObj *arg0) {
    if (func_8019A7E8_ovl7(160.0f) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA704_ovl9);
    }
}

extern s32 D_801CBFF8;
/* D_8021D980_ovl9: literal, this TU owns its .rodata */
extern void func_800A9760(s32);

void func_801FAAE4_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CBFF8;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + 1.5707964f;
    func_800A9760(0x10024);
    func_800AA864(0x100B9, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FA704_ovl9(struct GObj *);

void func_801FAC2C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA704_ovl9);
    }
}

void func_801FAC98_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
                tmp->unk8C = &D_801C8D44;
            } else {
                tmp->unk8C = &D_801C8CFC;
            }
        }
    }
}

void func_801FAD0C_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x100B7);
    D_800DF310[omCurrentObj->objId] = func_801FAC98_ovl9;
    func_800AF27C();
    func_800AA018(0x100B5);
    curObjSleepForever();
}

void func_801FADA8_ovl9(struct GObj *arg0) {
    if (((u32) D_800DD8D0[omCurrentObj->objId] >> 30) != 0) {
        if (func_8019A7E8_ovl7(160.0f) == 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA704_ovl9);
        }
    }
}

void func_801FAE40_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            tmp->unk8C = &D_801C8CB4_ovl7;
        }
    }
}


void func_801FAE94_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA018(0x100B8);
    D_800DF310[omCurrentObj->objId] = func_801FAE40_ovl9;
    func_800AF27C();
    func_800AA018(0x100B6);
    ohSleep(30);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801FAF68_ovl9(struct GObj *arg0) {
    if ((u32)D_800DD8D0[omCurrentObj->objId] >> 30) {
        if (D_800E9E20[omCurrentObj->objId] != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA704_ovl9);
        }
    }
}

extern struct EnemyEventTable D_801CC040;
extern s32 D_801CABC4_ovl7;
/* 3.1415927f / 65535.0f: literals, this TU owns its .rodata */
int func_8010BA44(struct EnemyProbe *);
void func_800A9760(s32);
void func_800AECC0(f32);
void func_801A2ADC_ovl7(void *);

void func_801FAFE8_ovl9(struct GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    ent->unk48 = func_8010BA44;
    ent->unk98 = &D_801CC040;
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800A9760(0x10023);
    func_800AA018(0x100B6);
    func_800AECC0(4.0f);
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
        func_801A2ADC_ovl7(&D_801CABC4_ovl7);
    } else {
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 3.1415927f;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    curObjSleepForever();
}

void func_801FB190_ovl9(struct GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 1) {
        if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
            *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA704_ovl9);
    }
}

void func_801FB220_ovl9(struct GObj *arg0) {
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
}

void func_801FB27C_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    func_8019BB58_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C5C0_ovl9);
}

void func_801FB2E8_ovl9(struct GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C5C4_ovl9);
}

extern FUNCLIST D_8021C5C4_ovl9;
IN_FILE void func_801FB408_ovl9(void);
IN_FILE void func_801FB2E8_ovl9(struct GObj *);
void func_801FB33C_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801FB408_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_801FB2E8_ovl9);
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C5C4_ovl9);
}

void func_801FB408_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021C5C8_ovl9);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

void func_801FB468_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC13C;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100A0);
    curObjSleepForever();
}

#ifdef NON_MATCHING
// 50 diffs: offset by one instruction at entry -- the ROM loads omCurrentObj
// with lui+lw while IDO materialises its address first.
void func_801FB528_ovl9(void) {
    s32 t = D_800E9AA0[omCurrentObj->objId].as_s32;
    s32 r;
    s32 v;

    r = random_soft_s32_range(2);
    v = ((r != 0) ? r : -1) + t;
    if (v >= 8) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = (v >= 0) ? v : 7;
    }
}
#else
/* Whole-function register shift: the ROM materialises &omCurrentObj and
   &D_800E9AA0 only AFTER the random_soft_s32_range call, IDO hoists both above
   it, so every instruction is offset. */
#ifdef NON_MATCHING
extern s32 random_soft_s32_range(s32);

void func_801FB528_ovl9(struct GObj *arg0) {
    s32 sp1C = D_800E9AA0[omCurrentObj->objId].as_s32;
    s32 r;

    r = random_soft_s32_range(2);
    if (r == 0) {
        r = -1;
    }
    r = r + sp1C;
    if (r >= 8) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = (r < 0) ? 7 : r;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB528_ovl9.s")
#endif
#endif

void func_801FB5D4_ovl9(void) {
    s32 v = D_800E9AA0[omCurrentObj->objId].as_s32;

    if (v - 4 >= 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = v - 4;
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = v + 4;
    }
}

void func_801FB614_ovl9(void) {
    D_800E64D0[omCurrentObj->objId] = D_8021C5CC_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32].unk0;
    D_800E6690[omCurrentObj->objId] = D_8021C5CC_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32].unk4;
    D_800E3210[omCurrentObj->objId] = D_8021C5CC_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32].unk8;
    D_800E3750[omCurrentObj->objId] = D_8021C5CC_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32].unkC;
}

void func_801FB6D0_ovl9(void) {
    D_800E6690[omCurrentObj->objId] = -D_8021C5CC_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32].unk4;
    D_800E3750[omCurrentObj->objId] = -D_8021C5CC_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32].unkC;
}

f32 func_800F951C(s32, f32, s32, f32);
void func_801FB528_ovl9(void);
void func_801FB5D4_ovl9(void);
void func_801FB6D0_ovl9(void);

void func_801FB744_ovl9(void) {
    struct EnemyRecord *temp;
    f32 ang;
    f32 dy;

    temp = D_800E1B50[omCurrentObj->objId];
    ang = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                        D_800E98E0[omCurrentObj->objId], D_800EA6E0[omCurrentObj->objId]);
    if (ang == 9999.0f) {
        utilPrintf("Error: FOURNINE!!/n");
        return;
    }
    dy = temp->unk4 - gEntitiesNextPosYArray[omCurrentObj->objId];
    if ((60.0f <= ABSF(ang)) || (60.0f <= ABSF(dy))) {
        if (D_800E9C60[omCurrentObj->objId] == 0) {
            func_801FB5D4_ovl9();
        }
        D_800E9C60[omCurrentObj->objId] = 1;
    } else {
        D_800E9C60[omCurrentObj->objId] = 0;
        func_801FB528_ovl9();
    }
    func_801FB6D0_ovl9();
}

void func_801FB614_ovl9(void);
void func_801FB744_ovl9(void);

void func_801FB8B8_ovl9(struct GObj *arg0) {
    if ((ABSF(D_800E64D0[omCurrentObj->objId]) < 0.0625f) && (ABSF(D_800E3210[omCurrentObj->objId]) < 0.0625f)) {
        func_801FB744_ovl9();
    } else if ((1.5f <= ABSF(D_800E64D0[omCurrentObj->objId])) || (1.5f <= ABSF(D_800E3210[omCurrentObj->objId]))) {
        func_801FB614_ovl9();
    }
}

/* PADDING TRAP -- padtrap.classify() = ('trap', 7). Converting this shortens
 * ovl9_8.c's .text by 32 bytes (check_tu_size: 0x3350 vs 0x3370) and breaks
 * the ROM link. The body below is correct; it can never be C. */
#ifdef NON_MATCHING
void func_801FB9DC_ovl9(struct GObj *arg0) {
    s32 temp;
    s32 rand;

    temp = D_800E9AA0[omCurrentObj->objId].as_s32;
    rand = random_soft_s32_range(3);
    if (temp - rand - 3 >= 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = temp - rand - 3;
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = temp - rand + 5;
    }
    func_801FB614_ovl9();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB9DC_ovl9.s")
#endif

