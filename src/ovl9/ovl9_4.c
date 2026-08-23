#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021BE4C_ovl9;
extern FUNCLIST D_8021BEA0_ovl9;
extern FUNCLIST D_8021BED0_ovl9;

extern void func_800B6FD8(struct GObj *);
extern void func_801A0D50_ovl7(void *);
/* K&R form is load-bearing here: its real signature is
 * void func_801A6C10_ovl7(GObj *), but this file calls it with both 0 args
 * (line ~762) and 1 arg (lines ~25, ~554) -- the ROM relies on whatever
 * GObj* is already sitting in $a0 at the 0-arg site. An ANSI prototype
 * breaks compilation with "too few arguments". */
extern void func_801A6C10_ovl7();
extern FUNCLIST D_8021BE20_ovl9;
extern FUNCLIST D_8021BE28_ovl9;
void func_801E0CC4_ovl9(struct GObj *);
void func_801E0BF8_ovl9(struct GObj *);

void func_801E0AA0_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DF150[omCurrentObj->objId] = func_801E0CC4_ovl9;
    func_801A0D50_ovl7(func_801E0BF8_ovl9);
    tmp->unk42 = 2;
    *(s8 *) &tmp->unk38 = -1;
    tmp->unk39 = -1;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BE20_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, &D_8021BE28_ovl9);
    }
}

extern FUNCLIST D_8021BE28_ovl9;

void func_801E0BF8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, D_8021BE28_ovl9);
    }
}

void func_801E0C78_ovl9(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E0C9C_ovl9(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

void func_801E0CC4_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021BE4C_ovl9);
}

void func_801E0D0C_ovl9(struct GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E5F90[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800E98E0[omCurrentObj->objId] = 0x96;
    D_800E9C60[omCurrentObj->objId] = 0x20;
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) {
        D_800EB320[omCurrentObj->objId] = 1.0f;
    } else {
        D_800EB320[omCurrentObj->objId] = -1.0f;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

extern f32 **D_801CAAAC;
extern struct EnemyEventTable D_801CB9C8;

void func_800A9EA4(s32);
void func_801A2ADC_ovl7(void *);
void ohSleep(s32);
void func_800AA018(s32);
void play_sound(s32);

void func_801E0E24_ovl9(struct GObj *arg0) {

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E0490[omCurrentObj->objId] = &D_801CAAAC;
    func_801A2ADC_ovl7(&D_801CAAAC);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB9C8;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] =
        D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 1.0f;
    if (0.0f == D_800E3750[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] * 0.2f;
    }
    func_800A9EA4(0x101B3);
    while (D_800E9C60[omCurrentObj->objId]-- > 0) {
        if (ABS(D_800E3210[omCurrentObj->objId]) == D_800E3C90[omCurrentObj->objId]) {
            D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
        }
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

extern s32 D_8012E850;
extern struct GObjProcess *gEntityGObjProcessArray[];
/* K&R form is load-bearing on every repeat of this declaration in this file
 * (2x): its own definition below takes no parameters
 * (void func_801E2548_ovl9() {...}), but its call site at line ~475 passes
 * an arg0 anyway -- the ROM leaves it unread. An ANSI (void) prototype
 * breaks compilation with "too many arguments" at that call site. */
void func_801E2548_ovl9();

void func_801E1118_ovl9(struct GObj *arg0) {
    if (ABSF(D_800E3210[omCurrentObj->objId]) == D_800E3C90[omCurrentObj->objId]) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    }
    if (D_8012E850 != 0) {
        if (D_800E6F50[omCurrentObj->objId].originOffset < 240.0f) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 6;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E0BF8_ovl9);
        }
    }
    func_801E2548_ovl9(arg0);
}

extern f32 **D_801CA9F8_ovl7;
extern s32 D_801CBA10;

