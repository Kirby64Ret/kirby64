#include "common.h"
#include "buffers.h"
#include "main/object_manager.h"
#include "main/contpad.h"
#include "GObj.h"
#include "ovl1/ovl1_1.h"
#include "ovl1/ovl1_2.h"
#include "ovl1/ovl1_3.h"
#ifdef PORT
/* src/ovl1/ovl1_5.h carries a stale ILP32-era duplicate SPObj typedef.
 * Under LP64 its pointer members inflate, so its unkBA alias lands at 0xDE
 * -- 8 bytes past gfx[1].b.bg.s.imageFlip (0xD6), inside imageYorig -- while
 * the real include/SPObj.h pins unk5A/unkBA to the imageFlip bytes of the
 * two command blocks. Pre-claim the old header's include guard and use the
 * real layout; the only other things this TU needs from ovl1_5.h is the
 * func_800AD1A0 declaration, reproduced here. */
#include "SPObj.h"
#define OVL1_5_H
void func_800AD1A0(void *);
#endif
#include "ovl1/ovl1_5.h"
#include "track_arrays.h"
#include "ovl1/ovl1_7.h"
#include "ovl2/ovl2_8.h"
#include "ovl5/ovl5_11.h"

extern u8 D_8018A12C_ovl5[];
typedef union Unk28Words {
    s32 unk0[10];
} Unk28Words;

extern s32 D_8018EDEC_ovl5; // track
extern SPObj *D_80189DE8_ovl5;
extern SPObj *D_80189E08_ovl5;
extern SPObj *D_80189E28_ovl5;
extern SPObj *D_80189E48_ovl5;
extern SPObj *D_80189E68_ovl5;
extern SPObj *D_80189E88_ovl5;
extern SPObj *D_8018A0C0_ovl5;
extern u32 sKirbyHeadphoneModel; // model ptr
extern u32 D_8018A118_ovl5; // model ptr
extern u32 D_8018A0F0_ovl5; // model ptr
extern Gfx D_80189D10_ovl5[];
extern f32 D_8018A0E0_ovl5[][2];
extern u8 D_8018EDE1_ovl5;
extern u8 D_8018EDE0_ovl5;
extern s32 D_8018EDE4_ovl5;
extern s32 D_8018EDE8_ovl5;
extern u32 D_8018EDF4_ovl5;
extern u32 D_8018EDF8_ovl5;
extern s32 D_8018EDFC_ovl5;
extern u32 D_8018A11C_ovl5[]; // model ptr array
extern GObj *D_800DE350[];

void func_80180510_ovl5(s32 arg0);
void func_80180468_ovl5(s32 arg0);
void func_80180AE0_ovl5(s32 arg0);
void func_80181E58_ovl5(s32 arg0);
void func_80181DF8_ovl5(s32 arg0);
void func_80181D00_ovl5(GObj *arg0);
void func_801813FC_ovl5(GObj *arg0);
void func_80181AEC_ovl5(GObj *arg0);
void func_80181C00_ovl5(GObj *o);
void func_80180FF8_ovl5(GObj *o);
void func_80180C08_ovl5(GObj *o);

void func_80180360_ovl5(s32 arg0) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            func_80180468_ovl5(arg0);
            return;
        case 1:
            func_80180AE0_ovl5(arg0);
            return;
        case 2:
            func_80180C08_ovl5(arg0);
            return;
        case 3:
            func_8018124C_ovl5(arg0);
            return;
        case 4:
            func_801813FC_ovl5(arg0);
            return;
        case 5:
            func_80181AEC_ovl5(arg0);
            return;
        case 6:
            func_80181C00_ovl5(arg0);
            return;
        case 7:
            func_80181D00_ovl5(arg0);
            return;
        case 8:
            func_80181DF8_ovl5(arg0);
            /* fallthrough */
        default:
            return;
    }
}

void func_8018043C_ovl5(s32 arg0) {
    D_800E9C60[D_8018EDEC_ovl5] = D_8018A12C_ovl5[arg0 * 8];
}

void func_80180468_ovl5(s32 arg0) {
    D_800E98E0[omCurrentObj->objId] = 10;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_80180510_ovl5;
    while (1) {
        ohSleep(1);
    }
}

#ifdef NON_MATCHING
void play_sound(s32);
void play_music(s32, s32);
void auFunc80020C88(void);
s32 get_sound_id_from_index(s32);
void func_8018043C_ovl5(s32);

