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

extern void *D_8018666C_ovl5[][2];
extern void *D_8018668C_ovl5[][2];
extern void *D_801866CC_ovl5[][2];
extern void *D_801866EC_ovl5[][2];
void func_80161610_ovl5(s32);

void func_8015D2A8_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    Unk8Bytes sp30 = D_8018E1E8_ovl5[arg1];
    s32 i;

    if (arg2 != 0) {
        if (D_800EAA60[omCurrentObj->objId] < 0.0f) {
            func_800AA018(D_8018668C_ovl5[sp30.unk0][0]);
            func_800AA018(D_8018668C_ovl5[sp30.unk0][1]);
        } else {
            func_800AA018(D_8018666C_ovl5[sp30.unk0][0]);
            func_800AA018(D_8018666C_ovl5[sp30.unk0][1]);
        }
    } else {
        if (D_800EAA60[omCurrentObj->objId] < 0.0f) {
            func_800AA018(D_801866EC_ovl5[sp30.unk0][0]);
            func_800AA018(D_801866EC_ovl5[sp30.unk0][1]);
        } else {
            func_800AA018(D_801866CC_ovl5[sp30.unk0][0]);
            func_800AA018(D_801866CC_ovl5[sp30.unk0][1]);
        }
    }
    for (i = 0; i != 10; i++) {
        func_80161610_ovl5(arg1);
        ohSleep(1);
    }
}

extern s32 func_800AF230(void);

void func_8015D458_ovl5(GObj *arg0, s32 arg1) {
    Unk8Bytes sp78 = D_8018E1E8_ovl5[arg1];
    f32 x = D_800EAA60[omCurrentObj->objId];
    s32 pad0;
    s32 pad1;

    while (func_800AF230() == 0) {
        if (6 != D_800EA520[omCurrentObj->objId]) {
            return;
        }
        D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] + x;
        if (D_800EAA60[omCurrentObj->objId] < 0.0f) {
            D_800E9C60[omCurrentObj->objId] = 1;
            if (D_800EA6E0[omCurrentObj->objId] < -900.0f) {
                D_800EA6E0[omCurrentObj->objId] = -900.0f;
            }
        } else {
            D_800E9C60[omCurrentObj->objId] = 2;
            if (900.0f < D_800EA6E0[omCurrentObj->objId]) {
                D_800EA6E0[omCurrentObj->objId] = 900.0f;
            }
        }
        ohSleep(1);
    }
}

void func_8015D62C_ovl5(GObj *arg0, s32 arg1) {
    Unk8Bytes sp68 = D_8018E1E8_ovl5[arg1];
    f32 x = D_800EAA60[omCurrentObj->objId];

    if (x < 0.0f) {
        func_800AA018(D_801866EC_ovl5[sp68.unk0][0]);
        func_800AA018(D_801866EC_ovl5[sp68.unk0][1]);
    } else {
        func_800AA018(D_801866CC_ovl5[sp68.unk0][0]);
        func_800AA018(D_801866CC_ovl5[sp68.unk0][1]);
    }
    while (func_800AF230() == 0) {
        if (7 != D_800EA520[omCurrentObj->objId]) {
            return;
        }
        D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] + x;
        if (x < 0.0f) {
            D_800E9C60[omCurrentObj->objId] = 1;
            if (D_800EA6E0[omCurrentObj->objId] < -900.0f) {
                D_800EA6E0[omCurrentObj->objId] = -900.0f;
            }
        } else {
            D_800E9C60[omCurrentObj->objId] = 2;
            if (900.0f < D_800EA6E0[omCurrentObj->objId]) {
                D_800EA6E0[omCurrentObj->objId] = 900.0f;
            }
        }
        ohSleep(1);
    }
}

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

extern u8 D_8018E024_ovl5;
extern u8 D_8018E025_ovl5;
extern u8 D_8018E224_ovl5[];
s32 func_80160810_ovl5(s32);
void func_8015ED9C_ovl5(s32);

