#include <ultra64.h>
#include <PR/gu.h>
#include <macros.h>
#include "omCurrentProc.h"
#include "types.h"
#include "ovl0/ovl0_4.h"
#include "ovl0/ovl0_2.h"
#include "ovl0/ovl0_2_5.h"
#include "ovl0/ovl0_6.h"
#include "save_file.h"
u8 utilTamperCheck(void);

void func_800A6B18(void) ;


void utilLoadOverlay(u32);

extern s32 D_800D7288;
extern s32 gGameState;
extern u32 gCurrentLevel;
extern u32 gCurrentWorld;
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
extern u32 D_800BE53C, D_800BE524;
extern u32 D_800BE510;
extern s32 D_800D6BA8;
extern u32 D_800D71E8;

extern u32 D_800D6F4C;
extern u32 D_800D6E64;
extern u32 D_800BE52C;

extern s32 D_800D6B88;
extern s32 gKirbyLives;
extern f32 gKirbyHp;
extern s32 D_800D6E54;
extern f32 D_800D6E58;
extern f32 D_800D6E5C;
extern s32 gKirbyStars;
extern s32 D_800D6B7C;
extern s32 D_800D6B80;
extern s32 D_800D6B44;
extern s32 D_800D6F50;
extern s32 D_800EC9FC;
void func_80154D60_ovl1(u32, u32);

void utilLoadOverlay(u32 ovl);

void crash_screen_print_gobj_info(struct GObj *gobj) {
    crash_screen_printf("gobj id:%d\n", gobj->objId);
    crash_screen_printf("df:%x\n", gobj->unk2C);
}

extern u32 D_8003DE54;
extern struct GObjProcess *D_8004A7D0;
extern u32 D_80048D88, D_80048D8C, D_80048D90;

OSThread *crash_screen_print_page_3(void) {
    OSThread *sp1C;
    u8 temp_v1;

    sp1C = NULL;
    switch (D_8003DE54) {
        case 0:
            crash_screen_printf("SYS\n");
            break;
        case 1:
            // B* function
            crash_screen_printf("BF\n");
            if (omCurrentProc != NULL) {
                crash_screen_printf("addr:%x\n", omCurrentProc->unk14);
                crash_screen_print_gobj_info(omCurrentProc);
            }
            break;
        case 2:
            crash_screen_printf("GP\n");
            if (omCurrentProc != NULL) {
                crash_screen_printf("gobj:%x\n", (u32) omCurrentProc);
                if (D_8004A7D0 != NULL) {
                    crash_screen_printf("gp:%x\n", (u32) D_8004A7D0);
                    switch (D_8004A7D0->kind) {
                        case 0:
                            crash_screen_printf("gobjthread:%x\n", D_8004A7D0->payload.thread);
                            crash_screen_printf("stack:%x\n", D_8004A7D0->payload.thread->objStack);
                            crash_screen_printf("thread pc:%x\n", D_8004A7D0->payload.thread->thread.context.pc);
                            crash_screen_printf("id:%d\n", D_8004A7D0->payload.thread->thread.id);
                            crash_screen_printf("ptr:%x\n", D_8004A7D0->entryPoint);
                            sp1C = &D_8004A7D0->payload.thread->thread;
                            break;
                        case 1:
                            crash_screen_printf("func:%x\n", D_8004A7D0->payload.callback);
                            break;
                    }
                }
                crash_screen_print_gobj_info(omCurrentProc);
            }
            break;
        case 3:
            crash_screen_printf("DFC\n");
            if (D_8004A7C8 != 0) {
                crash_screen_printf("addr:%x\n", D_8004A7C8->unk2C);
                crash_screen_print_gobj_info(D_8004A7C8);
            }
            break;
        case 4:
            crash_screen_printf("DFO\n");
            if (D_8004A7C8 != 0) {
                crash_screen_printf("cam addr:%x\n", D_8004A7C8->unk2C);
            }
            if (D_8004A7CC != NULL) {
                crash_screen_printf("disp addr:%x\n", D_8004A7CC->unk2C);
                crash_screen_print_gobj_info(D_8004A7CC);
            }
            break;
    }
    crash_screen_printf("s: %x\n", D_80048D88);
    // add these in when this and the giant switch case function are matching
    crash_screen_printf("t: %x\n", D_80048D8C);
    crash_screen_printf("l: %x\n", D_80048D90);
    return sp1C;
} 


