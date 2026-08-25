#include "common.h"
#include "GObj.h"
#include "main/audio.h"
#include "main/dma.h"
#include "main/gtl.h"
#include "main/object_manager.h"
#include "main/fault.h"
#include "main/math.h"
#include "main/contpad.h"
#include "ovl20/tamper_check.h"

#include "game.h"
#include "save_file.h"
#include "util.h"

extern u32 gGameTampered;

extern s32 gKirbyLives;
extern f32 gKirbyHp;
extern s32 D_800D6E54;
extern f32 D_800D6E58;
extern f32 D_800D6E5C;
extern s32 gKirbyStars;
extern s32 D_800D6B7C;
extern s32 D_800D6B80;
extern u32 D_800D6B8C;
extern s32 D_800D6F50;
extern s32 D_800EC9FC;
extern s32 D_800D6B9C;

extern f32 gameTicksPerDraw, gameTicksPerDrawInv;

extern s32 D_800D7288;
extern s32 D_800D6B74;
extern s32 D_800D6B60;
extern u32 D_800D6B68;
extern u32 D_800D6B78;
extern u32 D_800D6B98;
extern u8 D_800D6B84;
extern s32 D_800D6F38, D_800D6F3C;
extern u32 D_800D71E8;

extern u32 D_800D6F4C;
extern u32 D_800D6E64;
extern u32 D_800D6E48;


extern u32 D_800D6D10[0x40];

extern u8 D_800D6E20[16];
extern u8 D_800D6E30[16];

extern s32 D_800D6F38;
extern s32 D_800D6F3C;

extern s32 D_800D6B44;
extern u32 D_800D6B48;
extern u32 D_800D6F54;

extern void *D_800A2904; // struct

extern u32 D_800D6B18;
extern u8 D_800D6B00[], D_800BE3F0[];

extern s32 D_800BE414[]; // gameCutscenes

void crash_screen_print_gobj_info(GObj *o) {
    crash_screen_printf("gobj id:%d\n", o->objId);
    crash_screen_printf("df:%x\n", o->onDraw);
}

OSThread *crash_screen_print_page_3(void) {
    OSThread *retThread = NULL;

    switch (D_8003DE54) {
        case 0:
            crash_screen_printf("SYS\n");
            break;
        case 1:
            crash_screen_printf("BF\n");
            if (omCurrentObj != NULL) {
                crash_screen_printf("addr:%x\n", omCurrentObj->onUpdate);
                crash_screen_print_gobj_info(omCurrentObj);
            }
            break;
        case 2:
            crash_screen_printf("GP\n");
            if (omCurrentObj != NULL) {
                crash_screen_printf("gobj:%x\n", (u32)omCurrentObj);
                if (omCurrentProc != NULL) {
                    crash_screen_printf("gp:%x\n", (u32)omCurrentProc);
                    switch (omCurrentProc->kind) {
                        case 0:
                            crash_screen_printf("gobjthread:%x\n", omCurrentProc->payload.thread);
                            crash_screen_printf("stack:%x\n", omCurrentProc->payload.thread->objStack);
                            crash_screen_printf("thread pc:%x\n", omCurrentProc->payload.thread->thread.context.pc);
                            crash_screen_printf("id:%d\n", omCurrentProc->payload.thread->thread.id);
                            crash_screen_printf("ptr:%x\n", omCurrentProc->entryPoint);
                            retThread = &omCurrentProc->payload.thread->thread;
                            break;
                        case 1:
                            crash_screen_printf("func:%x\n", omCurrentProc->payload.thread);
                            break;
                    }
                }
                crash_screen_print_gobj_info(omCurrentObj);
            }
            break;
        case 3:
            crash_screen_printf("DFC\n");
            if (omCurrentCamera != NULL) {
                crash_screen_printf("addr:%x\n", omCurrentCamera->onDraw);
                crash_screen_print_gobj_info(omCurrentCamera);
            }
            break;
        case 4:
            crash_screen_printf("DFO\n");
            if (omCurrentCamera != NULL) {
                crash_screen_printf("cam addr:%x\n", omCurrentCamera->onDraw);
            }
            if (omCurrentDrawObj != NULL) {
                crash_screen_printf("disp addr:%x\n", omCurrentDrawObj->onDraw);
                crash_screen_print_gobj_info(omCurrentDrawObj);
            }
            break;
    }
    crash_screen_printf("s: %x\n", dmaDevAddr);
    crash_screen_printf("t: %x\n", dmaVramAddr);
    crash_screen_printf("l: %x\n", dmaLen);
    return retThread;
}

