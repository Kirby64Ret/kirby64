#include "common.h"

#include <PR/gbi.h>
#include "GObj.h"
#include "main/audio.h"
#include "ovl1_2.h"
#include "ovl1_2_2.h"

typedef struct Ovl1Emitter {
    /* 0x00 */ struct Ovl1Emitter *next;
    /* 0x04 */ Vector unk4;
    /* 0x10 */ Vector unk10;
} Ovl1Emitter;

typedef struct Ovl1Generator {
    /* 0x00 */ u8 pad0[0x14];
    /* 0x14 */ Vector pos;
    /* 0x20 */ u8 pad20[0x2C];
    /* 0x4C */ Ovl1Emitter *xf;
} Ovl1Generator;

typedef struct SoundHandle {
    char unk00[0x26];
    u16 unk26;
} SoundHandle;

extern u16 D_800C0530[];
extern s32 D_8012D920;
extern Gfx *gDisplayListHeads[4];
void func_8009E8F4(s32, u32, Gfx **);
extern GObj *D_800D6FB4;
extern GObj *D_800D6FB8;

s32 func_80020EB4(void);
s32 func_80020BB8(s32);
void func_80023A28(SoundHandle *);
s32 func_800A9AA8(s32, s32);
void func_8009B768(s32, s32, s32);
Ovl1Generator *func_800A19EC(s32, s32);
void func_8009B72C(Ovl1Generator *, u8);
extern s32 D_800D6B44;
extern s16 D_800BFFC0[];
s32 play_music(s32, s32);
void func_800A7A70(s32, s32, s32);

extern u8 sMusicNames[][0x18];
extern u8 sSoundNames[][0x18];
extern s16 D_800C0040[];

void func_800A74B0(void) {
    do {
    } while (func_80020EB4() != 0);
}

void func_800A74D8(void) {
    auFunc80020C88();
    play_music(0, 0x99999999);
    while (func_80020BB8(0) != 0) {
    }
    auSetBGMVolume(0, 0x7800);
    sMusicCount = D_800C0530[0] - 1;
    sSoundCount = D_800C0530[1];
}

void func_800A7554(void) {
    auFunc80020C88();
    play_music(0, 0x99999999);
    auSetBGMVolume(0, 0x7800);
    sMusicCount = D_800C0530[0] - 1;
    sSoundCount = D_800C0530[1];
}

s32 play_music(s32 arg0, s32 arg1) {
    u32 songID;

    if (arg1 == D_800D6B44) {
        return 0;
    }
    if (arg1 == 0x99999999) {
        auStopBGM(arg0);
        D_800D6B44 = arg1;
    } else if (arg1 == 0x80000000) {
        auStopSong(arg0);
        D_800D6B44 = arg1;
    } else {
        D_800D6B44 = arg1;
        songID = D_800BFFC0[arg1];
        if ((s32) D_800BFFC0[arg1] >= 0) {
            return auPlaySong(arg0, songID);
        }
        if (arg1 == 0) {
            return 0;
        }
        utilPrintf("Error: No Entry BGM Number: %d\n", arg1);
    }
    return 0;
}

void play_sound(s32 arg0) {
    if (arg0 == 0x99999999) {
        utilPrintf("use AllStopFGM macro.\n", arg0);
        return;
    }
    if (arg0 & 0x80000000) {
        utilPrintf("use stopLoopSeml function.\n", arg0);
        return;
    }
    if (D_800C0040[arg0] >= 0) {
        func_80023CB0((u16)D_800C0040[arg0]);
        return;
    }
    utilPrintf("Error: No Entry FGM Number: %d\n", arg0);
}

s32 sound_str_atoi(u8 *str) {
    return ((str[0] * 100) + (str[1] * 10) + (str[2] * 1))
         - ((   '0' * 100) + (   '0' * 10) + (   '0' * 1));
}

s32 get_music_id_from_index(s32 idx) {
    if (idx < 0 || idx >= sMusicCount) {
        return -1;
    }
    return sound_str_atoi(sMusicNames[idx]);
}

