#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"

extern u8 D_800D6C10[];
extern Gfx D_8018A5B8_ovl5[];
void func_80183FC8_ovl5(void);
void func_80184084_ovl5(void);
extern s32 D_8018EE20_ovl5[];
extern s32 D_8018EE14_ovl5;
void func_80183270_ovl5(GObj *);
extern u8 D_8018EE18_ovl5;
extern u8 D_8018EE10_ovl5;
extern u8 D_8018EE44_ovl5;
extern s32 D_8018EE48_ovl5;
extern s32 D_8018EE4C_ovl5;
extern s32 D_8018EE50_ovl5;
extern s32 D_8018EE54_ovl5;
extern s32 D_8018EE58_ovl5;
extern u16 D_8018EE4A_ovl5;
#include "SPObj.h"
extern struct UnkStruct8015C740 D_8018A690_ovl5;
extern struct UnkStruct8015C740 D_8018A6B0_ovl5;
extern struct UnkStruct8015C740 D_8018A990_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
extern struct GObjProcess *gEntityGObjProcessArray5[];
extern void *D_8018A714_ovl5;
extern void *D_8018A718_ovl5;
extern void *D_8018A98C_ovl5;
s32 func_800A9AA8(void *, s32);
void func_800BA284(s32);
#include "ovl1/save_file.h"
#include "ovl1/track.h"


void func_801831E0_ovl5(GObj *);
void func_80183AFC_ovl5(GObj *);
void func_80183C54_ovl5(GObj *, s32, s32);
void func_801843A0_ovl5(GObj *, s32);
void func_80184888_ovl5(GObj *);
void func_80184BA0_ovl5(GObj *);
void func_80184EC0_ovl5(GObj *);
void func_80185150_ovl5(GObj *);
void func_801853E0_ovl5(GObj *, s32);
void func_80185608_ovl5(GObj *);
void func_801857C4_ovl5(GObj *);
void func_8018590C_ovl5(GObj *);
void func_80185A4C_ovl5(GObj *);

void func_801830A0_ovl5(GObj *arg0) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            func_801831E0_ovl5(arg0);
            break;
        case 1:
            func_80183AFC_ovl5(arg0);
            break;
        case 2:
            func_80183C54_ovl5(arg0, ((s32 *) D_800E9AA0)[omCurrentObj->objId],
                               D_800E9C60[omCurrentObj->objId]);
            break;
        case 5:
            func_80185608_ovl5(arg0);
            break;
        case 6:
            func_801857C4_ovl5(arg0);
            break;
        case 7:
            func_8018590C_ovl5(arg0);
            break;
        case 8:
            func_80185A4C_ovl5(arg0);
            break;
        case 3:
            func_801853E0_ovl5(arg0, D_800E9C60[omCurrentObj->objId]);
            break;
        case 4:
            func_801843A0_ovl5(arg0, D_800E9C60[omCurrentObj->objId]);
            break;
        case 0xA:
            func_80184888_ovl5(arg0);
            break;
        case 9:
            func_80184BA0_ovl5(arg0);
            break;
        case 0xB:
            func_80184EC0_ovl5(arg0);
            break;
        case 0xC:
            func_80185150_ovl5(arg0);
            break;
    }
}

void func_801831E0_ovl5(GObj *arg0) {
    D_8018EE14_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_80183270_ovl5;
    curObjSleepForever();
}

#ifdef NON_MATCHING
#include "main/contpad.h"
void play_sound(s32);
s32 func_80183C2C_ovl5(s32);
void func_80183FA0_ovl5(void);
void func_801840F0_ovl5(void);
void func_801841C0_ovl5(s32);

