#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021BF1C_ovl9;
extern FUNCLIST D_8021BF64_ovl9;
extern FUNCLIST D_8021C008_ovl9;
extern FUNCLIST D_8021C054_ovl9;

extern void func_800B6A2C(struct GObj *);
extern void func_801A0D50_ovl7(void *);
extern void func_801A6C10_ovl7(struct GObj *);
extern FUNCLIST D_8021BEE0_ovl9;
extern FUNCLIST D_8021BEF0_ovl9;
void func_801E5A74_ovl9(struct GObj *);
void func_801E5858_ovl9(struct GObj *);

void func_801E5720_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801E5A74_ovl9;
    func_801A0D50_ovl7(func_801E5858_ovl9);
    D_800EADE0[omCurrentObj->objId] = 1.0f;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, &D_8021BEE0_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 11, &D_8021BEF0_ovl9);
    }
}

extern FUNCLIST D_8021BEF0_ovl9;

void func_801E5858_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 11, D_8021BEF0_ovl9);
    }
}

extern s32 D_801C8838_ovl7[];
void func_800AFBB4(s32, struct GObj *);

void func_801E58D8_ovl9(GObj *arg0) {
    func_800AFBB4(1, omCurrentObj);
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8838_ovl7;
    if (D_800E8920[omCurrentObj->objId] == 1) { gEntityFuncListIDArray[omCurrentObj->objId] = 4; } else { gEntityFuncListIDArray[omCurrentObj->objId] = 6; }
}

void func_801E5974_ovl9(GObj *arg0) {
    func_800AFBB4(1, omCurrentObj);
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8838_ovl7;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
}

extern s32 D_801C8838_ovl7[];

void func_801E5A0C_ovl9(GObj *arg0) {
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8838_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
}

void func_801E5A74_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 11, &D_8021BF1C_ovl9);
}

extern struct EnemyEventTable D_801CBB0C;
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_800B33F4(void);
extern void func_800AA018(s32);
extern void func_800AF27C(void);
extern f32 func_8019DA50_ovl7(void);
extern f32 gameTicksPerDraw;
extern void ohSleep(s32);

void func_801E5ABC_ovl9(struct GObj *arg0) {
    f32 h;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB0C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    D_800EA8A0[omCurrentObj->objId] = 0;
    func_800AA018(0x101F7);
    while (1) {
        if (ABSF((gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId]) < 240.0f) {
            h = ABSF(func_8019DA50_ovl7());
            if (h < 320.0f) {
                break;
            }
        }
        ohSleep(1);
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern s32 D_800BE4EC;
void func_801E5D2C_ovl9(void);
void func_801E5DE0_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E5C8C_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E5D2C_ovl9();
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801E5DE0_ovl9();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

void func_8019B2C0_ovl7(s32);
/* K&R form is load-bearing on every repeat of this declaration in this file
 * (10x below): its real signature is s32 func_801A0D74_ovl7(GObj *), but this
 * TU (and most of the tree) calls it with 0 args at some sites and 1 at
 * others -- the ROM relies on whatever GObj* is already sitting in $a0. An
 * ANSI prototype breaks compilation with "too few arguments" wherever the
 * arg is omitted. */
void func_801A0D74_ovl7();
void func_8019F410_ovl7(struct DObj *);

void func_801E5D2C_ovl9(void) {
    f32 temp;

    func_801A0D74_ovl7();
    func_8019B2C0_ovl7(1);
    temp = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.y = ((temp < 0.0f) ? -temp : temp) * 10.0f;
    func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
}

void func_8019B2C0_ovl7(s32);
void func_801A0D74_ovl7();

void func_801E5DE0_ovl9(void) {
    f32 temp;

    func_801A0D74_ovl7();
    func_8019B2C0_ovl7(1);
    temp = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.y = ((temp < 0.0f) ? -temp : temp) * 10.0f;
}

extern s32 D_801CBB30;
/* D_8021D030_ovl9: literal, this TU owns its .rodata */
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_800B33F4(void);
extern void func_800AA018(s32);
extern void func_800AF27C(void);

void func_801E5E70_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB30;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = D_800DFBD0[omCurrentObj->objId][1]->angle.v.z;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800AA018(0x101F5);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

extern s32 D_800BE4EC;
void func_801A0D74_ovl7();
void func_8019F410_ovl7(struct DObj *);

void func_801E5FC4_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801A0D74_ovl7();
        func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801A0D74_ovl7();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

extern struct EnemyEventTable D_801CBB0C;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B33F4(void);
void func_800AA018(s32);
void func_800AF27C(void);

void func_801E6088_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB0C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    func_800AA018(0x101F5);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern s32 D_800BE4EC;
void func_801E5D2C_ovl9(void);
void func_801E5DE0_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E6168_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E5D2C_ovl9();
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801E5DE0_ovl9();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

s32 func_8019A900_ovl7(s32 *);
f32 func_8019B608_ovl7(s32);
void func_800AA018(s32);
void func_800AF27C(void);
void ohSleep(s32);

void func_801E6208_ovl9(GObj *arg0) {
    f32 phi_f2;
    s32 sp28;

    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB0C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    if (func_8019A900_ovl7(&sp28) != 0) {
        phi_f2 = sp28;
    } else {
        phi_f2 = func_8019B608_ovl7(0);
    }
    if (phi_f2 != D_800E6A10[omCurrentObj->objId]) {
        func_800AA018((D_800E6A10[omCurrentObj->objId] == 1.0f) ? 0x101F3 : 0x101F2);
        ohSleep(6);
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        func_800AF27C();
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}
extern s32 D_800BE4EC;
void func_801E5D2C_ovl9(void);
void func_801E5DE0_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E6394_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E5D2C_ovl9();
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801E5DE0_ovl9();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

extern struct EnemyEventTable D_801CBB54;
void func_800AFBB4(s32, struct GObj *);

void func_801E6434_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB54;
    func_800AFBB4(1, omCurrentObj);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    func_800AA018(0x101F1);
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
        break;
    case 2:
    case 3:
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
        break;
    }
    curObjSleepForever();
}

extern s32 D_800BE4EC;
void func_801E5D2C_ovl9(void);
void func_801E5DE0_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E65A4_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E5D2C_ovl9();
        break;
    case 2:
        func_801E5DE0_ovl9();
        if ((D_800BE4EC & 1) != (omCurrentObj->objId & 1)) {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

void func_800FB914(s32);

void func_801E6648_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB0C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    func_800FB914(1);
    play_sound(0x9A);
    func_800AA018((D_800E6A10[omCurrentObj->objId] == 1.0f) ? 0x101F0 : 0x101EF);
    func_800AF27C();
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

extern s32 D_800BE4EC;
void func_801E5D2C_ovl9(void);
void func_801E5DE0_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E67A0_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E5D2C_ovl9();
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801E5DE0_ovl9();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

extern struct EnemyEventTable D_801CBB78;
/* D_8021D034_ovl9: literal */
/* D_8021D038_ovl9: literal */
/* D_8021D03C_ovl9: literal */
/* D_8021D040_ovl9: literal */
/* D_8021D044_ovl9: literal */
/* D_8021D048_ovl9: literal */
/* D_8021D04C_ovl9: literal */

void func_801E6840_ovl9(GObj *arg0) {
    f32 c40;
    f32 c34;
    f32 c44;
    f32 c48;
    f32 c4C;
    u32 i;

    D_800DDFD0[omCurrentObj->objId] = 9;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB78;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    c34 = 6.283185482f;
    D_800EAC20[omCurrentObj->objId] = D_800DFBD0[omCurrentObj->objId][1]->angle.v.x;
    while (c34 < D_800EAC20[omCurrentObj->objId]) {
        D_800EAC20[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId] - c34;
    }
    while (D_800EAC20[omCurrentObj->objId] < 0.0f) {
        D_800EAC20[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId] + c34;
    }
    if (3.141592741f <= D_800EAC20[omCurrentObj->objId]) { D_800EAC20[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId] - c34; }
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x101F6);
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.6499999762f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
        break;
    case 2:
    case 3:
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
        break;
    }
    c44 = -0.1570796371f;
    c40 = 0.3f;
    c48 = 0.5235987902f;
    c4C = -0.5235987902f;
    i = 0;
    do {
        D_800EA8A0[omCurrentObj->objId] = (c44 - (D_800EAC20[omCurrentObj->objId] * c40)) + D_800EA8A0[omCurrentObj->objId];
        if (c48 < D_800EA8A0[omCurrentObj->objId]) {
            D_800EA8A0[omCurrentObj->objId] = c48;
        }
        if (D_800EA8A0[omCurrentObj->objId] < c4C) {
            D_800EA8A0[omCurrentObj->objId] = c4C;
        }
        ohSleep(1);
        i++;
    } while (i != 3);
    D_800EA8A0[omCurrentObj->objId] = c4C;
    gEntityFuncListIDArray[omCurrentObj->objId] = 6;
}
extern s32 D_800BE4EC;
void func_801E6C98_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E6BD4_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E6C98_ovl9();
        func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801E6C98_ovl9();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

