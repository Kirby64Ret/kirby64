#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "GObj.h"
#include "main/object_manager.h"
#include "ovl1/save_file.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "main/contpad.h"

struct Unk800ECA08 {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ u8 pad4[0xC];
    /* 0x10 */ u8 unk10;
    /* 0x11 */ u8 pad11[0x47];
};

extern struct Unk800ECA08 D_800ECA08[];
extern s32 D_800EC9FC;
extern s32 saveCurrentFileNum;

void func_800AFBB4(s32, GObj *);
void func_800ACBDC(GObj *);
extern void func_800B8BDC(void);
extern void func_800B96A0(s32, s32);
extern void func_800B94FC(s32);
extern void func_800BB3F0(void);

extern Gfx D_8015AA70_ovl4[];
extern s32 D_800D6B24;
extern s32 D_8015C6D8_ovl4;

#include "main/vi.h"
#include "main/gtl.h"
extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_8015AAA8_ovl4;
extern SceneSetup D_8015AAC4_ovl4;
extern s32 saveSoundMode;
extern void auSetHighSoundQuality(void);
extern void auSetLowSoundQuality(void);

extern void func_800AC610(void);
extern void func_80157C38_ovl4(void);

extern s32 func_801555AC_ovl4();
extern void func_800B8E00(s32);
extern s32 request_track_3(s32, s32, s32);
extern void func_80155E6C_ovl4(GObj *);
extern s32 D_8015C6D4_ovl4;
extern s32 D_8015C6DC_ovl4;
extern s32 D_8015C6E0_ovl4;
extern s32 D_8015C6E4_ovl4;

typedef struct {
    s32 unk0[3];
} Unk3Words;

typedef struct {
    s32 unk0[6];
} Unk6Words;

typedef struct {
    s32 unk0[2];
} Unk2Words;

extern Unk3Words D_8015A990_ovl4;
extern Unk3Words D_8015A99C_ovl4;
extern Unk6Words D_8015A9A8_ovl4;
extern Unk2Words D_8015A9C0_ovl4;
extern s32 func_800B9F64(s32, s32);

struct UnkStruct8015C740;
extern struct GObjProcess *gEntityGObjProcessArray5[];
extern struct UnkStruct8015C740 D_8015AB50_ovl4;
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void func_800AD1A0(GObj *);
void procMainStub(struct GObj *);
s32 func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);

void func_801555F4_ovl4(GObj *);
void func_80156160_ovl4(GObj *);
void func_801567BC_ovl4(GObj *, s32);
void func_80156C4C_ovl4(GObj *, s32);
void func_801569F0_ovl4(GObj *, s32);
void func_80157028_ovl4(GObj *, s32);
void func_801572E4_ovl4(GObj *, s32);
void func_80157610_ovl4(GObj *, s32);
void func_80157840_ovl4(GObj *, s32);
void func_80156560_ovl4(GObj *);
void func_8015665C_ovl4(GObj *);
void func_80156054_ovl4(GObj *);
void init_save_file_maybe(s32);
void play_sound(s32);
void gameSetUpdateRate(f32);
s32 func_800AEA64(s32, s32, s32);
#ifdef PORT
extern void pc_fsel_debug(const char *, int, int, int);
#endif

void func_801553C0_ovl4(GObj *arg0) {
    switch (D_800E9AA0[omCurrentObj->objId].as_s32) {
        case 0:
            func_801555F4_ovl4(arg0);
            break;
        case 1:
            func_80156160_ovl4(arg0);
            break;
        case 2:
            func_801567BC_ovl4(arg0, D_800E9C60[omCurrentObj->objId]);
            break;
        case 4:
            func_801569F0_ovl4(arg0, D_800E9C60[omCurrentObj->objId]);
            break;
        case 3:
            func_80156C4C_ovl4(arg0, D_800E9C60[omCurrentObj->objId]);
            break;
        case 8:
            func_80157028_ovl4(arg0, D_800E9C60[omCurrentObj->objId]);
            break;
        case 9:
            func_801572E4_ovl4(arg0, D_800E9C60[omCurrentObj->objId]);
            break;
        case 11:
            func_80157610_ovl4(arg0, D_800E9C60[omCurrentObj->objId]);
            break;
        case 16:
            func_80157840_ovl4(arg0, saveCurrentFileNum);
            break;
        case 17:
            func_80156560_ovl4(arg0);
            break;
        case 18:
            func_8015665C_ovl4(arg0);
            break;
    }
}

s32 func_801554F0_ovl4(void) {
    s32 ret = 0;

    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
        return 0;
    }
    if (gPlayerControllers[0].buttonHeldLong & R_JPAD) {
        ret = 1;
        D_800E98E0[omCurrentObj->objId] = 3;
    }
    if (gPlayerControllers[0].buttonHeldLong & L_JPAD) {
        ret = -1;
        D_800E98E0[omCurrentObj->objId] = 3;
    }
    if (gPlayerControllers[0].buttonHeldLong & U_JPAD) {
        ret = 2;
        D_800E98E0[omCurrentObj->objId] = 3;
    }
    if (gPlayerControllers[0].buttonHeldLong & D_JPAD) {
        ret = -2;
        D_800E98E0[omCurrentObj->objId] = 3;
    }
    return ret;
}

/* Every instruction this C emits is byte-exact (was 4/17): the fix was
 * BRANCH POLARITY. The ROM lays `return 0` out as the FALLTHROUGH and makes
 * `return 1` the branch target, hoisting that block's `addiu $v0,1` into the
 * bne delay slot, so the source must test the EQUAL case first --
 * `if (x == 0x99999999U) return 0; return 1;` -- not the != form m2c produces.
 *
 * The remaining `jr $ra; nop` at 0x801555EC inside this symbol's `.size` was
 * read as a padding trap ("WAVE8 floor class 3"). It is not padding: it is the
 * next, UNNAMED function of the translation unit, which splat folded into this
 * symbol because nothing calls it. Written out below (same shape as
 * func_80160A70_ovl5 in ovl5_2.c), so both close.
 * K&R definition kept, MEASURED: func_80156BAC_ovl4 (ovl4_3.c:813) calls this
 * with no argument and relies on the file number already in $a0. With the head
 * written `s32 func_801555AC_ovl4(s32 arg0)` the build fails there with
 * "too few arguments to function 'func_801555AC_ovl4'". */