void func_80183270_ovl5(GObj *arg0) {
    s32 *p;
    s32 t;

    if (D_8018EE10_ovl5 != 0) {
        return;
    }
    p = &D_800E98E0[omCurrentObj->objId];
    t = *p;
    if (t != 0) {
        *p = t - 1;
        return;
    }
    if (gPlayerControllers[0].buttonPressed & 0x9000) {
        switch (D_8018EE44_ovl5) {
            case 9:
            case 10:
            case 11:
                play_sound(0x26B);
                if (D_8018EE18_ovl5 == 0) {
                    D_8018EE18_ovl5 = 8;
                } else {
                    D_8018EE18_ovl5 -= 1;
                }
                func_80183FA0_ovl5();
                func_801840F0_ovl5();
                D_800E98E0[omCurrentObj->objId] = 7;
                return;
            case 12:
            case 13:
            case 14:
                play_sound(0x26B);
                if (D_8018EE18_ovl5 == 8) {
                    D_8018EE18_ovl5 = 0;
                } else {
                    D_8018EE18_ovl5 += 1;
                }
                func_80183FA0_ovl5();
                func_801840F0_ovl5();
                D_800E98E0[omCurrentObj->objId] = 7;
                return;
            default:
                if (func_80183C2C_ovl5((D_8018EE18_ovl5 * 9) + D_8018EE44_ovl5) != 0) {
                    func_801841C0_ovl5((D_8018EE18_ovl5 * 9) + D_8018EE44_ovl5);
                } else {
                    play_sound(0x26A);
                }
                D_800E98E0[omCurrentObj->objId] = 4;
                return;
        }
    }
    if (gPlayerControllers[0].buttonPressed & 0x4000) {
        if (D_8018EE48_ovl5 == 0x29A) {
            play_sound(0x2B);
            D_8018EE10_ovl5 = 1;
            return;
        }
        play_sound(0x2C);
        func_801840F0_ovl5();
        return;
    }
    if ((gPlayerControllers[0].buttonHeld & 0xF00) || (gPlayerControllers[0].buttonHeld & 0x30)) {
        D_800E9C60[omCurrentObj->objId] += 1;
    } else {
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
        D_800E9C60[omCurrentObj->objId] = 0;
    }
    p = &((s32 *) D_800E9AA0)[omCurrentObj->objId];
    t = *p;
    if (t != 0) {
        *p = t - 1;
        return;
    }
    if (gPlayerControllers[0].buttonHeld & 0x20) {
        play_sound(0x26B);
        if (D_8018EE18_ovl5 == 0) {
            D_8018EE18_ovl5 = 8;
        } else {
            D_8018EE18_ovl5 -= 1;
        }
        func_80183FA0_ovl5();
        func_801840F0_ovl5();
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 7;
        return;
    }
    if (gPlayerControllers[0].buttonHeld & 0x10) {
        play_sound(0x26B);
        if (D_8018EE18_ovl5 == 8) {
            D_8018EE18_ovl5 = 0;
        } else {
            D_8018EE18_ovl5 += 1;
        }
        func_80183FA0_ovl5();
        func_801840F0_ovl5();
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 7;
        return;
    }
    if (gPlayerControllers[0].buttonHeld & 0x200) {
        switch (D_8018EE44_ovl5) {
            case 0:
            case 3:
            case 6:
                play_sound(0x26B);
                func_801840F0_ovl5();
                switch (D_8018EE44_ovl5) {
                    case 0:
                        D_8018EE44_ovl5 = 9;
                        break;
                    case 3:
                        D_8018EE44_ovl5 = 0xA;
                        break;
                    case 6:
                        D_8018EE44_ovl5 = 0xB;
                        break;
                }
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
                return;
            case 12:
                play_sound(0x26B);
                func_801840F0_ovl5();
                D_8018EE44_ovl5 = 2;
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
                return;
            case 13:
                play_sound(0x26B);
                func_801840F0_ovl5();
                D_8018EE44_ovl5 = 5;
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
                return;
            case 14:
                play_sound(0x26B);
                func_801840F0_ovl5();
                D_8018EE44_ovl5 = 8;
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
                return;
            case 9:
            case 10:
            case 11:
                play_sound(0x26B);
                if (D_8018EE18_ovl5 == 0) {
                    D_8018EE18_ovl5 = 8;
                } else {
                    D_8018EE18_ovl5 -= 1;
                }
                func_80183FA0_ovl5();
                func_801840F0_ovl5();
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 7;
                return;
            default:
                play_sound(0x26B);
                func_801840F0_ovl5();
                D_8018EE44_ovl5 -= 1;
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
                return;
        }
    }
    if (gPlayerControllers[0].buttonHeld & 0x100) {
        switch (D_8018EE44_ovl5) {
            case 2:
            case 5:
            case 8:
                play_sound(0x26B);
                func_801840F0_ovl5();
                switch (D_8018EE44_ovl5) {
                    case 2:
                        D_8018EE44_ovl5 = 0xC;
                        break;
                    case 5:
                        D_8018EE44_ovl5 = 0xD;
                        break;
                    case 8:
                        D_8018EE44_ovl5 = 0xE;
                        break;
                }
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
                return;
            case 9:
                play_sound(0x26B);
                func_801840F0_ovl5();
                D_8018EE44_ovl5 = 0;
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
                return;
            case 10:
                play_sound(0x26B);
                func_801840F0_ovl5();
                D_8018EE44_ovl5 = 3;
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
                return;
            case 11:
                play_sound(0x26B);
                func_801840F0_ovl5();
                D_8018EE44_ovl5 = 6;
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
                return;
            case 12:
            case 13:
            case 14:
                play_sound(0x26B);
                if (D_8018EE18_ovl5 == 8) {
                    D_8018EE18_ovl5 = 0;
                } else {
                    D_8018EE18_ovl5 += 1;
                }
                func_80183FA0_ovl5();
                func_801840F0_ovl5();
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 7;
                return;
            default:
                play_sound(0x26B);
                func_801840F0_ovl5();
                D_8018EE44_ovl5 += 1;
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
                return;
        }
    }
    if (gPlayerControllers[0].buttonHeld & 0x800) {
        if (((D_8018EE44_ovl5 >= 3) && (D_8018EE44_ovl5 < 6)) || ((D_8018EE44_ovl5 >= 6) && (D_8018EE44_ovl5 < 9))) {
            play_sound(0x26B);
            func_801840F0_ovl5();
            D_8018EE44_ovl5 -= 3;
        }
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
        return;
    }
    if (gPlayerControllers[0].buttonHeld & 0x400) {
        if (((D_8018EE44_ovl5 >= 0) && (D_8018EE44_ovl5 < 3)) || ((D_8018EE44_ovl5 >= 3) && (D_8018EE44_ovl5 < 6))) {
            play_sound(0x26B);
            func_801840F0_ovl5();
            D_8018EE44_ovl5 += 3;
        }
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80183270_ovl5.s")
#endif

void func_80183AFC_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_8018A690_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_8018A690_ovl5);
    spobj->xOffset = 160.0f;
    spobj->yOffset = 10.0f;
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    func_8015C740_ovl5(arg0, &D_8018A6B0_ovl5);
    func_8015C740_ovl5(arg0, &D_8018A990_ovl5);
    curObjSleepForever();
}

