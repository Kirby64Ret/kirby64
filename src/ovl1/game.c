#include "common.h"
#include "GObj.h"
#include "main/dma.h"
#include "main/object_manager.h"
#include "main/fault.h"
#include "main/contpad.h"
#include "game.h"

// probably BSS for this file
extern u32 D_800BE4F4;
extern u32 gGameState;
extern u32 saveCurrentLevel, saveCurrentWorld;
extern s32 gKirbyLives;
extern f32 gKirbyHp;
extern s32 D_800D6E54;
extern f32 D_800D6E58;
extern f32 D_800D6E5C;
extern s32 gKirbyStars;
extern s32 D_800D6B7C;
extern s32 D_800D6B80;
extern s32 saveCurrentFileNum;
extern u32 D_800D6B8C;
extern s32 D_800D6B44;
extern s32 D_800D6F50;
extern s32 D_800EC9FC;
extern s32 D_800BE504, D_800D6B9C;
extern u32 D_800BE4F8;
extern u32 D_800D6B48;

extern s32 D_800D7288;
extern u32 saveCurrentLevel;
extern u32 saveCurrentWorld;
extern s32 D_800D6B74;
extern s32 D_800D6B60;
extern u32 D_800D6B68;
extern u32 D_800D6B78;
extern u32 D_800BE500;
extern u32 D_800D6B98;
extern s32 D_800BE504, D_800D6B9C;
extern u8 D_800D6B84;
extern u32 D_800BE530;
extern s32 D_800D6F38, D_800D6F3C;
extern u32 D_800BE51C;
extern u32 D_800BE4FC, D_800BE518;
extern u32 D_800BE534;
extern u32 D_800BE520;
extern u32 D_800BE508, D_800BE50C;
extern u32 D_800BE538;
extern u32 D_800BE53C;
extern f32 D_800BE524;
extern f32 D_800BE510;
extern s32 savePercentComplete;
extern u32 D_800D71E8;

extern u32 D_800D6F4C;
extern u32 D_800D6E64;
extern u32 D_800BE52C;
extern u32 D_800D6E48;


extern u32 D_800D6D10[0x40];

extern u8 D_800D6E20[16];
extern u8 D_800D6E30[16];

extern s32 D_800D6F38;
extern s32 D_800D6F3C;
extern u32 D_800D6F54;

extern void *D_800A2904; // struct

extern u32 D_800D6B18;
extern u8 D_800D6B00[], D_800BE3F0[];

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

#ifdef MIPS_TO_C

