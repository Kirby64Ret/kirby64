#include "common.h"

#include "GObj.h"
#include "Player.h"
#include "buffers.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800DE350.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_801117BC(void *, u32);
void func_80111C4C(s32);
void func_801ACF84_ovl7(GObj *);

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

void func_80111550(void *);
struct Ovl7AnimObj *func_80111C88(s32 *, u32);
void func_80111ECC();

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
    u32 objId;
    struct Ovl7AnimObj *anim;
    struct Ovl7AnimHdrSub *hdr;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent == NULL) {
        return 0;
    }
    if (ent->unk8C == NULL) {
        return 0;
    }
    objId = omCurrentObj->objId;
    func_80111550(objId);
    anim = func_80111C88(ent->unk8C, omCurrentObj->objId);
    hdr = ((struct Ovl7AnimHdr *) ent->unk8C)->unk8;
    if ((hdr->unk4 == 0) && (arg0 != 0)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim);
    return func_8019F650_ovl7();
}

s32 func_8019F4D0_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent;
    u32 objId;
    struct Ovl7AnimObj *anim;
    struct Ovl7AnimHdrSub *hdr;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent == NULL) {
        return 0;
    }
    if (ent->unk8C == NULL) {
        return 0;
    }
    objId = omCurrentObj->objId;
    func_80111550(objId);
    anim = func_80111C88(ent->unk8C, omCurrentObj->objId);
    hdr = ((struct Ovl7AnimHdr *) ent->unk8C)->unk8;
    if ((hdr->unk4 == 0) && (arg0 != 0)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim);
    return func_8019FA68_ovl7();
}

s32 func_8019F590_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent;
    u32 objId;
    struct Ovl7AnimObj *anim;
    struct Ovl7AnimHdrSub *hdr;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent == NULL) {
        return 0;
    }
    if (ent->unk8C == NULL) {
        return 0;
    }
    objId = omCurrentObj->objId;
    func_80111550(objId);
    anim = func_80111C88(ent->unk8C, omCurrentObj->objId);
    hdr = ((struct Ovl7AnimHdr *) ent->unk8C)->unk8;
    if ((hdr->unk4 == 0) && (arg0 != 0)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim);
    return func_8019FDE8_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_8019F650_ovl7.s")

void func_8019F9D0_ovl7(GObj *arg0) {
    s32 pad0;
    s32 pad1;
    s32 pad2;
    s32 pad3;
    s32 pad4;
    s32 pad5;
    s32 pad6;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    struct Ovl7AnimObj *obj;
    struct Ovl7AnimHdrSub *sub;

    func_80111550(omCurrentObj->objId);
    obj = func_80111C88(tmp->unk8C, omCurrentObj->objId);
    sub = ((struct Ovl7AnimHdr *) tmp->unk8C)->unk8;
    if ((sub->unk4 == 0) && (arg0 != NULL)) {
        obj->unk24->unk8 = (s32) arg0;
    }
    func_80111ECC(obj);
    func_801A0C70_ovl7();
}

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
    struct Ovl7AnimHdrSub *hdr;

    ent = D_800E1B50[omCurrentObj->objId];
    anim = func_801A0464_ovl7();
    hdr = ((struct Ovl7AnimHdr *) ent->unk8C)->unk8;
    if ((hdr->unk4 == 0) && (arg0 != 0)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim, arg0);
    if (arg0) {
    }
    func_801A04B8_ovl7();
}

struct Ovl7AnimObj *func_801A0464_ovl7(void) {
    struct UnkStruct800E1B50 *ent;

    ent = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    return func_80111C88(ent->unk8C, omCurrentObj->objId);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A04B8_ovl7.s")

#ifdef NON_MATCHING
s32 func_801A07C4_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk90 == 0) {
        return 0;
    }
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (D_800E7730[omCurrentObj->objId] == 4) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
        }
        return 1;
    }
    if (ent->unk3D == 0) {
        func_80111C4C(func_801117BC(ent->unk90, omCurrentObj->objId));
        return 0;
    }
    ent->unk3D = ent->unk3D - 1;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A07C4_ovl7.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A0880_ovl7.s")

struct Ovl7_2_AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

s32 func_801A0B10_ovl7(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_80111A04(u32, u32);
    extern s32 D_800E83E0[];
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7_2_AnimInfo sp2C;

    if (ent->unk8C == 0) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
    if (func_80110B00(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
    } else if (func_80110FD4(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
    } else if (func_80110150(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
    if (ent->unk90 != 0) {
        func_80111C4C(func_80111A04(ent->unk90, omCurrentObj->objId));
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A0C70_ovl7.s")