s32 func_801555AC_ovl4(arg0)
s32 arg0;
{
    if ((u32) D_800ECA08[arg0].unk0 == 0x99999999U) {
        return 0;
    }
    return 1;
}

void func_801555EC_ovl4(void) {
}

extern s32 D_8015C6D0_ovl4;
void func_80155890_ovl4(GObj *);
void func_80155C00_ovl4(GObj *);

void func_801555F4_ovl4(GObj *arg0) {
#ifdef PORT
    {
        pc_fsel_debug("cursor-init", omCurrentObj->objId, saveCurrentFileNum, D_8015C6DC_ovl4);
    }
#endif
    D_8015C6D0_ovl4 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 7;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = func_80155890_ovl4;
    if (D_8015C6DC_ovl4 == 1) {
        ohSleep(1);
        D_800DF150[omCurrentObj->objId] = NULL;
        D_800DF150[omCurrentObj->objId] = func_80155C00_ovl4;
    }
    while (1) {
        if (D_800E9C60[omCurrentObj->objId] != 0) {
            D_800E9E20[omCurrentObj->objId] = 3;
            switch (D_8015C6DC_ovl4) {
                case 0:
                    D_800DF150[omCurrentObj->objId] = NULL;
                    D_800DF150[omCurrentObj->objId] = func_80155890_ovl4;
                    break;
                case 1:
                    D_800DF150[omCurrentObj->objId] = NULL;
                    D_800DF150[omCurrentObj->objId] = func_80155C00_ovl4;
                    break;
                case 2:
                    D_800DF150[omCurrentObj->objId] = NULL;
                    D_800DF150[omCurrentObj->objId] = func_80155E6C_ovl4;
                    break;
            }
            D_800E9C60[omCurrentObj->objId] = 0;
        }
        if (D_8015C6D8_ovl4 != 0) {
            D_800DF150[omCurrentObj->objId] = NULL;
            curObjSleepForever();
        }
        ohSleep(1);
    }
}

void func_80155890_ovl4(GObj *arg0) {
    extern u32 gGameState;
    extern s32 D_800D6B68;
    extern u32 D_800D6B60;
    s32 v;

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E9E20[omCurrentObj->objId]--;
        return;
    }
#ifdef PORT
    if (gPlayerControllers[0].buttonPressed != 0) {
        pc_fsel_debug("confirm-press", gPlayerControllers[0].buttonPressed,
                      saveCurrentFileNum, func_801555AC_ovl4(saveCurrentFileNum));
    }
#endif
    if (gPlayerControllers[0].buttonPressed & 0x9000) {
        if (func_801555AC_ovl4(saveCurrentFileNum) != 0) {
            switch (D_8015C6D4_ovl4) {
                case 0:
                    play_sound(0xED);
                    D_8015C6D8_ovl4 = 1;
                    D_800D6B68 = gGameState;
                    gGameState = 0xB;
                    break;
                case 1:
                    play_sound(0xED);
                    D_800E9C60[omCurrentObj->objId] = 1;
                    D_8015C6DC_ovl4 = 1;
                    D_8015C6E0_ovl4 = 0;
                    break;
                case 2:
                    play_sound(0xED);
                    D_800E9C60[omCurrentObj->objId] = 1;
                    D_8015C6DC_ovl4 = 2;
                    D_8015C6E4_ovl4 = 0;
                    break;
            }
            return;
        }
        if (D_8015C6D4_ovl4 == 0) {
            play_sound(0xED);
            init_save_file_maybe(saveCurrentFileNum);
        }
        return;
    }
    if (gPlayerControllers[0].buttonPressed & 0x4000) {
        play_sound(0x2B);
        D_8015C6D8_ovl4 = 1;
        D_800D6B68 = gGameState;
        gGameState = D_800D6B60;
        return;
    }
    v = func_801554F0_ovl4();
    if (func_801555AC_ovl4(saveCurrentFileNum) == 0) {
        if (v == 2) {
            return;
        }
        if (v == -2) {
            return;
        }
    }
    switch (v) {
        case 1:
            play_sound(0x113);
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
            D_8015C6D4_ovl4 = 0;
            if (saveCurrentFileNum == 2) {
                saveCurrentFileNum = 0;
            } else {
                saveCurrentFileNum = saveCurrentFileNum + 1;
            }
            break;
        case -1:
            play_sound(0x113);
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
            D_8015C6D4_ovl4 = 0;
            if (saveCurrentFileNum == 0) {
                saveCurrentFileNum = 2;
            } else {
                saveCurrentFileNum = saveCurrentFileNum - 1;
            }
            break;
        case 2:
            play_sound(0x113);
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
            if (D_8015C6D4_ovl4 == 0) {
                D_8015C6D4_ovl4 = 2;
            } else {
                D_8015C6D4_ovl4 = D_8015C6D4_ovl4 - 1;
            }
            break;
        case -2:
            play_sound(0x113);
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
            if (D_8015C6D4_ovl4 == 2) {
                D_8015C6D4_ovl4 = 0;
            } else {
                D_8015C6D4_ovl4 = D_8015C6D4_ovl4 + 1;
            }
            break;
        case 0:
            break;
    }
}