void func_80180510_ovl5(s32 arg0) {
    s32 *p;
    s32 t;
    s32 step;

    if (D_8018EDE0_ovl5 != 0) {
        return;
    }
    p = &D_800E98E0[omCurrentObj->objId];
    t = *p;
    if (t != 0) {
        *p = t - 1;
        return;
    }
    if (gPlayerControllers[0].buttonHeld & 0xF00) {
        D_800E9C60[omCurrentObj->objId] += 1;
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        D_800E9C60[omCurrentObj->objId] = 0;
    }
    p = &D_800E9AA0[omCurrentObj->objId].as_s32;
    t = *p;
    if (t != 0) {
        *p = t - 1;
        return;
    }
    if (D_800E98E0[D_8018EDEC_ovl5] != 0) {
        return;
    }
    if (gPlayerControllers[0].buttonPressed & 0x4000) {
        play_sound(0x2B);
        D_8018EDE0_ovl5 = 1;
        return;
    }
    if (gPlayerControllers[0].buttonPressed & 0x9000) {
        if (D_800E9AA0[D_8018EDEC_ovl5].as_s32 == 0) {
            D_800E9AA0[D_8018EDEC_ovl5].as_s32 = 1;
            if (D_8018EDE1_ovl5 == 0) {
                D_8018EDF4_ovl5 = D_8018EDE4_ovl5;
                func_8018043C_ovl5(D_8018EDE4_ovl5);
                play_music(0, 0x99999999);
                play_music(0, D_8018A128_ovl5[D_8018EDE4_ovl5 * 2]);
                return;
            }
            D_8018EDF8_ovl5 = D_8018EDE8_ovl5;
            auFunc80020C88();
            play_sound(get_sound_id_from_index(D_8018EDE8_ovl5));
            return;
        }
        if (D_800E9AA0[D_8018EDEC_ovl5].as_s32 == 1) {
            if (D_8018EDE1_ovl5 == 0) {
                if (D_8018EDF4_ovl5 == D_8018EDE4_ovl5) {
                    D_800E9AA0[D_8018EDEC_ovl5].as_s32 = 0;
                    D_8018EDF4_ovl5 = 0x1869F;
                    play_music(0, 0x99999999);
                    return;
                }
                D_8018EDF4_ovl5 = D_8018EDE4_ovl5;
                func_8018043C_ovl5(D_8018EDE4_ovl5);
                play_music(0, 0x99999999);
                play_music(0, D_8018A128_ovl5[D_8018EDE4_ovl5 * 2]);
                return;
            }
            if (D_8018EDF8_ovl5 == D_8018EDE8_ovl5) {
                D_800E9AA0[D_8018EDEC_ovl5].as_s32 = 0;
                D_8018EDF8_ovl5 = 0x1869F;
                auFunc80020C88();
                return;
            }
            D_8018EDF8_ovl5 = D_8018EDE8_ovl5;
            auFunc80020C88();
            play_sound(get_sound_id_from_index(D_8018EDE8_ovl5));
        }
        return;
    }
    if ((gPlayerControllers[0].buttonPressed & 0x200) && (D_8018EDE1_ovl5 == 1)) {
        D_800E98E0[D_8018EDEC_ovl5] = 1;
        D_800EA8A0[D_8018EDEC_ovl5] = -4.0f;
        D_8018EDE1_ovl5 = 0;
        D_800E9AA0[D_8018EDEC_ovl5].as_s32 = 0;
        auFunc80020C88();
        D_8018EDF4_ovl5 = 0x1869F;
        play_sound(0x113);
        return;
    }
    if ((gPlayerControllers[0].buttonPressed & 0x100) && (D_8018EDE1_ovl5 == 0)) {
        play_sound(0x113);
        D_800E98E0[D_8018EDEC_ovl5] = 1;
        D_800EA8A0[D_8018EDEC_ovl5] = 4.0f;
        D_8018EDE1_ovl5 = 1;
        D_800E9AA0[D_8018EDEC_ovl5].as_s32 = 0;
        play_music(0, 0x99999999);
        D_8018EDF8_ovl5 = 0x1869F;
        return;
    }
    if (gPlayerControllers[0].buttonHeld & 0x800) {
        if (D_8018EDE1_ovl5 == 0) {
            step = (D_800E9C60[omCurrentObj->objId] < 0x29) ? 1 : 0xA;
            D_8018EDE4_ovl5 += step;
            if (D_8018EDE4_ovl5 >= 0x3E) {
                D_8018EDE4_ovl5 -= 0x3E;
            }
        } else {
            step = (D_800E9C60[omCurrentObj->objId] < 0x29) ? 1 : 0xA;
            D_8018EDE8_ovl5 += step;
            if (D_8018EDFC_ovl5 < D_8018EDE8_ovl5) {
                D_8018EDE8_ovl5 = (D_8018EDE8_ovl5 - D_8018EDFC_ovl5) - 1;
            }
        }
        if (D_800E9C60[omCurrentObj->objId] < 0x10) {
            D_800E9AA0[omCurrentObj->objId].as_s32 = (s32) 5.0f;
        } else {
            D_800E9AA0[omCurrentObj->objId].as_s32 = (s32) 1.0f;
        }
        return;
    }
    if (gPlayerControllers[0].buttonHeld & 0x400) {
        if (D_8018EDE1_ovl5 == 0) {
            step = (D_800E9C60[omCurrentObj->objId] < 0x29) ? 1 : 0xA;
            D_8018EDE4_ovl5 -= step;
            if (D_8018EDE4_ovl5 < 0) {
                D_8018EDE4_ovl5 += 0x3E;
            }
        } else {
            step = (D_800E9C60[omCurrentObj->objId] < 0x29) ? 1 : 0xA;
            D_8018EDE8_ovl5 -= step;
            if (D_8018EDE8_ovl5 < 0) {
                D_8018EDE8_ovl5 = D_8018EDE8_ovl5 + D_8018EDFC_ovl5 + 1;
            }
        }
        if (D_800E9C60[omCurrentObj->objId] < 0x10) {
            D_800E9AA0[omCurrentObj->objId].as_s32 = (s32) 5.0f;
        } else {
            D_800E9AA0[omCurrentObj->objId].as_s32 = (s32) 1.0f;
        }
    }
}
#else
// https://decomp.me/scratch/HLgy8
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_80180510_ovl5.s")
#endif

