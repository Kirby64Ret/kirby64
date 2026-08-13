#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800E1B50.h"

extern u32 D_800BE4EC;
extern Gfx D_80227440_ovl18[];

extern Gfx *gDisplayListHeads[4];

void HS64_Translate(Mtx *, f32, f32, f32);

void func_8021E978_ovl18(void);
void func_8021ED10_ovl18();
void func_8021ED3C_ovl18(void);
void func_800B1900(s32);
void func_800B1BF0(s32, s32);
void dma_read(u32, void *, u32);

extern s32 D_800E83E0[];
extern s32 D_800E7CE0[];
extern u16 D_800E77A0[];
extern s32 D_800E98E0[];
extern f32 D_800D6E58;
extern s32 D_802297E4_ovl18;
extern void (*D_802297E0_ovl18)(void);
extern f32 gEntitiesAngleXArray[];
extern f32 gEntitiesAngleYArray[];
extern f32 gEntitiesAngleZArray[];
extern f32 gEntitiesScaleXArray[];
extern f32 gEntitiesScaleYArray[];
extern f32 gEntitiesScaleZArray[];
extern s32 gEntityGObjProcessArray[];

void func_800B19F4(s32, u32, struct UnkStruct800D70D8 *);
void func_800BB468(s32, s32);
s32 func_800BC11C(f32);
void func_801A3E80_ovl7(struct GObj *);
void assign_new_process_entry(s32, void (*)(struct GObj *));
extern void func_80111550(void *);
s32 func_80111C88(s32 *, u32);
void func_80111ECC(s32);
void play_sound(s32);
s32 func_8021F70C_ovl18(void);
void func_8021FB18_ovl18(void);
void func_8021F4E8_ovl18(void);
s32 func_8021F658_ovl18(void);
void func_8021F970_ovl18(void);
void func_8021FF80_ovl18(void);
void func_80220038_ovl18(void);


