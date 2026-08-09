#include "common.h"
#include "GObj.h"
#include "SPObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/save_file.h"

extern Gfx D_801874A0_ovl5[];
extern u8 D_8018EA00_ovl5[];
extern Vector2 D_8018ECB8_ovl5[];
extern f32 D_8018EB48_ovl5[];
void play_music(s32, s32);
void func_800BB3F0(void);
extern f32 D_80187C94_ovl5[];
extern s32 D_8018E998_ovl5[];
extern u8 D_8018EB58_ovl5[];
extern s32 D_8018E458_ovl5[];
extern s32 D_8018E468_ovl5[];
extern s32 D_80187C34_ovl5[][2];
s32 func_80171538_ovl5(s32);
extern s32 D_8018E478_ovl5[][82];
extern const char D_8018D7AC_ovl5[];
extern const char D_8018D798_ovl5[];
extern struct GObjProcess *gEntityGObjProcessArray5[];
void func_80175F50_ovl5(GObj *);
extern u8 D_80187898_ovl5[];
void *func_8015C740_ovl5(GObj *, void *);
u8 func_80172B10_ovl5(s32, s32);
s32 func_80175B70_ovl5(s32);
s32 func_80175B8C_ovl5(s32);
s32 func_80175BB0_ovl5(s32);
void func_80175AD0_ovl5(s32, s32, s32, s32);
typedef union Unk28Words {
    s32 unk0[10];
} Unk28Words;

