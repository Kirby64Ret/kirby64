#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"

extern s32 D_801F4D48_ovl10[];
extern f32 D_801F4D30_ovl10[];

extern FUNCLIST D_801F4290_ovl10;

void func_801A0D74_ovl7();
f32 func_801DD760_ovl10(void);
extern s32 D_800DDFD0[], D_800EA360[];
extern struct EnemyEventTable D_801F4094_ovl10;
void func_800AECC0(f32);
void func_800AED20(f32);
extern f32 gameTicksPerDraw;
void func_800B33F4(void);
void play_sound(s32);
void func_800BB468(s32, s32);
void func_800A22D4(void *);
void func_800AA018(s32);
void func_800AA154(s32);
extern s32 D_801F3A18_ovl10[], D_801F3B38_ovl10[];
s32 func_801E2BD8_ovl10(struct DObj *, void *);
s32 func_8019A7E8_ovl7(f32);
s32 func_801E28C8_ovl10(s32);
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"
void func_801DBD38_ovl10(struct GObj *);

extern FUNCLIST D_801F4220_ovl10;
extern FUNCLIST D_801F4240_ovl10;
extern s32 D_800D6E40;
extern s32 D_800D6E18;
extern s32 D_800D6B6C[];
void func_8019D958_ovl7(u16);
void func_801DBDB8_ovl10(GObj *);

// ovl1 extern
void func_800A9760(u32);
void func_800A9864(u32, s32, s32);
/* ovl1_2_2.c returns Ovl1Generator *, a typedef that TU keeps private; every
 * call here discards the result. */
s32 func_800A8234(s32, s32, s32);
/* ovl1_8.c defines func_800B4954/func_800B68AC as (GObj *), but both are
 * stored into D_800DEF90, which track_arrays.h/ovl1_6.h declare as
 * `void (*[])(s32)`; the (s32) spelling is what keeps that assignment
 * type-clean. Correcting it belongs with the shared header. */
void func_800B68AC(s32);

// ovl2 extern
f32 func_800F951C(s32, f32, s32, f32);
u32 func_800FD570(s32, u32, f32, f32, f32);
s32 func_800BC11C(f32);
void func_80111550(u32);
s32 func_80110150(void *);
s32 func_80110B00(void *);
s32 func_80110FD4(void *);

// within this file
f32 func_801DF234_ovl10(void);
void func_801DFE64_ovl10(void);
s32 func_801DFCC0_ovl10(void);

extern void func_8019BB58_ovl7();
void func_801DBC00_ovl10(s32 arg0) {
    if (func_800B9DF8(2) && D_800D6B6C[1] == 0) {
        func_8019BB58_ovl7();
        D_800D6E40++;
        D_800D6E18++;
        func_8019D958_ovl7((u16)omCurrentObj->objId);
    }
    D_800DF150[omCurrentObj->objId] = &func_801DBDB8_ovl10;
    D_800E8920[omCurrentObj->objId] = 1;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 8, &D_801F4220_ovl10[0]);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x14, &D_801F4240_ovl10[0]);
}

void func_801DBD38_ovl10(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 20, D_801F4240_ovl10);
    }
}

void func_801DBDB8_ovl10(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 18, &D_801F4290_ovl10);
}

s32 func_801DBF70_ovl10(s32, f32);

void func_801DBE00_ovl10(s32 arg0) {
    func_8019BB58_ovl7();
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E98E0[omCurrentObj->objId] = func_801DBF70_ovl10(3, 0.0f);
    D_800E9AA0[omCurrentObj->objId].as_s32 = func_801DBF70_ovl10(4, 0.0f);
    D_800EBDA0[omCurrentObj->objId] = func_801DBF70_ovl10(1, 120.0f);
    D_800EBF60[omCurrentObj->objId] = func_801DBF70_ovl10(2, 120.0f);
    D_800EBBE0[omCurrentObj->objId] = func_801DBF70_ovl10(7, 0.0f);
    gEntitiesNextPosYArray[omCurrentObj->objId] = 100.0f;
    curObjSleepForever();
}

s32 func_801DBF70_ovl10(s32 arg0, f32 arg1) {
    s32 index = request_track_general(0x18, 0x1E, 0x3C);

    D_800E76C0[index] = 0xFF;
    D_800E7730[index] = 1;
    D_800E77A0[index] = 2;
    D_800E7880[index] = arg0;
    D_800E5F90[index] =
    D_800E6150[index] = D_800E5F90[omCurrentObj->objId];

    D_800E6BD0[index] =
    D_800E6D90[index] = D_800E6BD0[omCurrentObj->objId];

    gEntitiesNextPosXArray[index] =
    gEntitiesPosXArray[index] = gEntitiesNextPosXArray[omCurrentObj->objId];

    gEntitiesNextPosYArray[index] =
    gEntitiesPosYArray[index] = gEntitiesNextPosYArray[omCurrentObj->objId] + arg1;

    gEntitiesNextPosZArray[index] =
    gEntitiesPosZArray[index] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E0D50[index] = omCurrentObj->objId;
    D_800E8E60[index] = 0;
}

extern f32 *D_801F3F94_ovl10;
extern f32 *D_801F3FA8_ovl10;
extern struct EnemyEventTable D_801F4070_ovl10;
extern struct EnemyEventTable D_801F4094_ovl10;
void func_801A0D50_ovl7(void *);
void func_801A2ADC_ovl7();
void func_801A3280_ovl7(void);
extern void func_800B4954(s32);

void func_801DC0EC_ovl10(s32 arg0) {
    func_8019BB58_ovl7();
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = &func_800B4954;
    D_800DDFD0[omCurrentObj->objId] = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800E6A10[omCurrentObj->objId] = (D_800E7880[omCurrentObj->objId] == 2) ? 1.0f : -1.0f;
    func_801A0D50_ovl7(&func_801DBD38_ovl10);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    D_800E0490[omCurrentObj->objId] = &D_801F3F94_ovl10;
    func_801A2ADC_ovl7(&D_801F3F94_ovl10);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    ohSleep(0x10);
    func_800B33F4();
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = NULL;
    D_800DF150[omCurrentObj->objId] = NULL;
    curObjSleepForever();
}

void func_801DC2BC_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
}

void func_801DC2F4_ovl10(s32 arg0) {
    func_8019BB58_ovl7();
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = &func_800B4954;
    D_800DDFD0[omCurrentObj->objId] = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800E6A10[omCurrentObj->objId] = (D_800E7880[omCurrentObj->objId] == 4) ? 1.0f : -1.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    gEntitiesPosYArray[omCurrentObj->objId] = 140.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
    func_801A0D50_ovl7(&func_801DBD38_ovl10);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4070_ovl10;
    D_800E0490[omCurrentObj->objId] = &D_801F3FA8_ovl10;
    func_801A2ADC_ovl7(&D_801F3FA8_ovl10);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    curObjSleepForever();
}

void func_801DC4BC_ovl10(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    ohSleep(6);
    func_800B33F4();
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = NULL;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_801A3280_ovl7();
    curObjSleepForever();
}

#ifdef MIPS_TO_C
/* FACTORY: 46/290 with the frame and instruction count EXACT -- residue is a single
 * $v0/$v1 swap that propagates. Strongest seed in this file; permuter first.
 * Two fixes worth keeping: the host arm's `(void *)(uintptr_t)` cast on D_800EA360 is
 * an LP64-ism and is gone, and the two nested `s32 t = D_800EA520[parent]` temps must
 * be INLINED into their comparisons -- as locals they cost a stack slot each and put
 * the frame at 0x48 against the ROM's 0x40 (53/290 -> 46/290, LEVERS 10). */

/* Split boss segment rejoins its parent track (D_800E0D50): copies the
 * parent's path segment/offset, position and heading, latches the parent's
 * D_800DD8D0 top status bits through D_800E9C60, plays the merge anims from
 * the D_801F42D8/E0/E8 tables (indexed by D_800E98E0 parity), and hands the
 * hit pipeline back to the parent (D_800E7CE0[parent] = 8). */
void func_801DC598_ovl10(s32 arg0) {
    extern s32 D_801F39F4_ovl10;
    extern s32 D_801F3A84_ovl10;
    extern u32 D_801F42D8_ovl10[];
    extern u32 D_801F42E0_ovl10[];
    extern u32 D_801F42E8_ovl10[];

    s32 parent = D_800E0D50[omCurrentObj->objId];

    func_801A3280_ovl7();
    func_800A9864(D_801F42D8_ovl10[D_800E98E0[omCurrentObj->objId] & 1], 0x23, 0x10);
    func_800B19F4(0x30, omCurrentObj->objId);
    D_800DEF90[omCurrentObj->objId] = &func_800B68AC;
    if (D_800EA360[parent] != 0) {
        func_800A22D4(D_800EA360[parent]);
    }
    if (gEntityFuncListIDArray[parent] == 5) {
        if ((D_800EA520[parent] >= 0x64) && (D_800EA520[parent] < 0x78)) {
            play_sound(0x1DF);
        }
    }
    play_sound(0x28);
    D_800E5F90[omCurrentObj->objId] =
    D_800E6150[omCurrentObj->objId] = D_800E5F90[parent];
    D_800E6BD0[omCurrentObj->objId] =
    D_800E6D90[omCurrentObj->objId] = D_800E6BD0[parent];
    gEntitiesNextPosXArray[omCurrentObj->objId] =
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[parent];
    gEntitiesNextPosZArray[omCurrentObj->objId] =
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[parent];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[parent];
    D_800E9C60[omCurrentObj->objId] = D_800DD8D0[parent];
    func_800B19F4(0x7F, parent);
    D_800DDFD0[omCurrentObj->objId] = 1;
    if (gEntityFuncListIDArray[parent] < 0xA) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F39F4_ovl10;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A84_ovl10;
    }
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[parent];
    D_800E9020[omCurrentObj->objId] = D_800E9020[parent];
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[parent];
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(D_801F42E8_ovl10[D_800E98E0[omCurrentObj->objId] & 1]);
    func_800AA154(D_801F42E0_ovl10[D_800E98E0[omCurrentObj->objId] & 1]);
    if ((D_800EA360[parent] != 0) && (gEntityFuncListIDArray[parent] == 5)) {
        D_800EA360[parent] = func_800A8234(6, 2, 2);
    }
    if (gEntityFuncListIDArray[parent] == 5) {
        if ((D_800EA520[parent] >= 0x64) && (D_800EA520[parent] < 0x78)) {
            play_sound(0x1DD);
        }
    }
    D_800DD8D0[parent] |= D_800E9C60[omCurrentObj->objId] & 0xC0000000;
    func_800B19F4(0x30, parent);
    D_800E7CE0[parent] = 8;
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}
#elif defined(PORT)
void func_800B19F4(s32, s32);
extern s32 D_801F39F4_ovl10;
extern s32 D_801F3A84_ovl10;
extern u32 D_801F42D8_ovl10[];
extern u32 D_801F42E0_ovl10[];
extern u32 D_801F42E8_ovl10[];