/* D_8021D050_ovl9: literal, this TU owns its .rodata */
/* D_8021D054_ovl9: literal, this TU owns its .rodata */
void func_801A0D74_ovl7();

void func_801E6C98_ovl9(void) {
    func_801A0D74_ovl7();
    if (0.5235988f < D_800EA8A0[omCurrentObj->objId]) {
        D_800EA8A0[omCurrentObj->objId] = 0.5235988f;
    }
    if (D_800EA8A0[omCurrentObj->objId] < -0.5235988f) {
        D_800EA8A0[omCurrentObj->objId] = -0.5235988f;
    }
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = D_800EA8A0[omCurrentObj->objId];
}

void func_801E6D50_ovl9(struct GObj *arg0) {
    s32 n;
    f32 d;

    D_800DDFD0[omCurrentObj->objId] = 6;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB78;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E3750[omCurrentObj->objId] = -0.6499999762f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AA018(0x101F5);
    if ((0.0f < D_800E3210[omCurrentObj->objId]) && (D_800E3750[omCurrentObj->objId] < 0.0f)) {
        D_800EAA60[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId];
        n = 0;
        while (0.0f < D_800EAA60[omCurrentObj->objId]) {
            D_800EAA60[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] + D_800EAA60[omCurrentObj->objId];
            n++;
        }
        if (n == 0) {
            d = 0;
        } else {
            d = n;
        }
        D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] / d;
        while (0.0f < D_800E3210[omCurrentObj->objId]) {
            ohSleep(1);
        }
    }
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    D_800EA8A0[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
    curObjSleepForever();
}

extern s32 D_800BE4EC;
void func_801E7060_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E6F9C_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E7060_ovl9();
        func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801E7060_ovl9();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

/* D_8021D05C_ovl9: literal, this TU owns its .rodata */
/* D_8021D060_ovl9: literal, this TU owns its .rodata */
/* D_8021D064_ovl9: literal, this TU owns its .rodata */
void func_801A0D74_ovl7();

void func_801E7060_ovl9(void) {
    func_801A0D74_ovl7();
    if (0.0f == D_800EAA60[omCurrentObj->objId]) {
        D_800EA8A0[omCurrentObj->objId] = 0.034906585f + D_800EA8A0[omCurrentObj->objId];
    } else {
        D_800EA8A0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] - D_800EAA60[omCurrentObj->objId];
    }
    if (0.5235988f < D_800EA8A0[omCurrentObj->objId]) {
        D_800EA8A0[omCurrentObj->objId] = 0.5235988f;
    }
    if (D_800EA8A0[omCurrentObj->objId] < -0.5235988f) {
        D_800EA8A0[omCurrentObj->objId] = -0.5235988f;
    }
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = D_800EA8A0[omCurrentObj->objId];
}

extern struct EnemyEventTable D_801CBB54;
/* D_8021D068_ovl9: literal, this TU owns its .rodata */
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AA018(s32);
void func_800AF27C(void);

void func_801E7170_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 8;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB54;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 1;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    func_800AA018(0x101F5);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

extern s32 D_800BE4EC;
void func_801E5D2C_ovl9(void);
void func_801E5DE0_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E7320_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E5D2C_ovl9();
        break;
    case 2:
        func_801E5DE0_ovl9();
        if ((D_800BE4EC & 1) != (omCurrentObj->objId & 1)) {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 64/153.  The first 52 instructions are exact.  Residue: the ROM
   holds the D_800E6A10 base in $a2 where ours uses $a3, and from the first
   float compare on we run one instruction shorter than the ROM inside the
   facing branch, so the bc1f displacements differ by one. */
extern struct EnemyEventTable D_801CBB9C;
void func_800FB914(s32);
void func_800AA018(s32);
/* Hit-launch state: enter anim state 7 with the hit sound/flash,
 * zero bone 1's X spin, play the facing-specific tumble animation,
 * then reverse facing and launch backwards (6.0 for ground modes,
 * 8.0 for flying modes) with gravity -0.65 and 10.0 terminal speed,
 * into airborne state 6. */
void func_801E73C4_ovl9(struct GObj *arg0) {
    s32 anim;
    u32 id;

    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB9C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = 0.0f;
    func_800FB914(1);
    play_sound(0x9A);
    anim = 0x101F2;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        anim = 0x101F3;
    }
    func_800AA018(anim);
    func_800AF27C();
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    id = omCurrentObj->objId;
    switch (D_800E7880[id]) {
        case 0:
        case 1:
            D_800E64D0[id] = D_800E6A10[id] * 6.0f;
            break;
        case 2:
        case 3:
            D_800E64D0[id] = D_800E6A10[id] * 8.0f;
            break;
    }
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 6;
}
#elif defined(PORT)
extern struct EnemyEventTable D_801CBB9C;
void play_sound();
void func_800FB914(s32);
void func_800AA018(s32);
/* Hit-launch state: enter anim state 7 with the hit sound/flash,
 * zero bone 1's X spin, play the facing-specific tumble animation,
 * then reverse facing and launch backwards (6.0 for ground modes,
 * 8.0 for flying modes) with gravity -0.65 and 10.0 terminal speed,
 * into airborne state 6. */
void func_801E73C4_ovl9(struct GObj *arg0) {
    s32 anim;
    u32 id;

    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBB9C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = 0.0f;
    func_800FB914(1);
    play_sound(0x9A);
    anim = 0x101F2;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        anim = 0x101F3;
    }
    func_800AA018(anim);
    func_800AF27C();
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    id = omCurrentObj->objId;
    switch (D_800E7880[id]) {
        case 0:
        case 1:
            D_800E64D0[id] = D_800E6A10[id] * 6.0f;
            break;
        case 2:
        case 3:
            D_800E64D0[id] = D_800E6A10[id] * 8.0f;
            break;
    }
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E73C4_ovl9.s")
#endif

