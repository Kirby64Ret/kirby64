#include "common.h"

#include "GObj.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "main/object_helpers.h"
#include "main/rdp_reset.h"
#include "main/vi.h"
#include "main/gtl.h"

extern Gfx D_80123E90[];
void gameSetUpdateRate(f32);

extern s32 D_800DD710[];
extern s32 D_800DD84C;
extern u32 D_800DDA90[];
extern s32 D_800BE544;
extern s32 D_800D7B68;
void func_801114E0(void);
void func_800F7578(void);
void func_8000A498(GObj *, u8, s32);

void func_800F61A0(void) {
    s32 *p;
    s32 i;
    u32 *q;
    GObj **g;
    u32 v;

    func_801114E0();
    if (D_800BE544 <= 0) {
        utilSetPlayerContPad();
        if (D_800D7B68 != 0) {
            func_800F7578();
        }
        for (i = 0, p = D_800DD710; ; ) {
            q = (u32 *)((u8 *)D_800DDA90 + i);
            if (*p != -1) {
                v = *q;
                g = (GObj **)((u8 *)D_800DE350 + i);
                if (v & 0x38) {
                    func_8000A498(*g, v & 7, (*g)->pri);
                    *q = (*g)->link;
                }
            }
            p++;
            i += 4;
            if (p == &D_800DD84C) {
                break;
            }
        }
    }
}

void func_800F629C(void) {
}

extern s32 D_800BE4F8;
extern s32 D_800D6B24;
extern s32 D_800D6F3C;
extern s32 D_800D6F38;
extern s32 D_800D6B58;
extern u16 D_800D6F42;
void auFunc80020C88(void);
s32 func_800F8560(void);
void func_800BB98C(s32, s32);
void func_8011CFE0(void);
void func_800A74D8(void);

void func_800F62A4(UNUSED s32 arg0) {
    s32 mask;

    switch (D_800BE4F8) {
        case 2:
            if (D_800D6B24 == 0) {
                auFunc80020C88();
                utilSetRectColorFullScreen(0, 0, 0);
                utilSpawnRect(0, 0x10, 2);
            }
            break;
        case 3:
        case 4:
            if (D_800D6B24 == 0) {
                if (func_800F8560() == 2) {
                    func_800BB98C(3, 2);
                } else {
                    func_800BB98C(1, 2);
                }
            }
            break;
        case 7:
            if (D_800D6B24 == 0) {
                if (gGameState == 0x21) {
                    utilSetRectColorFullScreen(0, 0, 0);
                    utilSpawnRect(0, 1, 2);
                } else {
                    utilSetRectColorFullScreen(0xFF, 0xFF, 0xFF);
                    utilSpawnRect(0, 1, 2);
                }
            }
            break;
        case 6:
            if (--D_800D6B58 == 0) {
                func_8011CFE0();
                func_800A74D8();
                utilSetRectColorFullScreen(0, 0, 0);
                utilSpawnRect(0, 0x10, 2);
            }
            break;
        case 1:
            if (D_800D6F3C >= 2) {
                if (D_800D6F3C == 4) {
                    mask = 0x1000;
                } else {
                    mask = 0x9000;
                }
                if ((D_800D6F42 & mask) && (D_800D6B24 == 0)) {
                    D_800BE4F8 = 0;
                    utilSetRectColorFullScreen(0, 0, 0);
                    utilSpawnRect(0, 0x40, 2);
                    D_800D6F38 = 0;
                }
            }
            break;
        case 0:
            D_800D6F38 = 0;
            break;
    }
}

#ifdef MIPS_TO_C