void func_800A2B9C(void) {
    int i;

    D_800D6B18 = 1;
    for (i = 0; i < 16; i++) {
        if (D_800D6B00[i] != D_800BE3F0[i]) {
            D_800D6B18 = 0;
        }
        D_800D6B00[i] = D_800BE3F0[i];
    }
    set_hard_rng_seed(0x3039);
    scRemovePostProcessFunc();
    gGameState = 1;
    D_800BE4F8 = 0;
    D_800D6F3C = 0;
    D_800D6B48 = D_800D6B44 = -1;
    D_800D6F54 = -1;
    func_800BB24C();
    auSetReverbType(2);
    func_800A74B0();
    faultSetUserCallback(&crash_screen_print_page_3);
    func_800046D0(0x3C);
    func_800B8700();
}

void func_800A2C80(void) {
    func_800BB3F0();
    scRemovePostProcessFunc();
    auSetBGMVolume(0, 0x7800);
    func_80020CC4(0x7800);
    gameSetUpdateRate(GAME_60FPS);
    func_80004674(0x10, 2);
    gGameTampered = 0;
    func_800BB418();
}

void func_800A2CE4(void) {
    saveCurrentFileNum = D_800EC9FC;
#ifdef PORT
    /* The config-block default for "last used file" is 3 = none
     * (func_800B91B8's SAVE_U16(0x164) = 3). The N64 file select tolerates
     * the out-of-range value through data adjacency (D_800ECA08[3] lands in
     * the config block) that this port's separate bss objects do not
     * reproduce: func_801555AC_ovl4(3) read garbage, called the empty file
     * "existing", and the first A press started a game on an uninitialized
     * file whose level-unlock flags were all zero. Park the cursor on file 1
     * instead, which is what a fresh cartridge boot shows. */
    if ((u32)saveCurrentFileNum > 2) {
        saveCurrentFileNum = 0;
    }
#endif
    gKirbyLives = 3;
    gKirbyHp = 6.0f;
    D_800D6E54 = 0;
    D_800D6E58 = 0.0f;
    D_800D6E5C = 0.0f;
    gKirbyStars = 0;
    D_800D6B7C = 0;
    D_800D6B80 = 0;
    D_800D6B44 = -1;
    D_800D6F50 = 0;
}

void func_800A2D5C(void) {
    D_800D6B9C = 0;
}

void func_800A2D68(void) {
    int i;

    D_800BE4FC = D_800BE518 = 0;
    D_800BE508 = D_800BE51C = 0;
    D_800BE50C = D_800BE520 = 0;
    D_800BE510 = D_800BE524 = 0.0f;
    D_800D6F4C = 0;
    D_800D6E64 = 0;
    D_800D6E48 = 0;
    for (i = 0; i < 0x40; i++) {
        D_800D6D10[i] = 0;
    }
    for (i = 0; i < 16; i++) {
        D_800D6E30[i] = D_800D6E20[i] = 0;
    }
    D_800D6B48 = 0x22;
    func_8011C87C();
    D_800BE500 = D_800BE52C = D_800D6B98;
    D_800BE504 = D_800BE530 = D_800D6B9C;
}