extern s32 D_800BE4EC;
void func_801A0D74_ovl7();
void func_8019F410_ovl7(struct DObj *);

void func_801E7628_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801A0D74_ovl7();
        func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801A0D74_ovl7();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_800B74B8(s32);                            /* extern */
s32 func_8019B834_ovl7(void);                       /* extern */

void func_801E76EC_ovl9(s32 arg0) {
    f32 *temp_v1;
    s32 var_v1;
    struct Sub800E1B50_80 *temp_v0;
    u32 temp_v1_2;
    u32 temp_v1_3;

    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B74B8;
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    if (func_8019B834_ovl7() == 0) {
        do {
            ohSleep(1);
        } while (func_8019B834_ovl7() == 0);
    }
    temp_v1 = &D_800E6A10[omCurrentObj->objId];
    *temp_v1 = -*temp_v1;
    func_800B19F4(0x30, omCurrentObj->objId);
    func_800AFBB4(1, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801E5A74_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8838_ovl7;
    func_801A0D50_ovl7(func_801E5858_ovl9);
    D_800DDFD0[omCurrentObj->objId] = 0xA;
    func_800B33F4();
    D_800E1B50[omCurrentObj->objId]->unk80->unk10 = 0.0f;
    temp_v1_2 = omCurrentObj->objId;
    var_v1 = temp_v1_2 * 4;
    if (D_800E1B50[temp_v1_2]->unk80->unk10 < 20.0f) {
        do {
            ohSleep(1);
            temp_v0 = D_800E1B50[omCurrentObj->objId]->unk80;
            temp_v0->unk10 += 2.0f;
            temp_v1_3 = omCurrentObj->objId;
            var_v1 = temp_v1_3 * 4;
        } while (D_800E1B50[temp_v1_3]->unk80->unk10 < 20.0f);
    }
    *(gEntityFuncListIDArray + var_v1) = 4;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E76EC_ovl9.s")
#endif

void func_801E7944_ovl9(GObj *arg0) {
}

/* D_8021D070_ovl9: literal, this TU owns its .rodata */

void func_801E794C_ovl9(GObj *arg0) {
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = D_800DFBD0[omCurrentObj->objId][1]->angle.v.z;
}

void func_800AFBB4(s32, struct GObj *);

void func_801E79F4_ovl9(GObj *arg0) {
    func_800AFBB4(0, omCurrentObj);
}

extern void func_800B79F4(struct GObj *);
/* D_8021D074_ovl9: literal, this TU owns its .rodata */
extern FUNCLIST D_8021BF48_ovl9;
extern FUNCLIST D_8021BF50_ovl9;
void func_801E7C88_ovl9(GObj *);
void func_801E7BB8_ovl9(struct GObj *);

void func_801E7A20_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DF150[omCurrentObj->objId] = func_801E7C88_ovl9;
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.2217305f;
    func_801A0D50_ovl7(func_801E7BB8_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    D_800E98E0[omCurrentObj->objId] = -1;
    D_800E9C60[omCurrentObj->objId] = -1;
    D_800E9E20[omCurrentObj->objId] = 1;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BF48_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021BF50_ovl9);
    }
}

extern FUNCLIST D_8021BF50_ovl9;

void func_801E7BB8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021BF50_ovl9);
    }
}

void func_801E7C38_ovl9(GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801E7C88_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021BF64_ovl9);
}

#ifdef MIPS_TO_C
/* FACTORY: 71/143, register rotation.  Control flow, frame and schedule are
   the ROM's; the residue is the saved/temp pair the flag constant and the
   gEntityFuncListIDArray base land in ($s0/$s1 and $a1/$v0 transposed). */
extern s32 D_801C8880_ovl7[];
extern s32 D_801CBBC0;
void func_800AA018(s32);
/* Perch/rest state: enter anim state 0 with the perch hit tables,
 * pitch the body -70deg times facing, queue the settle animations
 * (0x10220 then 0x1021F) and clear the shot timer; mode 0 goes
 * straight to state 1 (or despawn state 4 if the perch surface is
 * within 200 units of the origin and the timer ran out), mode 1
 * steps animation frames until the surface closes within 200 units
 * (state 4) or something else changes the state. */
void func_801E7CD0_ovl9(struct GObj *arg0) {
    u32 id;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8880_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBBC0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    id = omCurrentObj->objId;
    D_800E4C50[id] = D_800E6A10[id] * -1.2217305f;
    func_800AA018(0x10220);
    func_800AA018(0x1021F);
    D_800E9C60[omCurrentObj->objId] = -1;
    id = omCurrentObj->objId;
    switch (D_800E7880[id]) {
        case 0:
            gEntityFuncListIDArray[id] = 1;
            id = omCurrentObj->objId;
            if ((D_800E9E20[id] <= 0) && (D_800E6F50[id].originOffset < 200.0f)) {
                gEntityFuncListIDArray[id] = 4;
            }
            break;
        case 1:
            do {
                func_800AF27C();
                id = omCurrentObj->objId;
                if (D_800E6F50[id].originOffset < 200.0f) {
                    gEntityFuncListIDArray[id] = 4;
                    id = omCurrentObj->objId;
                }
            } while (gEntityFuncListIDArray[id] == 0);
            break;
    }
}
#elif defined(PORT)
extern s32 D_801C8880_ovl7[];
extern s32 D_801CBBC0;
void func_800AA018(s32);
/* Perch/rest state: enter anim state 0 with the perch hit tables,
 * pitch the body -70deg times facing, queue the settle animations
 * (0x10220 then 0x1021F) and clear the shot timer; mode 0 goes
 * straight to state 1 (or despawn state 4 if the perch surface is
 * within 200 units of the origin and the timer ran out), mode 1
 * steps animation frames until the surface closes within 200 units
 * (state 4) or something else changes the state. */
