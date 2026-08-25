#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "unk_structs/D_800E1B50.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"

extern s32 D_801CCFDC;
extern s32 D_801CCF4C;
extern s32 D_801CCF94;
extern s32 D_801C98A0;
extern s32 D_801CD000;
/* D_8021DE80_ovl9: literal, this TU owns its .rodata */
/* D_8021DE84_ovl9: literal, this TU owns its .rodata */
/* D_8021DE88_ovl9: literal, this TU owns its .rodata */
/* D_8021DE8C_ovl9: literal, this TU owns its .rodata */
/* D_8021DE9C_ovl9: literal, this TU owns its .rodata */
/* D_8021DEA0_ovl9: literal, this TU owns its .rodata */
/* D_8021DEA4_ovl9: literal, this TU owns its .rodata */
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_801A0D50_ovl7(void *);
extern s32 func_801A0D74_ovl7(void);
extern void func_8019F3B0_ovl7(void);
extern void eneTurnCommon(s32);
extern void func_8019BC34_ovl7(f32);
extern s32 func_8019A900_ovl7(s32 *);
extern s32 func_8019A7E8_ovl7(f32);
extern s32 func_8019BD38_ovl7(void);
extern void func_80199F1C_ovl7(struct GObj *);
extern void func_800AF27C(void);
extern void func_800A9EA4(s32);
extern s32 D_801CCF70;
extern s32 D_801CCFB8;
/* D_8021DE90_ovl9: literal, this TU owns its .rodata */
/* D_8021DE94_ovl9: literal, this TU owns its .rodata */
/* D_8021DE98_ovl9: literal, this TU owns its .rodata */
extern void func_800AA154(s32);
extern FUNCLIST D_8021CDC0_ovl9;
extern FUNCLIST D_8021CDE0_ovl9;
void func_80218A58_ovl9(void);
void func_80218B00_ovl9(struct GObj *);

struct Ovl9AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

extern void func_8019D958_ovl7(u16);
extern void func_80111550(u32);
extern void *func_80111C88(s32 *, u32);
extern void func_80111ECC(void *);
extern s32 func_80110B00(struct Ovl9AnimInfo *);

void func_802187C0_ovl9(s32 arg0) {
    if (D_800EA1A0[omCurrentObj->objId] < arg0 / 2) {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            D_800E9020[omCurrentObj->objId] -= 3.1415927f / (f32) arg0;
        } else {
            D_800E9020[omCurrentObj->objId] += 3.1415927f / (f32) arg0;
        }
    } else if (D_800EA1A0[omCurrentObj->objId] < arg0) {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            D_800E9020[omCurrentObj->objId] -= 3.1415927f / (f32) arg0;
        } else {
            D_800E9020[omCurrentObj->objId] += 3.1415927f / (f32) arg0;
        }
    } else {
        D_800EA1A0[omCurrentObj->objId] = 0;
        return;
    }
    D_800EA1A0[omCurrentObj->objId]++;
}

void func_80218930_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        tmp->unk3C = 1;
        D_800E9E20[omCurrentObj->objId] = 1;
    }
}