void func_801E1214_ovl9(struct GObj *arg0) {
    s32 i;

    D_800E9C60[omCurrentObj->objId] = 0x40;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E0490[omCurrentObj->objId] = &D_801CA9F8_ovl7;
    func_801A2ADC_ovl7(&D_801CA9F8_ovl7);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA10;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] =
        D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    for (i = 0; i != 8; i++) {
        D_800E64D0[omCurrentObj->objId] = (1.0f - (0.125f * i)) * D_800E6A10[omCurrentObj->objId];
        if (ABS(D_800E3210[omCurrentObj->objId]) == D_800E3C90[omCurrentObj->objId]) {
            D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
        }
        ohSleep(1);
    }
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    do {
        D_800E64D0[omCurrentObj->objId] = (1.0f - (0.125f * i)) * D_800E6A10[omCurrentObj->objId];
        if (ABS(D_800E3210[omCurrentObj->objId]) == D_800E3C90[omCurrentObj->objId]) {
            D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
        }
        ohSleep(1);
        i--;
    } while (i != 0);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E1590_ovl9(struct GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E5F90[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800E98E0[omCurrentObj->objId] = 0x96;
    D_800E9C60[omCurrentObj->objId] = 0x20;
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) {
        D_800EB320[omCurrentObj->objId] = 1.0f;
    } else {
        D_800EB320[omCurrentObj->objId] = -1.0f;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

extern f32 **D_801CAAC0;
extern struct EnemyEventTable D_801CB9EC;

void func_801E16A8_ovl9(struct GObj *arg0) {

    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E0490[omCurrentObj->objId] = &D_801CAAC0;
    func_801A2ADC_ovl7(&D_801CAAC0);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB9EC;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 1.0f;
    if (0.0f == D_800E6690[omCurrentObj->objId]) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.2f;
    }
    func_800A9EA4(0x101B3);
    while (D_800E9C60[omCurrentObj->objId]-- > 0) {
        if (ABS(D_800E64D0[omCurrentObj->objId]) == D_800E6850[omCurrentObj->objId]) {
            D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
        }
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801E1994_ovl9(struct GObj *arg0) {
    if (ABSF(D_800E64D0[omCurrentObj->objId]) == D_800E6850[omCurrentObj->objId]) {
        D_800E5F90[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32;
        D_800E6BD0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    }
    if (D_8012E850 != 0) {
        if (D_800E6F50[omCurrentObj->objId].originOffset < 240.0f) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 6;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E0BF8_ovl9);
        }
    }
    func_801E2548_ovl9(arg0);
}

void func_801E1AB0_ovl9(struct GObj *arg0) {
    s32 i;

    D_800E9C60[omCurrentObj->objId] = 0x40;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E0490[omCurrentObj->objId] = &D_801CA9F8_ovl7;
    func_801A2ADC_ovl7(&D_801CA9F8_ovl7);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA10;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    for (i = 0; i != 8; i++) {
        D_800E3210[omCurrentObj->objId] = (1.0f - (0.125f * i)) * D_800EB320[omCurrentObj->objId];
        if (ABS(D_800E64D0[omCurrentObj->objId]) == D_800E6850[omCurrentObj->objId]) {
            D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
        }
        ohSleep(1);
    }
    D_800EB320[omCurrentObj->objId] = -D_800EB320[omCurrentObj->objId];
    do {
        D_800E3210[omCurrentObj->objId] = (1.0f - (0.125f * i)) * D_800EB320[omCurrentObj->objId];
        if (ABS(D_800E64D0[omCurrentObj->objId]) == D_800E6850[omCurrentObj->objId]) {
            D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
        }
        ohSleep(1);
        i--;
    } while (i != 0);
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

#ifdef MIPS_TO_C
/* FACTORY: 23/310, frame 0x78 vs the ROM's 0x80.  The first 19 instructions
   are exact; from the arg0 home store on, every sp offset is 8 low, and the
   ROM has one more store there (sw zero at 0x6C in ours lands where the ROM
   reloads the record). */
extern f32 D_8021BE60_ovl9[];
extern s32 random_soft_s32_range(s32);
extern f32 func_800F9828(s32, s32);
extern f32 func_8019AAD0_ovl7(f32, f32, f32);
extern float atan2f(float, float);
void func_800A9EA4(s32);
void func_801A2ADC_ovl7(void *);
void ohSleep(s32);
/* Swooper attack flight: switch to the attack hitbox/palette pair,
 * set the 3.0 speed clamps, play cue 0x101AF, then roll one of ten
 * behaviors -- 0: home on Kirby with constant-sign 0.25 acceleration
 * per axis; 1: accelerate along the exact bearing to Kirby (0.25); 2:
 * fly straight at 3.0 along the bearing sampled per tick; 3..9: fixed
 * heading sampled once, steered toward Kirby each tick by the roll-
 * specific turn rate from D_8021BE60 (sign from func_8019AAD0) --
 * every tick until the D_800E98E0 countdown runs out, then hand off
 * to state 8. */
void func_801E1E24_ovl9(struct GObj *arg0) {
    u32 id;
    s32 roll;
    s32 turnIdx = 0;
    f32 heading = 0.0f;

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E0490[omCurrentObj->objId] = &D_801CA9F8_ovl7;
    func_801A2ADC_ovl7(&D_801CA9F8_ovl7);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA10;
    D_800E6850[omCurrentObj->objId] = 3.0f;
    D_800E3C90[omCurrentObj->objId] = 3.0f;
    func_800A9EA4(0x101AF);
    roll = random_soft_s32_range(0xA);
    if (roll >= 3) {
        turnIdx = roll - 3;
        heading = atan2f(func_800F9828(omCurrentObj->objId, 0),
                         gEntitiesNextPosYArray[0] - gEntitiesNextPosYArray[omCurrentObj->objId]);
        roll = 3;
    }
    D_800E98E0[omCurrentObj->objId]--;
    id = omCurrentObj->objId;
    while (D_800E98E0[id] >= 0) {
        switch (roll) {
            case 0:
                if (func_800F9828(id, 0) > 0.0f) {
                    D_800E6690[omCurrentObj->objId] = 0.25f;
                } else {
                    D_800E6690[omCurrentObj->objId] = -0.25f;
                }
                id = omCurrentObj->objId;
                if (gEntitiesNextPosYArray[id] < gEntitiesNextPosYArray[0]) {
                    D_800E3750[id] = 0.25f;
                } else {
                    D_800E3750[id] = -0.25f;
                }
                break;
            case 1:
                heading = atan2f(func_800F9828(id, 0),
                                 gEntitiesNextPosYArray[0] - gEntitiesNextPosYArray[omCurrentObj->objId]);
                D_800E6690[omCurrentObj->objId] = sinf(heading) * 0.25f;
                D_800E3750[omCurrentObj->objId] = cosf(heading) * 0.25f;
                break;
            case 2:
                heading = atan2f(func_800F9828(id, 0),
                                 gEntitiesNextPosYArray[0] - gEntitiesNextPosYArray[omCurrentObj->objId]);
                D_800E64D0[omCurrentObj->objId] = sinf(heading) * 3.0f;
                D_800E3210[omCurrentObj->objId] = cosf(heading) * 3.0f;
                break;
            case 3: {
                f32 side = func_8019AAD0_ovl7(heading, 0.0f, 0.0f);

                if (side != 0.0f) {
                    f32 turn = D_8021BE60_ovl9[turnIdx];

                    heading += (side > 0.0f) ? turn : -turn;
                    while (heading >= 6.2831855f) {
                        heading -= 6.2831855f;
                    }
                    while (heading < 0.0f) {
                        heading += 6.2831855f;
                    }
                }
                D_800E64D0[omCurrentObj->objId] = sinf(heading) * 3.0f;
                D_800E3210[omCurrentObj->objId] = cosf(heading) * 3.0f;
                break;
            }
        }
        ohSleep(1);
        D_800E98E0[omCurrentObj->objId]--;
        id = omCurrentObj->objId;
    }
    gEntityFuncListIDArray[id] = 8;
}
#elif defined(PORT)
extern f32 D_8021BE60_ovl9[];
extern s32 random_soft_s32_range(s32);
extern f32 func_800F9828(s32, s32);
extern f32 func_8019AAD0_ovl7(f32, f32, f32);
extern float atan2f(float, float);
void func_800A9EA4(s32);
void func_801A2ADC_ovl7(void *);
void ohSleep(s32);
/* Swooper attack flight: switch to the attack hitbox/palette pair,
 * set the 3.0 speed clamps, play cue 0x101AF, then roll one of ten
 * behaviors -- 0: home on Kirby with constant-sign 0.25 acceleration
 * per axis; 1: accelerate along the exact bearing to Kirby (0.25); 2:
 * fly straight at 3.0 along the bearing sampled per tick; 3..9: fixed
 * heading sampled once, steered toward Kirby each tick by the roll-
 * specific turn rate from D_8021BE60 (sign from func_8019AAD0) --
 * every tick until the D_800E98E0 countdown runs out, then hand off
 * to state 8. */
void func_801E1E24_ovl9(struct GObj *arg0) {
    u32 id;
    s32 roll;
    s32 turnIdx = 0;
    f32 heading = 0.0f;

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E0490[omCurrentObj->objId] = &D_801CA9F8_ovl7;
    func_801A2ADC_ovl7(&D_801CA9F8_ovl7);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA10;
    D_800E6850[omCurrentObj->objId] = 3.0f;
    D_800E3C90[omCurrentObj->objId] = 3.0f;
    func_800A9EA4(0x101AF);
    roll = random_soft_s32_range(0xA);
    if (roll >= 3) {
        turnIdx = roll - 3;
        heading = atan2f(func_800F9828(omCurrentObj->objId, 0),
                         gEntitiesNextPosYArray[0] - gEntitiesNextPosYArray[omCurrentObj->objId]);
        roll = 3;
    }
    D_800E98E0[omCurrentObj->objId]--;
    id = omCurrentObj->objId;
    while (D_800E98E0[id] >= 0) {
        switch (roll) {
            case 0:
                if (func_800F9828(id, 0) > 0.0f) {
                    D_800E6690[omCurrentObj->objId] = 0.25f;
                } else {
                    D_800E6690[omCurrentObj->objId] = -0.25f;
                }
                id = omCurrentObj->objId;
                if (gEntitiesNextPosYArray[id] < gEntitiesNextPosYArray[0]) {
                    D_800E3750[id] = 0.25f;
                } else {
                    D_800E3750[id] = -0.25f;
                }
                break;
            case 1:
                heading = atan2f(func_800F9828(id, 0),
                                 gEntitiesNextPosYArray[0] - gEntitiesNextPosYArray[omCurrentObj->objId]);
                D_800E6690[omCurrentObj->objId] = sinf(heading) * 0.25f;
                D_800E3750[omCurrentObj->objId] = cosf(heading) * 0.25f;
                break;
            case 2:
                heading = atan2f(func_800F9828(id, 0),
                                 gEntitiesNextPosYArray[0] - gEntitiesNextPosYArray[omCurrentObj->objId]);
                D_800E64D0[omCurrentObj->objId] = sinf(heading) * 3.0f;
                D_800E3210[omCurrentObj->objId] = cosf(heading) * 3.0f;
                break;
            case 3: {
                f32 side = func_8019AAD0_ovl7(heading, 0.0f, 0.0f);

                if (side != 0.0f) {
                    f32 turn = D_8021BE60_ovl9[turnIdx];

                    heading += (side > 0.0f) ? turn : -turn;
                    while (heading >= 6.2831855f) {
                        heading -= 6.2831855f;
                    }
                    while (heading < 0.0f) {
                        heading += 6.2831855f;
                    }
                }
                D_800E64D0[omCurrentObj->objId] = sinf(heading) * 3.0f;
                D_800E3210[omCurrentObj->objId] = cosf(heading) * 3.0f;
                break;
            }
        }
        ohSleep(1);
        D_800E98E0[omCurrentObj->objId]--;
        id = omCurrentObj->objId;
    }
    gEntityFuncListIDArray[id] = 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E1E24_ovl9.s")
#endif

extern s32 D_8012E850;
extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801E0BF8_ovl9(struct GObj *);
void func_801E2548_ovl9();

void func_801E22FC_ovl9(GObj *arg0) {
    if (D_8012E850 == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E0BF8_ovl9);
    }
    func_801E2548_ovl9(arg0);
}

extern s32 D_801CBA10;

void func_800A9EA4(s32);
void func_800B33F4(void);
void ohSleep(s32);

void func_801E236C_ovl9(struct GObj *arg0) {
    s32 i;
    f32 dy;
    f32 dz;

    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA10;
    func_800A9EA4(0x101AF);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] =
    D_800E3750[omCurrentObj->objId] =
    D_800E3910[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    dy = D_800E64D0[omCurrentObj->objId] / 15.0f;
    dz = D_800E3210[omCurrentObj->objId] / 15.0f;
    i = 14;
    do {
        D_800E64D0[omCurrentObj->objId] = i * dy;
        D_800E3210[omCurrentObj->objId] = i * dz;
        ohSleep(1);
    } while (i--);
    func_800B33F4();
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        break;
    case 1:
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        break;
    }
}

/* K&R form is load-bearing on every repeat of this declaration in this file
 * (4x): its real signature is s32 func_801A0D74_ovl7(GObj *), but call
 * sites here and across the tree omit the arg -- the ROM relies on
 * whatever GObj* is already sitting in $a0. An ANSI prototype breaks
 * compilation with "too few arguments". */
void func_801A0D74_ovl7();
/* func_8019F3B0_ovl7 is DEFINED `void (void)` in ovl7 and ovl9_14.c declares
 * it that way, but this TU was compiled against an `s32` return and the ROM
 * proves it: spelling it `void` reserves no $v0 across the call and shifts
 * 50 words of register allocation in func_801E24C0_ovl9. Load-bearing. */
s32 func_8019F3B0_ovl7(void);

void func_801E2548_ovl9() {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern s32 D_801CBA10;

void func_801E2588_ovl9(struct GObj *arg0) {
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA10;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp = D_800E6690[omCurrentObj->objId];
    D_800E3910[omCurrentObj->objId] = temp;
    D_800E3750[omCurrentObj->objId] = temp;
    D_800E3590[omCurrentObj->objId] = temp;
    D_800E3750[omCurrentObj->objId] = 0.25f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800A9EA4(0x101AF);
    curObjSleepForever();
}

void func_801A0D74_ovl7();
s32 func_8019F3B0_ovl7(void);

void func_801E2698_ovl9(void) {
    func_801A0D74_ovl7();
    if (D_800E3210[omCurrentObj->objId] > 0.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] + D_800E3210[omCurrentObj->objId];
    }
    func_8019F3B0_ovl7();
}

extern void func_800B6B8C(struct GObj *);
extern s32 D_801C85F8_ovl7;
extern FUNCLIST D_8021BE7C_ovl9;
extern FUNCLIST D_8021BE84_ovl9;
void func_801E2970_ovl9(struct GObj *);
void func_801E2878_ovl9(struct GObj *);

void func_801E270C_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DF150[omCurrentObj->objId] = func_801E2970_ovl9;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C85F8_ovl7;
    func_801A0D50_ovl7(func_801E2878_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BE7C_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021BE84_ovl9);
    }
}

