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
extern s32 D_8018ECA8_ovl5[];
typedef struct Unk801875F0 {
    s32 unk0;
    s32 unk4;
} Unk801875F0;
extern Unk801875F0 D_801875F0_ovl5[];
void play_sound(s32);
s32 random_soft_s32_range(s32);

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

// Draft, 2/61 diffs: instruction-exact, frame 0x30 vs ROM 0x28. IDO packs the
// three spill slots at the BOTTOM of the temp area (0x18/1C/20), the ROM at the
// TOP (0x1C/20/24); any declared local grows the frame by 8 instead of shifting it.
#ifdef MIPS_TO_C
void func_801720D8_ovl5(s32 arg0) {
    s32 pad;
    Unk801875F0 *p;
    s32 temp = D_8018ECA8_ovl5[arg0];

    play_sound(0xBA);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800E9C60[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_s32;
    D_8018E998_ovl5[arg0]++;
    p = &D_801875F0_ovl5[temp];
    D_800E98E0[omCurrentObj->objId] = (random_soft_s32_range(p->unk4) + p->unk0) * 0.5f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801720D8_ovl5.s")
#endif

/* Draft, 5/88: instruction-exact except the frame (0x28 vs ROM 0x20) and one
   `addu $t7, $v0, $t0` whose operands IDO emits swapped. The frame is the same
   +8 anomaly as its sibling func_801720D8_ovl5 above and never shrinks: swept
   0/1/2/3 declared locals in every position, leading/trailing/middle pads, u8
   pads, pointer vs index for both values -- every pad adds 8, nothing removes
   it. The addu survived operand swap, a temp local for the call result, an
   explicit (s32)(f32) cast and `/ 2.0f`. */
#ifdef MIPS_TO_C
void func_801721CC_ovl5(s32 arg0) {
    s32 *q = &D_8018E998_ovl5[arg0];
    s32 temp = D_8018ECA8_ovl5[arg0];

    if (*q == 0x50) {
        play_sound(0xBA);
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
        D_800E9C60[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_s32;
        (*q)++;
    } else {
        play_sound(0xBA);
        D_800E9FE0[omCurrentObj->objId].as_s32 = 2;
        D_800E9C60[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_s32;
        *q += 2;
    }
    D_800E98E0[omCurrentObj->objId] = (random_soft_s32_range(D_801875F0_ovl5[temp].unk4) + D_801875F0_ovl5[temp].unk0) * 0.5f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801721CC_ovl5.s")
#endif

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

void func_80173EBC_ovl5(GObj *arg0) {
    switch (D_800E9AA0[omCurrentObj->objId].as_s32) {
    case 0:
        gEntitiesNextPosZArray[omCurrentObj->objId] =
            gEntitiesNextPosZArray[D_8018E478_ovl5[D_800E98E0[omCurrentObj->objId]][D_800E9AA0[omCurrentObj->objId].as_s32]] - 350.0f;
        break;
    case 100:
        gEntitiesNextPosZArray[omCurrentObj->objId] =
            gEntitiesNextPosZArray[D_8018E478_ovl5[D_800E98E0[omCurrentObj->objId]][D_800E9AA0[omCurrentObj->objId].as_s32]] + 300.0f;
        break;
    default:
        gEntitiesNextPosZArray[omCurrentObj->objId] =
            gEntitiesNextPosZArray[D_8018E478_ovl5[D_800E98E0[omCurrentObj->objId]][D_800E9AA0[omCurrentObj->objId].as_s32]] + 280.0f;
        break;
    }
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

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

extern u8 D_80187618_ovl5[];
extern u8 D_80187638_ovl5[];
extern u8 D_80187658_ovl5[];
extern u8 D_80187678_ovl5[];
extern u8 D_80187698_ovl5[];
extern u8 D_801876B8_ovl5[];
extern u8 D_801876D8_ovl5[];
extern u8 D_801876F8_ovl5[];
extern u8 D_8018ECD8_ovl5;

void func_801758AC_ovl5(GObj *arg0) {
    SPObj *spobj;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = NULL;
    omLinkGObjDL(arg0, func_800AD1A0, 0xE, 0x80000000, 0xE);
    omGMoveObjDL(arg0, arg0->dl_link, 0x18);
    if (D_8018ECD8_ovl5 == 3) {
        func_8015C740_ovl5(arg0, D_80187658_ovl5);
        func_8015C740_ovl5(arg0, D_80187678_ovl5);
        spobj = (SPObj *) func_8015C740_ovl5(arg0, D_80187698_ovl5);
        spobj->unk5A |= 1;
        spobj->unkBA |= 1;
        func_8015C740_ovl5(arg0, D_80187618_ovl5);
        spobj = (SPObj *) func_8015C740_ovl5(arg0, D_80187638_ovl5);
        spobj->unk5A |= 1;
        spobj->unkBA |= 1;
    } else {
        func_8015C740_ovl5(arg0, D_801876B8_ovl5);
        func_8015C740_ovl5(arg0, D_801876D8_ovl5);
        spobj = (SPObj *) func_8015C740_ovl5(arg0, D_801876F8_ovl5);
        spobj->unk5A |= 1;
        spobj->unkBA |= 1;
    }
    curObjSleepForever();
}


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

#include "main/contpad.h"
#include "ovl1/game.h"

extern s32 D_800D6B24;
extern u32 D_800D6B68;
extern u8 D_8018E450_ovl5;
extern s32 D_8018E46C_ovl5;
extern s32 D_8018E470_ovl5;
extern s32 D_8018E474_ovl5;
extern s32 D_800D71D0;
extern s32 D_800D71D4;
extern s32 D_800D71D8;
extern s32 D_800D71DC;
void func_80176108_ovl5(void);

void func_80176530_ovl5(GObj *arg0) {
    if (D_800D6B24 == 0) {
        if (D_8018E450_ovl5 != 0) {
            if ((--D_8018E450_ovl5 == 0) || (gPlayerControllers[0].buttonPressed & (A_BUTTON | START_BUTTON))) {
                D_800D6B68 = gGameState;
                gGameState = 0x20;
                func_80176108_ovl5();
                D_800D71D0 = D_8018E468_ovl5[0];
                D_800D71D4 = D_8018E46C_ovl5;
                D_800D71D8 = D_8018E470_ovl5;
                D_800D71DC = D_8018E474_ovl5;
                func_801764F0_ovl5();
            }
        }
    }
}

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

void func_801773C4_ovl5(struct GObj *arg0) {
    if (!(D_800DD8D0[omCurrentObj->objId] & 0x40) && (arg0->data.dobj != NULL)) {
        arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId] + D_800E2410[omCurrentObj->objId];
        arg0->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
        arg0->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
        arg0->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
        arg0->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
        arg0->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
        arg0->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80177524_ovl5.s")

void gameSetUpdateRate(f32);
void func_800AAF34(s32, s32, f32);

void func_8017783C_ovl5(void) {
    s32 i;
    s32 t;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x200);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(1);
    func_8017712C_ovl5();
    func_800A6BC0(8);
    func_800AAF34(0x10, 0x3007B, 0.0f);
    func_800A71A0(0x10);
    t = request_track_3(8, 0, 0x70);
    D_800E98E0[t] = 7;
    D_800E98E0[request_track_3(8, 0, 0x70)] = 8;
    D_800E98E0[request_track_3(8, 0, 0x70)] = 0xF;
    D_800E98E0[request_track_general(8, 0, 0x70)] = 1;
    D_800E98E0[request_track_3(8, 0, 0x70)] = 0x11;
    for (i = 3; i != 7; i++) {
        D_800E98E0[request_track_general(8, 0, 0x70)] = i;
    }
    func_801735A4_ovl5();
    D_800E98E0[func_800AEA64(8, 0, 0x70)] = 0xE;
    HS64_omMakeGObj(0, &func_80176530_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80177A0C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_801874A0_ovl5);
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
extern ScreenSettings D_801874D0_ovl5;
extern SceneSetup D_801874EC_ovl5;
extern s32 D_800D7178[];

void func_80177A30_ovl5(void) {
    s32 i;

    func_800A74D8();
    ((s32 *) D_800D7178)[0x1D] = 0;
    ((s32 *) D_800D7178)[0x1E] = 0;
    D_801874D0_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_801874D0_ovl5);
    D_801874EC_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_801874EC_ovl5);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80177A30_ovl5.s")
#endif

