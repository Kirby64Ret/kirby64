#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021C098_ovl9;
extern FUNCLIST D_8021C114_ovl9;

extern void func_801A3280_ovl7(void);
extern void func_800B6FD8(struct GObj *);
extern void func_801A0D50_ovl7(void *);
extern FUNCLIST D_8021C070_ovl9;
extern FUNCLIST D_8021C080_ovl9;
void func_801EADD4_ovl9(struct GObj *);
void func_801EACB8_ovl9(struct GObj *);

void func_801EABC0_ovl9(struct GObj *arg0) {
    func_801A3280_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DF150[omCurrentObj->objId] = func_801EADD4_ovl9;
    func_801A0D50_ovl7(func_801EACB8_ovl9);
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, &D_8021C070_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021C080_ovl9);
    }
}

extern FUNCLIST D_8021C080_ovl9;

void func_801EACB8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021C080_ovl9);
    }
}

void func_801EAD38_ovl9(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

/* D_8021D1C0_ovl9: literal, this TU owns its .rodata */

void func_801EAD84_ovl9(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = 3.1415927f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801EADD4_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C098_ovl9);
}

void func_801EAE1C_ovl9(struct GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0x1E;
    gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleZArray[omCurrentObj->objId] = gEntitiesAngleXArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

extern s32 D_801C8784_ovl7[];
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);
void ohSleep(s32);
f32 func_8019DA50_ovl7(void);

void func_801EAF10_ovl9(struct GObj *arg0) {
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8784_ovl7;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x100E2);
    ohSleep(D_800E9AA0[omCurrentObj->objId].as_s32);
    do {
        ohSleep(1);
        temp = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
        if (ABSF(temp) < 320.0f) {
            if (((D_800E7880[omCurrentObj->objId] & 1) != 0) ? (temp > 0) : (temp < 0)) {
                if (ABSF(func_8019DA50_ovl7()) < 120.0f) {
                    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
                }
            }
        }
    } while (gEntityFuncListIDArray[omCurrentObj->objId] == 1);
}

void func_8019F410_ovl7(struct DObj *);

void func_801EB158_ovl9(GObj *arg0) {
    func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
}

typedef struct {
    /* 0x00 */ Vector unk0;
    /* 0x0C */ Vector unkC;
    /* 0x18 */ Vector unk18;
    /* 0x24 */ f32 unk24;
    /* 0x28 */ f32 unk28;
    /* 0x2C */ s32 unk2C;
} Ovl9EneCurve;

extern f32 D_800EAC20[];
void func_8019EEE4_ovl7(Ovl9EneCurve *);
void play_sound(s32);
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);
void ohSleep(s32);

void func_801EB198_ovl9(struct GObj *arg0) {
    Ovl9EneCurve sp30;
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EADE0[omCurrentObj->objId] = 0.0f;
    func_800A9EA4(0x100DE);
    ohSleep(0xF);
    temp = gEntitiesNextPosYArray[0] + 20.0f;
    D_800EAC20[omCurrentObj->objId] = (temp < gEntitiesNextPosYArray[omCurrentObj->objId])
                                          ? -(temp - gEntitiesNextPosYArray[omCurrentObj->objId])
                                          : (temp - gEntitiesNextPosYArray[omCurrentObj->objId]);
    if (D_800EAC20[omCurrentObj->objId] < 40.0f) {
        D_800EAC20[omCurrentObj->objId] = 40.0f;
    }
    if (D_800EAC20[omCurrentObj->objId] > 240.0f) {
        D_800EAC20[omCurrentObj->objId] = 240.0f;
    }
    play_sound(0x9D);
    switch (D_800E7880[omCurrentObj->objId]) {
        case 0:
        case 1:
            sp30.unk28 = D_800EAC20[omCurrentObj->objId];
            sp30.unk2C = 0x10;
            func_8019EEE4_ovl7(&sp30);
            if ((D_800E7880[omCurrentObj->objId] & 1) != 0) { D_800E3210[omCurrentObj->objId] = sp30.unk18.z; } else { D_800E3210[omCurrentObj->objId] = -sp30.unk18.z; }
            if ((D_800E7880[omCurrentObj->objId] & 1) != 0) { D_800E3750[omCurrentObj->objId] = -sp30.unk24; } else { D_800E3750[omCurrentObj->objId] = sp30.unk24; }
            ohSleep(sp30.unk2C);
            break;
        case 2:
        case 3:
            D_800E3210[omCurrentObj->objId] =
                ((D_800E7880[omCurrentObj->objId] & 1) != 0) ? 8.0f : -8.0f;
            ohSleep((s32) (D_800EAC20[omCurrentObj->objId] * 0.125f));
            break;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

struct Ovl9AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0xC];
};

extern s32 D_801CA454[];
extern s32 D_801C87A8[];
extern u8 D_8012E7C5;
extern struct GObjProcess *gEntityGObjProcessArray[];
extern void func_80169430_ovl3(s32, s32, u8, s32);
s32 func_801EBB28_ovl9(struct DObj *, void *);
void func_8019F410_ovl7(struct DObj *);
void func_801EACB8_ovl9(struct GObj *);

void func_801EB4B0_ovl9(struct GObj *arg0) {
    struct Ovl9AnimInfo sp34;

    D_800E9E20[omCurrentObj->objId]++;
    D_800EADE0[omCurrentObj->objId] += ABSF(D_800E3210[omCurrentObj->objId]);
    if (D_800E9E20[omCurrentObj->objId] >= 0xB) {
        D_800E1B50[omCurrentObj->objId]->unk8C = D_801CA454;
        if (func_801EBB28_ovl9(D_800DFBD0[omCurrentObj->objId][2], &sp34) != 0) {
            func_80169430_ovl3(sp34.unkC, sp34.unk0, sp34.unk1, 6);
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EACB8_ovl9);
            D_800EBBE0[omCurrentObj->objId] = 0;
            D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
        } else if (D_8012E7C5 != 0x15) {
            D_800E1B50[omCurrentObj->objId]->unk8C = D_801C87A8;
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
        }
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = D_801C87A8;
        func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
    }
}

extern s32 D_801C8784_ovl7[];
extern s32 D_801C87CC[];
extern s32 D_8021C0A4_ovl9[];
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);
void func_800A8100(s32, s32, s32, void *);
void func_800AF27C(void);

void func_801EB6BC_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8784_ovl7;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x100DF);
    ohSleep(4);
    play_sound(0xA2);
    ohSleep(5);
    play_sound(0xA2);
    ohSleep(0x1B);
    play_sound(0x9E);
    func_800A8100(3, 2, D_8021C0A4_ovl9[D_800E7880[omCurrentObj->objId]], arg0->data.ptr);
    while (D_800E98E0[D_800EBBE0[omCurrentObj->objId]] == 0) {
        ohSleep(1);
    }
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C87CC;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_8019F410_ovl7(struct DObj *);

void func_801EB874_ovl9(GObj *arg0) {
    func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    }
}

extern s32 D_801C8784_ovl7[];
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);
void func_800AF27C(void);

void func_801EB8E8_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8784_ovl7;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x100E0);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void ohSleep(s32);

void func_801EB98C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8784_ovl7;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E3210[omCurrentObj->objId] = ((D_800E7880[omCurrentObj->objId] & 1) != 0) ? -8.0f : 8.0f;
    ohSleep((s32) (D_800EADE0[omCurrentObj->objId] * 0.125f));
    func_800B33F4();
    D_800E5F90[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId];
    D_800E6BD0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0x3C;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

/* unk8 is the Shape28 joint word: either a small sentinel or a DObj node
   address TRUNCATED to 32 bits. It must stay 4 bytes -- this is a view over
   ovl2_9.c's Shape28 arena, 40 bytes per entry and offset-stable on LP64
   (see the note at the top of src/ovl2/ovl2_8.c) -- and func_8010E740
   zero-extends it back, lossless because the -no-pie image keeps everything
   below 4 GiB. */
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