void func_80180AE0_ovl5(s32 arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_80189DE8_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_80189DE8_ovl5);
    spobj->xOffset = 160.0f;
    spobj->yOffset = 10.0f;
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    func_8015C740_ovl5(arg0, &D_80189E08_ovl5);
    func_8015C740_ovl5(arg0, &D_80189E28_ovl5);
    func_8015C740_ovl5(arg0, &D_80189E48_ovl5);
    func_8015C740_ovl5(arg0, &D_80189E68_ovl5);
    func_8015C740_ovl5(arg0, &D_80189E88_ovl5);
    curObjSleepForever();
}

typedef struct Unk8Floats {
    f32 unk0;
    f32 unk4;
} Unk8Floats;

void func_800A9F98(s32, f32);
void func_800AA608(void *, u32, f32, u32, f32);
void animUpdateModelTreeAnimation(GObj *);
void animResetTextureAnimation(GObj *);

void func_80180C08_ovl5(GObj *arg0) {
    Unk8Floats sp70 = *(Unk8Floats *) &D_80189CE0_ovl5;
    s32 prevAnim;
    s32 prevState;
    s32 t;

    D_8018EDEC_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    prevAnim = ((s32 *) D_800E9AA0)[omCurrentObj->objId];
    D_800E9C60[omCurrentObj->objId] = 0;
    prevState = D_800E9C60[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_80180FF8_ovl5;
    func_800A9864(D_8018A0F4_ovl5, 0x1869F, 0x10);
    func_800AA018(D_8018A0F8_ovl5[((s32 *) D_800E9AA0)[omCurrentObj->objId]]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    if (D_8018EDE1_ovl5 == 0) {
        D_800EA6E0[omCurrentObj->objId] = -45.0f;
    } else {
        D_800EA6E0[omCurrentObj->objId] = 45.0f;
    }
    gEntitiesAngleYArray[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] * 3.1415927f) / 180.0f;
    while (1) {
        if ((D_8018EDE1_ovl5 == 0) && (((s32 *) D_800E9AA0)[omCurrentObj->objId] == 1)) {
            t = D_800E9C60[omCurrentObj->objId];
            if (prevState != t) {
                func_800A9F98(D_8018A100_ovl5, t);
                if (D_800E9C60[omCurrentObj->objId] == 0) {
                    animUpdateModelTreeAnimation(arg0);
                }
                animResetTextureAnimation(arg0);
                prevState = D_800E9C60[omCurrentObj->objId];
            }
        } else if (D_800E9C60[omCurrentObj->objId] != 0) {
            D_800E9C60[omCurrentObj->objId] = 0;
            func_800A9F98(D_8018A100_ovl5, D_800E9C60[omCurrentObj->objId]);
            if (D_800E9C60[omCurrentObj->objId] == 0) {
                animUpdateModelTreeAnimation(arg0);
            }
            animResetTextureAnimation(arg0);
            prevState = D_800E9C60[omCurrentObj->objId];
        }
        if (prevAnim != ((s32 *) D_800E9AA0)[omCurrentObj->objId]) {
            func_800AA608(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild,
                          D_8018A0F8_ovl5[((s32 *) D_800E9AA0)[omCurrentObj->objId]], 0.0f, D_8018A0F4_ovl5, 6.0f);
            func_800AA018(D_8018A0F8_ovl5[((s32 *) D_800E9AA0)[omCurrentObj->objId]]);
            prevAnim = ((s32 *) D_800E9AA0)[omCurrentObj->objId];
        }
        ohSleep(1);
    }
}

void func_80180FF8_ovl5(GObj *o) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_8018EDE1_ovl5 == 0) {
            if (D_800EA6E0[omCurrentObj->objId] > -45.0f) {
                D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
                gEntitiesAngleYArray[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] * 3.1415927f) / 180.0f;
                D_800EA8A0[omCurrentObj->objId] += (D_800EA6E0[omCurrentObj->objId] > 0.0f) ? -0.8f : 0.8f;
            } else {
                D_800EA6E0[omCurrentObj->objId] = -45.0f;
                gEntitiesAngleYArray[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] * 3.1415927f) / 180.0f;
                D_800E98E0[omCurrentObj->objId] = 0;
            }
        } else if (D_800EA6E0[omCurrentObj->objId] < 45.0f) {
            D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
            gEntitiesAngleYArray[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] * 3.1415927f) / 180.0f;
            D_800EA8A0[omCurrentObj->objId] += (D_800EA6E0[omCurrentObj->objId] < 0.0f) ? 0.8f : -0.8f;
        } else {
            D_800EA6E0[omCurrentObj->objId] = 45.0f;
            gEntitiesAngleYArray[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] * 3.1415927f) / 180.0f;
            D_800E98E0[omCurrentObj->objId] = 0;
        }
    }
}