void func_800A2B9C(void) {
    u8 *var_v0;
    u8 *var_v1;
    u8 temp_a0;

    D_800D6B18 = 1;
    var_v1 = &D_800BE3F0;
    var_v0 = &D_800D6B00;
    do {
        temp_a0 = *var_v1;
        var_v1 += 1;
        if (*var_v0 != temp_a0) {
            D_800D6B18 = 0;
        }
        var_v0 += 1;
        var_v0->unk-1 = temp_a0;
    } while (var_v0 != &D_800D6B10);
    set_hard_rng_seed(0x3039);
    scRemovePostProcessFunc();
    gGameState = 1;
    D_800BE4F8 = 0;
    D_800D6F3C = 0;
    D_800D6B44 = -1;
    D_800D6B48 = -1;
    D_800D6F54 = -1;
    func_800BB24C();
    auSetReverbType(2);
    func_800A74B0();
    faultSetUserCallback(&crash_screen_print_page_3);
    func_800046D0(0x3C);
    func_800B8700();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/func_800A2B9C.s")
#endif

#ifdef MIPS_TO_C
void func_800A2C80(void) {
    func_800BB3F0();
    scRemovePostProcessFunc();
    auSetBGMVolume(0, 0x7800);
    func_80020CC4(0x7800);
    func_800A41B0(1.0f);
    func_80004674(0x10, 2);
    gGameTampered = 0;
    func_800BB418();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/func_800A2C80.s")
#endif

void func_800A2CE4(void) {
    saveCurrentFileNum = D_800EC9FC;
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

#ifdef MIPS_TO_C

void func_800A2E98(void) {
    ? *var_v0;
    ? *var_v0_2;
    ? *var_v0_3;
    s32 temp_f18;

    D_800D6E88 = gKirbyLives;
    D_800D6E8C = gKirbyHp;
    D_800D6E90 = D_800D6E54;
    D_800D6E98 = gKirbyStars;
    D_800D6E5C = 0.0f;
    D_800D6E58 = D_800D6E5C;
    temp_f18 = D_800D6E58;
    D_800D6E9C = temp_f18;
    D_800D6E94 = temp_f18;
    D_800D6B54 = 0;
    D_800D7090 = -1;
    func_8011C8D0(-1, &D_800D6E9C);
    D_800BE4F8 = 1;
    D_800BE544 = -0x1E;
    for (i = 0; i < 64; i++) {
        D_800D7098[i] = 0;
    }
    for (i = 0; i < 64; i++) {
        D_800D70D8[i] = 0;
    }
    for (i = 0; i < 64; i++) {
        D_800D7118[i] = 0;
    }
    D_800D6E10 = 0;
    D_800D7088 = 0;
    D_800EC9E4 = 0.0f;
    D_800D6E40 = 0;
    D_800D6E44 = 0;
    D_800D6E1C = 0;
    D_800D6E18 = 0;
    D_800D6E14 = 0;
    D_800D6E78 = 0;
    D_800D6E68 = 0;
    D_800D6E7C = 0;
    D_800D6E6C = 0;
    D_800D6E80 = 0;
    D_800D6E70 = 0;
    D_800D6E84 = 0;
    D_800D6E74 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/func_800A2E98.s")
#endif

void func_800A3058(void) {
    u32 i;

    switch (osTvType) {
        default:
            load_overlay(2);
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
    load_overlay(2);
    func_80151CEC_ovl4(4);
}

void func_800A30E8(void) {
    load_overlay(19);
    tamper_check_ovl20();
    load_overlay(5);
    load_overlay(6);
    load_overlay(17);
}

void load_menu_overlays(void) {
    load_overlay(2);
    load_overlay(3);
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
    load_overlay(18);
    func_800BBBA0();
    while (1) {
        func_800A30E8();
        func_800A2E98();
        func_800F6AD4(1);
        if ((D_800D6F38 != 0) && (D_800BE4F8 != 0)) {
            auStopAllSounds();
        } else {
            break;
        }
    }
    saveCurrentFileNum = D_800D6B8C;
}

void func_800A3228(void) {
}

#ifdef MIPS_TO_C

void func_800A3230(void) {
    s32 var_s0;
    void *temp_v0;

    if (D_800BE500 == 0) {
        var_s0 = 0;
        do {
            temp_v0 = &D_800BE400 + (D_800BE504 * 6) + var_s0;
            if ((D_800BE508 == temp_v0->unk0) && (D_800BE534 == temp_v0->unk1) && (check_cutscene_watched(temp_v0->unk2) == 0)) {
                func_800A74D8();
                set_cutscene_watched((&D_800BE400 + (D_800BE504 * 6) + var_s0)->unk2, saveCurrentFileNum);
                func_800B9C50(saveCurrentFileNum);
                load_overlay(4);
                func_80154D60_ovl6((&D_800BE400 + (D_800BE504 * 6) + var_s0)->unk2, 2);
            }
            var_s0 += 3;
        } while (var_s0 != 6);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/func_800A3230.s")
#endif

#ifdef MIPS_TO_C

void func_800A336C(void) {
    if ((D_800BE500 >= 0) && (D_800BE500 < 5) && (check_cutscene_watched(D_800BE414[D_800BE500]) == 0)) {
        set_cutscene_watched(D_800BE414[D_800BE500], saveCurrentFileNum);
        func_800B9C50(saveCurrentFileNum);
        load_overlay(4);
        func_80154D60_ovl6(D_800BE414[D_800BE500], 2);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/func_800A336C.s")
#endif

#ifdef MIPS_TO_C
void func_800A3408(void) {
    if ((saveCurrentWorld == 1) && (saveCurrentLevel == 1)) {
        load_overlay(0x12);
        if (func_80227308_ovl18(0) != 0) {
            D_800BE4F4 = gGameState;
            do {
                gGameState = 0xE;
                func_800A3150(4);
                load_overlay(0x12);
            } while (func_80227308_ovl18(1) == 1);
            func_800A2CE4();
            func_800B96A0(saveCurrentFileNum, 0);
            gGameState = D_800BE4F4;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/func_800A3408.s")
#endif

#ifdef MIPS_TO_C

void func_800A34C8(void) {
    s32 *var_s0;
    s32 *var_v1;
    s32 temp_t5;

    var_v1 = &D_800D6B6C;
    D_800D6B6C = 2;
    gKirbyLives = 1;
    gKirbyHp = 6.0f;
    D_800D6E54 = 0;
    D_800D6E58 = 0.0f;
    D_800D6E5C = 0.0f;
    gKirbyStars = 0;
    D_800D6B7C = 0;
    D_800D6B80 = 0;
    D_800D6B44 = -1;
    if (D_800BE438 != -1) {
        var_s0 = &D_800BE438;
loop_2:
        func_800A30E8();
        func_800A2D5C();
        D_800D6B98 = var_s0->unk0;
        D_800D6B9C = var_s0->unk4;
        func_800A2D68();
        D_800BE4FC = 1;
        D_800BE518 = 1;
        D_800D6F3C = 0;
        D_800BE534 = var_s0->unk8;
        func_800BBBA0();
        func_800A2C80();
        func_800A2E98();
        func_800F6AD4(1);
        func_800A74D8();
        if ((D_800BE4F8 == 6) || (D_800D6B6C == 1)) {
            D_800D6B6C = 1;
        } else {
            temp_t5 = var_s0->unkC;
            var_s0 += 0xC;
            if (temp_t5 == -1) {

            } else {
                goto loop_2;
            }
        }
        var_v1 = &D_800D6B6C;
    }
    if ((*var_v1 == 2) && (gKirbyHp == 6.0f)) {
        *var_v1 = 3;
    }
    gGameState = 0x1A;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/func_800A34C8.s")
#endif

#ifdef MIPS_TO_C
void func_800A36C0(void) {
    ? sp70;
    s32 sp2C;
    s32 *temp_t6;
    s32 *var_s0;
    void *temp_t7;

    M2C_MEMCPY_ALIGNED(&sp2C, &D_800BE498, 0x3C);
    temp_t6 = &sp2C + 0x3C;
    temp_t7 = &D_800BE498 + 0x3C;
    var_s0 = &sp2C;
    temp_t6->unk0 = temp_t7->unk0;
    temp_t6->unk4 = temp_t7->unk4;
loop_1:
    load_overlay(4);
    var_s0 += 4;
    if (func_80154D60_ovl6(*var_s0, 0x15) != 3) {
        if (var_s0 != &sp70) {
            continue;
        }
    }
    D_800D6B68 = gGameState;
    gGameState = 0x17;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/func_800A36C0.s")
#endif

#ifdef MIPS_TO_C
void game_tick(s32 arg0) {
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t7;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;

    func_800BE320(&D_800D7288);
    func_800A2B9C();
    func_800A6B18();
    load_overlay(1);
    func_800A2C80();
    func_800A3058();
    while (1) {

        func_800A2C80();
        switch (gGameState) {                           /* switch 1 */
            default:                                            /* switch 1 */
                continue;
            case 1:                                     /* switch 1 */
                load_overlay(2);
                func_80151CEC_ovl4(0);
                gGameState = 2;
                continue;
            case 2:                                     /* switch 1 */
                if (D_800D6B74 == 1) {
                    load_overlay(4);
                    func_80154D60_ovl6(0, 1);
                }
                gGameState = 3;
                D_800D6B60 = 3;
                continue;
            case 3:                                     /* switch 1 */
                load_overlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    gGameState = 4;
                } else {
                    func_800A3228();
                    temp_t2 = gGameState;
                    gGameState = 0xA;
                    D_800D6B68 = temp_t2;
                }
                continue;
            case 4:                                     /* switch 1 */
                func_800A3150(5);
                gGameState = 5;
                D_800D6B60 = 5;
                continue;
            case 5:                                     /* switch 1 */
                load_overlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    gGameState = 6;
                } else {
                    func_800A3228();
                    temp_t6 = gGameState;
                    gGameState = 0xA;
                    D_800D6B68 = temp_t6;
                }
                continue;
            case 6:                                     /* switch 1 */
                func_800A3150(6);
                gGameState = 7;
                D_800D6B60 = 7;
                continue;
            case 7:                                     /* switch 1 */
                load_overlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    gGameState = 8;
                } else {
                    func_800A3228();
                    temp_t0 = gGameState;
                    gGameState = 0xA;
                    D_800D6B68 = temp_t0;
                }
                continue;
            case 8:                                     /* switch 1 */
                func_800A3150(3);
                gGameState = 9;
                D_800D6B60 = 9;
                continue;
            case 9:                                     /* switch 1 */
                load_overlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    D_800D6B74 = 1;
                    gGameState = 2;
                } else {
                    func_800A3228();
                    temp_t3 = gGameState;
                    gGameState = 0xA;
                    D_800D6B68 = temp_t3;
                }
                continue;
            case 10:                                    /* switch 1 */
                load_menu_overlays();
                func_800A2CE4();
                func_800B87E0();
                func_80158048_ovl4();
                func_800B8AD4(saveCurrentFileNum);
                if (gGameState == 0xB) {
                    func_800A3408();
                }
                continue;
            case 11:                                    /* switch 1 */
                if (check_cutscene_watched(1) == 0) {
                    load_overlay(4);
                    set_cutscene_watched(1, saveCurrentFileNum);
                    func_800B9C50(saveCurrentFileNum);
                    func_80154D60_ovl6(1, 2);
                }
                load_menu_overlays();
                func_800A2D5C();
                func_80159A54_ovl4();
                if (D_800D6B78 != 0) {
                    temp_t6_2 = gGameState;
                    gGameState = 0xA;
                    D_800D6B68 = temp_t6_2;
                } else {
                    D_800BE500 = D_800D6B98;
                    if (D_800BE500 == 6) {
                        D_800BE504 = D_800D6B9C;
                        func_800A2D68();
                        gGameState = 0xF;
                    } else {
                        gGameState = 0xC;
                        D_800D6B84 = 1;
                    }
                }
                continue;
            case 12:                                    /* switch 1 */
                load_menu_overlays();
                func_800A2D68();
                func_8015531C_ovl4();
                if (D_800D6B78 == 0) {
                    D_800BE530 = D_800D6B9C;
                    D_800BE504 = D_800D6B9C;
                    gGameState = 0xF;
                } else {
                    gGameState = 0xB;
                }
                D_800D6F38 = 0;
                continue;
            case 14:                                    /* switch 1 */
                gGameState = 0xF;
                continue;
            case 15:                                    /* switch 1 */
                func_800A30E8();
                D_800D6F3C = 0;
                func_800A2E98();
                func_800F6AD4(0);
                switch (D_800BE4F8) {                   /* switch 2 */
                    case 6:                             /* switch 2 */
                        gGameState = 0x11;
                        temp_t1 = gKirbyLives - 1;
                        gKirbyLives = temp_t1;
                        if (temp_t1 > 0) {
                            temp_v0 = func_800F8560();
                            switch (temp_v0) {          /* switch 4; irregular */
                                case 2:                 /* switch 4 */
                                    gKirbyHp = 6.0f;
                                    D_800D6E54 = 0;
                                    func_800A74D8();
                                    gGameState = 0xC;
                                    D_800D6B84 = 0;
                                    break;
                                default:                /* switch 4 */
                                case 9:                 /* switch 4 */
                                    gKirbyHp = 6.0f;
                                    D_800D6E54 = 0;
                                    D_800BE4FC = D_800BE518;
                                    D_800BE534 = D_800BE51C;
                                    D_800BE508 = D_800BE51C;
                                    D_800BE538 = D_800BE520;
                                    D_800BE50C = D_800BE520;
                                    D_800BE53C = D_800BE524;
                                    D_800BE510 = D_800BE53C;
                                    gGameState = 0xF;
                                    break;
                            }
                        }
                        func_800A74D8();
                        break;
                    case 2:                             /* switch 2 */
                        auStopAllSounds();
                        func_800A3230();
                        break;
                    case 3:                             /* switch 2 */
                        temp_v1 = D_800D6B9C + 1;
                        if ((saveCurrentLevel == temp_v1) && (saveCurrentWorld == (D_800D6B98 + 1))) {
                            D_800D6B9C = temp_v1;
                            saveCurrentLevel += 1;
                            func_800B9C50(saveCurrentFileNum);
                            D_800D6B80 = 1;
                        }
                        func_800A74D8();
                        if (func_800F8560() != 9) {
                            gGameState = 0xC;
                            D_800D6B84 = 0;
                        } else {
                            gGameState = 0xB;
                            D_800D6B84 = 0;
                        }
                        break;
                    case 4:                             /* switch 2 */
                        switch (D_800BE500) {           /* switch 3 */
                            case 0:                     /* switch 3 */
                            case 1:                     /* switch 3 */
                            case 2:                     /* switch 3 */
                            case 3:                     /* switch 3 */
                            case 4:                     /* switch 3 */
                                if ((saveCurrentWorld == (D_800D6B98 + 1)) && (saveCurrentWorld < 7)) {
                                    saveCurrentWorld += 1;
                                    saveCurrentLevel = 1;
                                    D_800D6B7C = 1;
                                    func_800B9C50(saveCurrentFileNum);
                                }
                                func_800A74D8();
                                func_800A336C();
                                if (D_800D6B7C != 0) {
                                    gGameState = 0xB;
                                } else {
                                    gGameState = 0xC;
                                }
                                break;
                            case 5:                     /* switch 3 */
                                func_800A74D8();
                                if (ovl1_TamperCheck() == 0) {
                                    gGameState = 0xB;
                                } else {
                                    if ((saveCurrentWorld == (D_800D6B98 + 1)) && (saveCurrentWorld < 7)) {
                                        saveCurrentWorld += 1;
                                        saveCurrentLevel = 1;
                                        func_800B9D60(saveCurrentFileNum, 5);
                                    }
                                    func_800B9C50(saveCurrentFileNum);
                                    gGameState = 0x12;
                                    if (savePercentComplete == 0x64) {
                                        gGameState = 0xC;
                                        if (check_cutscene_watched(0xD) == 0) {
                                            D_800BE500 = 6;
                                            D_800D6B98 = 6;
                                            D_800BE508 = 0;
                                            D_800BE504 = 0;
                                            D_800D6B9C = 0;
                                            load_overlay(4);
                                            set_cutscene_watched(0xD, saveCurrentFileNum);
                                            func_800B9C50(saveCurrentFileNum);
                                            func_80154D60_ovl6(0xD, 2);
                                            func_800A2D68();
                                            func_800A2E98();
                                            gGameState = 0xF;
                                        }
                                    }
                                }
                                break;
                        }
                        break;
                    case 7:                             /* switch 2 */
                        if ((saveCurrentWorld == (D_800D6B98 + 1)) && (saveCurrentWorld < 8)) {
                            saveCurrentWorld = 8;
                            saveCurrentLevel = 1;
                            func_800B9D60(saveCurrentFileNum, 6);
                        }
                        func_800A74D8();
                        gGameState = 0x13;
                        break;
                    case 0:                             /* switch 2 */
                        func_800A74D8();
                        if (D_800BE500 != 6) {
                            gGameState = 0xC;
                        } else {
                            gGameState = 0xB;
                        }
                        D_800D6B84 = 0;
                        break;
                    default:                            /* switch 2 */
                        gGameState = 1;
                        break;
                }
                func_800B9C50(saveCurrentFileNum);
                continue;
            case 16:                                    /* switch 1 */
            case 17:                                    /* switch 1 */
                load_menu_overlays();
                func_80159EFC_ovl4();
                gGameState = 1;
                continue;
            case 21:                                    /* switch 1 */
                load_overlay(4);
                func_80154D60_ovl6(D_800D71E8, 0x15);
                temp_t7 = gGameState;
                gGameState = 0x17;
                D_800D6B68 = temp_t7;
                continue;
            case 34:                                    /* switch 1 */
                func_800A36C0();
                continue;
            case 18:                                    /* switch 1 */
                load_overlay(4);
                set_cutscene_watched(0x11, saveCurrentFileNum);
                set_cutscene_watched(0x13, saveCurrentFileNum);
                func_800B9C50(saveCurrentFileNum);
                func_80154D60_ovl6(0xE, 2);
                gGameState = 1;
                continue;
            case 19:                                    /* switch 1 */
                load_overlay(4);
                set_cutscene_watched(0xD, saveCurrentFileNum);
                set_cutscene_watched(0x11, saveCurrentFileNum);
                set_cutscene_watched(0x12, saveCurrentFileNum);
                set_cutscene_watched(0x13, saveCurrentFileNum);
                set_cutscene_watched(0x10, saveCurrentFileNum);
                func_800B9C50(saveCurrentFileNum);
                func_80154D60_ovl6(0xF, 0xA);
                gGameState = 1;
                continue;
            case 33:                                    /* switch 1 */
                func_800A34C8();
                continue;
            case 27:                                    /* switch 1 */
                load_menu_overlays();
                func_8017F594_ovl5();
                continue;
            case 28:                                    /* switch 1 */
                load_menu_overlays();
                func_8017CC3C_ovl5();
                continue;
            case 25:                                    /* switch 1 */
                load_menu_overlays();
                func_801822AC_ovl5();
                temp_t0_2 = gGameState;
                gGameState = 0xA;
                D_800D6B68 = temp_t0_2;
                continue;
            case 23:                                    /* switch 1 */
                load_menu_overlays();
                func_801802A8_ovl5();
                continue;
            case 22:                                    /* switch 1 */
                load_menu_overlays();
                func_8017ECA4_ovl5();
                temp_t9 = gGameState;
                gGameState = 0xA;
                D_800D6B68 = temp_t9;
                continue;
            case 26:                                    /* switch 1 */
                load_menu_overlays();
                func_80182FE8_ovl5();
                continue;
            case 24:                                    /* switch 1 */
                load_menu_overlays();
                func_80185EEC_ovl5();
                temp_t1_2 = gGameState;
                gGameState = 0xA;
                D_800D6B68 = temp_t1_2;
                continue;
            case 29:                                    /* switch 1 */
                load_menu_overlays();
                func_80177A30_ovl5();
                continue;
            case 30:                                    /* switch 1 */
                load_menu_overlays();
                func_8016FAB0_ovl5();
                continue;
            case 31:                                    /* switch 1 */
                load_menu_overlays();
                func_80165370_ovl5();
                continue;
        }
        load_menu_overlays();
        func_80179D48_ovl5();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/game_tick.s")
#endif

#ifdef MIPS_TO_C

void func_800A41B0(f32 arg0) {
    D_800D6B10 = arg0;
    D_800D6B14 = 1.0f / arg0;
    func_800075DC(arg0 & 0xFFFF, 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/game/func_800A41B0.s")
#endif