void func_80155C00_ovl4(GObj *arg0) {
    extern u32 gGameState;
    extern s32 D_800D6B68;
    extern s32 D_800D6B6C;
    extern s32 D_800D71C0;
    extern s32 D_800D71C4;
    extern s32 D_800D71C8;
    extern s32 D_800D71CC;
    s32 v;

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E9E20[omCurrentObj->objId]--;
        return;
    }
    if (gPlayerControllers[0].buttonPressed & 0x9000) {
        play_sound(0xED);
        D_8015C6D8_ovl4 = 1;
        D_800D6B68 = gGameState;
        switch (D_8015C6E0_ovl4) {
            case 5:
                gGameState = 0x16;
                break;
            case 3:
                gGameState = 0x19;
                break;
            case 0:
                gGameState = 0x1B;
                D_800D71C0 = 0;
                D_800D71C4 = 0;
                D_800D71C8 = 0;
                D_800D71CC = 0;
                break;
            case 4:
                gGameState = 0x1A;
                D_800D6B6C = 0;
                break;
            case 2:
                gGameState = 0x17;
                break;
            case 1:
                gGameState = 0x18;
                break;
        }
        return;
    }
    if (gPlayerControllers[0].buttonPressed & 0x4000) {
        play_sound(0x2B);
        D_8015C6DC_ovl4 = 0;
        D_800E9C60[omCurrentObj->objId] = 1;
        return;
    }
    v = func_801554F0_ovl4();
    switch (v) {
        case 2:
            play_sound(0x113);
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
            do {
                if (D_8015C6E0_ovl4 == 0) {
                    D_8015C6E0_ovl4 = 5;
                } else {
                    D_8015C6E0_ovl4 = D_8015C6E0_ovl4 - 1;
                }
            } while (func_80157258_ovl4(saveCurrentFileNum, D_8015C6E0_ovl4) == 0);
            break;
        case -2:
            play_sound(0x113);
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
            do {
                if (D_8015C6E0_ovl4 == 5) {
                    D_8015C6E0_ovl4 = 0;
                } else {
                    D_8015C6E0_ovl4 = D_8015C6E0_ovl4 + 1;
                }
            } while (func_80157258_ovl4(saveCurrentFileNum, D_8015C6E0_ovl4) == 0);
            break;
        case 0:
            break;
    }
}

void func_80155E6C_ovl4(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E9E20[omCurrentObj->objId]--;
        return;
    }
    if (gPlayerControllers[0].buttonPressed & 0x9000) {
        switch (D_8015C6E4_ovl4) {
            case 0:
                play_sound(0xED);
                D_8015C6DC_ovl4 = 0;
                D_800E9C60[omCurrentObj->objId] = 1;
                return;
            case 1:
                play_sound(0xED);
                D_800EA1A0[omCurrentObj->objId] = 1;
                D_800E9AA0[request_track_3(1, 0, 0x70)].as_s32 = 0x10;
                D_800DF150[omCurrentObj->objId] = NULL;
                D_800DF150[omCurrentObj->objId] = func_80156054_ovl4;
                return;
        }
    }
    if (gPlayerControllers[0].buttonPressed & 0x4000) {
        play_sound(0x2B);
        D_8015C6DC_ovl4 = 0;
        D_800E9C60[omCurrentObj->objId] = 1;
        return;
    }
    switch (func_801554F0_ovl4()) {
        case -2:
        case 2:
            play_sound(0x113);
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
            if (D_8015C6E4_ovl4 == 0) {
                D_8015C6E4_ovl4 = 1;
            } else {
                D_8015C6E4_ovl4 = 0;
            }
            break;
        case 0:
            break;
    }
}

void func_80156054_ovl4(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E9E20[omCurrentObj->objId]--;
        return;
    }
    switch (D_800EA1A0[omCurrentObj->objId]) {
        case 1:
            if (gPlayerControllers[0].buttonPressed & 0xD000) {
                D_800EA1A0[omCurrentObj->objId] = 4;
                D_8015C6E4_ovl4 = 0;
                D_800DF150[omCurrentObj->objId] = NULL;
                D_800DF150[omCurrentObj->objId] = func_80155E6C_ovl4;
            }
            break;
        case 2:
            func_800B8E00(saveCurrentFileNum);
            D_8015C6DC_ovl4 = 0;
            D_8015C6D4_ovl4 = 0;
            D_800E9C60[omCurrentObj->objId] = 1;
            break;
    }
}

void func_80156160_ovl4(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x16, 0x80000000, 0x16);
    func_8015C740_ovl5(arg0, &D_8015AB50_ovl4);
    curObjSleepForever();
}

s32 func_801561DC_ovl4(void) {
#ifdef PORT
    /* These regions are N64 pointer words; the PC data generator emits them
       inside one native void*[] (8-byte slots), so the word-struct copies
       read pointer halves. Index the live tables instead; the low-memory
       image keeps every static in 32 bits, so the s32 return round-trips. */
    void **sp4C = (void **) &D_8015A990_ovl4;
    void **sp40 = (void **) &D_8015A99C_ovl4;
    void **sp28 = (void **) &D_8015A9A8_ovl4;
    void **sp20 = (void **) &D_8015A9C0_ovl4;
#else
    Unk3Words sp4C = D_8015A990_ovl4;
    Unk3Words sp40 = D_8015A99C_ovl4;
    Unk6Words sp28 = D_8015A9A8_ovl4;
    Unk2Words sp20 = D_8015A9C0_ovl4;
#endif

    switch (D_8015C6DC_ovl4) {
        case 0:
            if (func_801555AC_ovl4(saveCurrentFileNum) != 0) {
#ifdef PORT
                return (s32) (uintptr_t) sp40[D_8015C6D4_ovl4];
#else
                return sp40.unk0[D_8015C6D4_ovl4];
#endif
            }
#ifdef PORT
            return (s32) (uintptr_t) sp4C[saveCurrentFileNum];
#else
            return sp4C.unk0[saveCurrentFileNum];
#endif
        case 1:
#ifdef PORT
            return (s32) (uintptr_t) sp28[D_8015C6E0_ovl4];
#else
            return sp28.unk0[D_8015C6E0_ovl4];
#endif
        case 2:
#ifdef PORT
            return (s32) (uintptr_t) sp20[D_8015C6E4_ovl4];
#else
            return sp20.unk0[D_8015C6E4_ovl4];
#endif
    }
}

#include "SPObj.h"

typedef struct {
    f32 unk0;
    f32 unk4;
} Unk2Fs;

typedef struct {
    s32 unk0;
    s32 unk4;
} Unk2Ss;

extern Unk2Fs D_8015AF6C_ovl4[];
extern Unk2Fs D_8015B004_ovl4[];
extern Unk2Fs D_8015B03C_ovl4[];
extern Unk2Ss D_8015B34C_ovl4[][3];
extern Unk2Ss D_8015B5C4_ovl4[][3];
extern s32 D_8015C6E0_ovl4;