/* Split boss segment rejoins its parent track (D_800E0D50): copies the
 * parent's path segment/offset, position and heading, latches the parent's
 * D_800DD8D0 top status bits through D_800E9C60, plays the merge anims from
 * the D_801F42D8/E0/E8 tables (indexed by D_800E98E0 parity), and hands the
 * hit pipeline back to the parent (D_800E7CE0[parent] = 8). */
void func_801DC598_ovl10(s32 arg0) {
    s32 parent = D_800E0D50[omCurrentObj->objId];

    func_801A3280_ovl7();
    func_800A9864(D_801F42D8_ovl10[D_800E98E0[omCurrentObj->objId] & 1], 0x23, 0x10);
    func_800B19F4(0x30, omCurrentObj->objId);
    D_800DEF90[omCurrentObj->objId] = &func_800B68AC;
    if (D_800EA360[parent] != 0) {
        func_800A22D4((void *) (uintptr_t) D_800EA360[parent]);
    }
    if (gEntityFuncListIDArray[parent] == 5) {
        s32 t = D_800EA520[parent];

        if ((t >= 0x64) && (t < 0x78)) {
            play_sound(0x1DF);
        }
    }
    play_sound(0x28);
    D_800E5F90[omCurrentObj->objId] =
    D_800E6150[omCurrentObj->objId] = D_800E5F90[parent];
    D_800E6BD0[omCurrentObj->objId] =
    D_800E6D90[omCurrentObj->objId] = D_800E6BD0[parent];
    gEntitiesNextPosXArray[omCurrentObj->objId] =
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[parent];
    gEntitiesNextPosZArray[omCurrentObj->objId] =
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[parent];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[parent];
    D_800E9C60[omCurrentObj->objId] = D_800DD8D0[parent];
    func_800B19F4(0x7F, parent);
    D_800DDFD0[omCurrentObj->objId] = 1;
    if (gEntityFuncListIDArray[parent] < 0xA) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F39F4_ovl10;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A84_ovl10;
    }
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[parent];
    D_800E9020[omCurrentObj->objId] = D_800E9020[parent];
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[parent];
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(D_801F42E8_ovl10[D_800E98E0[omCurrentObj->objId] & 1]);
    func_800AA154(D_801F42E0_ovl10[D_800E98E0[omCurrentObj->objId] & 1]);
    if ((D_800EA360[parent] != 0) && (gEntityFuncListIDArray[parent] == 5)) {
        D_800EA360[parent] = func_800A8234(6, 2, 2);
    }
    if (gEntityFuncListIDArray[parent] == 5) {
        s32 t = D_800EA520[parent];

        if ((t >= 0x64) && (t < 0x78)) {
            play_sound(0x1DD);
        }
    }
    D_800DD8D0[parent] |= D_800E9C60[omCurrentObj->objId] & 0xC0000000;
    func_800B19F4(0x30, parent);
    D_800E7CE0[parent] = 8;
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DC598_ovl10.s")
#endif

void func_801DCA20_ovl10(GObj *arg0) {
    func_801E28C8_ovl10(0);
}

s32 func_800F98EC(s32, f32);
void func_800AA018(s32);
void func_800AA154(s32);

void func_801DCA44_ovl10(s32 arg0) {
    s32 dead0;
    s32 sp18 = D_800E0D50[omCurrentObj->objId];

    func_801A3280_ovl7();
    func_800A9864(0x100D8, 0x23, 0x10);
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = &func_800B4954;
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E5F90[omCurrentObj->objId] =
    D_800E6150[omCurrentObj->objId] = D_800E5F90[sp18];
    D_800E6BD0[omCurrentObj->objId] =
    D_800E6D90[omCurrentObj->objId] = D_800E6BD0[sp18];
    gEntitiesNextPosXArray[omCurrentObj->objId] =
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[sp18];
    gEntitiesNextPosZArray[omCurrentObj->objId] =
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[sp18];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[sp18];
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[sp18];
    D_800E9020[omCurrentObj->objId] = D_800E9020[D_800E0D50[omCurrentObj->objId]];
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[sp18];
    func_800B33F4();
    func_800F98EC(omCurrentObj->objId, D_800E6A10[omCurrentObj->objId] * 80.0f);
    func_800AA018(0x10615);
    func_800AA154(0x10614);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}


void func_801DCCB8_ovl10(s32 arg0) {
    struct EnemyRecord *temp = D_800E1B50[omCurrentObj->objId];

    temp->unk80->unk10 = 40.0f;
    func_800A9864(0x1005C, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = &func_800B68AC;
    func_800B19F4(0x30, omCurrentObj->objId);
    D_800E8920[omCurrentObj->objId] = 1;
    func_801A0D50_ovl7(&func_801DBD38_ovl10);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    D_800E0490[omCurrentObj->objId] = &D_801F3F94_ovl10;
    func_801A2ADC_ovl7(&D_801F3F94_ovl10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

extern s32 D_801F39F4_ovl10;
extern void func_800BC1FC(s32);

void func_801DCDD4_ovl10(s32 arg0) {
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F39F4_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B33F4();
    func_800AA018(0x102E1);
    func_800AA018(0x102E0);
    ohSleep(0x1E);
    func_800BC1FC((s32)D_800E7B20[omCurrentObj->objId]);
    ohSleep(0x30);
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = -1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = -1;
    D_800EA360[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DCF48_ovl10(void) {
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

void func_800A9EA4(s32);
extern s32 random_soft_s32_range(s32);
s32 func_8019A900_ovl7(s32 *);
f32 func_8019B608_ovl7(s32);

void func_801DCFC4_ovl10(GObj *arg0) {
    s32 pad0;
    s32 sp68;
    s32 pad1;
    s32 i;
    s32 r;
    f32 v;
    f32 d;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A18_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    func_800A9EA4(0x102E1);
    func_800A9EA4(0x102E0);
    func_800AF27C();
    if (func_8019A900_ovl7(&sp68) != 0) {
        v = sp68;
    } else {
        v = func_8019B608_ovl7(0);
    }
    if (v != D_800E6A10[omCurrentObj->objId]) {
        D_800E9020[omCurrentObj->objId] = 0.0f;
        for (i = 0; i != 5; i++) {
            if (1.0f == D_800E6A10[omCurrentObj->objId]) {
                d = -0.3141592741f;
            } else {
                d = 0.3141592741f;
            }
            D_800E9020[omCurrentObj->objId] += d;
            ohSleep(1);
        }
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        D_800E9020[omCurrentObj->objId] = -D_800E9020[omCurrentObj->objId];
        do {
            if (1.0f == D_800E6A10[omCurrentObj->objId]) {
                d = 0.3141592741f;
            } else {
                d = -0.3141592741f;
            }
            D_800E9020[omCurrentObj->objId] += d;
            ohSleep(1);
            i--;
        } while (i != 0);
        D_800E9020[omCurrentObj->objId] = 0.0f;
        func_800AF27C();
    }
    r = random_soft_s32_range(3);
    while (r == D_800E98E0[omCurrentObj->objId]) {
        r = random_soft_s32_range(3);
    }
    D_800E98E0[omCurrentObj->objId] = r;
    if (r != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
    }
}

void func_801DD2CC_ovl10(GObj *arg0) {
    if (func_8019A7E8_ovl7(160.0f) != 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
        D_800EA520[omCurrentObj->objId] = 0x3E8;
    }
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

extern struct EnemyEventTable D_801F40B8_ovl10;

void func_801DD390_ovl10(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A18_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F40B8_ovl10;
    D_800EA520[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.1;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    func_800AA018(0x102E3);
    func_800AA154(0x102E2);
    func_800AA018(0x102E5);
    func_800AA018(0x102E4);
    while (D_800EA520[omCurrentObj->objId] < 3) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        func_800AF27C();
        D_800EA520[omCurrentObj->objId] += 1;
    }
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.1;
    func_800AA018(0x102E7);
    func_800AA154(0x102E6);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (D_800EA520[omCurrentObj->objId] >= 0x65) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
}

void func_801DD674_ovl10(GObj *arg0) {
    if (func_801DD760_ovl10() != 0.0f) {
        D_800EA520[omCurrentObj->objId] = 0x3E8;
    }
    if (func_8019A7E8_ovl7(160.0f) != 0) {
        D_800EA520[omCurrentObj->objId] = 0x3E8;
    }
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 198/207 [was noted 202/207] with the instruction count EXACT -- register naming only.
   DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 198 of 207 words differ (95%). A
   permutation RENAMES registers -- it does not change what the function
   computes, so it cannot account for this. At this fraction the draft is
   simply not this function yet. Re-derive from the listing before spending a
   compile on register spelling, and do NOT queue it for the permuter:
   mutation has no purchase at this distance.

 * Note the prototype this needs: func_800F951C takes FOUR arguments
 * (f32,f32,f32,f32), not two; ovl2_3.c spells it `f32 func_800F951C(s32, f32, s32,
 * f32)`. It is declared in-body because this draft is the TU's first use and a
 * file-scope declaration would be a file-scope change. */

/* Track-edge probe for the walking boss: measures the along-track distance
 * to the merge target (D_800E9AA0[parent] track when facing +1,
 * D_800E98E0[parent] track when facing -1).  When the target is unreachable
 * (9999) or already passed, it snaps to the target's path segment/offset,
 * cancels the pending X/Z step, and returns the facing sign; else 0. */
f32 func_801DD760_ovl10(void) {

    s32 tgt;
    f32 dist;

    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        tgt = D_800E9AA0[D_800E0D50[omCurrentObj->objId]].as_s32;
        dist = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                             D_800E5F90[tgt], D_800E6BD0[tgt]);
        if ((dist == 9999.0f) || (dist < 0.0f)) {
            tgt = D_800E9AA0[D_800E0D50[omCurrentObj->objId]].as_s32;
            D_800E5F90[omCurrentObj->objId] =
            D_800E6150[omCurrentObj->objId] = D_800E5F90[tgt];
            D_800E6BD0[omCurrentObj->objId] =
            D_800E6D90[omCurrentObj->objId] = D_800E6BD0[tgt];
            gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId];
            gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
            return 1.0f;
        }
    } else {
        tgt = D_800E98E0[D_800E0D50[omCurrentObj->objId]];
        dist = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                             D_800E5F90[tgt], D_800E6BD0[tgt]);
        if ((dist == 9999.0f) || (dist > 0.0f)) {
            tgt = D_800E98E0[D_800E0D50[omCurrentObj->objId]];
            D_800E5F90[omCurrentObj->objId] =
            D_800E6150[omCurrentObj->objId] = D_800E5F90[tgt];
            D_800E6BD0[omCurrentObj->objId] =
            D_800E6D90[omCurrentObj->objId] = D_800E6BD0[tgt];
            gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId];
            gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
            return -1.0f;
        }
    }
    return 0.0f;
}
#elif defined(PORT)

/* Track-edge probe for the walking boss: measures the along-track distance
 * to the merge target (D_800E9AA0[parent] track when facing +1,
 * D_800E98E0[parent] track when facing -1).  When the target is unreachable
 * (9999) or already passed, it snaps to the target's path segment/offset,
 * cancels the pending X/Z step, and returns the facing sign; else 0. */
f32 func_801DD760_ovl10(void) {
    s32 tgt;
    f32 dist;

    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        tgt = D_800E9AA0[D_800E0D50[omCurrentObj->objId]].as_s32;
        dist = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                             D_800E5F90[tgt], D_800E6BD0[tgt]);
        if ((dist == 9999.0f) || (dist < 0.0f)) {
            tgt = D_800E9AA0[D_800E0D50[omCurrentObj->objId]].as_s32;
            D_800E5F90[omCurrentObj->objId] =
            D_800E6150[omCurrentObj->objId] = D_800E5F90[tgt];
            D_800E6BD0[omCurrentObj->objId] =
            D_800E6D90[omCurrentObj->objId] = D_800E6BD0[tgt];
            gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId];
            gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
            return 1.0f;
        }
    } else {
        tgt = D_800E98E0[D_800E0D50[omCurrentObj->objId]];
        dist = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                             D_800E5F90[tgt], D_800E6BD0[tgt]);
        if ((dist == 9999.0f) || (dist > 0.0f)) {
            tgt = D_800E98E0[D_800E0D50[omCurrentObj->objId]];
            D_800E5F90[omCurrentObj->objId] =
            D_800E6150[omCurrentObj->objId] = D_800E5F90[tgt];
            D_800E6BD0[omCurrentObj->objId] =
            D_800E6D90[omCurrentObj->objId] = D_800E6BD0[tgt];
            gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId];
            gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
            return -1.0f;
        }
    }
    return 0.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DD760_ovl10.s")