void func_800F64B0(void) {
    s32 sp20;
    GObj *temp_v0;
    s32 var_a0;
    s32 music;
    u8 var_v1;
    void *var_v0;

    D_800D6B30 = 0;
    temp_v0 = ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    *(&D_800D6B18 + 8) = temp_v0;
    func_80007C00(&temp_v0->data.dobj->next, 10.0f, 10.0f, 310.0f, 182.0f);
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
        var_v0 = (D_800D799C->data.dobj + var_a0)->unk64;
        var_v1 = var_v0->unk4;
        if (var_v1 == 6) {
            var_v0->unk4 = 0xC;
            var_v0 = (D_800D799C->data.dobj + var_a0)->unk64;
            var_v1 = var_v0->unk4;
        }
        var_a0 += 4;
        if (var_v1 == 7) {
            var_v0->unk4 = 0xD;
        }
    } while (var_a0 != 8);
    music = D_801290D8->unkC;
    switch (music) {                               /* irregular */
        case 39:
            if (func_800B9DF8(2, music, 0xC, 7) != 0) {
                music = 0xD;
            }
            break;
        case 40:
            if (func_800B9DF8(2, music, 0xC, 7) != 0) {
                music = 0x12;
            }
            break;
        case 41:
            if (func_800B9DF8(2, music, 0xC, 7) != 0) {
                music = 8;
            }
            break;
        case 34:
            if (*(&D_800D6E20 + D_800BE508) != 0) {
                music = D_800D6B48;
            }
            break;
    }
    D_800D6B48 = music;
    if (*(&D_800D6B6C + 4) == 1) {
        music = D_801290D8->unkC;
    }
    if ((D_800D6F3C >= 3) && (D_800D6F3C != 4)) {
        music = 0;
    }
    play_music(0, music);
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
        temp_v0 = D_800D799C->data.dobj;
        sp3C = temp_v0;
        guLookAtF(&sp40[0], (bitwise f32) temp_v0->scale.mtx, temp_v0->scale.v.x, temp_v0->scale.v.y, temp_v0->scale.v.z, (bitwise f32) temp_v0->unk4C, (bitwise f32) temp_v0->unk50, temp_v0->unk54, (bitwise f32) temp_v0->unk58, (bitwise f32) temp_v0->unk5C);
        HS64_PerspectiveF(D_800D6ED0, &sp3A, sp3C->pos.v.y, sp3C->pos.v.z, sp3C->angle.mtx, sp3C->angle.a, sp3C->angle.v.x);
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

// The vu16 casts in the clear loop are load-bearing: without volatile IDO
// hoists the D_803D6900 induction bump to the top of the 4x-unrolled body,
// where the ROM keeps it before the last store (see ovl5_7 func_8017CC3C_ovl5).
// The chained store into D_80123EEC / heapSize is load-bearing too: two plain
// statements fold the struct base into the store displacement instead of
// materialising it into $v0.
// verify.py reports 1 reloc false positive on the loop bound: IDO emits
// %hi(D_803D6900)+2 / %lo+0x5800, which links to 0x803FC100 exactly.
void func_800F6AD4(s32 arg0, s32 arg1) {
    extern u16 gFrameBuffer[][320];
    extern u16 D_8012EB00[][320];
    extern u16 D_803D6900[];
    extern void *D_8022FB50;
    extern ScreenSettings D_80123EC0;
    extern SceneSetup D_80123F68;
    extern SceneSetup D_80123EDC;
    extern s32 D_80123EEC;
    extern s32 D_800D6B6C;
    extern s32 D_800D6FA8;
    extern s32 D_800D6FAC;
    extern s32 D_8012D920;
    extern s32 D_800D7B78;
    extern s32 D_800D7B7C;
    extern s32 D_800D7B80;
    extern s32 D_800BE500;
    extern s32 D_800BE504;
    extern s32 D_800BE508;
    extern s32 D_800BE534;
    s32 i;
    s32 heap;

    *(s32 *) ((u8 *) &D_800D6B6C + 4) = arg0;
    D_80123EC0.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_80123EC0);
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    heap = (u8 *) gFrameBuffer - (u8 *) &D_8022FB50;
    D_80123EEC = D_80123F68.gtlSetup.heapSize = heap;
    D_800D6FA8 = 0;
    D_8012D920 = 0;
    D_800D6FAC = 0;
    D_800D7B78 = D_800D7B7C = D_800D7B80 = 0;
    gameSetUpdateRate(2.0f);
    if ((D_800BE500 == 6) && (D_800BE504 == 0) && (D_800BE534 == 2)) {
        gtlCreateScene(&D_80123F68);
    } else {
        gtlCreateScene(&D_80123EDC);
    }
    func_800F7484(D_800BE508);
    func_800BB3F0();
}