void func_8015632C_ovl4(SPObj *arg0) {
    switch (D_8015C6DC_ovl4) {
        case 0:
            if (func_801555AC_ovl4(saveCurrentFileNum) != 0) {
                switch (D_8015C6D4_ovl4) {
                    case 0:
                        arg0->xOffset = D_8015AF6C_ovl4[saveCurrentFileNum].unk0;
                        arg0->yOffset = D_8015AF6C_ovl4[saveCurrentFileNum].unk4;
                        break;
                    case 1:
                        arg0->xOffset = D_8015B004_ovl4[saveCurrentFileNum].unk0;
                        arg0->yOffset = D_8015B004_ovl4[saveCurrentFileNum].unk4;
                        break;
                    case 2:
                        arg0->xOffset = D_8015B03C_ovl4[saveCurrentFileNum].unk0;
                        arg0->yOffset = D_8015B03C_ovl4[saveCurrentFileNum].unk4;
                        break;
                }
            }
            break;
        case 1:
            arg0->xOffset = D_8015B34C_ovl4[D_8015C6E0_ovl4][saveCurrentFileNum].unk0;
            arg0->yOffset = D_8015B34C_ovl4[D_8015C6E0_ovl4][saveCurrentFileNum].unk4;
            break;
        case 2:
            arg0->xOffset = D_8015B5C4_ovl4[D_8015C6E4_ovl4][saveCurrentFileNum].unk0;
            arg0->yOffset = D_8015B5C4_ovl4[D_8015C6E4_ovl4][saveCurrentFileNum].unk4;
            break;
    }
}

/* 2/63: instruction-for-instruction exact including the seven nops of IDO's
 * 32-byte dead-epilogue padding; only the frame is 0x40 against the ROM's 0x38.
 * The ROM has one word of compiler temp above the saved regs (read once at
 * 0x34($sp), uninitialised), IDO reserves two. Adding `s32 sp34; v = sp34;`
 * DOES give frame 0x38 but costs 12 saved-register-naming diffs
 * (ROM s0=cur s1=prev s2=arg0 s3=v, IDO s0=cur s1=v s2=prev s3=arg0) and all
 * six declaration permutations of the three locals were inert. Dead locals of
 * every type/position are eliminated here, so the frame cannot be shrunk that
 * way. */
void func_8015632C_ovl4(SPObj *);
void func_800ACBDC(GObj *);

void func_80156560_ovl4(GObj *arg0) {
    s32 v;
    s32 prev;

    prev = func_801561DC_ovl4() + 0x20;
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    while (1) {
        s32 cur = func_801561DC_ovl4();
        if (cur != prev) {
            prev = cur;
            func_800ACBDC(arg0);
            v = func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) cur);
        }
        func_8015632C_ovl4((SPObj *) v);
        ohSleep(1);
    }
}
#include "SPObj.h"

void func_8015665C_ovl4(GObj *arg0) {
    extern Unk3Words D_8015A9C8_ovl4;
    SPObj *sp4C[3];
    s32 i;
#ifdef PORT
    /* D_8015A9C8 is three N64 pointer words; the PC data generator emits the
       region as part of a native void*[] (8-byte slots), so the word-struct
       copy reads pointer halves. Index the live table instead. */
    void **sp3C = (void **) &D_8015A9C8_ovl4;
#else
    Unk3Words sp3C = D_8015A9C8_ovl4;
#endif

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    for (i = 0; i < 3; i++) {
#ifdef PORT
        sp4C[i] = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp3C[i]);
#else
        sp4C[i] = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp3C.unk0[i]);
#endif
    }
    while (1) {
        for (i = 0; i != 3; i++) {
            if (i == saveCurrentFileNum) {
                sp4C[i]->renderFlags |= 8;
            } else {
                sp4C[i]->renderFlags &= ~8;
            }
        }
        ohSleep(1);
    }
}

typedef struct {
    u16 unk0;
    u16 unk2;
    u16 unk4;
} Unk3Hs;

extern Unk2Fs D_8015AC0C_ovl4[];
extern Unk2Fs D_8015ABD4_ovl4[];
extern Unk3Hs D_8015ABC8_ovl4[];
extern struct UnkStruct8015C740 D_8015ABEC_ovl4;
extern struct UnkStruct8015C740 D_8015ABA8_ovl4;
extern Unk3Words D_8015A9D4_ovl4;

void func_801567BC_ovl4(GObj *arg0, s32 arg1) {
    SPObj *sp;
    s32 prev;
    s32 cur;
    s32 idx;
#ifdef PORT
    /* D_8015A9D4 is three N64 pointer words; the PC data generator emits the
       region as part of a native void*[] (8-byte slots), so the word-struct
       copy reads pointer halves. Index the live table instead. */
    void **sp54 = (void **) &D_8015A9D4_ovl4;
#else
    Unk3Words sp54 = D_8015A9D4_ovl4;
#endif

    prev = func_801555AC_ovl4(arg1) + 1;
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x16, 0x80000000, 0x16);
    while (1) {
        if ((arg1 != saveCurrentFileNum) || (D_8015C6DC_ovl4 == 0)) {
            func_800AFBB4(1, omCurrentObj);
            cur = func_801555AC_ovl4(arg1);
            if (cur != prev) {
                prev = cur;
                func_800ACBDC(arg0);
                sp = (SPObj *) func_8015C740_ovl5(arg0, &D_8015ABEC_ovl4);
                sp->xOffset = D_8015AC0C_ovl4[arg1].unk0;
                sp->yOffset = D_8015AC0C_ovl4[arg1].unk4;
                if (cur != 0) {
                    sp = (SPObj *) func_8015C740_ovl5(arg0, &D_8015ABA8_ovl4);
                    sp->xOffset = D_8015ABD4_ovl4[arg1].unk0;
                    sp->yOffset = D_8015ABD4_ovl4[arg1].unk4;
                } else {
#ifdef PORT
                    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp54[arg1]);
#else
                    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp54.unk0[arg1]);
#endif
                }
            }
            idx = arg1 == saveCurrentFileNum;
            sp->primColorRed = D_8015ABC8_ovl4[idx].unk0;
            sp->primColorGreen = D_8015ABC8_ovl4[idx].unk2;
            sp->primColorBlue = D_8015ABC8_ovl4[idx].unk4;
        } else {
            func_800AFBB4(0, omCurrentObj);
        }
        ohSleep(1);
    }
}

