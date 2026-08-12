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

void func_800BCA5C(void) {
    u32 sp3C;
    s32 temp_v0_2;
    u16 var_v0;
    u32 temp_v0;
    u32 temp_v0_3;
    u32 var_a3;

    temp_v0 = D_800EC2E0[omCurrentObj->objId].as_u32;
    if (temp_v0 != 0) {
        *(&D_800D55BC + (temp_v0 * 4))();
    }
    if (gGameState == 0x21) {
        D_800E9E20[omCurrentObj->objId] = 2;
    } else if (func_800F8560() == 9) {
        D_800E9E20[omCurrentObj->objId] = 1;
    } else {
        D_800E9E20[omCurrentObj->objId] = 0;
    }
    var_a3 = 1;
    do {
        sp3C = var_a3;
        temp_v0_2 = request_track_3(0x27, 0x3C, 0x50, var_a3);
        D_800EC2E0[temp_v0_2].as_u32 = var_a3;
        var_a3 += 1;
        D_800E9E20[temp_v0_2] = D_800E9E20[omCurrentObj->objId] * 3;
    } while (var_a3 != 5);
    func_800AF9B8(0x28, 0xE);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = NULL;
    utilSetRectBoundsAndColor(0xA, 0xA, 0x136, 0xB6, 0xF0, 0xD8, 0xA0);
    utilSpawnRect(0, 0x10, 0);
    auSetBGMVolumeSmooth(0, 0x5000, 0x10);
    func_80023884();
    play_sound(0xED);
    if (D_800D6B24 != 0) {
        do {
            ohSleep(1);
        } while (D_800D6B24 != 0);
    }
    D_800E9AA0[omCurrentObj->objId] = 1;
    utilSpawnRect(0xFF, -0x10, 0);
    if (D_800D6B24 != 0) {
        do {
            ohSleep(1);
        } while (D_800D6B24 != 0);
    }
    ohSleep(3.0f * gameTicksPerDrawInv);
loop_14:
    var_v0 = *(&gPlayerControllers + 2);
    if (!(var_v0 & 0x9000)) {
        if (var_v0 & 0x800) {
            play_sound(0x113);
            D_800E98E0[omCurrentObj->objId] = 0;
            var_v0 = *(&gPlayerControllers + 2);
        }
        if (var_v0 & 0x400) {
            play_sound(0x113);
            D_800E98E0[omCurrentObj->objId] = 1;
        }
        ohSleep(1);
        goto loop_14;
    }
    play_sound(0xED);
    temp_v0_3 = omCurrentObj->objId;
    if ((D_800E98E0[temp_v0_3] == 1) && (D_800E9E20[temp_v0_3] != 1)) {
        if (gGameState == 0x21) {
            D_800D6B6C = 1;
        }
        D_800BE4F8 = 0;
        utilSetRectColorFullScreen(0, 0, 0);
        utilSpawnRect(0, 0x20, 2);
        auSetBGMVolumeSmooth(0, 0, 8);
        if (D_800D6B24 != 0) {
            do {
                ohSleep(1);
            } while (D_800D6B24 != 0);
        }
        auStopSong(0);
    } else {
        utilSpawnRect(0, 0x10, 0);
        if (D_800D6B24 != 0) {
            do {
                ohSleep(1);
            } while (D_800D6B24 != 0);
        }
        D_800E9AA0[omCurrentObj->objId] = NULL;
        D_800E9C60[omCurrentObj->objId] = 1;
        auSetBGMVolumeSmooth(0, 0x7800, 0x10);
        func_80023794();
        utilSpawnRect(0xFF, -0x10, 0);
        if (D_800D6B24 != 0) {
            do {
                ohSleep(1);
            } while (D_800D6B24 != 0);
        }
        D_800BE544 = 0x8000;
    }
    func_800B1900(omCurrentObj->unk2);
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

void func_800BDE0C(s32 arg0) {
    ? *var_a2;
    ? *var_a3;
    s32 var_v1;
    void *var_v0;

    D_800D6F58 = &D_800ED510;
    if (D_800F4D14 != 0) {
        if (D_800F6198 != 0) {
            func_800A8934(0x50002, 0x10, 0, &D_800ED510);
            var_a2 = &D_800EDA24;
            var_a3 = &D_800EDA10;
            do {
                var_a2->unk0 = D_800EDA60;
                var_a2->unk2 = D_800EDA60;
                var_v1 = 0xC;
                var_v0 = var_a3 + 0x18;
loop_4:
                var_v1 += 4;
                var_v0->unk2 = D_800EDA60;
                var_v0->unk4 = D_800EDA60;
                var_v0->unk6 = D_800EDA60;
                var_v0 += 8;
                var_v0->unk-8 = D_800EDA60;
                if (var_v1 != 0xD8) {
                    goto loop_4;
                }
                var_a2 += 0x280;
                var_a3 += 0x280;
            } while (var_a2 != &D_800F4324);
        } else {
            D_800D6F50 = 0;
            func_800A8934(*(&D_800D52FC + (saveHUDTheme * 4)), 0x10, 0, &D_800ED510);
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
#ifdef NON_MATCHING
extern u32 D_800F5770[][0x40];
extern u32 D_800F4D70[][0x40];
extern s32 D_800D6F50;
extern s32 D_800F4D14;

void func_800BDF2C(void) {
    s32 i;

    i = 0;
    do {
        D_800F5770[D_800D6F50][i] = 0xFFFE7961;
        D_800F4D70[D_800D6F50][i] = 0;
        i++;
    } while (i != 0x40);
    func_800BDD98();
    D_800F4D14 = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDF2C.s")
#endif
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

s32 func_800BE098(void) {
    s32 sp18;
    ? *var_a3;
    ? *var_t3;
    ? *var_v0;
    ? *var_v1;
    s32 *var_t0;
    s32 *var_t1;
    s32 *var_t2;
    s32 temp_v0;
    s32 var_a1;

    D_800F4D18 = 2;
    var_a3 = &D_800F4D70;
    var_t3 = &D_800F5770;
    var_t2 = &D_800F4D20;
    var_t1 = &D_800F4D48;
    var_t0 = &D_800F6170;
    do {
        *var_t0 = 0;
        *var_t1 = 0;
        *var_t2 = 0;
        var_a1 = 0;
        var_v0 = var_t3;
        var_v1 = var_a3;
loop_2:
        var_a1 += 4;
        var_v0->unk0 = 0xFFFE7961;
        var_v1->unk0 = 0;
        var_v0->unk4 = 0xFFFE7961;
        var_v1->unk4 = 0;
        var_v0->unk8 = 0xFFFE7961;
        var_v1->unk8 = 0;
        var_v0->unkC = 0xFFFE7961;
        var_v1->unkC = 0;
        var_v0 += 0x10;
        var_v1 += 0x10;
        if (var_a1 != 0x40) {
            goto loop_2;
        }
        var_a3 += 0x100;
        var_t0 += 4;
        var_t1 += 4;
        var_t2 += 4;
        var_t3 += 0x100;
    } while (var_a3 != &D_800F5770);
    sp18 = request_track_3(0x26, 0x4A, 0x50, var_a3);
    if (func_800F8560() != 9) {
        func_800BDFB8(&D_800D5310, saveHUDTheme * 0xA, 8);
    } else {
        D_800D6E54 = 0;
        D_800D6E90 = 0;
        func_800BDFB8(&D_800D5310, saveHUDTheme * 0xA, 0xA);
    }
    func_800BDFB8(&D_800D53DC, saveHUDTheme * 2, 2);
    func_800BDFB8(&D_800D5408, saveHUDTheme * 2, 2);
    func_800BDFB8(&D_800D5434, saveHUDTheme * 2, 2);
    func_800BDFB8(&D_800D5460, saveHUDTheme * 10, 10);
    func_800A8934(0x50001, 0, 0x10, &D_800ED500);
    D_800ED500.unk8 = D_800ED500.unk8 + &D_800ED510;
    D_800ED500.unkC = D_800ED500.unkC + &D_800ED510;
    D_800F6198 = 0;
    D_800D6EC4 = 0;
    if ((D_800D6F3C == 4) || (D_800D6F3C == 3)) {
        D_800F6198 = 1;
        temp_v0 = func_800AEA64(0x2D, 0x4A, 0x50, &D_800ED500);
        sp18 = temp_v0;
        D_800E98E0[temp_v0] = 0;
    }
    func_800BDF2C();
    func_800BDE0C(NULL);
    scSetPostProcessFunc(func_800BDE0C);
    return sp18;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BE098.s")
#endif

// handwritten after here???????

#ifdef MIPS_TO_C
s32 func_800BE320(void *arg0) {
    arg0->unkC = saved_reg_ra;
    arg0->unk68 = M2C_ERROR(/* cfc1 */);
    arg0->unk8 = sp;
    arg0->unk34 = saved_reg_fp;
    arg0->unk14 = saved_reg_s0;
    arg0->unk18 = saved_reg_s1;
    arg0->unk1C = saved_reg_s2;
    arg0->unk20 = saved_reg_s3;
    arg0->unk24 = saved_reg_s4;
    arg0->unk28 = saved_reg_s5;
    arg0->unk2C = saved_reg_s6;
    arg0->unk30 = saved_reg_s7;
    arg0->unk38 = saved_reg_f20;
    arg0->unk40 = saved_reg_f22;
    arg0->unk48 = saved_reg_f24;
    arg0->unk50 = saved_reg_f26;
    arg0->unk58 = saved_reg_f28;
    arg0->unk60 = saved_reg_f30;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BE320.s")
#endif

#ifdef NON_MATCHING
s32 func_800BE374(void *arg0, s32 arg1) {
    s32 var_v0;

    var_v0 = arg1;
    if (var_v0 == 0) {
        var_v0 = 1;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BE374.s")
#endif