s32 func_80183BF4_ovl5(s32 arg0) {
    return 1;
}

s32 func_80183C00_ovl5(s32 arg0) {
    if (D_800D6C10[arg0] == 1) {
        return 1;
    }
    return 0;
}

s32 func_80183C2C_ovl5(s32 arg0) {
    if (D_800D6C10[arg0] == 0) {
        return 0;
    }
    return 1;
}

/* The C for this one is below, next to the D_8018C30C_ovl5 declaration it
   needs (search Ovl5MinigameRow). It cannot be written here: the record
   type is only declared ~100 lines further down, hoisting that declaration
   would re-type every call site in between, and moving the DEFINITION down
   would move the function in .text. So the pragma keeps the address and the
   draft sits where it compiles. */
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80183C54_ovl5.s")

void func_80183FA0_ovl5(void) {
    func_80184084_ovl5();
    func_80183FC8_ovl5();
}

void func_80183FC8_ovl5(void) {
    s32 i;
    s32 t;

    for (i = 0; i < 9; i++) {
        t = request_track_3(0xF, 0, 0x70);
        D_800E98E0[t] = 2;
        ((s32 *) D_800E9AA0)[t] = i;
        D_800E9C60[t] = D_8018EE18_ovl5 * 9 + i;
    }
}

void func_80184084_ovl5(void) {
    s32 i;

    for (i = 0; i < 9; i++) {
        func_800ACBDC(D_800DE350[D_8018EE20_ovl5[i]]);
        func_800B1900(D_8018EE20_ovl5[i]);
    }
}

void func_801840F0_ovl5(void) {
    if (D_8018EE48_ovl5 != 0x29A) {
        func_800ACBDC(D_800DE350[D_8018EE48_ovl5]);
        func_800B1900(D_8018EE4A_ovl5);
        D_8018EE48_ovl5 = 0x29A;
    }
    if (D_8018EE4C_ovl5 != 0x29A) {
        if ((u32) D_800EA360[D_8018EE4C_ovl5] != 0x29A) {
            func_800B1900((u16) D_800EA360[D_8018EE4C_ovl5]);
        }
        if ((u32) D_800EA520[D_8018EE4C_ovl5] != 0x29A) {
            func_800B1900((u16) D_800EA520[D_8018EE4C_ovl5]);
        }
        func_800B1900((u16) D_8018EE4C_ovl5);
        D_8018EE4C_ovl5 = 0x29A;
    }
}

void func_801840F0_ovl5(void);

void func_801841C0_ovl5(s32 arg0) {
    s32 a;
    s32 b;

    if ((D_8018EE48_ovl5 != 0x29A) && (arg0 == D_800E98E0[D_8018EE48_ovl5])) {
        play_sound(0x26B);
        return;
    }
    play_sound(0xEE);
    func_801840F0_ovl5();
    a = request_track_3(0xF, 0, 0x70);
    D_800E98E0[a] = 3;
    D_800E9C60[a] = arg0;
    a = request_track_general(0xF, 0, 0x70);
    D_800E98E0[a] = 4;
    D_800E9C60[a] = arg0;
    D_800EA520[a] = 0x29A;
    D_800EA360[a] = 0x29A;
    if (arg0 == 2) {
        b = request_track_general(0xF, 0, 0x70);
        D_800E98E0[b] = 0xA;
        D_800EA360[a] = b;
        b = request_track_general(0xF, 0, 0x70);
        D_800E98E0[b] = 9;
        D_800EA520[a] = b;
    } else if (arg0 == 8) {
        b = request_track_general(0xF, 0, 0x70);
        D_800E98E0[b] = 0xB;
        D_800EA360[a] = b;
        b = request_track_general(0xF, 0, 0x70);
        D_800E98E0[b] = 0xC;
        D_800EA520[a] = b;
    }
}

#include "DObj.h"

typedef struct Unk8018C30C {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ void *unk14;
    /* 0x18 */ void *unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ f32 unk20;
    /* 0x24 */ f32 unk24;
    /* 0x28 */ f32 unk28;
    /* 0x2C */ f32 unk2C;
    /* 0x30 */ f32 unk30;
} Unk8018C30C;

extern Unk8018C30C D_8018C30C_ovl5[];

#if defined(MIPS_TO_C) || defined(PORT)
/* func_80183C54_ovl5 -- the minigame ROSTER ROW seat. Its #pragma is ~100
 * lines above, at the function's real address; see the note there for why the
 * C lives down here instead.
 *
 * FACTORY: 13/211 words DIFFER (measured by splicing this draft in place of
 * that pragma in a scratch copy and running verify.py). Instruction count is
 * exact and every branch matches. The residue is two register-allocation
 * facts: the frame comes out 0x58 where the ROM has 0x50 (7 of the 13 diffs
 * are the arg2 home and the prologue/epilogue that follow from it), and IDO
 * materialises &D_8018C008_ovl5 in $a3 where the ROM uses $a2 (4 diffs).
 * Swept and rejected: all 720 declaration orders of the six locals (the best
 * is the one written here -- putting blinkOn last is worth 2), inlining
 * `entry` (24/211) and inlining `n` (19/211).
 * What paid: writing every `pos + constant` add with the POSITION first
 * (LEVERS lever 2 -- the evaluation order of an add between two memory loads
 * is the reverse of source order) took it from 29 to 15.
 *
 * PORT: shared rather than duplicated -- the arithmetic is all f32/s32 and
 * the record is indexed through a named struct. Two known port defects,
 * BOTH inherited from the matched sibling func_801853E0_ovl5 below rather
 * than introduced here: the 0x6C/0x78/0xCC/0xD8 stores are raw byte offsets
 * into the SPObj's two RSP command blocks, which the LP64 SPObj in
 * include/SPObj.h relocates, and Ovl5MinigameRow pins the 0x10 byte at the
 * N64 offset. Both need the same fix and should be done together. */