#ifdef NON_MATCHING
extern u32 D_8018A108_ovl5;    // model ptr
extern u32 D_8018A10C_ovl5[]; // model ptr array

void func_8018124C_ovl5(GObj *arg0) {
    func_800A9864(D_8018A108_ovl5, 0x1869F, 0x10);
    while (1) {
        if (D_8018EDE1_ovl5 == 1) {
            if (D_800E9AA0[D_8018EDEC_ovl5].as_s32 == 0) {
                if ((func_800AA934(D_8018A10C_ovl5[0]) == 0) && (func_800AA934(D_8018A10C_ovl5[1]) == 0)) {
                    func_800AECC0(2.0f);
                    func_800AED20(2.0f);
                    func_800AA018(D_8018A10C_ovl5[0]);
                } else if (func_800AA934(D_8018A10C_ovl5[1]) == 1) {
                    func_800AECC0(0.0f);
                    func_800AED20(0.0f);
                }
            } else if ((D_800E9AA0[D_8018EDEC_ovl5].as_s32 == 1)) {
                if ((D_800E09D0[omCurrentObj->objId] == 0.0f) || (func_800AA934(D_8018A10C_ovl5[1]) == 0)) {
                    func_800AECC0(2.0f);
                    func_800AED20(2.0f);
                    func_800AA018(D_8018A10C_ovl5[1]);
                }
            }
        } else if ((func_800AA934(D_8018A10C_ovl5[0]) == 1) || (func_800AA934(D_8018A10C_ovl5[1]) == 1)) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
            func_800AA018(D_8018A10C_ovl5[2]);
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_8018124C_ovl5.s")
#endif

void func_801813FC_ovl5(GObj *arg0) {
    func_800A9864(D_8018A118_ovl5, 0x1869F, 0x10);
    while (1) {
        if (D_8018EDE1_ovl5 == 0) {
            if (D_800E9AA0[D_8018EDEC_ovl5].as_s32 == 0) {
                if ((func_800AA934(D_8018A11C_ovl5[0]) == 0) && (func_800AA934(D_8018A11C_ovl5[1]) == 0)) {
                    func_800AECC0(2.0f);
                    func_800AED20(2.0f);
                    func_800AA018(D_8018A11C_ovl5[0]);
                } else if (func_800AA934(D_8018A11C_ovl5[1]) == 1) {
                    func_800AECC0(0.0f);
                    func_800AED20(0.0f);
                }
            } else if ((D_800E9AA0[D_8018EDEC_ovl5].as_s32 == 1)) {
                if ((D_800E09D0[omCurrentObj->objId] == 0.0f) || (func_800AA934(D_8018A11C_ovl5[1]) == 0)) {
                    func_800AECC0(2.0f);
                    func_800AED20(2.0f);
                    func_800AA018(D_8018A11C_ovl5[1]);
                }
            }
        } else if ((func_800AA934(D_8018A11C_ovl5[0]) == 1) || (func_800AA934(D_8018A11C_ovl5[1]) == 1)) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
            func_800AA018(D_8018A11C_ovl5[2]);
        }
        ohSleep(1);
    }
}

// struct copy + phantom stack
SPObj *func_801815BC_ovl5(GObj *o, s32 arg1, f32 x, f32 y);
SPObj *func_801815BC_ovl5(GObj *o, s32 arg1, f32 x, f32 y) {
#ifdef PORT
    /* D_80189CE8 is ten N64 pointer words; the PC data generator emits the
       region as a native void*[] (8-byte slots), so the word-struct copy
       reads pointer halves. Index the live table instead. */
    void **sp20 = (void **) &D_80189CE8_ovl5;
#else
    Unk28Words sp20 = *(Unk28Words *) &D_80189CE8_ovl5;
#endif
    SPObj *spobj;

#ifdef PORT
    spobj = func_8015C740_ovl5(o, sp20[arg1]);
#else
    spobj = func_8015C740_ovl5(o, sp20.unk0[arg1]);
#endif
    spobj->xOffset = x;
    spobj->yOffset = y;
}

void func_80181644_ovl5(SPObj *spobj, u8 cond1, s32 cond2, s32 idx) {
    f32 *var_v0;

    if (cond1) {
        if (cond2) {
            var_v0 = D_8018A018_ovl5[idx];
        } else {
            var_v0 = D_8018A060_ovl5[idx];
        }
    } else {
        var_v0 = D_8018A0A8_ovl5;
    }
    spobj->primColorRed = var_v0[0];
    spobj->primColorGreen = var_v0[1];
    spobj->primColorBlue = var_v0[2];
    spobj->envColorRed = var_v0[3];
    spobj->envColorGreen = var_v0[4];
    spobj->envColorBlue = var_v0[5];
}

void func_801819C8_ovl5(GObj *o, u8 arg1, s32 arg2) {
    f32 *temp_s0;

    temp_s0 = D_80189FE8_ovl5[arg1];
    func_80181644_ovl5(
        func_801815BC_ovl5(
            o,
            arg2 / 100,
            temp_s0[0],
            temp_s0[1]
        ),
        arg1 == D_8018EDE1_ovl5,
        arg1 == 0,
        0
    );
    func_80181644_ovl5(
        func_801815BC_ovl5(
            o,
            (arg2 % 100) / 10,
            temp_s0[2],
            temp_s0[3]
        ),
        arg1 == D_8018EDE1_ovl5,
        arg1 == 0,
        1
    );
    func_80181644_ovl5(
        func_801815BC_ovl5(
            o,
            arg2 % 10,
            temp_s0[4],
            temp_s0[5]
        ),
        arg1 == D_8018EDE1_ovl5,
        arg1 == 0,
        2
    );
}

void func_80181AEC_ovl5(GObj *o) {
    s32 i;
    u8 j;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(o, &func_800AD1A0, 0xA, 0x80000000, 0xA);
    j = D_8018EDE1_ovl5;
    i = D_8018EDE4_ovl5; i++;
    while (1) {
        if ((i != D_8018EDE4_ovl5) || (D_8018EDE1_ovl5 != j)) {
            func_800ACBDC(o);
            i = D_8018EDE4_ovl5;
            j = D_8018EDE1_ovl5;
            func_801819C8_ovl5(o, 0, i + 1);
        }
        ohSleep(1);
    }
}

void func_80181C00_ovl5(GObj *o) {
    s32 i;
    u8 j;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(o, &func_800AD1A0, 10, 0x80000000, 10);
    j = D_8018EDE1_ovl5;
    i = D_8018EDE8_ovl5; i++;
    while (1) {
        if ((i != D_8018EDE8_ovl5) || (D_8018EDE1_ovl5 != j)) {
            func_800ACBDC(o);
            i = D_8018EDE8_ovl5;
            j = D_8018EDE1_ovl5;
            func_801819C8_ovl5(o, 1, i + 1);
        }
        ohSleep(1);
    }
}

void func_80181D00_ovl5(GObj *arg0) {
    u32 i;
    SPObj *spobj;
    f32 *pos2D;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 10, 0x80000000, 10);
    spobj = func_8015C740_ovl5(arg0, &D_8018A0C0_ovl5);
    i = D_8018EDE1_ovl5; i++;
    while (1) {
        if (i != D_8018EDE1_ovl5) {
            pos2D = D_8018A0E0_ovl5[D_8018EDE1_ovl5];
            i = D_8018EDE1_ovl5;
            spobj->xOffset = pos2D[0];
            spobj->yOffset = pos2D[1];
        }
        ohSleep(1);
    }
}