extern FUNCLIST D_8021BE84_ovl9;

void func_801E2878_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, D_8021BE84_ovl9);
    }
}

void func_801E28F8_ovl9(GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E2948_ovl9(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 6;
}

void func_801E2970_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021BEA0_ovl9);
}

extern struct EnemyEventTable D_801CBA34;
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void ohSleep(s32);
s32 eneCheckNearPlayer(f32);

void func_801E29B8_ovl9(struct GObj *arg0) {

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA34;
    func_800B33F4();
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800A9EA4(0x101B7);
    ohSleep(0x1E);
    while (1) {
        if (eneCheckNearPlayer(25600.0f) != 0) {
            if ((-10.0f < ((gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId])) && (((gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId]) < 120.0f)) {
                break;
            }
        }
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801A0D74_ovl7();
s32 func_8019F3B0_ovl7(void);

void func_801E2B04_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern s32 D_801CBA58;
/* D_8021CFBC_ovl9: literal, this TU owns its .rodata */
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void ohSleep(s32);

void func_801E2B2C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA58;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern struct EnemyEventTable D_801CBA34;
f32 func_8019B608_ovl7(s32);
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AF27C(void);

void func_801E2C68_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA34;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AF27C();
    D_800E6A10[omCurrentObj->objId] = func_8019B608_ovl7(0);
    D_800E98E0[omCurrentObj->objId] = 8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801E2D34_ovl9(struct GObj *arg0) {
    extern struct EnemyEventTable D_801CBA7C;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA7C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    func_800AA018((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x101B6 : 0x101B4);
    ohSleep(1);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
    do {
        func_800AF27C();
        if ((D_800E98E0[omCurrentObj->objId] & 1) == 0) {
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
            func_800AA018((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x101B6 : 0x101B4);
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
        }
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    } while (D_800E98E0[omCurrentObj->objId] > 0);
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern s32 D_801CBA58;
/* D_8021CFC0_ovl9: literal, this TU owns its .rodata */
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void ohSleep(s32);

void func_801E2F5C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA58;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

extern struct EnemyEventTable D_801CBA34;
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AA154(s32);

void func_801E309C_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA34;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA154(0x101B5);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E3134_ovl9(struct GObj *arg0) {
    extern f32 gameTicksPerDraw;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA58;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    while (1) {
        D_800E8920[omCurrentObj->objId] = 0;
        func_800A9EA4((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x101B6 : 0x101B4);
        D_800E3210[omCurrentObj->objId] = 10.39999962f;
        D_800E3750[omCurrentObj->objId] = -0.6499999762f;
        D_800E3C90[omCurrentObj->objId] = 10.39999962f;
        play_sound(0x166);
        while (D_800E8920[omCurrentObj->objId] == 0) {
            ohSleep(1);
        }
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    }
}

void func_801E333C_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - (((D_800E98E0[omCurrentObj->objId] & 1) == 0) ? 1 : 2);
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    func_800A9EA4((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x101B6 : 0x101B4);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
}

extern FUNCLIST D_8021BEA4_ovl9;
extern FUNCLIST D_8021BEB8_ovl9;

void func_801E3430_ovl9(void) {
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7();
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 5, &D_8021BEA4_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021BEB8_ovl9);
    }
}

extern FUNCLIST D_8021BEB8_ovl9;

void func_801E34F8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021BEB8_ovl9);
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 69/222, saved-register choice: the ROM holds &omCurrentObj in $s2
   with the save block at 0x1C, ours uses $s5 and a deeper block. */
extern struct GObjProcess *gEntityGObjProcessArray5[];
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void procMainStub(struct GObj *);
extern void func_800B19F4(s32, s32);
extern void func_800AFBB4(s32, GObj *);
void func_800B4924(s32);
extern void func_8019BB58_ovl7(void);
extern s32 func_8019DD78_ovl7(u8, s32);
void func_801A3E80_ovl7(GObj *);
s32 func_801E5660_ovl9(s32);
extern void func_8019D8A0(u16);
/* Paired-half coordinator (e.g. the two halves of a splitting enemy):
 * demote this track to a passive follower (flag 0x7D reset, stub
 * process main, detach from the mover), spawn the partner half via
 * func_8019DD78(0x44, 2/3 by facing) into D_800EBBE0 (on failure mark
 * unk40 and run the ovl7 kill path), then every tick mirror off-screen
 * status between this half (D_800EA360) and the partner (D_800EA520),
 * propagating the shared D_800E98E0 latch to whichever record is the
 * parent link, until both halves are gone; finally release the pair
 * slot via func_8019D8A0. */
void func_801E3578_ovl9(struct GObj *arg0) {
    EnemyRecord *rec;
    u32 id;
    s32 spawnKind;

    id = omCurrentObj->objId;
    rec = D_800E1B50[id];
    func_800B19F4(0x7D, id);
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_8019BB58_ovl7();
    id = omCurrentObj->objId;
    if (D_800E7880[id] & 1) {
        D_800E6A10[id] = -1.0f;
    } else {
        D_800E6A10[id] = 1.0f;
    }
    spawnKind = 3;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        spawnKind = 2;
    }
    D_800EBBE0[omCurrentObj->objId] = func_8019DD78_ovl7(0x44, spawnKind);
    id = omCurrentObj->objId;
    if (D_800EBBE0[id] == -1) {
        rec->unk40 = 1;
        func_801A3E80_ovl7(arg0);
        id = omCurrentObj->objId;
    }
    D_800E98E0[id] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    D_800EA360[id] = D_800EA520[id];
    do {
        ohSleep(1);
        D_800EA360[omCurrentObj->objId] = func_801E5660_ovl9(D_800EBDA0[omCurrentObj->objId]);
        id = omCurrentObj->objId;
        if (D_800EA360[id] == 0) {
            if (D_800E0D50[D_800EBDA0[id]] == D_800EBBE0[id]) {
                D_800E98E0[id] = D_800E98E0[D_800EBDA0[id]];
            }
        } else {
            D_800E98E0[id] = 1;
        }
        D_800EA520[omCurrentObj->objId] = func_801E5660_ovl9(D_800EBBE0[omCurrentObj->objId]);
        id = omCurrentObj->objId;
        if (D_800EA520[id] == 0) {
            if (D_800EBDA0[D_800EBBE0[id]] == D_800EBDA0[id]) {
                D_800E98E0[D_800EBBE0[id]] = D_800E98E0[id];
            }
        }
        id = omCurrentObj->objId;
    } while (D_800EA360[id] == 0 || D_800EA520[id] == 0);
    func_8019D8A0(id & 0xFFFF);
}
#elif defined(PORT)
extern struct GObjProcess *gEntityGObjProcessArray5[];
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void procMainStub(struct GObj *);
extern void func_800B19F4(s32, s32);
extern void func_800AFBB4(s32, GObj *);
void func_800B4924(s32);
extern void func_8019BB58_ovl7(void);
extern s32 func_8019DD78_ovl7(u8, s32);
void func_801A3E80_ovl7(GObj *);
s32 func_801E5660_ovl9(s32);
extern void func_8019D8A0(u16);
/* Paired-half coordinator (e.g. the two halves of a splitting enemy):
 * demote this track to a passive follower (flag 0x7D reset, stub
 * process main, detach from the mover), spawn the partner half via
 * func_8019DD78(0x44, 2/3 by facing) into D_800EBBE0 (on failure mark
 * unk40 and run the ovl7 kill path), then every tick mirror off-screen
 * status between this half (D_800EA360) and the partner (D_800EA520),
 * propagating the shared D_800E98E0 latch to whichever record is the
 * parent link, until both halves are gone; finally release the pair
 * slot via func_8019D8A0. */
void func_801E3578_ovl9(struct GObj *arg0) {
    EnemyRecord *rec;
    u32 id;
    s32 spawnKind;

    id = omCurrentObj->objId;
    rec = D_800E1B50[id];
    func_800B19F4(0x7D, id);
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_8019BB58_ovl7();
    id = omCurrentObj->objId;
    if (D_800E7880[id] & 1) {
        D_800E6A10[id] = -1.0f;
    } else {
        D_800E6A10[id] = 1.0f;
    }
    spawnKind = 3;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        spawnKind = 2;
    }
    D_800EBBE0[omCurrentObj->objId] = func_8019DD78_ovl7(0x44, spawnKind);
    id = omCurrentObj->objId;
    if (D_800EBBE0[id] == -1) {
        rec->unk40 = 1;
        func_801A3E80_ovl7(arg0);
        id = omCurrentObj->objId;
    }
    D_800E98E0[id] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    D_800EA360[id] = D_800EA520[id];
    do {
        ohSleep(1);
        D_800EA360[omCurrentObj->objId] = func_801E5660_ovl9(D_800EBDA0[omCurrentObj->objId]);
        id = omCurrentObj->objId;
        if (D_800EA360[id] == 0) {
            if (D_800E0D50[D_800EBDA0[id]] == D_800EBBE0[id]) {
                D_800E98E0[id] = D_800E98E0[D_800EBDA0[id]];
            }
        } else {
            D_800E98E0[id] = 1;
        }
        D_800EA520[omCurrentObj->objId] = func_801E5660_ovl9(D_800EBBE0[omCurrentObj->objId]);
        id = omCurrentObj->objId;
        if (D_800EA520[id] == 0) {
            if (D_800EBDA0[D_800EBBE0[id]] == D_800EBDA0[id]) {
                D_800E98E0[D_800EBBE0[id]] = D_800E98E0[id];
            }
        }
        id = omCurrentObj->objId;
    } while (D_800EA360[id] == 0 || D_800EA520[id] == 0);
    func_8019D8A0(id & 0xFFFF);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E3578_ovl9.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 69/248, $t2/$t3 transposition where the func_800B6B8C address is
   materialised, with the neighbouring temps renamed to follow.  The first 16
   instructions and the whole control flow are the ROM's. */
extern s32 D_801C36F4;
extern f32 *D_801CAA34_ovl7;
extern void func_80198880_ovl7(void *);
extern void func_800A9760(s32);
extern s32 func_800F98EC(s32, f32);
extern void func_8019D958_ovl7(u16);
void func_801E3DA8_ovl9(struct GObj *);
void func_801E34F8_ovl9(struct GObj *);
/* Leader-half init for the paired enemy: install draw/mover hooks and
 * the shared state thread, switch to the pair hitbox set, spawn the
 * follower half (kind 0x44/4) and register it on both this track and
 * its parent (killing this half via the ovl7 path when the spawn
 * fails), copy the facing to the follower and sink it 20 units, then
 * probe the rail 60 units ahead (func_800F98EC); if blocked, release
 * the follower slot and kill both links.  Finishes by zeroing the
 * bob-phase params, freezing physics and playing the facing-specific
 * intro animation into state 0. */
void func_801E38F0_ovl9(struct GObj *arg0) {
    EnemyRecord *rec;
    s32 spawned;
    u32 id;
    s32 anim;

    rec = D_800E1B50[omCurrentObj->objId];
    func_80198880_ovl7(&D_801C36F4);
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B6B8C;
    D_800DF150[omCurrentObj->objId] = func_801E3DA8_ovl9;
    func_800A9760(0x10011);
    func_801A0D50_ovl7(func_801E34F8_ovl9);
    func_801A2ADC_ovl7((void *) (uintptr_t) D_800E1B50[omCurrentObj->objId]->unk88->unk10);
    rec->unk39 = -1;
    D_800E0490[omCurrentObj->objId] = &D_801CAA34_ovl7;
    func_801A2ADC_ovl7(&D_801CAA34_ovl7);
    D_800E8920[omCurrentObj->objId] = 1;
    id = omCurrentObj->objId;
    if (D_800E7880[id] & 1) {
        D_800E6A10[id] = -1.0f;
    } else {
        D_800E6A10[id] = 1.0f;
    }
    spawned = func_8019DD78_ovl7(0x44, 4);
    D_800EBDA0[omCurrentObj->objId] = spawned;
    D_800EBDA0[D_800E0D50[omCurrentObj->objId]] = spawned;
    if (spawned == -1) {
        rec->unk40 = 1;
        func_801A3E80_ovl7(arg0);
    }
    id = omCurrentObj->objId;
    D_800EA6E0[id] = D_800E6A10[id];
    D_800E6A10[spawned] = D_800E6A10[id];
    gEntitiesNextPosYArray[spawned] -= 20.0f;
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[spawned];
    D_800E98E0[spawned] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    if (func_800F98EC(id, D_800E6A10[id] * 60.0f) != 0) {
        func_8019D958_ovl7((u16) spawned);
        rec->unk40 = 1;
        func_801A3E80_ovl7(arg0);
        D_800EBBE0[D_800E0D50[omCurrentObj->objId]] = -1;
        D_800EBDA0[D_800E0D50[omCurrentObj->objId]] = -1;
    }
    D_800EADE0[omCurrentObj->objId] = -0.027777778f;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800EB320[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800EB160[id] = D_800EB320[id];
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    anim = 0x10048;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        anim = 0x10047;
    }
    func_800A9EA4(anim);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
#elif defined(PORT)
extern s32 D_801C36F4;
extern f32 *D_801CAA34_ovl7;
extern void func_80198880_ovl7(void *);
extern void func_800A9760(s32);
extern s32 func_800F98EC(s32, f32);
extern void func_8019D958_ovl7(u16);
void func_801E3DA8_ovl9(struct GObj *);
void func_801E34F8_ovl9(struct GObj *);
/* Leader-half init for the paired enemy: install draw/mover hooks and
 * the shared state thread, switch to the pair hitbox set, spawn the
 * follower half (kind 0x44/4) and register it on both this track and
 * its parent (killing this half via the ovl7 path when the spawn
 * fails), copy the facing to the follower and sink it 20 units, then
 * probe the rail 60 units ahead (func_800F98EC); if blocked, release
 * the follower slot and kill both links.  Finishes by zeroing the
 * bob-phase params, freezing physics and playing the facing-specific
 * intro animation into state 0. */
void func_801E38F0_ovl9(struct GObj *arg0) {
    EnemyRecord *rec;
    s32 spawned;
    u32 id;
    s32 anim;

    rec = D_800E1B50[omCurrentObj->objId];
    func_80198880_ovl7(&D_801C36F4);
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B6B8C;
    D_800DF150[omCurrentObj->objId] = func_801E3DA8_ovl9;
    func_800A9760(0x10011);
    func_801A0D50_ovl7(func_801E34F8_ovl9);
    func_801A2ADC_ovl7((void *) (uintptr_t) D_800E1B50[omCurrentObj->objId]->unk88->unk10);
    rec->unk39 = -1;
    D_800E0490[omCurrentObj->objId] = &D_801CAA34_ovl7;
    func_801A2ADC_ovl7(&D_801CAA34_ovl7);
    D_800E8920[omCurrentObj->objId] = 1;
    id = omCurrentObj->objId;
    if (D_800E7880[id] & 1) {
        D_800E6A10[id] = -1.0f;
    } else {
        D_800E6A10[id] = 1.0f;
    }
    spawned = func_8019DD78_ovl7(0x44, 4);
    D_800EBDA0[omCurrentObj->objId] = spawned;
    D_800EBDA0[D_800E0D50[omCurrentObj->objId]] = spawned;
    if (spawned == -1) {
        rec->unk40 = 1;
        func_801A3E80_ovl7(arg0);
    }
    id = omCurrentObj->objId;
    D_800EA6E0[id] = D_800E6A10[id];
    D_800E6A10[spawned] = D_800E6A10[id];
    gEntitiesNextPosYArray[spawned] -= 20.0f;
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[spawned];
    D_800E98E0[spawned] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    if (func_800F98EC(id, D_800E6A10[id] * 60.0f) != 0) {
        func_8019D958_ovl7((u16) spawned);
        rec->unk40 = 1;
        func_801A3E80_ovl7(arg0);
        D_800EBBE0[D_800E0D50[omCurrentObj->objId]] = -1;
        D_800EBDA0[D_800E0D50[omCurrentObj->objId]] = -1;
    }
    D_800EADE0[omCurrentObj->objId] = -0.027777778f;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800EB320[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800EB160[id] = D_800EB320[id];
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    anim = 0x10048;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        anim = 0x10047;
    }
    func_800A9EA4(anim);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E38F0_ovl9.s")
#endif

extern f32 *D_801CAAD4_ovl7;
void func_800B68AC(s32);
void func_801E3DA8_ovl9(struct GObj *);
void func_801E34F8_ovl9(struct GObj *);
void func_801A0D50_ovl7(void *);
void func_801A2ADC_ovl7(void *);

void func_801E3CD0_ovl9(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B68AC;
    D_800DF150[omCurrentObj->objId] = &func_801E3DA8_ovl9;
    func_801A0D50_ovl7(&func_801E34F8_ovl9);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 4;
    D_800E0490[omCurrentObj->objId] = &D_801CAAD4_ovl7;
    func_801A2ADC_ovl7(&D_801CAAD4_ovl7);
    D_800E98E0[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801E3DA8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021BED0_ovl9);
}

extern s32 D_801C86AC_ovl7;
extern struct EnemyEventTable D_801CBAC4;
void func_800B33F4(void);
void ohSleep(s32);
void play_sound(s32);

void func_801E3DF0_ovl9(struct GObj *arg0) {
    s32 i;

    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C86AC_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBAC4;
    func_800B33F4();
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E64D0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 4.0f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    play_sound(0xA4);
    for (i = 0; i < 10; i++) {
        if (gEntitiesPosYArray[omCurrentObj->objId] != gEntitiesNextPosYArray[omCurrentObj->objId]) {
            break;
        }
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801A0D74_ovl7();
void func_8019F3F0_ovl7(void);
void func_801E4DC8_ovl9(void);

void func_801E3FB4_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3F0_ovl7();
    func_801E4DC8_ovl9();
}

/* FACTORY: 173/174 insns -- instructions [81..] onward (both ABSF ternary
   blocks, ~90 insns) are byte-exact.  Residue is ONE instruction: the ROM
   materialises the literal 1 twice (addiu $t9 for D_800DDFD0, addiu $t8 for
   D_800E8920), IDO CSEs them into one register, which frees $a2 and rotates
   the four array-base registers ($a2/$a3/$t0/$t1 -> $a3/$t0/$t1/$t2) one slot.
   Tried: 1U to fork the constant node.  Pure permuter food. */
#ifdef NON_MATCHING
void func_801E3FE4_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBAC4;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E3910[omCurrentObj->objId] = 0;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = ABSF(((D_800E8AE0[omCurrentObj->objId] & 1) != 0) ? 3.0f : 6.0f);
    D_800E3C90[omCurrentObj->objId] = ABSF(((D_800E8AE0[omCurrentObj->objId] & 1) != 0) ? 5.0f : 10.0f);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E3FE4_ovl9.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 57/479, frame 0x68 vs the ROM's 0x60 plus the $v1/$a0 pair the
   scaled objId lands in.  The largest function in this file; body order,
   branch structure and call sequence all agree. */
extern s32 D_801CA4C0;
extern s32 D_801CA508;
extern s32 D_801C86AC_ovl7;
extern u8 D_8012E7C5;
f32 func_801E4F18_ovl9(void);
void func_801E4DC8_ovl9(void);
s32 func_801E55C0_ovl9(s32, void *);
extern void func_80169430_ovl3(s32, s32, u8, s32);
struct PcOvl9_4AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};
/* Slope-walker per-frame mover: run the shared ovl7 mover with facing
 * and heading temporarily flipped to match the run direction (adding
 * pi to D_800E17D0 while moving backwards), restore them, set the
 * accel/terminal clamps (3/5 when the half-speed flag is set, else
 * 6/10), then resample the ground slope (func_801E4F18) into
 * D_800EB160 keeping the previous sample in D_800EB320.  Halve the
 * run speed on a sharp slope change (>45deg) or a slope-sign flip,
 * and derive the drive acceleration D_800E6690 from the slope (x1.5
 * when braking against the current speed, scaled 0.05/0.1 by the
 * half-speed flag); on flat ground bleed the speed to zero at the
 * fixed 0.05/0.1 rate.  Finally pick the directional hit table while
 * moving on the ground and forward any anim event to the ovl3 handler
 * (kind 7), falling back to the neutral table plus post-move fixup,
 * and finish with the shared tail func_801E4DC8. */
void func_801E429C_ovl9(void) {
    struct PcOvl9_4AnimInfo sp40;
    u32 id;
    f32 slope;
    f32 prev;
    f32 diff;

    id = omCurrentObj->objId;
    D_800EAA60[id] = D_800E6A10[id];
    id = omCurrentObj->objId;
    D_800EAC20[id] = D_800E17D0[id];
    id = omCurrentObj->objId;
    if (D_800E64D0[id] != 0.0f) {
        D_800E6A10[id] = (D_800E64D0[id] > 0.0f) ? 1.0f : -1.0f;
        id = omCurrentObj->objId;
        if (D_800E64D0[id] < 0.0f) {
            D_800E17D0[id] += 3.1415927f;
        }
    }
    func_801A0D74_ovl7();
    id = omCurrentObj->objId;
    D_800E6A10[id] = D_800EAA60[id];
    id = omCurrentObj->objId;
    D_800E17D0[id] = D_800EAC20[id];
    id = omCurrentObj->objId;
    D_800E6850[id] = (D_800E8AE0[id] & 1) ? 3.0f : 6.0f;
    id = omCurrentObj->objId;
    D_800E3C90[id] = (D_800E8AE0[id] & 1) ? 5.0f : 10.0f;
    id = omCurrentObj->objId;
    D_800EB320[id] = D_800EB160[id];
    D_800EB160[omCurrentObj->objId] = func_801E4F18_ovl9();
    id = omCurrentObj->objId;
    while (D_800EB160[id] > 3.1415927f) {
        D_800EB160[id] -= 6.2831855f;
        id = omCurrentObj->objId;
    }
    while (D_800EB160[id] < -3.1415927f) {
        D_800EB160[id] += 6.2831855f;
        id = omCurrentObj->objId;
    }
    slope = D_800EB160[id];
    prev = D_800EB320[id];
    diff = (slope < prev) ? -(slope - prev) : (slope - prev);
    if (diff > 0.7853982f) {
        D_800E64D0[id] *= 0.5f;
        id = omCurrentObj->objId;
        slope = D_800EB160[id];
    } else if ((slope > 0.0f) && (prev < 0.0f)) {
        D_800E64D0[id] *= 0.5f;
        id = omCurrentObj->objId;
        slope = D_800EB160[id];
    } else if ((slope < 0.0f) && (prev > 0.0f)) {
        D_800E64D0[id] *= 0.5f;
        id = omCurrentObj->objId;
        slope = D_800EB160[id];
    }
    if (slope != 0.0f) {
        f32 drive = slope;

        if ((D_800E64D0[id] > 0.0f) && (slope < 0.0f)) {
            drive *= 1.5f;
        } else if ((D_800E64D0[id] < 0.0f) && (slope > 0.0f)) {
            drive *= 1.5f;
        }
        if (D_800E8AE0[id] & 1) {
            D_800E6690[id] = 0.05f * drive;
        } else {
            D_800E6690[id] = 0.1f * drive;
        }
    } else {
        f32 spd = D_800E64D0[id];
        f32 aspd = (spd < 0.0f) ? -spd : spd;
        f32 aacc = (D_800E6690[id] < 0.0f) ? -D_800E6690[id] : D_800E6690[id];

        if (aspd <= aacc) {
            D_800E6690[id] = 0.0f;
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6690[id];
        } else if (spd > 0.0f) {
            D_800E6690[id] = (D_800E8AE0[id] & 1) ? -0.1f : -0.05f;
        } else {
            D_800E6690[id] = (D_800E8AE0[id] & 1) ? 0.1f : 0.05f;
        }
    }
    id = omCurrentObj->objId;
    if ((D_800EB160[id] != 0.0f) && (D_800E8920[id] == 1)) {
        if (D_800E64D0[id] > 0.0f) {
            D_800E1B50[id]->unk8C = &D_801CA4C0;
        } else {
            D_800E1B50[id]->unk8C = &D_801CA508;
        }
        if (func_801E55C0_ovl9(0, &sp40) != 0) {
            func_80169430_ovl3(sp40.unkC, sp40.unk0, sp40.unk1, 7);
            D_800EBBE0[omCurrentObj->objId] = 0;
        } else if (D_8012E7C5 != 0x15) {
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C86AC_ovl7;
            func_8019F3F0_ovl7();
        }
    } else {
        D_800E1B50[id]->unk8C = &D_801C86AC_ovl7;
        func_8019F3F0_ovl7();
    }
    func_801E4DC8_ovl9();
}
#elif defined(PORT)
extern s32 D_801CA4C0;
extern s32 D_801CA508;
extern s32 D_801C86AC_ovl7;
extern u8 D_8012E7C5;
f32 func_801E4F18_ovl9(void);
void func_801E4DC8_ovl9(void);
s32 func_801E55C0_ovl9(s32, void *);
extern void func_80169430_ovl3(s32, s32, u8, s32);
struct PcOvl9_4AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};
/* Slope-walker per-frame mover: run the shared ovl7 mover with facing
 * and heading temporarily flipped to match the run direction (adding
 * pi to D_800E17D0 while moving backwards), restore them, set the
 * accel/terminal clamps (3/5 when the half-speed flag is set, else
 * 6/10), then resample the ground slope (func_801E4F18) into
 * D_800EB160 keeping the previous sample in D_800EB320.  Halve the
 * run speed on a sharp slope change (>45deg) or a slope-sign flip,
 * and derive the drive acceleration D_800E6690 from the slope (x1.5
 * when braking against the current speed, scaled 0.05/0.1 by the
 * half-speed flag); on flat ground bleed the speed to zero at the
 * fixed 0.05/0.1 rate.  Finally pick the directional hit table while
 * moving on the ground and forward any anim event to the ovl3 handler
 * (kind 7), falling back to the neutral table plus post-move fixup,
 * and finish with the shared tail func_801E4DC8. */
void func_801E429C_ovl9(void) {
    struct PcOvl9_4AnimInfo sp40;
    u32 id;
    f32 slope;
    f32 prev;
    f32 diff;

    id = omCurrentObj->objId;
    D_800EAA60[id] = D_800E6A10[id];
    id = omCurrentObj->objId;
    D_800EAC20[id] = D_800E17D0[id];
    id = omCurrentObj->objId;
    if (D_800E64D0[id] != 0.0f) {
        D_800E6A10[id] = (D_800E64D0[id] > 0.0f) ? 1.0f : -1.0f;
        id = omCurrentObj->objId;
        if (D_800E64D0[id] < 0.0f) {
            D_800E17D0[id] += 3.1415927f;
        }
    }
    func_801A0D74_ovl7();
    id = omCurrentObj->objId;
    D_800E6A10[id] = D_800EAA60[id];
    id = omCurrentObj->objId;
    D_800E17D0[id] = D_800EAC20[id];
    id = omCurrentObj->objId;
    D_800E6850[id] = (D_800E8AE0[id] & 1) ? 3.0f : 6.0f;
    id = omCurrentObj->objId;
    D_800E3C90[id] = (D_800E8AE0[id] & 1) ? 5.0f : 10.0f;
    id = omCurrentObj->objId;
    D_800EB320[id] = D_800EB160[id];
    D_800EB160[omCurrentObj->objId] = func_801E4F18_ovl9();
    id = omCurrentObj->objId;
    while (D_800EB160[id] > 3.1415927f) {
        D_800EB160[id] -= 6.2831855f;
        id = omCurrentObj->objId;
    }
    while (D_800EB160[id] < -3.1415927f) {
        D_800EB160[id] += 6.2831855f;
        id = omCurrentObj->objId;
    }
    slope = D_800EB160[id];
    prev = D_800EB320[id];
    diff = (slope < prev) ? -(slope - prev) : (slope - prev);
    if (diff > 0.7853982f) {
        D_800E64D0[id] *= 0.5f;
        id = omCurrentObj->objId;
        slope = D_800EB160[id];
    } else if ((slope > 0.0f) && (prev < 0.0f)) {
        D_800E64D0[id] *= 0.5f;
        id = omCurrentObj->objId;
        slope = D_800EB160[id];
    } else if ((slope < 0.0f) && (prev > 0.0f)) {
        D_800E64D0[id] *= 0.5f;
        id = omCurrentObj->objId;
        slope = D_800EB160[id];
    }
    if (slope != 0.0f) {
        f32 drive = slope;

        if ((D_800E64D0[id] > 0.0f) && (slope < 0.0f)) {
            drive *= 1.5f;
        } else if ((D_800E64D0[id] < 0.0f) && (slope > 0.0f)) {
            drive *= 1.5f;
        }
        if (D_800E8AE0[id] & 1) {
            D_800E6690[id] = 0.05f * drive;
        } else {
            D_800E6690[id] = 0.1f * drive;
        }
    } else {
        f32 spd = D_800E64D0[id];
        f32 aspd = (spd < 0.0f) ? -spd : spd;
        f32 aacc = (D_800E6690[id] < 0.0f) ? -D_800E6690[id] : D_800E6690[id];

        if (aspd <= aacc) {
            D_800E6690[id] = 0.0f;
            id = omCurrentObj->objId;
            D_800E64D0[id] = D_800E6690[id];
        } else if (spd > 0.0f) {
            D_800E6690[id] = (D_800E8AE0[id] & 1) ? -0.1f : -0.05f;
        } else {
            D_800E6690[id] = (D_800E8AE0[id] & 1) ? 0.1f : 0.05f;
        }
    }
    id = omCurrentObj->objId;
    if ((D_800EB160[id] != 0.0f) && (D_800E8920[id] == 1)) {
        if (D_800E64D0[id] > 0.0f) {
            D_800E1B50[id]->unk8C = &D_801CA4C0;
        } else {
            D_800E1B50[id]->unk8C = &D_801CA508;
        }
        if (func_801E55C0_ovl9(0, &sp40) != 0) {
            func_80169430_ovl3(sp40.unkC, sp40.unk0, sp40.unk1, 7);
            D_800EBBE0[omCurrentObj->objId] = 0;
        } else if (D_8012E7C5 != 0x15) {
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C86AC_ovl7;
            func_8019F3F0_ovl7();
        }
    } else {
        D_800E1B50[id]->unk8C = &D_801C86AC_ovl7;
        func_8019F3F0_ovl7();
    }
    func_801E4DC8_ovl9();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E429C_ovl9.s")
#endif

void func_801E4A1C_ovl9(struct GObj *arg0) {
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E3210[omCurrentObj->objId] = 2.5f;
    } else {
        D_800E3210[omCurrentObj->objId] = 5.0f;
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        if (0.0f < D_800E64D0[omCurrentObj->objId]) {
            D_800E64D0[omCurrentObj->objId] = 1.5f;
        } else {
            D_800E64D0[omCurrentObj->objId] = -1.5f;
        }
    } else {
        if (0.0f < D_800E64D0[omCurrentObj->objId]) {
            D_800E64D0[omCurrentObj->objId] = 3.0f;
        } else {
            D_800E64D0[omCurrentObj->objId] = -3.0f;
        }
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern s32 D_801CBAE8;

void func_801E4B34_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C86AC_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBAE8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E3750[omCurrentObj->objId] = -0.3249999881f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.6499999762f;
    }
    D_800E3C90[omCurrentObj->objId] = ABSF(((D_800E8AE0[omCurrentObj->objId] & 1) != 0) ? 5.0f : 10.0f);
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_800FB914(s32);
void func_801E34F8_ovl9(struct GObj *);
void func_801E4DC8_ovl9(void);
void func_8019F3F0_ovl7(void);

void func_801E4CF8_ovl9(void) {
    func_801A0D74_ovl7();
    if (D_800E8920[omCurrentObj->objId] == 1) {
        func_800FB914(1);
        play_sound(0x98);
        D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * 0.75f;
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E34F8_ovl9);
    }
    func_8019F3F0_ovl7();
    func_801E4DC8_ovl9();
}

/* 13 diffs: pure $f2/$f12 role swap -- the ROM keeps 6.283185482f in $f12
   and the re-read D_800EAFA0 value in $f2, IDO does the opposite. Swept: the
   position of the `k` assignment (top of function / before / after the store),
   both mul and add operand orders, `< 0` vs `< 0.0f`. */
/* D_8021D014_ovl9: literal */

void func_801E4DC8_ovl9(void) {
    f32 k;

    if (ABSF(D_800E64D0[omCurrentObj->objId]) > ABSF(D_800E6690[omCurrentObj->objId])) {
        k = 6.283185482f;
        D_800EAFA0[omCurrentObj->objId] = (D_800E64D0[omCurrentObj->objId] * D_800EADE0[omCurrentObj->objId]) + D_800EAFA0[omCurrentObj->objId];
        while (k <= D_800EAFA0[omCurrentObj->objId]) {
            D_800EAFA0[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId] - k;
        }
        while (D_800EAFA0[omCurrentObj->objId] < 0) {
            D_800EAFA0[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId] + k;
        }
    }
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EAFA0[omCurrentObj->objId];
}

f32 func_800F8824(Vector *, f32);

f32 func_801E4F18_ovl9(void) {
    EnemyRecord *p;
    Vector *v;
    f32 temp;

    p = D_800E1B50[omCurrentObj->objId];
    temp = 0.0f;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        v = (Vector *) p->unk78;
        if (v != NULL) {
            temp = func_800F8824(v, D_800E17D0[omCurrentObj->objId]);
        }
    }
    return -temp;
}

#ifdef MIPS_TO_C
/* FACTORY: 7/153, one extra callee-saved register.  The ROM runs on a 0x40
   frame saving s0, s1, f20 and f22 with &omCurrentObj in $s1; ours needs a
   third integer save (s2 holds &omCurrentObj) and a 0x48 frame, so every
   offset and register name below the prologue shifts.  Swept, all negative:
   hoisting the 280.0f range into its own f32 local (149), caching
   D_800E1B50[objId] in a `rec` local (152).  The ROM's two saved FP
   registers say it keeps both the facing value and the distance live across
   the two wait loops, so the remaining question is which integer value it
   manages NOT to keep -- a register-allocation nudge, not a rewrite. */
extern void func_800B68AC(s32);
extern s32 D_801C8640_ovl7;
extern s32 D_801CBAA0;
extern s32 func_8019A900_ovl7(s32 *);
extern f32 func_8019B608_ovl7(s32);
extern f32 func_8019DA50_ovl7(void);
/* Lurker arming state: install the projectile-capable mover and anim
 * state 3 with the ovl7 hit table pair, play the ready animation
 * 0x10229 and clear the shot counter, then sleep until Kirby's
 * approach side (camera heading or explicit path direction) matches
 * this entity's facing AND Kirby is within 280 units laterally;
 * finally trigger the attack state 5. */
void func_801E4F88_ovl9(struct GObj *arg0) {
    s32 sp38;
    f32 v;

    D_800DEF90[omCurrentObj->objId] = func_800B68AC;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8640_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBAA0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x10229);
    D_800E98E0[omCurrentObj->objId] = 0;
    if (func_8019A900_ovl7(&sp38) != 0) {
        v = sp38;
    } else {
        v = func_8019B608_ovl7(0);
    }
    while (v != D_800E6A10[omCurrentObj->objId]) {
        ohSleep(1);
        if (func_8019A900_ovl7(&sp38) != 0) {
            v = sp38;
        } else {
            v = func_8019B608_ovl7(0);
        }
    }
    v = func_8019DA50_ovl7();
    if (v < 0.0f) {
        v = -v;
    }
    while (v > 280.0f) {
        ohSleep(1);
        v = func_8019DA50_ovl7();
        if (v < 0.0f) {
            v = -v;
        }
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}
#elif defined(PORT)
extern void func_800B68AC(s32);
extern s32 D_801C8640_ovl7;
extern s32 D_801CBAA0;
extern s32 func_8019A900_ovl7(s32 *);
extern f32 func_8019B608_ovl7(s32);
extern f32 func_8019DA50_ovl7(void);
/* Lurker arming state: install the projectile-capable mover and anim
 * state 3 with the ovl7 hit table pair, play the ready animation
 * 0x10229 and clear the shot counter, then sleep until Kirby's
 * approach side (camera heading or explicit path direction) matches
 * this entity's facing AND Kirby is within 280 units laterally;
 * finally trigger the attack state 5. */
void func_801E4F88_ovl9(struct GObj *arg0) {
    s32 sp38;
    f32 v;

    D_800DEF90[omCurrentObj->objId] = func_800B68AC;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8640_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBAA0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x10229);
    D_800E98E0[omCurrentObj->objId] = 0;
    if (func_8019A900_ovl7(&sp38) != 0) {
        v = sp38;
    } else {
        v = func_8019B608_ovl7(0);
    }
    while (v != D_800E6A10[omCurrentObj->objId]) {
        ohSleep(1);
        if (func_8019A900_ovl7(&sp38) != 0) {
            v = sp38;
        } else {
            v = func_8019B608_ovl7(0);
        }
    }
    v = func_8019DA50_ovl7();
    if (v < 0.0f) {
        v = -v;
    }
    while (v > 280.0f) {
        ohSleep(1);
        v = func_8019DA50_ovl7();
        if (v < 0.0f) {
            v = -v;
        }
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E4F88_ovl9.s")
#endif

extern s32 func_800B3234(f32, f32, f32);
extern void func_8019D8A0(u16);

void func_801E51EC_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId] = 1;
    }
    if (func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]) != 0) {
        D_800E98E0[omCurrentObj->objId] = 1;
        func_8019D8A0(((u16 *) omCurrentObj)[1]);
    }
}