extern s32 D_800D6E88;
extern s32 D_800D6E8C;
extern s32 D_800D6E90;
extern s32 D_800D6E94;
extern s32 D_800D6E98;
extern s32 D_800D6E9C;
extern s32 D_800D6B54;
extern s32 D_800D7090;
extern s32 D_800D7098[16];
extern f32 D_800D70D8[16];
extern s32 D_800D7118[16];
extern s32 D_800D6E10;
extern s32 D_800D7088;
extern f32 D_800EC9E4;
extern s32 D_800D6E40;
extern s32 D_800D6E44;
extern s32 D_800D6E1C;
extern s32 D_800D6E18;
extern s32 D_800D6E14;
extern s32 D_800D6E78;
extern s32 D_800D6E68;
extern s32 D_800D6E7C;
extern s32 D_800D6E6C;
extern s32 D_800D6E80;
extern s32 D_800D6E70;
extern s32 D_800D6E84;
extern s32 D_800D6E74;
extern u32 D_800BE544;

void func_8011C8D0(void);

void func_800A2E98(void) {
    s32 *p;
    f32 *q;

    D_800D6E88 = gKirbyLives;
    D_800D6E8C = gKirbyHp;
    D_800D6E90 = D_800D6E54;
    D_800D6E98 = gKirbyStars;
    D_800D6E5C = 0.0f;
    D_800D6E58 = D_800D6E5C;
    D_800D6E94 = D_800D6E9C = D_800D6E58;
    D_800D6B54 = 0;
    D_800D7090 = -1;
    func_8011C8D0();
    D_800BE4F8 = 1;
    D_800BE544 = -0x1E;
    for (p = D_800D7098; p < &D_800D7098[16]; p++) {
        *p = 0;
    }
    for (q = D_800D70D8; q < &D_800D70D8[16]; q++) {
        *q = 0.0;
    }
    for (p = D_800D7118; p < &D_800D7118[16]; p++) {
        *p = -1;
    }
    D_800D6E10 = 0;
    D_800D7088 = 0;
    D_800EC9E4 = 0.0;
    D_800D6E44 = D_800D6E40 = 0;
    D_800D6E14 = D_800D6E18 = D_800D6E1C = 0;
    D_800D6E78 = 0;
    D_800D6E68 = 0;
    D_800D6E7C = 0;
    D_800D6E6C = 0;
    D_800D6E80 = 0;
    D_800D6E70 = 0;
    D_800D6E84 = 0;
    D_800D6E74 = 0;
}

void func_800A3058(void) {
    u32 i;

    switch (osTvType) {
        default:
            utilLoadOverlay(2);
            func_80151CEC_ovl4(5);
        case 2:
        case 1:
            func_80004624();
    }

    func_80004624();

    for (i = 0; i < 4; i++) {
        if (contChannelMap[i] != -1) {
            return;
        }
    }
    utilLoadOverlay(2);
    func_80151CEC_ovl4(4);
}

void func_800A30E8(void) {
    utilLoadOverlay(19);
    tamper_check_ovl20();
    utilLoadOverlay(5);
    utilLoadOverlay(6);
    utilLoadOverlay(17);
}

void load_menu_overlays(void) {
    utilLoadOverlay(2);
    utilLoadOverlay(3);
}

void func_800A3150(s32 arg0) {
    D_800D6F38 = 0;
    D_800D6F3C = arg0;
    D_800D6B8C = saveCurrentFileNum;
    saveCurrentFileNum = -1;
    func_800A2C80();
    func_800A2CE4();
    func_800A2D5C();
    func_800A2D68();
    utilLoadOverlay(18);
    func_800BBBA0();
    while (1) {
        func_800A30E8();
        func_800A2E98();
        func_800F6AD4(1);
        if ((D_800D6F38 != 0) && (D_800BE4F8 != 0)) {
            auFunc80020C88();
        } else {
            break;
        }
    }
    saveCurrentFileNum = D_800D6B8C;
}

void func_800A3228(void) {
}

extern u8 D_800BE400[][6];

