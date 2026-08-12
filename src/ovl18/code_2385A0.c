#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "ovl18_1.h"
#include "ovl18_3.h"

struct Unk2385A0 {
    u8 filler0[0x10];
    struct Unk2385A0 *unk10;
    u8 filler14[0xC];
    f32 unk20;
};

struct Unk2385A0_84 {
    u8 filler0[0x10];
    f32 unk10;
    f32 unk14;
};

struct Unk2385A0_8C_8 {
    u8 filler0[0x4];
    s32 unk4;
};

struct Unk2385A0_8C {
    u8 filler0[0x8];
    struct Unk2385A0_8C_8 *unk8;
};

struct Unk2385A0_24_24 {
    u8 filler0[0x8];
    struct DObj *unk8;
    u8 filler0C[0x24];
    struct DObj *unk30;
};

struct Unk2385A0_24 {
    u8 filler0[0x24];
    struct Unk2385A0_24_24 *unk24;
};

extern s32 D_8022A76C_ovl18;
extern f32 D_8022A91C_ovl18;
extern f32 D_8022BC70_ovl18;
extern f32 D_8022BC74_ovl18;
extern f32 D_8022BC8C_ovl18;
extern s32 D_8022AAF0_ovl18;
extern s32 D_8022AB14_ovl18;
extern s32 D_8022AB38_ovl18;
extern s32 D_8022AB5C_ovl18;
extern s32 D_8022AD00_ovl18;
extern s32 D_8022AD08_ovl18;
extern s32 D_8022AD10_ovl18;
extern s32 D_8022AD18_ovl18;
extern s32 D_8022AD1C_ovl18;
extern s32 D_8022AD20_ovl18;
extern s32 D_801CB4DC_ovl7;
extern u32 D_800E0D50[];

void func_800A9864();
void func_800A9EA4();
void func_800AA018();
void func_800AA154(s32);
void func_800AF27C(void);
void func_80111550(s32);
struct Unk2385A0_24 *func_80111C88(s32 *, u32);
void func_80111ECC(struct Unk2385A0_24 *);
void func_801A0D50_ovl7(void *);
s32 func_801A0D74_ovl7(void);
void func_801ACF5C_ovl7(struct GObj *);
void func_801ACF84_ovl7(s32);
void func_8021F4A0_ovl18(void);
void func_8021F5CC_ovl18(void);
void func_8021F658_ovl18(void);
void eneTurnCommon2(s32);
void curObjSleepForever();
void ohSleep(s32);
void play_sound(s32);

void func_80225E40_ovl18(s32 arg0);
void func_80225FA8_ovl18(struct GObj *arg0);
void func_8022647C_ovl18(s32 arg0);
void func_802265A4_ovl18(void);

void func_80225C00_ovl18(s32 arg0) {
    struct UnkStruct800E1B50 *temp_v0;

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = &func_801ACF5C_ovl7;
    temp_v0->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x100A2, 0x23, 0x10);
    func_800AA018(0x10560);
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleZArray[omCurrentObj->objId] = gEntitiesScaleZArray[D_800E0D50[omCurrentObj->objId]];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8022BC70_ovl18;
    D_800E3210[omCurrentObj->objId] = -1.0f;
    D_800E3750[omCurrentObj->objId] = D_8022BC74_ovl18;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}

void func_80225DE0_ovl18(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B7138;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AD00_ovl18);
}

void func_80225E40_ovl18(UNUSED s32 arg0) {
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AD08_ovl18);
}

void func_80225EB8_ovl18(s32 arg0) {
    func_8021F4A0_ovl18();
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.5f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_8022A76C_ovl18;
    D_800DF150[omCurrentObj->objId] = &func_80225FA8_ovl18;
    func_801A0D50_ovl7(&func_80225E40_ovl18);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    func_80225E40_ovl18(arg0);
}

