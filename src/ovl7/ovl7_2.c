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

#ifdef PORT
/* The anim headers (D_801CA004_ovl7 family) are pointer-bearing data blocks,
 * emitted widened on PC: one 8-byte cell per N64 word, pointers native. The
 * N64 offsets shear (unk8 landed on cell 1, the constant 1, and got
 * dereferenced); cells 0-1 are the two leading words, unk8 is cell 2. */
struct Ovl7AnimHdr {
    u8 filler0[16];
    struct Ovl7AnimHdrSub *unk8;
};
#else
struct Ovl7AnimHdr {
    u8 filler0[8];
    struct Ovl7AnimHdrSub *unk8;
};
#endif

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

/* Everything below is right except ONE instruction at function entry: the ROM
   materialises &omCurrentObj (lui+addiu into $a2, then lw 0($a2)) in the entry
   block, IDO folds it to lui+lw %lo and only materialises it after the first
   call. The frame (0x48), the struct at 0x24 and the ent spill at 0x40 are all
   exact and needed the leading `s32 pad;` plus the 0x1C-byte info struct.
   Swept for the entry materialisation: a volatile-qualified read (materialises
   but reorders the prologue, 216), `(&omCurrentObj)[0]`, a `struct GObj **`
   local, and a hoisted `struct GObj *obj = omCurrentObj;` -- all inert.
   func_8019FA68_ovl7 is the same function with func_80110FD4/func_80110150
   swapped and will close with it. */
#ifdef NON_MATCHING
struct Ovl7_2_AnimInfoA {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0xC];
};

