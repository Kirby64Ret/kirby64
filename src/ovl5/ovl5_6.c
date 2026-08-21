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


void func_80177C64_ovl5(GObj *);
void func_80178140_ovl5(GObj *);
void func_80178220_ovl5(GObj *, s32);
void func_801783B8_ovl5(GObj *);
void func_80178450_ovl5(GObj *);
void func_80178690_ovl5(GObj *, s32, s32, s32);
void func_8017890C_ovl5(GObj *, s32, s32);
void func_80178AAC_ovl5(GObj *, s32, s32);
void func_80178BEC_ovl5(GObj *, s32);
void func_80178CD0_ovl5(GObj *);
void func_80178DB0_ovl5(GObj *);
void func_80179264_ovl5(GObj *);

void func_80177B00_ovl5(GObj *arg0) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            func_80177C64_ovl5(arg0);
            break;
        case 1:
            func_80178140_ovl5(arg0);
            break;
        case 2:
            func_801783B8_ovl5(arg0);
            break;
        case 3:
            func_80178450_ovl5(arg0);
            break;
        case 4:
            func_80178690_ovl5(arg0, ((s32 *) D_800E9AA0)[omCurrentObj->objId],
                               D_800E9C60[omCurrentObj->objId], D_800E9E20[omCurrentObj->objId]);
            break;
        case 5:
            func_8017890C_ovl5(arg0, ((s32 *) D_800E9AA0)[omCurrentObj->objId],
                               D_800E9C60[omCurrentObj->objId]);
            break;
        case 6:
            func_80178AAC_ovl5(arg0, ((s32 *) D_800E9AA0)[omCurrentObj->objId],
                               D_800E9C60[omCurrentObj->objId]);
            break;
        case 7:
            func_80178BEC_ovl5(arg0, ((s32 *) D_800E9AA0)[omCurrentObj->objId]);
            break;
        case 8:
            func_80178CD0_ovl5(arg0);
            break;
        case 9:
            func_80178DB0_ovl5(arg0);
            break;
        case 0xA:
            func_80179264_ovl5(arg0);
            break;
        case 0xB:
            func_80178220_ovl5(arg0, ((s32 *) D_800E9AA0)[omCurrentObj->objId]);
            break;
    }
}

void func_80177C64_ovl5(GObj *arg0) {
    D_8018ECE4_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    ohSleep(6);
    D_800DF150[omCurrentObj->objId] = func_80177D04_ovl5;
    curObjSleepForever();
}

#ifdef NON_MATCHING
/* Faithful, not byte-exact (107/134): structure and every branch match, but
   the ROM re-materialises &D_800E98E0[objId] into $v1 in a `bnel` delay slot
   where this C recomputes the index, which shifts the block. */
#include "main/contpad.h"

