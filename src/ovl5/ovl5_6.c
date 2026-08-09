#include "common.h"
#include "GObj.h"
#include "SPObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/save_file.h"

extern Gfx D_80188218_ovl5[];
typedef struct Unk10Bytes {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
} Unk10Bytes;

extern Unk10Bytes D_800D7178[];
typedef union Unk16Bytes {
    s32 unk0[4];
} Unk16Bytes;

extern Unk16Bytes D_801881DC_ovl5;
extern s32 D_8018ECE8_ovl5[];
void func_80178E98_ovl5(s32, s32, s32, s32);
typedef union Unk28Words {
    s32 unk0[10];
} Unk28Words;

extern Unk28Words D_801881EC_ovl5;
s32 func_80178F38_ovl5(s32);
s32 func_80178F54_ovl5(s32);
s32 func_80178F78_ovl5(s32);
extern s32 D_8018ECE4_ovl5;
extern void *D_80188894_ovl5;
extern void *D_80188898_ovl5;
extern struct UnkStruct8015C740 D_80188410_ovl5;
extern Vector2 D_80188430_ovl5[];
extern u8 D_8018ECF8_ovl5;
extern u8 D_8018ECE0_ovl5;
extern s32 D_800D6B24;
extern u32 D_800D6B68;
void play_sound(s32);
void func_801799D8_ovl5(void);
#include "ovl1/game.h"
extern void *D_8018889C_ovl5;
extern void *D_801888A0_ovl5;
extern Vector D_801887C0_ovl5[];
void func_800AA018(void *);
extern struct UnkStruct8015C740 D_801882F0_ovl5;
extern struct UnkStruct8015C740 D_80188310_ovl5;
extern struct UnkStruct8015C740 D_801883B0_ovl5;
extern struct UnkStruct8015C740 D_801883D0_ovl5;
extern struct UnkStruct8015C740 D_801883F0_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
extern struct GObjProcess *gEntityGObjProcessArray5[];
void func_800A9864(void *, s32, s32);
void func_80177D04_ovl5(GObj *);


#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80177B00_ovl5.s")

void func_80177C64_ovl5(GObj *arg0) {
    D_8018ECE4_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    ohSleep(6);
    D_800DF150[omCurrentObj->objId] = func_80177D04_ovl5;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80177D04_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80177F20_ovl5.s")

void func_80178140_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_801882F0_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_801882F0_ovl5);
    spobj->xOffset = 160.0f;
    spobj->yOffset = 10.0f;
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    func_8015C740_ovl5(arg0, &D_80188310_ovl5);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178220_ovl5.s")