s32 func_801EBB28_ovl9(struct DObj *arg0, void *arg1) {
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
        if (arg0 != NULL) {
            temp_v0->unk24->unk8 = (s32) (uintptr_t) arg0;
        }
        func_80111ECC(temp_v0);
    }
    return func_80110150(arg1);
}

extern void func_800B6A2C(struct GObj *);
extern void func_801A6C10_ovl7(struct GObj *);
extern s32 D_801C8910_ovl7;
extern FUNCLIST D_8021C0AC_ovl9;
extern FUNCLIST D_8021C0B0_ovl9;
void func_801EBE1C_ovl9(struct GObj *);
void func_801EBD38_ovl9(struct GObj *);

/* Left live by a lane mid-work, at 11/92 insns. Draft kept. */
void func_801EBBC8_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801EBE1C_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8910_ovl7;
    func_801A0D50_ovl7(func_801EBD38_ovl9);
    D_800E8920[omCurrentObj->objId] = 1;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C0AC_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021C0B0_ovl9);
    }
}

extern FUNCLIST D_8021C0B0_ovl9;

void func_801EBD38_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021C0B0_ovl9);
    }
}

void func_801EBDB8_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 2;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

extern FUNCLIST D_8021C0C4_ovl9;
/* K&R form is load-bearing on every repeat of this declaration in this file
 * (4x): its real signature is s32 func_801A0D74_ovl7(GObj *), but call
 * sites here and across the tree omit the arg -- the ROM relies on
 * whatever GObj* is already sitting in $a0. An ANSI prototype breaks
 * compilation with "too few arguments". */
void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801EBE1C_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021C0C4_ovl9);
    func_801A0D74_ovl7(arg0);
    func_8019F3B0_ovl7();
}

extern struct EnemyEventTable D_801CBC08;
extern s32 func_8019A900_ovl7(s32 *);
extern f32 func_8019B608_ovl7(s32);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B33F4(void);
void func_800A9EA4(s32);
void ohSleep(s32);

void func_801EBE74_ovl9(struct GObj *arg0) {
    s32 pad0;
    s32 sp38;
    f32 t;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBC08;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    *(u32 *) &D_800E8920[omCurrentObj->objId] = 1;
    func_800A9EA4(0x1020C);
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
        if (func_8019A900_ovl7(&sp38) != 0) {
            t = sp38;
        } else {
            t = func_8019B608_ovl7(0);
        }
        if (t != D_800E6A10[omCurrentObj->objId]) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        }
        ohSleep(1);
    }
}

extern f32 func_8019DA50_ovl7(void);
void func_801EBD38_ovl9(struct GObj *);

void func_801EBFE8_ovl9(struct GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    }
    if (D_800E98E0[omCurrentObj->objId] <= 0) {
        if (ABSF(func_8019DA50_ovl7()) < 320.0f) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EBD38_ovl9);
        }
    }
}

extern struct EnemyEventTable D_801CBC08;
/* D_8021D1C4_ovl9: literal, this TU owns its .rodata */
/* D_8021D1C8_ovl9: literal, this TU owns its .rodata */
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B33F4(void);
void func_800A9EA4(s32);
void ohSleep(s32);

/* Left live by a lane mid-work, at 105/142 insns. Draft kept. */
void func_801EC0E0_ovl9(struct GObj *arg0) {
    s32 i;

    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBC08;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    *(u32 *) &D_800E8920[omCurrentObj->objId] = 1;
    func_800A9EA4(0x1020C);
    D_800E9020[omCurrentObj->objId] = 0;
    for (i = 0; i != 4; i++) {
        D_800E9020[omCurrentObj->objId] +=
            (D_800E6A10[omCurrentObj->objId] == 1.0f) ? -0.3926990926f : 0.3926990926f;
        ohSleep(1);
    }
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E9020[omCurrentObj->objId] = -D_800E9020[omCurrentObj->objId];
    do {
        D_800E9020[omCurrentObj->objId] +=
            (D_800E6A10[omCurrentObj->objId] == 1.0f) ? 0.3926990926f : -0.3926990926f;
        ohSleep(1);
    } while (--i != 0);
    D_800E9020[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern struct EnemyEventTable D_801CBC2C;
/* D_8021D1CC_ovl9: literal, this TU owns its .rodata */
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9F98(s32, f32);
void ohSleep(s32);

void func_801EC314_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBC2C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 14.0f;
    func_800A9F98(0x10208, 40.0f);
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

void func_801EC4A0_ovl9(GObj *arg0) {
}

extern struct EnemyEventTable D_801CBC08;
void func_800A9F98(s32, f32);
void ohSleep(s32);

void func_801EC4A8_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBC08;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AECC0(gameTicksPerDraw + gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw + gameTicksPerDraw);
    func_800A9F98(0x10209, 2.0f);
    ohSleep(2);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern struct EnemyEventTable D_801CBC2C;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B33F4(void);
void func_800AA018(s32);
void func_800AF27C(void);
void play_sound(s32);
s32 func_801ACCA0_ovl7(s32, s32, f32, f32);

void func_801EC598_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBC2C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AECC0(gameTicksPerDraw * 2.0f);
    func_800AED20(gameTicksPerDraw * 2.0f);
    func_800AA018(0x1020A);
    ohSleep(5);
    D_800E98E0[omCurrentObj->objId] = 0x14;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBC2C;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 14.0f;
    play_sound(0x166);
    ohSleep(8);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10208);
    ohSleep(3);
    D_800EBBE0[omCurrentObj->objId] = func_801ACCA0_ovl7(0x27, 0, 30.0f, -5.0f);
    play_sound(0xA7);
    D_800E6A10[D_800EBBE0[omCurrentObj->objId]] = D_800E6A10[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_8019BB58_ovl7(void);
void func_800B7514(s32);

void func_801EC800_ovl9(struct GObj *arg0) {
    f32 temp;

    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B7514;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesAngleXArray[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = gEntitiesAngleZArray[omCurrentObj->objId];
    func_800AA018(0x10211);
    D_800E3210[omCurrentObj->objId] = sinf(gEntitiesAngleXArray[omCurrentObj->objId]) * -1.0f;
    temp = cosf(gEntitiesAngleXArray[omCurrentObj->objId]);
    D_800E3050[omCurrentObj->objId] = sinf(gEntitiesAngleYArray[omCurrentObj->objId]) * temp;
    D_800E33D0[omCurrentObj->objId] = cosf(gEntitiesAngleYArray[omCurrentObj->objId]) * temp;
    curObjSleepForever();
}

extern FUNCLIST D_8021C0CC_ovl9;
extern FUNCLIST D_8021C104_ovl9;
void func_801EF07C_ovl9(struct GObj *);

/* Left live by a lane mid-work, at 7/62 insns. Draft kept. */
void func_801EC9E0_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk39 = -1;
    D_800DF150[omCurrentObj->objId] = func_801EF07C_ovl9;
    tmp->unk34 = NULL;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 0xE, &D_8021C0CC_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C104_ovl9);
    }
}

extern FUNCLIST D_8021C104_ovl9;

void func_801ECAD8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021C104_ovl9);
    }
}

extern s32 D_8021C124_ovl9[];
extern s32 D_8021C144_ovl9[];
extern s32 D_8021C164_ovl9[];
extern s32 D_8021C184_ovl9[];
extern struct GObjProcess *gEntityGObjProcessArray5[];
s32 func_801ED018_ovl9(s32);
void func_8019D958_ovl7(u16);
/* NOT a typo: func_8019DD78_ovl7 is DEFINED `s32 (u8, s32)` in ovl7, and
 * src/ovl9/ovl9_4.c declares it that way, but this TU was compiled against
 * an `s32` first parameter and the ROM proves it -- spelling it u8 here
 * narrows the three argument loads at func_801ED3E4_ovl9 from `lw a0,0(a0)`
 * to `lbu a0,3(a0)` and breaks the sha1. Load-bearing; leave it. */