typedef struct {
    u8 pad0[0x20];
    /* 0x20 */ f32 xOffset;
    /* 0x24 */ f32 yOffset;
    u8 pad28[0x44];
    /* 0x6C */ u32 unk6C;
    u8 pad70[0x8];
    /* 0x78 */ u32 unk78;
    u8 pad7C[0x50];
    /* 0xCC */ u32 unkCC;
    u8 padD0[0x8];
    /* 0xD8 */ u32 unkD8;
} UnkSpObj8015AB70;

extern Unk2Fs D_8015AB90_ovl4[];
extern struct UnkStruct8015C740 D_8015AB70_ovl4;
extern s32 D_8015C6F0_ovl4;
void *func_800A9AA8(u32, s32);

void func_801569F0_ovl4(GObj *arg0, s32 arg1) {
#ifdef PORT
    /* UnkSpObj8015AB70 spells the N64 SPObj byte offsets: 0x6C/0xCC are the
       two RSP command blocks' tlut image pointers (block+0x2C), 0x78/0xD8
       their state flags (block+0x38). Under the LP64 SPObj those raw offsets
       land inside the gfx[0]/gfx[1] uObjBg fields instead (the real tlut
       image/flag sit at 0x80/0x90 and 0xF0/0x100), so write through the
       typed layout from SPObj.h. xOffset/yOffset (raw 0x20/0x24) shear too:
       they land on width/height and xOffset. */
    SPObj *sp;
#else
    UnkSpObj8015AB70 *sp;
#endif
    u32 a;
    u32 b;
    u32 c;
    u32 v;

    D_8015C6F0_ovl4 = omCurrentObj->objId;
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x16, 0x80000000, 0x16);
#ifdef PORT
    sp = (SPObj *) func_8015C740_ovl5(arg0, &D_8015AB70_ovl4);
    b = (u32) (uintptr_t) func_800A9AA8(0x30001, 3);
    a = (u32) (uintptr_t) sp->gfx[0].b.tlut.tlut.image;
    c = (u32) (uintptr_t) func_800A9AA8(0x30002, 3);
#else
    sp = (UnkSpObj8015AB70 *) func_8015C740_ovl5(arg0, &D_8015AB70_ovl4);
    b = (u32) (uintptr_t) func_800A9AA8(0x30001, 3);
    a = sp->unk6C;
    c = (u32) (uintptr_t) func_800A9AA8(0x30002, 3);
#endif
    sp->xOffset = D_8015AB90_ovl4[arg1].unk0;
    sp->yOffset = D_8015AB90_ovl4[arg1].unk4;
    while (1) {
        if ((arg1 != saveCurrentFileNum) || (D_8015C6DC_ovl4 == 0)) {
            func_800AFBB4(1, omCurrentObj);
            if (func_801555AC_ovl4(arg1) != 0) {
                if (arg1 == saveCurrentFileNum) {
                    v = a;
                } else {
                    v = b;
                }
            } else {
                v = c;
            }
#ifdef PORT
            sp->gfx[0].b.tlut.tlut.image = (u64 *) (uintptr_t) v;
            sp->gfx[0].b.tlut.tlut.flag = v;
            sp->gfx[1].b.tlut.tlut.image = (u64 *) (uintptr_t) v;
            sp->gfx[1].b.tlut.tlut.flag = v;
#else
            sp->unk6C = v;
            sp->unk78 = v;
            sp->unkCC = v;
            sp->unkD8 = v;
#endif
        } else {
            func_800AFBB4(0, omCurrentObj);
        }
        ohSleep(1);
    }
}

s32 func_80156BAC_ovl4(s32 arg0) {
    u32 world;

    if (func_801555AC_ovl4() != 0) {
        world = gSaveBuffer1.files[arg0].world;
        if (world >= 7) {
            if ((gSaveBuffer1.files[arg0].data38[1] != 0) && (gSaveBuffer1.files[arg0].percentComplete == 100)
             && (func_800B9F64(arg0, 0xD) != 0)) {
                goto ret7;
            }
            return 6;
ret7:
            return 7;
        }
        return world;
    }
    return 0;
}

typedef struct {
    s32 unk0[10];
} Unk10Ws;

typedef struct {
    u16 unk0;
    u16 unk2;
    u16 unk4;
} Unk3Hw;

extern Unk10Ws D_8015A9E0_ovl4;
extern Unk2Fs D_8015AF28_ovl4[];
extern Unk3Hw D_8015AF40_ovl4[];
extern s32 D_8015C6EC_ovl4;
s32 func_80156BAC_ovl4(s32);

void func_80156C4C_ovl4(GObj *arg0, s32 arg1) {
#ifdef PORT
    /* D_8015A9E0 is ten N64 pointer words; the PC data generator emits the
       region as part of a native void*[] (8-byte slots), so the word-struct
       copy reads pointer halves. Index the live table instead. */
    void **sp60 = (void **) &D_8015A9E0_ovl4;
#else
    Unk10Ws sp60 = D_8015A9E0_ovl4;
#endif
    SPObj *sp;
    Unk2Fs *p;
    s32 cur;
    s32 idx;

    D_8015C6EC_ovl4 = omCurrentObj->objId;
    cur = func_80156BAC_ovl4(arg1);
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
#ifdef PORT
    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp60[cur]);
#else
    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp60.unk0[cur]);
#endif
    p = &D_8015AF28_ovl4[arg1];
    sp->xOffset = p->unk0;
    sp->yOffset = p->unk4;
    while (1) {
        if ((arg1 != saveCurrentFileNum) || (D_8015C6DC_ovl4 == 0)) {
            func_800AFBB4(1, omCurrentObj);
            if (func_801555AC_ovl4(arg1) != 0) {
                func_800AFBB4(1, omCurrentObj);
                if (func_80156BAC_ovl4(arg1) != cur) {
                    cur = func_80156BAC_ovl4(arg1);
                    func_800ACBDC(arg0);
#ifdef PORT
                    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp60[cur]);
#else
                    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp60.unk0[cur]);
#endif
                    sp->xOffset = p->unk0;
                    sp->yOffset = p->unk4;
                }
                idx = arg1 == saveCurrentFileNum;
                sp->primColorRed = D_8015AF40_ovl4[idx].unk0;
                sp->primColorGreen = D_8015AF40_ovl4[idx].unk2;
                sp->primColorBlue = D_8015AF40_ovl4[idx].unk4;
            } else {
                func_800AFBB4(0, omCurrentObj);
            }
        } else {
            func_800AFBB4(0, omCurrentObj);
        }
        ohSleep(1);
    }
}