#endif

void func_801DDAA0_ovl10(GObj *arg0) {
    D_800EA520[omCurrentObj->objId] = 5;
}

extern s32 D_801F42F0_ovl10[];
extern s32 random_soft_s32_range(s32);

#ifdef NON_MATCHING
/* structurally exact, 27 pure regalloc diffs (ROM keeps `temp` in $a1) */
void func_801DDAC8_ovl10(s32 arg0) {
    s32 temp;

    temp = D_801F42F0_ovl10[random_soft_s32_range(6)];
    while (D_800E9AA0[omCurrentObj->objId].as_s32 == temp) {
        temp = D_801F42F0_ovl10[random_soft_s32_range(6)];
    }
    D_800E9AA0[omCurrentObj->objId].as_s32 = temp;
    gEntityFuncListIDArray[omCurrentObj->objId] = temp;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DDAC8_ovl10.s")
#endif
void func_800A1F30(void *);

/* 49/204, all of them the same one-slot temp rotation: the ROM uses $a0 as a
   scratch where this uses $a1. */
void func_801DDB88_ovl10(GObj *arg0)
{
  func_800AECC0(gameTicksPerDraw);
  func_800AED20(gameTicksPerDraw);
  D_800DDFD0[omCurrentObj->objId] = 5;
  D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A18_ovl10;
  D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
  func_800B33F4();
  if (D_800EA360[omCurrentObj->objId] != 0)
  {
    func_800A1F30((void *) D_800EA360[omCurrentObj->objId]);
    D_800EA360[omCurrentObj->objId] = 0;
  }
  D_800EA520[omCurrentObj->objId] = 0;
  func_800AA018(0x102BF);
  func_800AA154(0x102BE);
  D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * ((f64) 2);
  func_800AA018(0x102C1);
  func_800AA018(0x102C0);
  D_800EA360[omCurrentObj->objId] = func_800A8234(6, 2, 2);
  play_sound(0x1DD);
  D_800EA520[omCurrentObj->objId] = 0x64;
  while (D_800EA520[omCurrentObj->objId] < 0x78)
  {
    if ((D_800EA520[omCurrentObj->objId] == 0x76) && (D_800EA360[omCurrentObj->objId] != 0))
    {
      func_800A1F30((void *) D_800EA360[omCurrentObj->objId]);
      D_800EA360[omCurrentObj->objId] = 0;
    }
    func_800AF27C();
 if (0) { }
    D_800EA520[omCurrentObj->objId] += 1;
  }

  play_sound(0x1DF);
  D_800E6690[omCurrentObj->objId] = 0.0f;
  D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
  D_800E6850[omCurrentObj->objId] = 65535.0f;
  if (D_800EA360[omCurrentObj->objId] != 0)
  {
    func_800A1F30((void *) D_800EA360[omCurrentObj->objId]);
    D_800EA360[omCurrentObj->objId] = 0;
  }
  D_800EA520[omCurrentObj->objId] = 1000;
  func_800AA018(0x102C7);
  func_800AA154(0x102C6);
  gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

struct Ovl10Xf {
    u32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
};

struct Ovl10EA360 {
    u8 filler0[0x4C];
    struct Ovl10Xf *unk4C;
};

struct Ovl10AnimInfo0 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0xC];
};

extern s32 D_801F3E2C_ovl10;
void func_80169430_ovl3(s32, u8, u8, s32);
s32 func_801E2C78_ovl10(struct DObj *, void *);

/* FACTORY: 10/155, pure $v0/$v1 swap on `temp` (ROM $v1) -- the CSE'd-load-
   in-the-neighbouring-register floor from LEVERS.md's guard-on-the-second-
   variant list. Re-confirmed 2026-08-23, identical 10/155: every diff is
   the same register substitution ($v0 for $v1) on the D_800EA360[objId]
   load and its five re-reads of ->unk4C. Good permuter seed. */
void func_801DDEB8_ovl10(GObj *arg0)
{
  s32 timer;
  struct Ovl10AnimInfo0 sp30;
  struct Ovl10EA360 *temp;
  func_801DD760_ovl10();
  temp = (struct Ovl10EA360 *) D_800EA360[omCurrentObj->objId];
  if (((struct Ovl10EA360 *) D_800EA360[omCurrentObj->objId]) != 0)
  {
    ((struct Ovl10EA360 *) D_800EA360[omCurrentObj->objId])->unk4C->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
    temp->unk4C->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    temp->unk4C->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
    temp->unk4C->unk10 = gEntitiesAngleXArray[omCurrentObj->objId];
    temp->unk4C->unk14 = gEntitiesAngleYArray[omCurrentObj->objId];
    temp->unk4C->unk18 = gEntitiesAngleZArray[omCurrentObj->objId];
  }
  func_801A0D74_ovl7(arg0);
  D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A18_ovl10;
  func_801E28C8_ovl10(0);
  if (D_800E83E0[omCurrentObj->objId] == 0)
  {
    timer = D_800EA520[omCurrentObj->objId];
    if ((0xA < timer) && (timer < 0xC8))
    {
      D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3E2C_ovl10;
      if (func_801E2C78_ovl10(D_800DFBD0[omCurrentObj->objId][5], &sp30) != 0)
      {
        func_80169430_ovl3(sp30.unkC, sp30.unk0, sp30.unk1, 1);
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
        D_800EC120[omCurrentObj->objId] = 0;
        D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
      }
    }
  }
  else
    if (D_800E83E0[omCurrentObj->objId] == 1)
  {
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
  }
}


f32 func_800F9828(s32, s32);
void func_800A7F74(u32, u32, u32, f32, f32, f32);
/* State 6 (spit-out) main: waits for the swallowed segment to signal ready
 * (D_800E98E0 of the D_800EC120 helper), turns toward the parent track if
 * needed (the 5-tick half-turn dance shared with func_801E18A8), then spawns
 * the projectile effect and returns to state 2. */