void func_8015E850_ovl5(GObj *arg0) {
    s32 idx = ((s32 *) D_800E9AA0)[omCurrentObj->objId];
    f32 temp;

    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
        return;
    }
    if (D_8018E025_ovl5 != 0) {
        return;
    }
    if (D_8018E024_ovl5 != 0) {
        return;
    }
    if (func_80160810_ovl5(idx) == 0) {
        return;
    }
    if (D_8018E1E0_ovl5[idx] >= 0xA) {
        temp = 24.0f;
    } else if (D_8018E1E0_ovl5[idx] >= 5) {
        temp = 32.0f;
    } else {
        temp = 40.0f;
    }
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    if (D_8018E224_ovl5[idx] != 4) {
        func_8015ED9C_ovl5(idx);
        return;
    }
    if (gPlayerControllers[idx].buttonPressed & A_BUTTON) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    }
    if (gPlayerControllers[idx].buttonHeld & R_JPAD) {
        D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] + temp;
        if (900.0f < D_800EA6E0[omCurrentObj->objId]) {
            D_800EA6E0[omCurrentObj->objId] = 900.0f;
        }
        D_800E9C60[omCurrentObj->objId] = 2;
    } else if (gPlayerControllers[idx].buttonHeld & L_JPAD) {
        D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] - temp;
        if (D_800EA6E0[omCurrentObj->objId] < -900.0f) {
            D_800EA6E0[omCurrentObj->objId] = -900.0f;
        }
        D_800E9C60[omCurrentObj->objId] = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015EAB4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015ED9C_ovl5.s")

#ifdef NON_MATCHING
// 8 diffs: $s6/$s7 are swapped -- the ROM gives $s7 to the CSE'd
// &D_8018E030_ovl5[arg0] base and $s6 to `dir`; IDO does the reverse.
s32 func_8015F300_ovl5(s32 arg0, s32 arg1) {
    s32 dir;
    s32 count;
    s32 i;

    if (gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]] < gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]]) {
        dir = 1;
    } else {
        dir = 0;
    }
    count = 0;
    for (i = 0; i != 4; i++) {
        if (i == arg0) {
            continue;
        }
        if (dir != 0) {
            if ((gEntitiesNextPosXArray[D_8018E030_ovl5[i]] < gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] &&
                 gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]] < gEntitiesNextPosXArray[D_8018E030_ovl5[i]]) ||
                func_8015F4C4_ovl5(i, arg1) == 2) {
                count++;
            }
        } else {
            if ((gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] < gEntitiesNextPosXArray[D_8018E030_ovl5[i]] &&
                 gEntitiesNextPosXArray[D_8018E030_ovl5[i]] < gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]]) ||
                func_8015F4C4_ovl5(i, arg1) == 2) {
                count++;
            }
        }
    }
    return count;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F300_ovl5.s")
#endif

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

s32 func_8015F5DC_ovl5(s32 arg0, s32 arg1) {
    if (ABSF(gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] - gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]]) < 200.0f) {
        return 2;
    }
    if (gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] < gEntitiesNextPosXArray[D_8018E050_ovl5[arg1]]) {
        return 1;
    }
    return 0;
}

#ifdef NON_MATCHING
// 2 diffs: the `sw $v1` spill of `p` and the `addiu $a0,0xA` swap places
// around the second random_soft_s32_range call (delay-slot fill only).
extern u8 D_8018691A_ovl5[];
s32 random_soft_s32_range(s32);
void func_80160088_ovl5(s32);
void func_80160120_ovl5(s32);
void func_8016050C_ovl5(s32);