s32 func_8019DD78_ovl7(s32, s32);
void func_800B4924(s32);
void func_800AFBB4(s32, struct GObj *);
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void procMainStub(struct GObj *);
s32 random_soft_s32_range(s32);
void ohSleep(s32);

void func_801ECB58_ovl9(struct GObj *arg0) {
    if (func_801ED018_ovl9(0)) {
        func_8019D958_ovl7((u16) omCurrentObj->objId);
    }
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AFBB4(0, omCurrentObj);
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E9C60[omCurrentObj->objId] = 0;
    while (1) {
        ohSleep(random_soft_s32_range(0x10) + 0x10);
        if (D_800E9C60[omCurrentObj->objId] != 0) {
            D_800E5F90[omCurrentObj->objId] = D_800E5F90[0];
            D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[0];
            gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[0];
            gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[0] + 600.0f;
            gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[0];
            if (D_800E98E0[omCurrentObj->objId] != 0) {
                D_800E98E0[omCurrentObj->objId] = random_soft_s32_range(8);
            } else {
                D_800E98E0[omCurrentObj->objId] = random_soft_s32_range(7) + 1;
            }
            switch (D_800E77A0[omCurrentObj->objId]) {
                case 0x42:
                case 0x5D:
                case 0x5E:
                case 0x5F:
                    D_800E8E60[func_8019DD78_ovl7(D_8021C124_ovl9[D_800E98E0[omCurrentObj->objId]],
                                                  D_8021C184_ovl9[D_800E98E0[omCurrentObj->objId]])] = 0;
                    break;
                case 0x4B:
                case 0x64:
                case 0x65:
                case 0x66:
                    D_800E8E60[func_8019DD78_ovl7(D_8021C144_ovl9[D_800E98E0[omCurrentObj->objId]],
                                                  D_8021C184_ovl9[D_800E98E0[omCurrentObj->objId]])] = 0;
                    break;
                case 0x4C:
                case 0x68:
                case 0x69:
                case 0x6A:
                    D_800E8E60[func_8019DD78_ovl7(D_8021C164_ovl9[D_800E98E0[omCurrentObj->objId]],
                                                  D_8021C184_ovl9[D_800E98E0[omCurrentObj->objId]])] = 0;
                    break;
            }
        }
    }
}

void func_801ECEB4_ovl9(GObj *arg0) {
    s32 i;

    D_800E9C60[omCurrentObj->objId] = 1;
    for (i = 0x1E; i != 0x3C; i++) {
        if ((D_800DD710[i] != -1) && (i != omCurrentObj->objId) && (D_800E7730[i] == 0) &&
            ((D_800E77A0[i] == 0x42) || (D_800E77A0[i] == 0x4B) || (D_800E77A0[i] == 0x4C)) &&
            (D_800E7880[i] == 1)) {
            D_800E9C60[omCurrentObj->objId] = 0;
        }
    }
}

s32 func_801ED018_ovl9(s32 arg0) {
    s32 i;

    for (i = 0x1E; i != 0x3C; i++) {
        if ((i != omCurrentObj->objId) && (D_800DD710[i] != -1) && (D_800E7730[i] == 0) &&
            ((D_800E77A0[i] == 0x42) || (D_800E77A0[i] == 0x4B) || (D_800E77A0[i] == 0x4C)) &&
            (D_800E7880[i] == arg0)) {
            return 1;
        }
    }
    return 0;
}

extern struct GObjProcess *gEntityGObjProcessArray5[];
void func_800B7514(s32);
void func_801A3280_ovl7(void);
void func_8019BB58_ovl7(void);
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void procMainStub(struct GObj *);
void func_800AFBB4(s32, struct GObj *);

void func_801ED150_ovl9(GObj *arg0) {
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7514;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800AFBB4(0, omCurrentObj);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    curObjSleepForever();
}

#ifdef NON_MATCHING
/* 156/280 with two locals (272 with one, 272 with one + a dummy). Structure and
 * literals are believed right; the residue is that IDO promotes omCurrentObj to a
 * callee-saved $s0 across the prologue calls where the ROM reloads it into $a2 each
 * time, which costs an extra saved register and shifts the whole frame. */
void func_800F8E6C(struct GObj *);