void func_80181DF8_ovl5(s32 arg0) {
    D_800DF150[omCurrentObj->objId] = func_80181E58_ovl5;
    func_800A9864(sKirbyHeadphoneModel, 0x1869F, 0x10);
    curObjSleepForever();
}

void func_80181E58_ovl5(s32 arg0) {
    Vector pos;
    Vector angle;
    Vector scale;

    func_800B2340(&pos.x, D_800DFBD0[D_8018EDEC_ovl5][9], D_8018EDEC_ovl5);
    gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = pos.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
    func_800B26D8(&angle, D_800DFBD0[D_8018EDEC_ovl5][9], D_8018EDEC_ovl5);
    gEntitiesAngleXArray[omCurrentObj->objId] = angle.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = angle.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = angle.z;
    func_800B2928(&scale, D_800DFBD0[D_8018EDEC_ovl5][9], D_8018EDEC_ovl5);
    gEntitiesScaleXArray[omCurrentObj->objId] = scale.x;
    gEntitiesScaleYArray[omCurrentObj->objId] = scale.y;
    gEntitiesScaleZArray[omCurrentObj->objId] = scale.z;
}

void func_80181FD8_ovl5(void) {
    D_8018EDE0_ovl5 = 0;
    D_8018EDE4_ovl5 = 0;
    D_8018EDE8_ovl5 = 0;
    D_8018EDE1_ovl5 = 0;
    D_8018EDF4_ovl5 = 0x1869F;
    D_8018EDF8_ovl5 = 0x1869F;
    D_8018EDFC_ovl5 = sSoundCount;
}

