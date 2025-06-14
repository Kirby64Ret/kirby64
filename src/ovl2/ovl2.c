#include "common.h"

#include "GObj.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "main/object_helpers.h"
#include "main/rdp_reset.h"

extern Gfx D_80123E90[];

#ifdef MIPS_TO_C

void func_800F61A0(void) {
    s32 *temp_s0;
    s32 *var_s3;
    s32 temp_v0;
    s32 var_s2;
    void **temp_s1;
    void *temp_a0;

    func_801114E0();
    if (D_800BE544 <= 0) {
        utilSetPlayerContPad();
        if (D_800D7B68 != 0) {
            func_800F7578();
        }
        var_s3 = &D_800DD710;
        var_s2 = 0;
        do {
            temp_s0 = &D_800DDA90 + var_s2;
            if (*var_s3 != -1) {
                temp_v0 = *temp_s0;
                temp_s1 = D_800DE350 + var_s2;
                if (temp_v0 & 0x38) {
                    temp_a0 = *temp_s1;
                    func_8000A498(temp_a0, temp_v0 & 7, temp_a0->unk10);
                    *temp_s0 = (*temp_s1)->unkC;
                }
            }
            var_s3 += 4;
            var_s2 += 4;
        } while (var_s3 != (&D_800DD710 + 0x13C));
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2/func_800F61A0.s")
#endif

void func_800F629C(void) {
}

#ifdef MIPS_TO_C

void func_800F62A4(s32 arg0) {
    s32 *temp_v0;
    s32 temp_t2;
    s32 var_v0;

    switch (D_800BE4F8) {
        case 2:
            if (D_800D6B24 == 0) {
                auFunc80020C88();
                utilSetRectColorFullScreen(0, 0, 0);
                utilSpawnRect(0, 0x10, 2);
                return;
            }
        default:
            return;
        case 3:
        case 4:
            if (D_800D6B24 == 0) {
                if (func_800F8560() == 2) {
                    func_800BB98C(3, 2);
                    return;
                }
                func_800BB98C(1, 2);
                return;
            }
            break;
        case 7:
            if (D_800D6B24 == 0) {
                if (gGameState == 0x21) {
                    utilSetRectColorFullScreen(0, 0, 0);
                    utilSpawnRect(0, 1, 2);
                    return;
                }
                utilSetRectColorFullScreen(0xFF, 0xFF, 0xFF);
                utilSpawnRect(0, 1, 2);
                return;
            }
            break;
        case 6:
            temp_v0 = &D_800D6B54 + 4;
            temp_t2 = *temp_v0 - 1;
            *temp_v0 = temp_t2;
            if (temp_t2 == 0) {
                func_8011CFE0();
                func_800A74D8();
                utilSetRectColorFullScreen(0, 0, 0);
                utilSpawnRect(0, 0x10, 2);
                return;
            }
            break;
        case 1:
            if (D_800D6F3C >= 2) {
                if (D_800D6F3C == 4) {
                    var_v0 = 0x1000;
                } else {
                    var_v0 = 0x9000;
                }
                if ((*(&D_800D6F3C + 6) & var_v0) && (D_800D6B24 == 0)) {
                    D_800BE4F8 = 0;
                    utilSetRectColorFullScreen(0, 0, 0);
                    utilSpawnRect(0, 0x40, 2);
block_22:
                    D_800D6F38 = 0;
                }
            }
            break;
        case 0:
            goto block_22;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2/func_800F62A4.s")
#endif

#ifdef MIPS_TO_C

void func_800F64B0(void) {
    s32 sp20;
    GObj *temp_v0;
    s32 var_a0;
    s32 var_a1;
    u8 var_v1;
    void *var_v0;

    D_800D6B30 = 0;
    temp_v0 = ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    *(&D_800D6B18 + 8) = temp_v0;
    func_80007C00(&temp_v0->data->next, 10.0f, 10.0f, 310.0f, 182.0f);
    HS64_omMakeGObj(0, func_800F62A4, 0x1A, 0x80000000);
    func_800AE048(0x40);
    func_800AE0F0();
    func_800A6E64();
    func_800A78D0(0);
    if (((D_800BE500 == 6) && (D_800BE504 == 0) && (D_800BE534 == 2)) || ((D_800BE500 == 5) && (D_800BE504 == 3))) {
        func_800A8724(2);
    } else if ((D_800BE500 == 4) && (D_800BE504 == 3) && (D_800BE534 == 3) && (D_800BE508 != 0)) {
        func_800A8724(3);
    } else {
        func_800A8724(0);
    }
    func_800F8274();
    if (func_800F8560() != 9) {
        func_80114CCC();
        func_8010DCDC();
        func_800FF2C8();
    }
    func_8011C838();
    func_800BE098();
    func_800A6BC0(5);
    var_a0 = 0;
    do {
        var_v0 = (D_800D799C->data + var_a0)->unk64;
        var_v1 = var_v0->unk4;
        if (var_v1 == 6) {
            var_v0->unk4 = 0xC;
            var_v0 = (D_800D799C->data + var_a0)->unk64;
            var_v1 = var_v0->unk4;
        }
        var_a0 += 4;
        if (var_v1 == 7) {
            var_v0->unk4 = 0xD;
        }
    } while (var_a0 != 8);
    var_a1 = D_801290D8->unkC;
    switch (var_a1) {                               /* irregular */
        case 39:
            sp20 = var_a1;
            if (func_800B9DF8(2, var_a1, 0xC, 7) != 0) {
                var_a1 = 0xD;
            }
            break;
        case 40:
            sp20 = var_a1;
            if (func_800B9DF8(2, var_a1, 0xC, 7) != 0) {
                var_a1 = 0x12;
            }
            break;
        case 41:
            sp20 = var_a1;
            if (func_800B9DF8(2, var_a1, 0xC, 7) != 0) {
                var_a1 = 8;
            }
            break;
        case 34:
            if (*(&D_800D6E20 + D_800BE508) != 0) {
                var_a1 = D_800D6B48;
            }
            break;
    }
    D_800D6B48 = var_a1;
    if (*(&D_800D6B6C + 4) == 1) {
        var_a1 = D_801290D8->unkC;
    }
    if ((D_800D6F3C >= 3) && (D_800D6F3C != 4)) {
        var_a1 = 0;
    }
    play_music(0, var_a1);
    if (func_800F8560() == 2) {
        func_800BB98C(2, 0);
        return;
    }
    if ((D_800BE508 == 0) && (D_800BE4FC == 0)) {
        func_800BB98C(0, 0);
        return;
    }
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2/func_800F64B0.s")
#endif

#ifdef MIPS_TO_C

void func_800F6830(void) {
    DObj *sp3C;
    ? sp3A;
    DObj *temp_v0;
    s32 temp_v0_2;
    void *temp_v1;

    *(&D_800D6F3C + 4) = gPlayerControllers.unk0;
    *(&D_800D6F3C + 6) = gPlayerControllers.unk2;
    *(&D_800D6F3C + 8) = gPlayerControllers.unk4;
    if (D_800D7B68 != 0) {
        temp_v0 = D_800D799C->data;
        sp3C = temp_v0;
        guLookAtF(&sp40[0], (bitwise f32) temp_v0->scale.mtx, temp_v0->scale.v.x, temp_v0->scale.v.y, temp_v0->scale.v.z, (bitwise f32) temp_v0->unk4C, (bitwise f32) temp_v0->unk50, temp_v0->unk54, (bitwise f32) temp_v0->unk58, (bitwise f32) temp_v0->unk5C);
        func_8001B008(D_800D6ED0, &sp3A, sp3C->pos.v.y, sp3C->pos.v.z, sp3C->angle.mtx, sp3C->angle.a, sp3C->angle.v.x);
        guMtxCatF(&sp40[0], D_800D6ED0, D_800D6ED0);
    }
    temp_v1 = (D_801290D8->unkA * 0xC) + &D_800D478C;
    (*(&D_800D6B18 + 8))->unk3C->unk84 = (temp_v1->unk2 << 8) | (temp_v1->unk0 << 0x18) | (temp_v1->unk1 << 0x10) | 0xFF;
    D_800BE4EC += 1;
    func_800BBF60(&D_800BE4EC);
    if ((D_800BE544 >= 0) && (D_800BE4F8 == 1) && (gKirbyHp != 0.0f)) {
        if (func_800F8560() != 3) {
            if (D_800BE544 == 0) {
                if (*(&gPlayerControllers + 2) & 0x1000) {
                    func_800BB3F0();
                    utilPauseAllGObjs();
                    temp_v0_2 = func_800AEA64(0x27, 0x4A, 0x70);
                    D_800BE544 = temp_v0_2;
                    *(&D_800EC2E0 + (temp_v0_2 * 4)) = 0;
                }
            } else if (D_800BE544 & 0x8000) {
                D_800BE544 = 0;
                utilResumeAllGObjs();
            }
        }
    } else if (D_800BE544 == -9999.0f) {
        D_800BE544 = -0x270F;
    } else if (D_800BE544 < 0) {
        D_800BE544 += 1;
    }
    func_800F61A0();
    omUpdateAll();
    func_800F629C();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2/func_800F6830.s")
#endif

void func_800F6AB0(Gfx **glistp) {
    gSPDisplayList((*glistp)++, D_80123E90);
}

#ifdef MIPS_TO_C

void func_800F6AD4(s32 arg0, ? arg1) {
    ? *var_a0;
    ? *var_v1;
    s32 temp_t0;

    *(&D_800D6B6C + 4) = arg0;
    D_80123EC0.unkC = &D_8012EB00 - 0x1900;
    viApplyScreenSettings(&D_80123EC0, arg0);
    var_v1 = &D_803D6900;
    var_a0 = &gFrameBuffer;
    do {
        var_a0->unk0 = 1;
        var_v1->unk3F00 = 1;
        var_a0->unk2 = 1;
        var_v1->unk3F02 = 1;
        var_a0->unk4 = 1;
        var_v1->unk3F04 = 1;
        var_a0->unk6 = 1;
        var_v1 += 8;
        var_v1->unk3EFE = 1;
        var_a0 += 8;
    } while (var_v1 != &D_803FC100);
    temp_t0 = &gFrameBuffer - &D_8022FB50;
    D_80123F68.unk10 = temp_t0;
    D_80123EEC = temp_t0;
    *(&D_800D6F58 + 0x50) = 0;
    D_8012D920 = 0;
    *(&D_800D6F58 + 0x54) = 0;
    D_800D7B80 = 0;
    D_800D7B7C = 0;
    D_800D7B78 = 0;
    func_800A41B0(0x40000000, &D_800D7B7C, &D_803FC100);
    if ((D_800BE500 == 6) && (D_800BE504 == 0) && (D_800BE534 == 2)) {
        gtlCreateScene(&D_80123F68);
    } else {
        gtlCreateScene(&D_80123EDC);
    }
    func_800F7484(D_800BE508);
    func_800BB3F0();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2/func_800F6AD4.s")
#endif