extern void func_800B68AC(s32);
extern s32 D_801C8640_ovl7;
extern s32 D_801CBAA0;
extern void func_800B33F4(void);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_800AA018(s32);
extern void func_800AF27C(void);
extern void func_800AA154(s32);
void func_801E53E8_ovl9(GObj *, s32, f32);

void func_801E52A4_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B68AC;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8640_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBAA0;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10225);
    D_800DF310[omCurrentObj->objId] = func_801E53E8_ovl9;
    func_800AF27C();
    func_800AA154(0x10228);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x10229);
    curObjSleepForever();
}

void func_801E53E8_ovl9(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        D_800E98E0[omCurrentObj->objId] = 1;
    }
}

void func_800FB914(s32);

void func_801E5430_ovl9(GObj *arg0) {
    func_800FB914(1);
    play_sound(0x98);
    D_800E64D0[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId] * 0.5f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
}

void func_800FB914(s32);

void func_801E54A4_ovl9(GObj *arg0) {
    func_800FB914(1);
    play_sound(0x98);
}

/* D_8021D018_ovl9: literal, this TU owns its .rodata */
/* D_8021D01C_ovl9: literal, this TU owns its .rodata */

void func_801E54D0_ovl9(struct GObj *arg0) {
    D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * 0.5f;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = -0.325f;
        D_800E3C90[omCurrentObj->objId] = 5.0f;
    } else {
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
}