void func_801DE124_ovl10(s32 arg0) {
    s32 i;
    f32 v;
    f32 d;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 6;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F39F4_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    if (D_800EA360[omCurrentObj->objId] != 0) {
        func_800A1F30((void *) (uintptr_t) D_800EA360[omCurrentObj->objId]);
        D_800EA360[omCurrentObj->objId] = 0;
    }
    ohSleep(0xA);
    while (D_800E98E0[D_800EC120[omCurrentObj->objId]] == 0) {
        ohSleep(1);
    }
    play_sound(0x1DA);
    func_800AA018(0x102C3);
    func_800AA154(0x102C2);
    v = func_800F9828(omCurrentObj->objId, D_800E0D50[omCurrentObj->objId]);
    if (v == 9999.0f) {
        v = func_8019B608_ovl7(D_800E0D50[omCurrentObj->objId]);
    } else {
        v = (0.0f < v) ? 1.0f : -1.0f;
    }
    if (v != D_800E6A10[omCurrentObj->objId]) {
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        D_800E9020[omCurrentObj->objId] = 0.0f;
        for (i = 0; i != 5; i++) {
            if (1.0f == D_800E6A10[omCurrentObj->objId]) {
                d = -0.3141592741f;
            } else {
                d = 0.3141592741f;
            }
            D_800E9020[omCurrentObj->objId] += d;
            ohSleep(1);
        }
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        D_800E9020[omCurrentObj->objId] = -D_800E9020[omCurrentObj->objId];
        do {
            if (1.0f == D_800E6A10[omCurrentObj->objId]) {
                d = 0.3141592741f;
            } else {
                d = -0.3141592741f;
            }
            D_800E9020[omCurrentObj->objId] += d;
            ohSleep(1);
            i--;
        } while (i != 0);
        D_800E9020[omCurrentObj->objId] = 0.0f;
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
    }
    func_800AA018(0x102C5);
    func_800AA018(0x102C4);
    ohSleep(5);
    func_800A7F74(6, 2, (1.0f == D_800E6A10[omCurrentObj->objId]) ? 0xC : 0xE,
                  gEntitiesNextPosXArray[omCurrentObj->objId],
                  gEntitiesNextPosYArray[omCurrentObj->objId],
                  gEntitiesNextPosZArray[omCurrentObj->objId]);
    play_sound(0x1D8);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    func_800AF27C();
    func_800AA018(0x102C7);
    func_800AA154(0x102C6);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DE5CC_ovl10(GObj *arg0) {
    func_801DD760_ovl10();
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

s32 func_800FB914(s32);
s32 func_801ACCA0_ovl7(s32, s32, f32, f32);

#ifdef NON_MATCHING
/* 199/282: v0/v1 rotated from the prologue on. */
void func_801DE650_ovl10(GObj *arg0) {
    f32 t;

    func_800AECC0(gameTicksPerDraw + gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw + gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A18_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AA018(0x102C9);
    func_800AA018(0x102C8);
    if ((gEntitiesNextPosYArray[0] + 20.0f) < (gEntitiesNextPosYArray[omCurrentObj->objId] + 40.0f)) {
        t = -((gEntitiesNextPosYArray[0] + 20.0f) - (gEntitiesNextPosYArray[omCurrentObj->objId] + 40.0f));
    } else {
        t = (gEntitiesNextPosYArray[0] + 20.0f) - (gEntitiesNextPosYArray[omCurrentObj->objId] + 40.0f);
    }
    if (240.0f < t) {
        t = 240.0f;
    }
    if (t < 80.0f) {
        t = 80.0f;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 30.0f * (t / 240.0f);
    D_800E3750[omCurrentObj->objId] = -2.0f * (t / 240.0f);
    D_800E3C90[omCurrentObj->objId] = 30.0f;
    while (0.0f < D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    play_sound(0x1D9);
    func_800AA018(0x102CB);
    func_800AA154(0x102CA);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x102CD);
    func_800AA018(0x102CC);
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_801DBF70_ovl10(5, 0.0f);
    func_800FB914(2);
    play_sound(0x1D6);
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E33D0[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_801ACCA0_ovl7(6, (1.0f == D_800E6A10[omCurrentObj->objId]) ? 1 : 0, 80.0f, 15.0f);
    func_800AA018(0x102CF);
    func_800AA154(0x102CE);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DE650_ovl10.s")
#endif

struct Ovl10AnimInfo1 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0xC];
};

void func_801DEA98_ovl10(GObj *arg0) {
    struct Ovl10AnimInfo1 sp24;

    func_801DD760_ovl10();
    func_801A0D74_ovl7(arg0);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A18_ovl10;
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3B38_ovl10;
    func_801E2BD8_ovl10(D_800DFBD0[omCurrentObj->objId][20], &sp24);
}

#ifdef MIPS_TO_C
/* FACTORY: 363/424 [was noted 377/434] and 10 instructions LONG (the only over-long draft in this bloc --
 * everything else runs short). Something here is evaluated more than the ROM does;
 * that is the first thing to chase. */

/* State 8 (triple hop toward Kirby): picks hop direction from the track
 * probe (func_8019A900_ovl7 fills an 8-byte {dir,dist} record - full struct,
 * not a lone s32, see enelib's PORT note), clamps the travel to the merge
 * target track and +/-400, then does three rising hops (D_801F4328 launch
 * velocities); the last hop carries the forward speed and lands with the
 * double shockwave attack. */
void func_801DEB94_ovl10(s32 arg0) {
    extern u32 D_801F4308_ovl10[];
    extern u32 D_801F4310_ovl10[];
    extern u32 D_801F4318_ovl10[];
    extern u32 D_801F4320_ovl10[];
    extern f32 D_801F4328_ovl10[];

    struct {
        s32 dir;
        f32 dist;
    } tp;
    s32 fwd;
    s32 tgt;
    f32 range;
    f32 d;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 8;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A18_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AA018(0x102D1);
    func_800AA154(0x102D0);
    D_800E3C90[omCurrentObj->objId] = 45.0f;
    if (func_8019A900_ovl7((s32 *) &tp) != 0) {
        range = tp.dist;
    } else {
        range = func_801DF234_ovl10();
    }
    fwd = (range < 0.0f) ? 0 : 1;
    if (fwd != 0) {
        tgt = D_800E9AA0[D_800E0D50[omCurrentObj->objId]].as_s32;
        d = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                          D_800E5F90[tgt], D_800E6BD0[tgt]);
        if ((d != 9999.0f) && (d < range)) {
            range = d;
        }
        if (range > 400.0f) {
            range = 400.0f;
        }
    } else {
        tgt = D_800E98E0[D_800E0D50[omCurrentObj->objId]];
        d = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                          D_800E5F90[tgt], D_800E6BD0[tgt]);
        if ((d != 9999.0f) && (range < d)) {
            range = d;
        }
        if (range < -400.0f) {
            range = -400.0f;
        }
    }
    func_800AA018(D_801F4310_ovl10[fwd]);
    func_800AA018(D_801F4308_ovl10[fwd]);
    play_sound(0x1D7);
    D_800EA520[omCurrentObj->objId] = 0;
    while (D_800EA520[omCurrentObj->objId] < 3) {
        D_800E8920[omCurrentObj->objId] = 0;
        if (D_800EA520[omCurrentObj->objId] == 2) {
            D_800E64D0[omCurrentObj->objId] = range * 0.033333335f;
        }
        D_800E3210[omCurrentObj->objId] = D_801F4328_ovl10[D_800EA520[omCurrentObj->objId]];
        D_800E3750[omCurrentObj->objId] = -1.0f;
        func_800AA018(D_801F4320_ovl10[fwd]);
        func_800AA018(D_801F4318_ovl10[fwd]);
        while (D_800E8920[omCurrentObj->objId] == 0) {
            ohSleep(1);
        }
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        if (D_800EA520[omCurrentObj->objId] == 2) {
            func_800AA018(0x102D5);
            func_800AA018(0x102D4);
            func_800A7F74(6, 2, 1,
                          gEntitiesNextPosXArray[omCurrentObj->objId],
                          gEntitiesNextPosYArray[omCurrentObj->objId],
                          gEntitiesNextPosZArray[omCurrentObj->objId]);
            ohSleep(2);
            func_801ACCA0_ovl7(6, 0, D_800E6A10[omCurrentObj->objId] * -40.0f, 15.0f);
            func_801ACCA0_ovl7(6, 1, D_800E6A10[omCurrentObj->objId] * 40.0f, 15.0f);
            func_800FB914(2);
            play_sound(0x1D6);
            ohSleep(4);
            func_800A7F74(6, 2, 1,
                          gEntitiesNextPosXArray[omCurrentObj->objId],
                          gEntitiesNextPosYArray[omCurrentObj->objId],
                          gEntitiesNextPosZArray[omCurrentObj->objId]);
            func_800AF27C();
            func_800AA018(0x102D9);
            func_800AA154(0x102D8);
        }
        D_800EA520[omCurrentObj->objId] += 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}
#elif defined(PORT)
extern u32 D_801F4308_ovl10[];
extern u32 D_801F4310_ovl10[];
extern u32 D_801F4318_ovl10[];
extern u32 D_801F4320_ovl10[];
extern f32 D_801F4328_ovl10[];

/* State 8 (triple hop toward Kirby): picks hop direction from the track
 * probe (func_8019A900_ovl7 fills an 8-byte {dir,dist} record - full struct,
 * not a lone s32, see enelib's PORT note), clamps the travel to the merge
 * target track and +/-400, then does three rising hops (D_801F4328 launch
 * velocities); the last hop carries the forward speed and lands with the
 * double shockwave attack. */
void func_801DEB94_ovl10(s32 arg0) {
    struct {
        s32 dir;
        f32 dist;
    } tp;
    s32 fwd;
    s32 tgt;
    f32 range;
    f32 d;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 8;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A18_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AA018(0x102D1);
    func_800AA154(0x102D0);
    D_800E3C90[omCurrentObj->objId] = 45.0f;
    if (func_8019A900_ovl7((s32 *) &tp) != 0) {
        range = tp.dist;
    } else {
        range = func_801DF234_ovl10();
    }
    fwd = (range < 0.0f) ? 0 : 1;
    if (fwd != 0) {
        tgt = D_800E9AA0[D_800E0D50[omCurrentObj->objId]].as_s32;
        d = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                          D_800E5F90[tgt], D_800E6BD0[tgt]);
        if ((d != 9999.0f) && (d < range)) {
            range = d;
        }
        if (range > 400.0f) {
            range = 400.0f;
        }
    } else {
        tgt = D_800E98E0[D_800E0D50[omCurrentObj->objId]];
        d = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                          D_800E5F90[tgt], D_800E6BD0[tgt]);
        if ((d != 9999.0f) && (range < d)) {
            range = d;
        }
        if (range < -400.0f) {
            range = -400.0f;
        }
    }
    func_800AA018(D_801F4310_ovl10[fwd]);
    func_800AA018(D_801F4308_ovl10[fwd]);
    play_sound(0x1D7);
    D_800EA520[omCurrentObj->objId] = 0;
    while (D_800EA520[omCurrentObj->objId] < 3) {
        D_800E8920[omCurrentObj->objId] = 0;
        if (D_800EA520[omCurrentObj->objId] == 2) {
            D_800E64D0[omCurrentObj->objId] = range * 0.033333335f;
        }
        D_800E3210[omCurrentObj->objId] = D_801F4328_ovl10[D_800EA520[omCurrentObj->objId]];
        D_800E3750[omCurrentObj->objId] = -1.0f;
        func_800AA018(D_801F4320_ovl10[fwd]);
        func_800AA018(D_801F4318_ovl10[fwd]);
        while (D_800E8920[omCurrentObj->objId] == 0) {
            ohSleep(1);
        }
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        if (D_800EA520[omCurrentObj->objId] == 2) {
            func_800AA018(0x102D5);
            func_800AA018(0x102D4);
            func_800A7F74(6, 2, 1,
                          gEntitiesNextPosXArray[omCurrentObj->objId],
                          gEntitiesNextPosYArray[omCurrentObj->objId],
                          gEntitiesNextPosZArray[omCurrentObj->objId]);
            ohSleep(2);
            func_801ACCA0_ovl7(6, 0, D_800E6A10[omCurrentObj->objId] * -40.0f, 15.0f);
            func_801ACCA0_ovl7(6, 1, D_800E6A10[omCurrentObj->objId] * 40.0f, 15.0f);
            func_800FB914(2);
            play_sound(0x1D6);
            ohSleep(4);
            func_800A7F74(6, 2, 1,
                          gEntitiesNextPosXArray[omCurrentObj->objId],
                          gEntitiesNextPosYArray[omCurrentObj->objId],
                          gEntitiesNextPosZArray[omCurrentObj->objId]);
            func_800AF27C();
            func_800AA018(0x102D9);
            func_800AA154(0x102D8);
        }
        D_800EA520[omCurrentObj->objId] += 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DEB94_ovl10.s")
#endif

f32 func_801DF234_ovl10(void) {
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f2;
    f32 phi_f2;
    f32 pad[2];

    temp_f0 =  gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    temp_f2 = (gEntitiesNextPosYArray[0] + 20.0f) - (gEntitiesNextPosYArray[omCurrentObj->objId] + 40.0f);
    temp_f14 = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];

    return ABSF(sqrtf(((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) + (temp_f14 * temp_f14)));
}

void func_801DF310_ovl10(GObj *arg0) {
    func_801DD760_ovl10();
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

void func_801DF394_ovl10(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F39F4_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    play_sound(0x1DF);
    play_sound(0x2A);
    func_800BB468(2, 0);
    if (D_800EA360[omCurrentObj->objId] != 0) {
        func_800A22D4((void *) D_800EA360[omCurrentObj->objId]);
        D_800EA360[omCurrentObj->objId] = 0;
    }
    func_800AA018(0x102DF);
    func_800AA154(0x102DE);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
}

void func_801DF4CC_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
}

/* NOT MEASURABLE YET -- same blocker as func_801E0460_ovl10 (see its note): the
 * descent tables and func_800F9828 are declared only inside this file's PORT
 * block, and hoisting them to file scope was measured to move func_801E2C78_ovl10
 * and grow .text 0x7130 -> 0x7170, so it was reverted. Coordinator-sized.
 * Decode that is ready to use once unblocked: the descent loop is INLINE in this
 * caller (the host build factors it into pc_ovl10_descend), and it goes through
 * ABSF(), which expands its argument THREE times -- so each abs of a
 * func_800F9828 call really is three calls, matching the three in the listing. */
#ifdef PORT
void func_80198880_ovl7(void *);
extern void *D_801F344C_ovl10[];
extern f32 D_801F4338_ovl10[];
extern f32 D_801F4364_ovl10[];
extern f32 D_801F4390_ovl10[];

/* Shared phase-2 descent loop (func_801DF50C / func_801E0460 /
 * func_801E206C): steps D_800EA520 0..9 through the D_801F4338 speed-cap and
 * D_801F4390 arrival-radius tables, steering along-track (D_800E6690) and
 * vertically (D_800E3750) toward either the parent's track/height
 * (waypoint=0) or the D_801F4D48/D_801F4D30 waypoint picked by D_800E9C60
 * (waypoint=1) until inside the step's radius.  The ROM computed
 * D_800EA6E0 with two identical func_800F9828 calls; one call + fabs is
 * kept here. */
static void pc_ovl10_descend(f32 hold, s32 waypoint, s32 restEachStep) {
    f32 t;
    f32 v;
    f32 ty;
    s32 track;

    while (D_800EA520[omCurrentObj->objId] < 0xA) {
        t = D_801F4338_ovl10[D_800EA520[omCurrentObj->objId]];
        D_800E6850[omCurrentObj->objId] = (t < 0.0f) ? -t : t;
        t = D_801F4338_ovl10[D_800EA520[omCurrentObj->objId]];
        D_800E3C90[omCurrentObj->objId] = (t < 0.0f) ? -t : t;
        D_800EA8A0[omCurrentObj->objId] = hold;
        D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
        while ((D_800EA520[omCurrentObj->objId] < 0xB) &&
               ((D_801F4390_ovl10[D_800EA520[omCurrentObj->objId]] < D_800EA6E0[omCurrentObj->objId]) ||
                (D_801F4390_ovl10[D_800EA520[omCurrentObj->objId]] < D_800EA8A0[omCurrentObj->objId]))) {
            if (waypoint != 0) {
                track = D_801F4D48_ovl10[D_800E9C60[omCurrentObj->objId]];
                ty = D_801F4D30_ovl10[D_800E9C60[omCurrentObj->objId]];
            } else {
                track = D_800E0D50[omCurrentObj->objId];
                ty = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
            }
            v = func_800F9828(omCurrentObj->objId, track);
            D_800EA6E0[omCurrentObj->objId] = (v < 0.0f) ? -v : v;
            if (v > 0.0f) {
                D_800E6690[omCurrentObj->objId] = -D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            } else {
                D_800E6690[omCurrentObj->objId] = D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            }
            t = gEntitiesNextPosYArray[omCurrentObj->objId] - ty;
            D_800EA8A0[omCurrentObj->objId] = (t < 0.0f) ? -t : t;
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < ty) {
                D_800E3750[omCurrentObj->objId] = -D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            } else {
                D_800E3750[omCurrentObj->objId] = D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            }
            ohSleep(1);
        }
        if (restEachStep != 0) {
            func_800AF27C();
        }
        D_800EA520[omCurrentObj->objId] += 1;
    }
}
#endif

/* State 0xA (phase-2 intro): plays the transformation anim set, unwinds any
 * pending turn, swaps to the phase-2 enemy descriptor D_801F344C (new anim
 * bank + HP refill from its unk0), floats down to the parent's height with
 * the shared descent loop, then rerolls the attack pattern seeds.
 *
 * FACTORY: 370/444, UNCERTAIN -- fresh derivation, time-boxed. The
 * PORT arm calls the shared pc_ovl10_descend(200.0f, 0, 0) helper; the
 * ROM inlines that loop in full at every one of its three call sites
 * (same finding as func_801E0460_ovl10), so this draft hand-expands it
 * for waypoint=0 (track/height come from the parent's own track
 * D_800E0D50, not the D_801F4D48/D_801F4D30 waypoint table) and
 * restEachStep=0 (so the loop's per-step func_800AF27C() call is
 * compiled out entirely, unlike func_801E0460_ovl10 where it always
 * fires). Local declarations only (D_801F3A84_ovl10 plus the descent
 * tables and func_800F9828's prototype), same safe technique as
 * func_801E0460_ovl10 -- no file-scope changes. Compiles, word count
 * matches (444/444), residue moderate-to-high (370/444). Worth a
 * fresh m2c pass before feeding to the permuter. */
#ifdef MIPS_TO_C
void func_801DF50C_ovl10(s32 arg0) {
    extern void *D_801F344C_ovl10[];
    extern f32 D_801F4338_ovl10[];
    extern f32 D_801F4364_ovl10[];
    extern f32 D_801F4390_ovl10[];
    extern s32 D_801F3A84_ovl10;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    s32 track;
    f32 ty;
    f32 v;

    func_801DFE64_ovl10();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0xA;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A84_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    func_800A9760(0x1005D);
    func_800AA018(0x10305);
    func_800AA018(0x10304);
    if (D_800E9020[omCurrentObj->objId] != 0.0f) {
        func_801DFCC0_ovl10();
    } else {
        func_800AF27C();
    }
    func_800AA018(0x10307);
    func_800AA018(0x10306);
    if (D_800E9020[omCurrentObj->objId] != 0.0f) {
        func_801DFCC0_ovl10();
    } else {
        func_800AF27C();
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    func_80198880_ovl7(D_801F344C_ovl10);
    func_801A2ADC_ovl7(ent->unk88->unk10);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A84_ovl10;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    /* shared phase-2 descent loop, inlined (waypoint=0, hold=200.0f,
     * restEachStep=0 -- see pc_ovl10_descend's PORT-side note above,
     * and func_801E0460_ovl10's FACTORY note for the ABSF-triple-call
     * shape this mirrors) */
    while (D_800EA520[omCurrentObj->objId] < 0xA) {
        D_800E6850[omCurrentObj->objId] = ABSF(D_801F4338_ovl10[D_800EA520[omCurrentObj->objId]]);
        D_800E3C90[omCurrentObj->objId] = ABSF(D_801F4338_ovl10[D_800EA520[omCurrentObj->objId]]);
        D_800EA8A0[omCurrentObj->objId] = 200.0f;
        D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
        while ((D_800EA520[omCurrentObj->objId] < 0xB) &&
               ((D_801F4390_ovl10[D_800EA520[omCurrentObj->objId]] < D_800EA6E0[omCurrentObj->objId]) ||
                (D_801F4390_ovl10[D_800EA520[omCurrentObj->objId]] <
                 D_800EA8A0[omCurrentObj->objId]))) {
            track = D_800E0D50[omCurrentObj->objId];
            ty = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
            D_800EA6E0[omCurrentObj->objId] = ABSF(func_800F9828(omCurrentObj->objId, track));
            v = func_800F9828(omCurrentObj->objId, track);
            if (0.0f < v) {
                D_800E6690[omCurrentObj->objId] =
                    -D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            } else {
                D_800E6690[omCurrentObj->objId] =
                    D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            }
            D_800EA8A0[omCurrentObj->objId] =
                ABSF(gEntitiesNextPosYArray[omCurrentObj->objId] - ty);
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < ty) {
                D_800E3750[omCurrentObj->objId] =
                    -D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            } else {
                D_800E3750[omCurrentObj->objId] =
                    D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            }
            ohSleep(1);
        }
        D_800EA520[omCurrentObj->objId] += 1;
    }
    func_800AF27C();
    D_800E7B20[omCurrentObj->objId] = ent->unk88->rangeGate;
    func_800BC1FC((s32) D_800E7B20[omCurrentObj->objId]);
    func_800AF27C();
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = random_soft_s32_range(4);
    D_800E9AA0[omCurrentObj->objId].as_s32 = random_soft_s32_range(4);
    D_800E9C60[omCurrentObj->objId] = random_soft_s32_range(6);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}
#elif defined(PORT)
void func_801DF50C_ovl10(s32 arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_801DFE64_ovl10();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0xA;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A84_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    func_800A9760(0x1005D);
    func_800AA018(0x10305);
    func_800AA018(0x10304);
    if (D_800E9020[omCurrentObj->objId] != 0.0f) {
        func_801DFCC0_ovl10();
    } else {
        func_800AF27C();
    }
    func_800AA018(0x10307);
    func_800AA018(0x10306);
    if (D_800E9020[omCurrentObj->objId] != 0.0f) {
        func_801DFCC0_ovl10();
    } else {
        func_800AF27C();
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    func_80198880_ovl7(D_801F344C_ovl10);
    func_801A2ADC_ovl7(ent->unk88->unk10);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A84_ovl10;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    pc_ovl10_descend(200.0f, 0, 0);
    func_800AF27C();
    D_800E7B20[omCurrentObj->objId] = ent->unk88->rangeGate;
    func_800BC1FC((s32) D_800E7B20[omCurrentObj->objId]);
    func_800AF27C();
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = random_soft_s32_range(4);
    D_800E9AA0[omCurrentObj->objId].as_s32 = random_soft_s32_range(4);
    D_800E9C60[omCurrentObj->objId] = random_soft_s32_range(6);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DF50C_ovl10.s")
#endif

void func_801DFBFC_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId]++ >= 0x79) {
        D_800EA520[omCurrentObj->objId] = 1000;
        D_800EA8A0[omCurrentObj->objId] = 0.0f;
        D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
}

u32 func_800AF230(void);

#ifdef NON_MATCHING
/* 74/105: s1/s2 swapped and `hit` in $a1 where the ROM uses $v0. */
s32 func_801DFCC0_ovl10(void) {
    s32 hit;
    f32 v;
    f32 d;

    v = D_800E9020[omCurrentObj->objId];
    while (v != 0.0f) {
        if (1.0f == D_800E6A10[omCurrentObj->objId]) {
            d = 0.3141592741f;
        } else {
            d = -0.3141592741f;
        }
        D_800E9020[omCurrentObj->objId] += d;
        if (0.0f < v) {
            hit = 0;
            if (D_800E9020[omCurrentObj->objId] <= 0.0f) {
                hit = 1;
            }
        } else {
            hit = 0;
            if (0.0f <= D_800E9020[omCurrentObj->objId]) {
                hit = 1;
            }
        }
        if (hit != 0) {
            D_800E9020[omCurrentObj->objId] = 0.0f;
            v = D_800E9020[omCurrentObj->objId];
        }
        ohSleep(1);
        if (func_800AF230() != 0) {
            return 0;
        }
    }
    func_800AF27C();
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DFCC0_ovl10.s")
#endif

void func_801DFE64_ovl10(void) {
    D_801F4D48_ovl10[0] = D_801F4D48_ovl10[3] = D_800EBDA0[D_800E0D50[omCurrentObj->objId]];
    D_801F4D48_ovl10[1] = D_801F4D48_ovl10[4] = D_800E0D50[omCurrentObj->objId];
    D_801F4D48_ovl10[2] = D_801F4D48_ovl10[5] = D_800EBF60[D_800E0D50[omCurrentObj->objId]];
    D_801F4D30_ovl10[0] = D_801F4D30_ovl10[2] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] - 20.0f;
    D_801F4D30_ovl10[4] = (D_801F4D30_ovl10[1] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]]) - 40.0f;
    D_801F4D30_ovl10[3] = D_801F4D30_ovl10[5] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] - 60.0f;
}