/* STATE LEGEND for this species (evidence only, no name is claimed for the
 * species itself -- nothing in this TU identifies it).
 *
 * D_800DDFD0 (inner coroutine driven by func_80218A58_ovl9's
 * `utilFuncTableJump(D_800DDFD0[id], 8, &D_8021CDE0_ovl9)`):
 *   0 func_80218B9C_ovl9  grounded rest: D_800E8920=1, zero velocity, sleeps
 *                         forever (advanced only by an external trigger).
 *   1 func_80218C28_ovl9  turn-wait: watches func_8019A900_ovl7's facing
 *                         reading against D_800E6A10 and bumps tmp->unk3C on
 *                         a mismatch; sets D_800EA520=1 once tmp->unk3C
 *                         clears again (func_80218DFC_ovl9 promotes on it).
 *   2 func_80218EC4_ovl9  brief settle: zero velocity, sleeps forever.
 *   3 func_80218FA0_ovl9  dash burst: arms D_800EA360=4 and a non-zero
 *                         velocity/accel pair that func_802190D8_ovl9 (D_800DDFD0
 *                         is NOT reset here, so this state is driven by the
 *                         gEntityFuncListIDArray side instead) decrements
 *                         once per tick until it reaches 0.
 *   4 func_80219454_ovl9  turn-wait #2, same shape as state 1.
 *   5 func_80219654_ovl9  settle #2: zero velocity, sets D_800EA520=1
 *                         immediately (no wait).
 *   6 func_80219388_ovl9  final settle: zero velocity, sleeps forever.
 *   7 func_80219824_ovl9  glide-out: D_800E8920=0 (airborne), non-zero
 *                         velocity/turn accel, sleeps forever.
 *
 * gEntityFuncListIDArray (outer coroutine, `utilFuncTableJump(..., 8,
 * &D_8021CDC0_ovl9)` in func_80218B00_ovl9):
 *   1 set by func_8021898C_ovl9 at spawn when D_800E8920==1 (grounded).
 *   2 set by func_8021898C_ovl9 at spawn otherwise (airborne).
 *   3 set by func_80219590_ovl9 once D_800EA520 is nonzero.
 *   4 set by func_80218DFC_ovl9 once tmp->unk3C clears with D_800EA520 set.
 *   5 set by func_802190D8_ovl9 once the state-3 dash timer (D_800EA360)
 *     reaches 0.
 */
void func_8021898C_ovl9(struct GObj *arg0) {
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    D_800DF150[omCurrentObj->objId] = func_80218A58_ovl9;
    func_801A0D50_ovl7(func_80218B00_ovl9);
    D_800E98E0[omCurrentObj->objId] = 0;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_80218B00_ovl9(arg0);
}

void func_80218A58_ovl9(void) {
    f32 temp = func_801A0D74_ovl7();

    if (D_800DDFD0[omCurrentObj->objId] != 3) {
        eneTurnCommon(6);
    }
    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 8, &D_8021CDE0_ovl9);
    }
    func_8019F3B0_ovl7();
}

void func_80218B00_ovl9(struct GObj *arg0) {
    while (1) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 8, &D_8021CDC0_ovl9);
    }
}

void func_80218B9C_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCF4C;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AA018(0x100AA);
    curObjSleepForever();
}

void func_80218C20_ovl9(s32 arg0) {

}

void func_80218C28_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];
    s32 sp30;

    tmp->unk98 = &D_801CCF70;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_8019BC34_ovl7(100.0f);
    if (func_8019A900_ovl7(&sp30) != 0) {
        if ((f32) sp30 != D_800E6A10[omCurrentObj->objId]) {
            if (tmp->unk3C == 0) {
                tmp->unk3C = tmp->unk3C + 1;
            }
        }
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] + D_800E6A10[omCurrentObj->objId];
    func_800AECC0(3.0f);
    func_800AED20(3.0f);
    func_800A9EA4(0x100AB);
    while (func_8019A7E8_ovl7(200.0f) == 0 || D_800E98E0[omCurrentObj->objId] != 0) {
        ohSleep(1);
    }
    func_800AF27C();
    D_800EA520[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80218DFC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
    if (D_800EA520[omCurrentObj->objId] != 0) {
        if (tmp->unk3C == 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80218B00_ovl9);
        }
    } else if (func_8019BD38_ovl7() != 0) {
        func_80199F1C_ovl7(arg0);
    }
}

void func_80218EC4_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CCF94;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AA018(0x100AB);
    curObjSleepForever();
}

void func_80218F98_ovl9(s32 arg0) {

}

void func_80218FA0_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CCFB8;
    D_800EA360[omCurrentObj->objId] = 4;
    func_8019BC34_ovl7(100.0f);
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA018(0x100A2);
    func_800AECC0(3.0f);
    func_800AED20(3.0f);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.16666667f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    curObjSleepForever();
}