void func_8015F67C_ovl5(s32 arg0) {
    s32 sp2C = D_8018E224_ovl5[arg0];
    u8 *p = &D_8018E228_ovl5[arg0 * 12];
    s32 v0;

    v0 = func_8015F4C4_ovl5(arg0, p[6]);
    if (D_800EA520[omCurrentObj->objId] == 2 || D_800EA520[omCurrentObj->objId] == 3) {
        if (v0 == 2) {
            func_80160088_ovl5(arg0);
        } else if ((v0 == 0 && p[7] != 0xFF) || (v0 == 1 && p[8] != 0xFF)) {
            func_80160120_ovl5(arg0);
        } else {
            func_8016050C_ovl5(arg0);
        }
    } else {
        if (random_soft_s32_range(0x10) < D_8018691A_ovl5[sp2C * 6]) {
            p[4] = 4;
        } else if (v0 == 0) {
            p[4] = 1;
        } else if (v0 == 1) {
            p[4] = 2;
        } else {
            p[4] = 3; *(s32 *) p = random_soft_s32_range(0xA) + 5;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F67C_ovl5.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F804_ovl5.s")

#ifdef NON_MATCHING
// 156/166: IDO hoists the loop constants 1 and 4 and the sp24 pointer into
// callee-saved registers (s1..s4); the ROM keeps only s0=i, s1=arg0 and
// spills the sp24 pointer in $v1 around the call. Index and pointer-walker
// forms compile identically.
extern u8 D_8018E22E_ovl5[];
s32 func_801612D0_ovl5(s32, s32);

s32 func_8015FB78_ovl5(s32 arg0) {
    s32 t;
    u8 sp24[4];
    s32 i;
    u8 *p;
    f32 x;

    t = D_8018E050_ovl5[D_8018E22E_ovl5[arg0 * 12]];
    p = sp24;
    for (i = 0; i < 4; i++) {
        if (arg0 != i && func_801612D0_ovl5(arg0, i) != 0) {
            *p = 1;
        } else {
            *p = 0;
        }
        p++;
    }
    x = gEntitiesNextPosXArray[omCurrentObj->objId];
    if (gEntitiesNextPosXArray[t] < x) {
        if (sp24[0] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[0]]) {
            return 1;
        }
        if (sp24[1] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[1]]) {
            return 1;
        }
        if (sp24[2] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[2]]) {
            return 1;
        }
        if (sp24[3] != 0 && x < gEntitiesNextPosXArray[D_8018E030_ovl5[3]]) {
            return 1;
        }
        return 0;
    }
    if (sp24[0] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[0]] < x) {
        return 1;
    }
    if (sp24[1] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[1]] < x) {
        return 1;
    }
    if (sp24[2] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[2]] < x) {
        return 1;
    }
    if (sp24[3] != 0 && gEntitiesNextPosXArray[D_8018E030_ovl5[3]] < x) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015FB78_ovl5.s")
#endif


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

extern u8 D_80186918_ovl5[];
s32 func_8015FB78_ovl5(s32);
s32 func_8015FE00_ovl5(s32);

void func_8016050C_ovl5(s32 arg0) {
    s32 idx = D_8018E224_ovl5[arg0];

    if (random_soft_s32_range(0x10) < D_80186918_ovl5[idx * 6 + 1]) {
        if (func_8015FB78_ovl5(arg0) == 0) {
            D_8018E228_ovl5[arg0 * 12 + 4] = 7;
            if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0 * 12 + 6]]]) {
                D_8018E228_ovl5[arg0 * 12 + 5] = 0;
            } else {
                D_8018E228_ovl5[arg0 * 12 + 5] = 1;
            }
            return;
        }
    }
    if (random_soft_s32_range(0x10) < D_80186918_ovl5[idx * 6 + 1]) {
        D_8018E228_ovl5[arg0 * 12 + 4] = 6;
        if (gEntitiesNextPosXArray[omCurrentObj->objId] <
            gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0 * 12 + 6]]]) {
            D_8018E228_ovl5[arg0 * 12 + 5] = 1;
        } else {
            D_8018E228_ovl5[arg0 * 12 + 5] = 0;
        }
        return;
    }
    if (random_soft_s32_range(0x10) < D_80186918_ovl5[idx * 6 + 1]) {
        D_8018E228_ovl5[arg0 * 12 + 4] = 8;
        if (func_8015FE00_ovl5(arg0) != 0) {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0 * 12 + 6]]]) {
                D_8018E228_ovl5[arg0 * 12 + 5] = 1;
            } else {
                D_8018E228_ovl5[arg0 * 12 + 5] = 0;
            }
        } else {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] <
                gEntitiesNextPosXArray[D_8018E050_ovl5[D_8018E228_ovl5[arg0 * 12 + 6]]]) {
                D_8018E228_ovl5[arg0 * 12 + 5] = 0;
            } else {
                D_8018E228_ovl5[arg0 * 12 + 5] = 1;
            }
        }
        return;
    }
    D_8018E228_ovl5[arg0 * 12 + 4] = 3;
    *(s32 *) &D_8018E228_ovl5[arg0 * 12] = random_soft_s32_range(6) + 5;
}

