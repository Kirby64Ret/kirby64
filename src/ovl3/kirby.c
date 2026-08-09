#include "common.h"
#include "GObj.h"
#include "Player.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
extern FUNCLIST D_80196990_ovl3;
extern FUNCLIST D_80196CA8_ovl3;

extern s16 D_80198824_ovl3;
extern s32 D_80196CB8_ovl3[];

typedef struct Unk80196C74 {
    u8 unk0[7];
} Unk80196C74;

extern Unk80196C74 D_80196C74_ovl3;

extern void func_80151E94_ovl3(Unk80196C74 *);
extern void func_80153984_ovl3(void);
extern void func_801217B8(void);
extern s32 func_80121658(void);
extern void func_8011D67C(void);
extern void func_8011E548(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016BF60_ovl3.s")

void func_8016C510_ovl3(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 86, &D_80196990_ovl3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016C558_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016CA8C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016D1E8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016D3A8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016D81C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016DA14_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016DD0C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016DDE8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016E15C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016E638_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016E8A0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016EE5C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016EF5C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016F240_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016F6DC_ovl3.s")

void func_8016F7C8_ovl3(s32 arg0) {
    Unk80196C74 sp18 = D_80196C74_ovl3;

    func_80153984_ovl3();
    func_80151E94_ovl3(&sp18);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016F80C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016FB58_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016FD88_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016FFF8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801702F0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80170638_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80170794_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801708A0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80170A24_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80170AC4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80170D88_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801712F8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801717F0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80171E00_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80172234_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801727D8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80172A3C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80172AE4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80173260_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801736BC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80173AF4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80173CB4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80173E40_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80173EC0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017404C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174144_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801741DC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174284_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174504_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174680_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801746E0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801747F0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017492C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017499C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174A30_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174AEC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174B7C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174C10_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80175754_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017599C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801760FC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801762E0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80176398_ovl3.s")

void func_8017644C_ovl3(void) {
    if (D_80198824_ovl3 != 0) {
        D_80198824_ovl3 += 5;
        if (D_80198824_ovl3 >= 0xFF) {
            D_80198824_ovl3 = 0xFF;
        }
    }
}

void func_80176484_ovl3(void) {
    D_80198824_ovl3 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80176490_ovl3.s")

void func_80176814_ovl3(s32 arg0) {
    if (gKirbyState.unk30 != 0) {
        func_80153984_ovl3();
        if (func_80121658() != 0) {
            gKirbyState.unk30 = 0;
        }
    }
    func_8011E548();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80176860_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80176DE0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80177000_ovl3.s")

void func_80177098_ovl3(GObj *arg0) {
    utilFuncTableJump(D_800DDE10[omCurrentObj->objId], 2, &D_80196CA8_ovl3);
}

extern FUNCLIST D_80196CB0_ovl3;
void func_80120E74(struct GObj *);

void func_801770E0_ovl3(struct GObj *arg0) {
    utilFuncTableJump(D_800DE190[omCurrentObj->objId], 2, &D_80196CB0_ovl3);
    func_80120E74(arg0);
}

void func_80177130_ovl3(s32 arg0) {
    D_800DE190[omCurrentObj->objId] = 0;
    curObjSleepForever();
}

void func_8017716C_ovl3(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80177174_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80177270_ovl3.s")

s32 func_801772CC_ovl3(s32 arg0) {
    return D_80196CB8_ovl3[arg0];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801772E0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80177438_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801776E8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017782C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80177B40_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80177CBC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80177E78_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80177FB4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801782C8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80178420_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80178728_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017883C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801789D8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80178B18_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80179060_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80179130_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80179370_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017982C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80179C28_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017A2C0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017A390_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017B068_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017B3C4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017B78C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017B8F4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017BD68_ovl3.s")

void func_8017BEF4_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017BF34_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017C1FC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017C418_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017CAF8_ovl3.s")