void func_8021DF20_ovl18(struct GObj *arg0) {
    Mtx *temp_a0;

    if ((D_800DD8D0[arg0->objId] & 0x40) == 0) {
        if ((D_800E7880[arg0->objId] == 0) || !(D_800BE4EC & 1)) {

            gDPPipeSync(gDisplayListHeads[2]++);

            temp_a0 = (Mtx *)gDynamicBuffer1.top;

            gDynamicBuffer1.top += sizeof(Mtx);

            HS64_Translate(temp_a0, gEntitiesNextPosXArray[arg0->objId], gEntitiesNextPosYArray[arg0->objId], gEntitiesNextPosZArray[arg0->objId]);

            gSPMatrix(gDisplayListHeads[2]++, temp_a0, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPDisplayList(gDisplayListHeads[2]++, &D_80227440_ovl18);
            gSPPopMatrix(gDisplayListHeads[2]++, G_MTX_MODELVIEW);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021E050_ovl18.s")

extern u8 D_8022BCD8_ovl18[][4];

s32 func_8021E4CC_ovl18(s32 arg0) {
    u8 *temp_v0;
    s32 phi_v1;

    temp_v0 = D_8022BCD8_ovl18[arg0];
    phi_v1 = 0;
    if (temp_v0[0] == 0) {
        phi_v1++;
    }
    if (temp_v0[1] == 0) {
        phi_v1++;
    }
    if (temp_v0[2] == 0) {
        phi_v1++;
    }
    if (temp_v0[3] == 0) {
        phi_v1++;
    }
    return phi_v1;
}

struct Ovl18Cue {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 pad1[7];
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u8 pad2[0x1A];
}; /* 0x24 */

struct Ovl18Row {
    /* 0x00 */ u8 pad0[4];
    /* 0x04 */ struct Ovl18Cue *unk4;
    /* 0x08 */ u8 pad8[0x10];
}; /* 0x18 */

struct Ovl18Tbl {
    /* 0x00 */ struct Ovl18Row *unk0;
    /* 0x04 */ u8 pad4[0x18];
}; /* 0x1C */

extern struct Ovl18Tbl D_8022959C_ovl18[];
extern s32 D_8022BC90_ovl18;
extern u8 D_8022BCD0_ovl18[];

void func_8021E528_ovl18(s32 arg0, s32 arg1, s32 arg2) {
    extern u8 D_8022BCF8_ovl18[][4];
    extern u8 D_8022BD18_ovl18[][4];
    extern u8 D_800E7650[];
    void ohSleep(s32);
    s32 func_8021E050_ovl18(s32, s32, s32);
    s32 n;
    s32 i;
    s32 ret;

    ohSleep(D_8022959C_ovl18[D_8022BC90_ovl18].unk0[arg1].unk4[arg2].unk8);
    if (D_8022BCD0_ovl18[arg1] != 1) {
        while (1) {
            if (func_8021E4CC_ovl18(arg1) != 0) {
                break;
            }
            ohSleep(1);
        }
        for (i = 0, n = 4; i != n; i++) {
            if (D_8022BCD8_ovl18[arg1][i] == 0) {
                break;
            }
        }
        ret = func_8021E050_ovl18(arg0, arg1, arg2);
        D_8022BCD8_ovl18[arg1][i] = ret;
        D_8022BCF8_ovl18[arg1][i] = D_800E7650[ret];
        D_8022BD18_ovl18[arg1][i] = D_8022959C_ovl18[D_8022BC90_ovl18].unk0[arg1].unk4[arg2].unk0;
        while (1) {
            if (D_8022BCD8_ovl18[arg1][i] == 0) {
                break;
            }
            if (D_800E7650[D_8022BCD8_ovl18[arg1][i]] != D_8022BCF8_ovl18[arg1][i]) {
                break;
            }
            ohSleep(1);
        }
    }
}

void func_8021E6E0_ovl18(s32 arg0, s32 arg1, s32 arg2) {
    extern u8 D_8022BCF8_ovl18[][4];
    extern u8 D_8022BD18_ovl18[][4];
    extern u8 D_800E7650[];
    void ohSleep(s32);
    s32 func_8021E050_ovl18(s32, s32, s32);
    s32 n;
    s32 i;
    s32 ret;

    ohSleep(D_8022959C_ovl18[D_8022BC90_ovl18].unk0[arg1].unk4[arg2].unk8);
    if (D_8022BCD0_ovl18[arg1] != 1) {
        while (1) {
            if (func_8021E4CC_ovl18(arg1) != 0) {
                break;
            }
            ohSleep(1);
        }
        for (i = 0, n = 4; i != n; i++) {
            if (D_8022BCD8_ovl18[arg1][i] == 0) {
                break;
            }
        }
        ret = func_8021E050_ovl18(arg0, arg1, arg2);
        D_8022BCD8_ovl18[arg1][i] = ret;
        D_8022BCF8_ovl18[arg1][i] = D_800E7650[ret];
        D_8022BD18_ovl18[arg1][i] = D_8022959C_ovl18[D_8022BC90_ovl18].unk0[arg1].unk4[arg2].unk0;
    }
}

extern u8 D_8022BCF8_ovl18[][4];
extern u8 D_8022BD18_ovl18[][4];
extern u8 D_800E7650[];

void func_8021E858_ovl18(UNUSED s32 arg0) {
    s32 i;
    s32 idx;
    s32 n;
    u8 *p;

    idx = D_800E98E0[omCurrentObj->objId];
    p = D_8022BCD8_ovl18[idx];
    for (i = 0, n = 4; i != n; i++, p++) {
        if (*p != 0) {
            if (D_800E7650[*p] != D_8022BCF8_ovl18[idx][i]) {
                if ((D_8022BD18_ovl18[idx][i] & 0x80) != 0) {
                    D_800D6E58 -= 1.0f;
                    func_800BC11C(D_800D6E58);
                }
                *p = 0;
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021E978_ovl18.s")

/* K&R definition is load-bearing: the parameter home slot (sw $a0) is only
 * emitted with a declared parameter, and a prototyped one would reject the
 * zero-argument call in func_8021F400_ovl18. */
void func_8021ED10_ovl18(arg0)
s32 arg0;
{
    func_800B1900(((u16 *)omCurrentObj)[1]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021ED3C_ovl18.s")

// checks bytes in the PIF as a tamper check
u8 func_8021F304_ovl18(void) {
    s32 buf[4];

    dma_read(0x00000F10, &buf, 0x10);
    if (buf[0] != 0x04080040) {
        return 0;
    } else if (buf[1] != 0x02081040) {
        return 0;
    } else {
        return 1;
    }
}

extern u8 utilTamperCheck(void);

/* Checksums the two functions' own instruction words and compares them.
 * The zeroed sums must be assigned BEFORE the two pointers -- that order is
 * what puts the sums in $v0/$v1 and the walkers in $a0/$a2. */
s32 func_8021F35C_ovl18(void) {
    s32 sum1;
    s32 sum2;
    s32 *p;
    s32 *q;
    s32 i;

    sum2 = 0;
    sum1 = 0;
    p = (s32 *) utilTamperCheck;
    q = (s32 *) func_8021F304_ovl18;
    i = 0;
    do {
        sum1 += *p++;
        sum2 += *q++;
        i++;
    } while (i != 10);
    if (sum1 != sum2) {
        return 0;
    }
    return 1;
}

void func_8021F400_ovl18(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
        case 0:
            func_8021ED3C_ovl18();
            break;
        case 1:
            func_8021E978_ovl18();
            break;
        case 2:
            func_8021ED10_ovl18();
    }
    func_800B1900(omCurrentObj->objId & 0xFFFF);
}

extern f32 D_800D6E58;
void func_8021F4A0_ovl18(void) {
    D_800E7B20[omCurrentObj->objId] = D_800D6E58;
    D_800E7CE0[omCurrentObj->objId] = 0x1E;
    D_800D7098.unk0 = 0;
}

void func_8021F4E8_ovl18(void) {
    struct UnkStruct800E1B50 *temp_a0;

    temp_a0 = D_800E1B50[omCurrentObj->objId];
    if (D_800E83E0[omCurrentObj->objId] == 2 || D_800E83E0[omCurrentObj->objId] == 1) {
        temp_a0->unk43 = 0;
        D_800D6E58 = D_800E7B20[omCurrentObj->objId];
        if (D_800E83E0[omCurrentObj->objId] == 2) {
            func_8021F970_ovl18();
        }
        if (func_800BC11C(D_800D6E58) == 0) {
            func_800BB468(2, 0);
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        }
    }
}

s32 func_8021F5CC_ovl18(void) {
    struct UnkStruct800E1B50 *temp_v0;

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    if (temp_v0 == NULL) {
        return 0;
    }
    if (temp_v0->unk8C == NULL) {
        return 0;
    }
    func_80111550((void *) omCurrentObj->objId);
    func_80111ECC(func_80111C88(temp_v0->unk8C, omCurrentObj->objId));
    return func_8021F658_ovl18();
}

s32 func_8021F658_ovl18(void) {
    struct UnkStruct800E1B50 *sp24;
    s32 sp20;
    s32 sp1C;

    sp24 = D_800E1B50[omCurrentObj->objId];
    sp1C = D_800E77A0[omCurrentObj->objId] - 0x4E;
    sp20 = func_8021F70C_ovl18();
    func_8021F4E8_ovl18();
    if (D_800D7098.unk0 != 0) {
        sp24->unk3D = sp24->unk3D - 1;
        if (sp24->unk3D != 0) {
            /* the byte-offset spelling is load-bearing: the [i * 2] array form
             * costs one temp slot */
            (*(void (**)(void)) ((u8 *) &D_802297E0_ovl18 + sp1C * 8))();
        } else {
            func_8021FB18_ovl18();
        }
    }
    return sp20;
}

/* FACTORY: 135/152, one register-allocation choice, everything else exact.
   Cross-segment clone of ovl7_2's func_8019F650_ovl7 / func_8019FA68_ovl7 --
   same three func_80110B00/FD4/150 probes, same unk43/unk3E/unk3F/unk3A stores,
   same D_800E83E0 switch -- and it was ported from that draft.  The frame
   (0x50), the info struct at 0x2C and its 0x1C size are exact and needed the
   leading `s32 pad;`, same as the donor.  The `&omCurrentObj` hoist the donor
   cannot reach lands here for free off the inline-the-field lever: IDO puts the
   address in a SAVED register exactly as the ROM does.
   Residue: the ROM spends its one saved register on &omCurrentObj ($s0) and
   SPILLS `ent` to 0x48($sp), re-storing it in every jal delay slot; ours keeps
   `ent` in $s0 and pushes the address to $s1, so both saved-register names are
   swapped and the spill/reload pairs are absent.  Two variants spent: inlining
   `D_800E1B50[omCurrentObj->objId]->` at every use to demote `ent` to a
   compiler temp (219/219 -- it stops the array load being CSEd at all and
   costs 67 instructions), and declaring `ent` after the struct (141/152, moves
   the struct to 0x30).  A user local wins a callee-saved register here and the
   ROM's does not; that is not reachable from source shape.  Permuter food. */
#ifdef NON_MATCHING
struct Ovl18AnimInfoA {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0xC];
};

s32 func_8021F70C_ovl18(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_801A0244_ovl7(s32);
    void func_8019EBCC_ovl7(struct GObj *);
    s32 pad;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl18AnimInfoA sp2C;

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
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021F70C_ovl18.s")
#endif

void func_8021F970_ovl18(void) {
    struct UnkStruct800E1B50 *sp1C;
    s32 sp18;

    sp1C = D_800E1B50[omCurrentObj->objId];
    sp18 = D_800E77A0[omCurrentObj->objId] - 0x4E;
    play_sound(0x28);
    sp1C->unk3D = ((u8 *) &D_802297E4_ovl18)[sp18 * 8];
    D_800E7CE0[omCurrentObj->objId] = sp1C->unk3D;
    D_800D70D8.unk0 = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800D70D8.unk4 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800D70D8.unk8 = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800D70D8.unkC = gEntitiesAngleXArray[omCurrentObj->objId];
    D_800D70D8.unk10 = gEntitiesAngleYArray[omCurrentObj->objId];
    D_800D70D8.unk14 = gEntitiesAngleZArray[omCurrentObj->objId];
    D_800D70D8.unk18 = gEntitiesScaleXArray[omCurrentObj->objId];
    D_800D70D8.unk1C = gEntitiesScaleYArray[omCurrentObj->objId];
    D_800D70D8.unk20 = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800D7098.unk0 = 1;
    D_800D7098.unk4 = 0;
    D_800D7098.unk8 = 0;
    D_800D7098.unkC = 0;
    D_800D7098.unk10 = 0;
    D_800D7098.unk14 = 0;
    D_800D7098.unk18 = 0;
    func_800B19F4(6, omCurrentObj->objId, &D_800D70D8);
}

void func_8021FB18_ovl18(void) {
    D_800E7CE0[omCurrentObj->objId] = 0;
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_800D70D8.unk0;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800D70D8.unk4;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800D70D8.unk8;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800D70D8.unkC;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800D70D8.unk10;
    gEntitiesAngleZArray[omCurrentObj->objId] = D_800D70D8.unk14;
    gEntitiesScaleXArray[omCurrentObj->objId] = D_800D70D8.unk18;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_800D70D8.unk1C;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_800D70D8.unk20;
    D_800D7098.unk0 = 0;
    func_800B1BF0(0, omCurrentObj->objId);
}

/* The `*(s32 *) &D_800D7098.unk4` reload inside the if IS load-bearing -- the
 * plain member read is CSEd away. */
void func_8021FC40_ovl18(void) {
    struct UnkStruct800E1B50 *p;
    s32 v;
    s32 temp;

    p = D_800E1B50[omCurrentObj->objId];
    if (p->unk3D == 0x17) {
        D_800D7098.unk8 = 1;
    }
    v = D_800D7098.unk4;
    if (ABS(v) >= 3) {
        D_800D7098.unk8 = -D_800D7098.unk8;
        v = *(s32 *) &D_800D7098.unk4;
    }
    temp = D_800D7098.unk8 + v;
    gEntitiesScaleXArray[omCurrentObj->objId] = ((D_800D70D8.unk18 * 0.12f) * (f32) temp) + D_800D70D8.unk18;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_800D70D8.unk1C - ((D_800D70D8.unk1C * 0.12f) * (f32) temp);
    gEntitiesScaleZArray[omCurrentObj->objId] = ((D_800D70D8.unk20 * 0.12f) * (f32) temp) + D_800D70D8.unk20;
    D_800D7098.unk4 = temp;
}

/* 0.20943952f now emitted by this TU */
/* 0.20943952f now emitted by this TU */
void func_8021FD48_ovl18(void) {
    D_800D7098.unk4 = D_800D7098.unk4 + 1;
    if (D_800E77A0[omCurrentObj->objId] == 0x56) {
        gEntitiesAngleXArray[omCurrentObj->objId] =
            D_800D70D8.unkC - (*(s32 *) &D_800D7098.unk4 * 0.20943952f);
    } else {
        gEntitiesAngleYArray[omCurrentObj->objId] =
            (*(s32 *) &D_800D7098.unk4 * 0.20943952f) + D_800D70D8.unk10;
    }
}

/* 45/57 -> 40/54.  Two fixes over the previous draft, both proved on the
 * siblings in this file: this TU's .rodata is MIGRATED, so the constant has to
 * be the LITERAL 0.17453294f (an `extern f32 D_8022BB8C_ovl18` would not even
 * link), and the ROM's two likely-branch exits out of the sign test are ONE
 * `if (old >= 0 || temp > 0)` -- two separate `if ... goto out` statements do
 * not put `addu $a1, $a0, $v0` in either delay slot.
 * What is left is a whole-function register rotation: the ROM keeps
 * &D_800D7098 in $a2 and temp/ABS(temp) in $v0/$a0, IDO uses $a3 and $a0/$v0,
 * and IDO hoists the `lw objId` into the two likely-branch delay slots where
 * the ROM loads it once in the tail.  Swept at 40-47: an explicit
 * `struct GObj *obj` local (47), `old = -D_800D7098.unk8` vs a reload-then-
 * negate local, the product inline vs folded into `ft` first. */
#ifdef NON_MATCHING
void func_8021FDF4_ovl18(void) {
    struct UnkStruct800E1B50 *ent;
    s32 temp;
    s32 old;
    s32 sum;
    f32 ft;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent->unk3D == 0x17) {
        D_800D7098.unk8 = 1;
    }
    temp = D_800D7098.unk4;
    if (ABS(temp) < 3) {
        old = D_800D7098.unk8;
        if (old >= 0 || temp > 0) {
            sum = old + temp;
            goto out;
        }
    }
    old = -D_800D7098.unk8;
    D_800D7098.unk8 = old;
    sum = old + *(s32 *) &D_800D7098.unk4;
out:
    ft = (f32) sum;
    ft = 0.17453294f * ft;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800D70D8.unkC + ft;
    *(s32 *) &D_800D7098.unk4 = sum;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021FDF4_ovl18.s")
#endif
void func_8021FEBC_ovl18(void) {
    struct UnkStruct800E1B50 *p;
    s32 v;
    s32 temp;
    f32 ft;

    p = D_800E1B50[omCurrentObj->objId];
    if (p->unk3D == 7) {
        D_800D7098.unk8 = 1;
    }
    v = D_800D7098.unk4;
    if (ABS(v) >= 2) {
        D_800D7098.unk8 = -D_800D7098.unk8;
        v = *(s32 *) &D_800D7098.unk4;
    }
    temp = D_800D7098.unk8 + v;
    ft = (f32) temp;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800D70D8.unk1C * 3.0f * ft + D_800D70D8.unk4;
    D_800D7098.unk4 = temp;
}

/* Folding the product back into `ft` before the add is load-bearing: with the
 * product written inline IDO canonicalises the outermost `add.s` to
 * product-first whatever the source order, and only a separate assignment
 * statement gives the ROM's `add.s $f18, $f16, $f10`. */
void func_8021FF80_ovl18(void) {
    struct UnkStruct800E1B50 *p;
    s32 v;
    s32 temp;
    f32 ft;

    p = D_800E1B50[omCurrentObj->objId];
    if (p->unk3D == 0x17) {
        D_800D7098.unk8 = 1;
    }
    v = D_800D7098.unk4;
    if (ABS(v) >= 3) {
        D_800D7098.unk8 = -D_800D7098.unk8;
        v = *(s32 *) &D_800D7098.unk4;
    }
    temp = D_800D7098.unk8 + v;
    ft = (f32) temp;
    ft = 0.20943952f * ft;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800D70D8.unkC + ft;
    D_800D7098.unk4 = temp;
}

/* 67/86, new draft.  Structurally right: both halves are the ABS()/sign-flip
 * idiom of func_8021FC40/func_8021FEBC above, the Y half with the ROM's
 * `if (old >= 0 || temp > 0)` pair of likely branches and the Z half with the
 * plain `bnel` form.  Two things are already forced and must stay: the two
 * stores of 1 share ONE constant register only if unk18/unk10 are written
 * through the same type (they are declared s32/u32), and reusing ONE local for
 * both ABS(v) and `old` is what makes the ROM's single $a0 hold both.
 * The residue is a whole-function register rotation of exactly one slot: the
 * ROM has v in $v0 / abs+old in $a0 / sum in $a1, IDO has $a0 / $a1 / $a2,
 * because IDO materialises the constant 1 AFTER the `lbu unk3D` (so it takes
 * the just-freed $v0) where the ROM materialises it before (so it takes $t9).
 * Downstream of that IDO fills the two likely-branch delay slots with the
 * hoisted `lw objId` where the ROM fills them with the 1.25f `lui`.
 * Swept: sharing the constant as s32/u32/both-cast/chained, a separate `old`
 * vs one reused temp, goto vs nested if for the negate path. */
#ifdef NON_MATCHING
void func_80220038_ovl18(void) {
    struct UnkStruct800E1B50 *ent;
    s32 v;
    s32 old;
    s32 sum;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent->unk3D == 0x17) {
        D_800D7098.unk18 = *(s32 *) &D_800D7098.unk10 = 1;
    }
    v = D_800D7098.unkC;
    old = ABS(v);
    if (old < 6) {
        old = D_800D7098.unk10;
        if (old >= 0 || v > 0) {
            goto skip;
        }
    }
    old = -D_800D7098.unk10;
    D_800D7098.unk10 = old;
    v = *(s32 *) &D_800D7098.unkC;
skip:
    sum = old + v;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800D70D8.unk1C * 1.25f * (f32) sum + D_800D70D8.unk4;
    D_800D7098.unkC = sum;
    v = D_800D7098.unk14;
    if (ABS(v) >= 6) {
        D_800D7098.unk18 = -D_800D7098.unk18;
        v = *(s32 *) &D_800D7098.unk14;
    }
    sum = D_800D7098.unk18 + v;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800D70D8.unk20 * 0.69999999f * (f32) sum + D_800D70D8.unk8;
    D_800D7098.unk14 = sum;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_80220038_ovl18.s")
#endif

// last function in this translation unit: its listing carries the
// TU's trailing alignment padding, which C does not emit

void func_80220184_ovl18(void) {
    func_8021FF80_ovl18();
    func_80220038_ovl18();
}


