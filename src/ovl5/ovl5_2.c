#include "common.h"
#include "GObj.h"
#include "SPObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/save_file.h"
#include "buffers.h"

extern s32 D_8018E030_ovl5[];
extern u8 D_8018E22C_ovl5[];
extern f32 D_80186950_ovl5[];
extern Gfx D_801860A8_ovl5[];
void func_800BB3F0(void);
extern u8 D_8018E258_ovl5;
extern s32 D_80186934_ovl5[];
extern f32 D_80186940_ovl5[];
void func_800A7F74(s32, s32, s32, f32, f32, f32);
extern u8 D_8018E220_ovl5;
void func_8016253C_ovl5(struct GObj *);
extern s32 D_8018E050_ovl5[];
extern u8 D_8018E228_ovl5[];
extern u8 D_8018E208_ovl5[];
s32 func_8015F4C4_ovl5(s32, s32);
f32 func_801619E0_ovl5(s32);
void func_801642A4_ovl5(s32, s32, s32, s32);
typedef union Unk28Words {
    s32 unk0[10];
} Unk28Words;

extern Unk28Words D_80185FF8_ovl5;
s32 func_8015C740_ovl5();
extern u8 D_8018E1E0_ovl5[];
extern u8 D_8018E1E1_ovl5;
extern void *D_80186900_ovl5;
extern void *D_80186908_ovl5;
extern void *D_80186910_ovl5;
void func_800A9864(void *, s32, s32);
void func_800AA018(void *);
void func_800AF27C(void);
extern u8 D_8018E1E2_ovl5;
extern u8 D_8018E1E3_ovl5;
extern s32 D_800D6B24;
extern u32 D_800D6B68;
extern s32 D_8018E020_ovl5;
#include "main/contpad.h"
#include "ovl1/game.h"
typedef struct Unk8Bytes {
    s32 unk0;
    s32 unk4;
} Unk8Bytes;

extern Unk8Bytes D_8018E1E8_ovl5[];

typedef union Unk16Bytes {
    s32 unk0[4];
} Unk16Bytes;

extern Unk16Bytes D_80185FB0_ovl5;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015CD00_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015CE74_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015D2A8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015D458_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015D62C_ovl5.s")

extern void *D_801867AC_ovl5[][2];
extern void *D_8018664C_ovl5[][2];
extern void *D_8018662C_ovl5[];
void func_800AA608(void *, void *, f32, void *, f32);
void func_8015E850_ovl5(GObj *);

void func_8015D864_ovl5(GObj *arg0, s32 arg1) {
    Unk8Bytes sp30 = D_8018E1E8_ovl5[arg1];
    s32 pad0;
    s32 pad1;

    D_800DF150[omCurrentObj->objId] = NULL;
    if (D_8018E1E0_ovl5[arg1] != 0) {
        s32 t = request_track_general(6, 0, 0x70);

        D_800E98E0[t] = 5;
        ((s32 *) D_800E9AA0)[t] = arg1;
    }
    D_8018E1E0_ovl5[arg1] = 0;
    func_800AA018(D_801867AC_ovl5[sp30.unk0][0]);
    func_800AA018(D_801867AC_ovl5[sp30.unk0][1]);
    func_800AF27C();
    func_800AA608(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild, D_8018664C_ovl5[sp30.unk0][0],
                  0.0f, D_8018662C_ovl5[sp30.unk0], 6.0f);
    func_800AA018(D_8018664C_ovl5[sp30.unk0][0]);
    if (D_8018664C_ovl5[sp30.unk0][1] != NULL) {
        func_800AA018(D_8018664C_ovl5[sp30.unk0][1]);
    }
    D_800EA520[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_8015E850_ovl5;
}


#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015DA24_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015DFC8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015E850_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015EAB4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015ED9C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F300_ovl5.s")

s32 func_8015F4C4_ovl5(s32 arg0, s32 arg1) {
    f32 diff;

    diff = (gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] < func_801619E0_ovl5(arg1))
               ? -(gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] - func_801619E0_ovl5(arg1))
               : (gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] - func_801619E0_ovl5(arg1));
    if (diff < 100.0f) {
        return 2;
    }
    if (gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] < gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]]) {
        return 1;
    }
    return 0;
}