void func_801783B8_ovl5(GObj *arg0) {
    func_800A9864(D_80188894_ovl5, 0x1869F, 0x10);
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    while (1) {
        ohSleep(1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178450_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178690_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_8017890C_ovl5.s")

s32 func_80178A3C_ovl5(s32 arg0, s32 arg1) {
    Unk16Bytes sp0 = D_801881DC_ovl5;

    return D_800DFBD0[D_8018ECE8_ovl5[arg0]][sp0.unk0[arg1]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178AAC_ovl5.s")

void func_80178BEC_ovl5(GObj *arg0, s32 arg1) {
    func_800A9864(D_80188898_ovl5, 0x1869F, 0x10);
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_801887C0_ovl5[arg1].x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_801887C0_ovl5[arg1].y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_801887C0_ovl5[arg1].z;
    func_800AA018(D_8018889C_ovl5);
    if (D_801888A0_ovl5 != NULL) {
        func_800AA018(D_801888A0_ovl5);
    }
    while (1) {
        ohSleep(1);
    }
}

void func_80178CD0_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xE, 0x80000000, 0xE);
    func_8015C740_ovl5(arg0, &D_801883B0_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_801883D0_ovl5);
    spobj->xScale = 52.0f;
    func_8015C740_ovl5(arg0, &D_801883F0_ovl5);
    while (1) {
        ohSleep(1);
    }
}

void func_80178DB0_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    spobj = func_8015C740_ovl5(arg0, &D_80188410_ovl5);
    while (1) {
        spobj->xOffset = D_80188430_ovl5[D_8018ECF8_ovl5].x;
        spobj->yOffset = D_80188430_ovl5[D_8018ECF8_ovl5].y;
        ohSleep(1);
    }
}

void func_80178E98_ovl5(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    Unk28Words sp20 = D_801881EC_ovl5;
    SPObj *spobj;

    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20.unk0[arg1]);
    spobj->xOffset = arg2;
    spobj->yOffset = arg3;
}

s32 func_80178F38_ovl5(s32 arg0) {
    return (arg0 % 30) * 3;
}

s32 func_80178F54_ovl5(s32 arg0) {
    return (arg0 / 30) % 60;
}

s32 func_80178F78_ovl5(s32 arg0) {
    return (arg0 / 30) / 60;
}

void func_80178F9C_ovl5(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
    s32 sp34;
    s32 sp30;
    s32 sp2C;

    if (arg1 >= 0x464F) {
        sp2C = 0x63;
        sp30 = 0x3B;
        sp34 = 9;
    } else {
        sp2C = func_80178F38_ovl5(arg1);
        sp30 = func_80178F54_ovl5(arg1);
        sp34 = func_80178F78_ovl5(arg1);
    }
    func_80178E98_ovl5(arg0, sp2C % 10, (s32) (arg2 + 38.0f), (s32) arg3);
    func_80178E98_ovl5(arg0, sp2C / 10, (s32) (arg2 + 31.0f), (s32) arg3);
    func_80178E98_ovl5(arg0, sp30 % 10, (s32) (arg2 + 19.0f), (s32) arg3);
    func_80178E98_ovl5(arg0, sp30 / 10, (s32) (arg2 + 12.0f), (s32) arg3);
    func_80178E98_ovl5(arg0, sp34, (s32) arg2, (s32) arg3);
}

void func_80179118_ovl5(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
    s32 pad;

    if (arg1 >= 100) {
        arg1 = 99;
    }
    func_80178E98_ovl5(arg0, arg1 % 10, (s32) (arg2 + 7.0f), (s32) arg3);
    func_80178E98_ovl5(arg0, arg1 / 10, (s32) arg2, (s32) arg3);
}

u16 func_801791BC_ovl5(s32 arg0) {
    switch (arg0) {
        case 0x1D:
            return gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord;
        case 0x1F:
            return gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord;
        case 0x1E:
            return gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80179264_ovl5.s")

s32 func_801795BC_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if (D_800D7178[i].unk0 == 1) {
            return 1;
        }
    }
    return 0;
}

s32 func_8017962C_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((D_800D7178[i].unk0 == 0) && (D_800D7178[i].unkC == 0)) {
            return 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_801796D8_ovl5.s")

void func_801799D8_ovl5(void) {
    s32 i;
    s32 j;

    for (i = 0; i < 4; i++) {
        if (((s32 *) D_800D7178)[18 + i] == 0x14) {
            for (j = 0; j < 4; j++) {
                ((s32 *) D_800D7178)[18 + j] = 0;
            }
            break;
        }
    }
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

void func_80179A5C_ovl5(GObj *arg0) {
    if (D_800D6B24 == 0) {
        if (D_8018ECE0_ovl5 != 0) {
            switch (D_8018ECF8_ovl5) {
                case 0:
                    play_sound(0xED);
                    gGameState = D_800D6B68;
                    D_800D6B68 = 0x20;
                    break;
                case 1:
                    play_sound(0xED);
                    D_800D6B68 = gGameState;
                    gGameState = 0x1B;
                    break;
                case 2:
                    play_sound(0x2B);
                    D_800D6B68 = gGameState;
                    gGameState = 0xA;
                    break;
            }
            func_801799D8_ovl5();
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80179B48_ovl5.s")

void func_80179D24_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80188218_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80179D48_ovl5.s")