void func_801ED208_ovl9(struct GObj *arg0) {
    s32 sp3C;
    s32 sp38;

    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7514;
    D_800DF150[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E64D0[omCurrentObj->objId] = 0.001f;
    func_800F8E6C(arg0);
    func_800B33F4();
    D_800EA1A0[omCurrentObj->objId] = 0;
    while (D_800E17D0[omCurrentObj->objId] >= 6.2831855f) {
        D_800E17D0[omCurrentObj->objId] -= 6.2831855f;
    }
    while (D_800E17D0[omCurrentObj->objId] < 0.0f) {
        D_800E17D0[omCurrentObj->objId] += 6.2831855f;
    }
    D_800EA6E0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId] =
        D_800E17D0[omCurrentObj->objId] + 1.5707964f;
    D_800EA8A0[omCurrentObj->objId] = sinf(D_800EA6E0[omCurrentObj->objId]);
    D_800EAA60[omCurrentObj->objId] = cosf(D_800EA6E0[omCurrentObj->objId]);
    while (1) {
        if ((((gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId]) *
              (gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId])) +
             ((gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId]) *
              (gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId]))) < 640000.0f) {
            switch (D_800E77A0[omCurrentObj->objId]) {
                case 0x42:
                case 0x5D:
                case 0x5E:
                case 0x5F:
                    sp3C = func_8019DD78_ovl7(0x5D, 0xA);
                    break;
                case 0x4B:
                case 0x64:
                case 0x65:
                case 0x66:
                    sp3C = func_8019DD78_ovl7(0x64, 0xA);
                    break;
                case 0x4C:
                case 0x68:
                case 0x69:
                case 0x6A:
                    sp3C = func_8019DD78_ovl7(0x68, 0xA);
                    break;
            }
            if (sp3C != -1) {
                D_800E8E60[sp3C] = 0;
                gEntitiesNextPosYArray[sp3C] = gEntitiesNextPosYArray[0] + 600.0f;
                D_800E8AE0[sp3C] |= 1;
                D_800EAC20[sp3C] = D_800EA8A0[omCurrentObj->objId];
                D_800EADE0[sp3C] = D_800EAA60[omCurrentObj->objId];
                D_800EA1A0[omCurrentObj->objId] = (D_800EA1A0[omCurrentObj->objId] + 1) & 1;
                D_800EA1A0[sp3C] = D_800EA1A0[omCurrentObj->objId];
            }
            sp38 = random_soft_s32_range(0x1F) + 0x3C;
            while (sp38 != 0) {
                gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[0];
                ohSleep(1);
                sp38--;
            }
        } else {
            ohSleep(1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED208_ovl9.s")
#endif

void func_800B72AC(s32);
#ifdef NON_MATCHING
/* 65/217: prologue, wait loop, copies and switch dispatch are exact. The residue is
 * that the ROM duplicates the `&D_800E8AE0[sp4C]` address computation into the first
 * two switch arms and cross-jumps only the lw/ori/sw tail, where IDO branches all
 * three arms to one block that recomputes it from $s0. Writing the |=1 in every arm
 * with a `default:` fallthrough is far worse (214/218, frame +8 and an extra $s8). */
extern s32 D_8021C1A4_ovl9[];
extern s32 D_8021C1B4_ovl9[];
extern s32 D_8021C1C4_ovl9[];
extern s32 D_8021C1D4_ovl9[];
s32 func_8019A900_ovl7(s32 *);
f32 func_8019B608_ovl7(s32);

void func_801ED648_ovl9(struct GObj *arg0) {
    s32 pad0;
    s32 sp50;
    s32 sp4C;
    s32 temp;

    if (func_801ED018_ovl9(3)) {
        func_8019D958_ovl7((u16) omCurrentObj->objId);
    }
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    D_800DF150[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    while (((func_8019A900_ovl7(&sp50) != 0) ? (f32) sp50 : func_8019B608_ovl7(0)) != 1.0f) {
        ohSleep(1);
    }
    while (1) {
        D_800E5F90[omCurrentObj->objId] = D_800E5F90[0];
        D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[0];
        gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[0];
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[0];
        temp = random_soft_s32_range(4);
        switch (D_800E77A0[omCurrentObj->objId]) {
            case 0x42:
            case 0x5D:
            case 0x5E:
            case 0x5F:
                sp4C = func_8019DD78_ovl7(D_8021C1A4_ovl9[temp], D_8021C1D4_ovl9[temp]);
                D_800E8E60[sp4C] = 0;
                break;
            case 0x4B:
            case 0x64:
            case 0x65:
            case 0x66:
                sp4C = func_8019DD78_ovl7(D_8021C1B4_ovl9[temp], D_8021C1D4_ovl9[temp]);
                D_800E8E60[sp4C] = 0;
                break;
            case 0x4C:
            case 0x68:
            case 0x69:
            case 0x6A:
                sp4C = func_8019DD78_ovl7(D_8021C1C4_ovl9[temp], D_8021C1D4_ovl9[temp]);
                D_800E8E60[sp4C] = 0;
                break;
        }
        D_800E8AE0[sp4C] |= 1;
        ohSleep(random_soft_s32_range(0x10) + 0x2D);
    }
}

s32 func_801ED018_ovl9(s32);
void func_8019D958_ovl7(u16);
s32 func_8019DD78_ovl7(s32, s32);
void func_800B72AC(s32);
s32 random_soft_s32_range(s32);
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED648_ovl9.s")
#endif

#ifdef NON_MATCHING
/* 7/144: structurally exact. IDO swaps $s5/$s6 between D_800E9C60 (ROM $s6)
 * and D_800E77A0 (ROM $s5); every other register and all scheduling match.
 * Swept: if/continue polarity, inner do-while around the ohSleep wait, and a
 * local for the switch operand (the last two are strictly worse, 11+ diffs).
 * Re-measured this session, still exactly 7 (task tracker says 8 for this
 * file's true residue; direct verify.py on the real file gives 7 -- trusting
 * the direct measurement per protocol). Sibling func_801ECB58_ovl9 has the
 * same D_800E9C60/D_800E77A0 skeleton but an extra setProcessMain() call and
 * a richer switch body, so it is not a byte-for-byte clone to copy from; its
 * matching first-compile does not by itself explain this draft's register
 * choice.
 *
 * THE SAVED-REGISTER PRIORITY FAMILY (measured 2026-08-25 across five drafts
 * in three files; this is the cheapest instance, so start any attack here).
 * IDO hoists each global's ADDRESS into a saved register and assigns those
 * registers by a priority order. The ROM's order and this compiler's order
 * differ by one position, and only that:
 *
 *   func_801ED9AC_ovl9  (here, 7/144)   ROM s6=D_800E9C60 s5=D_800E77A0
 *                                       IDO s5=D_800E9C60 s6=D_800E77A0
 *   func_801EEC28_ovl9  (45/277)        ROM s2=omCurrentObj, IDO s1
 *   func_801DE280_ovl9  (ovl9_3, 27/227) ROM s1/s2/s3 = D_8021BDB8 /
 *                                       D_800E7880 / D_800E64D0; IDO rotates
 *                                       the ROM's TOP symbol to the bottom
 *   func_8021F174_ovl19 (helper.c, 20/144) same rotation: ROM s3=omCurrentObj
 *                                       s2=D_800E0D50 s1=D_800E8060, IDO puts
 *                                       omCurrentObj at s1 and shifts the two
 *                                       loop-only symbols up
 *   func_801EDBEC_ovl9  (48/286)        ROM s1=omCurrentObj, IDO s2 -- note
 *                                       this is the OPPOSITE direction to
 *                                       func_801EEC28_ovl9 in the same file
 *
 * What is common is the SHAPE, not the direction: a one-position permutation of
 * one priority list. The emission ORDER of the lui/addiu pairs is identical in
 * ROM and draft; only the register numbers are permuted, and the prologue's sw
 * order follows the assignment (func_801EEC28_ovl9 saves $s2 before $s1 because
 * it defines $s2 first, func_801EDBEC_ovl9 saves $s1 first). So this is a
 * priority-list difference and not a scheduling one. Where three or more
 * symbols are involved the permutation is a cyclic rotation by one and the
 * symbol that moves is the one first materialised OUTSIDE the loop; with only
 * two it is a swap and the direction goes both ways, so do not read a rule into
 * which of the pair ends up higher.
 * Ruled out here: if/continue polarity, an inner do-while around the ohSleep
 * wait, a local for the switch operand (both strictly worse), and the fact that
 * D_800E9C60 has more uses than D_800E77A0 -- which should already rank it
 * higher and does in the ROM. Nothing in the body reorders the list. Anyone
 * attacking this should attack it once, here, and fix four drafts at a time. */
void func_801ED9AC_ovl9(struct GObj *arg0) {
    if (func_801ED018_ovl9(4)) {
        func_8019D958_ovl7((u16) omCurrentObj->objId);
    }
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AFBB4(0, omCurrentObj);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E9C60[omCurrentObj->objId] = 0;
    while (1) {
        ohSleep(random_soft_s32_range(0xC) + 0xC);
        if (D_800E9C60[omCurrentObj->objId] != 0) {
            D_800E5F90[omCurrentObj->objId] = D_800E5F90[0];
            D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[0];
            gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[0];
            gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[0];
            switch (D_800E77A0[omCurrentObj->objId]) {
                case 0x42:
                case 0x5D:
                case 0x5E:
                case 0x5F:
                    D_800E8E60[func_8019DD78_ovl7(0x5F, 0xD)] = 0;
                    break;
                case 0x4B:
                case 0x64:
                case 0x65:
                case 0x66:
                    D_800E8E60[func_8019DD78_ovl7(0x66, 0xD)] = 0;
                    break;
                case 0x4C:
                case 0x68:
                case 0x69:
                case 0x6A:
                    D_800E8E60[func_8019DD78_ovl7(0x6A, 0xD)] = 0;
                    break;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED9AC_ovl9.s")
#endif

extern struct EnemyKindDesc *D_8021C1E4_ovl9[];
extern struct EnemyKindDesc *D_8021C1F0_ovl9[];
extern struct EnemyKindDesc *D_8021C1FC_ovl9[];
extern s32 D_8021C208_ovl9[];
extern s32 D_8021C214_ovl9[];
extern s32 D_8021C220_ovl9[];
extern f32 D_8021C22C_ovl9[];
extern s32 D_8021C238_ovl9[];
extern f32 D_8021C244_ovl9[];
extern void func_800A9760(s32);
extern void func_801A2ADC_ovl7(void *);
extern void func_8019D958_ovl7(u16);
extern void func_801A3E80_ovl7(struct GObj *);
extern s32 func_800F9974(s32 *, f32 *, f32);
extern s32 func_8019B918_ovl7(void);
extern s32 random_soft_s32_range(s32);
void func_801ECAD8_ovl9(struct GObj *);
void func_800B33F4(void);

/* Left live by a lane mid-work, at 48/286 insns. Draft kept. */
#ifdef NON_MATCHING
/* 48/286: the $s1/$s2 tie-break between &omCurrentObj and the scaled `idx`.
 * Sibling func_801EEC28_ovl9 shows the same inversion in the opposite
 * direction, so no single ordering knob moves both. */
void func_801EDBEC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *ent;
    s32 idx;
    f32 temp;

    ent = D_800E1B50[omCurrentObj->objId];
    idx = D_800E7880[omCurrentObj->objId] - 5;
    func_801A0D50_ovl7(func_801ECAD8_ovl9);
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    switch (D_800E77A0[omCurrentObj->objId]) {
        case 0x42:
        case 0x5D:
        case 0x5E:
        case 0x5F:
            ent->unk88 = D_8021C1E4_ovl9[idx];
            func_800A9760(D_8021C208_ovl9[idx]);
            break;
        case 0x4B:
        case 0x64:
        case 0x65:
        case 0x66:
            ent->unk88 = D_8021C1F0_ovl9[idx];
            func_800A9760(D_8021C214_ovl9[idx]);
            break;
        case 0x4C:
        case 0x68:
        case 0x69:
        case 0x6A:
            ent->unk88 = D_8021C1FC_ovl9[idx];
            func_800A9760(D_8021C220_ovl9[idx]);
            break;
    }
    ent->unk8C = ent->unk88->animTable;
    ent->unk94 = ent->unk88->animCue;
    D_800E0490[omCurrentObj->objId] = (f32 **) ent->unk88->unk10;
    func_801A2ADC_ovl7((void *) ent->unk88->unk10);
    D_800E7B20[omCurrentObj->objId] = ent->unk88->rangeGate;
    ent->unk80->unk10 = D_8021C244_ovl9[idx];
    ent->unk80->unk18 = -800.0f;
    D_800E3210[omCurrentObj->objId] = -4.0f;
    temp = ((f32) random_soft_s32_range(0x41) * 10.0f) - 320.0f;
    if (func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId], temp) != 0) {
        temp = -temp;
        if (func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId], temp) !=
            0) {
            func_8019D958_ovl7((u16) omCurrentObj->objId);
        }
    }
    if ((D_800E5F90[omCurrentObj->objId] == 2) || (D_800E5F90[omCurrentObj->objId] == 4)) {
        ent->unk40 = 1;
        func_801A3E80_ovl7(arg0);
    }
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[0];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[0];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[0];
    while (func_8019B918_ovl7() == 0) {
        gEntitiesNextPosYArray[omCurrentObj->objId] += 40.0f;
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_8021C22C_ovl9[idx];
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = D_8021C238_ovl9[idx];
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EDBEC_ovl9.s")
#endif

extern struct EnemyKindDesc D_801C399C_ovl7;
extern struct EnemyKindDesc D_801C3A28_ovl7;
extern struct EnemyKindDesc D_801C3A94_ovl7;
void func_800A9760(s32);
void func_801A2ADC_ovl7(void *);
void func_801A3E80_ovl7(struct GObj *);
void func_801ECAD8_ovl9(struct GObj *);

void func_801EE064_ovl9(struct GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_801A0D50_ovl7(func_801ECAD8_ovl9);
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    switch (D_800E77A0[omCurrentObj->objId]) {
        case 0x42:
        case 0x5D:
        case 0x5E:
        case 0x5F:
            ent->unk88 = &D_801C399C_ovl7;
            func_800A9760(0x10050);
            break;
        case 0x4B:
        case 0x64:
        case 0x65:
        case 0x66:
            ent->unk88 = &D_801C3A28_ovl7;
            func_800A9760(0x1005A);
            break;
        case 0x4C:
        case 0x68:
        case 0x69:
        case 0x6A:
            ent->unk88 = &D_801C3A94_ovl7;
            func_800A9760(0x1005A);
            break;
    }
    ent->unk8C = ent->unk88->animTable;
    ent->unk94 = ent->unk88->animCue;
    D_800E0490[omCurrentObj->objId] = (f32 **) ent->unk88->unk10;
    func_801A2ADC_ovl7((void *) ent->unk88->unk10);
    ent->unk80->unk10 = 19.0f;
    ent->unk80->unk18 = -800.0f;
    if ((D_800E7880[omCurrentObj->objId] == 8) &&
        ((D_800E5F90[omCurrentObj->objId] == 2) || (D_800E5F90[omCurrentObj->objId] == 4))) {
        ent->unk40 = 1;
        func_801A3E80_ovl7(arg0);
    }
    D_800E3210[omCurrentObj->objId] = 6.0f;
    D_800E64D0[omCurrentObj->objId] = (D_800E7880[omCurrentObj->objId] == 8) ? 2.0f : -2.0f;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern struct EnemyKindDesc D_801C3958_ovl7;
extern struct EnemyKindDesc D_801C3A04_ovl7;
extern struct EnemyKindDesc D_801C3A70_ovl7;
/* D_8021D65C_ovl9: literal, this TU owns its .rodata */
extern void func_800A9760(s32);
extern void func_801A2ADC_ovl7(void *);
extern void func_801A3E80_ovl7(struct GObj *);
extern void func_800F8E6C(struct GObj *);
extern s32 func_800F9974(s32 *, f32 *, f32);
extern s32 func_8019B918_ovl7(void);
void func_801ECAD8_ovl9(struct GObj *);
void func_800B33F4(void);

void func_801EE2E8_ovl9(struct GObj *arg0) {
    struct EnemyRecord *ent;

    ent = D_800E1B50[omCurrentObj->objId];
    ent->unk39 = -1;
    func_801A0D50_ovl7(func_801ECAD8_ovl9);
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    switch (D_800E77A0[omCurrentObj->objId]) {
        case 0x42:
        case 0x5D:
        case 0x5E:
        case 0x5F:
            ent->unk88 = &D_801C3958_ovl7;
            func_800A9760(0x1004F);
            break;
        case 0x4B:
        case 0x64:
        case 0x65:
        case 0x66:
            ent->unk88 = &D_801C3A04_ovl7;
            func_800A9760(0x10059);
            break;
        case 0x4C:
        case 0x68:
        case 0x69:
        case 0x6A:
            ent->unk88 = &D_801C3A70_ovl7;
            func_800A9760(0x10059);
            break;
    }
    ent->unk8C = ent->unk88->animTable;
    ent->unk94 = ent->unk88->animCue;
    D_800E0490[omCurrentObj->objId] = (f32 **) ent->unk88->unk10;
    func_801A2ADC_ovl7((void *) ent->unk88->unk10);
    D_800E7B20[omCurrentObj->objId] = ent->unk88->rangeGate;
    ent->unk80->unk10 = 38.0f;
    ent->unk80->unk18 = -320.0f;
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId],
                      ((D_800EA1A0[omCurrentObj->objId] & 1) != 0) ? -40.0f : 40.0f) != 0) {
        D_800E5F90[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId];
        D_800E6BD0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    }
    func_800F8E6C(arg0);
    if ((D_800E5F90[omCurrentObj->objId] == 2) || (D_800E5F90[omCurrentObj->objId] == 4)) {
        ent->unk40 = 1;
        func_801A3E80_ovl7(arg0);
    }
    D_800E3210[omCurrentObj->objId] = -2.400000095f;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    while (func_8019B918_ovl7() == 0) {
        gEntitiesNextPosYArray[omCurrentObj->objId] += 40.0f;
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += 40.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = 0x10;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800E8AE0[omCurrentObj->objId] |= 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern struct EnemyKindDesc *D_8021C1E4_ovl9[];
extern struct EnemyKindDesc *D_8021C1F0_ovl9[];
extern struct EnemyKindDesc *D_8021C1FC_ovl9[];
extern s32 D_8021C208_ovl9[];
extern s32 D_8021C214_ovl9[];
extern s32 D_8021C220_ovl9[];
extern f32 D_8021C244_ovl9[];
extern f32 D_8021C250_ovl9[];
/* D_8021D704_ovl9: literal, this TU owns its .rodata */
extern void func_800A9760(s32);
extern void func_801A2ADC_ovl7(void *);
extern void func_800F8E6C(struct GObj *);
extern s32 func_800F9974(s32 *, f32 *, f32);
extern s32 func_8019B918_ovl7(void);
extern s32 random_soft_s32_range(s32);
void func_801ECAD8_ovl9(struct GObj *);
void func_800B33F4(void);

#ifdef NON_MATCHING
/* 305/320: semantically complete but the frame differs -- the ROM keeps
 * six saved registers and 0x18 of stack locals (spilling the
 * &D_8021C250_ovl9[kind] temp to 0x34), this shape uses seven saved
 * registers and no locals, so every register is one slot over. */
void func_801EE728_ovl9(struct GObj *arg0) {
    struct EnemyRecord *ent;
    s32 kind;

    kind = D_800E7880[omCurrentObj->objId] - 0xB;
    ent = D_800E1B50[omCurrentObj->objId];
    func_801A0D50_ovl7(func_801ECAD8_ovl9);
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    switch (D_800E77A0[omCurrentObj->objId]) {
        case 0x42:
        case 0x5D:
        case 0x5E:
        case 0x5F:
            ent->unk88 = D_8021C1E4_ovl9[kind];
            func_800A9760(D_8021C208_ovl9[kind]);
            break;
        case 0x4B:
        case 0x64:
        case 0x65:
        case 0x66:
            ent->unk88 = D_8021C1F0_ovl9[kind];
            func_800A9760(D_8021C214_ovl9[kind]);
            break;
        case 0x4C:
        case 0x68:
        case 0x69:
        case 0x6A:
            ent->unk88 = D_8021C1FC_ovl9[kind];
            func_800A9760(D_8021C220_ovl9[kind]);
            break;
    }
    ent->unk8C = ent->unk88->animTable;
    ent->unk94 = ent->unk88->animCue;
    D_800E0490[omCurrentObj->objId] = (f32 **) ent->unk88->unk10;
    func_801A2ADC_ovl7((void *) ent->unk88->unk10);
    D_800E7B20[omCurrentObj->objId] = ent->unk88->rangeGate;
    ent->unk80->unk10 = D_8021C244_ovl9[kind];
    ent->unk80->unk18 = -640.0f;
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = -40.0f;
    D_800E64D0[omCurrentObj->objId] = -0.009999999776f;
    while (func_8019B918_ovl7() == 0) {
        D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
        D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
        if (func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId],
                          D_800EAA60[omCurrentObj->objId]) != 0) {
            D_800E5F90[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId];
            D_800E6BD0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
            break;
        }
        func_800F8E6C(arg0);
    }
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId],
                      D_8021C250_ovl9[kind]) != 0) {
        D_800E5F90[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId];
        D_800E6BD0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    }
    if (kind != 0) {
        gEntitiesNextPosYArray[omCurrentObj->objId] =
            ((f32) random_soft_s32_range(0x15) - 10.0f) * 10.0f;
    } else {
        gEntitiesNextPosYArray[omCurrentObj->objId] =
            ((f32) random_soft_s32_range(0x11) - 8.0f) * 10.0f;
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800E8AE0[omCurrentObj->objId] |= 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EE728_ovl9.s")
#endif

extern struct EnemyKindDesc *D_8021C1E4_ovl9[];
extern struct EnemyKindDesc *D_8021C1F0_ovl9[];
extern struct EnemyKindDesc *D_8021C1FC_ovl9[];
extern s32 D_8021C208_ovl9[];
extern s32 D_8021C214_ovl9[];
extern s32 D_8021C220_ovl9[];
extern f32 D_8021C22C_ovl9[];
extern f32 D_8021C244_ovl9[];
extern void func_800A9760(s32);
extern void func_801A2ADC_ovl7(void *);
extern void func_8019D958_ovl7(u16);
extern s32 func_800F9974(s32 *, f32 *, f32);
extern s32 func_8019B918_ovl7(void);
extern s32 random_soft_s32_range(s32);
void func_801ECAD8_ovl9(struct GObj *);
void func_800B72AC(s32);
void func_800B33F4(void);

#ifdef NON_MATCHING
/* Left live by a lane mid-work, at 45/277 insns. Draft kept. */
void func_801EEC28_ovl9(struct GObj *arg0) {
    struct EnemyRecord *ent;
    s32 idx;
    f32 temp;

    ent = D_800E1B50[omCurrentObj->objId];
    idx = D_800E7880[omCurrentObj->objId] - 0xB;
    func_801A0D50_ovl7(func_801ECAD8_ovl9);
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    switch (D_800E77A0[omCurrentObj->objId]) {
        case 0x42:
        case 0x5D:
        case 0x5E:
        case 0x5F:
            ent->unk88 = D_8021C1E4_ovl9[idx];
            func_800A9760(D_8021C208_ovl9[idx]);
            break;
        case 0x4B:
        case 0x64:
        case 0x65:
        case 0x66:
            ent->unk88 = D_8021C1F0_ovl9[idx];
            func_800A9760(D_8021C214_ovl9[idx]);
            break;
        case 0x4C:
        case 0x68:
        case 0x69:
        case 0x6A:
            ent->unk88 = D_8021C1FC_ovl9[idx];
            func_800A9760(D_8021C220_ovl9[idx]);
            break;
    }
    ent->unk8C = ent->unk88->animTable;
    ent->unk94 = ent->unk88->animCue;
    D_800E0490[omCurrentObj->objId] = (f32 **) ent->unk88->unk10;
    func_801A2ADC_ovl7((void *) ent->unk88->unk10);
    D_800E7B20[omCurrentObj->objId] = ent->unk88->rangeGate;
    ent->unk80->unk10 = D_8021C244_ovl9[idx];
    ent->unk80->unk18 = -800.0f;
    D_800E3210[omCurrentObj->objId] = -4.0f;
    temp = ((f32) random_soft_s32_range(0x41) * 10.0f) - 320.0f;
    if (func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId], temp) != 0) {
        temp = -temp;
        if (func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId], temp) !=
            0) {
            func_8019D958_ovl7((u16) omCurrentObj->objId);
        }
    }
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[0];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[0];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[0];
    while (func_8019B918_ovl7() == 0) {
        gEntitiesNextPosYArray[omCurrentObj->objId] += 40.0f;
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_8021C22C_ovl9[idx];
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EEC28_ovl9.s")
#endif

void func_801EF07C_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C114_ovl9);
}