s32 func_8019F650_ovl7(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_801A0244_ovl7(s32);
    void func_8019EBCC_ovl7(struct GObj *);
    void func_801A3BA4_ovl7(void);
    void func_801A7000_ovl7(struct GObj *);
    void func_801A3E80_ovl7(struct GObj *);
    extern s32 D_800E83E0[], D_800E8220[], D_800E0D50[];
    s32 pad;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7_2_AnimInfoA sp24;

    if (func_80110B00(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        ent->unk43 = sp24.unk3;
        ent->unk3E = sp24.unk0;
        ent->unk3F = sp24.unk1;
        ent->unk3A = sp24.unkC;
    } else if (func_80110FD4(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        ent->unk43 = sp24.unk3;
        ent->unk3E = sp24.unk0;
        ent->unk3F = sp24.unk1;
        ent->unk3A = sp24.unkC;
    } else if (func_80110150(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        ent->unk43 = sp24.unk3;
        ent->unk3E = sp24.unk0;
        ent->unk3F = sp24.unk1;
        ent->unk3A = sp24.unkC;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
        ent->unk3A = -1;
    }
    switch (D_800E83E0[omCurrentObj->objId]) {
    case 1:
        if (func_801A0244_ovl7(sp24.unkC) != -1) {
            D_800E83E0[omCurrentObj->objId] = 0x12;
            play_sound(0xF4);
            ent->unk94 = 0;
            ent->unk40 = 1;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        return 1;
    case 2:
        func_8019EBCC_ovl7(D_800DE350[omCurrentObj->objId]);
        func_801A3BA4_ovl7();
        return 1;
    case 3:
        D_800E8220[omCurrentObj->objId] = 0;
        if (sp24.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = sp24.unkC;
        }
        gKirbyState.numberInhaling += 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return 1;
    case 4:
        if (gKirbyState.unk4 != 0) {
            return 0;
        }
        D_800E8220[omCurrentObj->objId] = 1;
        gKirbyState.unk4 = 2;
        if (sp24.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = sp24.unkC;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_8019F650_ovl7.s")
#endif

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

/* FACTORY: 223/223, but that is ONE MISSING INSTRUCTION, not 223 wrong ones.
   Ported verbatim from func_8019F650_ovl7's draft above: the two listings are
   byte-identical apart from the labels and the swap of func_80110FD4 <->
   func_80110150 in the second and third else-if arms (diffed instruction by
   instruction, that is the ONLY difference in 223 instructions).  So this
   inherits its twin's single residue exactly -- the ROM materialises
   &omCurrentObj (lui + addiu into $a2, then lw 0($a2)) and IDO folds it to
   lui + lw %lo -- and every instruction after index 1 is the ROM's, shifted one
   slot.  Whatever closes func_8019F650_ovl7 closes this with the same edit.
   Do not re-derive it: the twin's guard lists the four sweeps already paid for.
   The struct is a block-scope copy of Ovl7_2_AnimInfoA on purpose, so both
   guards can be active at once without a redeclaration. */
#ifdef NON_MATCHING
s32 func_8019FA68_ovl7(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_801A0244_ovl7(s32);
    void func_8019EBCC_ovl7(struct GObj *);
    void func_801A3BA4_ovl7(void);
    void func_801A7000_ovl7(struct GObj *);
    void func_801A3E80_ovl7(struct GObj *);
    extern s32 D_800E83E0[], D_800E8220[], D_800E0D50[];
    s32 pad;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7_2_AnimInfoB {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 filler4[8];
        s32 unkC;
        u8 filler10[0xC];
    };
    struct Ovl7_2_AnimInfoB sp24;

    if (func_80110B00(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        ent->unk43 = sp24.unk3;
        ent->unk3E = sp24.unk0;
        ent->unk3F = sp24.unk1;
        ent->unk3A = sp24.unkC;
    } else if (func_80110FD4(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        ent->unk43 = sp24.unk3;
        ent->unk3E = sp24.unk0;
        ent->unk3F = sp24.unk1;
        ent->unk3A = sp24.unkC;
    } else if (func_80110150(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        ent->unk43 = sp24.unk3;
        ent->unk3E = sp24.unk0;
        ent->unk3F = sp24.unk1;
        ent->unk3A = sp24.unkC;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
        ent->unk3A = -1;
    }
    switch (D_800E83E0[omCurrentObj->objId]) {
    case 1:
        if (func_801A0244_ovl7(sp24.unkC) != -1) {
            D_800E83E0[omCurrentObj->objId] = 0x12;
            play_sound(0xF4);
            ent->unk94 = 0;
            ent->unk40 = 1;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        return 1;
    case 2:
        func_8019EBCC_ovl7(D_800DE350[omCurrentObj->objId]);
        func_801A3BA4_ovl7();
        return 1;
    case 3:
        D_800E8220[omCurrentObj->objId] = 0;
        if (sp24.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = sp24.unkC;
        }
        gKirbyState.numberInhaling += 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return 1;
    case 4:
        if (gKirbyState.unk4 != 0) {
            return 0;
        }
        D_800E8220[omCurrentObj->objId] = 1;
        gKirbyState.unk4 = 2;
        if (sp24.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = sp24.unkC;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_8019FA68_ovl7.s")
#endif

/* FACTORY: 277/278, one-instruction entry shear -- the ROM materialises
   &omCurrentObj (lui+addiu into $a2, then lw 0($a2)) before the frame setup,
   IDO folds it to lui+lw %lo.  IDENTICAL single residue to the
   func_8019F650_ovl7/func_8019FA68_ovl7 twins above (their guard lists the
   four sweeps already paid: volatile read, (&omCurrentObj)[0], GObj** local,
   hoisted obj -- all inert).  Every other instruction, register and stack
   slot is exact: frame 0x50, struct at 0x2C, ent spill 0x48, a1/a2/a3
   colouring, both dead pad slots.  Whatever closes the twins closes this. */
#ifdef MIPS_TO_C
s32 func_8019FDE8_ovl7(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_801A0244_ovl7(s32);
    void func_8019EBCC_ovl7(struct GObj *);
    void func_801A3BA4_ovl7(void);
    void func_801A7000_ovl7(struct GObj *);
    void func_801A3E80_ovl7(struct GObj *);
    void func_800FD570(s32, s32, f32, f32, f32);
    extern s32 D_800E83E0[], D_800E8220[], D_800E0D50[];
    extern s32 D_800E7CE0[], D_800E8760[];
    struct Ovl7_2_AnimInfoC {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 filler4[8];
        s32 unkC;
        u8 filler10[0xC];
    };
    s32 pad0;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7_2_AnimInfoC sp2C;
    s32 pad1;

    if (func_80110B00(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
        ent->unk3E = sp2C.unk0;
        ent->unk3F = sp2C.unk1;
        ent->unk3A = sp2C.unkC;
    } else if (func_80110FD4(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
        ent->unk3E = sp2C.unk0;
        ent->unk3F = sp2C.unk1;
        ent->unk3A = sp2C.unkC;
    } else if (func_80110150(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
        ent->unk3E = sp2C.unk0;
        ent->unk3F = sp2C.unk1;
        ent->unk3A = sp2C.unkC;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
        ent->unk3A = -1;
    }
    switch (D_800E83E0[omCurrentObj->objId]) {
    case 1:
        if (func_801A0244_ovl7(sp2C.unkC) != -1) {
            D_800E83E0[omCurrentObj->objId] = 0x12;
            play_sound(0xF4);
            ent->unk94 = 0;
            ent->unk40 = 1;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        return 1;
    case 2:
        func_8019EBCC_ovl7(D_800DE350[omCurrentObj->objId]);
        func_801A3BA4_ovl7();
        return 1;
    case 3:
        D_800E8220[omCurrentObj->objId] = 0;
        if (sp2C.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = sp2C.unkC;
        }
        gKirbyState.numberInhaling += 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return 1;
    case 4:
        if (gKirbyState.unk4 != 0) {
            return 0;
        }
        D_800E8220[omCurrentObj->objId] = 1;
        gKirbyState.unk4 = 2;
        if (sp2C.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = sp2C.unkC;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return 1;
    case 7:
    case 8:
    case 9:
        if (D_800DE350[(s8) ent->unk3A] != NULL) {
            D_800E7CE0[omCurrentObj->objId] = 0x14;
            func_800FD570(0, 9,
                          (gEntitiesNextPosXArray[(s8) ent->unk3A] - gEntitiesNextPosXArray[omCurrentObj->objId]) * 0.6f,
                          (gEntitiesNextPosYArray[(s8) ent->unk3A] - gEntitiesNextPosYArray[omCurrentObj->objId]) * 0.6f,
                          (gEntitiesNextPosZArray[(s8) ent->unk3A] - gEntitiesNextPosZArray[omCurrentObj->objId]) * 0.6f);
            D_800E8760[(s8) ent->unk3A] = 1;
        }
        return 0;
    }
    return 0;
}
#elif defined(PORT)
/* Third sibling of the func_8019F650_ovl7 / func_8019FA68_ovl7 twins
 * (ported from m2c): drain the pending anim-script event into
 * D_800E83E0/unk43/unk3E/unk3F/unk3A and dispatch -- 1 grab (power steal
 * via func_801A0244_ovl7), 2 death warp, 3 inhale, 4 exclusive inhale;
 * this variant adds cases 7/8/9 for a partner track in unk3A (lb on the
 * N64, hence the s8 cast): give this track 0x14 frames of hitstop, knock
 * the partner away along the 0.6-scaled separation via func_800FD570 and
 * mark it in D_800E8760.  m2c's phantom trailing args on play_sound,
 * func_8019EBCC_ovl7 and func_800FD570 are trimmed to the real arities. */
s32 func_8019FDE8_ovl7(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_801A0244_ovl7(s32);
    void func_8019EBCC_ovl7(struct GObj *);
    void func_801A3BA4_ovl7(void);
    void func_801A7000_ovl7(struct GObj *);
    void func_801A3E80_ovl7(struct GObj *);
    void func_800FD570(s32, s32, f32, f32, f32);
    void play_sound(s32);
    extern s32 D_800E83E0[], D_800E8220[], D_800E0D50[];
    extern s32 D_800E7CE0[], D_800E8760[];
    struct PcAnimInfoC {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 filler4[8];
        s32 unkC;
        u8 filler10[0xC];
    };
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct PcAnimInfoC info;
    u32 id;
    s32 partner;

    if (func_80110B00(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
        ent->unk3E = info.unk0;
        ent->unk3F = info.unk1;
        ent->unk3A = info.unkC;
    } else if (func_80110FD4(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
        ent->unk3E = info.unk0;
        ent->unk3F = info.unk1;
        ent->unk3A = info.unkC;
    } else if (func_80110150(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
        ent->unk3E = info.unk0;
        ent->unk3F = info.unk1;
        ent->unk3A = info.unkC;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
        ent->unk3A = -1;
    }
    id = omCurrentObj->objId;
    switch (D_800E83E0[id]) {
    case 1:
        if (func_801A0244_ovl7(info.unkC) != -1) {
            D_800E83E0[omCurrentObj->objId] = 0x12;
            play_sound(0xF4);
            ent->unk94 = 0;
            ent->unk40 = 1;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        return 1;
    case 2:
        func_8019EBCC_ovl7(D_800DE350[id]);
        func_801A3BA4_ovl7();
        return 1;
    case 3:
        D_800E8220[id] = 0;
        if (info.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = info.unkC;
        }
        gKirbyState.numberInhaling += 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return 1;
    case 4:
        if (gKirbyState.unk4 != 0) {
            return 0;
        }
        D_800E8220[id] = 1;
        gKirbyState.unk4 = 2;
        if (info.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = info.unkC;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return 1;
    case 7:
    case 8:
    case 9:
        partner = (s8) ent->unk3A;
        if (D_800DE350[partner] != NULL) {
            u32 me;

            D_800E7CE0[id] = 0x14;
            me = omCurrentObj->objId;
            partner = (s8) ent->unk3A;
            func_800FD570(0, 9,
                          (gEntitiesNextPosXArray[partner] - gEntitiesNextPosXArray[me]) * 0.6f,
                          (gEntitiesNextPosYArray[partner] - gEntitiesNextPosYArray[me]) * 0.6f,
                          (gEntitiesNextPosZArray[partner] - gEntitiesNextPosZArray[me]) * 0.6f);
            D_800E8760[(s8) ent->unk3A] = 1;
        }
        return 0;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_8019FDE8_ovl7.s")
#endif

/* FACTORY: 2/92, spill slot 0x18 vs the ROM's 0x1C.  Decidable +8 frame
   anomaly, NOT a source shape: measured n=6 locals -> frame 0x38 / spill 0x18,
   n=7 -> frame 0x40 / spill 0x1C, i.e. our IDO computes align8(0x1C + 4n + 4)
   where the ROM computes align8(0x18 + 4n + 4).  The ROM has n=7 (spill 0x1C,
   frame 0x38); that total is 0 mod 8, so no local arrangement reaches it.
   Everything else -- all 92 instructions, both branch-likelies, every register
   -- is exact. */
#ifdef NON_MATCHING
s32 func_801A0244_ovl7(s32 arg0) {
    s32 func_8011E1E8(s32, s32);
    s32 func_801BC27C_ovl7(s32, s32);
    extern s32 D_800E0D50[];
    s32 pad;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    s32 *slot;
    s32 theirs = 0;
    s32 mine = 0;
    s32 ret;

    if (D_800E7730[arg0] == 6) {
        if ((D_800E77A0[arg0] >= 8) && (D_800E77A0[arg0] < 0x24)) {
            return -1;
        }
    }
    slot = &D_800E0D50[arg0];
    if (*slot != 0) {
        return -1;
    }
    if ((ent->unk88 != NULL) && (ent->unk88->unkC != NULL) && (ent->unk88->unkC->unk0 != NULL)) {
        mine = ent->unk88->unkC->unk0->unk1C->unk4;
    }
    if ((mine != 0) && (slot >= &D_800E0D50[0xE]) && (slot < &D_800E0D50[0x3C])) {
        if ((D_800E1B50[arg0] != NULL) && (D_800E1B50[arg0]->unk88 != NULL) &&
            (D_800E1B50[arg0]->unk88->unkC != NULL) &&
            (D_800E1B50[arg0]->unk88->unkC->unk0 != NULL)) {
            theirs = D_800E1B50[arg0]->unk88->unkC->unk0->unk1C->unk4;
        }
        if (theirs != 0) {
            ret = func_801BC27C_ovl7(func_8011E1E8(mine, theirs), 1);
            if (ret != 0) {
                D_800E83E0[arg0] = 0x12;
                return ret;
            }
        }
    }
    return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A0244_ovl7.s")
#endif

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

/* FACTORY: 159/194, integer-constant fork residue.  Everything structural is
   exact (frame 0x48, struct 0x24, ent spill 0x40, carrier in $v0, $a3=-1
   colouring via the signed-unk3A shadow struct, case-4 polarity, u32 switch).
   ONE defect remains: our IDO colours the constant 2 into $a0 and shares it
   between the `case 2` compare and `gKirbyState.unk4 = 2` (ROM: separate
   addiu $at,2 / addiu $t8,2), costing 1 instruction and shifting every
   branch offset.  Measured: with an s32 switch the shared constant is 1
   (compare-1 with `D_800E8220[..] = 1`); `1U` on the s32 array store forks
   the 1 under the u32 switch, but `2U` cannot fork the 2 because unk4 is u8
   and the front end canonicalises the constant.  Needs a spelling that forks
   an int constant feeding a u8 store from a switch-compare constant.
   NOTE for the factory: this draft returns s32 (the listing sets $v0 on every
   path) while the file-scope forward declaration above says void.  That
   declaration must NOT be retyped at file scope -- doing so prototypes the two
   call sites in func_801A03B4_ovl7/func_801A03E4_ovl7 and can move the TU.
   Retype it only inside the permuter's own copy while measuring. */
#ifdef MIPS_TO_C
s32 func_801A04B8_ovl7(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_801A07C4_ovl7(void);
    void func_801A7000_ovl7(struct GObj *);
    extern s32 D_800E83E0[], D_800E8220[], D_800E0D50[];
    struct Ovl7_2_AnimInfoD {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 filler4[8];
        s32 unkC;
        u8 filler10[0xC];
    };
    struct Ovl7_2_Carried { /* UnkStruct800E1B50 with unk3A SIGNED, so the -1
                               store keeps the -1 alive for the $a3 colouring */
        u8 filler0[0x3A];
        s8 unk3A;
        u8 filler3B[8];
        u8 unk43;
        u8 filler44[0x48];
        s32 *unk8C;
    };
    s32 carrier;
    struct Ovl7_2_Carried *ent = (struct Ovl7_2_Carried *) D_800E1B50[omCurrentObj->objId];
    struct Ovl7_2_AnimInfoD sp24;

    if (ent->unk8C == NULL) {
        return 0;
    }
    carrier = D_800E0D50[omCurrentObj->objId];
    if (carrier != 0) {
        if ((D_800E0D50[carrier] == 0) && (D_800E8220[carrier] == 1)) {
            return func_801A07C4_ovl7();
        }
    }
    if (carrier == 0) {
        return func_801A07C4_ovl7();
    }
    if (func_80110B00(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        ent->unk43 = sp24.unk3;
        ent->unk3A = sp24.unkC;
    } else if (func_80110FD4(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        ent->unk43 = sp24.unk3;
        ent->unk3A = sp24.unkC;
    } else if (func_80110150(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        ent->unk43 = sp24.unk3;
        ent->unk3A = sp24.unkC;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
        ent->unk3A = -1;
    }
    switch ((u32) D_800E83E0[omCurrentObj->objId]) {
    case 1:
    case 2:
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
        return 1;
    case 3:
        D_800E8220[omCurrentObj->objId] = 0;
        if (sp24.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = sp24.unkC;
        }
        gKirbyState.numberInhaling += 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return 1;
    case 4:
        if (gKirbyState.unk4 == 0) {
            D_800E8220[omCurrentObj->objId] = 1U;
            gKirbyState.unk4 = 2U;
            if (sp24.unkC != -1) {
                D_800E0D50[omCurrentObj->objId] = sp24.unkC;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
            return 1;
        }
        return 0;
    }
    return 0;
}
#elif defined(PORT)
/* Anim-event pump for a CARRIED entity (ported from m2c): while riding a
 * carrier track (D_800E0D50), defer to the plain pump func_801A07C4_ovl7
 * when there is no carrier or the carrier is being exclusive-inhaled;
 * otherwise drain the pending event (D_800E83E0/unk43/unk3A) and dispatch
 * -- 1/2 hand the process to the carried-entity handler
 * func_801ACF84_ovl7, 3 inhale, 4 exclusive inhale (same tails as the
 * func_8019F650_ovl7 family). */
void func_801A04B8_ovl7(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_801A07C4_ovl7(void);
    void func_801A7000_ovl7(struct GObj *);
    extern s32 D_800E83E0[], D_800E8220[], D_800E0D50[];
    struct PcAnimInfoD {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 filler4[8];
        s32 unkC;
        u8 filler10[0xC];
    };
    u32 id = omCurrentObj->objId;
    struct UnkStruct800E1B50 *ent = D_800E1B50[id];
    struct PcAnimInfoD info;
    s32 carrier;

    if (ent->unk8C == NULL) {
        return;
    }
    carrier = D_800E0D50[id];
    if ((carrier != 0) && (D_800E0D50[carrier] == 0) && (D_800E8220[carrier] == 1)) {
        func_801A07C4_ovl7();
        return;
    }
    if (carrier == 0) {
        func_801A07C4_ovl7();
        return;
    }
    if (func_80110B00(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
        ent->unk3A = info.unkC;
    } else if (func_80110FD4(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
        ent->unk3A = info.unkC;
    } else if (func_80110150(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
        ent->unk3A = info.unkC;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
        ent->unk3A = -1;
    }
    id = omCurrentObj->objId;
    switch (D_800E83E0[id]) {
    case 1:
    case 2:
        assign_new_process_entry(gEntityGObjProcessArray[id], func_801ACF84_ovl7);
        return;
    case 3:
        D_800E8220[id] = 0;
        if (info.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = info.unkC;
        }
        gKirbyState.numberInhaling += 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return;
    case 4:
        if (gKirbyState.unk4 == 0) {
            D_800E8220[id] = 1;
            gKirbyState.unk4 = 2;
            if (info.unkC != -1) {
                D_800E0D50[omCurrentObj->objId] = info.unkC;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        }
        return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_2/func_801A04B8_ovl7.s")
#endif

#ifdef NON_MATCHING
// 22/47, all register naming. ROM: objId $v1, ent $v0, objId*4 $a2,
// ent->unk90 $a0, ent->unk3D $a1. IDO: objId $a1, ent $v1, objId*4 $v0,
// unk90 $a2, unk3D $a0. The only non-naming-looking residue -- the ROM's
// `sb $t9,0x3D($v0)` landing before `or $v0,$zero,$zero` while IDO emits them
// in the other order -- is forced by the naming: the ROM's store uses $v0 as
// its base so it cannot follow the zeroing of $v0. Swept: an explicit
// `s32 id = omCurrentObj->objId` local used at every index (byte-identical
// output to the inline form, 22/47 either way).
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
s32 func_801A0880_ovl7(void) {
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    void func_800F753C(void);
    void func_801A7000_ovl7(struct GObj *);
    void func_801BD510_ovl7(struct GObj *);
    extern s32 D_800E83E0[], D_800E8220[], D_800E0D50[];
    struct Ovl7_2_AnimInfoE {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 filler4[8];
        s32 unkC;
        u8 filler10[0x10];
    };
    s32 pad0;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7_2_AnimInfoE sp28;
    s32 pad1;

    if (ent->unk8C == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
    if (func_80110150(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = 1;
        ent->unk43 = 0;
    } else if (func_80110FD4(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        ent->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
    switch ((u32) D_800E83E0[omCurrentObj->objId]) {
    case 1:
        if (sp28.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = sp28.unkC;
        }
        func_800F753C();
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BD510_ovl7);
        return 1;
    case 3:
        D_800E8220[omCurrentObj->objId] = 0;
        if (sp28.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = sp28.unkC;
        }
        gKirbyState.numberInhaling += 1;
        func_800F753C();
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return 1;
    case 4:
        if (gKirbyState.unk4 == 0) {
            D_800E8220[omCurrentObj->objId] = 1U;
            gKirbyState.unk4 = 2;
            if (sp28.unkC != -1) {
                D_800E0D50[omCurrentObj->objId] = sp28.unkC;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
            return 1;
        }
        return 0;
    }
    return 0;
}

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

struct Ovl7_2_AnimInfoB {
    u8 filler0[8];
    s32 unk8;
    u8 fillerC[0x14];
};

s32 func_801A0C70_ovl7(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    extern f32 D_800E7B20[];
    s32 ret = 0;
    f32 saved = D_800E7B20[omCurrentObj->objId];
    struct Ovl7_2_AnimInfoB sp18;

    if (func_80110B00(&sp18) != 0) {
        ret = 1;
    }
    if (ret != 1) {
        if (func_80110FD4(&sp18) != 0) {
            switch (sp18.unk8) {
            case 0:
                break;
            case 1:
            case 2:
            case 7:
            case 8:
            case 15:
            case 16:
            case 20:
            case 21:
            case 27:
            case 35:
                ret = 1;
                break;
            }
        }
    }
    if (ret != 1) {
        if (func_80110150(&sp18) != 0) {
            ret = 1;
        }
    }
    D_800E7B20[omCurrentObj->objId] = saved;
    return ret;
}
