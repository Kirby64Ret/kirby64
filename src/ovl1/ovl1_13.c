#include "common.h"

#include "GObj.h"
#include "SPObj.h"
#include "Player.h"
#include "ovl1/ovl1_6.h"
#include "main/gtl.h"

#ifdef MIPS_TO_C

s32 change_kirby_hp(f32 arg0) {
    f32 var_f12;

    var_f12 = arg0;
    if (((random_u16() & 3) == 3) && (&utilTamperCheck == NULL)) {
        if (var_f12 < 0.0f) {
            var_f12 *= 2.0f;
        } else {
            var_f12 = 0.0f;
        }
    }
    if (D_800D6E8C == 0.0f) {
        return 0;
    }
    gKirbyHp += var_f12;
    if (gKirbyHp <= 0.0f) {
        gKirbyHp = 0.0f;
    }
    if (gKirbyHp > 6.0f) {
        gKirbyHp = 6.0f;
    }
    D_800D6E8C = gKirbyHp;
    *D_800E7B20 = gKirbyHp;
    return D_800D6E8C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/change_kirby_hp.s")
#endif

#ifdef MIPS_TO_C

void func_800BC0F0(s32 arg0) {
    s32 var_a0;

    var_a0 = arg0;
    if (var_a0 < 0) {
        var_a0 = 0;
    }
    if (var_a0 >= 3) {
        var_a0 = 2;
    }
    D_800D6E90 = var_a0 + 0x23;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BC0F0.s")
#endif

#ifdef MIPS_TO_C

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
    if (D_800D6E5C == D_800D6E58) {
        D_800D6E94 = 0x1E;
    } else if (D_800D6E58 == 0.0f) {
        D_800D6E94 = 0;
    } else if (temp_f12 < 1.0f) {
        D_800D6E94 = 1;
    } else {
        D_800D6E94 = temp_f12;
    }
    return D_800D6E94;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BC11C.s")
#endif

#ifdef MIPS_TO_C

void func_800BC1FC(s32 arg0) {
    D_800D6E58 = arg0;
    D_800D6E5C = D_800D6E58;
    D_800D6EB8 = 0;
    D_800D6EAC = 0;
    D_800D6E94 = 0x1E;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BC1FC.s")
#endif

#ifdef MIPS_TO_C

void change_kirby_stars(s32 arg0) {
    gKirbyStars += arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/change_kirby_stars.s")
#endif

#ifdef MIPS_TO_C

void change_kirby_lives(s32 arg0) {
    s32 var_v0;

    var_v0 = gKirbyLives + arg0;
    gKirbyLives = var_v0;
    if (var_v0 < 0) {
        gKirbyLives = 0;
        var_v0 = 0;
    }
    if (var_v0 >= 0x65) {
        var_v0 = 0x64;
        gKirbyLives = 0x64;
    }
    D_800D6E88 = var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/change_kirby_lives.s")
#endif

#ifdef MIPS_TO_C

void func_800BC298(s32 arg0) {
    s32 var_a0;

    var_a0 = arg0;
    if ((random_u16() & 3) == 2) {
        var_a0 = arg0;
        if (func_800F88A0(var_a0) == 0) {
            D_800D6E54 = 0;
            D_800D6E90 = 0;
            D_8012E850 = 0;
            return;
        }
    }
    if (var_a0 < 0) {
        var_a0 = 0;
    }
    if (var_a0 >= 0x24) {
        var_a0 = 0x23;
    }
    D_800D6E90 = var_a0;
    D_800D6E54 = var_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BC298.s")
#endif

#ifdef MIPS_TO_C

void func_800BC328(s32 arg0) {
    ? var_a3;
    f32 var_f16;
    f32 var_f6;
    s32 temp_a3;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0_2;
    s32 var_v0;
    u32 temp_t0;
    void *temp_v0;

    temp_t0 = omCurrentObj->objId;
    temp_a3 = D_800E9E20[temp_t0];
    temp_v0 = (temp_a3 * 4) + &D_800D552C;
    temp_t8 = temp_v0->unk0;
    var_f6 = temp_t8;
    if (temp_t8 < 0) {
        var_f6 += 4294967296.0f;
    }
    gEntitiesNextPosXArray[temp_t0] = var_f6;
    temp_t9 = temp_v0->unk4;
    var_f16 = temp_t9;
    if (temp_t9 < 0) {
        var_f16 += 4294967296.0f;
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = var_f16;
    func_800AF8C0(temp_v0->unk8, 0xA, 6, temp_a3);
    func_800A5B14(arg0, 0xD0, 0xB0, 0x80, 0xFF);
loop_5:
    temp_v0_2 = D_800E0D50[omCurrentObj->objId];
    var_v0 = temp_v0_2 * 4;
    if (D_800E9C60[temp_v0_2] != 0) {
        func_800ACBDC(arg0);
        func_800B1900(omCurrentObj->unk2);
        var_v0 = D_800E0D50[omCurrentObj->objId] * 4;
    }
    var_a3 = 0;
    if (*(D_800E9AA0 + var_v0) != 0) {
        var_a3 = 1;
    }
    func_800AF920(var_a3);
    ohSleep(1);
    goto loop_5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BC328.s")
#endif

#ifdef MIPS_TO_C

void func_800BC4C0(s32 arg0) {
    ? var_a3;
    f32 var_f16;
    f32 var_f6;
    s32 temp_a3;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0_2;
    s32 var_v0;
    u32 temp_t0;
    void *temp_v0;

    temp_t0 = omCurrentObj->objId;
    temp_a3 = D_800E9E20[temp_t0];
    temp_v0 = (temp_a3 * 4) + &D_800D5550;
    temp_t8 = temp_v0->unk0;
    var_f6 = temp_t8;
    if (temp_t8 < 0) {
        var_f6 += 4294967296.0f;
    }
    gEntitiesNextPosXArray[temp_t0] = var_f6;
    temp_t9 = temp_v0->unk4;
    var_f16 = temp_t9;
    if (temp_t9 < 0) {
        var_f16 += 4294967296.0f;
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = var_f16;
    func_800AF8C0(temp_v0->unk8, 0xA, 4, temp_a3);
loop_5:
    temp_v0_2 = D_800E0D50[omCurrentObj->objId];
    var_v0 = temp_v0_2 * 4;
    if (D_800E9C60[temp_v0_2] != 0) {
        func_800ACBDC(arg0);
        func_800B1900(omCurrentObj->unk2);
        var_v0 = D_800E0D50[omCurrentObj->objId] * 4;
    }
    var_a3 = 0;
    if ((*(D_800E98E0 + var_v0) == 0) && (*(D_800E9AA0 + var_v0) != 0)) {
        var_a3 = 1;
    }
    func_800AF920(var_a3);
    ohSleep(1);
    goto loop_5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BC4C0.s")
#endif

#ifdef MIPS_TO_C

void func_800BC664(s32 arg0) {
    ? var_a3;
    f32 var_f16;
    f32 var_f6;
    s32 temp_a3;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0_2;
    s32 var_v0;
    u32 temp_t0;
    void *temp_v0;

    temp_t0 = omCurrentObj->objId;
    temp_a3 = D_800E9E20[temp_t0];
    temp_v0 = (temp_a3 * 4) + &D_800D5574;
    temp_t8 = temp_v0->unk0;
    var_f6 = temp_t8;
    if (temp_t8 < 0) {
        var_f6 += 4294967296.0f;
    }
    gEntitiesNextPosXArray[temp_t0] = var_f6;
    temp_t9 = temp_v0->unk4;
    var_f16 = temp_t9;
    if (temp_t9 < 0) {
        var_f16 += 4294967296.0f;
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = var_f16;
    func_800AF8C0(temp_v0->unk8, 0xA, 6, temp_a3);
    func_800A5B14(arg0, 0xD0, 0xB0, 0x80, 0xFF);
loop_5:
    temp_v0_2 = D_800E0D50[omCurrentObj->objId];
    var_v0 = temp_v0_2 * 4;
    if (D_800E9C60[temp_v0_2] != 0) {
        func_800ACBDC(arg0);
        func_800B1900(omCurrentObj->unk2);
        var_v0 = D_800E0D50[omCurrentObj->objId] * 4;
    }
    var_a3 = 0;
    if (*(D_800E9AA0 + var_v0) != 0) {
        var_a3 = 1;
    }
    func_800AF920(var_a3);
    ohSleep(1);
    goto loop_5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BC664.s")
#endif

#ifdef MIPS_TO_C

void func_800BC800(s32 arg0) {
    ? var_a3;
    f32 var_f16;
    f32 var_f6;
    s32 temp_a3;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0_2;
    s32 var_v0;
    u32 temp_t0;
    void *temp_v0;

    temp_t0 = omCurrentObj->objId;
    temp_a3 = D_800E9E20[temp_t0];
    temp_v0 = (temp_a3 * 4) + &D_800D5598;
    temp_t8 = temp_v0->unk0;
    var_f6 = temp_t8;
    if (temp_t8 < 0) {
        var_f6 += 4294967296.0f;
    }
    gEntitiesNextPosXArray[temp_t0] = var_f6;
    temp_t9 = temp_v0->unk4;
    var_f16 = temp_t9;
    if (temp_t9 < 0) {
        var_f16 += 4294967296.0f;
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = var_f16;
    func_800AF8C0(temp_v0->unk8, 0xA, 4, temp_a3);
loop_5:
    temp_v0_2 = D_800E0D50[omCurrentObj->objId];
    var_v0 = temp_v0_2 * 4;
    if (D_800E9C60[temp_v0_2] != 0) {
        func_800ACBDC(arg0);
        func_800B1900(omCurrentObj->unk2);
        var_v0 = D_800E0D50[omCurrentObj->objId] * 4;
    }
    var_a3 = 0;
    if ((*(D_800E98E0 + var_v0) != 0) && (*(D_800E9AA0 + var_v0) != 0)) {
        var_a3 = 1;
    }
    func_800AF920(var_a3);
    ohSleep(1);
    goto loop_5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BC800.s")
#endif

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
    ohSleep(3.0f * D_800D6B14);
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

#ifdef DOC
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BCEEC.s")
#endif

#ifdef MIPS_TO_C

void draw_lives_digit(s32 arg0, s32 arg1) {
    s32 temp_t6;
    s32 var_a1;
    void *var_a0;
    void *var_v1;

    var_v1 = func_800A8BAC(*(&D_800D5460 + ((saveHUDTheme * 0xA * 4) + (arg1 * 4)))) + 0x10;
    var_a0 = (arg0 * 2) + 0x1400 + &D_800ED510;
    var_a1 = 0;
    do {
        var_a1 += 2;
        var_a0 += 0x500;
        var_a0->unk-500 = var_v1->unk0;
        temp_t6 = var_v1->unk4;
        var_v1 += 0x50;
        var_a0->unk-4FC = temp_t6;
        var_a0->unk-4F8 = var_v1->unk-48;
        var_a0->unk-4F4 = var_v1->unk-44;
        var_a0->unk-4F0 = var_v1->unk-40;
        var_a0->unk-4EC = var_v1->unk-3C;
        var_a0->unk-4E8 = var_v1->unk-38;
        var_a0->unk-4E4 = var_v1->unk-34;
        var_a0->unk-4E0 = var_v1->unk-30;
        var_a0->unk-280 = var_v1->unk-28;
        var_a0->unk-27C = var_v1->unk-24;
        var_a0->unk-278 = var_v1->unk-20;
        var_a0->unk-274 = var_v1->unk-1C;
        var_a0->unk-270 = var_v1->unk-18;
        var_a0->unk-26C = var_v1->unk-14;
        var_a0->unk-268 = var_v1->unk-10;
        var_a0->unk-264 = var_v1->unk-C;
        var_a0->unk-260 = var_v1->unk-8;
    } while (var_a1 != 0x1E);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/draw_lives_digit.s")
#endif

#ifdef MIPS_TO_C

void draw_hp_segment(s32 arg0, s32 arg1) {
    s32 *var_a0;
    s32 *var_v1;
    s32 temp_t6;
    s32 var_a1;

    var_v1 = func_800A8BAC(*(&D_800D53DC + ((saveHUDTheme * 8) + (arg1 * 4)))) + 0x10;
    var_a0 = (arg0 * 0x14 * 2) + 0xAB4 + &D_800ED510;
    var_a1 = 0;
    do {
        temp_t6 = *var_v1;
        var_a1 += 2;
        var_v1 += 0x50;
        *var_a0 = temp_t6;
        var_a0 += 0x500;
        var_a0->unk-4FC = var_v1->unk-4C;
        var_a0->unk-4F8 = var_v1->unk-48;
        var_a0->unk-4F4 = var_v1->unk-44;
        var_a0->unk-4F0 = var_v1->unk-40;
        var_a0->unk-4EC = var_v1->unk-3C;
        var_a0->unk-4E8 = var_v1->unk-38;
        var_a0->unk-4E4 = var_v1->unk-34;
        var_a0->unk-4E0 = var_v1->unk-30;
        var_a0->unk-4DC = var_v1->unk-2C;
        var_a0->unk-280 = var_v1->unk-28;
        var_a0->unk-27C = var_v1->unk-24;
        var_a0->unk-278 = var_v1->unk-20;
        var_a0->unk-274 = var_v1->unk-1C;
        var_a0->unk-270 = var_v1->unk-18;
        var_a0->unk-26C = var_v1->unk-14;
        var_a0->unk-268 = var_v1->unk-10;
        var_a0->unk-264 = var_v1->unk-C;
        var_a0->unk-260 = var_v1->unk-8;
        var_a0->unk-25C = var_v1->unk-4;
    } while (var_a1 != 0x1A);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/draw_hp_segment.s")
#endif

#ifdef MIPS_TO_C

void func_800BD208(s32 arg0, s32 arg1) {
    s32 *temp_a0;
    s32 *var_a0;
    s32 *var_v1;
    s32 temp_t2;
    s32 var_v0;
    void *temp_v0;

    temp_v0 = func_800A8BAC(*(&D_800D5408 + ((saveHUDTheme * 8) + (arg1 * 4))));
    temp_a0 = (arg0 * 8) + 0x4E34 + &D_800ED510;
    *temp_a0 = temp_v0->unk10;
    var_a0 = temp_a0 + 0x780;
    var_v1 = temp_v0 + 0x28;
    var_a0->unk-77C = temp_v0->unk14;
    var_v0 = 3;
    var_a0->unk-500 = var_v1->unk-10;
    var_a0->unk-4FC = var_v1->unk-C;
    var_a0->unk-280 = var_v1->unk-8;
    var_a0->unk-27C = var_v1->unk-4;
    do {
        temp_t2 = *var_v1;
        var_v0 += 4;
        var_v1 += 0x20;
        *var_a0 = temp_t2;
        var_a0 += 0xA00;
        var_a0->unk-9FC = var_v1->unk-1C;
        var_a0->unk-780 = var_v1->unk-18;
        var_a0->unk-77C = var_v1->unk-14;
        var_a0->unk-500 = var_v1->unk-10;
        var_a0->unk-4FC = var_v1->unk-C;
        var_a0->unk-280 = var_v1->unk-8;
        var_a0->unk-27C = var_v1->unk-4;
    } while (var_v0 != 0xB);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BD208.s")
#endif

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

#ifdef MIPS_TO_C

void draw_star_segments(s32 arg0, s32 arg1) {
    s32 *temp_a0;
    s32 *var_a0;
    s32 *var_v1;
    s32 temp_t2;
    s32 var_v0;
    void *temp_v0;

    temp_v0 = func_800A8BAC(*(&D_800D5434 + ((saveHUDTheme * 8) + (arg1 * 4))));
    temp_a0 = (arg0 * 8) + 0x4E34 + &D_800ED510;
    *temp_a0 = temp_v0->unk10;
    var_a0 = temp_a0 + 0x780;
    var_v1 = temp_v0 + 0x28;
    var_a0->unk-77C = temp_v0->unk14;
    var_v0 = 3;
    var_a0->unk-500 = var_v1->unk-10;
    var_a0->unk-4FC = var_v1->unk-C;
    var_a0->unk-280 = var_v1->unk-8;
    var_a0->unk-27C = var_v1->unk-4;
    do {
        temp_t2 = *var_v1;
        var_v0 += 4;
        var_v1 += 0x20;
        *var_a0 = temp_t2;
        var_a0 += 0xA00;
        var_a0->unk-9FC = var_v1->unk-1C;
        var_a0->unk-780 = var_v1->unk-18;
        var_a0->unk-77C = var_v1->unk-14;
        var_a0->unk-500 = var_v1->unk-10;
        var_a0->unk-4FC = var_v1->unk-C;
        var_a0->unk-280 = var_v1->unk-8;
        var_a0->unk-27C = var_v1->unk-4;
    } while (var_v0 != 0xB);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/draw_star_segments.s")
#endif

#ifdef MIPS_TO_C

void func_800BD460(s32 arg0, s32 arg1) {
    s32 temp_t8;
    s32 temp_t9;
    s32 var_a1;
    void *var_a0;
    void *var_v1;

    var_v1 = func_800A8BAC(*(&D_800D5310 + ((saveHUDTheme * 0xA * 4) + (arg1 * 4)))) + 0x10;
    var_a0 = (arg0 * 2) + 0x1180 + &D_800ED510;
    var_a1 = 0;
    do {
        var_a1 += 4;
        var_a0->unk0 = var_v1->unk0;
        var_a0->unk4 = var_v1->unk4;
        temp_t9 = var_v1->unkC;
        temp_t8 = var_v1->unk8;
        var_v1 += 0xC0;
        var_a0->unkC = temp_t9;
        var_a0->unk8 = temp_t8;
        var_a0 += 0xA00;
        var_a0->unk-9EC = var_v1->unk-AC;
        var_a0->unk-9F0 = var_v1->unk-B0;
        var_a0->unk-9E4 = var_v1->unk-A4;
        var_a0->unk-9E8 = var_v1->unk-A8;
        var_a0->unk-9DC = var_v1->unk-9C;
        var_a0->unk-9E0 = var_v1->unk-A0;
        var_a0->unk-9D4 = var_v1->unk-94;
        var_a0->unk-9D8 = var_v1->unk-98;
        var_a0->unk-77C = var_v1->unk-8C;
        var_a0->unk-780 = var_v1->unk-90;
        var_a0->unk-774 = var_v1->unk-84;
        var_a0->unk-778 = var_v1->unk-88;
        var_a0->unk-76C = var_v1->unk-7C;
        var_a0->unk-770 = var_v1->unk-80;
        var_a0->unk-764 = var_v1->unk-74;
        var_a0->unk-768 = var_v1->unk-78;
        var_a0->unk-75C = var_v1->unk-6C;
        var_a0->unk-760 = var_v1->unk-70;
        var_a0->unk-754 = var_v1->unk-64;
        var_a0->unk-758 = var_v1->unk-68;
        var_a0->unk-4FC = var_v1->unk-5C;
        var_a0->unk-500 = var_v1->unk-60;
        var_a0->unk-4F4 = var_v1->unk-54;
        var_a0->unk-4F8 = var_v1->unk-58;
        var_a0->unk-4EC = var_v1->unk-4C;
        var_a0->unk-4F0 = var_v1->unk-50;
        var_a0->unk-4E4 = var_v1->unk-44;
        var_a0->unk-4E8 = var_v1->unk-48;
        var_a0->unk-4DC = var_v1->unk-3C;
        var_a0->unk-4E0 = var_v1->unk-40;
        var_a0->unk-4D4 = var_v1->unk-34;
        var_a0->unk-4D8 = var_v1->unk-38;
        var_a0->unk-27C = var_v1->unk-2C;
        var_a0->unk-280 = var_v1->unk-30;
        var_a0->unk-274 = var_v1->unk-24;
        var_a0->unk-278 = var_v1->unk-28;
        var_a0->unk-26C = var_v1->unk-1C;
        var_a0->unk-270 = var_v1->unk-20;
        var_a0->unk-264 = var_v1->unk-14;
        var_a0->unk-268 = var_v1->unk-18;
        var_a0->unk-25C = var_v1->unk-C;
        var_a0->unk-260 = var_v1->unk-10;
        var_a0->unk-254 = var_v1->unk-4;
        var_a0->unk-258 = var_v1->unk-8;
    } while (var_a1 != 0x20);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BD460.s")
#endif

#ifdef MIPS_TO_C

void draw_kirby_lives(void) {
    s32 sp18;
    s32 var_a2;

    var_a2 = D_800D6E88 - 1;
    if (D_800D6E88 != D_800D6EA0) {
        D_800D6EA0 = D_800D6E88;
        if (var_a2 >= 0x64) {
            var_a2 = 0x63;
        }
        if (var_a2 < 0) {
            var_a2 = 0;
        }
        sp18 = var_a2;
        draw_lives_digit(0x22, var_a2 / 10, var_a2);
        draw_lives_digit(0x34, var_a2 % 10, var_a2);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/draw_kirby_lives.s")
#endif

#ifdef MIPS_TO_C

void func_800BD6E0(void) {
    ? var_a1;
    s32 temp_t4;
    s32 var_a0;
    s32 var_v0;

    if ((D_800D6E8C == 1) && (D_800D6EC0 == 0) && (func_800F8560(1) != 3) && (D_800D6B24 == 0)) {
        play_sound(0xEC);
        D_800D6EC0 += 1;
    }
    if (D_800D6EA4 == D_800D6E8C) {
        D_800D6EB4 = 0;
        return;
    }
    var_v0 = D_800D6EB4 + 1;
    D_800D6EB4 = var_v0;
    if (var_v0 >= 5) {
        D_800D6EB4 = 1;
        var_v0 = 1;
    }
    if (var_v0 == 1) {
        var_a1 = 0;
        if (D_800D6E8C < D_800D6EA4) {
            var_a0 = D_800D6EA4 - 1;
            D_800D6EA4 = var_a0;
        } else {
            play_sound(0xD3, 0, &D_800D6EA4, 1);
            var_a1 = 1;
            temp_t4 = D_800D6EA4 + 1;
            D_800D6EA4 = temp_t4;
            var_a0 = temp_t4 - 1;
            if (temp_t4 >= 2) {
                D_800D6EC0 = 0;
            }
        }
        draw_hp_segment(var_a0, var_a1, &D_800D6EA4);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BD6E0.s")
#endif

#ifdef MIPS_TO_C

void func_800BD7FC(void) {
    ? var_s1;
    s32 temp_a0;
    s32 temp_t1;
    s32 temp_t7;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_s0;

    temp_t7 = D_800D6EBC - 1;
    D_800D6EBC = temp_t7;
    if (temp_t7 <= 0) {
        temp_v1 = D_800F4D10;
        D_800D6EBC = 0;
        if (temp_v1 != 0) {
            goto block_2;
        }
        temp_t1 = D_800D6E98 + 1;
        if (gKirbyStars != D_800D6E98) {
            D_800D6E98 = temp_t1;
            if (temp_t1 >= 0x1E) {
                D_800F4D10 = 0;
                gKirbyStars -= 0x1E;
                D_800D6E98 = 0;
                play_sound(1, &gKirbyStars);
                change_kirby_lives(1);
block_2:
                temp_v0 = temp_v1 + 1;
                D_800F4D10 = temp_v0;
                temp_a0 = *(&D_800D55D0 + (temp_v0 * 4));
                D_800D6EBC = temp_a0;
                if (temp_a0 < 0) {
                    D_800F4D10 = 0;
                    D_800D6EBC = 0;
                    return;
                }
                var_s1 = 0;
                if (temp_a0 >= 0xA) {
                    var_s1 = 1;
                }
                var_s0 = 0;
                do {
                    draw_star_segments(var_s0, var_s1);
                    var_s0 += 1;
                } while (var_s0 != 0x1E);
                return;
            }
            D_800D6EBC = 3;
            play_sound(0x117, &gKirbyStars);
            draw_star_segments(D_800D6E98 - 1, 1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BD7FC.s")
#endif

#ifdef MIPS_TO_C

void func_800BD92C(void) {
    ? var_a1;
    s32 temp_t2;
    s32 temp_t6;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_v0;

    if (D_800D6E5C == 0.0f) {
        D_800D6EB8 = 0;
        return;
    }
    if ((D_800D6EAC == D_800D6E94) && (D_800D6E9C != 0)) {
        D_800D6EB8 = 0;
        return;
    }
    var_v0 = D_800D6EB8 + 1;
    D_800D6EB8 = var_v0;
    if (var_v0 >= 3) {
        var_v0 = 1;
        D_800D6EB8 = 1;
    }
    if (var_v0 == 1) {
        var_s0 = 0;
        if (D_800D6E94 == 0) {
            do {
                func_800BD208(var_s0, 0);
                var_s0 += 1;
            } while (var_s0 != 0x1E);
            D_800D6E94 = 0;
            D_800D6EAC = 0;
            return;
        }
        if (D_800D6E9C == 0) {
            play_sound(0xD3, D_800D6E94, &D_800D6E9C);
            temp_t2 = D_800D6EAC + 1;
            var_a1 = 1;
            D_800D6EAC = temp_t2;
            var_s0_2 = temp_t2 - 1;
            if (temp_t2 == 0x1E) {
                D_800D6E9C += 1;
            }
        } else {
            var_a1 = 0;
            if (D_800D6E94 < D_800D6EAC) {
                var_s0_2 = D_800D6EAC - 1;
                D_800D6EAC = var_s0_2;
            } else {
                play_sound(0xD3, 0, &D_800D6E9C);
                var_a1 = 1;
                temp_t6 = D_800D6EAC + 1;
                D_800D6EAC = temp_t6;
                var_s0_2 = temp_t6 - 1;
            }
        }
        func_800BD208(var_s0_2, var_a1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BD92C.s")
#endif

#ifdef MIPS_TO_C

void func_800BDAA8(void) {
    s32 temp_v0;

    temp_v0 = D_800D6E90;
    if (D_800D6EA8 != temp_v0) {
        func_800BD460(0xE4, *(&D_800D55F8 + (temp_v0 * 2)));
        func_800BD460(0x108, *(&D_800D55F9 + (D_800D6E90 * 2)));
    }
    D_800D6EA8 = temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDAA8.s")
#endif

#ifdef MIPS_TO_C

void func_800BDB18(void) {
    s32 temp_s1;
    u32 var_s0;
    u32 var_v0;
    s32 phi_s1;

    temp_s1 = gKirbyStars;
    phi_s1 = temp_s1;
    if (temp_s1 >= 0x1E) {
        do {
            gKirbyStars = temp_s1 - 0x1E;
            change_kirby_lives(1);
            phi_s1 = gKirbyStars;
        } while (gKirbyStars >= 0x1E);
    }
    if ((D_800BE508 != 0) || (D_800BE4FC != 0)) {
        var_s0 = 0;
        var_v0 = gKirbyHp;
        if (var_v0 != 0) {
            do {
                draw_hp_segment(var_s0, 1);
                var_s0 += 1;
                var_v0 = gKirbyHp;
            } while (var_s0 < var_v0);
        }
        D_800D6EA4 = var_v0;
        D_800D6E8C = var_v0;
    }
    draw_kirby_stars(phi_s1);
    D_800D6EB0 = gKirbyStars;
    D_800D6E98 = gKirbyStars;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDB18.s")
#endif

#ifdef MIPS_TO_C

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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDD08.s")
#endif

#ifdef MIPS_TO_C

void func_800BDD68(void) {
    func_800BDAA8();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDD68.s")
#endif

#ifdef MIPS_TO_C
void func_800BDD88(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDD88.s")
#endif

#ifdef MIPS_TO_C
void func_800BDD90(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDD90.s")
#endif

#ifdef MIPS_TO_C

void func_800BDD98(void) {
    D_800D6EA8 = -1;
    D_800D6EA0 = 0;
    D_800D6EB0 = 0;
    D_800D6EAC = 0;
    D_800D6EA4 = 0;
    D_800D6EC0 = 0;
    D_800F4D10 = 0;
    D_800D6EBC = 0;
    D_800D6EB8 = 0;
    D_800D6EB4 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDD98.s")
#endif

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

#ifdef MIPS_TO_C

void func_800BDF2C(void) {
    s32 temp_t7;
    s32 var_a1;
    void *var_a0;
    void *var_v1;

    temp_t7 = D_800D6F50 << 8;
    var_v1 = temp_t7 + &D_800F5770;
    var_a0 = temp_t7 + &D_800F4D70;
    var_a1 = 0;
    do {
        var_a1 += 4;
        var_v1->unk0 = 0xFFFE7961;
        var_a0->unk0 = 0;
        var_v1->unk4 = 0xFFFE7961;
        var_a0->unk4 = 0;
        var_v1->unk8 = 0xFFFE7961;
        var_a0->unk8 = 0;
        var_v1->unkC = 0xFFFE7961;
        var_a0->unkC = 0;
        var_v1 += 0x10;
        var_a0 += 0x10;
    } while (var_a1 != 0x40);
    func_800BDD98(var_a0, var_a1, 0x40);
    D_800F4D14 = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDF2C.s")
#endif

#ifdef MIPS_TO_C

void func_800BDFB8(s32 arg0, s32 arg1, u32 arg2) {
    s32 *var_s1;
    s32 temp_a0;
    u32 var_s0;

    var_s0 = 0;
    if (arg2 != 0) {
        var_s1 = arg0 + (arg1 * 4);
loop_2:
        temp_a0 = *var_s1;
        if (temp_a0 != 0xFFFF) {
            func_800A8BAC(temp_a0);
            var_s0 += 1;
            var_s1 += 4;
            if (var_s0 < arg2) {
                goto loop_2;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BDFB8.s")
#endif

#ifdef MIPS_TO_C

void func_800BE028(s32 arg0, s32 arg1, u32 arg2) {
    s32 *var_s1;
    s32 temp_a0;
    u32 var_s0;

    var_s0 = 0;
    if (arg2 != 0) {
        var_s1 = arg0 + (arg1 * 4);
loop_2:
        temp_a0 = *var_s1;
        if (temp_a0 != 0xFFFF) {
            func_800A8A7C(temp_a0);
            var_s0 += 1;
            var_s1 += 4;
            if (var_s0 < arg2) {
                goto loop_2;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_13/func_800BE028.s")
#endif

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

#ifdef MIPS_TO_C
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