extern s32 D_8021C260_ovl9[];
extern struct EnemyEventTable D_801CBC50;
struct Sub800E1B50_Unk34 *func_800A8234(s32, s32, s32);
void func_800AECC0(f32);
void func_800AED20(f32);
void ohSleep(s32);
/* D_8021D7AC_ovl9: literal, this TU owns its .rodata */
/* D_8021D7B0_ovl9: literal, this TU owns its .rodata */
/* D_8021D7B4_ovl9: literal, this TU owns its .rodata */

void func_801EF0C4_ovl9(struct GObj *arg0) {
    s32 kind;
    struct EnemyRecord *ent;
    struct Sub800E1B50_Unk34 *temp;

    kind = D_800E7880[omCurrentObj->objId];
    ent = D_800E1B50[omCurrentObj->objId];
    if (D_8021C260_ovl9[kind] != 0) {
        temp = func_800A8234(3, 2, D_8021C260_ovl9[kind]);
        ent->unk34 = temp;
        D_800E9AA0[omCurrentObj->objId].as_ptr = temp;
    } else {
        ent->unk34 = NULL;
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    }
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBC50;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E3750[omCurrentObj->objId] = -0.3249999881f;
        D_800E3C90[omCurrentObj->objId] = 4.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.6499999762f;
        D_800E3C90[omCurrentObj->objId] = 8.0f;
    }
    while (D_800E8920[omCurrentObj->objId] == 0) {
        switch (kind) {
            case 8:
                D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z -= 0.05235987902f;
                break;
            case 9:
                D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z += 0.05235987902f;
                break;
        }
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

typedef struct {
    /* 0x00 */ u32 unk0;
    /* 0x04 */ f32 unk4;
    /* 0x08 */ f32 unk8;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
} Unk801EF354Node;

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);
void func_800A1F30(void *);

