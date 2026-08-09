#include "common.h"
#include "GObj.h"
#include "SPObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/save_file.h"

extern s32 D_80187384_ovl5[];
extern Gfx D_80186A80_ovl5[];
extern Vector2 D_8018E3A0_ovl5[];
void func_800BB3F0(void);
extern f32 D_8018D6D0_ovl5;
extern f32 D_8018D6D4_ovl5;
extern s32 D_8018E268_ovl5[];
f32 func_80167164_ovl5(s32);
extern f32 D_8018D6CC_ovl5;
extern s32 D_800D6B24;
extern u32 D_800D6B68;
extern s32 D_8018E260_ovl5;
s32 func_80165B84_ovl5(s32);
void func_8016CB14_ovl5(void);
extern s32 D_8018E2A0_ovl5[];
s32 func_80165F1C_ovl5(s32);
extern struct UnkStruct8015C740 D_801870B4_ovl5;
extern struct UnkStruct8015C740 D_801870D4_ovl5;
extern struct UnkStruct8015C740 D_801870F4_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
extern void *D_80187394_ovl5;
extern void *D_80187398_ovl5;
void func_800A9864(void *, s32, s32);
void func_800AA018(void *);
void func_800AF27C(void);
void func_8016CC88_ovl5(GObj *);
extern f32 D_801872FC_ovl5[];
f32 sqrtf(f32);
extern struct GObjProcess *gEntityGObjProcessArray5[];
extern u8 D_8018E3C8_ovl5[];
extern u8 D_8018E3C0_ovl5[];
extern u8 D_8018E424_ovl5;
extern u8 D_8018E425_ovl5;
extern u8 D_8018E3D8_ovl5[];
extern s32 D_8018E428_ovl5[];
s32 func_8016F3A8_ovl5(s32);
s32 func_8016F3C4_ovl5(s32);
s32 func_8016F3E8_ovl5(s32);
void func_8016E650_ovl5(s32, s32, s32, s32);
typedef union Unk28Words {
    s32 unk0[10];
} Unk28Words;

extern Unk28Words D_80186A0C_ovl5;
extern f32 D_8018732C_ovl5[];
Vector2 func_80166C68_ovl5(s32);
Vector *func_801659DC_ovl5(Vector *, s32);
#include "main/contpad.h"
#include "ovl1/game.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801668E0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80166B28_ovl5.s")

Vector2 func_80166C68_ovl5(s32 idx) {
    Vector2 sp8;

    *(s32 *) &sp8.x = *(s32 *) &D_8018E3A0_ovl5[idx].x;
    *(s32 *) &sp8.y = *(s32 *) &D_8018E3A0_ovl5[idx].y;
    return sp8;
}

s32 func_80166CAC_ovl5(s32 arg0, s32 *arg1) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((D_8018E3C0_ovl5[i] != 0) && (arg0 == arg1[i])) {
            return 0;
        }
    }
    return 1;
}

s32 func_80166D48_ovl5(s32 arg0) {
    s32 r;

    if (D_8018E425_ovl5 == 2) {
        if (((arg0 >= 0) && (arg0 < 0x10)) || ((arg0 >= 0x30) && (arg0 < 0x40))) {
            goto retA;
        }
        r = arg0 % 8;
        switch (r) {
            case 0:
            case 1:
            case 6:
            case 7:
            retA:
                return 1;
        }
        return 0;
    }
    if (D_8018E424_ovl5 == 2) {
        if (((arg0 >= 0) && (arg0 < 8)) || ((arg0 >= 0x38) && (arg0 < 0x40))) {
            goto retB;
        }
        r = arg0 % 8;
        switch (r) {
            case 0:
            case 7:
            retB:
                return 1;
        }
        return 0;
    }
    return 0;
}