void func_800A3230(void) {
    s32 i;

    if (D_800BE500 == 0) {
        for (i = 0; i != 6; i += 3) {
            if ((D_800BE508 == D_800BE400[D_800BE504][i]) && (D_800BE534 == D_800BE400[D_800BE504][i + 1]) &&
                (saveCheckCutsceneWatched(D_800BE400[D_800BE504][i + 2]) == 0)) {
                func_800A74D8();
                saveSetCutsceneWatched(D_800BE400[D_800BE504][i + 2], saveCurrentFileNum);
                func_800B9C50(saveCurrentFileNum);
                utilLoadOverlay(4);
                func_80154D60_ovl6(D_800BE400[D_800BE504][i + 2], 2);
            }
        }
    }
}

void func_800A336C(void) {
    if ((D_800BE500 >= 0)
     && (D_800BE500 < 5)
     && (saveCheckCutsceneWatched(D_800BE414[D_800BE500]) == 0)
    ) {
        saveSetCutsceneWatched(D_800BE414[D_800BE500], saveCurrentFileNum);
        func_800B9C50(saveCurrentFileNum);
        utilLoadOverlay(4);
        func_80154D60_ovl6(D_800BE414[D_800BE500], 2);
    }
}

void func_800A3408(void) {
    if (((s32) saveCurrentWorld == 1) && ((s32) saveCurrentLevel == 1)) {
        utilLoadOverlay(0x12);
        if (func_80227308_ovl18(0) != 0) {
            D_800BE4F4 = gGameState;
            do {
                gGameState = 0xE;
                func_800A3150(4);
                utilLoadOverlay(0x12);
            } while (func_80227308_ovl18(1) == 1);
            func_800A2CE4();
            func_800B96A0(saveCurrentFileNum, 0);
            gGameState = D_800BE4F4;
        }
    }
}