typedef struct {
    s32 unk0[10];
} Unk10Words;

extern Unk10Words D_8015AA08_ovl4;

void func_80156EB0_ovl4(GObj *arg0, s32 arg1, f32 arg2, f32 arg3) {
#ifdef PORT
    /* D_8015AA08 is ten N64 pointer words; the PC data generator emits the
       region as part of a native void*[] (8-byte slots), so the word-struct
       copy reads pointer halves. Index the live table instead. */
    void **sp28 = (void **) &D_8015AA08_ovl4;
#else
    Unk10Words sp28 = D_8015AA08_ovl4;
#endif
    SPObj *sp;

#ifdef PORT
    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp28[arg1 / 100]);
#else
    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp28.unk0[arg1 / 100]);
#endif
    sp->xOffset = arg2;
    sp->yOffset = arg3;
    arg2 += sp->width;
#ifdef PORT
    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp28[(arg1 % 100) / 10]);
#else
    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp28.unk0[(arg1 % 100) / 10]);
#endif
    sp->xOffset = arg2;
    sp->yOffset = arg3;
    arg2 += sp->width;
#ifdef PORT
    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp28[arg1 % 10]);
#else
    sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp28.unk0[arg1 % 10]);
#endif
    sp->xOffset = arg2;
    sp->yOffset = arg3;
}

u8 func_80157004_ovl4(s32 arg0) {
    return D_800ECA08[arg0].unk10;
}

/* FACTORY: 1 of 138 words DIFFERS, MEASURED 2026-08-25 -- until this pass the
 * site could not be scored at all: the draft's own `void func_800AFBB4(s32,
 * GObj *);` collided with the implicit `int func_800AFBB4()` that eight
 * earlier call sites in this TU had already created, so un-guarding it did
 * not compile. The prototype (and func_800ACBDC's) now sits at file scope at
 * the top of the file, spelled as ovl1/ovl1_7.h spells it; the ROM sha1 is
 * unchanged by that hoist (LEVERS lever 55).
 * The one word left is the operand ORDER of `beq $v0, $fp` (ROM) against
 * `beq $fp, $v0` here -- the register ASSIGNMENT is already identical
 * ($fp = v, $v0 = the fresh func_80157004_ovl4 result). Swept and inert:
 * `t != v`, `v != t`, both `== `/empty-then polarities, the assignment
 * embedded in the condition, and `u8 t`. Adjacent-operand transposition;
 * permuter food. */
#ifdef NON_MATCHING
typedef struct {
    f32 unk0;
    f32 unk4;
} Unk2Floats;

typedef struct {
    u16 unk0;
    u16 unk2;
    u16 unk4;
} Unk3Halfs;

extern Unk2Floats D_8015ADC4_ovl4[];
extern Unk3Halfs D_8015ADDC_ovl4[];
extern s32 D_8015C6F8_ovl4[];

/* FACTORY: 1/138. One word, and it is a register-ORDER choice inside a
 * commutative branch:
 *     ROM  beq $v0, $fp    (rs = the call result, rt = the held value)
 *     IDO  beq $fp, $v0
 * at `if (t != v)`, where `t` is the func_80157004_ovl4 result in $v0 and `v`
 * is the loop-carried copy in $fp. $fp IS $s8 -- the two disassemblies name
 * the same register differently, so the only real difference is which operand
 * is rs.
 *
 * MEASURED AND INERT 2026-08-25: writing it `if (v != t)`. Byte-identical.
 * IDO canonicalises the operand order of `!=` before register allocation, so
 * the source cannot express this choice and lever 20 does not reach it.
 *
 * Permuter food, and it is in priority_queue.py's TARGETS. Note it has not
 * had a real run yet: its first scheduled slot was cut to 17 seconds by a
 * stray kill while the queue was being restarted for the --stack-diffs fix. */
void func_80157028_ovl4(GObj *arg0, s32 arg1) {
    Unk2Floats *p;
    SPObj *sp;
    Unk3Halfs *c;
    s32 idx;
    s32 t;
    s32 v;

    D_8015C6F8_ovl4[arg1] = omCurrentObj->objId;
    v = func_80157004_ovl4(arg1);
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    p = &D_8015ADC4_ovl4[arg1];
    func_80156EB0_ovl4(arg0, v, p->unk0, p->unk4);
    while (1) {
        if ((arg1 != saveCurrentFileNum) || (D_8015C6DC_ovl4 == 0)) {
            func_800AFBB4(1, omCurrentObj);
            if (func_801555AC_ovl4(arg1) != 0) {
                func_800AFBB4(1, omCurrentObj);
                t = func_80157004_ovl4(arg1);
                if (t != v) {
                    v = t;
                    func_800ACBDC(arg0);
                    func_80156EB0_ovl4(arg0, t, p->unk0, p->unk4);
                }
                if (func_801555AC_ovl4(arg1) != 0) {
                    sp = arg0->unk4C;
                    while (sp != NULL) {
                        idx = arg1 == saveCurrentFileNum;
                        c = &D_8015ADDC_ovl4[idx];
                        sp->primColorRed = c->unk0;
                        sp->primColorGreen = c->unk2;
                        sp->primColorBlue = c->unk4;
                        sp = (SPObj *) sp->unk8;
                    }
                }
            } else {
                func_800AFBB4(0, omCurrentObj);
            }
        } else {
            func_800AFBB4(0, omCurrentObj);
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157028_ovl4.s")
#endif

s32 func_80157250_ovl4(void) {
    return 4;
}

s32 func_80157258_ovl4(s32 arg0, s32 arg1) {
    switch (arg1) {
        case 5:
            return 1;
        case 0:
            return 1;
        case 1:
            return 1;
        case 2:
            return 1;
        case 3:
            return ((u8 *) &D_800ECA08[arg0])[0x13];
        case 4:
            return ((u8 *) &D_800ECA08[arg0])[0x14];
    }
}

extern Unk6Words D_8015AA30_ovl4;
extern Unk6Words D_8015AA48_ovl4;
extern struct UnkStruct8015C740 D_8015B054_ovl4;
extern Unk2Fs D_8015B074_ovl4[];
extern Unk2Ss D_8015B3DC_ovl4[][3];
extern Unk2Ss D_8015B46C_ovl4[][3];
s32 func_80157258_ovl4(s32, s32);

void func_801572E4_ovl4(GObj *arg0, s32 arg1) {
#ifdef PORT
    /* D_8015AA30/D_8015AA48 are six N64 pointer words each; the PC data
       generator emits the region as part of a native void*[] (8-byte slots),
       so the word-struct copies read pointer halves. Index the live tables
       instead. */
    void **spC0 = (void **) &D_8015AA30_ovl4;
    void **spA8 = (void **) &D_8015AA48_ovl4;
#else
    Unk6Words spC0 = D_8015AA30_ovl4;
    Unk6Words spA8 = D_8015AA48_ovl4;
#endif
    SPObj *sp;
    s32 i;
    s32 pad;
    SPObj *dst1[6];
    SPObj *dst2[6];

    func_80157250_ovl4();
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    sp = (SPObj *) func_8015C740_ovl5(arg0, &D_8015B054_ovl4);
    sp->xOffset = D_8015B074_ovl4[arg1].unk0;
    sp->yOffset = D_8015B074_ovl4[arg1].unk4;
    for (i = 0; i < 6; i++) {
#ifdef PORT
        dst1[i] = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) spC0[i]);
#else
        dst1[i] = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) spC0.unk0[i]);
#endif
        dst1[i]->xOffset = D_8015B3DC_ovl4[i][arg1].unk0;
        dst1[i]->yOffset = D_8015B3DC_ovl4[i][arg1].unk4;
#ifdef PORT
        dst2[i] = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) spA8[i]);
