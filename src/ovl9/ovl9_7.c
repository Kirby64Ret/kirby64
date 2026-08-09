#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0060_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0548_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F09E4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0ABC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0DFC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F1044_ovl9.s")

void func_801A0D74_ovl7();
s32 func_801F1440_ovl9(f32);

void func_801F13B4_ovl9(void) {
    f32 temp;

    temp = D_800EA6E0[omCurrentObj->objId];
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    func_801A0D74_ovl7();
    func_801F1440_ovl9(D_800EA6E0[omCurrentObj->objId]);
}

struct Ovl9AnimCmd {
    u8 filler0[0x18];
    f32 unk18;
};

struct Ovl9AnimObj {
    u8 filler0[0x24];
    struct Ovl9AnimCmd *unk24;
};

void func_80111ECC(struct Ovl9AnimObj *);
struct Ovl9AnimObj *func_801A0464_ovl7(void);
void func_801A04B8_ovl7(void);

s32 func_801F1440_ovl9(f32 arg0) {
    struct Ovl9AnimObj *temp;
    UnkStruct800E1B50 *p;

    p = D_800E1B50[omCurrentObj->objId];
    if (p->unk8C == NULL) {
        return 0;
    }
    temp = func_801A0464_ovl7();
    temp->unk24->unk18 = temp->unk24->unk18 * arg0;
    func_80111ECC(temp);
    func_801A04B8_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F14B8_ovl9.s")

void func_801F172C_ovl9(GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F1784_ovl9.s")

void func_801A0D74_ovl7();
void func_801A03B4_ovl7(void);

void func_801F1C68_ovl9(void) {
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F1C90_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F2238_ovl9.s")

void func_801A0D74_ovl7();
void func_801A03E4_ovl7(struct DObj *);

void func_801F23E4_ovl9(void) {
    func_801A0D74_ovl7();
    func_801A03E4_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F2428_ovl9.s")

void func_801A03E4_ovl7(struct DObj *);

void func_801F24FC_ovl9(GObj *arg0) {
    func_801A03E4_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_800B33F4(void);
void func_801F2428_ovl9(struct GObj *);

void func_801F253C_ovl9(GObj *arg0) {
    func_800B33F4();
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F2428_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F2584_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F2910_ovl9.s")