// Draft, 54/126: semantically complete and structurally exact; the residue is
// purely the ALLOCATION ORDER of the nine saved registers holding the loop's
// hoisted global addresses. ROM order is BE4FC,1,-1,D6B98,D6B9C,BE534,BE518,
// D6F3C; IDO gives 1,-1,D6B98,D6B9C,BE4FC,BE518,D6F3C,BE534. The two
// type-splits below are load-bearing and worth 48 diffs: `*(s32 *) &D_800BE4FC`
// shares the `1` with gKirbyLives into a saved register, and
// `*(u32 *) &D_800D6B44 = -1` forks that store's -1 from the hoisted compare -1.
// Swept: all 24 statement orders in the BE4FC..BE534 group, two-temp loads,
// a pointer local for &D_800BE4FC, s32/void prototypes for func_800F6AD4.
/* FACTORY: 54/126 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
extern s32 D_800D6B6C;
extern s32 D_800BE438[];

void func_800A34C8(void) {
    s32 *p;
    s32 temp;
    D_800D6B6C = 2;
    gKirbyLives = 1;
    gKirbyHp = 6.0f;
    D_800D6E54 = 0;
    D_800D6E58 = 0.0f;
    D_800D6E5C = 0.0f;
    gKirbyStars = 0;
    D_800D6B7C = 0;
    D_800D6B80 = 0;
    *(u32 *) &D_800D6B44 = -1;
    if (D_800BE438[0] != -1) {
        p = D_800BE438;
        do {
            func_800A30E8();
            func_800A2D5C();
            D_800D6B98 = p[0];
            D_800D6B9C = p[1];
            func_800A2D68();
            *(s32 *) &D_800BE4FC = 1;
            *(s32 *) &D_800BE518 = 1;
            D_800D6F3C = 0;
            D_800BE534 = p[2];
            func_800BBBA0();
            func_800A2C80();
            func_800A2E98();
            func_800F6AD4(1);
            func_800A74D8();
            if ((D_800BE4F8 == 6) || (D_800D6B6C == 1)) {
                D_800D6B6C = 1;
                break;
            }
            temp = p[3];
            p += 3;
        } while (temp != -1);
    }
    if ((D_800D6B6C == 2) && (gKirbyHp == 6.0f)) {
        D_800D6B6C = 3;
    }
    gGameState = 0x1A;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/func_800A34C8.s")
#endif

typedef struct {
    s32 unk0[17];
} GameOverlayList;

extern GameOverlayList D_800BE498;

void func_800A36C0(void) {
    s32 i;
    s32 pad0;
    GameOverlayList sp2C;

    sp2C = D_800BE498;
    for (i = 0; i < 17; i++) {
        utilLoadOverlay(4);
        if (func_80154D60_ovl6(sp2C.unk0[i], 0x15) == 3) {
            break;
        }
    }
    D_800D6B68 = gGameState;
    gGameState = 0x17;
}

/* game_tick, 154/653 (was 619).  LIVE under NON_MATCHING: the PC port runs this.
 * Structure, both jump tables, the saved-register map
 * ($s2=1 $s5=2 $s4=10 $s7=12, addresses in $s0/$s1/$s3/$s6/$fp) and the body
 * LENGTH (640 insns) are exact.  Residue: a uniform one-slot $t rotation, plus
 * the dead epilogue -- and the epilogue is NOT a source problem.  IDO 32-byte
 * aligns the unreachable epilogue after `while (1)` from the object's .text
 * base at COMPILE time, when func_800A34C8 above is still a pragma contributing
 * 0 bytes; game_tick compiles at 0xCC4 instead of its true 0xEBC, so it pads 28
 * bytes where the ROM pads 4.  Converting func_800A34C8 is what unblocks it.
 * Load-bearing: gGameState is declared u32 but shares constant registers with
 * s32 globals, so every access is `*(s32 *) &gGameState` (worth ~90 diffs);
 * D_800BE53C moves with lwc1/swc1, so it needs the (f32 *) cast or IDO emits a
 * whole FCSR conversion; `(s32) saveCurrentWorld < 7` for slti not sltiu;
 * switch2's `default:` written LAST (IDO lays bodies out in source order); and
 * `D_800D6B9C = D_800BE504 = D_800BE508 = 0;` as ONE chain, which is what
 * materialises both addresses instead of folding them (worth 180 diffs).
 * Swept at 154 with no effect: temp declaration order/type/count, 9 separate
 * temps, arg0 as scratch, pad locals, and non-void returns on six callees. */
/* FACTORY: 153/653 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
/* FACTORY: 153/653 -- MEASURED 2026-08-25. The residue is a register CLASS
 * difference repeated across the whole state machine, not 153 decisions: where
 * the ROM materialises each state constant into a TEMP ($t9, then wrapping to
 * $t1, $t2, $t3 -- a round-robin that has already been through $t0..$t8) the
 * draft uses $v0/$v1. The held base is right ($s0 for gGameState, $s3 for its
 * mirror), every store offset is right, and the same register is shared
 * between the gGameState store and the D_800D6B60 store exactly as the ROM
 * shares it.
 *
 * THE `*(s32 *) &gGameState` CASTS ARE LOAD-BEARING, measured rather than
 * assumed: game.h declares gGameState `u32`, and dropping all 53 casts so the
 * switch reads the u32 directly is 602/661 -- an unsigned switch generates a
 * different bounds check and the whole function falls apart. Whatever the
 * variable's declared type ought to be, the signed READ is what the ROM does.
 * Declaring it `s32` in game.h and dropping the casts does not compile: another
 * declaration in scope disagrees. Retyping it tree-wide is the func_800B2340
 * trap (see src/ovl8/ovl8_4.c) -- if anyone tries it, gate on the LINKED ROM,
 * not on this file. */