#ifdef NON_MATCHING
/* 42/116: residue is arg0 living in $a3 where the ROM home-slots it to
 * 0x20($sp); every other insn is the same shape one register over. */
void func_801EF354_ovl9(GObj *arg0) {
    GObj *g;
    struct EnemyRecord *ent;

    g = D_800E9AA0[omCurrentObj->objId].as_ptr;
    ent = D_800E1B50[omCurrentObj->objId];
    if (g != NULL) {
        ((Unk801EF354Node *) g->unk4C)->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
        ((Unk801EF354Node *) g->unk4C)->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        ((Unk801EF354Node *) g->unk4C)->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        ((Unk801EF354Node *) g->unk4C)->unk10 = gEntitiesAngleXArray[omCurrentObj->objId];
        ((Unk801EF354Node *) g->unk4C)->unk14 = gEntitiesAngleYArray[omCurrentObj->objId];
        ((Unk801EF354Node *) g->unk4C)->unk18 = gEntitiesAngleZArray[omCurrentObj->objId];
    }
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId]--;
    }
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        func_801A0D74_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
    if ((D_800E83E0[omCurrentObj->objId] == 1) || (D_800E83E0[omCurrentObj->objId] == 3)) {
        if (D_800E9AA0[omCurrentObj->objId].as_ptr != NULL) {
            func_800A1F30(D_800E9AA0[omCurrentObj->objId].as_ptr);
            ent->unk34 = NULL;
            D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EF354_ovl9.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 8/546, frame 0x58 vs the ROM's 0x60 and a different prologue
   order (the ROM loads omCurrentObj before its first register save).  The
   largest function in this bloc; the body itself tracks the ROM. */
extern struct EnemyEventTable D_801CB470_ovl7;
extern u32 D_8021C2BC_ovl9[];
extern f32 D_8021C2C4_ovl9[];
extern void func_800A7F74(u32, u32, u16, f32, f32, f32);
extern void func_800A1F30(void *);
extern void func_800FB914(s32);
extern void func_800BB468(s32, s32);
extern u32 func_800FD570(s32, u32, f32, f32, f32);
extern void func_801A3E80_ovl7(GObj *);
extern s32 random_soft_s32_range(s32);
void func_801EE064_ovl9(GObj *);
void ohSleep(s32);
/* Fish/critter death dispatcher (state 2): freeze into the death anim
 * set, release any grabbed-star payload, pop the death puff (particle
 * 3/2/0xBF) at the per-mode height from D_8021C2C4, and for the
 * stunned modes flash + play the KO cue.  Mode 5 (carrier) spawns the
 * two escaping halves (kind by species word: 0x5E/0x65/0x69, params 8
 * and 9, rails offset +/-20) and kills itself; modes 7/8/9/11/12 play
 * the splash cue, kick the water ripple via func_800FD570 and die;
 * mode 6 rerolls itself into mode 8 or 9 and restarts; mode 13 just
 * dies; mode 10 tumbles away -- ballistic hop with the spin applied to
 * the model root every tick, 18 ticks out, 18 ticks decelerating back,
 * then drifts forever with collision off (thread killed externally). */
void func_801EF524_ovl9(GObj *arg0) {
    EnemyRecord *rec;
    u8 mode;
    u32 id;

    id = omCurrentObj->objId;
    D_800DDFD0[id] = 2;
    rec = D_800E1B50[id];
    mode = D_800E7880[id];
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB470_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    if (D_800E9AA0[omCurrentObj->objId].as_u32 != 0) {
        func_800A1F30(D_800E9AA0[omCurrentObj->objId].as_ptr);
        rec->unk34 = NULL;
        D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
    }
    if (mode != 0xD) {
        id = omCurrentObj->objId;
        func_800A7F74(3, 2, 0xBF, gEntitiesNextPosXArray[id],
                      D_8021C2C4_ovl9[mode] + gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
    }
    if ((mode == 5) || (mode == 6) || (mode == 0xA) || (mode == 0xB)) {
        func_800FB914(1);
        play_sound(0x98);
        func_800BB468(0, 0);
    }
    switch (mode) {
        case 5: {
            s32 kind = 0;
            s32 t;

            switch (D_800E77A0[omCurrentObj->objId]) {
                case 0x42:
                case 0x5D:
                case 0x5E:
                case 0x5F:
                    kind = 0x5E;
                    break;
                case 0x4B:
                case 0x64:
                case 0x65:
                case 0x66:
                    kind = 0x65;
                    break;
                case 0x4C:
                case 0x68:
                case 0x69:
                case 0x6A:
                    kind = 0x69;
                    break;
            }
            if (kind != 0) {
                t = func_8019DD78_ovl7(kind, 8);
                if (t != -1) {
                    func_800F9974(&D_800E5F90[t], &D_800E6BD0[t], 20.0f);
                }
                t = func_8019DD78_ovl7(kind, 9);
                if (t != -1) {
                    func_800F9974(&D_800E5F90[t], &D_800E6BD0[t], -20.0f);
                }
            }
            rec->unk40 = 1;
            func_801A3E80_ovl7(arg0);
            return;
        }
        case 7:
        case 8:
        case 9:
        case 11:
        case 12:
            play_sound(0x15A);
            func_800FD570(0, rec->unk94->unk18, 0.0f, 0.0f, 0.0f);
            rec->unk40 = 1;
            func_801A3E80_ovl7(arg0);
            return;
        case 6:
            D_800E7880[omCurrentObj->objId] = D_8021C2BC_ovl9[random_soft_s32_range(2)];
            func_801EE064_ovl9(arg0);
            return;
        case 13:
            rec->unk40 = 1;
            func_801A3E80_ovl7(arg0);
            return;
        case 10: {
            s32 flip;
            f32 spin;
            s32 i;
            s32 n;

            D_800DEF90[omCurrentObj->objId] = func_800B7514;
            D_800E8E60[omCurrentObj->objId] = 1;
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E3210[omCurrentObj->objId] = 6.0f;
            D_800E3750[omCurrentObj->objId] = -0.325f;
            D_800E3C90[omCurrentObj->objId] = 6.0f;
            flip = random_soft_s32_range(2);
            spin = (flip != 0) ? -0.05235988f : 0.05235988f;
            id = omCurrentObj->objId;
            D_800E3050[id] = ((flip != 0) ? 4.0f : -4.0f) * D_800EAC20[id];
            id = omCurrentObj->objId;
            D_800E33D0[id] = ((flip != 0) ? 4.0f : -4.0f) * D_800EADE0[id];
            n = (s32) 18.461538f;
            for (i = 0; i < n; i++) {
                D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += spin;
                ohSleep(1);
            }
            id = omCurrentObj->objId;
            D_800E3590[id] = D_800E3050[id] * -(1.0f / 18.461538f);
            id = omCurrentObj->objId;
            D_800E3910[id] = D_800E33D0[id] * -(1.0f / 18.461538f);
            for (i = 0; i < n; i++) {
                D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += spin;
                ohSleep(1);
            }
            id = omCurrentObj->objId;
            D_800E3910[id] = 0.0f;
            D_800E3590[id] = D_800E3910[id];
            D_800E33D0[id] = D_800E3910[id];
            D_800E3050[id] = D_800E3910[id];
            D_800E3E50[id] = 65535.0f;
            D_800E3AD0[id] = D_800E3E50[id];
            D_800E9FE0[id].as_u32 = 0;
            func_8019BB58_ovl7();
            while (1) {
                D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += spin;
                ohSleep(1);
            }
        }
    }
}
#elif defined(PORT)
extern struct EnemyEventTable D_801CB470_ovl7;
extern u32 D_8021C2BC_ovl9[];
extern f32 D_8021C2C4_ovl9[];
extern void func_800A7F74(u32, u32, u16, f32, f32, f32);
extern void func_800A1F30(void *);
extern void func_800FB914(s32);
extern void func_800BB468(s32, s32);
extern u32 func_800FD570(s32, u32, f32, f32, f32);
extern void func_801A3E80_ovl7(GObj *);
extern s32 random_soft_s32_range(s32);
void func_801EE064_ovl9(GObj *);
void ohSleep(s32);
/* Fish/critter death dispatcher (state 2): freeze into the death anim
 * set, release any grabbed-star payload, pop the death puff (particle
 * 3/2/0xBF) at the per-mode height from D_8021C2C4, and for the
 * stunned modes flash + play the KO cue.  Mode 5 (carrier) spawns the
 * two escaping halves (kind by species word: 0x5E/0x65/0x69, params 8
 * and 9, rails offset +/-20) and kills itself; modes 7/8/9/11/12 play
 * the splash cue, kick the water ripple via func_800FD570 and die;
 * mode 6 rerolls itself into mode 8 or 9 and restarts; mode 13 just
 * dies; mode 10 tumbles away -- ballistic hop with the spin applied to
 * the model root every tick, 18 ticks out, 18 ticks decelerating back,
 * then drifts forever with collision off (thread killed externally). */
void func_801EF524_ovl9(GObj *arg0) {
    EnemyRecord *rec;
    u8 mode;
    u32 id;

    id = omCurrentObj->objId;
    D_800DDFD0[id] = 2;
    rec = D_800E1B50[id];
    mode = D_800E7880[id];
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB470_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    if (D_800E9AA0[omCurrentObj->objId].as_u32 != 0) {
        func_800A1F30(D_800E9AA0[omCurrentObj->objId].as_ptr);
        rec->unk34 = NULL;
        D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
    }
    if (mode != 0xD) {
        id = omCurrentObj->objId;
        func_800A7F74(3, 2, 0xBF, gEntitiesNextPosXArray[id],
                      D_8021C2C4_ovl9[mode] + gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
    }
    if ((mode == 5) || (mode == 6) || (mode == 0xA) || (mode == 0xB)) {
        func_800FB914(1);
        play_sound(0x98);
        func_800BB468(0, 0);
    }
    switch (mode) {
        case 5: {
            s32 kind = 0;
            s32 t;

            switch (D_800E77A0[omCurrentObj->objId]) {
                case 0x42:
                case 0x5D:
                case 0x5E:
                case 0x5F:
                    kind = 0x5E;
                    break;
                case 0x4B:
                case 0x64:
                case 0x65:
                case 0x66:
                    kind = 0x65;
                    break;
                case 0x4C:
                case 0x68:
                case 0x69:
                case 0x6A:
                    kind = 0x69;
                    break;
            }
            if (kind != 0) {
                t = func_8019DD78_ovl7(kind, 8);
                if (t != -1) {
                    func_800F9974(&D_800E5F90[t], &D_800E6BD0[t], 20.0f);
                }
                t = func_8019DD78_ovl7(kind, 9);
                if (t != -1) {
                    func_800F9974(&D_800E5F90[t], &D_800E6BD0[t], -20.0f);
                }
            }
            rec->unk40 = 1;
            func_801A3E80_ovl7(arg0);
            return;
        }
        case 7:
        case 8:
        case 9:
        case 11:
        case 12:
            play_sound(0x15A);
            func_800FD570(0, rec->unk94->unk18, 0.0f, 0.0f, 0.0f);
            rec->unk40 = 1;
            func_801A3E80_ovl7(arg0);
            return;
        case 6:
            D_800E7880[omCurrentObj->objId] = D_8021C2BC_ovl9[random_soft_s32_range(2)];
            func_801EE064_ovl9(arg0);
            return;
        case 13:
            rec->unk40 = 1;
            func_801A3E80_ovl7(arg0);
            return;
        case 10: {
            s32 flip;
            f32 spin;
            s32 i;
            s32 n;

            D_800DEF90[omCurrentObj->objId] = func_800B7514;
            D_800E8E60[omCurrentObj->objId] = 1;
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E3210[omCurrentObj->objId] = 6.0f;
            D_800E3750[omCurrentObj->objId] = -0.325f;
            D_800E3C90[omCurrentObj->objId] = 6.0f;
            flip = random_soft_s32_range(2);
            spin = (flip != 0) ? -0.05235988f : 0.05235988f;
            id = omCurrentObj->objId;
            D_800E3050[id] = ((flip != 0) ? 4.0f : -4.0f) * D_800EAC20[id];
            id = omCurrentObj->objId;
            D_800E33D0[id] = ((flip != 0) ? 4.0f : -4.0f) * D_800EADE0[id];
            n = (s32) 18.461538f;
            for (i = 0; i < n; i++) {
                D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += spin;
                ohSleep(1);
            }
            id = omCurrentObj->objId;
            D_800E3590[id] = D_800E3050[id] * -(1.0f / 18.461538f);
            id = omCurrentObj->objId;
            D_800E3910[id] = D_800E33D0[id] * -(1.0f / 18.461538f);
            for (i = 0; i < n; i++) {
                D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += spin;
                ohSleep(1);
            }
            id = omCurrentObj->objId;
            D_800E3910[id] = 0.0f;
            D_800E3590[id] = D_800E3910[id];
            D_800E33D0[id] = D_800E3910[id];
            D_800E3050[id] = D_800E3910[id];
            D_800E3E50[id] = 65535.0f;
            D_800E3AD0[id] = D_800E3E50[id];
            D_800E9FE0[id].as_u32 = 0;
            func_8019BB58_ovl7();
            while (1) {
                D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += spin;
                ohSleep(1);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EF524_ovl9.s")
#endif

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801EFDAC_ovl9(void) {
    if (D_800E7880[omCurrentObj->objId] != 0xA) {
        func_801A0D74_ovl7();
    }
    if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        func_8019F3B0_ovl7();
    }
}

extern s32 D_801CBC74;
/* D_8021D8A8_ovl9: literal, this TU owns its .rodata */
extern void func_800AECC0(f32);
extern void func_800AED20(f32);

void func_801EFE1C_ovl9(struct GObj *arg0) {
    s32 sp1C = D_800E7880[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBC74;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * ((sp1C == 0xB) ? 14.0f : 15.400001f);
    curObjSleepForever();
}

/* D_8021D8AC_ovl9: literal, this TU owns its .rodata */
void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801EFF24_ovl9(GObj *arg0) {
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z - 0.05235988f;
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] = D_800E9E20[omCurrentObj->objId] - 1;
    }
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        func_801A0D74_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

extern void func_800FB914(s32);
extern void func_800BB468(s32, s32);
extern u32 func_800FD570(s32, u32, f32, f32, f32);
extern void func_801A3E80_ovl7(struct GObj *);

void func_801EFFCC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    func_800FB914(1);
    play_sound(0x15A);
    func_800BB468(0, 0);
    func_800FD570(0, tmp->unk94->unk18, 0.0f, 0.0f, 0.0f);
    tmp->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

