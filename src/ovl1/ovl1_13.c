#include "common.h"

#include "GObj.h"
#include "SPObj.h"
#include "Player.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl1/ovl1_6.h"
#include "main/gtl.h"
#include "main/math.h"
#include "util.h"

void draw_lives_digit(s32 arg0, s32 arg1);
void draw_hp_segment(s32 arg0, s32 arg1);
void draw_star_segments(s32 arg0, s32 arg1);
void func_800BD208(s32 arg0, s32 arg1);
void func_800BD460(s32 arg0, s32 arg1);
void func_800BD6E0(void);
void func_800BD7FC(void);
void func_800BD92C(void);
void func_800BDAA8(void);

extern f32 gKirbyHp;
extern s32 gKirbyLives;
extern s32 gKirbyStars;

extern s32 D_800D6E54;
extern f32 D_800D6E58;
extern f32 D_800D6E5C;
extern s32 D_800D6E88;
extern s32 D_800D6E8C;
extern s32 D_800D6E90;
extern s32 D_800D6E94;
extern s32 D_800D6E98;
extern s32 D_800D6E9C;
extern s32 D_800D6EA0;
extern s32 D_800D6EA4;
extern s32 D_800D6EA8;
extern s32 D_800D6EAC;
extern s32 D_800D6EB0;
extern s32 D_800D6EB4;
extern s32 D_800D6EB8;
extern s32 D_800D6EBC;
extern s32 D_800D6EC0;
extern s32 D_800F4D10;
extern s32 D_8012E850;

extern s32 D_800D55D0[];
extern u8 D_800D55F8[];
extern s32 D_800BE4FC;
extern s32 D_800BE508;
extern s32 D_800D6B24;
extern s16 D_800D6B30;

extern s32 saveHUDTheme;
extern u32 D_800D552C[];
extern u32 D_800D5550[];
extern u32 D_800D5574[];
extern u32 D_800D5598[];
extern s32 D_800D5310[];
extern s32 D_800D53DC[];
extern s32 D_800D5408[];
extern s32 D_800D5434[];
extern s32 D_800D5460[];
extern u16 D_800ED510[];

s32 func_800A8BAC(s32 arg0);
void func_800B1900(u16 arg0);

s32 change_kirby_hp(f32 arg0) {
    if ((random_u16() & 3) == 3) {
        // They messed up this check, but the idea was that
        //  Kirby would take twice damage and wouldnt heal (1 in 4 chance)
        if (!utilTamperCheck) {
            if (arg0 < 0) {
                arg0 *= 2;
            } else {
                arg0 = 0;
            }
        }
    }
    if (D_800D6E8C == 0.0f) {
        return 0;
    }
    gKirbyHp += arg0;
    if (gKirbyHp <= 0.0f) {
        gKirbyHp = 0.0f;
    }
    if (gKirbyHp > 6.0f) {
        gKirbyHp = 6.0f;
    }
    D_800D6E8C = gKirbyHp;
    D_800E7B20[PLAYERTRACK] = gKirbyHp;
    return D_800D6E8C;
}

// set lives?
void func_800BC0F0(s32 arg0) {
    if (arg0 < 0) {
        arg0 = 0;
    }
    if (arg0 >= 3) {
        arg0 = 2;
    }
    D_800D6E90 = arg0 + 0x23;
}

s32 func_800BC11C(f32 arg0) {
    f32 temp_f12;

    D_800D6E58 = arg0;
    if (D_800D6E58 < 0.0f) {
        D_800D6E58 = 0.0f;
    }
    if (D_800D6E5C < D_800D6E58) {
        D_800D6E58 = D_800D6E5C;
    }
    temp_f12 = (D_800D6E58 / D_800D6E5C) * 30.0f;
    if (D_800D6E58 == D_800D6E5C) {
        D_800D6E94 = 0x1E;
    } else {
        if (D_800D6E58 == 0.0f) {
            D_800D6E94 = 0;
        } else {
            if (temp_f12 < 1.0f) {
                D_800D6E94 = 1;
            } else {
                D_800D6E94 = temp_f12;
            }
        }
    }
    return D_800D6E94;
}

void func_800BC1FC(s32 arg0) {
    D_800D6E58 = arg0;
    D_800D6E5C = D_800D6E58;
    D_800D6EAC = D_800D6EB8 = 0;
    D_800D6E94 = 0x1E;
}

void change_kirby_stars(s32 arg0) {
    gKirbyStars += arg0;
}

void change_kirby_lives(s32 arg0) {
    gKirbyLives += arg0;
    if (gKirbyLives < 0) {
        gKirbyLives = 0;
    }
    if (gKirbyLives > 100) {
        gKirbyLives = 100;
    }
    D_800D6E88 = gKirbyLives;
}

void func_800BC298(s32 arg0) {
    if ((random_u16() & 3) == 2) {
        if (func_800F88A0(arg0) == 0) {
            D_8012E850 = D_800D6E90 = D_800D6E54 = 0;
            return;
        }
    }
    if (arg0 < 0) {
        arg0 = 0;
    }
    if (arg0 >= 0x24) {
        arg0 = 0x23;
    }
    D_800D6E90 = arg0;
    D_800D6E54 = arg0;
}

void func_800BC328(s32 arg0) {
    u32 *data;
    s32 mode;

    mode = D_800E9E20[omCurrentObj->objId];
    data = &D_800D552C[mode];
    gEntitiesNextPosXArray[omCurrentObj->objId] = data[0];
    gEntitiesNextPosYArray[omCurrentObj->objId] = data[1];
    func_800AF8C0(data[2], 0xA, 6, mode);
    func_800A5B14(arg0, 0xD0, 0xB0, 0x80, 0xFF);
    while (1) {
        if (D_800E9C60[D_800E0D50[omCurrentObj->objId]] != 0) {
            func_800ACBDC(arg0);
            func_800B1900(omCurrentObj->objId);
        }
        mode = 0;
        if (D_800E9AA0[D_800E0D50[omCurrentObj->objId]] != 0) {
            mode = 1;
        }
        func_800AF920(mode);
        ohSleep(1);
    }
}