extern s32 D_801F3AA8_ovl10;

#ifdef NON_MATCHING
/* 47/273: one-slot temp rotation, ROM $a0 where this uses $a1. */
void func_801DFF88_ovl10(GObj *arg0) {
    s32 pad0;
    s32 pad1;
    s32 sp74;
    s32 i;
    f32 v;
    f32 d;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0xB;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3AA8_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    func_800AA018(0x10307);
    func_800AA018(0x10306);
    D_800EA520[omCurrentObj->objId] = 0;
    while (D_800EA520[omCurrentObj->objId] < 2) {
        if (func_8019A900_ovl7(&sp74) != 0) {
            v = sp74;
        } else {
            v = func_8019B608_ovl7(0);
        }
        if (v != D_800E6A10[omCurrentObj->objId]) {
            D_800E9020[omCurrentObj->objId] = 0.0f;
            for (i = 0; i != 5; i++) {
                if (1.0f == D_800E6A10[omCurrentObj->objId]) {
                    d = -0.3141592741f;
                } else {
                    d = 0.3141592741f;
                }
                D_800E9020[omCurrentObj->objId] += d;
                ohSleep(1);
            }
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
            D_800E9020[omCurrentObj->objId] = -D_800E9020[omCurrentObj->objId];
            do {
                if (1.0f == D_800E6A10[omCurrentObj->objId]) {
                    d = 0.3141592741f;
                } else {
                    d = -0.3141592741f;
                }
                D_800E9020[omCurrentObj->objId] += d;
                ohSleep(1);
                i--;
            } while (i != 0);
            D_800E9020[omCurrentObj->objId] = 0.0f;
        }
        ohSleep(1);
        func_800AF27C();
        D_800EA520[omCurrentObj->objId] += 1;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
        D_800E98E0[omCurrentObj->objId] = 1;
        break;
    case 1:
        if (random_soft_s32_range(3) == 0) {
            D_800E98E0[omCurrentObj->objId] = 0;
        } else {
            D_800E98E0[omCurrentObj->objId] = 2;
        }
        break;
    case 2:
        if (random_soft_s32_range(3) == 0) {
            D_800E98E0[omCurrentObj->objId] = 0;
        } else {
            D_800E98E0[omCurrentObj->objId] = 3;
        }
        break;
    case 3:
        D_800E98E0[omCurrentObj->objId] = 0;
        break;
    }
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xC;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xD;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DFF88_ovl10.s")
#endif

void func_801E03CC_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0x12;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

/* State 0xC (phase-2 reposition): zeroes all vertical motion, picks the next
 * waypoint slot for D_800E9C60 -- usually a neighbour from the D_801F43BC /
 * D_801F43D4 tables, 1-in-3 a fresh random slot different from the current one --
 * then flies to that D_801F4D48/D_801F4D30 waypoint and returns to state 0xB.
 * The descent loop is INLINE here: the host build factors it into
 * pc_ovl10_descend(), but the ROM emits it in full inside each of the three
 * callers, and it uses ABSF() -- whose argument is expanded THREE times, so each
 * abs of a call really does make three func_800F9828 calls.
 *
 * FACTORY: 475/479, UNCERTAIN -- fresh derivation, time-boxed. The
 * earlier note here called this blocked on declaration scoping,
 * pointing at a PROVEN-UNSAFE fix (hoisting the descent tables and
 * func_800F9828's prototype to real FILE scope moved
 * func_801E2C78_ovl10 and grew .text). That hazard is specific to
 * FILE-scope hoisting; declaring the same four names LOCALLY inside
 * this function's own body -- the standard REFOUND technique, already
 * used successfully for func_800F9828 in func_801DE124_ovl10 earlier
 * in this same file -- compiles cleanly with no such risk, since it
 * changes nothing outside this function. Word count matches
 * (479/479), residue extreme (475/479) -- broad register/frame
 * relabeling from word 0. Worth a fresh m2c pass before feeding to
 * the permuter. Unblocks the same fix for the sibling functions
 * func_801DF50C_ovl10 and func_801E206C_ovl10. */
#ifdef MIPS_TO_C
void func_801E0460_ovl10(s32 arg0) {
    extern u32 D_801F43BC_ovl10[];
    extern u32 D_801F43D4_ovl10[];
    extern f32 D_801F4338_ovl10[];
    extern f32 D_801F4364_ovl10[];
    extern f32 D_801F4390_ovl10[];
    s32 next;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0xC;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3AA8_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800AA018(0x10307);
    func_800AA018(0x10306);
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E33D0[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    if (random_soft_s32_range(3) != 0) {
        if (random_soft_s32_range(2) != 0) {
            next = D_801F43BC_ovl10[D_800E9C60[omCurrentObj->objId]];
        } else {
            next = D_801F43D4_ovl10[D_800E9C60[omCurrentObj->objId]];
        }
    } else {
        next = random_soft_s32_range(6);
        while (next == D_800E9C60[omCurrentObj->objId]) {
            next = random_soft_s32_range(6);
        }
    }
    D_800E9C60[omCurrentObj->objId] = next;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    while (D_800EA520[omCurrentObj->objId] < 0xA) {
        D_800E6850[omCurrentObj->objId] = ABSF(D_801F4338_ovl10[D_800EA520[omCurrentObj->objId]]);
        D_800E3C90[omCurrentObj->objId] = ABSF(D_801F4338_ovl10[D_800EA520[omCurrentObj->objId]]);
        D_800EA8A0[omCurrentObj->objId] = 100.0f;
        D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
        while ((D_800EA520[omCurrentObj->objId] < 0xB) &&
               ((D_801F4390_ovl10[D_800EA520[omCurrentObj->objId]] < D_800EA6E0[omCurrentObj->objId]) ||
                (D_801F4390_ovl10[D_800EA520[omCurrentObj->objId]] <
                 D_800EA8A0[omCurrentObj->objId]))) {
            D_800EA6E0[omCurrentObj->objId] = ABSF(func_800F9828(omCurrentObj->objId, D_801F4D48_ovl10[D_800E9C60[omCurrentObj->objId]]));
            if (0.0f < func_800F9828(omCurrentObj->objId, D_801F4D48_ovl10[D_800E9C60[omCurrentObj->objId]])) {
                D_800E6690[omCurrentObj->objId] =
                    -D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            } else {
                D_800E6690[omCurrentObj->objId] =
                    D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            }
            D_800EA8A0[omCurrentObj->objId] =
                ABSF(gEntitiesNextPosYArray[omCurrentObj->objId] - D_801F4D30_ovl10[D_800E9C60[omCurrentObj->objId]]);
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < D_801F4D30_ovl10[D_800E9C60[omCurrentObj->objId]]) {
                D_800E3750[omCurrentObj->objId] =
                    -D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            } else {
                D_800E3750[omCurrentObj->objId] =
                    D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            }
            ohSleep(1);
        }
        func_800AF27C();
        D_800EA520[omCurrentObj->objId] += 1;
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}
#elif defined(PORT)
extern u32 D_801F43BC_ovl10[];
extern u32 D_801F43D4_ovl10[];

/* State 0xC (phase-2 reposition): zeroes all vertical motion, picks the next
 * waypoint slot for D_800E9C60 - usually a neighbour from the D_801F43BC /
 * D_801F43D4 tables, 1-in-3 a fresh random slot different from the current
 * one - then flies to that D_801F4D48/D_801F4D30 waypoint with the shared
 * descent loop and returns to state 0xB. */
void func_801E0460_ovl10(s32 arg0) {
    s32 next;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0xC;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3AA8_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800AA018(0x10307);
    func_800AA018(0x10306);
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E33D0[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    if (random_soft_s32_range(3) != 0) {
        if (random_soft_s32_range(2) != 0) {
            next = D_801F43BC_ovl10[D_800E9C60[omCurrentObj->objId]];
        } else {
            next = D_801F43D4_ovl10[D_800E9C60[omCurrentObj->objId]];
        }
    } else {
        next = random_soft_s32_range(6);
        while (next == D_800E9C60[omCurrentObj->objId]) {
            next = random_soft_s32_range(6);
        }
    }
    D_800E9C60[omCurrentObj->objId] = next;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    pc_ovl10_descend(100.0f, 1, 1);
    D_800E9020[omCurrentObj->objId] = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E0460_ovl10.s")
#endif

s32 func_8019A900_ovl7(s32 *);
f32 func_8019B608_ovl7(s32);

void func_801E0B94_ovl10(GObj *arg0) {
    s32 pad0;
    s32 pad1;
    s32 sp3C;
    f32 v;
    f32 t;

    if (D_800EA1A0[omCurrentObj->objId] == 0) {
        D_800E9020[omCurrentObj->objId] = 0.0f;
        if (D_800E9E20[omCurrentObj->objId] < 0x6E) {
            if (func_8019A900_ovl7(&sp3C) != 0) {
                v = sp3C;
            } else {
                v = func_8019B608_ovl7(0);
            }
            if (v != D_800E6A10[omCurrentObj->objId]) {
                D_800EA1A0[omCurrentObj->objId] = 0xA;
            }
        }
    }
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        if (D_800EA1A0[omCurrentObj->objId] == 5) {
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
            D_800E9020[omCurrentObj->objId] = -D_800E9020[omCurrentObj->objId];
        }
        if (D_800EA1A0[omCurrentObj->objId] >= 6) {
            t = D_800E6A10[omCurrentObj->objId] * -0.3141592741f;
        } else {
            t = D_800E6A10[omCurrentObj->objId] * 0.3141592741f;
        }
        D_800E9020[omCurrentObj->objId] += t;
        D_800EA1A0[omCurrentObj->objId] -= 1;
        if (D_800EA1A0[omCurrentObj->objId] <= 0) {
            D_800E9020[omCurrentObj->objId] = 0.0f;
            D_800EA1A0[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId];
        }
    }
    if (D_800E9E20[omCurrentObj->objId]++ >= 0x79) {
        D_800EA520[omCurrentObj->objId] = 1000;
        D_800EA8A0[omCurrentObj->objId] = 0.0f;
        D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0x12;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

void func_801E0E78_ovl10(GObj *arg0) {
    switch (D_800E9AA0[omCurrentObj->objId].as_s32) {
    case 0:
        D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
        break;
    case 1:
        if (random_soft_s32_range(8) == 0) {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        } else {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
        }
        break;
    case 2:
        if (random_soft_s32_range(8) == 0) {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        } else {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 3;
        }
        break;
    case 3:
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        break;
    }
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0x10;
    }
}

extern s32 D_801F3AA8_ovl10;
extern struct EnemyEventTable D_801F40DC_ovl10;
f32 func_801E13A0_ovl10(GObj *);
f32 sinf(f32);
f32 cosf(f32);

void func_801E100C_ovl10(GObj *arg0) {
    f32 a;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0xD;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3AA8_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F40DC_ovl10;
    func_800B33F4();
    D_800EA520[omCurrentObj->objId] = 0;
    func_800AA018(0x102EB);
    func_800AA154(0x102EA);
    func_800AA018(0x102ED);
    func_800AA154(0x102EC);
    if ((gEntitiesNextPosYArray[omCurrentObj->objId] + 40.0f) < (gEntitiesNextPosYArray[0] + 20.0f)) {
        D_800E9E20[omCurrentObj->objId] = 1;
    } else {
        D_800E9E20[omCurrentObj->objId] = 0;
    }
    a = func_801E13A0_ovl10(arg0);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (sinf((a < 0.0f) ? -a : a) * 4.0f);
    D_800E3210[omCurrentObj->objId] = cosf((a < 0.0f) ? -a : a) * 4.0f;
    func_800AA018(0x102EF);
    func_800AA018(0x102EE);
    D_800EA520[omCurrentObj->objId] = 0x64;
    while (D_800EA520[omCurrentObj->objId] < 0x78) {
        ohSleep(5);
        play_sound(0x1DC);
        func_800AF27C();
        if (D_800EA520[omCurrentObj->objId] >= 0x68) {
            D_800E3210[omCurrentObj->objId] = 0;
            D_800E3750[omCurrentObj->objId] = 0;
            D_800E3C90[omCurrentObj->objId] = 0;
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
        }
        D_800EA520[omCurrentObj->objId] += 1;
    }
    D_800EA520[omCurrentObj->objId] = 1000;
    func_800B33F4();
    func_800AA018(0x102F7);
    func_800AA154(0x102F6);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
f32 atan2f(f32, f32);                               /* extern */
f32 func_8019DA50_ovl7();                           /* extern */

f32 func_801E13A0_ovl10(GObj *arg0) {
    f32 temp_f0;
    f32 var_f12;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    u32 temp_v0;

    if (func_8019DA50_ovl7() < 0.0f) {
        var_f2 = -func_8019DA50_ovl7();
    } else {
        var_f2 = func_8019DA50_ovl7();
    }
    temp_v0 = omCurrentObj->objId;
    temp_f0 = atan2f(D_800E6A10[temp_v0] * var_f2, (*gEntitiesNextPosYArray + 20.0f) - (gEntitiesNextPosYArray[temp_v0] + 40.0f));
    var_f12 = temp_f0;
    if (temp_f0 < 0.0f) {
        var_f2_2 = -temp_f0;
    } else {
        var_f2_2 = temp_f0;
    }
    if ((f64) var_f2_2 > 2.1991149187088013) {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            var_f12 = (f32) 2.1991149187088013;
        } else {
            var_f12 = (f32) -2.1991149187088013;
        }
    } else {
        if (temp_f0 < 0.0f) {
            var_f2_3 = -temp_f0;
        } else {
            var_f2_3 = temp_f0;
        }
        if ((f64) var_f2_3 < 0.942477822303772) {
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                var_f12 = (f32) 0.942477822303772;
            } else {
                var_f12 = (f32) -0.942477822303772;
            }
        }
    }
    return var_f12;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E13A0_ovl10.s")
#endif

extern s32 D_801F3AA8_ovl10;
extern s32 D_801F3E98_ovl10;

void func_801E1550_ovl10(GObj *arg0) {
    s32 pad;
    s32 sp50;
    f32 diff;
    f32 v;
    struct Ovl10AnimInfo0 sp2C;
    s32 ok;

    D_800E8920[omCurrentObj->objId] = 0;
    if ((D_800EA520[omCurrentObj->objId] >= 0x65) && (D_800EA520[omCurrentObj->objId] < 0xC8)) {
        if (D_800EA520[omCurrentObj->objId] < 0x68) {
            diff = (gEntitiesNextPosYArray[0] + 20.0f) -
                   (gEntitiesNextPosYArray[omCurrentObj->objId] + 40.0f);
            if (D_800E9E20[omCurrentObj->objId] != 0) {
                ok = diff < 0.0f;
            } else {
                ok = 0.0f < diff;
            }
            if (ok) {
                D_800E3210[omCurrentObj->objId] = 0.0f;
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3C90[omCurrentObj->objId] = 0.0f;
                D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
            }
        } else {
            if (func_8019A900_ovl7(&sp50) != 0) {
                v = sp50;
            } else {
                v = func_8019B608_ovl7(0);
            }
            if (v != D_800E6A10[omCurrentObj->objId]) {
                D_800EA520[omCurrentObj->objId] = 0x96;
            }
        }
    }
    func_801A0D74_ovl7(arg0);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3AA8_ovl10;
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 0) {
        if ((D_800EA520[omCurrentObj->objId] >= 0x64) && (D_800EA520[omCurrentObj->objId] < 0xC8)) {
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3E98_ovl10;
            if (func_801E2BD8_ovl10(D_800DFBD0[omCurrentObj->objId][3], &sp2C) != 0) {
                func_80169430_ovl3(sp2C.unkC, sp2C.unk0, sp2C.unk1, 2);
                gEntityFuncListIDArray[omCurrentObj->objId] = 0xF;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
                D_800EC120[omCurrentObj->objId] = 0;
                D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
            }
        }
    } else if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0x12;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

void func_801E1880_ovl10(GObj *arg0) {
    D_800EA520[omCurrentObj->objId] = 0x3E8;
}

extern s32 D_801F3A84_ovl10;

void func_801E18A8_ovl10(GObj *arg0) {
    f32 v;
    f32 t;
    f32 d;
    s32 i;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0xE;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3A84_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    if (D_800EA360[omCurrentObj->objId] != 0) {
        func_800A1F30((void *) D_800EA360[omCurrentObj->objId]);
        D_800EA360[omCurrentObj->objId] = 0;
    }
    while (D_800E98E0[D_800EC120[omCurrentObj->objId]] == 0) {
        ohSleep(1);
    }
    func_800AA018(0x102F1);
    func_800AA154(0x102F0);
    v = func_800F9828(omCurrentObj->objId, D_800E0D50[omCurrentObj->objId]);
    if (v == 9999.0f) {
        t = func_8019B608_ovl7(D_800E0D50[omCurrentObj->objId]);
    } else {
        t = (0.0f < v) ? 1.0f : -1.0f;
    }
    if (t != D_800E6A10[omCurrentObj->objId]) {
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        D_800E9020[omCurrentObj->objId] = 0.0f;
        for (i = 0; i != 5; i++) {
            if (1.0f == D_800E6A10[omCurrentObj->objId]) {
                d = -0.3141592741f;
            } else {
                d = 0.3141592741f;
            }
            D_800E9020[omCurrentObj->objId] += d;
            ohSleep(1);
        }
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        D_800E9020[omCurrentObj->objId] = -D_800E9020[omCurrentObj->objId];
        do {
            if (1.0f == D_800E6A10[omCurrentObj->objId]) {
                d = 0.3141592741f;
            } else {
                d = -0.3141592741f;
            }
            D_800E9020[omCurrentObj->objId] += d;
            ohSleep(1);
            i--;
        } while (i != 0);
        D_800E9020[omCurrentObj->objId] = 0.0f;
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
    }
    func_800AA018(0x102F3);
    func_800AA018(0x102F2);
    ohSleep(5);
    func_800A7F74(6, 2, (1.0f == D_800E6A10[omCurrentObj->objId]) ? 0xC : 0xE,
                  gEntitiesNextPosXArray[omCurrentObj->objId],
                  gEntitiesNextPosYArray[omCurrentObj->objId],
                  gEntitiesNextPosZArray[omCurrentObj->objId]);
    play_sound(0x1D8);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    func_800AF27C();
    func_800AA018(0x102F5);
    func_800AA154(0x102F4);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}

void func_801E1D3C_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0x12;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

extern s32 D_801F3AA8_ovl10;

void func_801E1DD0_ovl10(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0xF;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3AA8_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    play_sound(0x1DE);
    func_800AA018(0x102F9);
    func_800AA154(0x102F8);
    func_800AA018(0x102FB);
    func_800AA154(0x102FA);
    D_800EA520[omCurrentObj->objId] = 0;
    while (D_800EA520[omCurrentObj->objId] < 3) {
        func_800AA018(0x102FD);
        func_800AA018(0x102FC);
        ohSleep(5);
        func_801ACCA0_ovl7(7, 2, 30.0f, 35.0f);
        play_sound(0x1E0);
        func_800AF27C();
        ohSleep(0xF);
        D_800EA520[omCurrentObj->objId] += 1;
    }
    func_800AA018(0x102FF);
    func_800AA154(0x102FE);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}

void func_801E1FD8_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0x12;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

/* State 0x10 (phase-2 defeat): boss-clear fanfare and HP-bar refill from the
 * descriptor's max-HP word (unk10 holds a pointer to the f32), unwinds any
 * pending turn, sinks to the parent's height with the shared descent loop,
 * drops to the ground, and moves on to state 0x13.
 *
 * FACTORY: 370/430, UNCERTAIN -- fresh derivation, time-boxed. Same
 * fix and shape as func_801DF50C_ovl10: the PORT arm's
 * pc_ovl10_descend(100.0f, 0, 0) is hand-inlined for waypoint=0/
 * restEachStep=0, and its two file-scope-only prototypes
 * (D_801F3ACC_ovl10, func_800FD570) plus the descent tables and
 * func_800F9828 are declared LOCALLY inside this function body rather
 * than hoisted to file scope (the hoist was independently measured
 * unsafe for this TU -- see func_801E0460_ovl10's note). Compiles,
 * word count matches (430/430), residue moderate-to-high (370/430).
 * Worth a fresh m2c pass before feeding to the permuter. */
#ifdef MIPS_TO_C
void func_801E206C_ovl10(s32 arg0) {
    extern s32 D_801F3ACC_ovl10;
    extern f32 D_801F4338_ovl10[];
    extern f32 D_801F4364_ovl10[];
    extern f32 D_801F4390_ovl10[];
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    s32 track;
    f32 ty;
    f32 v;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0x10;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3ACC_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    play_sound(0x2A);
    func_800BB468(3, 0);
    func_800FD570(0, 1, 0.0f, *(f32 *) (uintptr_t) ent->unk88->unk10, 0.0f);
    func_800AA018(0x10306);
    func_800AA018(0x10307);
    if (D_800E9020[omCurrentObj->objId] != 0.0f) {
        func_801DFCC0_ovl10();
    } else {
        func_800AF27C();
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    /* shared phase-2 descent loop, inlined (waypoint=0, hold=100.0f,
     * restEachStep=0 -- see func_801DF50C_ovl10's FACTORY note) */
    while (D_800EA520[omCurrentObj->objId] < 0xA) {
        D_800E6850[omCurrentObj->objId] = ABSF(D_801F4338_ovl10[D_800EA520[omCurrentObj->objId]]);
        D_800E3C90[omCurrentObj->objId] = ABSF(D_801F4338_ovl10[D_800EA520[omCurrentObj->objId]]);
        D_800EA8A0[omCurrentObj->objId] = 100.0f;
        D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
        while ((D_800EA520[omCurrentObj->objId] < 0xB) &&
               ((D_801F4390_ovl10[D_800EA520[omCurrentObj->objId]] < D_800EA6E0[omCurrentObj->objId]) ||
                (D_801F4390_ovl10[D_800EA520[omCurrentObj->objId]] <
                 D_800EA8A0[omCurrentObj->objId]))) {
            track = D_800E0D50[omCurrentObj->objId];
            ty = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
            D_800EA6E0[omCurrentObj->objId] = ABSF(func_800F9828(omCurrentObj->objId, track));
            v = func_800F9828(omCurrentObj->objId, track);
            if (0.0f < v) {
                D_800E6690[omCurrentObj->objId] =
                    -D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            } else {
                D_800E6690[omCurrentObj->objId] =
                    D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            }
            D_800EA8A0[omCurrentObj->objId] =
                ABSF(gEntitiesNextPosYArray[omCurrentObj->objId] - ty);
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < ty) {
                D_800E3750[omCurrentObj->objId] =
                    -D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            } else {
                D_800E3750[omCurrentObj->objId] =
                    D_801F4364_ovl10[D_800EA520[omCurrentObj->objId]];
            }
            ohSleep(1);
        }
        D_800EA520[omCurrentObj->objId] += 1;
    }
    func_800AF27C();
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 30.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = -1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = -1;
    D_800E9C60[omCurrentObj->objId] = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x13;
}
#elif defined(PORT)
extern s32 D_801F3ACC_ovl10;

/* State 0x10 (phase-2 defeat): boss-clear fanfare and HP-bar refill from the
 * descriptor's max-HP word (unk10 holds a pointer to the f32), unwinds any
 * pending turn, sinks to the parent's height with the shared descent loop,
 * drops to the ground, and moves on to state 0x13. */
void func_801E206C_ovl10(s32 arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0x10;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3ACC_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    play_sound(0x2A);
    func_800BB468(3, 0);
    func_800FD570(0, 1, 0.0f, *(f32 *) (uintptr_t) ent->unk88->unk10, 0.0f);
    func_800AA018(0x10306);
    func_800AA018(0x10307);
    if (D_800E9020[omCurrentObj->objId] != 0.0f) {
        func_801DFCC0_ovl10();
    } else {
        func_800AF27C();
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    pc_ovl10_descend(100.0f, 0, 0);
    func_800AF27C();
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 30.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = -1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = -1;
    D_800E9C60[omCurrentObj->objId] = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x13;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E206C_ovl10.s")
#endif

void func_801E2724_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId]++ >= 0x79) {
        D_800EA520[omCurrentObj->objId] = 1000;
        D_800EA8A0[omCurrentObj->objId] = 0.0f;
        D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
}

extern s32 D_801F3ACC_ovl10;
void func_801BC794_ovl7(s32);

void func_801E27E8_ovl10(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x11;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3ACC_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    func_800AA018(0x10302);
    func_800AA154(0x10303);
    ohSleep(0x1E);
    func_801BC794_ovl7(8);
    curObjSleepForever();
}

void func_801E28A0_ovl10(void) {
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
}

#ifdef MIPS_TO_C
/* FACTORY: 195/195 and 5 instructions short. Small gap; find the repeated load IDO is
 * merging, then the rest is register naming. */

/* Per-tick hitbox registration + hit poll for the boss.  Registers the
 * current frame's collision entry (optionally stamping arg0 as the attack
 * id into the entry's shape header), then polls the three collision queues
 * into a 0x1C-byte result record; result byte +2 becomes D_800E83E0 (hit
 * kind) and byte +3 the entity's unk43.  On a kind-1 hit of the phase-2
 * body (D_800E7880 == 7) the HP bar is refreshed; on kind 2 a helper track
 * is spawned (func_801DBF70) and its role picked by the current state.
 * The registered CollSlot is a HOST slot: its last Shape28* sits at byte 48
 * (N64 0x24), and the anim id word at +8 inside the shape is native. */
s32 func_801E28C8_ovl10(s32 arg0) {
    struct Ovl10AnimObj2;
    extern f32 D_800D6E5C;

    struct EnemyRecord *ent;
    struct Ovl10AnimObj2 *slot;
    struct {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 unk4;
        u8 pad5[3];
        s32 unk8;
        s32 unkC;
        f32 unk10;
        f32 unk14;
        f32 unk18;
    } probe;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent->unk88 == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    if (slot != NULL) {
        if (arg0 != 0) {
            *(s32 *) (*(u8 **) ((u8 *) slot + 48) + 8) = arg0;
        }
    }
    if (func_80110150(&probe) != 0) {
        D_800E83E0[omCurrentObj->objId] = probe.unk2;
        ent->unk43 = probe.unk3;
    } else if (func_80110B00(&probe) != 0) {
        D_800E83E0[omCurrentObj->objId] = probe.unk2;
        ent->unk43 = probe.unk3;
    } else if (func_80110FD4(&probe) != 0) {
        if (probe.unk2 == 0xA) {
            D_800E83E0[omCurrentObj->objId] = 0;
            ent->unk43 = 0;
        } else {
            D_800E83E0[omCurrentObj->objId] = probe.unk2;
            ent->unk43 = probe.unk3;
        }
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
    if (D_800E7880[omCurrentObj->objId] == 7) {
        if ((D_800E83E0[omCurrentObj->objId] == 1) && (D_800D6E5C != 0.0f)) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
        if (D_800E83E0[omCurrentObj->objId] == 2) {
            D_800EBBE0[omCurrentObj->objId] = func_801DBF70_ovl10(6, 0.0f);
            if (D_800EBBE0[omCurrentObj->objId] != -1) {
                if (gEntityFuncListIDArray[omCurrentObj->objId] < 0xA) {
                    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 0;
                } else {
                    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 1;
                }
                if (D_800D6E5C != 0.0f) {
                    func_800BC11C(D_800E7B20[omCurrentObj->objId]);
                }
            }
        }
    }
    return D_800E83E0[omCurrentObj->objId];
}
#elif defined(PORT)
struct Ovl10AnimObj2;
struct Ovl10AnimObj2 *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl10AnimObj2 *);
extern f32 D_800D6E5C;

/* Per-tick hitbox registration + hit poll for the boss.  Registers the
 * current frame's collision entry (optionally stamping arg0 as the attack
 * id into the entry's shape header), then polls the three collision queues
 * into a 0x1C-byte result record; result byte +2 becomes D_800E83E0 (hit
 * kind) and byte +3 the entity's unk43.  On a kind-1 hit of the phase-2
 * body (D_800E7880 == 7) the HP bar is refreshed; on kind 2 a helper track
 * is spawned (func_801DBF70) and its role picked by the current state.
 * The registered CollSlot is a HOST slot: its last Shape28* sits at byte 48
 * (N64 0x24), and the anim id word at +8 inside the shape is native. */
s32 func_801E28C8_ovl10(s32 arg0) {
    struct EnemyRecord *ent;
    struct Ovl10AnimObj2 *slot;
    struct {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 unk4;
        u8 pad5[3];
        s32 unk8;
        s32 unkC;
        f32 unk10;
        f32 unk14;
        f32 unk18;
    } probe;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent->unk88 == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    slot = func_80111C88(ent->unk8C, omCurrentObj->objId);
    if (slot != NULL) {
        if (arg0 != 0) {
            *(s32 *) (*(u8 **) ((u8 *) slot + 48) + 8) = arg0;
        }
        func_80111ECC(slot);
    }
    if (func_80110150(&probe) != 0) {
        D_800E83E0[omCurrentObj->objId] = probe.unk2;
        ent->unk43 = probe.unk3;
    } else if (func_80110B00(&probe) != 0) {
        D_800E83E0[omCurrentObj->objId] = probe.unk2;
        ent->unk43 = probe.unk3;
    } else if (func_80110FD4(&probe) != 0) {
        if (probe.unk2 == 0xA) {
            D_800E83E0[omCurrentObj->objId] = 0;
            ent->unk43 = 0;
        } else {
            D_800E83E0[omCurrentObj->objId] = probe.unk2;
            ent->unk43 = probe.unk3;
        }
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
    if (D_800E7880[omCurrentObj->objId] == 7) {
        if ((D_800E83E0[omCurrentObj->objId] == 1) && (D_800D6E5C != 0.0f)) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
        if (D_800E83E0[omCurrentObj->objId] == 2) {
            D_800EBBE0[omCurrentObj->objId] = func_801DBF70_ovl10(6, 0.0f);
            if (D_800EBBE0[omCurrentObj->objId] != -1) {
                if (gEntityFuncListIDArray[omCurrentObj->objId] < 0xA) {
                    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 0;
                } else {
                    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 1;
                }
                if (D_800D6E5C != 0.0f) {
                    func_800BC11C(D_800E7B20[omCurrentObj->objId]);
                }
            }
        }
    }
    return D_800E83E0[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E28C8_ovl10.s")
#endif

/* unk8/unk30 are the joint word of Shape28 array elements 0 and 1: either a
   small sentinel or a DObj node address TRUNCATED to 32 bits. They must stay
   4 bytes -- this is a view over ovl2_9.c's Shape28 arena, 40 bytes per entry
   and offset-stable on LP64 (see the note at the top of src/ovl2/ovl2_8.c) --
   and func_8010E740 zero-extends them back, lossless because the -no-pie
   image keeps everything below 4 GiB. */
struct Ovl10AnimCmd2 {
    u8 filler0[8];
    s32 unk8;
    u8 fillerC[0x24];
    s32 unk30;
};

struct Ovl10AnimObj2 {
    u8 filler0[0x24];
    struct Ovl10AnimCmd2 *unk24;
};

struct Ovl10AnimObj2 *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl10AnimObj2 *);

s32 func_801E2BD8_ovl10(struct DObj *arg0, void *arg1) {
    struct EnemyKindDesc *sp0;
    struct EnemyRecord *temp;
    struct Ovl10AnimObj2 *temp_v0;

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

/* BYTE-EXACT (43/43, objdump-verified against the listing) but PADDING-TRAPPED:
   the listing carries a 7-nop tail after its own .size and this is the last
   function of the `c` subsegment, so converting it shortens ovl10_1's .text by
   16 bytes. Needs a `pad` subsegment in kirby64.yaml (`. += 0x10;`); un-guard
   in the same change. */
s32 func_801E2C78_ovl10(struct DObj *arg0, void *arg1) {
    struct EnemyKindDesc *sp0;
    struct EnemyRecord *temp;
    struct Ovl10AnimObj2 *temp_v0;

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
            temp_v0->unk24->unk30 = (s32) (uintptr_t) arg0;
        }
        func_80111ECC(temp_v0);
    }
    return func_80110150(arg1);
}