s32 func_80160810_ovl5(s32 arg0) {
    switch (D_800EA520[D_8018E030_ovl5[arg0]]) {
        case 4:
        case 5:
        case 6:
        case 7:
        case 9:
        case 0xB:
        case 0xC:
        case 0xD:
            return 0;
    }
    return 1;
}

s32 func_80160868_ovl5(s32 arg0) {
    switch (D_800EA520[D_8018E030_ovl5[arg0]]) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 6:
        case 7:
            return 1;
    }
    return 0;
}

s32 func_801608BC_ovl5(s32 arg0) {
    if (arg0 == 0xFF) {
        return 0;
    }
    switch (D_800EA520[D_8018E030_ovl5[arg0]]) {
        case 2:
        case 3:
        case 6:
        case 7:
        case 0xA:
        case 0xC:
            return 1;
    }
    return 0;
}

s32 func_80160924_ovl5(s32 arg0) {
    s32 temp = D_800EA520[D_8018E030_ovl5[arg0]];

    if (temp == 0 || temp == 1 || temp == 2 || temp == 3) {
        return 1;
    }
    return 0;
}

s32 func_8016097C_ovl5(s32 arg0) {
    switch (D_800EA520[D_8018E030_ovl5[arg0]]) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
        case 7:
        case 0xC:
            return 1;
    }
    return 0;
}

s32 func_801609D0_ovl5(s32 arg0) {
    s32 temp = D_800EA520[D_8018E030_ovl5[arg0]];

    if (temp == 4 || temp == 5 || temp == 0xB) {
        return 0;
    }
    return 1;
}

#ifdef NON_MATCHING
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

extern s32 D_8018E040_ovl5[];
extern void *D_801868CC_ovl5;
extern u32 D_801868D0_ovl5[2];
extern u32 D_801868D8_ovl5[2];
extern u32 D_801868E0_ovl5[2];
extern u32 D_801868E8_ovl5[2];
void func_80160D50_ovl5(GObj *);

void func_80160AF8_ovl5(GObj *arg0, s32 arg1) {
    D_800E98E0[omCurrentObj->objId] = arg1;
    D_8018E040_ovl5[arg1] = omCurrentObj->objId;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    D_800DF150[omCurrentObj->objId] = func_80160D50_ovl5;
    func_800A9864(D_801868CC_ovl5, 0x1869F, 0x10);
    while (1) {
        switch (D_800EA520[D_8018E030_ovl5[arg1]]) {
        case 8:
            func_800AA018((void *) D_801868D0_ovl5[0]);
            if (D_801868D0_ovl5[1] != 0) {
                func_800AA018((void *) D_801868D0_ovl5[1]);
            }
            func_800AF27C();
            break;
        case 10:
            func_800AA018((void *) D_801868D8_ovl5[0]);
            if (D_801868D8_ovl5[1] != 0) {
                func_800AA018((void *) D_801868D8_ovl5[1]);
            }
            func_800AF27C();
            break;
        case 11:
            func_800AA018((void *) D_801868E0_ovl5[0]);
            if (D_801868E0_ovl5[1] != 0) {
                func_800AA018((void *) D_801868E0_ovl5[1]);
            }
            func_800AF27C();
            while (11 == D_800EA520[D_8018E030_ovl5[arg1]]) {
                ohSleep(1);
            }
            break;
        case 12:
            func_800AA018((void *) D_801868E8_ovl5[0]);
            if (D_801868E8_ovl5[1] != 0) {
                func_800AA018((void *) D_801868E8_ovl5[1]);
            }
            func_800AF27C();
            break;
        }
        ohSleep(1);
    }
}

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