void func_801E7CD0_ovl9(struct GObj *arg0) {
    u32 id;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8880_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBBC0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    id = omCurrentObj->objId;
    D_800E4C50[id] = D_800E6A10[id] * -1.2217305f;
    func_800AA018(0x10220);
    func_800AA018(0x1021F);
    D_800E9C60[omCurrentObj->objId] = -1;
    id = omCurrentObj->objId;
    switch (D_800E7880[id]) {
        case 0:
            gEntityFuncListIDArray[id] = 1;
            id = omCurrentObj->objId;
            if ((D_800E9E20[id] <= 0) && (D_800E6F50[id].originOffset < 200.0f)) {
                gEntityFuncListIDArray[id] = 4;
            }
            break;
        case 1:
            do {
                func_800AF27C();
                id = omCurrentObj->objId;
                if (D_800E6F50[id].originOffset < 200.0f) {
                    gEntityFuncListIDArray[id] = 4;
                    id = omCurrentObj->objId;
                }
            } while (gEntityFuncListIDArray[id] == 0);
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E7CD0_ovl9.s")
#endif

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801E7F0C_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#ifdef MIPS_TO_C
/* FACTORY: 104/215, saved-register choice: the ROM keeps &omCurrentObj in
   $s2 with the save block at 0x44, ours picks $s1 at 0x40.  Clone family of
   the sibling twenty lines up in this file (same unk8C/unk98 install from
   D_801C8880_ovl7 / D_801CBBC0), whose spelling this draft follows. */
extern f32 D_8021BF6C_ovl9[];
extern f32 D_8021BF9C_ovl9[];
extern s32 func_8019A900_ovl7(s32 *);
extern f32 func_8019B608_ovl7(s32);
extern s32 random_soft_s32_range(s32);
void ohSleep(s32);
/* Takeoff state: enter anim state 0 with the perch tables, queue the
 * launch animations (0x1021A then 0x10219), pick a fresh random hop
 * pattern 0..11 (rerolling the previous one), fly toward Kirby's
 * side (rolls 9..11 flip away), and if that means turning around,
 * ease the -70deg body pitch across 4 ticks (else just wait 4
 * ticks); then load the pattern's launch speed (D_8021BF6C * facing)
 * and climb rate (D_8021BF9C) and enter flight state 2. */
extern s32 D_801C8880_ovl7[];
extern s32 D_801CBBC0;
void func_801E7F34_ovl9(struct GObj *arg0) {
    s32 sp68;
    f32 dir;
    s32 roll;
    u32 id;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8880_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBBC0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AA018(0x1021A);
    func_800AA018(0x10219);
    if (func_8019A900_ovl7(&sp68) != 0) {
        dir = sp68;
    } else {
        dir = func_8019B608_ovl7(0);
    }
    roll = random_soft_s32_range(0xC);
    while (roll == D_800E98E0[omCurrentObj->objId]) {
        roll = random_soft_s32_range(0xC);
    }
    D_800E98E0[omCurrentObj->objId] = roll;
    D_800E9C60[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    if (D_800E98E0[id] >= 9) {
        dir = -dir;
    }
    if (dir != D_800E6A10[id]) {
        D_800E9FE0[id].as_u32 = 1;
    } else {
        D_800E9FE0[id].as_u32 = 0;
    }
    D_800E6A10[omCurrentObj->objId] = dir;
    id = omCurrentObj->objId;
    if (D_800E9FE0[id].as_u32 != 0) {
        f32 step;

        for (step = 3.0f; step >= 0.0f; step -= 1.0f) {
            id = omCurrentObj->objId;
            D_800E4C50[id] = (D_800E6A10[id] * -0.17453294f * step) + (-1.2217305f * D_800E6A10[id]);
            ohSleep(1);
        }
        id = omCurrentObj->objId;
    } else {
        ohSleep(4);
        id = omCurrentObj->objId;
    }
    D_800E64D0[id] = D_8021BF6C_ovl9[D_800E98E0[id]] * D_800E6A10[id];
    id = omCurrentObj->objId;
    D_800E3210[id] = D_8021BF9C_ovl9[D_800E98E0[id]];
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}
#elif defined(PORT)
extern f32 D_8021BF6C_ovl9[];
extern f32 D_8021BF9C_ovl9[];
extern s32 func_8019A900_ovl7(s32 *);
extern f32 func_8019B608_ovl7(s32);
extern s32 random_soft_s32_range(s32);
void ohSleep(s32);
/* Takeoff state: enter anim state 0 with the perch tables, queue the
 * launch animations (0x1021A then 0x10219), pick a fresh random hop
 * pattern 0..11 (rerolling the previous one), fly toward Kirby's
 * side (rolls 9..11 flip away), and if that means turning around,
 * ease the -70deg body pitch across 4 ticks (else just wait 4
 * ticks); then load the pattern's launch speed (D_8021BF6C * facing)
 * and climb rate (D_8021BF9C) and enter flight state 2. */
void func_801E7F34_ovl9(struct GObj *arg0) {
    s32 sp68;
    f32 dir;
    s32 roll;
    u32 id;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8880_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBBC0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AA018(0x1021A);
    func_800AA018(0x10219);
    if (func_8019A900_ovl7(&sp68) != 0) {
        dir = sp68;
    } else {
        dir = func_8019B608_ovl7(0);
    }
    roll = random_soft_s32_range(0xC);
    while (roll == D_800E98E0[omCurrentObj->objId]) {
        roll = random_soft_s32_range(0xC);
    }
    D_800E98E0[omCurrentObj->objId] = roll;
    D_800E9C60[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    if (D_800E98E0[id] >= 9) {
        dir = -dir;
    }
    if (dir != D_800E6A10[id]) {
        D_800E9FE0[id].as_u32 = 1;
    } else {
        D_800E9FE0[id].as_u32 = 0;
    }
    D_800E6A10[omCurrentObj->objId] = dir;
    id = omCurrentObj->objId;
    if (D_800E9FE0[id].as_u32 != 0) {
        f32 step;

        for (step = 3.0f; step >= 0.0f; step -= 1.0f) {
            id = omCurrentObj->objId;
            D_800E4C50[id] = (D_800E6A10[id] * -0.17453294f * step) + (-1.2217305f * D_800E6A10[id]);
            ohSleep(1);
        }
        id = omCurrentObj->objId;
    } else {
        ohSleep(4);
        id = omCurrentObj->objId;
    }
    D_800E64D0[id] = D_8021BF6C_ovl9[D_800E98E0[id]] * D_800E6A10[id];
    id = omCurrentObj->objId;
    D_800E3210[id] = D_8021BF9C_ovl9[D_800E98E0[id]];
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E7F34_ovl9.s")
#endif

extern s32 D_801C8880_ovl7[];
extern struct EnemyEventTable D_801CBBE4;

void func_801E8290_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8880_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBBE4;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.221730471f;
    D_800E3750[omCurrentObj->objId] = -0.6499999762f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (0.0f < D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    func_800AA018(0x1021C);
    func_800AA018(0x1021B);
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern s32 D_801CBBC0;
/* D_8021D08C_ovl9: literal, this TU owns its .rodata */
extern void ohSleep(s32);
extern s32 D_801C8880_ovl7[];

void func_801E8484_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8880_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBBC0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.2217305f;
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId]--;
    }
    func_800AA018(0x1021E);
    func_800AA018(0x1021D);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

/* 35/125 diffs (from 109 with the type-splits below).  Residue: the ROM
   materialises the constant 1 THREE times (addiu $t6/$t3/$t3) for the
   D_800DDFD0, D_800E8920 and D_800E9AA0 stores; IDO has only TWO constant
   classes to fork with (s32 and u32), so whichever pair shares a class gets
   hoisted into $s1 and every temp below it rotates one slot.  Measured: all
   27 combinations of {plain, (u32) cast, 1U} across the three stores, and all
   19 combinations that include a vs32 cast -- `1U` and `vs32` are both
   byte-identical to the plain form, so no third class exists.  Loop form
   (while >0 / while != 0 / for / do-while) is inert. */
#ifdef NON_MATCHING
extern f32 D_8021D090_ovl9;
extern s32 random_soft_s32_range(s32);
void func_800AECC0(f32);
void func_800AED20(f32);

void func_801E85CC_ovl9(struct GObj *arg0) {
    s32 i;

    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBBC0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    *(u32 *) &D_800E8920[omCurrentObj->objId] = 1;
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_8021D090_ovl9;
    D_800E9C60[omCurrentObj->objId] = -1;
    D_800E9E20[omCurrentObj->objId] = random_soft_s32_range(3) + 2;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_800AA018(0x10218);
    func_800AA018(0x10217);
    func_800AF27C();
    D_800E9AA0[omCurrentObj->objId].as_u32 = 1;
    i = random_soft_s32_range(3) + 2;
    while (i != 0) {
        play_sound(0x15D);
        func_800AA018(0x10213);
        func_800AF27C();
        i--;
    }
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_800AA018(0x10216);
    func_800AA018(0x10215);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E85CC_ovl9.s")
#endif
extern s32 D_801C8880_ovl7[];
extern s32 D_801C88C8[];
void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);
void func_8019F9D0_ovl7(s32);

void func_801E87C0_ovl9(void) {
    func_801A0D74_ovl7();
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8880_ovl7;
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 0) {
        if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
            D_800E1B50[omCurrentObj->objId]->unk8C = D_801C88C8;
            func_8019F9D0_ovl7(0);
        }
    }
}

extern s32 D_801C7FF0_ovl7;
extern FUNCLIST D_8021BFCC_ovl9;
extern FUNCLIST D_8021BFFC_ovl9;
extern void func_801A3280_ovl7(void);
void func_801E8A38_ovl9(struct GObj *);
void func_801E89B8_ovl9(struct GObj *);

void func_801E8860_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk39 = -1;
    D_800DF150[omCurrentObj->objId] = func_801E8A38_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7FF0_ovl7;
    func_801A0D50_ovl7(func_801E89B8_ovl9);
    if (D_800E8E60[omCurrentObj->objId] == 1) {
        if ((u32) D_800E7880[omCurrentObj->objId] < 6) {
            D_800E7880[omCurrentObj->objId] = D_800E7880[omCurrentObj->objId] + 6;
            func_801A3280_ovl7();
        }
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 12, &D_8021BFCC_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021BFFC_ovl9);
    }
}