#ifdef MIPS_TO_C
/* 4 diffs: ROM schedules the arg1 index addu before the arg0 one */
s32 func_8015F5DC_ovl5(s32 arg0, s32 arg1) {
    f32 a = gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]];
    f32 b = gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]];
    f32 d;

    if (a < b) {
        d = -(a - b);
    } else {
        d = a - b;
    }
    if (d < 200.0f) {
        return 2;
    }
    if (a < b) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F5DC_ovl5.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F67C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F804_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015FB78_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015FE00_ovl5.s")

void func_80160088_ovl5(s32 arg0) {
    D_8018E22C_ovl5[arg0 * 12] = 3;
}

s32 func_801600A8_ovl5(s32 arg0, s32 arg1) {
    if (func_8015F4C4_ovl5((arg1 == 1) ? D_8018E228_ovl5[arg0 * 12 + 8] : D_8018E228_ovl5[arg0 * 12 + 7],
                           D_8018E228_ovl5[arg0 * 12 + 6]) == 2) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160120_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016050C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160810_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160868_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801608BC_ovl5.s")

s32 func_80160924_ovl5(s32 arg0) {
    s32 temp = D_800EA520[D_8018E030_ovl5[arg0]];

    if (temp == 0 || temp == 1 || temp == 2 || temp == 3) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016097C_ovl5.s")

s32 func_801609D0_ovl5(s32 arg0) {
    s32 temp = D_800EA520[D_8018E030_ovl5[arg0]];

    if (temp == 4 || temp == 5 || temp == 0xB) {
        return 0;
    }
    return 1;
}

#ifdef MIPS_TO_C
/* ROM listing has 8 bytes of trailing dead epilogue (jr ra; nop) this C
   cannot emit, so converting it would shorten the TU. */
s32 func_80160A20_ovl5(s32 arg0) {
    switch (D_800EA520[D_8018E030_ovl5[arg0]]) {
        case 4:
        case 5:
        case 0xB:
            return 0;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160A20_ovl5.s")
#endif

s32 func_80160A78_ovl5(s32 arg0) {
    Unk16Bytes sp8 = D_80185FB0_ovl5;
    s32 pad;
    s32 idx;

    idx = D_8018E1E8_ovl5[arg0].unk0;
    return D_800DFBD0[D_8018E030_ovl5[arg0]][sp8.unk0[idx]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160AF8_ovl5.s")

void func_80160D50_ovl5(GObj *arg0) {
    s32 t;
    Vector sp30;
    Vector sp24;
    void *dobj;

    t = D_800E98E0[omCurrentObj->objId];
    dobj = func_80160A78_ovl5(t);
    func_800B2340(&sp30, dobj, D_8018E030_ovl5[t]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp30.z;
    func_800B26D8(&sp24, dobj, D_8018E030_ovl5[t]);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp24.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp24.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp24.z;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160E6C_ovl5.s")

// Draft, 14/76: instruction-exact; the ROM keeps D_800E98E0[objId] in $v0 with
// no stack home, we need an `s32 t` local to get $v0 and that grows the frame
// 0x40 -> 0x48. All 24 declaration permutations swept, with and without t.
#ifdef MIPS_TO_C
extern s32 D_8018E040_ovl5[];
extern s32 D_801868FC_ovl5;

void func_80161078_ovl5(GObj *arg0) {
    void *dobj;
    s32 *p;
    s32 t;
    Vector sp30;
    Vector sp24;

    t = D_800E98E0[omCurrentObj->objId];
    p = &D_8018E040_ovl5[t];
    dobj = D_800DFBD0[*p][D_801868FC_ovl5];
    func_800B2340(&sp30, dobj, *p);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp30.z;
    func_800B26D8(&sp24, dobj, *p);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp24.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp24.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp24.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161078_ovl5.s")
#endif

void func_801611A8_ovl5(GObj *arg0, s32 arg1) {
    func_800A9864(D_80186900_ovl5, 0x1869F, 0x10);
    func_800AA018(D_80186908_ovl5);
    if (D_80186910_ovl5 != NULL) {
        func_800AA018(D_80186910_ovl5);
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_8018E030_ovl5[arg1]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_8018E030_ovl5[arg1]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_8018E030_ovl5[arg1]];
    func_800AF27C();
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

f32 func_80161298_ovl5(s32 arg0, s32 arg1) {
    return D_80186950_ovl5[arg0] * 0.5f + D_80186950_ovl5[arg1] * 0.5f;
}

extern f32 D_800EA6E0[];

#ifdef MIPS_TO_C
/* 8/60: the two 8-byte struct locals sit 4 bytes high (frame-layout anomaly,
   swept both directions) and the two index addu are emitted in the other order. */
s32 func_801612D0_ovl5(s32 arg0, s32 arg1) {
    Unk8Bytes sp2C;
    Unk8Bytes sp24;
    f32 r;
    f32 a;
    f32 b;

    sp2C = D_8018E1E8_ovl5[arg0];
    sp24 = D_8018E1E8_ovl5[arg1];
    r = func_80161298_ovl5(sp2C.unk0, sp24.unk0);
    a = D_800EA6E0[D_8018E030_ovl5[arg0]];
    b = D_800EA6E0[D_8018E030_ovl5[arg1]];
    if ((a < b ? -(a - b) : (a - b)) <= r) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801612D0_ovl5.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801613C0_ovl5.s")

f32 func_8016142C_ovl5(s32 arg0) {
    return (D_800EA6E0[D_8018E030_ovl5[arg0]] - gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]]) * 0.5f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161470_ovl5.s")

void func_801615D8_ovl5(s32 arg0, f32 arg1) {
    D_800EA520[D_8018E030_ovl5[arg0]] = 7;
    D_800EAA60[D_8018E030_ovl5[arg0]] = arg1;
}

void func_80161610_ovl5(s32 arg0) {
    s32 idx = D_8018E030_ovl5[arg0];
    f32 *p = &gEntitiesNextPosXArray[idx];

    *p += D_800EAA60[idx];
    if (D_800EAA60[idx] < 0.0f) {
        if (*p <= D_800EA6E0[idx]) {
            *p = D_800EA6E0[idx];
        }
    } else {
        if (D_800EA6E0[idx] <= *p) {
            *p = D_800EA6E0[idx];
        }
    }
}

s32 func_801616A8_ovl5(void) {
    s32 i;

    for (i = 0; i < 20; i++) {
        if (D_8018E208_ovl5[i] == 0) {
            return 0;
        }
    }
    return 1;
}

s32 func_80161720_ovl5(void) {
    s32 i;

    for (i = 0; i < 20; i++) {
        if (D_8018E208_ovl5[i] != 2) {
            return 0;
        }
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016179C_ovl5.s")

extern u8 D_8018E208_ovl5[];
extern s32 random_soft_s32_range(s32);

s32 func_80161974_ovl5(void) {
    s32 sp28[20];
    s32 count;
    s32 i;

    count = 0;
    for (i = 0; i < 20; i++) {
        if (D_8018E208_ovl5[i] == 0) {
            sp28[count] = i;
            count++;
        }
    }
    return sp28[random_soft_s32_range(count)];
}

extern s32 D_8018E050_ovl5[];

#ifdef MIPS_TO_C
/* 2 diffs: the spilled pointer lands at 0x18($sp), the ROM uses 0x1C -- the
   known frame-layout anomaly, unaffected by local count/order. */
f32 func_801619E0_ovl5(s32 arg0) {
    s32 *p = &D_8018E050_ovl5[arg0];

    return gEntitiesNextPosXArray[*p] + (sinf(*(f32 *) ((u8 *) D_800DE350[*p]->data.dobj->firstChild + 0x38)) * 50.0f);
}
#else
extern f32 sinf(f32);

f32 func_801619E0_ovl5(s32 arg0) {
    return gEntitiesNextPosXArray[D_8018E050_ovl5[arg0]] + sinf(D_800DE350[D_8018E050_ovl5[arg0]]->data.dobj->firstChild->angle.v.z) * 50.0f;
}
#endif

s32 func_80161A54_ovl5(s32 arg0) {
    s32 i;
    f32 diff;

    for (i = 0; i < 4; i++) {
        diff = (gEntitiesNextPosXArray[D_8018E030_ovl5[i]] < func_801619E0_ovl5(arg0))
                   ? -(gEntitiesNextPosXArray[D_8018E030_ovl5[i]] - func_801619E0_ovl5(arg0))
                   : (gEntitiesNextPosXArray[D_8018E030_ovl5[i]] - func_801619E0_ovl5(arg0));
        if (diff < 100.0f) {
            return i;
        }
    }
    return 0xFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161B4C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016253C_ovl5.s")

void func_80162A44_ovl5(GObj *arg0) {
    if (D_8018E220_ovl5 != 0) {
        if (D_800E9FE0[omCurrentObj->objId].as_s32 != 3 && D_800E9FE0[omCurrentObj->objId].as_s32 != 4) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016253C_ovl5);
        }
    }
}

s32 func_80162AB0_ovl5(s32 arg0, f32 arg1, f32 arg2) {
    f32 temp = gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]];
    f32 diff = (temp < arg1) ? -(temp - arg1) : (temp - arg1);

    if (diff < arg2) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80162B1C_ovl5.s")

void func_80162C68_ovl5(GObj *arg0) {
    func_800A7F74(1, 0, D_80186934_ovl5[D_8018E258_ovl5], D_80186940_ovl5[0], D_80186940_ovl5[1], D_80186940_ovl5[2]);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80162CCC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80162E30_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80163CC0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164174_ovl5.s")

void func_801642A4_ovl5(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    Unk28Words sp20 = D_80185FF8_ovl5;
    SPObj *spobj;

    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20.unk0[arg1]);
    spobj->xOffset = arg2;
    spobj->yOffset = arg3;
}

void func_80164344_ovl5(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
    s32 pad;

    if (arg1 >= 100) {
        arg1 = 99;
    }
    func_801642A4_ovl5(arg0, arg1 % 10, (s32) (arg2 + 7.0f), (s32) arg3);
    func_801642A4_ovl5(arg0, arg1 / 10, (s32) arg2, (s32) arg3);
}

u16 func_801643E8_ovl5(s32 arg0) {
    switch (arg0) {
        case 0x1D:
            return gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord;
        case 0x1F:
            return gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord;
        case 0x1E:
            return gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164490_ovl5.s")

void func_801648D8_ovl5(u8 *arg0, u16 *arg1) {
    arg0[0x14] = arg1[0];
    arg0[0x15] = arg1[1];
    arg0[0x16] = arg1[2];
    arg0[0x18] = arg1[3];
    arg0[0x19] = arg1[4];
    arg0[0x1A] = arg1[5];
}

void func_8016490C_ovl5(void) {
}

s32 func_80164914_ovl5(s32 arg0) {
    s32 count = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((arg0 != i) && (D_8018E1E0_ovl5[arg0] < D_8018E1E0_ovl5[i])) {
            count++;
        }
    }
    return count;
}

typedef struct Unk10Bytes {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
} Unk10Bytes;

extern Unk10Bytes D_800D7178[];
extern u8 D_8018E224_ovl5[];
s32 func_80164914_ovl5(s32);

#ifdef MIPS_TO_C
/* 4 diffs: ROM stores before both induction increments; we sink the sw into
   the branch delay slot. The empty `if` reproduces the dead $s2 induction.
   Swept: for/while/do-while, != vs <, pointer inductions, dead-local read,
   volatile on either array (the vu16 lever that closed the fb-clear family
   does NOT apply here -- it costs the whole loop), statement order, temp
   local, self-assignment, `continue`, unused local. Clone twins with the
   identical residue: func_8016CB14_ovl5, func_80176108_ovl5. */
void func_801649CC_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        D_800D7178[i].unkC = func_80164914_ovl5(i);
        if (D_8018E224_ovl5[i] != 0) {
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801649CC_ovl5.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164A34_ovl5.s")

void func_80164DB0_ovl5(void) {
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D71D0;
extern s32 D_800D71D4;
extern s32 D_800D71D8;
extern s32 D_800D71DC;
void func_801649CC_ovl5(void);

void func_80164DF0_ovl5(GObj *arg0) {
    if (D_800D6B24 == 0) {
        if (D_8018E020_ovl5 != 0) {
            if ((--D_8018E020_ovl5 == 0) || (gPlayerControllers[0].buttonPressed & (A_BUTTON | START_BUTTON))) {
                D_800D6B68 = gGameState;
                gGameState = 0x20;
                func_801649CC_ovl5();
                D_800D71D0 = D_8018E1E0_ovl5[0];
                D_800D71D4 = D_8018E1E1_ovl5;
                D_800D71D8 = D_8018E1E2_ovl5;
                D_800D71DC = D_8018E1E3_ovl5;
                func_80164DB0_ovl5();
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164EA8_ovl5.s")

void gameSetUpdateRate(f32);
void func_800AAF34(s32, s32, f32);
extern s32 D_80186930_ovl5;

void func_801650C0_ovl5(void) {
    s32 i;
    s32 t;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    func_800AE048(0x100);
    func_800AE0F0();
    func_800A6E64();
    func_800A78D0(0);
    func_800A8724(1);
    func_80164EA8_ovl5();
    func_800A6BC0(7);
    func_800AAF34(0x10, D_80186930_ovl5, 0.0f);
    func_800A71A0(0x10);
    func_800A7A70(1, 0x30012, 0x30013);
    D_800E98E0[request_track_3(6, 0, 0x70)] = 1;
    if (3 != D_8018E258_ovl5) {
        D_800E98E0[request_track_general(6, 0, 0x70)] = 0xB;
    }
    D_800E98E0[request_track_3(6, 0, 0x70)] = 8;
    for (i = 0; i != 4; i++) {
        t = request_track_general(6, 0, 0x70);
        D_800E98E0[t] = 2;
        ((s32 *) D_800E9AA0)[t] = i;
        t = request_track_3(6, 0, 0x70);
        D_800E98E0[t] = 7;
        ((s32 *) D_800E9AA0)[t] = i;
        t = request_track_general(6, 0, 0x70);
        D_800E98E0[t] = 3;
        ((s32 *) D_800E9AA0)[t] = i;
        t = request_track_general(6, 0, 0x70);
        D_800E98E0[t] = 4;
        ((s32 *) D_800E9AA0)[t] = i;
    }
    D_800E98E0[func_800AEA64(6, 0, 0x70)] = 9;
    D_800E98E0[func_800AEA64(6, 0, 0x70)] = 6;
    HS64_omMakeGObj(0, &func_80164DF0_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_8016534C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_801860A8_ovl5);
}

// PADDING TRAP (padtrap: trap, 5 words after .size) -- converting this would
// shorten the TU and shift the segment, so the pragma must stay. The body below
// is the framebuffer-clear form proved byte-exact on func_8017CC3C_ovl5 (the
// vu16 casts are what stop IDO hoisting the D_803D6900 induction bump); it is
// kept live for the PC port, which builds with NON_MATCHING.
#ifdef NON_MATCHING
#include "main/vi.h"
#include "main/gtl.h"

extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_801860D8_ovl5;
extern SceneSetup D_801860F4_ovl5;

void func_80165370_ovl5(void) {
    s32 i;

    func_800A74D8();
    ((s32 *) D_800D7178)[0x1D] = 0;
    ((s32 *) D_800D7178)[0x1E] = 0;
    D_801860D8_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_801860D8_ovl5);
    D_801860F4_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_801860F4_ovl5);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80165370_ovl5.s")
#endif