typedef struct Ovl5MinigameRow {
    /* 0x00 */ u8 filler0[0x10];
    /* 0x10 */ u8 unk10;
    /* 0x11 */ u8 filler11[3];
    /* 0x14 */ struct UnkStruct8015C740 *unk14;
    /* 0x18 */ u8 filler18[0x1C];
} Ovl5MinigameRow; /* 0x34, the same record as Unk8018C30C above with
                      the 0x10 byte and the 0x14 sprite spec named */

extern struct UnkStruct8015C740 D_8018A6D0_ovl5;
extern struct UnkStruct8015C740 D_8018A6F0_ovl5;
extern Vector2 D_8018A71C_ovl5[];
extern struct UnkStruct8015C740 *D_8018A844_ovl5[];
extern f32 D_8018A864_ovl5[];
extern f32 D_8018C008_ovl5[];
extern f32 D_8018C150_ovl5[];
extern f32 D_8018C158_ovl5[];
extern struct UnkStruct8015C740 *D_8018C160_ovl5[];

void func_80183C54_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    Ovl5MinigameRow *entry;
    SPObj *sp;
    SPObj *sp2;
    s32 blinkOff;
    s32 n;
    s32 blinkOn;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_8018EE20_ovl5[arg1] = omCurrentObj->objId;
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    if (func_80183C2C_ovl5(arg2) == 0) {
        sp = func_8015C740_ovl5(arg0, &D_8018A6F0_ovl5);
        sp->xOffset = D_8018A71C_ovl5[arg1].x;
        sp->yOffset = D_8018A71C_ovl5[arg1].y;
        curObjSleepForever();
    }
    sp = func_8015C740_ovl5(arg0, &D_8018A6D0_ovl5);
    blinkOff = D_8018EE50_ovl5;
    if (func_80183C00_ovl5(arg2) != 0) {
        blinkOn = D_8018EE54_ovl5;
    }
    *((s32 *) (((u8 *) sp) + 0x6C)) = blinkOff;
    *((s32 *) (((u8 *) sp) + 0x78)) = blinkOff;
    *((s32 *) (((u8 *) sp) + 0xCC)) = blinkOff;
    *((s32 *) (((u8 *) sp) + 0xD8)) = blinkOff;
    sp->xOffset = D_8018A71C_ovl5[arg1].x;
    sp->yOffset = D_8018A71C_ovl5[arg1].y;
    entry = &((Ovl5MinigameRow *) D_8018C30C_ovl5)[arg2];
    sp2 = func_8015C740_ovl5(arg0, entry->unk14);
    sp2->xOffset = D_8018A71C_ovl5[arg1].x + D_8018C008_ovl5[0];
    sp2->yOffset = D_8018A71C_ovl5[arg1].y + D_8018C008_ovl5[1];
    n = arg2 + 1;
    sp2 = func_8015C740_ovl5(arg0, D_8018C160_ovl5[n % 10]);
    sp2->xOffset = D_8018A71C_ovl5[arg1].x + D_8018C150_ovl5[0];
    sp2->yOffset = D_8018A71C_ovl5[arg1].y + D_8018C150_ovl5[1];
    if (n >= 10) {
        sp2 = func_8015C740_ovl5(arg0, D_8018C160_ovl5[n / 10]);
        sp2->xOffset = D_8018A71C_ovl5[arg1].x + D_8018C158_ovl5[0];
        sp2->yOffset = D_8018A71C_ovl5[arg1].y + D_8018C158_ovl5[1];
    }
    if (entry->unk10 != 0) {
        sp2 = func_8015C740_ovl5(arg0, D_8018A844_ovl5[entry->unk10]);
        sp2->xOffset = D_8018A71C_ovl5[arg1].x + D_8018A864_ovl5[0];
        sp2->yOffset = D_8018A71C_ovl5[arg1].y + D_8018A864_ovl5[1];
    }
    while (1) {
        if (D_800D6C10[arg2] == 1) {
            ohSleep(6);
            *((s32 *) (((u8 *) sp) + 0x6C)) = blinkOn;
            *((s32 *) (((u8 *) sp) + 0x78)) = blinkOn;
            *((s32 *) (((u8 *) sp) + 0xCC)) = blinkOn;
            *((s32 *) (((u8 *) sp) + 0xD8)) = blinkOn;
            ohSleep(6);
            *((s32 *) (((u8 *) sp) + 0x6C)) = blinkOff;
            *((s32 *) (((u8 *) sp) + 0x78)) = blinkOff;
            *((s32 *) (((u8 *) sp) + 0xCC)) = blinkOff;
            *((s32 *) (((u8 *) sp) + 0xD8)) = blinkOff;
        } else {
            ohSleep(1);
        }
    }
}
#endif
extern Vector D_8018C300_ovl5;
void func_800A9088(s32);
void func_800A9F98(s32, f32);
void func_800AA018(s32);
void func_800AF27C(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B1378(struct DObj *, s32, f32);

/* 30/314: instruction-for-instruction correct, and every stack offset is right.
   The only defect is that IDO swaps the two callee-saved registers -- the ROM
   holds arg0 in $s1 and the D_8018C30C_ovl5 record base in $s2, this C gets the
   opposite. Swept with no effect on the pair: pointer local vs inline indexing,
   the pointer assigned in the body instead of at its declaration, declaring it
   first/last, a `GObj *obj = arg0;` copy, and 1-3 dead scalar locals (the dead
   local is what fixes the frame in the inline form; with the pointer local the
   frame is already 0x60). The chained store of unkC IS load-bearing: three
   separate statements emit three lwc1 where the ROM has one. */
void func_801843A0_ovl5(GObj *arg0, s32 arg1)
{
  Unk8018C30C *p = &D_8018C30C_ovl5[arg1];
  f32 var;
  s32 i;
  D_8018EE4C_ovl5 = omCurrentObj->objId;
  func_800A9088(p->unk0);
  gEntitiesNextPosXArray[omCurrentObj->objId] = p->unk28 + D_8018C300_ovl5.x;
  gEntitiesNextPosYArray[omCurrentObj->objId] = p->unk2C + D_8018C300_ovl5.y;
  gEntitiesNextPosZArray[omCurrentObj->objId] = p->unk30 + D_8018C300_ovl5.z;
  if (arg1 == 8)
  {
    if (p->unk4 != 0)
    {
      func_800A9F98(p->unk4, 128.0f);
    }
    if (p->unk8 != 0)
    {
      func_800A9F98(p->unk8, 128.0f);
    }
    D_800DFBD0[omCurrentObj->objId][0x1E]->scale.v.y = 0.0f;
  }
  else
  {
    if (p->unk4 != 0)
    {
      func_800AA018(p->unk4);
    }
    if (p->unk8 != 0)
    {
      func_800AA018(p->unk8);
    }
  }
  arg0->onAnimate = func_800B1378;
  gEntitiesAngleXArray[omCurrentObj->objId] = (p->unk1C * 3.14159274f) / 180.0f;
  gEntitiesAngleYArray[omCurrentObj->objId] = (p->unk20 * 3.14159274f) / 180.0f;
  gEntitiesAngleZArray[omCurrentObj->objId] = (p->unk24 * 3.14159274f) / 180.0f;
  gEntitiesScaleXArray[omCurrentObj->objId] = 0.0f;
  gEntitiesScaleYArray[omCurrentObj->objId] = 0.0f;
  gEntitiesScaleZArray[omCurrentObj->objId] = 0.0f;
  var = p->unkC / ((f32) 4);
  i = 0;
  do
  {
    gEntitiesScaleXArray[omCurrentObj->objId] += var;
    gEntitiesScaleYArray[omCurrentObj->objId] += var;
    gEntitiesScaleZArray[omCurrentObj->objId] += var;
    ohSleep(1);
    i++;
  }
  while (i != 4);
  gEntitiesScaleZArray[omCurrentObj->objId] = (gEntitiesScaleYArray[omCurrentObj->objId] = (gEntitiesScaleXArray[omCurrentObj->objId] = p->unkC));
  switch (arg1)
  {
    case 2:
      var = 0.0f;
      while (1)
    {
      gEntitiesAngleXArray[omCurrentObj->objId] = (var * 3.14159274f) / 180.0f;
      var += 4.0f;
      if (360.0f < var)
      {
        var -= 360.0f;
      }
      ohSleep(1);
    }


    case 7:

    case 73:
      var = 0.0f;
      while (1)
    {
      gEntitiesAngleYArray[omCurrentObj->objId] = (var * 3.14159274f) / 180.0f;
      var += 4.0f;
      if (360.0f < var)
      {
        var -= 360.0f;
      }
      ohSleep(1);
    }


    case 15:
      while (1)
    {
      func_800AA018(0x10028);
      arg0->onAnimate = func_800B1378;
      func_800AF27C();
      func_800AA018(0x10022);
      arg0->onAnimate = func_800B1378;
      func_800AF27C();
      func_800AA018(0x10023);
      arg0->onAnimate = func_800B1378;
      func_800AF27C();
    }


    case 16:
      func_800AECC0(1.0f);
      func_800AED20(1.0f);
      break;

    case 14:

    case 21:

    case 24:

    case 32:

    case 48:

    case 70:
      while (1)
    {
      if (p->unk4 != 0)
      {
        if (1)
        {
          func_800AA018(p->unk4);
        }
      }
      if (p->unk8 != 0)
      {
        func_800AA018(p->unk8);
      }
      arg0->onAnimate = func_800B1378;
      func_800AF27C();
    }


  }

  curObjSleepForever();
}

extern Unk8018C30C D_8018D380_ovl5;

void func_80184888_ovl5(GObj *arg0) {
    s32 i;
    f32 var;

    func_800A9088(D_8018D380_ovl5.unk0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_8018C300_ovl5.x + D_8018D380_ovl5.unk28;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_8018C300_ovl5.y + D_8018D380_ovl5.unk2C;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_8018C300_ovl5.z + D_8018D380_ovl5.unk30;
    if (D_8018D380_ovl5.unk4 != 0) {
        func_800AA018(D_8018D380_ovl5.unk4);
    }
    if (D_8018D380_ovl5.unk8 != 0) {
        func_800AA018(D_8018D380_ovl5.unk8);
    }
    arg0->onAnimate = NULL;
    D_800DF310[omCurrentObj->objId] = NULL;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_8018D380_ovl5.unk1C * 3.14159274f / 180.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_8018D380_ovl5.unk20 * 3.14159274f / 180.0f;
    gEntitiesAngleZArray[omCurrentObj->objId] = D_8018D380_ovl5.unk24 * 3.14159274f / 180.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.0f;
    var = D_8018D380_ovl5.unkC / (f32) 4;
    for (i = 0; i != 4; i++) {
        gEntitiesScaleXArray[omCurrentObj->objId] += var;
        gEntitiesScaleYArray[omCurrentObj->objId] += var;
        gEntitiesScaleZArray[omCurrentObj->objId] += var;
        ohSleep(1);
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = D_8018D380_ovl5.unkC;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_8018D380_ovl5.unkC;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_8018D380_ovl5.unkC;
    var = 0.0f;
    while (1) {
        gEntitiesAngleYArray[omCurrentObj->objId] = var * 3.14159274f / 180.0f;
        var += 4.0f;
        if (360.0f < var) {
            var -= 360.0f;
        }
        ohSleep(1);
    }
}

extern Unk8018C30C D_8018D3B4_ovl5;

void func_80184BA0_ovl5(GObj *arg0) {
    s32 i;
    f32 var;

    func_800A9088(D_8018D3B4_ovl5.unk0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_8018C300_ovl5.x + D_8018D3B4_ovl5.unk28;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_8018C300_ovl5.y + D_8018D3B4_ovl5.unk2C;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_8018C300_ovl5.z + D_8018D3B4_ovl5.unk30;
    if (D_8018D3B4_ovl5.unk4 != 0) {
        func_800AA018(D_8018D3B4_ovl5.unk4);
    }
    if (D_8018D3B4_ovl5.unk8 != 0) {
        func_800AA018(D_8018D3B4_ovl5.unk8);
    }
    arg0->onAnimate = NULL;
    D_800DF310[omCurrentObj->objId] = NULL;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_8018D3B4_ovl5.unk1C * 3.14159274f / 180.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_8018D3B4_ovl5.unk20 * 3.14159274f / 180.0f;
    gEntitiesAngleZArray[omCurrentObj->objId] = D_8018D3B4_ovl5.unk24 * 3.14159274f / 180.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.0f;
    var = D_8018D3B4_ovl5.unkC / (f32) 4;
    for (i = 0; i != 4; i++) {
        gEntitiesScaleXArray[omCurrentObj->objId] += var;
        gEntitiesScaleYArray[omCurrentObj->objId] += var;
        gEntitiesScaleZArray[omCurrentObj->objId] += var;
        ohSleep(1);
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = D_8018D3B4_ovl5.unkC;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_8018D3B4_ovl5.unkC;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_8018D3B4_ovl5.unkC;
    var = 0.0f;
    while (1) {
        gEntitiesAngleZArray[omCurrentObj->objId] = var * 3.14159274f / 180.0f;
        var += 4.0f;
        if (360.0f < var) {
            var -= 360.0f;
        }
        ohSleep(1);
    }
}

extern Unk8018C30C D_8018D3E8_ovl5;

void func_80184EC0_ovl5(GObj *arg0) {
    s32 i;
    f32 var;

    func_800A9088(D_8018D3E8_ovl5.unk0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_8018C300_ovl5.x + D_8018D3E8_ovl5.unk28;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_8018C300_ovl5.y + D_8018D3E8_ovl5.unk2C;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_8018C300_ovl5.z + D_8018D3E8_ovl5.unk30;
    if (D_8018D3E8_ovl5.unk4 != 0) {
        func_800AA018(D_8018D3E8_ovl5.unk4);
    }
    if (D_8018D3E8_ovl5.unk8 != 0) {
        func_800AA018(D_8018D3E8_ovl5.unk8);
    }
    arg0->onAnimate = NULL;
    D_800DF310[omCurrentObj->objId] = NULL;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_8018D3E8_ovl5.unk1C * 3.14159274f / 180.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_8018D3E8_ovl5.unk20 * 3.14159274f / 180.0f;
    gEntitiesAngleZArray[omCurrentObj->objId] = D_8018D3E8_ovl5.unk24 * 3.14159274f / 180.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.0f;
    var = D_8018D3E8_ovl5.unkC / (f32) 4;
    for (i = 0; i != 4; i++) {
        gEntitiesScaleXArray[omCurrentObj->objId] += var;
        gEntitiesScaleYArray[omCurrentObj->objId] += var;
        gEntitiesScaleZArray[omCurrentObj->objId] += var;
        ohSleep(1);
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = D_8018D3E8_ovl5.unkC;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_8018D3E8_ovl5.unkC;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_8018D3E8_ovl5.unkC;
    curObjSleepForever();
}

extern Unk8018C30C D_8018D41C_ovl5;

void func_80185150_ovl5(GObj *arg0) {
    s32 i;
    f32 var;

    func_800A9088(D_8018D41C_ovl5.unk0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_8018C300_ovl5.x + D_8018D41C_ovl5.unk28;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_8018C300_ovl5.y + D_8018D41C_ovl5.unk2C;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_8018C300_ovl5.z + D_8018D41C_ovl5.unk30;
    if (D_8018D41C_ovl5.unk4 != 0) {
        func_800AA018(D_8018D41C_ovl5.unk4);
    }
    if (D_8018D41C_ovl5.unk8 != 0) {
        func_800AA018(D_8018D41C_ovl5.unk8);
    }
    arg0->onAnimate = NULL;
    D_800DF310[omCurrentObj->objId] = NULL;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_8018D41C_ovl5.unk1C * 3.14159274f / 180.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_8018D41C_ovl5.unk20 * 3.14159274f / 180.0f;
    gEntitiesAngleZArray[omCurrentObj->objId] = D_8018D41C_ovl5.unk24 * 3.14159274f / 180.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.0f;
    var = D_8018D41C_ovl5.unkC / (f32) 4;
    for (i = 0; i != 4; i++) {
        gEntitiesScaleXArray[omCurrentObj->objId] += var;
        gEntitiesScaleYArray[omCurrentObj->objId] += var;
        gEntitiesScaleZArray[omCurrentObj->objId] += var;
        ohSleep(1);
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = D_8018D41C_ovl5.unkC;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_8018D41C_ovl5.unkC;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_8018D41C_ovl5.unkC;
    curObjSleepForever();
}

/* 5/138: `idx` lands in $v0 where the ROM uses $v1, and its spill slot is
   0x30 instead of 0x2C. */
typedef struct Ovl5Entry34 {
    u8 filler0[0x10];
    u8 unk10;
    u8 filler11[7];
    struct UnkStruct8015C740 *unk18;
    u8 filler1C[0x18];
} Ovl5Entry34;

extern struct UnkStruct8015C740 *D_8018A94C_ovl5[];
extern struct UnkStruct8015C740 *D_8018C2D8_ovl5[];
extern f32 D_8018C2C8_ovl5[];
extern f32 D_8018C2D0_ovl5[];
extern struct UnkStruct8015C740 D_8018A96C_ovl5;
s32 func_80183BF4_ovl5(s32);
void func_800BA40C(s32);
void func_800B9C50(s32);

void func_801853E0_ovl5(GObj *arg0, s32 arg1)
{
  SPObj *sp;
  s32 idx;
  D_800DEF90[omCurrentObj->objId] = (void *) 0;
  setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
  D_8018EE48_ovl5 = omCurrentObj->objId;
  D_800E98E0[omCurrentObj->objId] = arg1;
  if (D_800D6C10[arg1] == 1)
  {
    D_800D6C10[arg1] = 2;
    func_800BA40C(saveCurrentFileNum);
    func_800B9C50(saveCurrentFileNum);
  }
  omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
  sp = func_8015C740_ovl5(arg0, &D_8018A96C_ovl5);
  if (func_80183BF4_ovl5(arg1) != 0)
  {
    *((s32 *) (((u8 *) sp) + 0x6C)) = D_8018EE58_ovl5;
    *((s32 *) (((u8 *) sp) + 0x78)) = D_8018EE58_ovl5;
    *((s32 *) (((u8 *) sp) + 0xCC)) = D_8018EE58_ovl5;
    *((s32 *) (((u8 *) sp) + 0xD8)) = D_8018EE58_ovl5;
  }
  idx = (arg1 + 1) ^ 0;
  sp = func_8015C740_ovl5(arg0, D_8018C2D8_ovl5[idx % 10]);
  sp->xOffset = D_8018C2C8_ovl5[0];
  sp->yOffset = D_8018C2C8_ovl5[1];
  if (idx >= 0xA)
  {
    sp = func_8015C740_ovl5(arg0, D_8018C2D8_ovl5[idx / 10]);
    sp->xOffset = D_8018C2D0_ovl5[0];
    sp->yOffset = D_8018C2D0_ovl5[1];
  }
  if (((Ovl5Entry34 *) D_8018C30C_ovl5)[arg1].unk10 != 0)
  {
    func_8015C740_ovl5(arg0, D_8018A94C_ovl5[((Ovl5Entry34 *) D_8018C30C_ovl5)[arg1].unk10]);
  }
  func_8015C740_ovl5(arg0, ((Ovl5Entry34 *) D_8018C30C_ovl5)[arg1].unk18);
  curObjSleepForever();
}

typedef union Unk28Ptrs {
    struct UnkStruct8015C740 *unk0[10];
} Unk28Ptrs;

extern Unk28Ptrs D_8018A58C_ovl5;
extern struct UnkStruct8015C740 D_8018AAF0_ovl5;
extern f32 D_8018AB10_ovl5[];
extern f32 D_8018AB18_ovl5[];
void func_800ACB7C(SPObj *);

void func_80185608_ovl5(GObj *arg0) {
    SPObj *sp;
    s32 idx;
    Unk28Ptrs sp40 = D_8018A58C_ovl5;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    idx = D_8018EE18_ovl5;
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    sp = func_8015C740_ovl5(arg0, sp40.unk0[9]);
    sp->xOffset = D_8018AB18_ovl5[0];
    sp->yOffset = D_8018AB18_ovl5[1];
    func_8015C740_ovl5(arg0, &D_8018AAF0_ovl5);
    sp = func_8015C740_ovl5(arg0, sp40.unk0[idx + 1]);
    sp->xOffset = D_8018AB10_ovl5[0];
    sp->yOffset = D_8018AB10_ovl5[1];
    while (1) {
        if (idx != D_8018EE18_ovl5) {
            idx = D_8018EE18_ovl5;
            func_800ACB7C(sp);
            sp = func_8015C740_ovl5(arg0, sp40.unk0[idx + 1]);
            sp->xOffset = D_8018AB10_ovl5[0];
            sp->yOffset = D_8018AB10_ovl5[1];
        }
        ohSleep(1);
    }
}

extern struct UnkStruct8015C740 D_8018AB20_ovl5;
extern struct UnkStruct8015C740 D_8018AB40_ovl5;
extern struct UnkStruct8015C740 D_8018AB60_ovl5;
extern struct UnkStruct8015C740 D_8018AB80_ovl5;
void func_801857C4_ovl5(GObj *arg0) {
    s32 prev = D_8018EE44_ovl5 + 1;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    while (1) {
        if (prev != D_8018EE44_ovl5) {
            prev = D_8018EE44_ovl5;
            func_800ACBDC(arg0);
            if ((prev == 9) || (prev == 0xA) || (prev == 0xB)) {
                func_8015C740_ovl5(arg0, &D_8018AB20_ovl5);
            } else {
                func_8015C740_ovl5(arg0, &D_8018AB40_ovl5);
            }
        }
        ohSleep(1);
    }
}

void func_8018590C_ovl5(GObj *arg0) {
    s32 prev = D_8018EE44_ovl5 + 1;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    while (1) {
        if (prev != D_8018EE44_ovl5) {
            prev = D_8018EE44_ovl5;
            func_800ACBDC(arg0);
            if ((prev == 0xC) || (prev == 0xD) || (prev == 0xE)) {
                func_8015C740_ovl5(arg0, &D_8018AB60_ovl5);
            } else {
                func_8015C740_ovl5(arg0, &D_8018AB80_ovl5);
            }
        }
        ohSleep(1);
    }
}

#ifdef NON_MATCHING
/* 34/113: callee-saved registers permuted (ROM s0/s1/s2/s3 where this uses
   s1/s2/s3/s4). */
extern struct UnkStruct8015C740 D_8018ABA0_ovl5;
extern Vector2 D_8018A71C_ovl5[];
extern f32 D_8018ABC0_ovl5[];
void func_800AFBB4(s32, GObj *);

void func_80185A4C_ovl5(GObj *arg0) {
    SPObj *sp;
    s32 prev;

    prev = D_8018EE44_ovl5;
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0xE, 0x80000000, 0xE);
    sp = func_8015C740_ovl5(arg0, &D_8018ABA0_ovl5);
    sp->xOffset = D_8018ABC0_ovl5[0] + D_8018A71C_ovl5[prev].x;
    sp->yOffset = D_8018ABC0_ovl5[1] + D_8018A71C_ovl5[prev].y;
    while (1) {
        if (prev != D_8018EE44_ovl5) {
            prev = D_8018EE44_ovl5;
            if ((prev == 9) || (prev == 0xA) || (prev == 0xB) || (prev == 0xC) || (prev == 0xD) ||
                (prev == 0xE)) {
                func_800AFBB4(0, omCurrentObj);
            } else {
                func_800AFBB4(1, omCurrentObj);
                sp->xOffset = D_8018ABC0_ovl5[0] + D_8018A71C_ovl5[D_8018EE44_ovl5].x;
                sp->yOffset = D_8018ABC0_ovl5[1] + D_8018A71C_ovl5[D_8018EE44_ovl5].y;
            }
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80185A4C_ovl5.s")
#endif

void func_80185C10_ovl5(void) {
    D_8018EE10_ovl5 = 0;
    D_8018EE18_ovl5 = 0;
    D_8018EE44_ovl5 = 0;
    D_8018EE48_ovl5 = 0x29A;
    D_8018EE4C_ovl5 = 0x29A;
    func_800BA284(saveCurrentFileNum);
    D_8018EE50_ovl5 = func_800A9AA8(D_8018A714_ovl5, 3);
    D_8018EE54_ovl5 = func_800A9AA8(D_8018A718_ovl5, 3);
    D_8018EE58_ovl5 = func_800A9AA8(D_8018A98C_ovl5, 3);
}

void func_80185CA4_ovl5(void) {
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D6B24;
extern u8 D_8018EE10_ovl5;
void func_80185CA4_ovl5(void);

void func_80185CDC_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EE10_ovl5 != 0) {
        func_80185CA4_ovl5();
    }
}

void gameSetUpdateRate(f32);
void func_800B2F54(s32, void *, f32);
extern u32 D_8018A530_ovl5[];

void func_80185D1C_ovl5(void) {
    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    func_800AE048(0x200);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    play_music(0, 0x3B);
    func_800A6BC0(0xA);
    func_800B2F54(0x10, &D_8018A530_ovl5, 0.0f);
    func_800A71A0(0x10);
    func_80185C10_ovl5();
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 0;
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 1;
    func_80183FC8_ovl5();
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 5;
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 6;
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 7;
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 8;
    HS64_omMakeGObj(0, &func_80185CDC_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80185EC8_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_8018A5B8_ovl5);
}

#include "main/vi.h"
#include "main/gtl.h"
extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_8018A5E8_ovl5;
extern SceneSetup D_8018A604_ovl5;
void func_800A74D8(void);

// The (u32) cast on D_8012EB00 and the vu16 casts in the clear loop are both
// load-bearing; see src/ovl5/ovl5_7.c func_8017CC3C_ovl5. verify.py reports
// one reloc false positive on the a1 bound (%hi(D_803D6900)+2 / %lo+0x5800
// links to 0x803FC100 exactly).
void func_80185EEC_ovl5(void) {
    s32 i;

    func_800A74D8();
    D_8018A5E8_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_8018A5E8_ovl5);
    D_8018A604_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_8018A604_ovl5);
}


