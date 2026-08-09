#include "common.h"
#include "GObj.h"
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
void func_801642A4_ovl5(s32, s32, s32, s32);
extern u8 D_8018E1E0_ovl5[];
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015D864_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015DA24_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015DFC8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015E850_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015EAB4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015ED9C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F300_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F4C4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F5DC_ovl5.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160D50_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160E6C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161078_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801611A8_ovl5.s")

f32 func_80161298_ovl5(s32 arg0, s32 arg1) {
    return D_80186950_ovl5[arg0] * 0.5f + D_80186950_ovl5[arg1] * 0.5f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801612D0_ovl5.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801619E0_ovl5.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161A54_ovl5.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801642A4_ovl5.s")

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
/* ROM also keeps a dead D_8018E224_ovl5 induction pointer in $s2 */
void func_801649CC_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        D_800D7178[i].unkC = func_80164914_ovl5(i);
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164DF0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164EA8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801650C0_ovl5.s")

void func_8016534C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_801860A8_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80165370_ovl5.s")

