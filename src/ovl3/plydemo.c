#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "GObj.h"
#include "Player.h"
#include "track_arrays.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl2/plylib.h"

extern s32 D_800BE4F8;
extern f32 D_80196F54_ovl3;
extern f32 D_80196F58_ovl3;
extern f32 D_80196F5C_ovl3;
extern f32 D_80196F60_ovl3;
extern f32 D_80196F64_ovl3;
extern f32 D_80196F68_ovl3;
extern f32 D_80196F6C_ovl3;

extern void func_80153984_ovl3(void);
extern s32 D_800BE4FC;
extern s32 D_800BE500;
extern s32 D_800BE504;
extern s32 D_800BE508;
extern s32 D_800BE52C;
extern s32 D_800BE530;
extern s32 D_800BE534;
extern s32 D_800BE538;
extern s32 D_8012E944;
extern f32 D_80196F70_ovl3;
extern f32 D_80196F74_ovl3;
extern f32 D_80196FB4_ovl3;
extern f32 D_80196FB8_ovl3;
extern f32 D_80196FD8_ovl3;
extern u16 D_800D6FB2;
extern s32 D_80196D48_ovl3[];
extern u32 D_80190358_ovl3[];
extern u32 D_801903E0_ovl3[];
extern u32 D_801926E8_ovl3[];
extern u32 D_80192704_ovl3[];
extern s32 gEntityGObjProcessArray[];
extern void func_8011CF58(void);
extern void func_801217B8(void);
extern void func_80120CCC(f32, f32);
extern void func_800F6C78(void);
extern void func_800FF200(s32);
extern void func_800AA78C(s32, s32, f32);
extern s32 func_800AA888(s32);
extern f32 func_800F951C(s32, f32, s32, f32);
extern void func_80122F08(s32);
extern void func_8011DC5C(void);
extern void func_8011E0E8(void);
extern void func_801230E8(s32, s32, s32);
extern void func_8022785C_ovl19(struct GObj *);
extern void assign_new_process_entry(s32, void (*)(struct GObj *));
extern void func_800AF408(void);
extern void func_800AFBB4(s32, struct GObj *);
extern void func_800FBE1C(void);
extern void func_800FA414(s32);
extern void func_801708A0_ovl3(s32, s32, f32);
extern void func_8022E58C_ovl19(void);