s32 func_80166E30_ovl5(s32 arg0) {
    s32 r;

    if (D_8018E425_ovl5 != 0) {
        if (((arg0 >= 0) && (arg0 < 0x10)) || ((arg0 >= 0x30) && (arg0 < 0x40))) {
            goto retA;
        }
        r = arg0 % 8;
        switch (r) {
            case 0:
            case 1:
            case 6:
            case 7:
            retA:
                return 1;
        }
        return 0;
    }
    if (D_8018E424_ovl5 != 0) {
        if (((arg0 >= 0) && (arg0 < 8)) || ((arg0 >= 0x38) && (arg0 < 0x40))) {
            goto retB;
        }
        r = arg0 % 8;
        switch (r) {
            case 0:
            case 7:
            retB:
                return 1;
        }
        return 0;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80166F14_ovl5.s")

f32 func_80167164_ovl5(s32 arg0) {
    if (gPlayerControllers[arg0].buttonHeld & 0x800) {
        return 180.0f;
    }
    if (gPlayerControllers[arg0].buttonHeld & 0x100) {
        return 90.0f;
    }
    if (gPlayerControllers[arg0].buttonHeld & 0x400) {
        return 0.0f;
    }
    if (gPlayerControllers[arg0].buttonHeld & 0x200) {
        return 270.0f;
    }
    return D_8018D6CC_ovl5;
}

void func_801671E8_ovl5(s32 arg0) {
    f32 temp;

    temp = func_80167164_ovl5(arg0);
    if (temp != D_8018D6D0_ovl5) {
        gEntitiesAngleYArray[D_8018E268_ovl5[arg0]] = temp * D_8018D6D4_ovl5 / 180.0f;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016725C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80167374_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80167650_ovl5.s")

s32 func_80167898_ovl5(s32 arg0) {
    s32 temp;

    if (D_8018E3C8_ovl5[arg0] == 0) {
        if (gPlayerControllers[arg0].buttonHeld & 0xF00) {
            return 1;
        }
        return 0;
    }
    temp = D_8018E3D8_ovl5[arg0 * 20];
    if (temp == 0 || temp == 1 || temp == 2 || temp == 3) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016792C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801686E4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168804_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168928_ovl5.s")

s32 func_80168A04_ovl5(s32 arg0, s32 arg1) {
    s32 temp = ABS(arg0 - arg1);
    s32 r = temp % 8;

    if (r) {
        return 0;
    }
    return 1;
}

s32 func_80168A44_ovl5(s32 arg0, s32 arg1) {
    s32 i;

    for (i = 0; i < 0x40; i += 8) {
        if ((arg0 >= i) && (arg0 < i + 8) && (arg1 >= i) && (arg1 < i + 8)) {
            return 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168B30_ovl5.s")

typedef struct Unk2Bytes {
    s8 unk0;
    s8 unk1;
} Unk2Bytes;

Unk2Bytes func_80168E34_ovl5(s32 arg1) {
    Unk2Bytes sp4;

    sp4.unk0 = arg1 % 8;
    sp4.unk1 = arg1 / 8;
    return sp4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168E84_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801690F4_ovl5.s")

s32 func_801695C8_ovl5(void) {
    s32 count = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((D_8018E3C0_ovl5[i] != 0) && (D_8018E3C8_ovl5[i] == 0)) {
            count++;
        }
    }
    return count;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016965C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80169D90_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016A2B8_ovl5.s")

s32 func_8016A61C_ovl5(s32 arg0, s32 arg1) {
    if (func_80165B84_ovl5(arg0) != 0) {
        return 0x29A;
    }
    switch (arg1) {
        case 0:
            return arg0 + 8;
        case 1:
            return arg0 - 8;
        case 3:
            return arg0 - 1;
        case 2:
            return arg0 + 1;
    }
    return 0x29A;
}

s32 func_8016A69C_ovl5(s32 arg0) {
    return D_80187384_ovl5[arg0];
}

s32 func_8016A6B0_ovl5(s32 arg0) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if (D_8018E3C0_ovl5[i] != 0) {
            if (func_80165F1C_ovl5(i) == arg0) {
                if (D_800E9C60[D_8018E268_ovl5[i]] == 3) {
                    return 1;
                }
            }
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016A774_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016B754_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016BEB0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016BFF0_ovl5.s")

void func_8016C208_ovl5(GObj *arg0) {
    if (func_80165F1C_ovl5(D_800E98E0[omCurrentObj->objId]) != D_800E9AA0[omCurrentObj->objId].as_s32) {
        D_800E9C60[D_8018E2A0_ovl5[D_800E9AA0[omCurrentObj->objId].as_s32]] = 0;
        func_800B1900(omCurrentObj->objId);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C28C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C410_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C508_ovl5.s")

void func_8016C8C0_ovl5(GObj *arg0) {
    s32 track;
    s32 idx;
    Vector sp24;
    Vector2 sp1C;

    track = D_800E98E0[omCurrentObj->objId];
    sp1C = func_80166C68_ovl5(track);
    idx = *(s32 *) &sp1C;
    func_801659DC_ovl5(&sp24, track);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp24.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_8018732C_ovl5[idx];
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp24.z;
}

void func_8016C974_ovl5(GObj *arg0, s32 arg1) {
    func_800A9864(D_80187394_ovl5, 0x1869F, 0x10);
    func_800AA018(D_80187398_ovl5);
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_8018E268_ovl5[arg1]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_8018E268_ovl5[arg1]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_8018E268_ovl5[arg1]];
    func_800AF27C();
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

s32 func_8016CA4C_ovl5(s32 arg0) {
    s32 count = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((arg0 != i) && (D_8018E428_ovl5[arg0] < D_8018E428_ovl5[i])) {
            count++;
        }
    }
    return count;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CB14_ovl5.s")

void func_8016CB7C_ovl5(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = func_8016CC88_ovl5;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800DDA90[omCurrentObj->objId] = 0x24;
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    ohSleep(0x1E);
    D_8018E260_ovl5 = 0x3C;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CC88_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CFB0_ovl5.s")

void func_8016E650_ovl5(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    Unk28Words sp20 = D_80186A0C_ovl5;
    SPObj *spobj;

    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20.unk0[arg1]);
    spobj->xOffset = arg2;
    spobj->yOffset = arg3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016E6F0_ovl5.s")

void func_8016E8D0_ovl5(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
    s32 sp34;
    s32 sp30;
    s32 sp2C;

    if (arg1 >= 0x464F) {
        sp2C = 0x63;
        sp30 = 0x3B;
        sp34 = 9;
    } else {
        sp2C = func_8016F3A8_ovl5(arg1);
        sp30 = func_8016F3C4_ovl5(arg1);
        sp34 = func_8016F3E8_ovl5(arg1);
    }
    func_8016E650_ovl5(arg0, sp2C % 10, (s32) (arg2 + 38.0f), (s32) arg3);
    func_8016E650_ovl5(arg0, sp2C / 10, (s32) (arg2 + 31.0f), (s32) arg3);
    func_8016E650_ovl5(arg0, sp30 % 10, (s32) (arg2 + 19.0f), (s32) arg3);
    func_8016E650_ovl5(arg0, sp30 / 10, (s32) (arg2 + 12.0f), (s32) arg3);
    func_8016E650_ovl5(arg0, sp34, (s32) arg2, (s32) arg3);
}

void func_8016EA4C_ovl5(void) {
}

u16 func_8016EA54_ovl5(s32 arg0) {
    switch (arg0) {
        case 0x1D:
            return gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord;
        case 0x1F:
            return gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord;
        case 0x1E:
            return gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016EAFC_ovl5.s")

void func_8016EF44_ovl5(u8 *arg0, u16 *arg1) {
    arg0[0x14] = arg1[0];
    arg0[0x15] = arg1[1];
    arg0[0x16] = arg1[2];
    arg0[0x18] = arg1[3];
    arg0[0x19] = arg1[4];
    arg0[0x1A] = arg1[5];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016EF78_ovl5.s")

void func_8016F2F0_ovl5(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = NULL;
    omLinkGObjDL(arg0, &func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_8015C740_ovl5(arg0, &D_801870B4_ovl5);
    func_8015C740_ovl5(arg0, &D_801870D4_ovl5);
    func_8015C740_ovl5(arg0, &D_801870F4_ovl5);
    curObjSleepForever();
}

s32 func_8016F3A8_ovl5(s32 arg0) {
    return (arg0 % 30) * 3;
}

s32 func_8016F3C4_ovl5(s32 arg0) {
    return (arg0 / 30) % 60;
}

s32 func_8016F3E8_ovl5(s32 arg0) {
    return (arg0 / 30) / 60;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016F40C_ovl5.s")

void func_8016F730_ovl5(void) {
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

void func_8016F770_ovl5(s32 arg0) {
    if (D_800D6B24 == 0) {
        if (D_8018E260_ovl5 != 0) {
            D_8018E260_ovl5--;
            if ((D_8018E260_ovl5 == 0) || (gPlayerControllers->buttonPressed & 0x9000)) {
                D_800D6B68 = gGameState;
                gGameState = 0x20;
                func_8016CB14_ovl5();
                func_8016F730_ovl5();
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016F7EC_ovl5.s")

void func_8016FA8C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80186A80_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016FAB0_ovl5.s")

