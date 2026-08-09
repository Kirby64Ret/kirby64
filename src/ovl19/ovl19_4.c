#include "common.h"
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_3.h"
#include "ovl1/ovl1_8.h"
#include "main/object_manager.h"
#include "main/object_helpers.h"
#include "unk_structs/D_800E1B50.h"

void func_8022E798_ovl19(GObj *);
void func_8022EB54_ovl19(GObj *);
void func_8022EE78_ovl19(GObj *);

extern u32 D_800D6E64;

void func_800AECC0(f32);
void func_800AED20(f32);
void func_8019F000_ovl7(void *, void *, s32, f32);
s32 func_801A0880_ovl7(void);
s32 func_800A8100(s32, s32, s32, void *);

void func_8022E630_ovl19(GObj *arg0) {
    Vector sp1C;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DEF90[omCurrentObj->objId] = &func_800B4924;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    ohSleep(0x60);
    sp1C.z = 0.0f;
    sp1C.y = 50.0f;
    sp1C.x = 0.0f;
    play_sound(0x1F6);
    func_8019F000_ovl7(D_800E9AA0[D_800E0D50[omCurrentObj->objId]], &sp1C, 0x28, -0.85f);
    D_800E6D90[omCurrentObj->objId] = 666.66f;
    D_800E17D0[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = &func_8022E798_ovl19;
    func_800AA018(0x105EF);
    curObjSleepForever();
}

/* Representative of the ovl19_4 clone triple (func_8022E798 / func_8022EB54 /
 * func_8022EE78 -- 111 instructions each, same shape, different sound id and
 * array set).  The draft below is structurally right: the if/else with the
 * D_800D6E64 block LAST is what the ROM's `bnez $v0` wants, and the read-back
 * chain (store 0.0f to D_800E3910 then assign it into the five siblings)
 * reproduces the single `lwc1 $f0` the ROM reuses for all of them.  It still
 * compiles ~7 instructions long and every $v0/$v1 pair is swapped against the
 * ROM (ROM keeps omCurrentObj in $v0 and objId*4 in $v1).  Tried: a
 * `struct GObj *obj = omCurrentObj;` local (coalesced away, no change), a
 * double `0.0` literal to fork the zero constant (adds an instruction, 96/119),
 * and void/s32 prototypes for play_sound and func_801A0880_ovl7.  Next thing to
 * try is the byte-scaled `objId * 4` + u8* bias indexing that closed
 * func_80225724_ovl18 and func_801DF3DC_ovl11 -- this function has the same
 * "ROM overwrites the objId register with the shift" signature. */
#ifdef MIPS_TO_C
void func_8022E798_ovl19(GObj *arg0) {
    s32 sp1C;
    f32 *sp20;

    sp1C = D_800E0D50[omCurrentObj->objId];
    sp20 = (f32 *) D_800E9AA0[sp1C];
    if (func_801A0880_ovl7() == 0) {
        if (D_800E3210[omCurrentObj->objId] != 0.0f) {
            if (gEntitiesNextPosYArray[omCurrentObj->objId] <= sp20[3]) {
                gEntitiesNextPosYArray[omCurrentObj->objId] = sp20[3];
                D_800E3910[omCurrentObj->objId] = 0.0f;
                D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
                D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
                D_800E33D0[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
                D_800E3210[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
                D_800E3050[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
                D_800E3E50[omCurrentObj->objId] = 65535.0f;
                D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
                D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
                play_sound(0x260);
            }
        }
    } else {
        D_800D6E64 = 1;
        D_800EC120[sp1C] = -1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_4/func_8022E798_ovl19.s")
#endif

void func_8022E954_ovl19(GObj *arg0) {
    Vector sp24;
    struct UnkStruct800E1B50 *sp20;

    sp20 = D_800E1B50[omCurrentObj->objId];
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DEF90[omCurrentObj->objId] = &func_800B4924;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    func_800AA018(0x105F0);
    func_800AA018(0x105F1);
    ohSleep(1);
    func_800AECC0(0);
    func_800AED20(0);
    ohSleep(0x5F);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    sp24.z = 0.0f;
    sp24.y = 30.0f;
    sp24.x = 0.0f;
    play_sound(0x1F6);
    func_8019F000_ovl7(D_800E9AA0[D_800E0D50[omCurrentObj->objId]], &sp24, 0x14, -0.45f);
    D_800E6D90[omCurrentObj->objId] = 666.66f;
    D_800E17D0[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = &func_8022EB54_ovl19;
    func_800AA018(0x105F0);
    func_800AA018(0x105F1);
    sp20->unk34 = func_800A8100(0, 2, 0x34, arg0->data.ptr);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_4/func_8022EB54_ovl19.s")

void func_8022ED10_ovl19(GObj *arg0) {
    Vector sp1C;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DEF90[omCurrentObj->objId] = &func_800B4924;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    ohSleep(0x60);
    sp1C.z = 0.0f;
    sp1C.y = 50.0f;
    sp1C.x = 0.0f;
    play_sound(0x1F6);
    func_8019F000_ovl7(D_800E9AA0[D_800E0D50[omCurrentObj->objId]], &sp1C, 0x28, -0.85f);
    D_800E6D90[omCurrentObj->objId] = 666.66f;
    D_800E17D0[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = &func_8022EE78_ovl19;
    func_800AA018(0x10601);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_4/func_8022EE78_ovl19.s")