// near-match (94/97): identical instruction stream, but the ROM frame is 0x30
// (8-byte hole at 0x24) and spills arg0 lazily in the jal delay slot.
#ifdef NON_MATCHING
void func_80225FA8_ovl18(struct GObj *arg0) {
    f32 sp2C;
    struct DObj *sp20;
    struct UnkStruct800E1B50 *sp1C;
    struct DObj *temp_v0;
    struct DObj *temp_v1;
    struct Unk2385A0_24 *temp_v0_2;
    struct Unk2385A0_84 *temp_a1;
    u32 temp_a0;

    temp_a1 = (struct Unk2385A0_84 *) D_800E1B50[omCurrentObj->objId]->unk84;
    if (temp_a1 != NULL) {
        temp_v0 = arg0->data.dobj->firstChild;
        temp_v1 = temp_v0->firstChild;
        temp_a1->unk14 = temp_v1->pos.v.y + temp_v1->firstChild->pos.v.y + temp_v0->pos.v.y + D_8022A91C_ovl18;
        temp_a1->unk10 = temp_a1->unk14 * 0.5f;
    }
    sp2C = func_801A0D74_ovl7();
    eneTurnCommon2(6);
    if (sp2C == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AD10_ovl18);
    }
    temp_a0 = omCurrentObj->objId;
    sp20 = arg0->data.dobj->firstChild->firstChild->firstChild;
    sp1C = D_800E1B50[temp_a0];
    func_80111550(temp_a0);
    temp_v0_2 = func_80111C88(sp1C->unk8C, omCurrentObj->objId);
    if ((((struct Unk2385A0_8C *) sp1C->unk8C)->unk8->unk4 == 0) && (sp20 != NULL)) {
        temp_v0_2->unk24->unk8 = sp20;
        temp_v0_2->unk24->unk30 = sp20;
    }
    func_80111ECC(temp_v0_2);
    func_8021F658_ovl18();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2385A0/func_80225FA8_ovl18.s")
#endif
#ifdef NON_MATCHING
void func_8022612C_ovl18(UNUSED s32 arg0) {
    struct UnkStruct800E1B50 *sp2C = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    sp2C->unk98 = &D_8022AAF0_ovl18;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -0.25300002098083496f;
    D_800E3C90[omCurrentObj->objId] = 13.0f;
    func_800AA018(0x10031);
    play_sound(0x165);
    while (1) {
        if (D_800E3210[omCurrentObj->objId] < 0.0f) {
            D_800E3210[omCurrentObj->objId] = 0.0f;
            break;
        }
        ohSleep(1);
    }
    sp2C->unk98 = &D_8022AB14_ovl18;
    func_800AA154(0x10030);
    func_800AA018(0x1002F);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2385A0/func_8022612C_ovl18.s")
#endif
void func_80226294_ovl18(UNUSED s32 arg0) {

}

// This body compiles byte-identical to the ROM when it is the only function in
// the TU (permuter score 0); in place IDO CSEs the two `1` constants into $a3
// instead of rematerialising them, because 65535.0f lands at .rodata+8.
#ifdef NON_MATCHING
void func_8022629C_ovl18(s32 arg0)
{
  struct UnkStruct800E1B50 *temp_a1;
  temp_a1 = D_800E1B50[omCurrentObj->objId];
  D_800DDFD0[omCurrentObj->objId] = 1;
  temp_a1->unk98 = &D_8022AB38_ovl18;
  D_800E8920[omCurrentObj->objId] = 1;
  D_800E6690[omCurrentObj->objId] = 0.0f;
  D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
  D_800E6850[omCurrentObj->objId] = 65535.0f;
 D_800E3750[omCurrentObj->objId] = 0.0f; D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
  D_800E3C90[omCurrentObj->objId] = 65535.0f;
  func_800A9EA4(0x1002F);
  if (D_800DE350[omCurrentObj->objId]->data.dobj->timeRemaining != (-3.4028235e38f))
  {
    func_800AF27C();
  }
  gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2385A0/func_8022629C_ovl18.s")
#endif
void func_80226414_ovl18(UNUSED s32 arg0) {

}

void func_8022641C_ovl18(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B7138;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AD18_ovl18);
}

void func_8022647C_ovl18(UNUSED s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AD1C_ovl18);
}

void func_802264C4_ovl18(UNUSED s32 arg0) {
    func_8021F4A0_ovl18();
    D_800DF150[omCurrentObj->objId] = &func_802265A4_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_8022647C_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AD1C_ovl18);
}

void func_802265A4_ovl18(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8022AD20_ovl18);
    }
    func_8021F5CC_ovl18();
}

void func_802265FC_ovl18(UNUSED s32 arg0) {
    struct UnkStruct800E1B50 *temp_v0;

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    temp_v0->unk98 = &D_8022AB5C_ovl18;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10006);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8022BC8C_ovl18;
    curObjSleepForever(D_800E6690);
}

// Must stay a pragma: the listing carries 0x10 bytes of alignment padding after
// its .size directive, which vanishes if this is compiled from C.
#ifdef NON_MATCHING
void func_802266C8_ovl18(UNUSED s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2385A0/func_802266C8_ovl18.s")
#endif