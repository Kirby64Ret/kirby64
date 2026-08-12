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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021E528_ovl18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021E6E0_ovl18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021E858_ovl18.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021F70C_ovl18.s")

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

#ifdef NON_MATCHING
/* 12/66: the integer half is exact. Residue is the FP allocation order --
 * the ROM allocates the CSEd D_8022BB80_ovl18 load LAST ($f16) after both
 * D_800D70D8 temps, IDO allocates it second. Swept: local vs inline extern,
 * a named local for the (f32) conversion, a named local for unk18, and both
 * multiply operand orders. The `*(s32 *) &D_800D7098.unk4` reload inside the
 * if IS load-bearing -- the plain member read is CSEd away. */
extern f32 D_8022BB80_ovl18;

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
    gEntitiesScaleXArray[omCurrentObj->objId] = ((D_800D70D8.unk18 * D_8022BB80_ovl18) * (f32) temp) + D_800D70D8.unk18;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_800D70D8.unk1C - ((D_800D70D8.unk1C * D_8022BB80_ovl18) * (f32) temp);
    gEntitiesScaleZArray[omCurrentObj->objId] = ((D_800D70D8.unk20 * D_8022BB80_ovl18) * (f32) temp) + D_800D70D8.unk20;
    D_800D7098.unk4 = temp;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021FC40_ovl18.s")
#endif

extern f32 D_8022BB84_ovl18;
extern f32 D_8022BB88_ovl18;
void func_8021FD48_ovl18(void) {
    D_800D7098.unk4 = D_800D7098.unk4 + 1;
    if (D_800E77A0[omCurrentObj->objId] == 0x56) {
        gEntitiesAngleXArray[omCurrentObj->objId] =
            D_800D70D8.unkC - (*(s32 *) &D_800D7098.unk4 * D_8022BB84_ovl18);
    } else {
        gEntitiesAngleYArray[omCurrentObj->objId] =
            (*(s32 *) &D_800D7098.unk4 * D_8022BB88_ovl18) + D_800D70D8.unk10;
    }
}

/* 45/57 and one instruction short.  The `goto out` shape below is what
 * reproduces the ROM's two likely-branch exits out of the ABS()/sign test;
 * the residue is a $v0/$v1 swap (ROM keeps omCurrentObj in $v1 and the
 * D_800E1B50 entry in $v0) plus one missing instruction.  Swept: an explicit
 * `struct GObj *obj` local, inline omCurrentObj at every use, and if/else vs
 * goto for the negate path. */
#ifdef NON_MATCHING
extern f32 D_8022BB8C_ovl18;

void func_8021FDF4_ovl18(void) {
    struct UnkStruct800E1B50 *ent;
    struct GObj *obj;
    s32 temp;
    s32 old;
    s32 sum;

    obj = omCurrentObj;
    ent = D_800E1B50[obj->objId];
    if (ent->unk3D == 0x17) {
        D_800D7098.unk8 = 1;
    }
    temp = *(s32 *) &D_800D7098.unk4;
    if (ABS(temp) < 3) {
        old = D_800D7098.unk8;
        if (old >= 0) {
            sum = old + temp;
            goto out;
        }
        if (temp > 0) {
            sum = old + temp;
            goto out;
        }
    }
    old = D_800D7098.unk8;
    temp = *(s32 *) &D_800D7098.unk4;
    old = -old;
    D_800D7098.unk8 = old;
    sum = old + temp;
out:
    gEntitiesAngleXArray[obj->objId] = D_800D70D8.unkC + (D_8022BB8C_ovl18 * sum);
    *(s32 *) &D_800D7098.unk4 = sum;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021FDF4_ovl18.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021FEBC_ovl18.s")

#ifdef NON_MATCHING
/* 5/46: instruction schedule is exact. The ROM numbers the three FP temps in
 * SCHEDULE order (constant $f4, mtc1 $f6, cvt $f8); IDO numbers them in
 * source-tree order and puts the constant last. All six operand orders of the
 * multiply and the add compile identically -- IDO canonicalises them -- and an
 * implicit conversion, a named f32 local and a store-then-reload of unk4 are
 * all worse. */
extern f32 D_8022BB90_ovl18;

void func_8021FF80_ovl18(void) {
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
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800D70D8.unkC + (D_8022BB90_ovl18 * (f32) temp);
    D_800D7098.unk4 = temp;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021FF80_ovl18.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_80220038_ovl18.s")

// last function in this translation unit: its listing carries the
// TU's trailing alignment padding, which C does not emit
#ifdef NON_MATCHING
void func_80220184_ovl18(void) {
    func_8021FF80_ovl18();
    func_80220038_ovl18();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_80220184_ovl18.s")
#endif