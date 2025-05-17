#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "src/ovl2/ovl2_6.h"
#include "ovl19_5.h"
#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"

extern void func_800AECC0(f32 arg0);
extern void func_800AED20(f32 arg0);
extern void ohSleep(u32 arg0);
extern void play_sound(u32 arg0);
extern void func_8019F000_ovl19(struct EntityThing800E9AA0 *arg0, f32 *arg1, u32 arg2, f32 arg3);

extern f32 D_800D6B10;
extern f32 D_800E6A10[];
extern u32 *D_800DEF90[];
extern f32 D_800E6D90[];
extern u32 D_800B4924;
extern f32 D_8022FA90;
extern f32 D_800E17D0[];
void func_8022E798_ovl19(s32 arg0);

extern struct EntityThing800E9AA0 *D_800E9AA0[];
extern u32 D_800E0D50[];

extern void (*D_800DF150[])(s32);

extern f32 gEntitiesAngleYArray[];

void func_8022E630_ovl19(s32 arg0) {
    Vector sp1C;
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800DEF90[omCurrentObj->objId] = &D_800B4924;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    ohSleep(0x60);
    sp1C.z = 0.0f;
    sp1C.y = 50.0f;
    sp1C.x = 0.0f;
    play_sound(502);
    func_8019F000_ovl19(D_800E9AA0[D_800E0D50[omCurrentObj->objId]], &sp1C, 0x28, -0.85f);
    D_800E6D90[omCurrentObj->objId] = D_8022FA90;
    D_800E17D0[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = &func_8022E798_ovl19;
    func_800AA018(0x105EF);
    func_800AFA14();
}

extern f32 D_800E3750[];
extern f32 D_800E3590[];
extern f32 D_800E33D0[];
extern f32 D_800E3210[];
extern f32 D_800E3050[];

extern f32 D_800E3E50[];

extern f32 D_800E3C90[];
extern f32 D_800E3AD0[];
extern u32 D_800EC120[];
extern u32 D_800E0D50[];
extern f32 gEntitiesNextPosYArray[];
extern f32 D_800E3910[];
extern u32 D_800D6E64;
extern f32 D_8022FA94;
extern u32 func_801A0880_ovl19(void);

// permute this with --stack-diffs
void func_8022E798_ovl19(s32 arg0);
GLOBAL_ASM("asm/non_matchings/ovl19_5/func_8022E798_ovl19.s")

extern f32 D_8022FA98;
extern void *func_8022EB54_ovl19;

void func_8022E954_ovl19(struct CollisionState *arg0) {
    Vector sp24;
    struct UnkStruct800E1B50 *sp20;

    sp20 = D_800E1B50[omCurrentObj->objId];
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800DEF90[omCurrentObj->objId] = &D_800B4924;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    func_800AA018(0x105F0);
    func_800AA018(0x105F1);
    ohSleep(1);
    func_800AECC0(0);
    func_800AED20(0);
    ohSleep(0x5F);
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    sp24.z = 0.0f;
    sp24.y = 30.0f;
    sp24.x = 0.0f;
    play_sound(502);
    func_8019F000_ovl19(D_800E9AA0[D_800E0D50[omCurrentObj->objId]], &sp24, 0x14, -0.45f);
    D_800E6D90[omCurrentObj->objId] = (f32) D_8022FA98;
    D_800E17D0[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = (f32) D_800E17D0[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = &func_8022EB54_ovl19;
    func_800AA018(0x105F0);
    func_800AA018(0x105F1);
    sp20->unk34 = func_800A8100(0, 2, 0x34, arg0->unk3C);
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl19_5/func_8022EB54_ovl19.s")

extern f32 D_8022FAA0;
void func_8022EE78_ovl19(s32 arg0);


void func_8022ED10_ovl19(s32 arg0) {
    Vector sp1C;
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800DEF90[omCurrentObj->objId] = &D_800B4924;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    ohSleep(0x60);
    sp1C.z = 0.0f;
    sp1C.y = 50.0f;
    sp1C.x = 0.0f;
    play_sound(502);
    func_8019F000_ovl19(D_800E9AA0[D_800E0D50[omCurrentObj->objId]], &sp1C, 0x28, -0.85f);
    D_800E6D90[omCurrentObj->objId] = D_8022FAA0;
    D_800E17D0[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = &func_8022EE78_ovl19;
    func_800AA018(0x10601);
    func_800AFA14();
}


extern f32 D_8022FAA4;
// This is supposed to be a straightforward function, why is it not matching? :'(
GLOBAL_ASM("asm/non_matchings/ovl19_5/func_8022EE78_ovl19.s")