void func_800BC4C0(s32 arg0) {
    u32 *data;
    s32 mode;

    mode = D_800E9E20[omCurrentObj->objId];
    data = &D_800D5550[mode];
    gEntitiesNextPosXArray[omCurrentObj->objId] = data[0];
    gEntitiesNextPosYArray[omCurrentObj->objId] = data[1];
    func_800AF8C0(data[2], 0xA, 4, mode);
    while (1) {
        if (D_800E9C60[D_800E0D50[omCurrentObj->objId]] != 0) {
            func_800ACBDC(arg0);
            func_800B1900(omCurrentObj->objId);
        }
        mode = 0;
        if ((D_800E98E0[D_800E0D50[omCurrentObj->objId]] == 0) && (D_800E9AA0[D_800E0D50[omCurrentObj->objId]] != 0)) {
            mode = 1;
        }
        func_800AF920(mode);
        ohSleep(1);
    }
}

void func_800BC664(s32 arg0) {
    u32 *data;
    s32 mode;

    mode = D_800E9E20[omCurrentObj->objId];
    data = &D_800D5574[mode];
    gEntitiesNextPosXArray[omCurrentObj->objId] = data[0];
    gEntitiesNextPosYArray[omCurrentObj->objId] = data[1];
    func_800AF8C0(data[2], 0xA, 6, mode);
    func_800A5B14(arg0, 0xD0, 0xB0, 0x80, 0xFF);
    while (1) {
        if (D_800E9C60[D_800E0D50[omCurrentObj->objId]] != 0) {
            func_800ACBDC(arg0);
            func_800B1900(omCurrentObj->objId);
        }
        mode = 0;
        if (D_800E9AA0[D_800E0D50[omCurrentObj->objId]] != 0) {
            mode = 1;
        }
        func_800AF920(mode);
        ohSleep(1);
    }
}

void func_800BC800(s32 arg0) {
    u32 *data;
    s32 mode;

    mode = D_800E9E20[omCurrentObj->objId];
    data = &D_800D5598[mode];
    gEntitiesNextPosXArray[omCurrentObj->objId] = data[0];
    gEntitiesNextPosYArray[omCurrentObj->objId] = data[1];
    func_800AF8C0(data[2], 0xA, 4, mode);
    while (1) {
        if (D_800E9C60[D_800E0D50[omCurrentObj->objId]] != 0) {
            func_800ACBDC(arg0);
            func_800B1900(omCurrentObj->objId);
        }
        mode = 0;
        if ((D_800E98E0[D_800E0D50[omCurrentObj->objId]] != 0) && (D_800E9AA0[D_800E0D50[omCurrentObj->objId]] != 0)) {
            mode = 1;
        }
        func_800AF920(mode);
        ohSleep(1);
    }
}

void draw_pause_bg(GObj *gobj) {
    Gfx* list = gDisplayListHeads[0];
    if (D_800E9AA0[gobj->objId] != 0) {
        gDPPipeSync(list++);
        gDPSetCycleType(list++, G_CYC_1CYCLE);
        gDPSetRenderMode(list++, G_RM_OPA_SURF, CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_IN, G_BL_1MA));
        gDPSetPrimColor(list++, 0, 0, 0xF4, 0xD8, 0xA2, 0xFF);
        gDPSetCombineLERP(list++, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE);
        gDPFillRectangle(list++, 0, 0, 320, 182);
        gDisplayListHeads[0] = list;
    }
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 236/293, whole-body one-slot shift. The function allocates
 * FIVE callee-saved registers where the ROM uses four (frame 0x50 vs 0x40),
 * so every instruction after the prologue lands one slot off; the bodies
 * agree. The extra register is the loop bound 5, which IDO hoists into $s0
 * while the ROM re-materializes it as `addiu $at, $zero, 5` inside the loop,
 * plus the &gPlayerControllers[1] address, which the ROM re-materializes at
 * each of its three reads. Both are the address/constant-hoisting floor in
 * LEVERS ("IDO folding an address ... where the ROM CSEs it"), and neither
 * moved under u32/s32 counters or an explicitly recomputed byte-offset read.
 * Solved semantics, all measured: D_800D55BC[kind]() indirect dispatch,
 * request_track_3 is 3-arg (the ROM's $a3 is the spilled loop counter, not a
 * fourth argument), the child track's mode is `D_800E9E20[cur] * 3` and must
 * be SPELLED as (x * 4) - x -- written `* 3` IDO hoists the constant into a
 * saved register and emits multu, costing 57 extra diffs -- and the tail call
 * is func_800B1900((u16) omCurrentObj->objId), the low half of objId.
 *
 * LEVER 58: the head really does take a parameter, and declaring it is
 * MEASURED INERT here -- 236/293 before and after, not one instruction moved.
 * Recorded so nobody re-costs it. The evidence for the parameter is real: the
 * `jalr $t9` at 800BCAAC is the first call in the function, nothing has
 * written $a0 on the way to it, its delay slot is a nop, there is no home
 * store anywhere in the 292 words, and all four entries of the table it
 * dispatches through (func_800BC328 / 4C0 / 664 / 800, all matched) are
 * defined as taking an argument. So the parameter is declared and passed,
 * because it is true, not because it pays.
 * The reason it does not pay is that this function's residue is not an
 * argument-register rotation at all: it is the two EXTRA CALLEE-SAVED
 * registers described above, and $a0 was never the contended register. That
 * is the discriminator to check before reaching for 58 -- the lever moves a
 * value out of $a0 and lets everything below fall one slot; where the residue
 * starts in the prologue with a frame-size difference, there is nothing for
 * it to move.
 * (The table's entries type their argument `s32` and then hand it to
 * func_800ACBDC / func_800A5B14 as an object, so `s32` here is copied from
 * the file's existing spelling, not endorsed. Retyping that cluster to
 * GObj * is its own job.) */