#ifdef NON_MATCHING
// 58/131, same length: a one-slot rotation of the callee-saved file.
// ROM: s0=prev, s1=3, s2=&D_8018E258, s3=&omCurrentObj, s4=&D_801868F4.
// IDO: s0=3, s1=&D_8018E258, s2=&omCurrentObj, s3=&D_801868F4, s4=prev.
extern void *D_801868F0_ovl5;
extern void *D_801868F4_ovl5[2];
void func_800A9F98(void *, f32);
void func_80161078_ovl5(GObj *);

void func_80160E6C_ovl5(GObj *arg0, s32 arg1) {
    s32 prev;
    f32 vol;

    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    prev = D_8018E1E0_ovl5[arg1] + 1;
    D_800DF150[omCurrentObj->objId] = func_80161078_ovl5;
    func_800A9864(D_801868F0_ovl5, 0x1869F, 0x10);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    while (1) {
        s32 v = D_8018E1E0_ovl5[arg1];

        if (prev != v) {
            prev = v;
            if (v < 10) {
                if (prev < 5) {
                    func_800AFBB4(0, omCurrentObj);
                    if (3 == D_8018E258_ovl5) {
                        vol = 2.0f;
                    } else {
                        vol = 0.0f;
                    }
                } else {
                    func_800AFBB4(1, omCurrentObj);
                    if (3 == D_8018E258_ovl5) {
                        vol = 2.0f;
                    } else {
                        vol = 0.0f;
                    }
                }
            } else {
                func_800AFBB4(1, omCurrentObj);
                if (3 == D_8018E258_ovl5) {
                    vol = 3.0f;
                } else {
                    vol = 1.0f;
                }
            }
            if (D_801868F4_ovl5[0] != NULL) {
                func_800A9F98(D_801868F4_ovl5[0], vol);
            }
            func_800A9F98(D_801868F4_ovl5[1], vol);
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160E6C_ovl5.s")
#endif

// Draft, 14/76: instruction-exact; the ROM keeps D_800E98E0[objId] in $v0 with
// no stack home, we need an `s32 t` local to get $v0 and that grows the frame
// 0x40 -> 0x48. All 24 declaration permutations swept, with and without t.
// Wave 10: DROPPING `t` and writing the index inline gives the ROM's exact
// frame (0x40) and spill slots with declaration order dobj, sp30, sp24, p --
// 38 diffs, ALL of them the same one-slot temp rotation ($t9/$t0/$t1 where the
// ROM has $v0/$t9/$t0), i.e. IDO never uses $v0 at all.  Every local costs a
// word here because sp30/sp24 are address-taken, so no 5th local can buy $v0.
// Also swept at that order: pointer arithmetic instead of &arr[i], a (u8 *)
// byte bias, and reusing the parameter as the scratch (72).
#ifdef NON_MATCHING
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

#ifdef NON_MATCHING
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

void func_80161470_ovl5(s32 arg0, s32 arg1) {
    D_800EA520[D_8018E030_ovl5[arg0]] = 4;
    D_800EA520[D_8018E030_ovl5[arg1]] = 5;
    if (gEntitiesNextPosXArray[D_8018E030_ovl5[arg1]] < gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]]) {
        D_800EA6E0[D_8018E030_ovl5[arg0]] =
            gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] - D_80186950_ovl5[D_8018E1E8_ovl5[arg1].unk0];
        D_800EA6E0[D_8018E030_ovl5[arg1]] =
            gEntitiesNextPosXArray[D_8018E030_ovl5[arg1]] + D_80186950_ovl5[D_8018E1E8_ovl5[arg0].unk0];
    } else {
        D_800EA6E0[D_8018E030_ovl5[arg0]] =
            gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]] + D_80186950_ovl5[D_8018E1E8_ovl5[arg1].unk0];
        D_800EA6E0[D_8018E030_ovl5[arg1]] =
            gEntitiesNextPosXArray[D_8018E030_ovl5[arg1]] - D_80186950_ovl5[D_8018E1E8_ovl5[arg0].unk0];
    }
    D_800EAA60[D_8018E030_ovl5[arg0]] =
        (D_800EA6E0[D_8018E030_ovl5[arg0]] - gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]]) / 10.0f;
    D_800EAA60[D_8018E030_ovl5[arg1]] =
        (D_800EA6E0[D_8018E030_ovl5[arg1]] - gEntitiesNextPosXArray[D_8018E030_ovl5[arg1]]) / 10.0f;
}

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