extern u32 D_800BE4F8;
extern u32 D_800D6B48;
extern u32 D_800D6F54;

extern void *D_800A2904; // struct

extern u32 D_800D6B18;
extern u8 D_800D6B00[], D_800BE3F0[];
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
    func_80002B88_ovl1();
    gGameState = 1;
    D_800BE4F8 = 0;
    D_800D6F3C = 0;
    D_800D6B48 = D_800D6B44 = -1;
    D_800D6F54 = -1;
    func_800BB24C();
    func_800208A0_ovl1(2);
    func_800A74B0();
    func_80022A38_ovl1(&D_800A2904);
    func_800046D0(0x3C);
    func_800B8700();
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A2C80.s")

void func_800A2CE4(void) {
    D_800D6B88 = D_800EC9FC;
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

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A2D5C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A2D68.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A2E98.s")

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
        if (D_80048E9C[i] != -1) {
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

extern u32 D_800BE4F8;
extern u32 D_800D6B8C;
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A3150.s")

void func_800A3228(void) {

}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A3230.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A336C.s")


GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A3408.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A34C8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A36C0.s")

u16 func_800F8560(void);
s32 func_80151CEC_ovl4(s32 arg0);

// https://decomp.me/scratch/iuJKf
#ifdef NON_MATCHING
void game_tick(s32 arg0) {
    s32 tmpState;

    func_800BE320(&D_800D7288);
    func_800A2B9C();
    func_800A6B18();
    utilLoadOverlay(1);
    func_800A2C80();
    func_800A3058();
    while (1) {
        func_800A2C80();
        switch (gGameState) {                              /* switch 1 */
            default: continue;                                            /* switch 1 */
            case 1:                                         /* switch 1 */
                utilLoadOverlay(2);
                func_80151CEC_ovl4(0);
                gGameState = 2;
                continue;
            case 2:                                         /* switch 1 */
                if (D_800D6B74 == 1) {
                    utilLoadOverlay(4);
                    func_80154D60_ovl1(0, 1);
                }
                gGameState = 3;
                D_800D6B60 = 3;
                continue;
            case 3:                                         /* switch 1 */
                utilLoadOverlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    gGameState = 4;
                } else {
                    func_800A3228();
                    tmpState = gGameState;
                    gGameState = 0xA;
                    D_800D6B68 = tmpState;
                }
                continue;
            case 4:                                         /* switch 1 */
                func_800A3150(5);
                gGameState = 5;
                D_800D6B60 = 5;
                continue;
            case 5:                                         /* switch 1 */
                utilLoadOverlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    gGameState = 6;
                } else {
                    func_800A3228();
                    tmpState = gGameState;
                    gGameState = 0xA;
                    D_800D6B68 = tmpState;
                }
                continue;
            case 6:                                         /* switch 1 */
                func_800A3150(6);
                gGameState = 7;
                D_800D6B60 = 7;
                continue;
            case 7:                                         /* switch 1 */
                utilLoadOverlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    gGameState = 8;
                } else {
                    func_800A3228();
                    tmpState = gGameState;
                    gGameState = 0xA;
                    D_800D6B68 = tmpState;
                }
                continue;
            case 8:                                         /* switch 1 */
                func_800A3150(3);
                gGameState = 9;
                D_800D6B60 = 9;
                continue;
            case 9:                                         /* switch 1 */
                utilLoadOverlay(2);
                if (func_80151CEC_ovl4(1) == 2) {
                    D_800D6B74 = 1;
                    gGameState = 2;
                } else {
                    func_800A3228();
                    tmpState = gGameState;
                    gGameState = 0xA;
                    D_800D6B68 = tmpState;
                }
                continue;
            case 10:                                        /* switch 1 */
                load_menu_overlays();
                func_800A2CE4();
                func_800B87E0();
                func_80158048_ovl1();
                func_800B8AD4(D_800D6B88);
                if (gGameState == 0xB) {
                    func_800A3408();
                }
                continue;
            case 11:                                        /* switch 1 */
                if (check_cutscene_watched(1) == 0) {
                    utilLoadOverlay(4);
                    set_cutscene_watched(1, D_800D6B88);
                    func_800B9C50(D_800D6B88);
                    func_80154D60_ovl1(1, 2);
                }
                load_menu_overlays();
                func_800A2D5C();
                func_80159A54_ovl1();
                if (D_800D6B78 != 0) {
                    tmpState = gGameState;
                    gGameState = 0xA;
                    D_800D6B68 = tmpState;
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
            case 12:                                        /* switch 1 */
                load_menu_overlays();
                func_800A2D68();
                func_8015531C_ovl1();
                if (D_800D6B78 == 0) {
                    D_800BE530 = D_800D6B9C;
                    D_800BE504 = D_800D6B9C;
                    gGameState = 0xF;
                } else {
                    gGameState = 0xB;
                }
                D_800D6F38 = 0;
                continue;
            case 14:                                        /* switch 1 */
                gGameState = 0xF;
                continue;
            case 15:                                        /* switch 1 */
                func_800A30E8();
                D_800D6F3C = 0;
                func_800A2E98();
                func_800F6AD4(0);
                switch (D_800BE4F8) {                          /* switch 2 */
                    case 6:                                     /* switch 2 */
                        gGameState = 0x11;
                        if (--gKirbyLives > 0) {
                            switch (func_800F8560()) {                  /* switch 4; irregular */
                                case 2:                             /* switch 4 */
                                    gKirbyHp = 6.0f;
                                    D_800D6E54 = 0;
                                    func_800A74D8();
                                    gGameState = 0xC;
                                    D_800D6B84 = 0;
                                    break;
                                default:                            /* switch 4 */
                                case 9:                             /* switch 4 */
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
                    case 2:                                     /* switch 2 */
                        func_80020C88_ovl1();
                        func_800A3230();
                        break;
                    case 3:                                     /* switch 2 */
                        if ((gCurrentLevel == D_800D6B9C + 1)) {
                            D_800D6B9C++;
                            if ((gCurrentWorld == (D_800D6B98 + 1))) {
                                gCurrentLevel++;
                                func_800B9C50(D_800D6B88);
                                D_800D6B80 = 1;
                            }
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
                    case 4:                                     /* switch 2 */
                        switch (D_800BE500) {                    /* switch 3 */
                            case 0:                                 /* switch 3 */
                            case 1:                                 /* switch 3 */
                            case 2:                                 /* switch 3 */
                            case 3:                                 /* switch 3 */
                            case 4:                                 /* switch 3 */
                                if ((gCurrentWorld == (D_800D6B98 + 1)) && (gCurrentWorld < 7)) {
                                    gCurrentWorld++;
                                    gCurrentLevel = 1;
                                    D_800D6B7C = 1;
                                    func_800B9C50(D_800D6B88);
                                }
                                func_800A74D8();
                                func_800A336C();
                                if (D_800D6B7C != 0) {
                                    gGameState = 0xB;
                                } else {
                                    gGameState = 0xC;
                                }
                                break;
                            case 5:                                 /* switch 3 */
                                func_800A74D8();
                                if (utilTamperCheck() == 0) {
                                    gGameState = 0xB;
                                } else {
                                    if ((gCurrentWorld == (D_800D6B98 + 1)) && (gCurrentWorld < 7)) {
                                        gCurrentWorld++;
                                        gCurrentLevel = 1;
                                        func_800B9D60(D_800D6B88, 5);
                                    }
                                    func_800B9C50(D_800D6B88);
                                    gGameState = 0x12;
                                    if (D_800D6BA8 == 0x64) {
                                        gGameState = 0xC;
                                        if (check_cutscene_watched(0xD) == 0) {
                                            D_800BE500 = 6;
                                            D_800D6B98 = 6;
                                            // dereference?
                                            D_800BE504 = 0;
                                            D_800BE508 = 0;
                                            D_800D6B9C = 0;
                                            utilLoadOverlay(4);
                                            set_cutscene_watched(0xD, D_800D6B88);
                                            func_800B9C50(D_800D6B88);
                                            func_80154D60_ovl1(0xD, 2);
                                            func_800A2D68();
                                            func_800A2E98();
                                            gGameState = 0xF;
                                        }
                                    }
                                }
                            break;
                        }
                        break;
                    case 7:                                     /* switch 2 */
                        if ((gCurrentWorld == (D_800D6B98 + 1)) && (gCurrentWorld < 8)) {
                            gCurrentWorld = 8; gCurrentLevel = 1;
                            func_800B9D60(D_800D6B88, 6);
                        }
                        func_800A74D8();
                        gGameState = 0x13;
                        break;
                    case 0:                                     /* switch 2 */
                        func_800A74D8();
                        if (D_800BE500 != 6) {
                            gGameState = 0xC;
                        } else {
                            gGameState = 0xB;
                        }
                        D_800D6B84 = 0;
                        break;
                    default:                                    /* switch 2 */
                        gGameState = 1;
                        break;
                } // switch 2
                func_800B9C50(D_800D6B88);
                continue;
            case 16:                                        /* switch 1 */
            case 17:                                        /* switch 1 */
                load_menu_overlays();
                func_80159EFC_ovl1();
                gGameState = 1;
                continue;
            case 21:                                        /* switch 1 */
                utilLoadOverlay(4);
                func_80154D60_ovl1(D_800D71E8, 0x15);
                tmpState = gGameState;
                gGameState = 0x17;
                D_800D6B68 = tmpState;
                continue;
            case 34:                                        /* switch 1 */
                func_800A36C0();
                continue;
            case 18:                                        /* switch 1 */
                utilLoadOverlay(4);
                set_cutscene_watched(0x11, D_800D6B88);
                set_cutscene_watched(0x13, D_800D6B88);
                func_800B9C50(D_800D6B88);
                func_80154D60_ovl1(0xE, 2);
                gGameState = 1;
                continue;
            case 19:                                        /* switch 1 */
                utilLoadOverlay(4);
                set_cutscene_watched(0xD, D_800D6B88);
                set_cutscene_watched(0x11, D_800D6B88);
                set_cutscene_watched(0x12, D_800D6B88);
                set_cutscene_watched(0x13, D_800D6B88);
                set_cutscene_watched(0x10, D_800D6B88);
                func_800B9C50(D_800D6B88);
                func_80154D60_ovl1(0xF, 0xA);
                gGameState = 1;
                continue;
            case 33:                                        /* switch 1 */
                func_800A34C8();
                continue;
            case 27:                                        /* switch 1 */
                load_menu_overlays();
                func_8017F594_ovl1();
                continue;
            case 28:                                        /* switch 1 */
                load_menu_overlays();
                func_8017CC3C_ovl1();
                continue;
            case 25:                                        /* switch 1 */
                load_menu_overlays();
                func_801822AC_ovl1();
                tmpState = gGameState;
                gGameState = 0xA;
                D_800D6B68 = tmpState;
                continue;
            case 23:                                        /* switch 1 */
                load_menu_overlays();
                func_801802A8_ovl1();
                continue;
            case 22:                                        /* switch 1 */
                load_menu_overlays();
                func_8017ECA4_ovl1();
                tmpState = gGameState;
                gGameState = 0xA;
                D_800D6B68 = tmpState;
                continue;
            case 26:                                        /* switch 1 */
                load_menu_overlays();
                func_80182FE8_ovl1();
                continue;
            case 24:                                        /* switch 1 */
                load_menu_overlays();
                func_80185EEC_ovl1();
                tmpState = gGameState;
                gGameState = 0xA;
                D_800D6B68 = tmpState;
                continue;
            case 29:                                        /* switch 1 */
                load_menu_overlays();
                func_80177A30_ovl1();
                continue;
            case 30:                                        /* switch 1 */
                load_menu_overlays();
                func_8016FAB0_ovl1();
                continue;
            case 31:                                        /* switch 1 */
                load_menu_overlays();
                func_80165370_ovl1();
                continue;
            // fake case
            case 32:
                load_menu_overlays();
                func_80179D48_ovl1();
                continue;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A377C.s")
#endif


GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/gameSetUpdateRate.s")

void utilPrintf(char* arg0, ...) {

}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A428C.s")

extern u32 *D_800BE5CC, *D_800BE5C4;
extern u32 *D_800BE5C8;

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A4414.s")


// executes the virtual function at index arg0
void utilFuncTableJump(u32 arg0, u32 arg1, FUNCLIST callback) {
    // __thiscall? But rarely any of these functions use omCurrentProc...
    if (arg0 < arg1) callback[arg0](omCurrentProc);
}

extern f32 D_800D5C30;
f32 utilVec3Dot(Vector *arg0, Vector *arg1) {
    f32 dotProduct;
    f32 dotProductMag;

    dotProduct = (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
    dotProductMag = ABSF(dotProduct);
    if (D_800D5C30 < dotProductMag) { // denorm check; D_800D5C30 = 0.00001f
        return dotProduct;
    }
    return 0.0f;
}

f32 utilVec3Mag(Vector *arg0) {
    f32 x = arg0->x;
    f32 y = arg0->y;
    f32 z = arg0->z;
    return (x * x) + (y * y) + (z * z);
}

f32 utilVec3Dist(Vector *v1, Vector *v2) {
    f32 x2 = v2->x - v1->x;
    f32 y2 = v2->y - v1->y;
    f32 z2 = v2->z - v1->z;
    return (x2 * x2) + (y2 * y2) + (z2 * z2);
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/utilWrapRotation.s")

// copy of HS64_MkRotationMtxF???
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A465C.s")

void utilGetTransformSRT(Vector *arg0, struct UnkStruct8004A7C4_3C *arg1) {
    Mat4 finalMtx;
    Mat4 intermediateMtx;

    if (arg1 == 0) {
        arg1 = omCurrentProc->unk3C;
    }
    guMtxIdentF(&finalMtx);
    do {
        if ((arg1->scaleVec.x != 1.0f) || (arg1->scaleVec.y != 1.0f) || (arg1->scaleVec.z != 1.0f)) {
            HS64_MkScaleMtxF(&intermediateMtx, arg1->scaleVec.x, arg1->scaleVec.y, arg1->scaleVec.z);
            guMtxCatF(&finalMtx, &intermediateMtx, &finalMtx);
        }
        if ((arg1->angleVec.x != 0.0f) || (arg1->angleVec.y != 0.0f) || (arg1->angleVec.z != 0.0f)) {
            HS64_MkRotationMtxF(&intermediateMtx, arg1->angleVec.x, arg1->angleVec.y, arg1->angleVec.z);
            guMtxCatF(&finalMtx, &intermediateMtx, &finalMtx);
        }
        if ((arg1->posVec.x != 0.0f) || (arg1->posVec.y != 0.0f) || (arg1->posVec.z != 0.0f)) {
            HS64_MkTranslateMtxF(&intermediateMtx, arg1->posVec.x, arg1->posVec.y, arg1->posVec.z);
            guMtxCatF(&finalMtx, &intermediateMtx, &finalMtx);
        }
        arg1 = arg1->unk14;
    } while ((u32)arg1 != 1); // why?
    arg0->x = finalMtx[3][0];
    arg0->y = finalMtx[3][1];
    arg0->z = finalMtx[3][2];
}

void utilTransformPoint(Vector *dst, struct UnkStruct8004A7C4_3C *arg1, Vector *src) {
    Mat4 sp90;
    Mat4 sp50;

    if (arg1 == 0) {
        arg1 = omCurrentProc->unk3C;
    }
    guMtxIdentF(&sp90);
    do {
        if ((arg1->scaleVec.x != 1.0f) || (arg1->scaleVec.y != 1.0f) || (arg1->scaleVec.z != 1.0f)) {
            HS64_MkScaleMtxF(&sp50, arg1->scaleVec.x, arg1->scaleVec.y, arg1->scaleVec.z);
            guMtxCatF(&sp90, &sp50, &sp90);
        }
        if ((arg1->angleVec.x != 0.0f) || (arg1->angleVec.y != 0.0f) || (arg1->angleVec.z != 0.0f)) {
            HS64_MkRotationMtxF(&sp50, arg1->angleVec.x, arg1->angleVec.y, arg1->angleVec.z);
            guMtxCatF(&sp90, &sp50, &sp90);
        }
        if ((arg1->posVec.x != 0.0f) || (arg1->posVec.y != 0.0f) || (arg1->posVec.z != 0.0f)) {
            HS64_MkTranslateMtxF(&sp50, arg1->posVec.x, arg1->posVec.y, arg1->posVec.z);
            guMtxCatF(&sp90, &sp50, &sp90);
        }
        arg1 = arg1->unk14;
    } while ((u32)arg1 != 1); // why
    guMtxXFMF(sp90,
        src->x,
        src->y,
        src->z,

        &dst->x,
        &dst->y,
        &dst->z
    );
}

void func_800A4B34(Vector *dst, struct UnkStruct8004A7C4_3C *arg1) {
    Vector tmp;
    Mat4 sp7C;
    Mat4 sp3C;

    if (arg1 == 0) {
        arg1 = omCurrentProc->unk3C;
    }
    guMtxIdentF(&sp7C);
    do {
        if ((arg1->scaleVec.x != 1.0f) || (arg1->scaleVec.y != 1.0f) || (arg1->scaleVec.z != 1.0f)) {
            HS64_MkScaleMtxF(&sp3C, 1.0f / arg1->scaleVec.x, 1.0f / arg1->scaleVec.y, 1.0f / arg1->scaleVec.z);
            guMtxCatF(&sp3C, &sp7C, &sp7C);
        }
        if ((arg1->angleVec.x != 0.0f) || (arg1->angleVec.y != 0.0f) || (arg1->angleVec.z != 0.0f)) {
            func_800A465C(&sp3C, -arg1->angleVec.x, -arg1->angleVec.y, -arg1->angleVec.z);
            guMtxCatF(&sp3C, &sp7C, &sp7C);
        }
        if ((arg1->posVec.x != 0.0f) || (arg1->posVec.y != 0.0f) || (arg1->posVec.z != 0.0f)) {
            HS64_MkTranslateMtxF(&sp3C, -arg1->posVec.x, -arg1->posVec.y, -arg1->posVec.z);
            guMtxCatF(&sp3C, &sp7C, &sp7C);
        }
        arg1 = arg1->unk14;
    } while ((u32) arg1 != 1);

    tmp.x = dst->x;
    tmp.y = dst->y;
    tmp.z = dst->z;

    dst->x = ((sp7C[0][0] * tmp.x) + (sp7C[1][0] * tmp.y) + (sp7C[2][0] * tmp.z))
             + sp7C[3][0];
    dst->y = ((sp7C[0][1] * tmp.x) + (sp7C[1][1] * tmp.y) + (sp7C[2][1] * tmp.z))
             + sp7C[3][1];
    dst->z = ((sp7C[0][2] * tmp.x) + (sp7C[1][2] * tmp.y) + (sp7C[2][2] * tmp.z))
             + sp7C[3][2];
}

// rodata floats
#ifdef NON_MATCHING
extern f32 asinf(f32);
extern f32 atan2f(f32, f32);
extern const f32 D_800D5C3C, D_800D5C40;
void func_800A4DB8(Vector *arg0, struct UnkStruct8004A7C4_3C *arg1) {
    Mat4 sp80;
    Mat4 sp40;

    if (arg1 == 0) {
        arg1 = omCurrentProc->unk3C;
    }
    guMtxIdentF(&sp80);
    do {
        if ((arg1->angleVec.x != 0.0f) || (arg1->angleVec.y != 0.0f) || (arg1->angleVec.z != 0.0f)) {
            HS64_MkRotationMtxF(&sp40, arg1->angleVec.x, arg1->angleVec.y, arg1->angleVec.z);
            guMtxCatF(&sp80, &sp40, &sp80);
        }
        arg1 = arg1->unk14;
    } while ((u32)arg1 != 1);

    arg0->y = asinf(-sp80[0][2]);

    if ((arg0->y == (M_PIF/2)) || (arg0->y == D_800D5C40)) {
        arg0->x = (arg0->y == (M_PIF/2)) ? atan2f(sp80[1][0], sp80[1][1]) : atan2f(-sp80[1][0], sp80[1][1]);
        arg0->z = 0.0f;
    } else {
        arg0->x = atan2f(sp80[1][2], sp80[2][2]);
        arg0->z = atan2f(sp80[0][1], sp80[0][0]);
    }
    utilWrapRotation(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A4DB8.s")
#endif

s32 func_800A4F48(s32 arg0, Vector *arg1, f32 arg2, f32 arg3);
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A4F48.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A509C.s")

void utilSetPlayerContPad(void) {
    if (!kirby_in_inactionable_state()) {
        gKirbyController.buttonHeld = gPlayerControllers->buttonHeld;
        gKirbyController.buttonPressed = gPlayerControllers->buttonPressed;
        gKirbyController.buttonHeldLong = gPlayerControllers->buttonHeldLong;
        gKirbyController.buttonReleased = gPlayerControllers->buttonReleased;
        gKirbyController.stickX = gPlayerControllers->stickX;
        gKirbyController.stickY = gPlayerControllers->stickY;
    } else {
        gKirbyController.buttonHeld = 0;
        gKirbyController.buttonPressed = 0;
        gKirbyController.buttonHeldLong = 0;
        gKirbyController.buttonReleased = 0;
        gKirbyController.stickX = 0;
        gKirbyController.stickY = 0;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A52F0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A5404.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A5468.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A54FC.s")



s32 func_800A5560(u32 cont) {
    s32 v1;

    if (cont >= 4) {
        cont = 3;
    }

    v1 = gPlayerControllers[cont].stickX;

    if (v1 > 0) {
        if (v1 < 8) {
            v1 = 8;
        }
        if (v1 >= 0x49) {
            v1 = 0x48;
        }
        v1 -= 8;
    }
    else if (v1 < 0) {
        if (v1 >= -7) {
            v1 = -8;
        }
        if (v1 < -0x48) {
            v1 = -0x48;
        }
        v1 += 8;
    }
    return v1;
}

s32 func_800A55E0(u32 cont) {
    s32 v1;

    if (cont >= 4) {
        cont = 3;
    }
    v1 = gPlayerControllers[cont].stickY;
    if (v1 > 0) {
        if (v1 < 8) {
            v1 = 8;
        }
        if (v1 >= 0x49) {
            v1 = 0x48;
        }
        v1 -= 8;
    }
    else if (v1 < 0) {
        if (v1 >= -7) {
            v1 = -8;
        }
        if (v1 < -0x48) {
            v1 = -0x48;
        }
        v1 = v1 + 8;
    }
    return v1;
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/utilGetStickDirection.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/utilSetRectBoundsAndColor.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/utilSetRectColorFullScreen.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/utilSetRectColor.s")

extern s32 D_800D6B24;
extern s16 D_800D6B30;
extern s16 D_800D6B2C, utilRectAlpha;
extern u8 D_800D6B2B;
void utilFadeRectLoop(s32 arg0) {
    ohSleep(1);
    while (1) {
        utilRectAlpha += D_800D6B2C;
        if (utilRectAlpha <= 0) {
            utilRectAlpha = 0;
            break;
        } else if (utilRectAlpha >= 0xFF) {
            utilRectAlpha = 0xFF;
            break;
        } else {
            ohSleep(1);
        }
    }
    D_800D6B30 += 1;
    switch (D_800D6B2B) {
        case 0:
            D_800D6B24 = 0;
            ohSleep(1);
            func_8000A29C_ovl1(omCurrentProc);
            ohSleep(1);
            break;
        case 1:
            ohSleep(1);
            break;
        case 2:
            ohSleep(1);
            func_800067B8_ovl1();
            ohSleep(1);
            D_800D6B24 = 0;
            break;
        default:
            break;
    }
}


extern s32 utilRectBoundLrx, utilRectBoundLry, utilRectBoundUlx, utilRectBoundUly;
extern u8 utilRectColorR, utilRectColorG, utilRectColorB, D_800D6B2B;
extern Gfx *gDisplayListHeads[];
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/utilDrawRectGfx.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/utilSpawnRect.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/utilResetRect.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A5B14.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A5B3C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A5B64.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A5BDC.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A5C60.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A5D24.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A5D88.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A5F94.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A6208.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A62D8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A6534.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/func_800A6820.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/utilPauseAllGObjs.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_1/utilResumeAllGObjs.s")

void func_800A6B18(void) {

}

extern void *D_800BE8A0[];
void utilLoadOverlay(u32 arg0) {
    while (arg0 >= 0x14) {
        // ...were they going to do anything to remedy this issue?
    }
    dma_overlay_load(D_800BE8A0[arg0]);
}

// some sort of integrity check
u8 utilTamperCheck(void) {
    s32 buf[4];

    dma_read(0x00000F10, &buf, 0x10);
    if (buf[0] != 0x04080040) {
        return 0;
    } else if (buf[1] != 0x02081040) {
        return 0;
    }
    else return 1;
}