#else
        dst2[i] = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) spA8.unk0[i]);
#endif
        dst2[i]->xOffset = D_8015B46C_ovl4[i][arg1].unk0;
        dst2[i]->yOffset = D_8015B46C_ovl4[i][arg1].unk4;
    }
    while (1) {
        if ((arg1 == saveCurrentFileNum) && (D_8015C6DC_ovl4 == 1)) {
            func_800AFBB4(1, omCurrentObj);
            for (i = 0; i != 6; i++) {
                if (func_80157258_ovl4(arg1, i) != 0) {
                    dst1[i]->renderFlags &= ~8;
                    dst2[i]->renderFlags &= ~8;
                } else {
                    dst1[i]->renderFlags |= 8;
                    dst2[i]->renderFlags |= 8;
                }
            }
        } else {
            func_800AFBB4(0, omCurrentObj);
        }
        ohSleep(1);
    }
}

extern struct UnkStruct8015C740 D_8015B5F4_ovl4;
extern struct UnkStruct8015C740 D_8015B62C_ovl4;
extern struct UnkStruct8015C740 D_8015B4FC_ovl4;
extern struct UnkStruct8015C740 D_8015B54C_ovl4;
extern Unk2Ss D_8015B614_ovl4[];
extern Unk2Ss D_8015B64C_ovl4[];
extern Unk2Ss D_8015B51C_ovl4[];
extern Unk2Ss D_8015B56C_ovl4[];

void func_80157610_ovl4(GObj *arg0, s32 arg1) {
    SPObj *sp;
    Unk2Ss *p;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    sp = (SPObj *) func_8015C740_ovl5(arg0, &D_8015B5F4_ovl4);
    sp->xOffset = D_8015B614_ovl4[arg1].unk0;
    sp->yOffset = D_8015B614_ovl4[arg1].unk4;
    sp = (SPObj *) func_8015C740_ovl5(arg0, &D_8015B62C_ovl4);
    sp->xOffset = D_8015B64C_ovl4[arg1].unk0;
    sp->yOffset = D_8015B64C_ovl4[arg1].unk4;
    sp = (SPObj *) func_8015C740_ovl5(arg0, &D_8015B4FC_ovl4);
    p = &D_8015B51C_ovl4[arg1];
    sp->xOffset = p->unk0;
    sp->yOffset = p->unk4;
    sp = (SPObj *) func_8015C740_ovl5(arg0, &D_8015B4FC_ovl4);
    sp->xOffset = p[3].unk0;
    sp->yOffset = p[3].unk4;
    sp = (SPObj *) func_8015C740_ovl5(arg0, &D_8015B54C_ovl4);
    sp->xOffset = D_8015B56C_ovl4[arg1].unk0;
    sp->yOffset = D_8015B56C_ovl4[arg1].unk4;
    while (1) {
        if ((arg1 == saveCurrentFileNum) && (D_8015C6DC_ovl4 == 2)) {
            func_800AFBB4(1, omCurrentObj);
        } else {
            func_800AFBB4(0, omCurrentObj);
        }
        ohSleep(1);
    }
}

/* 74/183: semantically complete and the frame/local layout is exact; the
 * residue is a whole-function temp-register rotation seeded at the struct copy
 * (the ROM materialises sp+0x6C twice -- once as the copy destination, once as
 * the loop-end pointer in $fp -- IDO shares one register). Swept: with and
 * without the end/q pointer locals, `(s32 *) &sp6C` and `end + 2` spellings,
 * two dead scalars for the frame, declaration order of every local. */
#ifdef NON_MATCHING
extern Unk3Words D_8015AA60_ovl4;
extern Unk2Ss D_8015B6C4_ovl4[];
extern Unk2Ss D_8015B6FC_ovl4[];
extern struct UnkStruct8015C740 D_8015B6DC_ovl4;
void func_800B1900(s32);
void func_800BB468(s32, s32);