void func_80182024_ovl5(void) {
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

void func_8018205C_ovl5(s32 arg0) {
    if ((D_800D6B24 == 0) && (D_8018EDE0_ovl5 != 0)) {
        func_80182024_ovl5();
    }
}

void func_8018209C_ovl5(void) {
    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_800A6BC0(0xA);
    func_800AAF34(0x10, D_8018A0F0_ovl5, 0);
    func_800A71A0(0x10);
    func_80181FD8_ovl5();
    D_800E98E0[request_track_3(0xB, 0, 0x70)] = 0;
    D_800E98E0[request_track_3(0xB, 0, 0x70)] = 1;
    D_800E98E0[request_track_general(0xB, 0, 0x70)] = 2;
    D_800E98E0[request_track_general(0xB, 0, 0x70)] = 8;
    D_800E98E0[request_track_general(0xB, 0, 0x70)] = 3;
    D_800E98E0[request_track_general(0xB, 0, 0x70)] = 4;
    D_800E98E0[request_track_3(0xB, 0, 0x70)] = 5;
    D_800E98E0[request_track_3(0xB, 0, 0x70)] = 6;
    D_800E98E0[request_track_3(0xB, 0, 0x70)] = 7;
    HS64_omMakeGObj(0, &func_8018205C_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80182288_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80189D10_ovl5);
}

// this fb clearing function again
#include "main/vi.h"
#include "main/gtl.h"
extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_80189D40_ovl5;
extern SceneSetup D_80189D5C_ovl5;
void func_800A74D8(void);

// The (u32) cast on D_8012EB00 and the vu16 casts in the clear loop are both
// load-bearing; see src/ovl5/ovl5_7.c func_8017CC3C_ovl5. verify.py reports
// one reloc false positive on the a1 bound (%hi(D_803D6900)+2 / %lo+0x5800
// links to 0x803FC100 exactly).
void func_801822AC_ovl5(void) {
    s32 i;

    func_800A74D8();
    D_80189D40_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_80189D40_ovl5);
    D_80189D5C_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_80189D5C_ovl5);
}