extern FUNCLIST D_8021BFFC_ovl9;

void func_801E89B8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021BFFC_ovl9);
    }
}

void func_801E8A38_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C008_ovl9);
}

#ifdef MIPS_TO_C
/* FACTORY: 103/127 -- WRONG, corrected this session by direct verify.py: true
   residue is 24/127. One register rotation. Control flow, schedule, frame and
   every stack slot are the ROM's; the residue is that the ROM holds the
   gEntitiesAngleZArray / D_800E98E0 bases in $v1 and the objId-derived index
   in $a0 where this draft uses $a1 and $v1 -- the same CSE-neighbour
   register-rename floor seen elsewhere in this overlay, four times over
   (once per D_800DFBD0/array-base pair touched). Not a source-spelling
   residue. */
extern void func_800B6E84(struct GObj *);
extern f32 D_8021C014_ovl9[];
/* Wall-mounted shooter init: install the static mover, face right,
 * bank the spawn Z angle into D_800EAA60 and zero the visual angles;
 * flat placements (spawn roll 0) count as grounded.  Aim the barrel
 * bone (bone 2) to the per-mode pitch from D_8021C014, remember the
 * combined rest angle in D_800EA8A0, zero the bone's Y/Z rotation
 * and enter state 0. */
void func_801E8A80_ovl9(struct GObj *arg0) {
    u32 id;
    f32 pitch;

    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B6E84;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    id = omCurrentObj->objId;
    D_800EAA60[id] = gEntitiesAngleZArray[id];
    gEntitiesAngleZArray[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    gEntitiesAngleYArray[id] = gEntitiesAngleZArray[id];
    gEntitiesAngleXArray[omCurrentObj->objId] = gEntitiesAngleYArray[id];
    id = omCurrentObj->objId;
    if (D_800EAA60[id] == 0.0f) {
        D_800E98E0[id] = 1;
    } else {
        D_800E98E0[id] = 0;
    }
    id = omCurrentObj->objId;
    if (D_800E98E0[id] != 0) {
        D_800E8920[id] = 1;
    } else {
        D_800E8920[id] = 0;
    }
    id = omCurrentObj->objId;
    pitch = D_8021C014_ovl9[D_800E7880[id]];
    D_800EA6E0[id] = pitch;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = pitch;
    id = omCurrentObj->objId;
    D_800EA8A0[id] = D_800EAA60[id] + pitch;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = D_800DFBD0[omCurrentObj->objId][2]->angle.v.z;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
#elif defined(PORT)
extern void func_800B6E84(struct GObj *);
extern f32 D_8021C014_ovl9[];
/* Wall-mounted shooter init: install the static mover, face right,
 * bank the spawn Z angle into D_800EAA60 and zero the visual angles;
 * flat placements (spawn roll 0) count as grounded.  Aim the barrel
 * bone (bone 2) to the per-mode pitch from D_8021C014, remember the
 * combined rest angle in D_800EA8A0, zero the bone's Y/Z rotation
 * and enter state 0. */
void func_801E8A80_ovl9(struct GObj *arg0) {
    u32 id;
    f32 pitch;

    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B6E84;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    id = omCurrentObj->objId;
    D_800EAA60[id] = gEntitiesAngleZArray[id];
    gEntitiesAngleZArray[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    gEntitiesAngleYArray[id] = gEntitiesAngleZArray[id];
    gEntitiesAngleXArray[omCurrentObj->objId] = gEntitiesAngleYArray[id];
    id = omCurrentObj->objId;
    if (D_800EAA60[id] == 0.0f) {
        D_800E98E0[id] = 1;
    } else {
        D_800E98E0[id] = 0;
    }
    id = omCurrentObj->objId;
    if (D_800E98E0[id] != 0) {
        D_800E8920[id] = 1;
    } else {
        D_800E8920[id] = 0;
    }
    id = omCurrentObj->objId;
    pitch = D_8021C014_ovl9[D_800E7880[id]];
    D_800EA6E0[id] = pitch;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = pitch;
    id = omCurrentObj->objId;
    D_800EA8A0[id] = D_800EAA60[id] + pitch;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = D_800DFBD0[omCurrentObj->objId][2]->angle.v.z;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E8A80_ovl9.s")
#endif

extern void func_800B7514(struct GObj *);
extern f32 D_8021C014_ovl9[];

void func_801E8C7C_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7514;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = D_800EA6E0[omCurrentObj->objId] = D_8021C014_ovl9[D_800E7880[omCurrentObj->objId]];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = D_800EAC20[omCurrentObj->objId] = D_800DFBD0[omCurrentObj->objId][2]->angle.v.z;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern void func_8019BB58_ovl7(void);
extern s32 D_801C7FF0_ovl7;
extern s32 D_801CB6B0;
extern void func_800A9EA4(s32);
extern void func_800B33F4(void);

void func_801E8DD0_ovl9(struct GObj *arg0) {
    if (D_800E8E60[omCurrentObj->objId] == 0) {
        D_800DDFD0[omCurrentObj->objId] = 0;
    } else {
        func_8019BB58_ovl7();
        D_800DDFD0[omCurrentObj->objId] = 1;
    }
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7FF0_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB6B0;
    func_800A9EA4(0x10021);
    func_800B33F4();
    ohSleep(0x3C);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801E8F74_ovl9(struct GObj *);
void func_801A0D74_ovl7();
void func_8019F3F0_ovl7(void);

void func_801E8EC8_ovl9(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = D_800EAA60[omCurrentObj->objId];
    if (D_800E7880[omCurrentObj->objId] == 5) {
        func_801E8F74_ovl9(arg0);
    }
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0D74_ovl7(arg0);
    }
    func_8019F3F0_ovl7();
}

/* FACTORY: 65/201 -- measured 2026-08-23, correcting the prior note's D
   count (word count was right, "1/201" undercounted the cascade). First
   101 instructions byte-exact, frame 0x40 and all three stack slots
   (0x20/0x2C/0x34) exact via the five pad locals. Root cause is ONE extra
   late_rodata constant: right after the second atan2f call, IDO emits a
   spurious lwc1 of 1.5707964f into $f14 (byte value 3FC90FDB, same bits
   as the ABSF-compare constant and the upper-clamp constant used 20 lines
   later) that the ROM does not have at all -- the ROM's next instruction
   after "lw $a1, omCurrentObj" is straight into loading D_8021D0A8_ovl9
   (6.2831855f) for the second while-loop-pair. Ruled out: materializing
   ABSF(ang) into a named local before the compare (byte-identical output,
   zero effect -- the extra load is not tied to the ABSF expansion). Ruled
   out: m2c can't re-derive this function fresh from the current ctx.c
   (fails on an unrelated PositionState field before reaching this one).
   Everything past [102] is the same shift-by-one cascade re-syncing once
   this one spurious load is found and removed -- looks like IDO global
   instruction scheduling speculatively hoisting an independent pure float
   load across the two while-loops from its real (much later) use point in
   the hysteresis clamp; a fix likely needs the clamp block restructured
   (e.g. caching D_800EA6E0[objId] in a named local per lever 10) rather
   than anything local to this while-loop preamble. */
#ifdef NON_MATCHING
extern f32 sqrtf(f32);
extern f32 atan2f(f32, f32);

void func_801E8F74_ovl9(struct GObj *arg0) {
    f32 pad0;
    f32 pad1;
    f32 dy;
    f32 pad2;
    f32 dz;
    f32 pad3;
    f32 pad4;
    f32 dist;
    f32 dx;
    f32 ang;

    if (D_800E6F50[omCurrentObj->objId].originOffset < 320.0f) {
        dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
        dy = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
        dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
        dist = sqrtf((dx * dx) + (dz * dz));
        ang = atan2f(dx, dz) - D_800E17D0[omCurrentObj->objId];
        while (3.1415927f <= ang) {
            ang = ang - 6.2831855f;
        }
        while (ang <= -3.1415927f) {
            ang = ang + 6.2831855f;
        }
        if (1.5707964f < ABSF(ang)) {
            dist = -dist;
        }
        ang = atan2f(dist, dy) - D_800EAA60[omCurrentObj->objId];
        while (3.1415927f <= ang) {
            ang = ang - 6.2831855f;
        }
        while (ang <= -3.1415927f) {
            ang = ang + 6.2831855f;
        }
        if (ang + 0.039269909f < D_800EA6E0[omCurrentObj->objId]) {
            D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] - 0.039269909f;
            if (D_800EA6E0[omCurrentObj->objId] < -1.5707964f) {
                D_800EA6E0[omCurrentObj->objId] = -1.5707964f;
            }
        } else if (D_800EA6E0[omCurrentObj->objId] < ang - 0.039269909f) {
            D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + 0.039269909f;
            if (1.5707964f < D_800EA6E0[omCurrentObj->objId]) {
                D_800EA6E0[omCurrentObj->objId] = 1.5707964f;
            }
        }
    }
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = D_800EA6E0[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] + D_800EA6E0[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E8F74_ovl9.s")
#endif

extern f32 sqrtf(f32);
extern f32 atan2f(f32, f32);
extern void func_800B2AD4(Vector *, s32, u32);

/* Empty parens, not (void): the definition below takes an s32 parameter
   because the ROM homes an unused $a0, and a (void) prototype forbids
   that. */
void func_801E92DC_ovl9();

void func_801E9298_ovl9(void) {
    if (D_800E7880[omCurrentObj->objId] == 0xB) {
        func_801E92DC_ovl9();
    }
}

/* MATCHED. Declaration order is load-bearing (LEVERS lever 12/13): three
   scalars before the Vector and one (`t`) after it lands sp30 at the ROM's
   0x30 with the atan2f spill at 0x44; the old note's "all before" shape
   (11/219) put the Vector 4 bytes high across its whole span. */
void func_801E92DC_ovl9(s32 arg0) {
    f32 pitch;
    f32 yaw;
    f32 diff;
    Vector sp30;
    f32 t;

    sp30.x = gEntitiesNextPosXArray[0];
    sp30.y = gEntitiesNextPosYArray[0] + 20.0f;
    sp30.z = gEntitiesNextPosZArray[0];
    func_800B2AD4(&sp30, 0, 0xFFFF);
    pitch = atan2f(sqrtf((sp30.x * sp30.x) + (sp30.z * sp30.z)), sp30.y);
    yaw = atan2f(sp30.x, sp30.z);
    while (pitch >= 3.1415927f) {
        pitch -= 3.1415927f;
    }
    while (pitch <= -3.1415927f) {
        pitch += 3.1415927f;
    }
    if ((pitch + 0.039269909f) < D_800EA6E0[omCurrentObj->objId]) {
        D_800EA6E0[omCurrentObj->objId] -= 0.039269909f;
        if (D_800EA6E0[omCurrentObj->objId] < 0.0f) {
            D_800EA6E0[omCurrentObj->objId] = 0.0f;
        }
    } else if (D_800EA6E0[omCurrentObj->objId] < (pitch - 0.039269909f)) {
        D_800EA6E0[omCurrentObj->objId] += 0.039269909f;
        if (D_800EA6E0[omCurrentObj->objId] > 1.5707964f) {
            D_800EA6E0[omCurrentObj->objId] = 1.5707964f;
        }
    }
    diff = yaw - D_800EAC20[omCurrentObj->objId];
    t = (diff < 0) ? -diff : diff;
    if (t > 3.1415927f) {
        if (diff < 0.0f) {
            diff = (yaw + 6.2831855f) - D_800EAC20[omCurrentObj->objId];
        } else {
            diff = yaw - (D_800EAC20[omCurrentObj->objId] + 6.2831855f);
        }
    }
    t = (diff < 0) ? -diff : diff;
    if (t > 0.039269909f) {
        if (diff > 0.0f) {
            t = 0.039269909f;
        } else {
            t = -0.039269909f;
        }
        D_800EAC20[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId] + t;
        while (D_800EAC20[omCurrentObj->objId] > 6.2831855f) {
            D_800EAC20[omCurrentObj->objId] -= 6.2831855f;
        }
        while (D_800EAC20[omCurrentObj->objId] < 0.0f) {
            D_800EAC20[omCurrentObj->objId] += 6.2831855f;
        }
    }
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = D_800EA6E0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = D_800EAC20[omCurrentObj->objId];
}

extern s32 D_801C7FF0_ovl7;
extern s32 D_801CB6D4;
/* D_8021D0F0_ovl9: literal, this TU owns its .rodata */

void func_801E9648_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7FF0_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB6D4;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8019F3F0_ovl7(void);

/* The dead cases 6..11 are load-bearing: IDO only builds the jump table when
   the case values are dense. */
void func_801E9724_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            func_801A0D74_ovl7();
        }
        func_8019F3F0_ovl7();
        break;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
        break;
    }
}

s32 func_801ACC34_ovl7(s32, s32);
void func_800AF27C(void);

/* Dense case labels are load-bearing (IDO only builds the jump table when the
   values cover the range), and `temp` is what puts the store in the beqz delay
   slot -- a read-back of D_800EBBE0 there costs six instructions. */
void func_801E979C_ovl9(struct GObj *arg0) {
    s32 temp;

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7FF0_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB6B0;
    ohSleep(5);
    func_800A9EA4(0x10020);
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0: case 1: case 2: case 3: case 4: case 5:
        temp = func_801ACC34_ovl7(0, 0);
        D_800EBBE0[omCurrentObj->objId] = temp;
        if (temp != 0) {
            play_sound(0xA5);
        }
        break;
    case 6: case 7: case 8: case 9: case 10: case 11:
        temp = func_801ACC34_ovl7(0, 1);
        D_800EBBE0[omCurrentObj->objId] = temp;
        if (temp != 0) {
            D_800E8E60[D_800EBBE0[omCurrentObj->objId]] = 1;
            play_sound(0xA5);
        }
        break;
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801E89B8_ovl9(struct GObj *);

void func_801E9928_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E89B8_ovl9);
        }
    }
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801E89B8_ovl9(struct GObj *);