void func_80157840_ovl4(GObj *arg0, s32 arg1) {
#ifdef PORT
    /* D_8015AA60 is three N64 pointer words; the PC data generator emits the
       region as part of a native void*[] (8-byte slots), so the word-struct
       copy reads pointer halves. Walk the live table instead. */
    void **sp6C = (void **) &D_8015AA60_ovl4;
    SPObj *sp;
    void **p;
    void **end;
#else
    Unk3Words sp6C = D_8015AA60_ovl4;
    SPObj *sp;
    s32 *p;
    s32 *end;
#endif
    Unk2Ss *q;
    s32 i;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    q = &D_8015B6C4_ovl4[arg1];
#ifdef PORT
    p = &sp6C[2];
    end = &sp6C[0];
#else
    p = &sp6C.unk0[2];
    end = &sp6C.unk0[0];
#endif
    do {
        play_sound(0xD3);
        sp = (SPObj *) func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) *p);
        sp->xOffset = q->unk0;
        sp->yOffset = q->unk4;
        for (i = 0; i < 30; i++) {
            if (D_800EA1A0[D_8015C6D0_ovl4] == 4) {
                func_800ACBDC(arg0);
                func_800B1900(((u16 *) omCurrentObj)[1]);
            }
            ohSleep(1);
        }
        func_800ACBDC(arg0);
        p--;
    } while (p >= end);
    if (D_800EA1A0[D_8015C6D0_ovl4] == 4) {
        func_800ACBDC(arg0);
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
    D_800EA1A0[D_8015C6D0_ovl4] = 3;
    play_sound(0xE);
    sp = (SPObj *) func_8015C740_ovl5(arg0, &D_8015B6DC_ovl4);
    sp->xOffset = D_8015B6FC_ovl4[arg1].unk0;
    sp->yOffset = D_8015B6FC_ovl4[arg1].unk4;
    func_800BB468(0, 0);
    for (i = 0; i != 15; i++) {
        sp->xOffset = sp->xOffset - 1.0f;
        sp->yOffset = sp->yOffset - 1.0f;
        ohSleep(1);
        sp->xOffset = sp->xOffset + 1.0f;
        sp->yOffset = sp->yOffset + 1.0f;
        ohSleep(1);
    }
    func_800ACBDC(arg0);
    D_800EA1A0[D_8015C6D0_ovl4] = 2;
    func_800B1900(((u16 *) omCurrentObj)[1]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157840_ovl4.s")
#endif

void func_80157B1C_ovl4(void) {
    extern s32 D_800D6B68;

    D_8015C6D8_ovl4 = 0;
    switch (D_800D6B68) {
        case 0x16:
            D_8015C6D4_ovl4 = 1;
            D_8015C6DC_ovl4 = 1;
            D_8015C6E0_ovl4 = 5;
            break;
        case 0x19:
            D_8015C6D4_ovl4 = 1;
            D_8015C6DC_ovl4 = 1;
            D_8015C6E0_ovl4 = 3;
            break;
        case 0x1B:
            D_8015C6D4_ovl4 = 1;
            D_8015C6DC_ovl4 = 1;
            D_8015C6E0_ovl4 = 0;
            break;
        case 0x1A:
            D_8015C6D4_ovl4 = 1;
            D_8015C6DC_ovl4 = 1;
            D_8015C6E0_ovl4 = 4;
            break;
        case 0x17:
            D_8015C6D4_ovl4 = 1;
            D_8015C6DC_ovl4 = 1;
            D_8015C6E0_ovl4 = 2;
            break;
        case 0x18:
            D_8015C6D4_ovl4 = 1;
            D_8015C6DC_ovl4 = 1;
            D_8015C6E0_ovl4 = 1;
            break;
        default:
            D_8015C6D4_ovl4 = 0;
            D_8015C6DC_ovl4 = 0;
            break;
    }
}

void func_80157C38_ovl4(void) {
    D_800EC9FC = saveCurrentFileNum;
    saveSetHeaderChecksum();
    func_800B8BDC();
    func_800B96A0(saveCurrentFileNum, 0);
    func_800B94FC(saveCurrentFileNum);
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

void func_80157CB0_ovl4(s32 arg0) {
    if (D_800D6B24 == 0) {
        if (D_8015C6D8_ovl4 != 0) {
            func_80157C38_ovl4();
        }
    }
}

void func_80157CF0_ovl4(void) {
    s32 i;
    s32 id;

    for (i = 0; i != 3; i++) {
        id = request_track_3(1, 0, 0x70);
        D_800E9AA0[id].as_s32 = 2;
        D_800E9C60[id] = i;
        id = request_track_3(1, 0, 0x70);
        D_800E9AA0[id].as_s32 = 4;
        D_800E9C60[id] = i;
        id = request_track_3(1, 0, 0x70);
        D_800E9AA0[id].as_s32 = 3;
        D_800E9C60[id] = i;
        id = request_track_3(1, 0, 0x70);
        D_800E9AA0[id].as_s32 = 8;
        D_800E9C60[id] = i;
    }
}

void func_80157E04_ovl4(void) {
    extern s32 D_800D6B68;
    s32 i;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x100);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_800A6BC0(1);
    func_80157B1C_ovl4();
    if (D_800D6B68 != 0x16) {
        func_800A74D8();
        play_music(0, 0x26);
    }
    D_800E9AA0[func_800AEA64(1, 0, 0x70)].as_s32 = 0;
    D_800E9AA0[request_track_3(1, 0, 0x70)].as_s32 = 1;
    D_800E9AA0[request_track_3(1, 0, 0x70)].as_s32 = 0x11;
    func_80157CF0_ovl4();
    for (i = 0; i < 3; i++) {
        s32 id = request_track_3(1, 0, 0x70);
        D_800E9AA0[id].as_s32 = 9;
        D_800E9C60[id] = i;
    }
    for (i = 0; i != 3; i++) {
        s32 id = request_track_3(1, 0, 0x70);
        D_800E9AA0[id].as_s32 = 0xB;
        D_800E9C60[id] = i;
    }
    D_800E9AA0[request_track_3(1, 0, 0x70)].as_s32 = 0x12;
    HS64_omMakeGObj(0, func_80157CB0_ovl4, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80157FFC_ovl4(Gfx **gfxP) {
    gSPDisplayList((*gfxP)++, D_8015AA70_ovl4);
}

void func_80158020_ovl4(void) {
    omDrawAll();
    func_800AC610();
}

// The (u32) cast on D_8012EB00 and the vu16 casts in the clear loop are both
// load-bearing; see src/ovl5/ovl5_7.c func_8017CC3C_ovl5.
void func_80158048_ovl4(void) {
    s32 i;

    D_8015AAA8_ovl4.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_8015AAA8_ovl4);
    D_8015AAC4_ovl4.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_8015AAC4_ovl4);
    if (saveSoundMode == 1) {
        auSetHighSoundQuality();
    } else {
        auSetLowSoundQuality();
    }
}