extern Unk28Words D_801873A0_ovl5;
void func_800AD1A0(GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8016FB80_ovl5.s")

void func_8016FD54_ovl5(void) {
    play_music(0, 0x3E);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8016FD78_ovl5.s")

Vector2 *func_8016FF60_ovl5(Vector2 *arg0, s32 arg1) {
    *arg0 = D_8018ECB8_ovl5[arg1];
    return arg0;
}

s32 func_8016FF88_ovl5(s32 arg0) {
    if (arg0 == 0xF || arg0 == 0x10 || arg0 == 0x11 || arg0 == 0x12 || arg0 == 0x13) {
        return 1;
    }
    return 0;
}

s32 func_8016FFC4_ovl5(s32 arg0) {
    if (arg0 == 0xA || arg0 == 0x13) {
        return 1;
    }
    return 0;
}

void func_8016FFE8_ovl5(s32 arg0, s32 arg1, f32 arg2) {
    gEntitiesNextPosZArray[D_8018E478_ovl5[arg0][arg1]] += arg2;
    if (func_8016FF88_ovl5(func_80172B10_ovl5(arg0, arg1)) != 0) {
        if (D_800EA520[D_8018E478_ovl5[arg0][arg1]] != 0x29A) {
            D_800EA6E0[D_800EA520[D_8018E478_ovl5[arg0][arg1]]] = arg2;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170098_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170464_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170584_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017068C_ovl5.s")

s32 func_801707B0_ovl5(s32 arg0) {
    Vector2 sp18;

    func_8016FF60_ovl5(&sp18, arg0);
    if (D_800DFF50[D_8018E458_ovl5[arg0]] == D_80187C34_ovl5[*(s32 *) &sp18][0]) {
        return 1;
    }
    return 0;
}

s32 func_80170820_ovl5(s32 arg0) {
    s32 i;

    for (i = D_8018E998_ovl5[arg0] - 1; i >= 0; i--) {
        if (D_8018EB58_ovl5[(arg0 * 0x52) + i] != 0) {
            return i;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170884_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017113C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171538_ovl5.s")

s32 func_801716E0_ovl5(s32 arg0) {
    s32 i;
    s32 temp;
    s32 count;

    count = 0;
    for (i = 0; i != 4; i++) {
        if (i != arg0) {
            temp = func_80171538_ovl5(arg0);
            if (temp < func_80171538_ovl5(i)) {
                count++;
            }
        }
    }
    return count;
}

s32 func_80171768_ovl5(s32 arg0) {
    s32 count = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((arg0 != i) && (D_8018E998_ovl5[i] == 0x51) && (D_8018E468_ovl5[i] < D_8018E468_ovl5[arg0])) {
            count++;
        }
    }
    return count;
}

s32 func_80171868_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((D_8018E998_ovl5[i] != 0x51) || (D_800E9C60[D_8018E458_ovl5[i]] != 0)) {
            return 0;
        }
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171950_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171E6C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801720D8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801721CC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017232C_ovl5.s")

u8 func_80172B10_ovl5(s32 arg0, s32 arg1) {
    return D_8018EA00_ovl5[arg0 * 82 + arg1];
}

Vector *func_80172B38_ovl5(Vector *arg0, s32 arg1, s32 arg2) {
    Vector sp4;

    sp4.x = D_80187C94_ovl5[arg1];
    sp4.y = 0.0f;
    sp4.z = arg2 * 450.0f;
    *arg0 = sp4;
    return arg0;
}

Vector func_80172B98_ovl5(s32 arg1, s32 arg2) {
    Vector sp1C;

    sp1C.x = gEntitiesNextPosXArray[D_8018E478_ovl5[arg1][arg2]];
    sp1C.y = gEntitiesNextPosYArray[D_8018E478_ovl5[arg1][arg2]];
    sp1C.z = gEntitiesNextPosZArray[D_8018E478_ovl5[arg1][arg2]];
    if (sp1C.z == 0.0f) {
        utilPrintf(D_8018D798_ovl5);
    }
    return sp1C;
}

s32 func_80172C50_ovl5(s32 arg0) {
    if (arg0 == 0x14 || arg0 == 0x28 || arg0 == 0x3C) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80172C7C_ovl5.s")

void func_80173564_ovl5(GObj *arg0) {
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E9C60[omCurrentObj->objId]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801735A4_ovl5.s")

s32 func_80173778_ovl5(s32 arg0) {
    s32 i;
    s32 *p;

    p = &D_8018E478_ovl5[arg0][81];
    for (i = 0x51; i >= 0; i--, p--) {
        if (*p != 0) {
            if (i < D_8018E998_ovl5[arg0]) {
                utilPrintf(D_8018D7AC_ovl5, i);
            }
            return i;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80173804_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80173A38_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80173EBC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174044_ovl5.s")

void func_80174328_ovl5(GObj *arg0) {
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174368_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017462C_ovl5.s")

void func_8017485C_ovl5(GObj *arg0) {
    gEntitiesNextPosZArray[omCurrentObj->objId] =
        gEntitiesNextPosZArray[D_8018E478_ovl5[D_800E98E0[omCurrentObj->objId]][D_800E9AA0[omCurrentObj->objId].as_s32]];
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174900_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174AE0_ovl5.s")

void func_80175518_ovl5(GObj *arg0) {
    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800EA6E0[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017559C_ovl5.s")

void func_80175808_ovl5(GObj *arg0) {
    gEntitiesNextPosZArray[omCurrentObj->objId] =
        gEntitiesNextPosZArray[D_8018E478_ovl5[D_800E98E0[omCurrentObj->objId]][D_800E9AA0[omCurrentObj->objId].as_s32]];
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801758AC_ovl5.s")

void func_80175A28_ovl5(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = NULL;
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    omGMoveObjDL(arg0, arg0->dl_link, 0x18);
    func_8015C740_ovl5(arg0, D_80187898_ovl5);
    curObjSleepForever();
}

void func_80175AD0_ovl5(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    Unk28Words sp20 = D_801873A0_ovl5;
    SPObj *spobj;

    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20.unk0[arg1]);
    spobj->xOffset = arg2;
    spobj->yOffset = arg3;
}

s32 func_80175B70_ovl5(s32 arg0) {
    return (arg0 % 30) * 3;
}

s32 func_80175B8C_ovl5(s32 arg0) {
    return (arg0 / 30) % 60;
}

s32 func_80175BB0_ovl5(s32 arg0) {
    return (arg0 / 30) / 60;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175BD4_ovl5.s")

void func_80175DBC_ovl5(GObj *arg0) {
    s32 i;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = NULL;
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    omGMoveObjDL(arg0, arg0->dl_link, 0x18);
    while (1) {
        func_800ACBDC(arg0);
        for (i = 0; i < 4; i++) {
            func_80175BD4_ovl5(arg0, i);
        }
        ohSleep(1);
    }
}

void func_80175E98_ovl5(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = func_80175F50_ovl5;
    D_800DDA90[omCurrentObj->objId] = 0x24;
    while (1) {
        ohSleep(1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175F50_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176108_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176170_ovl5.s")

void func_801764F0_ovl5(void) {
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176530_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801765EC_ovl5.s")

void func_8017685C_ovl5(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
    s32 sp34;
    s32 sp30;
    s32 sp2C;

    if (arg1 >= 0x464F) {
        sp2C = 0x63;
        sp30 = 0x3B;
        sp34 = 9;
    } else {
        sp2C = func_80175B70_ovl5(arg1);
        sp30 = func_80175B8C_ovl5(arg1);
        sp34 = func_80175BB0_ovl5(arg1);
    }
    func_80175AD0_ovl5(arg0, sp2C % 10, (s32) (arg2 + 38.0f), (s32) arg3);
    func_80175AD0_ovl5(arg0, sp2C / 10, (s32) (arg2 + 31.0f), (s32) arg3);
    func_80175AD0_ovl5(arg0, sp30 % 10, (s32) (arg2 + 19.0f), (s32) arg3);
    func_80175AD0_ovl5(arg0, sp30 / 10, (s32) (arg2 + 12.0f), (s32) arg3);
    func_80175AD0_ovl5(arg0, sp34, (s32) arg2, (s32) arg3);
}

u16 func_801769D8_ovl5(s32 arg0) {
    switch (arg0) {
        case 0x1D:
            return gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord;
        case 0x1F:
            return gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord;
        case 0x1E:
            return gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176A80_ovl5.s")

void func_80176EC8_ovl5(u8 *arg0, u16 *arg1) {
    arg0[0x14] = arg1[0];
    arg0[0x15] = arg1[1];
    arg0[0x16] = arg1[2];
    arg0[0x18] = arg1[3];
    arg0[0x19] = arg1[4];
    arg0[0x1A] = arg1[5];
}

void func_80176EFC_ovl5(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176F04_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017712C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801773C4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80177524_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017783C_ovl5.s")

void func_80177A0C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_801874A0_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80177A30_ovl5.s")