void game_tick(s32 arg0) {
    s32 temp;

    func_800BE320(&D_800D7288);
    func_800A2B9C();
    func_800A6B18();
    utilLoadOverlay(1);
    func_800A2C80();
    func_800A3058();
    while (1) {
        func_800A2C80();
        switch (*(s32 *) &gGameState) {
            default:
                continue;
            case 1:
                utilLoadOverlay(2);
                func_80151CEC_ovl4(0);
                *(s32 *) &gGameState = 2;
                continue;
            case 2:
                if (D_800D6B74 == 1) {
                    utilLoadOverlay(4);
                    func_80154D60_ovl6(0, (u32) 1);
                }
                *(s32 *) &gGameState = 3;
                D_800D6B60 = 3;
                continue;
            case 3:
                utilLoadOverlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    *(s32 *) &gGameState = 4;
                } else {
                    func_800A3228();
                    temp = *(s32 *) &gGameState;
                    *(s32 *) &gGameState = 0xA;
                    D_800D6B68 = temp;
                }
                continue;
            case 4:
                func_800A3150(5);
                *(s32 *) &gGameState = 5;
                D_800D6B60 = 5;
                continue;
            case 5:
                utilLoadOverlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    *(s32 *) &gGameState = 6;
                } else {
                    func_800A3228();
                    temp = *(s32 *) &gGameState;
                    *(s32 *) &gGameState = 0xA;
                    D_800D6B68 = temp;
                }
                continue;
            case 6:
                func_800A3150(6);
                *(s32 *) &gGameState = 7;
                D_800D6B60 = 7;
                continue;
            case 7:
                utilLoadOverlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    *(s32 *) &gGameState = 8;
                } else {
                    func_800A3228();
                    temp = *(s32 *) &gGameState;
                    *(s32 *) &gGameState = 0xA;
                    D_800D6B68 = temp;
                }
                continue;
            case 8:
                func_800A3150(3);
                D_800D6B60 = *(s32 *) &gGameState = 9;
                continue;
            case 9:
                utilLoadOverlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    D_800D6B74 = 1;
                    *(s32 *) &gGameState = 2;
                } else {
                    func_800A3228();
                    temp = *(s32 *) &gGameState;
                    *(s32 *) &gGameState = 0xA;
                    D_800D6B68 = temp;
                }
                continue;
            case 10:
                load_menu_overlays();
                func_800A2CE4();
                func_800B87E0();
                func_80158048_ovl4();
                func_800B8AD4(saveCurrentFileNum);
                if (*(s32 *) &gGameState == 0xB) {
                    func_800A3408();
                }
                continue;
            case 11:
                if (saveCheckCutsceneWatched(1) == 0) {
                    utilLoadOverlay(4);
                    saveSetCutsceneWatched(1, saveCurrentFileNum);
                    func_800B9C50(saveCurrentFileNum);
                    func_80154D60_ovl6(1, 2);
                }
                load_menu_overlays();
                func_800A2D5C();
                func_80159A54_ovl4();
                if (D_800D6B78 != 0) {
                    temp = *(s32 *) &gGameState;
                    *(s32 *) &gGameState = 0xA;
                    D_800D6B68 = temp;
                } else {
                    D_800BE500 = D_800D6B98;
                    if (D_800BE500 == 6) {
                        D_800BE504 = D_800D6B9C;
                        func_800A2D68();
                        *(s32 *) &gGameState = 0xF;
                    } else {
                        *(s32 *) &gGameState = 0xC;
                        D_800D6B84 = 1;
                    }
                }
                continue;
            case 12:
                load_menu_overlays();
                func_800A2D68();
                func_8015531C_ovl4();
                if (D_800D6B78 == 0) {
                    D_800BE504 = D_800BE530 = D_800D6B9C;
                    *(s32 *) &gGameState = 0xF;
                } else {
                    *(s32 *) &gGameState = 0xB;
                }
                D_800D6F38 = 0;
                continue;
            case 14:
                *(s32 *) &gGameState = 0xF;
                continue;
            case 15:
                func_800A30E8();
                D_800D6F3C = 0;
                func_800A2E98();
                func_800F6AD4(0);
                switch (D_800BE4F8) {
                    case 6:
                        *(s32 *) &gGameState = 0x11;
                        gKirbyLives = gKirbyLives - 1;
                        if (gKirbyLives > 0) {
                            switch (func_800F8560()) {
                                case 2:
                                    gKirbyHp = 6.0f;
                                    D_800D6E54 = 0;
                                    func_800A74D8();
                                    *(s32 *) &gGameState = 0xC;
                                    D_800D6B84 = 0;
                                    break;
                                default:
                                case 9:
                                    gKirbyHp = 6.0f;
                                    D_800D6E54 = 0;
                                    D_800BE4FC = D_800BE518;
                                    D_800BE508 = D_800BE534 = D_800BE51C;
                                    D_800BE50C = D_800BE538 = D_800BE520;
                                    *(f32 *) &D_800BE53C = D_800BE524;
                                    D_800BE510 = *(f32 *) &D_800BE53C;
                                    *(s32 *) &gGameState = 0xF;
                                    break;
                            }
                        }
                        func_800A74D8();
                        break;
                    case 2:
                        auFunc80020C88();
                        func_800A3230();
                        break;
                    case 3:
                        temp = D_800D6B9C + 1;
                        if (saveCurrentLevel == temp && saveCurrentWorld == D_800D6B98 + 1) {
                            D_800D6B9C = temp;
                            saveCurrentLevel = saveCurrentLevel + 1;
                            func_800B9C50(saveCurrentFileNum);
                            D_800D6B80 = 1;
                        }
                        func_800A74D8();
                        if (func_800F8560() != 9) {
                            *(s32 *) &gGameState = 0xC;
                            D_800D6B84 = 0;
                        } else {
                            *(s32 *) &gGameState = 0xB;
                            D_800D6B84 = 0;
                        }
                        break;
                    case 4:
                        switch (D_800BE500) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                if (saveCurrentWorld == D_800D6B98 + 1 && (s32) saveCurrentWorld < 7) {
                                    saveCurrentWorld = saveCurrentWorld + 1;
                                    *(s32 *) &saveCurrentLevel = 1;
                                    D_800D6B7C = 1;
                                    func_800B9C50(saveCurrentFileNum);
                                }
                                func_800A74D8();
                                func_800A336C();
                                if (D_800D6B7C != 0) {
                                    *(s32 *) &gGameState = 0xB;
                                } else {
                                    *(s32 *) &gGameState = 0xC;
                                }
                                break;
                            case 5:
                                func_800A74D8();
                                if (utilTamperCheck() == 0) {
                                    *(s32 *) &gGameState = 0xB;
                                } else {
                                    if (saveCurrentWorld == D_800D6B98 + 1 && (s32) saveCurrentWorld < 7) {
                                        saveCurrentWorld = saveCurrentWorld + 1;
                                        *(s32 *) &saveCurrentLevel = 1;
                                        func_800B9D60(saveCurrentFileNum, 5);
                                    }
                                    func_800B9C50(saveCurrentFileNum);
                                    *(s32 *) &gGameState = 0x12;
                                    if (savePercentComplete == 100) {
                                        *(s32 *) &gGameState = 0xC;
                                        if (saveCheckCutsceneWatched(0xD) == 0) {
                                            D_800BE500 = 6;
                                            D_800D6B98 = 6;
                                            D_800D6B9C = D_800BE504 = D_800BE508 = 0;
                                            utilLoadOverlay(4);
                                            saveSetCutsceneWatched(0xD, saveCurrentFileNum);
                                            func_800B9C50(saveCurrentFileNum);
                                            func_80154D60_ovl6(0xD, 2);
                                            func_800A2D68();
                                            func_800A2E98();
                                            *(s32 *) &gGameState = 0xF;
                                        }
                                    }
                                }
                                break;
                        }
                        break;
                    case 7:
                        if (saveCurrentWorld == D_800D6B98 + 1 && (s32) saveCurrentWorld < 8) {
                            saveCurrentWorld = 8;
                            *(s32 *) &saveCurrentLevel = 1;
                            func_800B9D60(saveCurrentFileNum, 6);
                        }
                        func_800A74D8();
                        *(s32 *) &gGameState = 0x13;
                        break;
                    case 0:
                        func_800A74D8();
                        if (D_800BE500 != 6) {
                            *(s32 *) &gGameState = 0xC;
                        } else {
                            *(s32 *) &gGameState = 0xB;
                        }
                        D_800D6B84 = 0;
                        break;
                    default:
                        *(s32 *) &gGameState = 1;
                        break;
                }
                func_800B9C50(saveCurrentFileNum);
                continue;
            case 16:
            case 17:
                load_menu_overlays();
                func_80159EFC_ovl4();
                *(s32 *) &gGameState = 1;
                continue;
            case 21:
                utilLoadOverlay(4);
                func_80154D60_ovl6(D_800D71E8, 0x15);
                temp = *(s32 *) &gGameState;
                *(s32 *) &gGameState = 0x17;
                D_800D6B68 = temp;
                continue;
            case 34:
                func_800A36C0();
                continue;
            case 18:
                utilLoadOverlay(4);
                saveSetCutsceneWatched(0x11, saveCurrentFileNum);
                saveSetCutsceneWatched(0x13, saveCurrentFileNum);
                func_800B9C50(saveCurrentFileNum);
                func_80154D60_ovl6(0xE, 2);
                *(s32 *) &gGameState = 1;
                continue;
            case 19:
                utilLoadOverlay(4);
                saveSetCutsceneWatched(0xD, saveCurrentFileNum);
                saveSetCutsceneWatched(0x11, saveCurrentFileNum);
                saveSetCutsceneWatched(0x12, saveCurrentFileNum);
                saveSetCutsceneWatched(0x13, saveCurrentFileNum);
                saveSetCutsceneWatched(0x10, saveCurrentFileNum);
                func_800B9C50(saveCurrentFileNum);
                func_80154D60_ovl6(0xF, 0xA);
                *(s32 *) &gGameState = 1;
                continue;
            case 33:
                func_800A34C8();
                continue;
            case 27:
                load_menu_overlays();
                func_8017F594_ovl5();
                continue;
            case 28:
                load_menu_overlays();
                func_8017CC3C_ovl5();
                continue;
            case 25:
                load_menu_overlays();
                func_801822AC_ovl5();
                temp = *(s32 *) &gGameState;
                *(s32 *) &gGameState = 0xA;
                D_800D6B68 = temp;
                continue;
            case 23:
                load_menu_overlays();
                func_801802A8_ovl5();
                continue;
            case 22:
                load_menu_overlays();
                func_8017ECA4_ovl5();
                temp = *(s32 *) &gGameState;
                *(s32 *) &gGameState = 0xA;
                D_800D6B68 = temp;
                continue;
            case 26:
                load_menu_overlays();
                func_80182FE8_ovl5();
                continue;
            case 24:
                load_menu_overlays();
                func_80185EEC_ovl5();
                temp = *(s32 *) &gGameState;
                *(s32 *) &gGameState = 0xA;
                D_800D6B68 = temp;
                continue;
            case 29:
                load_menu_overlays();
                func_80177A30_ovl5();
                continue;
            case 30:
                load_menu_overlays();
                func_8016FAB0_ovl5();
                continue;
            case 31:
                load_menu_overlays();
                func_80165370_ovl5();
                continue;
            case 32:
                load_menu_overlays();
                func_80179D48_ovl5();
                continue;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/game_tick.s")
#endif


/**
 * Sets the number of game update ticks that will happen per draw frame
 */
void gameSetUpdateRate(f32 ticksPerDraw) {
    // ticksPerDraw = 1.0f;
    gameTicksPerDraw = ticksPerDraw;
    gameTicksPerDrawInv = 1.0f / ticksPerDraw;
    gtlSetUpdateDrawRate(ticksPerDraw, 1);
}