#ifdef NON_MATCHING
// 31/118, same length. Residue is one scheduling root: the ROM materialises
// the 35.0f into $f4 before the u32->f32 conversion of `n`, IDO after it,
// which rotates the whole FP register file. Both multiply operand orders
// compile identically.
extern s32 D_8018E21C_ovl5;
extern u8 D_8018E220_ovl5;
extern u8 D_8018E221_ovl5;
extern void *D_8018681C_ovl5;
s32 func_800BB4E4(s32, s32, s32);
void func_800A9760(void *);

void func_8016179C_ovl5(GObj *arg0) {
    u32 i;
    u32 n;
    s32 j;
    s32 t;
    f32 target;

    i = 0;
    n = 0;
    D_8018E21C_ovl5 = omCurrentObj->objId;
    func_800A9760(D_8018681C_ovl5);
    ohSleep(0x1E);
    target = 35.0f * n;
    while (1) {
        if (target == (f32) i) {
            if (func_801616A8_ovl5() != 0) {
                D_8018E221_ovl5 = n;
                for (j = 0; j != 4; j++) {
                    if (4 == D_8018E224_ovl5[j]) {
                        func_800BB4E4(j, 0xB, 0x3C);
                    }
                }
                play_sound(0x22F);
                D_8018E220_ovl5 = 1;
                curObjSleepForever();
            }
            t = request_track_general(6, 0, 0x70);
            D_800E98E0[t] = 10;
            D_800E9E20[t] = n;
            n++;
            target = 35.0f * n;
        }
        i++;
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016179C_ovl5.s")
#endif

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

#ifdef NON_MATCHING
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

/* Faithful, not byte-exact (304/324, 2 instructions long). The decode is
   verified against the listing statement by statement; the residue is a
   whole-function $v0/$v1 role swap (the ROM parks omCurrentObj in $v0 and
   objId*4 in $v1) which shifts every later scheduling decision. Swept:
   declaration order and count, prologue statement order, declaration-
   initializer form, and return-type flips on every prototype this function
   introduces. */
#ifdef NON_MATCHING
extern void *D_80186894_ovl5[];
extern u8 D_8018E221_ovl5;
extern f32 D_8018D5D0_ovl5;
extern f32 D_8018D5D4_ovl5;
extern f32 D_8018D5D8_ovl5;
extern f32 D_8018D5DC_ovl5;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B1900(u16);
s32 func_800BB4E4(s32, s32, s32);
void animResetModelAnimation(GObj *);
f32 random_soft_f32(void);
s32 func_8016097C_ovl5(s32);

void func_8016253C_ovl5(GObj *arg0) {
    s32 base;
    s32 i;
    s32 n;
    s32 idx;
    f32 r;
    s32 track;
    s32 pad;

    D_800DF150[omCurrentObj->objId] = NULL;
    track = D_800E9E20[omCurrentObj->objId];
    base = D_800E98E0[omCurrentObj->objId];
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8018D5D0_ovl5;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 2;
    func_800AA018(D_80186894_ovl5[0]);
    if (D_80186894_ovl5[1] != NULL) {
        func_800AA018(D_80186894_ovl5[1]);
    }
    ohSleep(0x3C);
    n = (s32) ((D_8018E221_ovl5 - track) * 20.0f);
    for (i = 0; i < n; i++) {
        ohSleep(1);
    }
    ohSleep(random_soft_s32_range(0xA) + 1);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 3;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId] + 10.0f;
    animResetModelAnimation(arg0);
    r = random_soft_f32();
    D_800E3210[omCurrentObj->objId] = (250.0f - gEntitiesNextPosYArray[omCurrentObj->objId]) / 90.0f - r * 3.0f;
    D_800E3750[omCurrentObj->objId] = D_8018D5D4_ovl5;
    D_800E3C90[omCurrentObj->objId] = ABSF(D_800E3210[omCurrentObj->objId] * 1.5f);
    while (250.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        ohSleep(1);
    }
    for (i = 0; i != 3; i++) {
        idx = func_80161A54_ovl5(track);
        if (idx == 0xFF) {
            continue;
        }
        if (func_8016097C_ovl5(idx) == 0) {
            continue;
        }
        play_sound(0xF1);
        if (4 != D_8018E224_ovl5[idx]) {
            func_800BB4E4(idx, 0xB, 0xA);
        }
        if (D_8018E1E0_ovl5[idx] < 0x63) {
            D_8018E1E0_ovl5[idx] = D_8018E1E0_ovl5[idx] + 1;
        }
        if (4 != D_800EA520[D_8018E030_ovl5[idx]]) {
            D_800EA520[D_8018E030_ovl5[idx]] = 0xC;
        }
        D_8018E208_ovl5[base] = 2;
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
    while (110.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8018D5D8_ovl5;
    for (i = 0x14; i >= 0; i--) {
        gEntitiesScaleYArray[omCurrentObj->objId] = i * D_8018D5DC_ovl5;
        D_800E3210[omCurrentObj->objId] = -5.0f;
        ohSleep(1);
    }
    D_8018E208_ovl5[base] = 2;
    func_800B1900(((u16 *) omCurrentObj)[1]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016253C_ovl5.s")
#endif

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

s32 func_80160A20_ovl5(s32);

void func_80162B1C_ovl5(GObj *arg0, f32 arg1, f32 arg2, f32 arg3) {
    s32 i;
    s32 j;

    func_800A7F74(1, 0, 3, arg1, arg2, arg3);
    play_sound(0xE);
    for (j = 0; j != 0x12; j++) {
        for (i = 0; i != 4; i++) {
            if (func_80160A20_ovl5(i) != 0) {
                if (func_80162AB0_ovl5(i, arg1, (j < 8) ? 50.0f : 200.0f) != 0) {
                    D_800EA520[D_8018E030_ovl5[i]] = 0xB;
                }
            }
        }
        ohSleep(1);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_80162C68_ovl5(GObj *arg0) {
    func_800A7F74(1, 0, D_80186934_ovl5[D_8018E258_ovl5], D_80186940_ovl5[0], D_80186940_ovl5[1], D_80186940_ovl5[2]);
    curObjSleepForever();
}

void func_80162E30_ovl5(GObj *);
s32 func_80164914_ovl5(s32);

void func_80162CCC_ovl5(GObj *arg0) {
    s32 i;

    D_800DF150[omCurrentObj->objId] = func_80162E30_ovl5;
    D_800DDA90[omCurrentObj->objId] = 0x24;
    while (1) {
        if (D_8018E220_ovl5 != 0) {
            if (func_80161720_ovl5() != 0) {
                if (D_8018E020_ovl5 == 0) {
                    D_8018E020_ovl5 = 0x3C;
                    D_8018E024_ovl5 = 1;
                    for (i = 0; i != 4; i++) {
                        if (func_80164914_ovl5(i) == 0) {
                            D_800EA520[D_8018E030_ovl5[i]] = 0xD;
                        }
                    }
                    curObjSleepForever();
                }
            }
        }
        ohSleep(1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80162E30_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80163CC0_ovl5.s")

/* Faithful, not byte-exact (16/76). Frame, locals and every instruction are
   right; the residue is the one-slot temp rotation -- the ROM parks the
   D_800E98E0 value in $a2 and shifts D_8018E030's load in place in $v0,
   this C takes $t7/$t8 and every later temp follows. Swept: 16 declaration
   and statement orders, five callee-prototype forms, and the parameter-as-
   scratch form (71). */
#ifdef NON_MATCHING
struct UnkStruct8015C9B4;
struct UnkStruct8015C9B4 *func_800A6F40(s32);
void func_8015C9B4_ovl5(struct UnkStruct8015C9B4 *, Vector *, f32 *, f32 *);

void func_80164174_ovl5(GObj *arg0) {
    s32 t;
    SPObj *sp;
    f32 x;
    f32 y;
    Vector pos;

    t = D_8018E030_ovl5[D_800E98E0[omCurrentObj->objId]];
    sp = D_800E9AA0[omCurrentObj->objId].as_ptr;
    pos.x = gEntitiesNextPosXArray[t];
    pos.y = gEntitiesNextPosYArray[t];
    pos.z = gEntitiesNextPosZArray[t];
    func_8015C9B4_ovl5(func_800A6F40(0x10), &pos, &x, &y);
    sp->xOffset = (x * 150.0f + 160.0f) - sp->width * 0.5f;
    ((SPObj *) sp->unk8)->xOffset = sp->xOffset + 8.0f;
    ((SPObj *) ((SPObj *) sp->unk8)->unk8)->xOffset = sp->xOffset + 15.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164174_ovl5.s")
#endif

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

#ifdef NON_MATCHING
/* 2 diffs, and the single physical line is load-bearing: with the loop body
   expanded over three lines it is 4. The remaining residue is that IDO fills
   the post-`jal` slot with `addiu $s0,$s0,1` and sinks `sw $v0` to `-4($s1)`,
   where the ROM stores at `0xC($s1)` first. The empty `if` reproduces the dead
   $s2 induction.
   Swept without effect at 2: for/while/do-while, != vs <, pointer inductions,
   `u32 i`, two counters, temp local for the call result, s32/volatile stores,
   volatile on either array, `if` before/after, extra dead locals, 0-13 leading
   blank lines. Pointer-induction forms are much WORSE (25/26).
   Clone twins with the identical residue: func_8016CB14_ovl5,
   func_80176108_ovl5. */
void func_801649CC_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) { D_800D7178[i].unkC = func_80164914_ovl5(i); if (D_8018E224_ovl5[i] != 0) {} }
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

/* Faithful, not byte-exact (9/134). Everything but the final clear loop is
   exact; there the ROM puts the induction pointer in $v0 and the 0xFF
   constant in $v1 and IDO swaps them. Swept: all 24 scalar declaration
   orders, all 6 loop-variable assignments, index vs pointer walk, do/while,
   reverse iteration, (u32) and byte-bias forms -- all inert at 9 or worse. */
#ifdef NON_MATCHING
typedef struct Unk16Ptrs {
    s32 *unk0[4];
} Unk16Ptrs;

extern Unk16Ptrs D_80186068_ovl5;
extern Unk16Ptrs D_80186078_ovl5;
extern Unk16Ptrs D_80186088_ovl5;
extern Unk16Bytes D_80186098_ovl5;
extern u8 D_8018E024_ovl5;
extern u8 D_8018E025_ovl5;

void func_80164EA8_ovl5(void) {
    s32 i;
    s32 temp;
    Unk16Ptrs sp50 = D_80186068_ovl5;
    Unk16Ptrs sp40 = D_80186078_ovl5;
    Unk16Ptrs sp30 = D_80186088_ovl5;
    Unk16Bytes sp20 = D_80186098_ovl5;
    s32 j;
    s32 k;

    D_8018E020_ovl5 = 0;
    D_8018E024_ovl5 = 0;
    D_8018E025_ovl5 = 1;
    temp = ((s32 *) D_800D7178)[0x10];
    D_8018E258_ovl5 = temp;
    D_8018E220_ovl5 = 0;
    for (i = 0; i != 0x14; i++) {
        D_8018E208_ovl5[i] = 0;
    }
    for (j = 0; j != 4; j++) {
        D_8018E1E0_ovl5[j] = 0;
        D_8018E1E8_ovl5[j].unk0 = *sp50.unk0[j];
        D_8018E1E8_ovl5[j].unk4 = *sp40.unk0[j];
        if (1 == *sp30.unk0[j]) {
            D_8018E224_ovl5[j] = sp20.unk0[temp];
        } else {
            D_8018E224_ovl5[j] = 4;
        }
    }
    for (k = 0; k != 100; k++) {
        D_8018E050_ovl5[k] = 0xFF;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164EA8_ovl5.s")
#endif

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