void func_80157C5C_ovl3();
void func_80157F18_ovl3(struct GObj *);
void func_8015814C_ovl3(s32, void (*)(), f32);
void func_80158294_ovl3();
void func_801583BC_ovl3(void);
void func_80158410_ovl3(s32);
void func_80157E38_ovl3(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_80156050_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_80156594_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_801567B8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_80157738_ovl3.s")

void func_80157C5C_ovl3(s32 arg0) {
    func_8011CF58();
    if (func_800AA888(D_80196D48_ovl3[gKirbyState.unk4]) == 0) {
        func_80122F08(D_80196D48_ovl3[gKirbyState.unk4]);
        gKirbyState.unk154 = 2;
    }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    if (gKirbyState.unk4 == 1) {
        D_800E0490[omCurrentObj->objId] = (f32 **) D_80192704_ovl3;
    } else {
        D_800E0490[omCurrentObj->objId] = (f32 **) D_801926E8_ovl3;
    }
    gKirbyState.isInhaling = 0;
    func_8011DC5C();
    func_8011E0E8();
}

void func_80157D58_ovl3(s32 arg0) {
    switch (gKirbyState.unk4) {
        case 0:
            func_800AA78C(0x20141, 0x20007, 6.0f);
            func_801230E8(0x20141, 0x20142, 0);
            break;
        case 1:
            func_800AA78C(0x2017F, 0x20009, 6.0f);
            func_801230E8(0x2017F, 0x20180, 0);
            break;
        case 2:
            func_800AA78C(0x200D1, 0x20007, 6.0f);
            func_801230E8(0x200D1, 0x200D2, 0);
            break;
    }
}

void func_80157E38_ovl3(s32 arg0) {
    switch (gKirbyState.unk4) {
        case 0:
            func_800AA78C(0x2009B, 0x20007, 6.0f);
            func_801230E8(0x2009B, 0x2009C, 0);
            break;
        case 1:
            func_800AA78C(0x20169, 0x20009, 6.0f);
            func_801230E8(0x20169, 0x2016A, 0);
            break;
        case 2:
            func_800AA78C(0x200C3, 0x20007, 6.0f);
            func_801230E8(0x200C3, 0x200C4, 0);
            break;
    }
}

void func_80157F18_ovl3(struct GObj *arg0) {
    s32 objId = arg0->objId;

    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_80196F54_ovl3;
    if (func_800F951C(D_800E5F90[objId], D_800E6BD0[objId], gKirbyState.unk3C, gKirbyState.unk40) < 0.0f) {
        if (1.0f == D_800E6A10[objId]) {
            gKirbyState.isTurning |= 1;
        }
        D_800E6690[omCurrentObj->objId] = -0.625f;
        D_800E6850[omCurrentObj->objId] = 5.0f;
    } else {
        if (-1.0f == D_800E6A10[objId]) {
            gKirbyState.isTurning |= 1;
        }
        D_800E6690[omCurrentObj->objId] = 0.625f;
        D_800E6850[omCurrentObj->objId] = 5.0f;
    }
}

void func_801580C4_ovl3(struct GObj *arg0, f32 arg1) {
    s32 objId = arg0->objId;

    if ((arg1 != 0.0f) && (arg1 != D_800E6A10[objId])) {
        gKirbyState.isTurning |= 1;
        while (gKirbyState.isTurning & 1) {
            ohSleep(1);
        }
    }
}

void func_8015814C_ovl3(s32 arg0, void (*arg1)(), f32 arg2) {
    gKirbyState.unk44 = 0;
    while (gKirbyState.isTurning & 1) {
        ohSleep(1);
    }
    gKirbyState.unk18 = 0;
    func_80157C5C_ovl3(arg0);
    gKirbyState.unk30 = 0;
    arg1(arg0);
    func_80157D58_ovl3(arg0);
    while (gKirbyState.unk30 == 0) {
        ohSleep(1);
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_80196F58_ovl3;
    while (gKirbyState.isTurning & 1) {
        ohSleep(1);
    }
    func_801580C4_ovl3((struct GObj *) arg0, arg2);
    func_80157E38_ovl3(arg0);
    gKirbyState.unk44 = 1;
    curObjSleepForever();
}

extern void set_kirby_action_1(s32, s32);

void func_80158294_ovl3(arg0)
GObj *arg0;
{
    f32 v;
    s32 idx;

    func_80153984_ovl3();
    if (gKirbyState.unk30 == 0) {
        idx = arg0->objId;
        v = func_800F951C(D_800E5F90[idx], D_800E6BD0[idx], gKirbyState.unk3C, gKirbyState.unk40);
        if (v < 0.0f) {
            if (1.0f == D_800E6A10[idx]) {
                gKirbyState.unk30 = 1;
                D_800E64D0[idx] = v;
                D_800E6690[idx] = 0.0f;
            }
        } else {
            if (-1.0f == D_800E6A10[idx]) {
                gKirbyState.unk30 = 1;
                D_800E64D0[idx] = v;
                D_800E6690[idx] = 0.0f;
            }
        }
    }
    if (gKirbyState.unk44 != 0) {
        set_kirby_action_1(0, 1);
        gKirbyState.abilityState = 0;
    }
}

void func_801583BC_ovl3(void) {
    func_80158294_ovl3();
    if (gKirbyState.unk2C-- == 0) {
        gKirbyState.unk2C = 0x7FFFFFFF;
        D_800BE4F8 = 2;
    }
}

void func_80158410_ovl3(s32 arg0) {
    func_80157C5C_ovl3(arg0);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_80196F5C_ovl3;
    func_80157E38_ovl3(arg0);
    curObjSleepForever();
}

void func_8015849C_ovl3(s32 arg0) {
    gKirbyState.unk2C = 0xB4;
    gKirbyState.unk3C = 2;
    gKirbyState.unk40 = D_80196F60_ovl3;
    D_800DDFD0[omCurrentObj->objId] = 0x46;
    func_8015814C_ovl3(arg0, func_80157F18_ovl3, -1.0f);
}

void func_80158508_ovl3(void) {
    func_801583BC_ovl3();
}

void func_80158528_ovl3(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x47;
    func_80158410_ovl3(arg0);
}

void func_80158564_ovl3(s32 arg0) {
    func_80153984_ovl3();
    if (gKirbyState.unkB == 1) {
        D_800BE4F8 = 2;
    }
}

void func_801585A0_ovl3(s32 arg0) {
    gKirbyState.unk3C = 1;
    gKirbyState.unk40 = D_80196F64_ovl3;
    D_800DDFD0[omCurrentObj->objId] = 0x4F;
    func_8015814C_ovl3(arg0, func_80157F18_ovl3, 1.0f);
}

void func_80158604_ovl3(s32 arg0) {
    gKirbyState.unk3C = 3;
    gKirbyState.unk40 = D_80196F68_ovl3;
    D_800DDFD0[omCurrentObj->objId] = 0x50;
    func_8015814C_ovl3(arg0, func_80157F18_ovl3, -1.0f);
}

void func_80158668_ovl3(void) {
    func_80158294_ovl3();
}

void func_80158688_ovl3(void) {
    func_80158294_ovl3();
}

void func_801586A8_ovl3(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x51;
    func_80157C5C_ovl3(arg0);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_80196F6C_ovl3;
    curObjSleepForever();
}

void func_80158744_ovl3(s32 arg0) {
    func_80153984_ovl3();
    if (D_800E8920[omCurrentObj->objId] == 1) {
        set_kirby_action_1(0, 0x1C);
    } else {
        set_kirby_action_1(6, 0x1C);
    }
}

void func_801587AC_ovl3(s32 arg0) {
    gKirbyState.unk3C = 2;
    gKirbyState.unk40 = 0.0f;
    D_800DDFD0[omCurrentObj->objId] = 0x52;
    func_8015814C_ovl3(arg0, func_80157F18_ovl3, 1.0f);
}

void func_8015880C_ovl3(void) {
    func_80158294_ovl3();
}

void func_8015882C_ovl3(s32 arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x48;
    switch (D_800BE500) {
        case 1:
            D_800E9720[omCurrentObj->objId] = 4;
            break;
        case 3:
        case 4:
            D_800E9720[omCurrentObj->objId] = 1;
            break;
    }
    curObjSleepForever();
}

void func_801588D0_ovl3(s32 arg0) {
    if (D_800E9720[omCurrentObj->objId]-- == 0) {
        func_8022E58C_ovl19();
    }
}

void func_80158924_ovl3(s32 arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x49;
    D_800EA6E0[omCurrentObj->objId] = gKirbyState.unk148;
    func_80157C5C_ovl3(arg0);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 1;
    gKirbyState.unk44 = 0;
    D_800E64D0[omCurrentObj->objId] = 5.0f;
    D_800E6690[omCurrentObj->objId] = 0.625f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    func_801230E8(0x20141, 0x20142, 0);
    while (gKirbyState.unk44 == 0) {
        ohSleep(1);
    }
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 0.0f;
    func_800AF408();
    func_800AFBB4(0, omCurrentObj);
    func_800FBE1C();
    func_800FA414(3);
    D_800E5F90[omCurrentObj->objId] = 0;
    D_800E6D90[omCurrentObj->objId] = 0.0f;
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
    curObjSleepForever();
}

void func_80158B10_ovl3(s32 arg0) {
    if (-1.0f == D_800E6A10[omCurrentObj->objId]) {
        if (!(gKirbyState.isTurning & 1)) {
            gKirbyState.isTurning |= 1;
        }
    }
    switch (gKirbyState.unk44) {
        case 0:
            gKirbyState.unk144 = gEntitiesNextPosXArray[omCurrentObj->objId];
            gKirbyState.unk148 = D_800EA6E0[omCurrentObj->objId];
            gKirbyState.unk14C = gEntitiesNextPosZArray[omCurrentObj->objId];
            func_800FF200(D_8012E944);
            break;
        case 1:
            break;
        case 2:
            gKirbyState.unk17 = 1;
            gKirbyState.abilityState = 0;
            *(s32 *) &gKirbyState.actionChange = -1;
            D_800D6FB2 = 1;
            gKirbyState.unk44 = -1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022785C_ovl19);
            break;
    }
}

void func_80158C40_ovl3(s32 arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x4A;
    func_80157C5C_ovl3(arg0);
    func_800FBE1C();
    func_800FA414(3);
    play_sound(0x1EF);
    curObjSleepForever();
}

void func_80158CA8_ovl3(s32 arg0) {
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_80196F70_ovl3;
    gKirbyState.abilityState = 0;
    *(s32 *) &gKirbyState.actionChange = -1;
    D_800D6FB2 = 1;
    gKirbyState.unk44 = -1;
    D_800E5F90[omCurrentObj->objId] = 0;
    D_800E6D90[omCurrentObj->objId] = D_80196F74_ovl3;
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022785C_ovl19);
}