void func_800BCA5C(s32 arg0) {
    extern void (*D_800D55BC[])(s32);
    extern u16 gPlayerControllers[];
    extern f32 gameTicksPerDrawInv;
    extern s32 D_800D6B6C;
    extern s32 D_800BE4F8;
    extern s32 D_800BE544;
    extern s32 func_800F8560(void);
    extern void func_800AF9B8(s32, s32);
    extern void func_80023884(void);
    extern void func_80023794(void);
    extern void auSetBGMVolumeSmooth(s32, s32, s32);
    extern void auStopSong(s32);
    u32 kind;
    s32 track;
    s32 i;
    u16 buttons;
    s32 objId;

    kind = D_800EC2E0[omCurrentObj->objId].as_u32;
    if (kind != 0) {
        D_800D55BC[kind](arg0);
    }
    if (gGameState == 0x21) {
        D_800E9E20[omCurrentObj->objId] = 2;
    } else if (func_800F8560() == 9) {
        D_800E9E20[omCurrentObj->objId] = 1;
    } else {
        D_800E9E20[omCurrentObj->objId] = 0;
    }
    i = 1;
    do {
        track = request_track_3(0x27, 0x3C, 0x50);
        D_800EC2E0[track].as_u32 = i;
        i += 1;
        D_800E9E20[track] = (D_800E9E20[omCurrentObj->objId] * 4) - D_800E9E20[omCurrentObj->objId];
    } while (i != 5);
    func_800AF9B8(0x28, 0xE);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = NULL;
    utilSetRectBoundsAndColor(0xA, 0xA, 0x136, 0xB6, 0xF0, 0xD8, 0xA0);
    utilSpawnRect(0, 0x10, 0);
    auSetBGMVolumeSmooth(0, 0x5000, 0x10);
    func_80023884();
    play_sound(0xED);
    while (D_800D6B24 != 0) {
        ohSleep(1);
    }
    D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *) 1;
    utilSpawnRect(0xFF, -0x10, 0);
    while (D_800D6B24 != 0) {
        ohSleep(1);
    }
    ohSleep(3.0f * gameTicksPerDrawInv);
loop14:
    buttons = gPlayerControllers[1];
    if (!(buttons & 0x9000)) {
        if (buttons & 0x800) {
            play_sound(0x113);
            D_800E98E0[omCurrentObj->objId] = 0;
            buttons = gPlayerControllers[1];
        }
        if (buttons & 0x400) {
            play_sound(0x113);
            D_800E98E0[omCurrentObj->objId] = 1;
        }
        ohSleep(1);
        goto loop14;
    }
    play_sound(0xED);
    objId = omCurrentObj->objId;
    if ((D_800E98E0[objId] == 1) && (D_800E9E20[objId] != 1)) {
        if (gGameState == 0x21) {
            D_800D6B6C = 1;
        }
        D_800BE4F8 = 0;
        utilSetRectColorFullScreen(0, 0, 0);
        utilSpawnRect(0, 0x20, 2);
        auSetBGMVolumeSmooth(0, 0, 8);
        while (D_800D6B24 != 0) {
            ohSleep(1);
        }
        auStopSong(0);
    } else {
        utilSpawnRect(0, 0x10, 0);
        while (D_800D6B24 != 0) {
            ohSleep(1);
        }
        D_800E9AA0[omCurrentObj->objId] = NULL;
        D_800E9C60[omCurrentObj->objId] = 1;
        auSetBGMVolumeSmooth(0, 0x7800, 0x10);
        func_80023794();
        utilSpawnRect(0xFF, -0x10, 0);
        while (D_800D6B24 != 0) {
            ohSleep(1);
        }
        D_800BE544 = 0x8000;
    }
    func_800B1900((u16) omCurrentObj->objId);
}
#elif defined(PORT)
/* The PAUSE screen process (draft above). Runs any pending per-track
 * pause callback from D_800D55BC (native void*[] cells, gen_data resolved
 * the function words to host symbols), picks the pause layout mode (0x21
 * boss rush -> 2, level kind 9 -> 1, else 0), spawns the four pause child
 * tracks mirroring that mode, fades in over the paused game, then polls
 * controller 0: C-up/C-down (0x0800/0x0400) move the CONTINUE/QUIT cursor
 * D_800E98E0, START or A (0x9000) commits. QUIT (cursor 1, not allowed in
 * mode 1) fades to black and stops the song; CONTINUE fades back and
 * unpauses. request_track_3 takes three args (ovl1_6.c definition); the
 * N64 fourth register was dead. */