void func_802190D8_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];
    s32 state;

    if (tmp->unk3C == 0) {
        if (func_8019BD38_ovl7() != 0) {
            func_80199F1C_ovl7(arg0);
        }
    }
    if (tmp->unk3C == 1) {
        D_800EA360[omCurrentObj->objId]--;
        if (D_800EA360[omCurrentObj->objId] == 0) {
            D_800E9020[omCurrentObj->objId] = 0.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            gEntityFuncListIDArray[omCurrentObj->objId] = 5;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80218B00_ovl9);
            return;
        }
    }
    eneTurnCommon(0xC);
    state = tmp->unk3C;
    if (state == 2) {
        D_800E64D0[omCurrentObj->objId] = tmp->unk20;
        D_800E6690[omCurrentObj->objId] = -tmp->unk24;
        D_800E6850[omCurrentObj->objId] = 4.0f;
    } else if ((state >= 3) && (tmp->unk3C < 7.0f)) {
        D_800E64D0[omCurrentObj->objId] = tmp->unk20 - tmp->unk24 * (f32) (state - 2);
        D_800E6690[omCurrentObj->objId] = -tmp->unk24;
    } else if (tmp->unk3C == 7.0f) {
        D_800E64D0[omCurrentObj->objId] = tmp->unk20 * 0.75f;
        D_800E6690[omCurrentObj->objId] = -tmp->unk24;
    }
}

void func_80219388_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 6;
    tmp->unk98 = &D_801CCFDC;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8021944C_ovl9(s32 arg0) {

}

void func_80219454_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];
    s32 sp28;

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CCF70;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    func_800AA154(0x100A8);
    ohSleep(8);
    if (func_8019A900_ovl7(&sp28) != 0) {
        if ((f32) sp28 != D_800E6A10[omCurrentObj->objId]) {
            if (tmp->unk3C == 0) {
                tmp->unk3C = tmp->unk3C + 1;
            }
        }
    }
    while (tmp->unk3C != 0) {
        ohSleep(1);
    }
    D_800EA520[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80219590_ovl9(struct GObj *arg0) {
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (D_800EA520[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80218B00_ovl9);
    }
}

void func_80219654_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 5;
    tmp->unk98 = &D_801CCF70;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AA154(0x100A3);
    D_800EA520[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80219748_ovl9(struct GObj *arg0) {
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (D_800EA520[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId] = 0x3C;
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80218B00_ovl9);
    }
}

void func_80219824_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E8920[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 7;
    tmp->unk98 = &D_801CD000;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.8f;
    D_800E3210[omCurrentObj->objId] = 12.0f;
    D_800E3750[omCurrentObj->objId] = -0.8f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    curObjSleepForever();
}

void func_80219924_ovl9(s32 arg0) {

}

/* The +8 frame here was never the struct's size. Writing
   `func_80111ECC(func_80111C88(...))` as ONE nested call makes IDO reserve a
   4-byte stack temp for the intermediate, which lifts the locals base from
   0x18 to 0x1C and rounds the frame 0x38 -> 0x40; a named local for the
   intermediate costs the same 4 bytes, and assigning it into the already-homed
   PARAMETER costs nothing. Same shape and same fix as func_801DEC34_ovl14 /
   func_801DECAC_ovl14 in src/ovl14/ovl14.c. */
void func_8021992C_ovl9(struct GObj *arg0) {
    struct Ovl9AnimInfo sp18;

    func_80111550(omCurrentObj->objId);
    arg0 = (struct GObj *) func_80111C88(&D_801C98A0, omCurrentObj->objId);
    func_80111ECC(arg0);
    func_80110B00(&sp18);
}

void func_80219980_ovl9(struct GObj *arg0) {
    func_8019D958_ovl7(omCurrentObj->objId);
}

void func_802199AC_ovl9(struct GObj *arg0) {
    func_8019D958_ovl7(omCurrentObj->objId);
}