s32 get_sound_id_from_index(s32 idx) {
    if (idx < 0 || idx >= sSoundCount) {
        return -1;
    }
    return sound_str_atoi(sSoundNames[idx]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A77E8.s")

void func_800A7870(SoundHandle **arg0, u16 *arg1) {
    SoundHandle *obj;

    obj = *arg0;
    if ((obj != NULL) && (*arg1 != 0) && (obj->unk26 == *arg1)) {
        func_80023A28(obj);
    }
    *arg0 = NULL;
    *arg1 = 0;
}

extern s32 D_800D6A38[];
extern s32 D_800D6AB8[];
extern s32 D_800D6AD8[];
GObj *func_8009B99C(s32);
GObj *func_800A04B8(s32);
void func_8009E834(void);
void func_800A09AC(void);
s32 func_8009B550(s32, s32);
void func_800A7ABC(s32);

void func_800A78D0(s32 arg0) {
    GObj *obj;
    s32 *p;

    D_800D6FB4 = func_8009B99C(0x100);
    D_800D6FB8 = func_800A04B8(0x40);
    omGDeleteObj(D_800D6FB4);
    omGDeleteObj(D_800D6FB8);
    D_800D6FB4 = D_800D6FB8 = HS64_omMakeGObj(-7, 0, 0x18, 0);
    omCreateProcess(D_800D6FB8, &func_8009E834, 1, 0);
    omCreateProcess(D_800D6FB8, &func_800A09AC, 1, 0);
    omCreateProcess(D_800D6FB8, &func_8009E834, 1, 0);
    omCreateProcess(D_800D6FB8, &func_800A09AC, 1, 0);
    obj = HS64_omMakeGObj(0, 0, 0x18, 0x80000000);
    omLinkGObjDL(obj, &func_800A7ABC, 0x10, 0xC, -1);
    obj->dlLinkBitMask = 0xF;
    func_8009B550(0x10, 0xBC);
    for (arg0 = 0; arg0 < 8; arg0++) {
        D_800D6AB8[arg0] = 0;
    }
    for (arg0 = 0; arg0 < 8; arg0++) {
        D_800D6A38[arg0] = 0;
    }
}

void func_800A7A40(void) {
    func_800A7A70(1, 0x30007, 0x30008);
}

void func_800A7A70(s32 arg0, s32 arg1, s32 arg2) {
    s32 tmp;

    tmp = func_800A9AA8(arg1, 3);
    func_8009B768(arg0, tmp, func_800A9AA8(arg2, 3));
}

void func_800A7ABC(s32 arg0) {
    if (D_8012D920 != 1) {
        gDPPipeSync(gDisplayListHeads[1]++);
        gDPSetCycleType(gDisplayListHeads[1]++, G_CYC_1CYCLE);
        gDPPipelineMode(gDisplayListHeads[1]++, G_PM_1PRIMITIVE);
        gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_NOOP2);
        func_8009E8F4(arg0, 3, &gDisplayListHeads[1]);
        gDPPipeSync(gDisplayListHeads[1]++);
        gDPSetColorDither(gDisplayListHeads[1]++, G_CD_MAGICSQ);
        gDPSetAlphaDither(gDisplayListHeads[1]++, G_AD_DISABLE);
        gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_NOOP2);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7BF4.s")

void func_800A7E48(s32 arg0) {
    GObj *obj;
    u32 mask;

    obj = D_800D6FB4;
    mask = 0x10000 << arg0;
    obj->flags |= mask;
    D_800D6FB8->flags |= mask;
}

void func_800A7E7C(s32 arg0) {
    GObj *obj;
    u32 mask;

    obj = D_800D6FB4;
    mask = 0x10000 << arg0;
    obj->flags &= ~mask;
    D_800D6FB8->flags &= ~mask;
}

void func_800A7EB4(void) {
    D_800D6FB4->flags |= 0xFFFF0000;
    D_800D6FB8->flags |= 0xFFFF0000;
}

void func_800A7EE4(void) {
    D_800D6FB4->flags &= 0xFFFF;
    D_800D6FB8->flags &= 0xFFFF;
}

s32 func_800A7F10(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp;

    if ((D_800D6FB8->flags & (0x10000 << arg1)) == 0) {
        temp = (s32) func_800A19EC((arg1 * 8) | arg0, arg2);
        if (temp == 0) {
            return 0;
        } else {
            return temp;
        }
    }
    return 0;
}

Ovl1Generator *func_800A7F74(s32 arg0, s32 arg1, s32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    Ovl1Generator *gen;

    if ((D_800D6FB8->flags & (0x10000 << arg1)) == 0) {
        gen = func_800A19EC((arg1 * 8) | arg0, arg2);
        if (gen != NULL) {
            if (gen->xf != NULL) {
                gen->xf->unk4.x = arg3;
                gen->xf->unk4.y = arg4;
                gen->xf->unk4.z = arg5;
            } else {
                gen->pos.x = arg3;
                gen->pos.y = arg4;
                gen->pos.z = arg5;
            }
            return gen;
        } else {
            return NULL;
        }
    }
    return NULL;
}

Ovl1Generator *func_800A802C(s32 arg0, s32 arg1, s32 arg2, Vector *arg3, Vector *arg4) {
    Ovl1Generator *gen;

    if ((D_800D6FB8->flags & (0x10000 << arg1)) == 0) {
        gen = func_800A19EC((arg1 * 8) | arg0, arg2);
        if (gen != NULL) {
            if (gen->xf != NULL) {
                gen->xf->unk4 = *arg3;
                gen->xf->unk10 = *arg4;
            } else {
                gen->pos.x = arg3->x;
                gen->pos.y = arg3->y;
                gen->pos.z = arg3->z;
            }
            return gen;
        } else {
            return NULL;
        }
    }
    return NULL;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A8100.s")

Ovl1Generator *func_800A8234(s32 arg0, s32 arg1, s32 arg2) {
    Ovl1Generator *gen;

    if ((D_800D6FB8->flags & (0x10000 << arg1)) == 0) {
        gen = func_800A19EC((arg1 * 8) | arg0, arg2);
        if (gen == NULL) {
            return NULL;
        } else {
            if (gen->xf == NULL) {
                func_8009B72C(gen, 0);
            }
            return gen;
        }
    }
    return NULL;
}