void func_800BCA5C(void) {
    extern void *D_800D55BC[];
    extern Controller_800D6FE8 gPlayerControllers[];
    extern u32 gGameState;
    extern f32 gameTicksPerDrawInv;
    extern s32 D_800D6B6C;
    extern s32 D_800BE4F8;
    extern s32 D_800BE544;
    void func_800AF9B8(s32, s32);
    s32 func_800F8560(void);
    void auSetBGMVolumeSmooth(s32, u32, u32);
    void auStopSong(s32);
    void func_80023884(void);
    void func_80023794(void);
    void func_800B1900(u16);
    u32 objId = omCurrentObj->objId;
    u32 cb = D_800EC2E0[objId].as_u32;
    s32 mode;
    s32 i;
    u16 btn;

    if (cb != 0) {
        ((void (*)(void)) D_800D55BC[cb])();
    }
    if (gGameState == 0x21) {
        mode = 2;
    } else if (func_800F8560() == 9) {
        mode = 1;
    } else {
        mode = 0;
    }
    D_800E9E20[objId] = mode;
    for (i = 1; i != 5; i++) {
        s32 tr = request_track_3(0x27, 0x3C, 0x50);

        D_800EC2E0[tr].as_u32 = i;
        D_800E9E20[tr] = mode;
    }
    func_800AF9B8(0x28, 0xE);
    D_800E98E0[objId] = 0;
    D_800E9C60[objId] = 0;
    D_800E9AA0[objId] = NULL;
    utilSetRectBoundsAndColor(0xA, 0xA, 0x136, 0xB6, 0xF0, 0xD8, 0xA0);
    utilSpawnRect(0, 0x10, 0);
    auSetBGMVolumeSmooth(0, 0x5000, 0x10);
    func_80023884();
    play_sound(0xED);
    while (D_800D6B24 != 0) {
        ohSleep(1);
    }
    D_800E9AA0[objId] = (struct EntityThing800E9AA0 *) 1;
    utilSpawnRect(0xFF, -0x10, 0);
    while (D_800D6B24 != 0) {
        ohSleep(1);
    }
    ohSleep((s32) (3.0f * gameTicksPerDrawInv));
    while (1) {
        btn = gPlayerControllers[0].buttonPressed;
        if (btn & 0x9000) {
            break;
        }
        if (btn & 0x800) {
            play_sound(0x113);
            D_800E98E0[objId] = 0;
            btn = gPlayerControllers[0].buttonPressed;
        }
        if (btn & 0x400) {
            play_sound(0x113);
            D_800E98E0[objId] = 1;
        }
        ohSleep(1);
    }
    play_sound(0xED);
    if (D_800E98E0[objId] == 1 && D_800E9E20[objId] != 1) {
        if (gGameState == 0x21) {
            D_800D6B6C = 1;
        }
        D_800BE4F8 = 0;
        utilSetRectColorFullScreen(0, 0, 0);
        utilSpawnRect(0, 0x20, 2);
        auSetBGMVolumeSmooth(0, 0, 8);
        while (D_800D6B24 != 0) {
            ohSleep(1);
        }
        auStopSong(0);
    } else {
        utilSpawnRect(0, 0x10, 0);
        while (D_800D6B24 != 0) {
            ohSleep(1);
        }
        D_800E9AA0[objId] = NULL;
        D_800E9C60[objId] = 1;
        auSetBGMVolumeSmooth(0, 0x7800, 0x10);
        func_80023794();
        utilSpawnRect(0xFF, -0x10, 0);
        while (D_800D6B24 != 0) {
            ohSleep(1);
        }
        D_800BE544 = 0x8000;
    }
    func_800B1900((u16) objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BCA5C.s")
#endif

extern u32 D_800ED500[];
SPObj *func_800AC954(GObj *, u32, void *);
void func_800AD1A0(GObj *);
void func_800AF96C(s32);

void func_800BCEEC(GObj *gobj) {
    SPObj *sprite;

    sprite = func_800AC954(gobj, 0, &D_800ED500);
    sprite->renderFlags |= 4;
    omLinkGObjDL(gobj, &func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_800AF96C(1);
    gEntitiesNextPosXArray[omCurrentObj->objId] = 7.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 182.0f;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    D_800E98E0[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_u32;
    curObjSleepForever();
}
void draw_lives_digit(s32 arg0, s32 arg1) {
    s32 *src;
    s32 *dst;
    s32 i;

    src = (s32 *) (func_800A8BAC(D_800D5460[saveHUDTheme * 10 + arg1]) + 0x10);
    dst = (s32 *) &D_800ED510[arg0 + 0xA00];
    for (i = 0; i != 0x1E; i++, src += 10) {
        dst[i * 0xA0 + 0] = src[0];
        dst[i * 0xA0 + 1] = src[1];
        dst[i * 0xA0 + 2] = src[2];
        dst[i * 0xA0 + 3] = src[3];
        dst[i * 0xA0 + 4] = src[4];
        dst[i * 0xA0 + 5] = src[5];
        dst[i * 0xA0 + 6] = src[6];
        dst[i * 0xA0 + 7] = src[7];
        dst[i * 0xA0 + 8] = src[8];
    }
}

void draw_hp_segment(s32 arg0, s32 arg1) {
    s32 *src;
    s32 *dst;
    s32 i;

    src = (s32 *) (func_800A8BAC(D_800D53DC[saveHUDTheme * 2 + arg1]) + 0x10);
    dst = (s32 *) &D_800ED510[arg0 * 0x14 + 0x55A];
    for (i = 0; i != 0x1A; i++) {
        dst[i * 0xA0 + 0] = src[0];
        dst[i * 0xA0 + 1] = src[1];
        dst[i * 0xA0 + 2] = src[2];
        dst[i * 0xA0 + 3] = src[3];
        dst[i * 0xA0 + 4] = src[4];
        dst[i * 0xA0 + 5] = src[5];
        dst[i * 0xA0 + 6] = src[6];
        dst[i * 0xA0 + 7] = src[7];
        dst[i * 0xA0 + 8] = src[8];
        dst[i * 0xA0 + 9] = src[9];
        src += 10;
    }
}

void func_800BD208(s32 arg0, s32 arg1) {
    s32 *src;
    s32 *dst;
    s32 i;

    src = (s32 *) (func_800A8BAC(D_800D5408[saveHUDTheme * 2 + arg1]) + 0x10);
    dst = (s32 *) &D_800ED510[arg0 * 4 + 0x271A];
    for (i = 0; i != 0xB; i++) {
        dst[0] = src[0];
        dst[1] = src[1];
        src += 2;
        dst += 0xA0;
    }
}

void draw_kirby_stars(s32 arg0) {
    s32 i;

    if (arg0 < 0) {
        arg0 = 0;
    }

    if (arg0 > 30) {
        arg0 = 30;
    }

    for (i = 0; i != 30; i++) {
        if (i < arg0) {
            draw_star_segments(i, 1);
        } else {
            draw_star_segments(i, 0);
        }
    }
}

void draw_star_segments(s32 arg0, s32 arg1) {
    s32 *src;
    s32 *dst;
    s32 i;

    src = (s32 *) (func_800A8BAC(D_800D5434[saveHUDTheme * 2 + arg1]) + 0x10);
    dst = (s32 *) &D_800ED510[arg0 * 4 + 0x271A];
    for (i = 0; i != 0xB; i++) {
        dst[0] = src[0];
        dst[1] = src[1];
        src += 2;
        dst += 0xA0;
    }
}

void func_800BD460(s32 arg0, s32 arg1) {
    u64 *src;
    u64 *dst;
    s32 i;

    src = (u64 *) (func_800A8BAC(D_800D5310[saveHUDTheme * 10 + arg1]) + 0x10);
    dst = (u64 *) &D_800ED510[arg0 + 0x8C0];
    for (i = 0; i != 0x20; i++) {
        dst[0] = src[0];
        dst[1] = src[1];
        dst[2] = src[2];
        dst[3] = src[3];
        dst[4] = src[4];
        dst[5] = src[5];
        src += 6;
        dst += 0x50;
    }
}

void draw_kirby_lives(void) {
    s32 temp2;
    s32 temp_a2;

    temp_a2 = D_800D6E88 - 1;
    if (D_800D6EA0 != D_800D6E88) {
        D_800D6EA0 = D_800D6E88;
        if (temp_a2 > 99) {
            temp_a2 = 99;
        }
        if (temp_a2 < 0) {
            temp_a2 = 0;
        }
        draw_lives_digit(0x22, temp_a2 / 10);

        temp2 = temp_a2;
        temp_a2 = temp2 % 10;
        draw_lives_digit(0x34, temp_a2);
    }
}

void func_800BD6E0(void) {
    s32 var_a0;
    s32 var_a1;

    if ((D_800D6E8C == 1) && (D_800D6EC0 == 0) && (func_800F8560() != 3) && (D_800D6B24 == 0)) {
        play_sound(0xEC);
        D_800D6EC0++;
    }
    if (D_800D6E8C == D_800D6EA4) {
        D_800D6EB4 = 0;
        return;
    }
    D_800D6EB4++;
    if (D_800D6EB4 >= 5) {
        D_800D6EB4 = 1;
    }
    if (D_800D6EB4 == 1) {
        if (D_800D6E8C < D_800D6EA4) {
            var_a1 = 0;
            var_a0 = D_800D6EA4 - 1;
            D_800D6EA4 = D_800D6EA4 - 1;
        } else {
            play_sound(0xD3);
            var_a1 = 1;
            D_800D6EA4++;
            var_a0 = D_800D6EA4 - 1;
            if (D_800D6EA4 >= 2) {
                D_800D6EC0 = 0;
            }
        }
        draw_hp_segment(var_a0, var_a1);
    }
}

void func_800BD7FC(void) {
    s32 flag;
    s32 i;

    D_800D6EBC--;
    if (D_800D6EBC <= 0) {
        D_800D6EBC = 0;
        if (D_800F4D10 != 0) {
block_2:
            D_800D6EBC = D_800D55D0[++D_800F4D10];
            if (D_800D6EBC < 0) {
                D_800F4D10 = 0;
                D_800D6EBC = 0;
                return;
            }
            flag = 0;
            if (D_800D6EBC >= 0xA) {
                flag = 1;
            }
            for (i = 0; i != 0x1E; i++) {
                draw_star_segments(i, flag);
            }
            return;
        }
        if (D_800D6E98 != gKirbyStars) {
            D_800D6E98++;
            if (D_800D6E98 >= 0x1E) {
                D_800F4D10 = 0;
                gKirbyStars -= 0x1E;
                D_800D6E98 = 0;
                play_sound(1);
                change_kirby_lives(1);
                goto block_2;
            }
            D_800D6EBC = 3;
            play_sound(0x117);
            draw_star_segments(D_800D6E98 - 1, 1);
        }
    }
}

void func_800BD92C(void) {
    s32 var_v0;
    s32 var_s0;
    s32 var_a1;
    s32 temp;

    if (D_800D6E5C == 0.0f) {
        D_800D6EB8 = 0;
        return;
    }
    if ((D_800D6E94 == D_800D6EAC) && (D_800D6E9C != 0)) {
        D_800D6EB8 = 0;
        return;
    }
    D_800D6EB8++;
    if (D_800D6EB8 >= 3) {
        D_800D6EB8 = 1;
    }
    if (D_800D6EB8 == 1) {
        var_s0 = 0;
        if (D_800D6E94 == 0) {
            do {
                func_800BD208(var_s0, 0);
                var_s0++;
            } while (var_s0 != 0x1E);
            D_800D6E94 = 0;
            D_800D6EAC = 0;
            return;
        }
        if (D_800D6E9C == 0) {
            play_sound(0xD3);
            var_a1 = 1;
            temp = ++D_800D6EAC;
            var_s0 = temp - 1;
            if (D_800D6EAC == 0x1E) {
                D_800D6E9C++;
            }
        } else {
            if (D_800D6E94 < D_800D6EAC) {
                var_a1 = 0;
                var_s0 = D_800D6EAC - 1;
                D_800D6EAC = var_s0;
            } else {
                play_sound(0xD3);
                var_a1 = 1;
                temp = ++D_800D6EAC;
                var_s0 = temp - 1;
            }
        }
        func_800BD208(var_s0, var_a1);
    }
}

void func_800BDAA8(void) {
    if (D_800D6E90 != D_800D6EA8) {
        func_800BD460(0xE4, D_800D55F8[D_800D6E90 * 2]);
        func_800BD460(0x108, D_800D55F8[D_800D6E90 * 2 + 1]);
    }
    D_800D6EA8 = D_800D6E90;
}

void func_800BDB18(void) {
    s32 i;

    if (gKirbyStars >= 30) {
        do {
            gKirbyStars -= 30;
            change_kirby_lives(1);
        } while (gKirbyStars >= 30);
    }

    if ((D_800BE508 != 0) || (D_800BE4FC != 0)) {
            for (i = 0; i < (u32) gKirbyHp; i++) {
                draw_hp_segment(i, 1);
            }
        D_800D6E8C = D_800D6EA4 = (u32) gKirbyHp;
    }
    draw_kirby_stars(gKirbyStars);
    D_800D6E98 = D_800D6EB0 = gKirbyStars;
}

void func_800BDD08(void) {
    draw_kirby_lives();
    if (D_800D6B30 != 0) {
        func_800BD6E0();
        if (D_800D6E94 == 0) {
            func_800BD7FC();
        }
        func_800BD92C();
    }
    func_800BDAA8();
}

void func_800BDD68(void) {
    func_800BDAA8();
}

void func_800BDD88(s32 arg0) {

}

void func_800BDD90(s32 arg0) {

}

void func_800BDD98(void) {
    D_800D6EA8 = -1;
    D_800D6EA4 = D_800D6EAC = D_800D6EB0 = D_800D6EA0 = 0;
    D_800D6EB4 = D_800D6EB8 = D_800D6EBC = D_800F4D10 = D_800D6EC0 = 0;
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 13/72. Residue: a single caller-saved register swap (ROM
 * holds the fill halfword in $a0 and the inner counter in $v1; we get the
 * same code with $v1/$a0 exchanged) plus the two addiu scheduling lines that
 * follow from it. Loop structure (goto-formed inner loop -- this is what
 * stops the -O2 unroller here), spills, calls, and branch shape all match.
 * One-slot register rotation -- permuter fuel. */
void func_800BDE0C(s32 arg0) {
    extern s32 D_800F4D14;
    extern s32 D_800F6198;
    extern s32 D_800D6F50;
    extern u16 D_800EDA10[];
    extern u16 D_800EDA24[];
    extern u16 D_800EDA60[];
    extern u16 D_800F4324[];
    extern u16 *D_800D6F58;
    extern u32 D_800D52FC[];
    void func_800A8934(u32, s32, s32, void *);
    u16 fill;
    u8 *q;
    u8 *ra;
    u8 *rb;
    s32 n;

    D_800D6F58 = D_800ED510;
    if (D_800F4D14 != 0) {
        if (D_800F6198 != 0) {
            func_800A8934(0x50002, 0x10, 0, D_800ED510);
            fill = D_800EDA60[0];
            rb = (u8 *) D_800EDA10;
            ra = (u8 *) D_800EDA24;
            do {
                *(u16 *) ra = fill;
                *(u16 *) (ra + 2) = fill;
                n = 0xC;
                q = rb + 0x18;
            loop4:
                n += 4;
                *(u16 *) (q + 2) = fill;
                *(u16 *) (q + 4) = fill;
                *(u16 *) (q + 6) = fill;
                q += 8;
                *(u16 *) (q - 8) = fill;
                if (n != 0xD8) {
                    goto loop4;
                }
                ra += 0x280;
                rb += 0x280;
            } while (ra != (u8 *) D_800F4324);
        } else {
            D_800D6F50 = 0;
            func_800A8934(D_800D52FC[saveHUDTheme], 0x10, 0, D_800ED510);
            func_800BDB18();
        }
        D_800F4D14 = 0;
    }
    if (D_800F6198 != 0) {
        func_800BDD68();
        return;
    }
    func_800BDD08();
}
#elif defined(PORT)
/* HUD frame service: on first-dirty either clears the HUD arena rows to the
 * fill value (pause/transition path) or reloads the themed HUD texture bank,
 * then draws lives/health/stars. Row geometry from the ROM draft above: 42
 * rows of 0x280 bytes from D_800EDA10 (until &D_800F4324); per row two u16
 * at +0x14 and the span +0x18..+0x1B0 get the fill halfword at D_800EDA60.
 * Fixed counts here: the arena is one whole PC object (pc_bss_whole.c) and
 * D_800F4324 is a separate one, so the end-pointer compare cannot be used. */
void func_800BDE0C(s32 arg0) {
    extern u16 D_800EDA10[], D_800EDA60[];
    extern s32 D_800F4D14, D_800F6198, D_800D6F50;
    extern u32 D_800D52FC[];
    extern void *D_800D6F58;

    D_800D6F58 = (void *) &D_800ED510;
    if (D_800F4D14 != 0) {
        if (D_800F6198 != 0) {
            u16 fill = D_800EDA60[0];
            s32 r, off;

            func_800A8934(0x50002, 0x10, 0, &D_800ED510);
            for (r = 0; r < 42; r++) {
                u8 *row = (u8 *) D_800EDA10 + r * 0x280;

                *(u16 *) (row + 0x14) = fill;
                *(u16 *) (row + 0x16) = fill;
                for (off = 0x18; off < 0x1B0; off += 2) {
                    *(u16 *) (row + off) = fill;
                }
            }
        } else {
            D_800D6F50 = 0;
            func_800A8934(D_800D52FC[saveHUDTheme], 0x10, 0, &D_800ED510);
            func_800BDB18();
        }
        D_800F4D14 = 0;
    }
    if (D_800F6198 != 0) {
        func_800BDD68();
        return;
    }
    func_800BDD08();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDE0C.s")
#endif

// Draft, 4/35: `or $a1,$zero,$zero` (counter init) scheduled 3 slots early.
// Split residue: for() fixes the ENTRY exactly but hoists the pointer bumps;
// vu32 on both stores fixes the bumps but sinks the counter bump (8/35). The
// two cures are incompatible here. Swept loop forms, casts, pads, unroll.
extern u32 D_800F5770[][0x40];
extern u32 D_800F4D70[][0x40];
extern s32 D_800D6F50;
extern s32 D_800F4D14;

void func_800BDF2C(void)
{
  s32 i;
 do { i = 0; do { D_800F5770[D_800D6F50][i] = 0xFFFE7961; D_800F4D70[D_800D6F50][i] = 0; i++; } while (i != 0x40); } while (0);
  func_800BDD98();
  D_800F4D14 = 1;
}
void func_800BDFB8(s32 *arg0, s32 arg1, u32 arg2) {
    s32 i;
    for (i = 0; i < arg2; i++) {
        if (arg0[arg1 + i] == 0xffff) {
            break;
        }
        func_800A8BAC(arg0[arg1 + i]);
    }
}

void func_800BE028(s32 *arg0, s32 arg1, u32 arg2) {
    s32 i;
    for (i = 0; i < arg2; i++) {
        if (arg0[arg1 + i] == 0xffff) {
            break;
        }
        func_800A8A7C(arg0[arg1 + i]);
    }
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 127/161, but structurally complete -- the residue is one
 * register-naming permutation that shifts nearly every line. Real defects,
 * all allocator-shaped: (a) the ROM keeps NO callee-saved register and homes
 * the request_track_3 result at 0x18(sp) (frame 0x28); we allocate it to a
 * saved register (frame 0x20); (b) the unrolled clear loop's `addiu a1,a1,4`
 * sits in slot 0 of the body in the ROM and slot 6 for us -- the same
 * counter-slot residue already documented for the matched sibling
 * func_800BDF2C above; (c) the saveHUDTheme*10 expansion emits its
 * `addu at,a1,zero` one slot later. Solved semantics: the loop end is
 * &D_800F4D70[10] (NOT the D_800F5770 symbol -- spelling it as D_800F5770
 * makes IDO CSE the two addresses into one lui and costs 29 diffs), the
 * hand-unrolled 4-word body with goto form, and the in-place +D_800ED510
 * relocation of the D_800ED500 header's +8/+0xC words. */
s32 func_800BE098(void) {
    extern s32 D_800F4D18;
    extern s32 D_800F4D20[];
    extern s32 D_800F4D48[];
    extern s32 D_800F6170[];
    extern s32 D_800D6EC4;
    extern s32 D_800F6198;
    extern s32 D_800D6F3C;
    extern s32 func_800F8560(void);
    extern s32 func_800AEA64(s32, s32, s32, void *);
    extern void scSetPostProcessFunc(void *);
    s32 sp18;
    u32 *v0;
    u32 *v1;
    s32 a1;
    u32 *t3;
    u32 *a3;
    s32 *t0;
    s32 *t1;
    s32 *t2;
    u32 *end;

    D_800F4D18 = 2;
    end = (u32 *) D_800F4D70[10];
    a3 = (u32 *) D_800F4D70;
    t3 = (u32 *) D_800F5770;
    t2 = D_800F4D20;
    t1 = D_800F4D48;
    t0 = D_800F6170;
    do {
        *t0 = 0;
        *t1 = 0;
        *t2 = 0;
        a1 = 0;
        v0 = t3;
        v1 = a3;
    loop2:
        a1 += 4;
        v0[0] = 0xFFFE7961;
        v1[0] = 0;
        v0[1] = 0xFFFE7961;
        v1[1] = 0;
        v0[2] = 0xFFFE7961;
        v1[2] = 0;
        v0[3] = 0xFFFE7961;
        v1[3] = 0;
        v0 += 4;
        v1 += 4;
        if (a1 != 0x40) {
            goto loop2;
        }
        a3 += 0x40;
        t0 += 1;
        t1 += 1;
        t2 += 1;
        t3 += 0x40;
    } while (a3 != end);
    sp18 = request_track_3(0x26, 0x4A, 0x50);
    if (func_800F8560() != 9) {
        func_800BDFB8(D_800D5310, saveHUDTheme * 0xA, 8);
    } else {
        D_800D6E54 = 0;
        D_800D6E90 = 0;
        func_800BDFB8(D_800D5310, saveHUDTheme * 0xA, 0xA);
    }
    func_800BDFB8(D_800D53DC, saveHUDTheme * 2, 2);
    func_800BDFB8(D_800D5408, saveHUDTheme * 2, 2);
    func_800BDFB8(D_800D5434, saveHUDTheme * 2, 2);
    func_800BDFB8(D_800D5460, saveHUDTheme * 0xA, 0xA);
    func_800A8934(0x50001, 0, 0x10, &D_800ED500);
    D_800ED500[2] = D_800ED500[2] + (u32) D_800ED510;
    D_800ED500[3] = D_800ED500[3] + (u32) D_800ED510;
    D_800F6198 = 0;
    D_800D6EC4 = 0;
    if ((D_800D6F3C == 4) || (D_800D6F3C == 3)) {
        D_800F6198 = 1;
        sp18 = func_800AEA64(0x2D, 0x4A, 0x50, &D_800ED500);
        D_800E98E0[sp18] = 0;
    }
    func_800BDF2C();
    func_800BDE0C(0);
    scSetPostProcessFunc(func_800BDE0C);
    return sp18;
}
#elif defined(PORT)
/* PORT: in-level HUD init, from asm/nonmatchings/ovl1/ovl1_13/
 * func_800BE098.s. The N64 clears the ten 0x100-byte digit rows by walking
 * a pointer from D_800F4D70 to D_800F5770 (cross-symbol arithmetic that
 * does not survive this build's separate bss blocks); the compiled sibling
 * func_800BDF2C above already spells those rows as [10][0x40] u32 arrays,
 * so the same spelling is used here. The theme tables handed to
 * func_800BDFB8 are value-preserving u32 words (native reads are right)
 * and the D_800ED500 header's +8/+0xC words become truncated host pointers
 * into D_800ED510, exactly like every other <4GiB static on this build. */
s32 func_800BE098(void) {
    extern s32 D_800F4D18;
    extern s32 D_800F4D20[];
    extern s32 D_800F4D48[];
    extern s32 D_800F6170[];
    extern s32 D_800D6EC4;
    extern s32 D_800F6198;
    extern s32 D_800D6F3C;
    s32 request_track_3(s32, s32, s32);
    s32 func_800AEA64(s32, s32, s32);
    void scSetPostProcessFunc(void (*)(void *));
    s32 sp18;
    s32 i;
    s32 j;

    D_800F4D18 = 2;
    for (i = 0; i < 10; i++) {
        D_800F6170[i] = 0;
        D_800F4D48[i] = 0;
        D_800F4D20[i] = 0;
        for (j = 0; j < 0x40; j++) {
            D_800F5770[i][j] = 0xFFFE7961;
            D_800F4D70[i][j] = 0;
        }
    }
    sp18 = request_track_3(0x26, 0x4A, 0x50);
    if (func_800F8560() != 9) {
        func_800BDFB8(D_800D5310, saveHUDTheme * 10, 8);
    } else {
        D_800D6E54 = 0;
        D_800D6E90 = 0;
        func_800BDFB8(D_800D5310, saveHUDTheme * 10, 10);
    }
    func_800BDFB8(D_800D53DC, saveHUDTheme * 2, 2);
    func_800BDFB8(D_800D5408, saveHUDTheme * 2, 2);
    func_800BDFB8(D_800D5434, saveHUDTheme * 2, 2);
    func_800BDFB8(D_800D5460, saveHUDTheme * 10, 10);
    func_800A8934(0x50001, 0, 0x10, &D_800ED500);
    /* func_800A8934 dma-reads the raw big-endian header; decode the
     * multi-byte fields once, the way func_800A8C40's PORT arm does for BG
     * headers, THEN relocate the image/palette offsets onto D_800ED510
     * (host pointer, truncated -- statics sit below 4 GiB). */
    {
        u8 *raw = (u8 *) D_800ED500;
        u32 img = ((u32) raw[8] << 24) | ((u32) raw[9] << 16) |
                  ((u32) raw[10] << 8) | raw[11];
        u32 pal = ((u32) raw[12] << 24) | ((u32) raw[13] << 16) |
                  ((u32) raw[14] << 8) | raw[15];

        *(u16 *) (raw + 4) = (u16) ((raw[4] << 8) | raw[5]);
        *(u16 *) (raw + 6) = (u16) ((raw[6] << 8) | raw[7]);
        D_800ED500[2] = img + (u32) (uintptr_t) D_800ED510;
        D_800ED500[3] = pal + (u32) (uintptr_t) D_800ED510;
    }
    D_800F6198 = 0;
    D_800D6EC4 = 0;
    if ((D_800D6F3C == 4) || (D_800D6F3C == 3)) {
        D_800F6198 = 1;
        sp18 = func_800AEA64(0x2D, 0x4A, 0x50);
        D_800E98E0[sp18] = 0;
    }
    func_800BDF2C();
    func_800BDE0C(0);
    scSetPostProcessFunc((void (*)(void *)) func_800BDE0C);
    return sp18;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BE098.s")
#endif

/* HAND-WRITTEN ASSEMBLY FROM HERE: func_800BE320 and func_800BE374 are the
 * game's setjmp and longjmp, and they are NOT a decompilation target.  A
 * function that saves and restores its CALLER's callee-saved registers and
 * stack pointer cannot be expressed in C at all -- the two `#ifdef MIPS_TO_C`
 * sketches that used to stand here were m2c's `saved_reg_s0` / `sp` /
 * "M2C_ERROR cfc1" pseudo-code, which neither compiled nor described
 * the second function correctly (its "draft" dropped the whole restore and
 * just returned the argument).  They are replaced by this record of what the
 * two listings actually do; `#pragma GLOBAL_ASM` is the right and final answer
 * for the matching build, and src/pc/pc_setjmp.c supplies the port's own
 * x86-64 versions of both symbols.
 *
 * The m2c hole is resolved: `cfc1 $v0, $31` reads FCR31, the MIPS floating
 * point CONTROL/STATUS register (rounding mode, enabled/sticky exception bits
 * and the compare condition bit) -- register 31 of coprocessor 1, not an FPR.
 * func_800BE320 stores it in the jump buffer at +0x68 and func_800BE374 puts
 * it back with the matching `ctc1 $v0, $31`, so a longjmp restores the FPU
 * rounding/exception mode that was in force at the setjmp.
 *
 *   func_800BE320(jmp_buf *b)              -- setjmp
 *       +0x08 $sp   +0x0C $ra   +0x14..0x30 $s0..$s7   +0x34 $fp
 *       +0x38,0x40,0x48,0x50,0x58,0x60 $f20,$f22,$f24,$f26,$f28,$f30 (sdc1)
 *       +0x68 FCR31 (cfc1 $31);  returns 0
 *
 *   func_800BE374(jmp_buf *b, s32 val)     -- longjmp
 *       the exact inverse, FCR31 first (ctc1 $31), then returns
 *       `val ? val : 1` -- and because $ra and $sp have already been
 *       reloaded from the buffer, the `jr $ra` lands back in the setjmp
 *       caller rather than in this function's own caller.
 */
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BE320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BE374.s")