#include "common.h"

#include "GObj.h"
#include "Player.h"
#include "buffers.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800DE350.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

struct Ovl7AnimCmd {
    u8 filler0[8];
    s32 unk8;
};

struct Ovl7AnimHdrSub {
    u8 filler0[4];
    s32 unk4;
};

struct Ovl7AnimHdr {
    u8 filler0[8];
    struct Ovl7AnimHdrSub *unk8;
};

struct Ovl7AnimObj {
    u8 filler0[0x24];
    struct Ovl7AnimCmd *unk24;
};

void func_80111550(u32);
struct Ovl7AnimObj *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl7AnimObj *);

s32 func_8019F410_ovl7(s32);
s32 func_8019F4D0_ovl7(s32);
s32 func_8019F590_ovl7(s32);
s32 func_8019F650_ovl7(void);
s32 func_8019FA68_ovl7(void);
s32 func_8019FDE8_ovl7(void);
struct Ovl7AnimObj *func_801A0464_ovl7(void);
void func_801A04B8_ovl7(void);
s32 func_801A0C70_ovl7(void);

void func_8019F3B0_ovl7(void) {
    func_8019F410_ovl7(0);
}

void func_8019F3D0_ovl7(void) {
    func_8019F4D0_ovl7(0);
}

void func_8019F3F0_ovl7(void) {
    func_8019F590_ovl7(0);
}

s32 func_8019F410_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent;
    struct Ovl7AnimObj *anim;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent == NULL) {
        return 0;
    }
    if (ent->unk8C == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    anim = func_80111C88(ent->unk8C, omCurrentObj->objId);
    if ((((struct Ovl7AnimHdr *) ent->unk8C)->unk8->unk4 == 0) && (arg0 != 0)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim);
    return func_8019F650_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_8019F4D0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_8019F590_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_8019F650_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_8019F9D0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_8019FA68_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_8019FDE8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A0244_ovl7.s")

void func_801A03B4_ovl7(void) {
    func_80111ECC(func_801A0464_ovl7());
    func_801A04B8_ovl7();
}

void func_801A03E4_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent;
    struct Ovl7AnimObj *anim;

    ent = D_800E1B50[omCurrentObj->objId];
    anim = func_801A0464_ovl7();
    if ((((struct Ovl7AnimHdr *) ent->unk8C)->unk8->unk4 == 0) && (arg0 != 0)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim);
    func_801A04B8_ovl7();
}

struct Ovl7AnimObj *func_801A0464_ovl7(void) {
    struct UnkStruct800E1B50 *ent;

    ent = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    return func_80111C88(ent->unk8C, omCurrentObj->objId);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A04B8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A07C4_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A0880_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A0B10_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A0C70_ovl7.s")