void func_801E99A8_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_800E8920[omCurrentObj->objId] == 1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E89B8_ovl9);
        }
    }
}

/* D_8021D154_ovl9: literal, this TU owns its .rodata */

void func_801E9A28_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            D_800E3750[omCurrentObj->objId] = -0.325f;
            D_800E3C90[omCurrentObj->objId] = 5.0f;
        }
    }
}

extern s32 D_801C8958_ovl7;
extern FUNCLIST D_8021C044_ovl9;
extern FUNCLIST D_8021C04C_ovl9;
void func_801E9D18_ovl9(struct GObj *);
void func_801E9C98_ovl9(struct GObj *);
void func_8019BB58_ovl7(void);
void func_801A3280_ovl7(void);

void func_801E9AA0_ovl9(struct GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk39 = -1;
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EADE0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EAFA0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EB160[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EB320[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801E9D18_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8958_ovl7;
    func_801A0D50_ovl7(func_801E9C98_ovl9);
    func_8019BB58_ovl7();
    if (D_800E8E60[omCurrentObj->objId] == 1) {
        *(s8 *) &D_800E7880[omCurrentObj->objId] = 1;
        func_801A3280_ovl7();
    } else {
        D_800E7880[omCurrentObj->objId] = 0;
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C044_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021C04C_ovl9);
    }
}

extern FUNCLIST D_8021C04C_ovl9;

void func_801E9C98_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, D_8021C04C_ovl9);
    }
}