void func_80158DB4_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x4B;
    D_800E8920[omCurrentObj->objId] = 1;
    func_80157C5C_ovl3(arg0);
    D_800E64D0[omCurrentObj->objId] = 5.0f;
    D_800E6690[omCurrentObj->objId] = 0.625f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    func_801230E8(0x20141, 0x20142, 0);
    while (gKirbyState.unk30 == 0) {
        ohSleep(1);
    }
    func_800AA78C(0x2009B, 0x20007, 12.0f);
    func_801230E8(0x2009B, 0x2009C, 0);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_80158EEC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_80159164_ovl3.s")

void func_80159ADC_ovl3(s32 arg0) {
    if (gKirbyState.unk3C == 0) {
        func_80153984_ovl3();
    }
    if (gKirbyState.unk30 != 0) {
        D_800BE52C = D_800BE500;
        D_800BE530 = D_800BE504;
        D_800BE534 = D_800BE508 + 1;
        D_800BE538 = 0;
        D_800BE4FC = 1;
        D_800BE4F8 = 2;
        gKirbyState.unk30 = 0;
        D_800E8760[omCurrentObj->objId] = 0;
    }
    func_800FF200(D_8012E944);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_80159BA0_ovl3.s")

void func_80159EA0_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            func_801708A0_ovl3(arg0, arg1, arg2);
            gKirbyState.unk4 = 1;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_80159EF0_ovl3.s")

extern void func_800A9760(s32);

void func_8015A144_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk44 = 1;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x4E;
    func_80157C5C_ovl3(arg0);
    gKirbyState.unk4 = 0;
    gKirbyState.unkD = -3;
    func_800A9760(0x20007);
    D_800E6690[omCurrentObj->objId] = 0.625f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    func_801230E8(0x20141, 0x20142, 0);
    while (gKirbyState.unk44 == 1) {
        ohSleep(1);
    }
    func_800FA414(5);
    func_801230E8(0x2009B, 0x2009C, 0);
    D_800E8060[D_800E0D50[omCurrentObj->objId]] = 2;
    ohSleep(0x1A);
    func_801230E8(0x2009F, 0x200A0, 0);
    play_sound(0x259);
    D_800E3210[omCurrentObj->objId] = 70.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 70.0f;
    ohSleep(0x22);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

#ifdef MIPS_TO_C
/* 75/75: logic is right (switch gives the ROM's shared $v1=1/$a1=2 compare
   chain) but IDO emits the gKirbyState base into $v0 and defers the
   `sw $a0, 0($sp)` parameter home store, where the ROM homes $a0 first and
   then reuses $a0 for the base, so every register differs. Swept: K&R
   definition, with/without a local for the switch value. */
void func_8015A31C_ovl3(s32 arg0) {
    s32 state = gKirbyState.unk44;

    switch (state) {
        case 1:
            if ((D_800E5F90[omCurrentObj->objId] == 5) && (D_80196FB4_ovl3 <= D_800E6BD0[omCurrentObj->objId])) {
                D_800E6690[omCurrentObj->objId] = 0.0f;
                D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
                D_800E6850[omCurrentObj->objId] = D_80196FB8_ovl3;
                gKirbyState.unk44 = 2;
            }
            break;
        case 2:
            if (gKirbyState.unk30 != 0) {
                D_800BE52C = D_800BE500;
                D_800BE530 = D_800BE504;
                D_800BE534 = D_800BE508 + 1;
                D_800BE538 = 0;
                D_800BE4FC = 1;
                D_800BE4F8 = 2;
                gKirbyState.unk30 = 0;
            }
            break;
    }
}
#else
#ifdef MIPS_TO_C
/* Logic exact; 4 register/scheduling diffs (the 75/75 count is the resulting
   shift).  The ROM keeps &gKirbyState in $a0 and the switch value in $v0 with
   both constants materialised before the first beq; IDO puts the base in $v0,
   the value in $v1 and sinks `li 2` into the beq delay slot.
   Swept: a local for the switch value (declared and initialised), a
   `struct Player *k` pointer local, an if/else-if chain instead of the switch,
   reusing the parameter as the scratch, a leading pad local, K&R definition. */
void func_8015A31C_ovl3(s32 arg0) {
    s32 state = gKirbyState.unk44;

    switch (state) {
        case 1:
            if ((D_800E5F90[omCurrentObj->objId] == 5) && (D_80196FB4_ovl3 <= D_800E6BD0[omCurrentObj->objId])) {
                D_800E6690[omCurrentObj->objId] = 0.0f;
                D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
                D_800E6850[omCurrentObj->objId] = D_80196FB8_ovl3;
                gKirbyState.unk44 = 2;
            }
            break;
        case 2:
            if (gKirbyState.unk30 != 0) {
                D_800BE52C = D_800BE500;
                D_800BE530 = D_800BE504;
                D_800BE534 = D_800BE508 + 1;
                D_800BE538 = 0;
                D_800BE4FC = 1;
                D_800BE4F8 = 2;
                gKirbyState.unk30 = 0;
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_8015A31C_ovl3.s")
#endif
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_8015A44C_ovl3.s")

void func_8015A92C_ovl3(s32 arg0) {
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        func_80153984_ovl3();
        func_801217B8();
    }
    if (gKirbyState.unk30 != 0) {
        if (D_800E9720[omCurrentObj->objId]-- == 0) {
            func_800F6C78();
            gKirbyState.unk30 = 0;
        }
    }
    func_80120CCC(D_800EA6E0[omCurrentObj->objId], D_80196FD8_ovl3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_8015A9F8_ovl3.s")