struct Ovl9AnimCmd2 {
    u8 filler0[8];
    s32 unk8;
};

struct Ovl9AnimObj2 {
    u8 filler0[0x24];
    struct Ovl9AnimCmd2 *unk24;
};

void func_80111550(s32);
struct Ovl9AnimObj2 *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl9AnimObj2 *);
s32 func_80110150(void *);

s32 func_801E55C0_ovl9(s32 arg0, void *arg1) {
    struct EnemyKindDesc *sp0;
    struct EnemyRecord *temp;
    struct Ovl9AnimObj2 *temp_v0;

    temp = D_800E1B50[omCurrentObj->objId];
    sp0 = temp->unk88;
    if (sp0 == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    temp_v0 = func_80111C88(temp->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        func_80111ECC(temp_v0);
    }
    return func_80110150(arg1);
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
s32 func_801E5660_ovl9(s32 arg0) {
    f32 temp_f0;

    if ((arg0 > 0) && (D_800DD710[arg0] != -1) && (D_800E7730[arg0] == 0) && (D_800E77A0[arg0] == 0x44)) {
        temp_f0 = D_800E7B20[arg0];
        if ((temp_f0 > 0.09f) && (temp_f0 < 9999.0f) && (D_800E83E0[arg0] != 1)) {
            return 0;
        }
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E5660_ovl9.s")
#endif