void func_80177D04_ovl5(GObj *arg0) {
    s32 *p;

    if ((D_8018ECE0_ovl5 == 0) && (D_800E9AA0[omCurrentObj->objId].as_u32 != 0)) {
        if (!(gPlayerControllers[0].buttonHeld & 0xF00)) {
            D_800E98E0[omCurrentObj->objId] = 0;
        }
        p = &D_800E98E0[omCurrentObj->objId];
        if (*p != 0) {
            *p -= 1;
            return;
        }
        if (D_800E9C60[omCurrentObj->objId] != 0) {
            if (gPlayerControllers[0].buttonPressed & 0x9000) {
                D_8018ECE0_ovl5 = 1;
                return;
            }
            if (gPlayerControllers[0].buttonHeld & 0x800) {
                play_sound(0x113);
                if (D_8018ECF8_ovl5 == 0) {
                    D_8018ECF8_ovl5 = 2;
                } else {
                    D_8018ECF8_ovl5 -= 1;
                }
                D_800E98E0[omCurrentObj->objId] = 4;
                return;
            }
            if (gPlayerControllers[0].buttonHeld & 0x400) {
                play_sound(0x113);
                if (D_8018ECF8_ovl5 == 2) {
                    D_8018ECF8_ovl5 = 0;
                } else {
                    D_8018ECF8_ovl5 += 1;
                }
                D_800E98E0[omCurrentObj->objId] = 4;
            }
        } else if (gPlayerControllers[0].buttonPressed & 0x9000) {
            play_sound(0x113);
            D_800E98E0[request_track_general(0x10, 0, 0x70)] = 8;
            D_800E98E0[request_track_general(0x10, 0, 0x70)] = 9;
            D_800E9C60[omCurrentObj->objId] = 1;
            D_800E98E0[omCurrentObj->objId] = 4;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80177D04_ovl5.s")
#endif

#ifdef NON_MATCHING
/* 78/144: frame 0x78 is right but the two local blocks sit 8 bytes high
   (mod-8 locals rule), and s0/s3/s4 are permuted. */
typedef union Unk3Floats {
    f32 unk0[3];
} Unk3Floats;

typedef union Unk4Floats {
    f32 unk0[4];
} Unk4Floats;

extern Unk3Floats D_801881C0_ovl5;
extern Unk4Floats D_801881CC_ovl5;
extern struct UnkStruct8015C740 D_801886E0_ovl5;
extern struct UnkStruct8015C740 D_80188700_ovl5;
extern struct UnkStruct8015C740 D_80188740_ovl5;
extern struct UnkStruct8015C740 D_80188760_ovl5;
extern Vector2 D_80188720_ovl5[];
extern Vector2 D_80188780_ovl5[];

void func_80177F20_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    s32 padA;
    Unk3Floats sp60 = D_801881C0_ovl5;
    s32 padB;
    Unk4Floats sp4C = D_801881CC_ovl5;
    SPObj *sp;
    s32 i;
    s32 n;

    if (arg2 == 0x14) {
        sp = func_8015C740_ovl5(arg0, &D_801886E0_ovl5);
        sp->xOffset = D_80188720_ovl5[arg1].x;
        sp->yOffset = D_80188720_ovl5[arg1].y;
        sp = func_8015C740_ovl5(arg0, &D_80188700_ovl5);
        sp->xOffset = D_80188720_ovl5[arg1].x;
        sp->yOffset = D_80188720_ovl5[arg1].y;
        while (1) {
            sp->renderFlags &= ~8;
            ohSleep(6);
            sp->renderFlags |= 8;
            ohSleep(6);
        }
    }
    n = arg2 / 5;
    i = 0;
    if (n > 0) {
        for (; i != n; i++) {
            sp = func_8015C740_ovl5(arg0, &D_80188740_ovl5);
            sp->xOffset = sp60.unk0[i] + D_80188780_ovl5[arg1].x;
            sp->yOffset = D_80188780_ovl5[arg1].y + 11.0f;
        }
        i = 0;
    }
    n = arg2 % 5;
    if (n > 0) {
        for (; i != n; i++) {
            sp = func_8015C740_ovl5(arg0, &D_80188760_ovl5);
            sp->xOffset = sp4C.unk0[i] + D_80188780_ovl5[arg1].x;
            sp->yOffset = D_80188780_ovl5[arg1].y + 0.0f;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80177F20_ovl5.s")
#endif

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

void func_80177F20_ovl5(GObj *, s32, s32);
void func_800B1900(u16);
void func_800ACBDC(GObj *);

#ifdef NON_MATCHING
/* 81/102 (count is right, every call and branch is right). Residue is frame
   and register assignment: the ROM keeps arg1*4 in $s0 and SPILLS the
   `&((s32*)D_800D7178)[arg1]` pointer to 0x2C, giving frame 0x38; IDO keeps
   the pointer in a saved register instead and the frame comes out 0x30.
   Declaring the pointer as a local does not force the spill. */
void func_80178220_ovl5(GObj *arg0, s32 arg1) {
    s32 *p = &((s32 *) D_800D7178)[arg1];

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    if (p[18] == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    if (D_800D7178[arg1].unkC == 0) {
        func_80177F20_ovl5(arg0, arg1, p[18] - 1);
    } else {
        func_80177F20_ovl5(arg0, arg1, p[18]);
    }
    if (D_800D7178[arg1].unkC == 0) {
        while (((s32 *) D_800E9AA0)[D_8018ECE4_ovl5] == 0) {
            ohSleep(1);
        }
        func_800ACBDC(arg0);
        play_sound(0x26C);
        func_80177F20_ovl5(arg0, arg1, p[18]);
        curObjSleepForever();
    } else {
        curObjSleepForever();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178220_ovl5.s")
#endif

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

typedef struct UnkPtrPair {
    void *unk0;
    void *unk4;
} UnkPtrPair;

extern void *D_80188830_ovl5[];
extern UnkPtrPair D_80188840_ovl5[];
extern UnkPtrPair D_80188860_ovl5[];

void func_8017890C_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    func_800A9864(D_80188830_ovl5[arg2], 0x1869F, 0x10);
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_801887C0_ovl5[arg1].x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_801887C0_ovl5[arg1].y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_801887C0_ovl5[arg1].z;
    func_800AA018(D_80188840_ovl5[arg2].unk0);
    if (D_80188840_ovl5[arg2].unk4 != NULL) {
        func_800AA018(D_80188840_ovl5[arg2].unk4);
    }
    func_800AF27C();
    func_800AA018(D_80188860_ovl5[arg2].unk0);
    if (D_80188860_ovl5[arg2].unk4 != NULL) {
        func_800AA018(D_80188860_ovl5[arg2].unk4);
    }
    curObjSleepForever();
}


s32 func_80178A3C_ovl5(s32 arg0, s32 arg1) {
    Unk16Bytes sp0 = D_801881DC_ovl5;

    return D_800DFBD0[D_8018ECE8_ovl5[arg0]][sp0.unk0[arg1]];
}

extern void *D_80188880_ovl5[];

void func_80178AAC_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    Vector sp44;

    func_800A9864(D_80188880_ovl5[((s32 *) D_800D7178)[arg1 * 4 + 3]], 0x1869F, 0x10);
    while (1) {
        func_800B2340(&sp44, func_80178A3C_ovl5(arg1, arg2), D_8018ECE8_ovl5[arg1]);
        gEntitiesNextPosXArray[omCurrentObj->objId] = sp44.x;
        gEntitiesNextPosYArray[omCurrentObj->objId] = sp44.y;
        gEntitiesNextPosZArray[omCurrentObj->objId] = sp44.z;
        ohSleep(1);
    }
}

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
#ifdef PORT
    /* D_801881EC is ten N64 pointer words; the PC data generator emits the
       region as a native void*[] (8-byte slots), so the word-struct copy
       reads pointer halves. Index the live table instead. */
    void **sp20 = (void **) &D_801881EC_ovl5;
#else
    Unk28Words sp20 = D_801881EC_ovl5;
#endif
    SPObj *spobj;

#ifdef PORT
    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20[arg1]);
#else
    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20.unk0[arg1]);
#endif
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

#ifdef NON_MATCHING
/* Faithful, not byte-exact (160/196): the ROM walks D_800D7178 with a $s0
   pointer induction and a separate $s1 byte offset; this C indexes, which
   swaps $s0/$s1 and re-shifts the index each iteration. */
extern u8 D_800D6BB9;
extern u8 D_800D6BBA;
extern u8 D_800D6BBB;
extern u8 D_8018ECF9_ovl5;
void func_800B9C50(s32);
s32 func_8015CCA8_ovl5(s32);

void func_801796D8_ovl5(void) {
    s32 i;
    s32 t;

    D_8018ECE0_ovl5 = 0;
    D_8018ECF9_ovl5 = 0;
    D_8018ECF8_ovl5 = 0;
    for (i = 0; i < 4; i++) {
        if (D_800D7178[i].unkC == 0) {
            if (((s32 *) D_800D7178)[18 + i] < 0x14) {
                ((s32 *) D_800D7178)[18 + i] = ((s32 *) D_800D7178)[18 + i] + 1;
            }
        }
        if (D_800D7178[i].unk0 == 0) {
            switch (((s32 *) D_800D7178)[17]) {
                case 29:
                    t = ((s32 *) D_800D7178)[22 + i];
                    if (t < (s32) gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord) {
                        gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord = t;
                        func_800B9C50(saveCurrentFileNum);
                        D_8018ECF9_ovl5 = 1;
                    }
                    break;
                case 31:
                    t = ((s32 *) D_800D7178)[22 + i];
                    if ((s32) gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord < t) {
                        gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord = t;
                        func_800B9C50(saveCurrentFileNum);
                        D_8018ECF9_ovl5 = 1;
                    }
                    break;
                case 30:
                    t = ((s32 *) D_800D7178)[22 + i];
                    if ((t < (s32) gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord) && (D_800D7178[i].unkC == 0)) {
                        gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord = t;
                        func_800B9C50(saveCurrentFileNum);
                        D_8018ECF9_ovl5 = 1;
                    }
                    break;
            }
        }
    }
    switch (((s32 *) D_800D7178)[17]) {
        case 29:
            if ((func_8017962C_ovl5() != 0) && (func_801795BC_ovl5() != 0) && (((s32 *) D_800D7178)[16] < 3) &&
                (func_8015CCA8_ovl5(0x1D) == ((s32 *) D_800D7178)[16])) {
                D_800D6BB9 += 1;
                func_800B9C50(saveCurrentFileNum);
            }
            break;
        case 31:
            if ((func_8017962C_ovl5() != 0) && (func_801795BC_ovl5() != 0) && (((s32 *) D_800D7178)[16] < 3) &&
                (func_8015CCA8_ovl5(0x1F) == ((s32 *) D_800D7178)[16])) {
                D_800D6BBA += 1;
                func_800B9C50(saveCurrentFileNum);
            }
            break;
        case 30:
            if ((func_8017962C_ovl5() != 0) && (func_801795BC_ovl5() != 0) && (((s32 *) D_800D7178)[16] < 3) &&
                (func_8015CCA8_ovl5(0x1E) == ((s32 *) D_800D7178)[16])) {
                D_800D6BBB += 1;
                func_800B9C50(saveCurrentFileNum);
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_801796D8_ovl5.s")
#endif

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

void gameSetUpdateRate(f32);
void func_800AAF34(s32, s32, f32);
extern s32 D_80188890_ovl5;

void func_80179B48_ovl5(void) {
    s32 i;
    s32 t;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    func_800AE048(0x180);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(1);
    func_800A6BC0(0xA);
    func_800AAF34(0x10, D_80188890_ovl5, 0.0f);
    func_800A71A0(0x10);
    play_music(0, 9);
    func_801796D8_ovl5();
    D_800E98E0[request_track_3(0x10, 0, 0x70)] = 0;
    D_800E98E0[request_track_3(0x10, 0, 0x70)] = 1;
    for (i = 0; i != 4; i++) {
        t = request_track_3(0x10, 0, 0x70);
        D_800E98E0[t] = 0xB;
        ((s32 *) D_800E9AA0)[t] = i;
    }
    D_800E98E0[request_track_general(0x10, 0, 0x70)] = 2;
    D_800E98E0[func_800AEA64(0x10, 0, 0x70)] = 3;
    D_800E98E0[request_track_3(0x10, 0, 0x70)] = 0xA;
    HS64_omMakeGObj(0, &func_80179A5C_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80179D24_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80188218_ovl5);
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
extern ScreenSettings D_80188248_ovl5;
extern SceneSetup D_80188264_ovl5;

void func_80179D48_ovl5(void) {
    s32 i;

    D_80188248_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_80188248_ovl5);
    D_80188264_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_80188264_ovl5);
}