void func_801E9D18_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021C054_ovl9);
}

extern void func_800B6E84(struct GObj *);
extern f32 D_8021C05C_ovl9[];

void func_801E9D60_ovl9(struct GObj *arg0) {
    f32 temp;

    D_800DEF90[omCurrentObj->objId] = func_800B6E84;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800EAA60[omCurrentObj->objId] = gEntitiesAngleZArray[omCurrentObj->objId];
    gEntitiesAngleZArray[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleZArray[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = D_800EA6E0[omCurrentObj->objId] = temp = D_8021C05C_ovl9[D_800E7880[omCurrentObj->objId]];
    D_800EA8A0[omCurrentObj->objId] = temp + D_800EAA60[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = D_800DFBD0[omCurrentObj->objId][2]->angle.v.z;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern void func_800B7514(struct GObj *);
extern f32 D_8021C05C_ovl9[];

void func_801E9F08_ovl9(struct GObj *arg0) {
    f32 temp;

    D_800DEF90[omCurrentObj->objId] = func_800B7514;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = D_800EA6E0[omCurrentObj->objId] = D_8021C05C_ovl9[D_800E7880[omCurrentObj->objId]];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = D_800EAC20[omCurrentObj->objId] = D_800DFBD0[omCurrentObj->objId][2]->angle.v.z;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern s32 D_801CB470_ovl7;

void func_801EA048_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8958_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB470_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    ohSleep(0x3C);
    if (D_800E8E60[omCurrentObj->objId] == 0) {
        while (480.0f <= D_800E6F50[omCurrentObj->objId].originOffset) {
            ohSleep(1);
        }
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

#ifdef NON_MATCHING
/* 22/90: the ROM defers the `sw $a0` parameter-home store into the delay
 * slot of the func_801EA2F8_ovl9 call (arg0's first and only use) and keeps
 * arg0 in $a0 the whole time; this draft's IDO output stores the home slot
 * immediately in the prologue (before the unrelated angle.v.x store that
 * doesn't touch $a0) and then reloads it again right before the call --
 * doing the same store twice instead of once, deferred. Re-measured this
 * session, still exactly 22. The angle.v.x statement cannot be reordered
 * around the call (source order already matches the ROM's instruction
 * order); this reads as a prologue-vs-delay-slot store-scheduling floor,
 * not a source-spelling residue. */
void func_801EA2F8_ovl9(struct GObj *);
void func_801EA628_ovl9(void);
void func_801A0D74_ovl7();
void func_8019F3F0_ovl7(void);

void func_801EA190_ovl9(struct GObj *arg0) {
    if (D_800E8E60[omCurrentObj->objId] == 0) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = D_800EAA60[omCurrentObj->objId];
        func_801EA2F8_ovl9(arg0);
        if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
            func_801A0D74_ovl7(arg0);
            D_800E5F90[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId];
            D_800E6BD0[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId];
            gEntitiesNextPosXArray[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId];
            gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EB160[omCurrentObj->objId];
            gEntitiesNextPosZArray[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId];
            D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        }
        func_8019F3F0_ovl7();
    } else {
        func_801EA628_ovl9();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801EA190_ovl9.s")
#endif
void func_801EA2F8_ovl9(struct GObj *arg0) {
    f32 pad0;
    f32 pad1;
    f32 dy;
    f32 pad2;
    f32 dz;
    f32 pad3;
    f32 pad4;
    f32 dist;
    f32 dx;
    f32 ang;

    if (D_800E6F50[omCurrentObj->objId].originOffset < 480.0f) {
        dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
        dy = ((gEntitiesNextPosYArray[0] + 20.0f) + 80.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
        dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
        dist = sqrtf((dx * dx) + (dz * dz));
        ang = atan2f(dx, dz) - D_800E17D0[omCurrentObj->objId];
        while (3.1415927f <= ang) {
            ang = ang - 6.2831855f;
        }
        while (ang <= -3.1415927f) {
            ang = ang + 6.2831855f;
        }
        if (1.5707964f < ABSF(ang)) {
            dist = -dist;
        }
        ang = atan2f(dist, dy) - D_800EAA60[omCurrentObj->objId];
        while (3.1415927f <= ang) {
            ang = ang - 6.2831855f;
        }
        while (ang <= -3.1415927f) {
            ang = ang + 6.2831855f;
        }
        if (ang + 0.039269909f < D_800EA6E0[omCurrentObj->objId]) {
            D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] - 0.039269909f;
            if (D_800EA6E0[omCurrentObj->objId] < -0.5235988f) {
                D_800EA6E0[omCurrentObj->objId] = -0.5235988f;
            }
        } else if (D_800EA6E0[omCurrentObj->objId] < ang - 0.039269909f) {
            D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + 0.039269909f;
            if (0.5235988f < D_800EA6E0[omCurrentObj->objId]) {
                D_800EA6E0[omCurrentObj->objId] = 0.5235988f;
            }
        }
    }
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = D_800EA6E0[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + D_800EAA60[omCurrentObj->objId];
}

#ifdef MIPS_TO_C
/* FACTORY: 15/221, stack slot 0x44 vs the ROM's 0x30 for the first spilled
   float, with the FP temps renamed to follow.  The first 8 instructions and
   the whole call sequence are the ROM's. */
extern void func_800B2AD4(Vector *, s32, u32);
extern float atan2f(float, float);
/* Shooter aim tick: take a point 100 units above Kirby's feet (foot
 * +20 +80), transform it into the turret frame via func_800B2AD4,
 * derive the target pitch/yaw with atan2, and walk the tracked pitch
 * D_800EA6E0 (clamped [0, 30deg]) and yaw D_800EAC20 (wrap-aware,
 * renormalized to [0, 2pi)) toward it in pi/80 steps; write both onto
 * bone 2's X/Y rotation. */
void func_801EA628_ovl9(void) {
    f32 sp30;
    f32 sp34;
    f32 sp38;
    f32 pitch;
    f32 yaw;
    f32 d;
    u32 id;

    sp30 = gEntitiesNextPosXArray[0];
    sp34 = gEntitiesNextPosYArray[0] + 20.0f + 80.0f;
    sp38 = gEntitiesNextPosZArray[0];
    func_800B2AD4((Vector *) &sp30, 0, 0xFFFF);
    pitch = atan2f(sqrtf((sp30 * sp30) + (sp38 * sp38)), sp34);
    yaw = atan2f(sp30, sp38);
    while (pitch >= 3.1415927f) {
        pitch -= 3.1415927f;
    }
    while (pitch <= -3.1415927f) {
        pitch += 3.1415927f;
    }
    id = omCurrentObj->objId;
    if ((pitch + 0.03926991f) < D_800EA6E0[id]) {
        D_800EA6E0[id] -= 0.03926991f;
        id = omCurrentObj->objId;
        if (D_800EA6E0[id] < 0.0f) {
            D_800EA6E0[id] = 0.0f;
        }
    } else if (D_800EA6E0[id] < (pitch - 0.03926991f)) {
        D_800EA6E0[id] += 0.03926991f;
        id = omCurrentObj->objId;
        if (D_800EA6E0[id] > 0.5235988f) {
            D_800EA6E0[id] = 0.5235988f;
        }
    }
    id = omCurrentObj->objId;
    d = yaw - D_800EAC20[id];
    if (((d < 0.0f) ? -d : d) > 3.1415927f) {
        if (d < 0.0f) {
            d = (yaw + 6.2831855f) - D_800EAC20[id];
        } else {
            d = yaw - (D_800EAC20[id] + 6.2831855f);
        }
    }
    if (((d < 0.0f) ? -d : d) > 0.03926991f) {
        D_800EAC20[id] += (d > 0.0f) ? 0.03926991f : -0.03926991f;
        id = omCurrentObj->objId;
        while (D_800EAC20[id] > 6.2831855f) {
            D_800EAC20[id] -= 6.2831855f;
            id = omCurrentObj->objId;
        }
        while (D_800EAC20[id] < 0.0f) {
            D_800EAC20[id] += 6.2831855f;
            id = omCurrentObj->objId;
        }
    }
    D_800DFBD0[id][2]->angle.v.x = D_800EA6E0[id];
    id = omCurrentObj->objId;
    D_800DFBD0[id][2]->angle.v.y = D_800EAC20[id];
}
#elif defined(PORT)
extern void func_800B2AD4(Vector *, s32, u32);
extern float atan2f(float, float);
/* Shooter aim tick: take a point 100 units above Kirby's feet (foot
 * +20 +80), transform it into the turret frame via func_800B2AD4,
 * derive the target pitch/yaw with atan2, and walk the tracked pitch
 * D_800EA6E0 (clamped [0, 30deg]) and yaw D_800EAC20 (wrap-aware,
 * renormalized to [0, 2pi)) toward it in pi/80 steps; write both onto
 * bone 2's X/Y rotation. */
void func_801EA628_ovl9(void) {
    f32 sp30;
    f32 sp34;
    f32 sp38;
    f32 pitch;
    f32 yaw;
    f32 d;
    u32 id;

    sp30 = gEntitiesNextPosXArray[0];
    sp34 = gEntitiesNextPosYArray[0] + 20.0f + 80.0f;
    sp38 = gEntitiesNextPosZArray[0];
    func_800B2AD4((Vector *) &sp30, 0, 0xFFFF);
    pitch = atan2f(sqrtf((sp30 * sp30) + (sp38 * sp38)), sp34);
    yaw = atan2f(sp30, sp38);
    while (pitch >= 3.1415927f) {
        pitch -= 3.1415927f;
    }
    while (pitch <= -3.1415927f) {
        pitch += 3.1415927f;
    }
    id = omCurrentObj->objId;
    if ((pitch + 0.03926991f) < D_800EA6E0[id]) {
        D_800EA6E0[id] -= 0.03926991f;
        id = omCurrentObj->objId;
        if (D_800EA6E0[id] < 0.0f) {
            D_800EA6E0[id] = 0.0f;
        }
    } else if (D_800EA6E0[id] < (pitch - 0.03926991f)) {
        D_800EA6E0[id] += 0.03926991f;
        id = omCurrentObj->objId;
        if (D_800EA6E0[id] > 0.5235988f) {
            D_800EA6E0[id] = 0.5235988f;
        }
    }
    id = omCurrentObj->objId;
    d = yaw - D_800EAC20[id];
    if (((d < 0.0f) ? -d : d) > 3.1415927f) {
        if (d < 0.0f) {
            d = (yaw + 6.2831855f) - D_800EAC20[id];
        } else {
            d = yaw - (D_800EAC20[id] + 6.2831855f);
        }
    }
    if (((d < 0.0f) ? -d : d) > 0.03926991f) {
        D_800EAC20[id] += (d > 0.0f) ? 0.03926991f : -0.03926991f;
        id = omCurrentObj->objId;
        while (D_800EAC20[id] > 6.2831855f) {
            D_800EAC20[id] -= 6.2831855f;
            id = omCurrentObj->objId;
        }
        while (D_800EAC20[id] < 0.0f) {
            D_800EAC20[id] += 6.2831855f;
            id = omCurrentObj->objId;
        }
    }
    D_800DFBD0[id][2]->angle.v.x = D_800EA6E0[id];
    id = omCurrentObj->objId;
    D_800DFBD0[id][2]->angle.v.y = D_800EAC20[id];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801EA628_ovl9.s")
#endif

s32 func_801ACC34_ovl7(s32, s32);


void func_801EA9A0_ovl9(s32 arg0) {
    s32 temp_v0_2;
    s32 temp_v0_3;
    u8 temp_v0;

    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8958_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801CB470_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    ohSleep(5);
    func_800AA018(0x1020F);
    ohSleep(8);
    temp_v0 = D_800E7880[omCurrentObj->objId];
    switch (temp_v0) {                              /* irregular */
    case 0:
        temp_v0_2 = func_801ACC34_ovl7(0x26, 0);
        D_800EBBE0[omCurrentObj->objId] = temp_v0_2;
        if (temp_v0_2 != 0) {
            play_sound(0xA5, D_800EBBE0);
        }
        break;
    case 1:
        temp_v0_3 = func_801ACC34_ovl7(0x26, 1);
        D_800EBBE0[omCurrentObj->objId] = temp_v0_3;
        if (temp_v0_3 != 0) {
            D_800E8E60[D_800EBBE0[omCurrentObj->objId]] = 1;
            play_sound(0xA5, D_800EBBE0);
        }
        break;
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}



void func_801EAB4C_ovl9(GObj *arg0) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
        func_8019F3F0_ovl7();
        break;
    case 1:
        break;
    }
}

