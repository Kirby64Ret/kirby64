#include "common.h"
#include "GObj.h"
#include "SPObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/save_file.h"

extern Gfx D_801874A0_ovl5[];
extern u8 D_8018EA00_ovl5[];
extern Vector2 D_8018ECB8_ovl5[];
extern f32 D_8018EB48_ovl5[];
void play_music(s32, s32);
void func_800BB3F0(void);
extern f32 D_80187C94_ovl5[];
extern s32 D_8018E998_ovl5[];
extern u8 D_8018EB58_ovl5[];
extern s32 D_8018E458_ovl5[];
extern s32 D_8018E468_ovl5[];
extern s32 D_80187C34_ovl5[][2];
s32 func_80171538_ovl5(s32);
extern s32 D_8018E478_ovl5[][82];
/* "Bad LastStep...%d\n" is this TU's own .rodata now; the literal is at its use */
/* "Bad nextStep poxZ\n" likewise */
extern struct GObjProcess *gEntityGObjProcessArray5[];
void func_80175F50_ovl5(GObj *);
extern u8 D_80187898_ovl5[];
void *func_8015C740_ovl5(GObj *, void *);
u8 func_80172B10_ovl5(s32, s32);
s32 func_80175B70_ovl5(s32);
s32 func_80175B8C_ovl5(s32);
s32 func_80175BB0_ovl5(s32);
void func_80175AD0_ovl5(s32, s32, s32, s32);
typedef union Unk28Words {
    s32 unk0[10];
} Unk28Words;

extern Unk28Words D_801873A0_ovl5;
void func_800AD1A0(GObj *);
extern s32 D_8018ECA8_ovl5[];
typedef struct Unk801875F0 {
    s32 unk0;
    s32 unk4;
} Unk801875F0;
extern Unk801875F0 D_801875F0_ovl5[];
void play_sound(s32);
s32 random_soft_s32_range(s32);

void func_8016FD78_ovl5(GObj *);
void func_80171950_ovl5(GObj *, s32);
void func_80172C7C_ovl5(GObj *, s32, s32, f32);
void func_80173A38_ovl5(GObj *, s32, s32);
void func_80174044_ovl5(GObj *, s32);
void func_80174368_ovl5(GObj *, s32);
void func_8017462C_ovl5(GObj *, s32, s32);
void func_80174AE0_ovl5(GObj *, s32, s32);
void func_8017559C_ovl5(GObj *, s32, s32);
void func_801758AC_ovl5(GObj *);
void func_80175A28_ovl5(GObj *);
void func_80175DBC_ovl5(GObj *);
void func_80175E98_ovl5(GObj *);
void func_80176170_ovl5(GObj *);
void func_80176A80_ovl5(GObj *);
void func_80176F04_ovl5(GObj *, s32);

void func_8016FB80_ovl5(GObj *arg0) {
    s32 kind = D_800E98E0[omCurrentObj->objId];

    switch (kind) {
        case 1:
            func_8016FD78_ovl5(arg0);
            break;
        case 3:
        case 4:
        case 5:
        case 6:
            func_80171950_ovl5(arg0, kind - 3);
            break;
        case 7:
            func_80175A28_ovl5(arg0);
            break;
        case 8:
            func_80175DBC_ovl5(arg0);
            break;
        case 2:
            func_80172C7C_ovl5(arg0, D_800E9AA0[omCurrentObj->objId].as_s32,
                               D_800E9C60[omCurrentObj->objId], D_800EA6E0[omCurrentObj->objId]);
            break;
        case 9:
            func_80174044_ovl5(arg0, D_800E9AA0[omCurrentObj->objId].as_s32);
            break;
        case 0xA:
            func_80174368_ovl5(arg0, D_800E9AA0[omCurrentObj->objId].as_s32);
            break;
        case 0xB:
            func_8017462C_ovl5(arg0, D_800E9AA0[omCurrentObj->objId].as_s32,
                               D_800E9C60[omCurrentObj->objId]);
            break;
        case 0xC:
            func_80174AE0_ovl5(arg0, D_800E9AA0[omCurrentObj->objId].as_s32,
                               D_800E9C60[omCurrentObj->objId]);
            break;
        case 0xD:
            func_8017559C_ovl5(arg0, D_800E9AA0[omCurrentObj->objId].as_s32,
                               D_800E9C60[omCurrentObj->objId]);
            break;
        case 0xE:
            func_80175E98_ovl5(arg0);
            break;
        case 0xF:
            func_801758AC_ovl5(arg0);
            break;
        case 0x10:
            func_80173A38_ovl5(arg0, D_800E9AA0[omCurrentObj->objId].as_s32,
                               D_800E9C60[omCurrentObj->objId]);
            break;
        case 0x11:
            func_80176A80_ovl5(arg0);
            break;
        case 0x12:
            func_80176F04_ovl5(arg0, D_800E9AA0[omCurrentObj->objId].as_s32);
            break;
        case 0:
            func_80176170_ovl5(arg0);
            break;
    }
}

void func_8016FD54_ovl5(void) {
    play_music(0, 0x3E);
}

typedef struct Unk8Pair {
    s32 unk0;
    s32 unk4;
} Unk8Pair;

extern u8 D_8018ECD8_ovl5;
extern s32 D_80187CF4_ovl5[];
extern Unk8Pair D_80187D04_ovl5[];
void func_800A9F98(s32, f32);
void func_800AA018(s32);

void func_8016FD78_ovl5(GObj *arg0) {
    void func_800A9864(s32, s32, s32);

    if (D_8018ECD8_ovl5 == 3) {
        func_800A9864(D_80187CF4_ovl5[D_8018ECD8_ovl5], 0x2D, 0x10);
    } else {
        func_800A9864(D_80187CF4_ovl5[D_8018ECD8_ovl5], 0x1869F, 0x10);
    }
    if (D_8018ECD8_ovl5 == 3) {
        if (D_80187D04_ovl5[D_8018ECD8_ovl5].unk0 != 0) {
            func_800AA018(D_80187D04_ovl5[D_8018ECD8_ovl5].unk0);
        }
        if (D_80187D04_ovl5[D_8018ECD8_ovl5].unk4 != 0) {
            func_800AA018(D_80187D04_ovl5[D_8018ECD8_ovl5].unk4);
        }
    } else {
        if (D_80187D04_ovl5[D_8018ECD8_ovl5].unk0 != 0) {
            func_800A9F98(D_80187D04_ovl5[D_8018ECD8_ovl5].unk0, D_8018ECD8_ovl5);
        }
        if (D_80187D04_ovl5[D_8018ECD8_ovl5].unk4 != 0) {
            func_800A9F98(D_80187D04_ovl5[D_8018ECD8_ovl5].unk4, D_8018ECD8_ovl5);
        }
        if (D_8018ECD8_ovl5 == 0) {
            animUpdateModelTreeAnimation(arg0);
        }
        animResetTextureAnimation(arg0);
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    omGMoveObjDL(arg0, arg0->dl_link, 0x14);
    curObjSleepForever();
}

Vector2 *func_8016FF60_ovl5(Vector2 *arg0, s32 arg1) {
    *arg0 = D_8018ECB8_ovl5[arg1];
    return arg0;
}

s32 func_8016FF88_ovl5(s32 arg0) {
    if (arg0 == 0xF || arg0 == 0x10 || arg0 == 0x11 || arg0 == 0x12 || arg0 == 0x13) {
        return 1;
    }
    return 0;
}

s32 func_8016FFC4_ovl5(s32 arg0) {
    if (arg0 == 0xA || arg0 == 0x13) {
        return 1;
    }
    return 0;
}

void func_8016FFE8_ovl5(s32 arg0, s32 arg1, f32 arg2) {
    gEntitiesNextPosZArray[D_8018E478_ovl5[arg0][arg1]] += arg2;
    if (func_8016FF88_ovl5(func_80172B10_ovl5(arg0, arg1)) != 0) {
        if (D_800EA520[D_8018E478_ovl5[arg0][arg1]] != 0x29A) {
            D_800EA6E0[D_800EA520[D_8018E478_ovl5[arg0][arg1]]] = arg2;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170098_ovl5.s")

s32 func_80170464_ovl5(s32 arg0, s32 arg1) {
    s32 id = D_8018E478_ovl5[arg0][arg1];
    u8 kind = func_80172B10_ovl5(arg0, arg1);
    f32 temp;

    switch (kind) {
        case 0xC:
            temp = D_800DE350[id]->animTimer + 24.0f;
            if (172.0f < temp) {
                temp -= 172.0f;
            }
            if (((0.0f <= temp) && (temp <= 88.0f)) || ((154.0f <= temp) && (temp <= 172.0f))) {
                return 1;
            }
            return 0;
        case 4:
        case 5:
        case 0xA:
        case 0x13:
        case 0x15:
        case 0x16:
        case 0x18:
            return 0;
    }
    return 1;
}

s32 func_80170584_ovl5(s32 arg0, s32 arg1) {
    u8 kind = func_80172B10_ovl5(arg0, arg1);
    s32 id = D_8018E478_ovl5[arg0][arg1];
    f32 temp;

    switch (kind) {
        case 0xC:
            temp = D_800DE350[id]->animTimer;
            if (((0.0f <= temp) && (temp <= 88.0f)) || ((154.0f <= temp) && (temp <= 172.0f))) {
                return 1;
            }
            return 0;
        case 4:
        case 5:
        case 0xA:
        case 0x13:
        case 0x15:
        case 0x16:
        case 0x18:
            return 0;
    }
    return 1;
}

#ifdef NON_MATCHING
/* 48/75: the loop body is instruction-for-instruction correct, but $s0 and $s1
   are swapped -- the ROM puts the loop counter in $s0 and the strength-reduced
   D_8018E478_ovl5 pointer in $s1, this C gets the opposite -- and the early
   `return 0x29A` comes out as bnez/nop/b/li instead of the ROM's single beql
   with the constant in the delay slot (2 instructions long). Swept: all three
   declaration orders, a dead scalar, and an explicit `s32 *p` walked with
   `i--, p--` (that one hoists the address computation above the bltz: 71). */
s32 func_8017068C_ovl5(s32 arg0, s32 arg1) {
    s32 i;
    s32 temp;

    for (i = arg1; i >= 0; i--) {
        if (D_8018E478_ovl5[arg0][i] == 0) {
            return 0x29A;
        }
        if (func_8016FF88_ovl5(func_80172B10_ovl5(arg0, i)) != 0) {
            temp = D_800EA520[D_8018E478_ovl5[arg0][i]];
            if (temp != 0x29A) {
                if (arg1 == D_800E9E20[temp] + i) {
                    if (D_800EA1A0[temp] == 0) {
                        return temp;
                    }
                }
            }
        }
    }
    return 0x29A;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017068C_ovl5.s")
#endif

s32 func_801707B0_ovl5(s32 arg0) {
    Vector2 sp18;

    func_8016FF60_ovl5(&sp18, arg0);
    if (D_800DFF50[D_8018E458_ovl5[arg0]] == D_80187C34_ovl5[*(s32 *) &sp18][0]) {
        return 1;
    }
    return 0;
}

s32 func_80170820_ovl5(s32 arg0) {
    s32 i;

    for (i = D_8018E998_ovl5[arg0] - 1; i >= 0; i--) {
        if (D_8018EB58_ovl5[(arg0 * 0x52) + i] != 0) {
            return i;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170884_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017113C_ovl5.s")

#ifdef NON_MATCHING
/* Faithful, not byte-exact (105/106). The ROM parks all sixteen compare
   constants in saved registers -- including $ra -- for a frame of 0x40; this
   C needs one more register and 0x48, which shifts every save slot. */
extern u8 D_8018EB58_ovl5[];
extern u8 D_8018EA00_ovl5[];
extern char D_8018D780_ovl5[];

s32 func_80171538_ovl5(s32 arg0) {
    s32 i;
    u8 *p;
    u8 v;

    i = D_8018E998_ovl5[arg0];
    if (i >= 0) {
        p = &D_8018EB58_ovl5[(arg0 * 0x52) + i];
        do {
            if (*p != 0) {
                v = D_8018EA00_ovl5[(arg0 * 0x52) + i];
                if ((v != 4) && (v != 5) && (v != 6) && (v != 7) && (v != 8) && (v != 9) && (v != 0xA) &&
                    (v != 0xB) && (v != 0xC) && (v != 0x11) && (v != 0x12) && (v != 0x13) && (v != 0x15) &&
                    (v != 0x16) && (v != 0x17) && (v != 0x18)) {
                    return i;
                }
            }
            i--;
            p--;
        } while (i >= 0);
    }
    utilPrintf(D_8018D780_ovl5, arg0);
    return i;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171538_ovl5.s")
#endif

s32 func_801716E0_ovl5(s32 arg0) {
    s32 i;
    s32 temp;
    s32 count;

    count = 0;
    for (i = 0; i != 4; i++) {
        if (i != arg0) {
            temp = func_80171538_ovl5(arg0);
            if (temp < func_80171538_ovl5(i)) {
                count++;
            }
        }
    }
    return count;
}

s32 func_80171768_ovl5(s32 arg0) {
    s32 count = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((arg0 != i) && (D_8018E998_ovl5[i] == 0x51) && (D_8018E468_ovl5[i] < D_8018E468_ovl5[arg0])) {
            count++;
        }
    }
    return count;
}

s32 func_80171868_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((D_8018E998_ovl5[i] != 0x51) || (D_800E9C60[D_8018E458_ovl5[i]] != 0)) {
            return 0;
        }
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171950_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171E6C_ovl5.s")

// Draft, 2/61: with THESE three locals every spill slot is exact (0x1C/20/24)
// and only the frame differs, 0x30 vs 0x28. Re-measured 2026-08-12: dropping a
// local fixes the frame but moves the spills (5-8 diffs). The states never meet.
#ifdef NON_MATCHING
void func_801720D8_ovl5(s32 arg0) {
    s32 pad;
    Unk801875F0 *p;
    s32 temp = D_8018ECA8_ovl5[arg0];

    play_sound(0xBA);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800E9C60[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_s32;
    D_8018E998_ovl5[arg0]++;
    p = &D_801875F0_ovl5[temp];
    D_800E98E0[omCurrentObj->objId] = (random_soft_s32_range(p->unk4) + p->unk0) * 0.5f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801720D8_ovl5.s")
#endif
/* Draft, 5/88: instruction-exact except the frame (0x28 vs ROM 0x20) and one
   `addu $t7, $v0, $t0` whose operands IDO emits swapped. The frame is the same
   +8 anomaly as its sibling func_801720D8_ovl5 above and never shrinks: swept
   0/1/2/3 declared locals in every position, leading/trailing/middle pads, u8
   pads, pointer vs index for both values -- every pad adds 8, nothing removes
   it. The addu survived operand swap, a temp local for the call result, an
   explicit (s32)(f32) cast and `/ 2.0f`. */
#ifdef NON_MATCHING
void func_801721CC_ovl5(s32 arg0) {
    s32 *q = &D_8018E998_ovl5[arg0];
    s32 temp = D_8018ECA8_ovl5[arg0];

    if (*q == 0x50) {
        play_sound(0xBA);
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
        D_800E9C60[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_s32;
        (*q)++;
    } else {
        play_sound(0xBA);
        D_800E9FE0[omCurrentObj->objId].as_s32 = 2;
        D_800E9C60[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_s32;
        *q += 2;
    }
    D_800E98E0[omCurrentObj->objId] = (random_soft_s32_range(D_801875F0_ovl5[temp].unk4) + D_801875F0_ovl5[temp].unk0) * 0.5f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801721CC_ovl5.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017232C_ovl5.s")

u8 func_80172B10_ovl5(s32 arg0, s32 arg1) {
    return D_8018EA00_ovl5[arg0 * 82 + arg1];
}

Vector *func_80172B38_ovl5(Vector *arg0, s32 arg1, s32 arg2) {
    Vector sp4;

    sp4.x = D_80187C94_ovl5[arg1];
    sp4.y = 0.0f;
    sp4.z = arg2 * 450.0f;
    *arg0 = sp4;
    return arg0;
}

Vector func_80172B98_ovl5(s32 arg1, s32 arg2) {
    Vector sp1C;

    sp1C.x = gEntitiesNextPosXArray[D_8018E478_ovl5[arg1][arg2]];
    sp1C.y = gEntitiesNextPosYArray[D_8018E478_ovl5[arg1][arg2]];
    sp1C.z = gEntitiesNextPosZArray[D_8018E478_ovl5[arg1][arg2]];
    if (sp1C.z == 0.0f) {
        utilPrintf("Bad nextStep poxZ\n");
    }
    return sp1C;
}

s32 func_80172C50_ovl5(s32 arg0) {
    if (arg0 == 0x14 || arg0 == 0x28 || arg0 == 0x3C) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80172C7C_ovl5.s")

void func_80173564_ovl5(GObj *arg0) {
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E9C60[omCurrentObj->objId]];
}

void func_801735A4_ovl5(void) {
    s32 t;
    s32 t2;
    s32 j;
    u32 i;
    s32 kind;
    Vector sp48;

    for (i = 0; i != 4; i++) {
        for (j = 0; j != 0xC; j++) {
            t = request_track_general(8, 0, 0x70);
            D_800E98E0[t] = 2;
            D_800E9AA0[t].as_u32 = i;
            D_800E9C60[t] = j;
            func_80172B38_ovl5(&sp48, i, j);
            D_800EA6E0[t] = sp48.z;
            kind = func_80172B10_ovl5(i, j);
            if ((kind == 0xD) || (kind == 0xE)) {
                t2 = request_track_general(8, 0, 0x70);
                D_800E98E0[t2] = 0xB;
                D_800E9AA0[t2].as_u32 = i;
                D_800E9C60[t2] = j;
                D_800EA520[t] = t2;
            }
            if (func_8016FF88_ovl5(kind) != 0) {
                t2 = request_track_general(8, 0, 0x70);
                D_800E98E0[t2] = 0xC;
                D_800E9AA0[t2].as_u32 = i;
                D_800E9C60[t2] = j;
                D_800EA520[t] = t2;
            }
            if (func_80172C50_ovl5(j) != 0) {
                t2 = request_track_general(8, 0, 0x70);
                D_800E98E0[t2] = 0x10;
                D_800E9AA0[t2].as_u32 = i;
                D_800E9C60[t2] = j;
            }
        }
    }
}

s32 func_80173778_ovl5(s32 arg0) {
    s32 i;
    s32 *p;

    p = &D_8018E478_ovl5[arg0][81];
    for (i = 0x51; i >= 0; i--, p--) {
        if (*p != 0) {
            if (i < D_8018E998_ovl5[arg0]) {
                utilPrintf("Bad LastStep...%d\n", i);
            }
            return i;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80173804_ovl5.s")

void func_80173EBC_ovl5(GObj *);
void func_801773C4_ovl5(struct GObj *);
void func_800A9864(s32, s32, s32);
void func_800B1900(u16);
extern u8 D_8018ECD8_ovl5;

void func_80173A38_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    s32 sp24;

    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = arg2;
    D_800DF150[omCurrentObj->objId] = func_80173EBC_ovl5;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_801773C4_ovl5);
    switch (arg2) {
        case 0:
            sp24 = 0x30087;
            break;
        case 20:
            sp24 = 0x30088;
            break;
        case 40:
            sp24 = 0x30089;
            break;
        case 60:
            sp24 = 0x3008A;
            break;
        case 81:
            sp24 = 0x3008B;
            break;
        case 100:
            sp24 = 0x3008C;
            break;
    }
    func_800A9864(sp24, 0x1869F, 0x10);
    switch (arg2) {
        case 0:
            gEntitiesNextPosXArray[omCurrentObj->objId] =
                gEntitiesNextPosXArray[D_8018E478_ovl5[arg1][arg2]] + 100.0f;
            gEntitiesNextPosYArray[omCurrentObj->objId] =
                gEntitiesNextPosYArray[D_8018E478_ovl5[arg1][arg2]] + 150.0f;
            gEntitiesNextPosZArray[omCurrentObj->objId] =
                gEntitiesNextPosZArray[D_8018E478_ovl5[arg1][arg2]] - 350.0f;
            break;
        case 81:
            gEntitiesNextPosXArray[omCurrentObj->objId] =
                gEntitiesNextPosXArray[D_8018E478_ovl5[arg1][arg2]] + 150.0f;
            gEntitiesNextPosYArray[omCurrentObj->objId] =
                gEntitiesNextPosYArray[D_8018E478_ovl5[arg1][arg2]] + 150.0f;
            gEntitiesNextPosZArray[omCurrentObj->objId] =
                gEntitiesNextPosZArray[D_8018E478_ovl5[arg1][arg2]] + 300.0f;
            break;
        default:
            if (D_8018ECD8_ovl5 == 3) {
                gEntitiesNextPosXArray[omCurrentObj->objId] =
                    gEntitiesNextPosXArray[D_8018E478_ovl5[arg1][arg2]] + 100.0f;
                gEntitiesNextPosYArray[omCurrentObj->objId] =
                    gEntitiesNextPosYArray[D_8018E478_ovl5[arg1][arg2]];
                gEntitiesNextPosZArray[omCurrentObj->objId] =
                    gEntitiesNextPosZArray[D_8018E478_ovl5[arg1][arg2]] + 280.0f;
            } else {
                gEntitiesNextPosXArray[omCurrentObj->objId] =
                    gEntitiesNextPosXArray[D_8018E478_ovl5[arg1][arg2]] + 100.0f;
                gEntitiesNextPosYArray[omCurrentObj->objId] =
                    gEntitiesNextPosYArray[D_8018E478_ovl5[arg1][arg2]] + 70.0f;
                gEntitiesNextPosZArray[omCurrentObj->objId] =
                    gEntitiesNextPosZArray[D_8018E478_ovl5[arg1][arg2]] + 280.0f;
            }
            break;
    }
    omGMoveObjDL(arg0, arg0->dl_link, 0xA);
    while (D_8018E478_ovl5[arg1][arg2] != 0) {
        ohSleep(1);
    }
    func_800B1900(omCurrentObj->objId);
}

void func_80173EBC_ovl5(GObj *arg0) {
    switch (D_800E9AA0[omCurrentObj->objId].as_s32) {
    case 0:
        gEntitiesNextPosZArray[omCurrentObj->objId] =
            gEntitiesNextPosZArray[D_8018E478_ovl5[D_800E98E0[omCurrentObj->objId]][D_800E9AA0[omCurrentObj->objId].as_s32]] - 350.0f;
        break;
    case 100:
        gEntitiesNextPosZArray[omCurrentObj->objId] =
            gEntitiesNextPosZArray[D_8018E478_ovl5[D_800E98E0[omCurrentObj->objId]][D_800E9AA0[omCurrentObj->objId].as_s32]] + 300.0f;
        break;
    default:
        gEntitiesNextPosZArray[omCurrentObj->objId] =
            gEntitiesNextPosZArray[D_8018E478_ovl5[D_800E98E0[omCurrentObj->objId]][D_800E9AA0[omCurrentObj->objId].as_s32]] + 280.0f;
        break;
    }
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

#ifdef NON_MATCHING
/* FACTORY: 21/185, residue. Length, frame and control flow are exact. Two
   known floors: (a) the value reloaded from the Vector2 at 0x28($sp) lands in
   $v1 instead of the ROM's $v0 -- the CSE'd-load-in-the-neighbouring-register
   floor -- which also swaps `addiu $a0, $sp, 0x28` past the `bne`; (b) one
   one-slot rotation of `lui $at, %hi(gEntitiesNextPosYArray)` against the
   D_8018E458_ovl5 index chain, the same window that blocks func_8017462C_ovl5.
   Not swept further: both residues are on the LEVERS floor list. */
extern s32 D_80187CDC_ovl5;
extern s32 D_80187CE0_ovl5[];
extern s32 D_80187CE4_ovl5;
void func_80174328_ovl5(GObj *);

void func_80174044_ovl5(GObj *arg0, s32 arg1) {
    Vector2 sp28;

    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800DF150[omCurrentObj->objId] = func_80174328_ovl5;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_801773C4_ovl5);
    func_800A9864(D_80187CDC_ovl5, 0x1869F, 0x10);
    func_800AA018(D_80187CE0_ovl5[0]);
    if (D_80187CE4_ovl5 != 0) {
        func_800AA018(D_80187CE4_ovl5);
    }
    if (D_8018ECD8_ovl5 == 3) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_80187C94_ovl5[arg1];
        gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_8018E458_ovl5[arg1]];
    } else {
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_80187C94_ovl5[arg1];
        gEntitiesNextPosYArray[omCurrentObj->objId] = 75.0f;
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_8018E458_ovl5[arg1]];
    }
    func_8016FF60_ovl5(&sp28, arg1);
    if (*(s32 *) &sp28 == 1) {
        gEntitiesScaleXArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleYArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleZArray[omCurrentObj->objId] = 1.5f;
    }
    func_8016FF60_ovl5(&sp28, arg1);
    switch (*(s32 *) &sp28) {
        case 0:
        case 2:
            play_sound(0xFC);
            break;
        case 1:
            gEntitiesScaleXArray[omCurrentObj->objId] = 1.5f;
            gEntitiesScaleYArray[omCurrentObj->objId] = 1.5f;
            gEntitiesScaleZArray[omCurrentObj->objId] = 1.5f;
            play_sound(0xF9);
            break;
        case 3:
            play_sound(0xFA);
            break;
    }
    func_800AF27C();
    func_800B1900(omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174044_ovl5.s")
#endif


void func_80174328_ovl5(GObj *arg0) {
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174368_ovl5.s")

#ifdef NON_MATCHING
/* FACTORY: 4/140, residue. Two one-slot scheduling rotations, both in the
   same window: the ROM interleaves the loop-invariant &D_8018E478_ovl5[arg1][arg2]
   address chain one slot AHEAD of `lui $at, 0x4302` (the 130.0f constant) and
   of `lui $at, %hi(gEntitiesNextPosYArray)`; IDO emits both luis one slot
   early. Everything else, frame included, is exact. Swept with no effect:
   `+ 0.0f` on the Z load (folded away, identical output) and swapping the Y/Z
   statement order (37/140, much worse). One-slot temp rotation -- floor. */
extern s32 D_80187CC8_ovl5;
extern s32 D_80187CCC_ovl5;
extern s32 D_80187CD0_ovl5;
extern s32 D_80187CD4_ovl5[];
void func_8017485C_ovl5(GObj *);
void func_800AF27C(void);

void func_8017462C_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = arg2;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_8017485C_ovl5;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_801773C4_ovl5);
    func_800A9864(D_80187CC8_ovl5, 0x1869F, 0x10);
    func_800AA018(D_80187CCC_ovl5);
    if (D_80187CD0_ovl5 != 0) {
        func_800AA018(D_80187CD0_ovl5);
    }
    omGMoveObjDL(arg0, arg0->dl_link, 0xA);
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_80187C94_ovl5[arg1];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 130.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_8018E478_ovl5[arg1][arg2]];
    while (1) {
        if (D_800E9C60[omCurrentObj->objId] != 0) {
            func_800AA018(D_80187CD4_ovl5[0]);
            if (D_80187CD4_ovl5[1] != 0) {
                func_800AA018(D_80187CD4_ovl5[1]);
            }
            func_800AF27C();
            func_800B1900(omCurrentObj->objId);
        }
        if (D_8018E478_ovl5[arg1][arg2] == 0) {
            func_800B1900(omCurrentObj->objId);
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017462C_ovl5.s")
#endif


void func_8017485C_ovl5(GObj *arg0) {
    gEntitiesNextPosZArray[omCurrentObj->objId] =
        gEntitiesNextPosZArray[D_8018E478_ovl5[D_800E98E0[omCurrentObj->objId]][D_800E9AA0[omCurrentObj->objId].as_s32]];
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

#ifdef NON_MATCHING
/* 116/120: same length, whole-function register permutation. */
void func_80174900_ovl5(s32 arg0, s32 arg1) {
    s32 i;
    s32 id;
    u8 *q;

    for (i = 0; i < 4; i++) {
        if (i != arg0) {
            id = D_8018E478_ovl5[i][arg1];
            if (id != 0) {
                if (D_800EA520[id] != 0x29A) {
                    D_800EA1A0[D_800EA520[id]] = 1;
                }
            } else {
                q = &D_8018EA00_ovl5[i * 82 + arg1];
                if (*q == 0xF) {
                    *q = 2;
                } else if (*q == 0x10) {
                    *q = 3;
                } else if (*q == 0x13) {
                    *q = 0xA;
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174900_ovl5.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174AE0_ovl5.s")

void func_80175518_ovl5(GObj *arg0) {
    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800EA6E0[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

extern s32 D_80187CDC_ovl5;
extern s32 D_80187CE0_ovl5[];
void func_80175808_ovl5(GObj *);

void func_8017559C_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = arg2;
    D_800DF150[omCurrentObj->objId] = func_80175808_ovl5;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_801773C4_ovl5);
    func_800A9864(D_80187CDC_ovl5, 0x1869F, 0x10);
    func_800AA018(D_80187CE0_ovl5[0]);
    if (D_80187CE0_ovl5[0] != 0) {
        func_800AA018(D_80187CE0_ovl5[1]);
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.7f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.7f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.7f;
    if (D_8018ECD8_ovl5 == 3) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_8018E478_ovl5[arg1][arg2]];
        gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_8018E478_ovl5[arg1][arg2]];
    } else {
        gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_8018E478_ovl5[arg1][arg2]];
        gEntitiesNextPosYArray[omCurrentObj->objId] = 75.0f;
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_8018E478_ovl5[arg1][arg2]];
    }
    play_sound(0xFB);
    func_800AF27C();
    func_800B1900(omCurrentObj->objId);
}

void func_80175808_ovl5(GObj *arg0) {
    gEntitiesNextPosZArray[omCurrentObj->objId] =
        gEntitiesNextPosZArray[D_8018E478_ovl5[D_800E98E0[omCurrentObj->objId]][D_800E9AA0[omCurrentObj->objId].as_s32]];
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

extern u8 D_80187618_ovl5[];
extern u8 D_80187638_ovl5[];
extern u8 D_80187658_ovl5[];
extern u8 D_80187678_ovl5[];
extern u8 D_80187698_ovl5[];
extern u8 D_801876B8_ovl5[];
extern u8 D_801876D8_ovl5[];
extern u8 D_801876F8_ovl5[];
extern u8 D_8018ECD8_ovl5;

void func_801758AC_ovl5(GObj *arg0) {
    SPObj *spobj;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = NULL;
    omLinkGObjDL(arg0, func_800AD1A0, 0xE, 0x80000000, 0xE);
    omGMoveObjDL(arg0, arg0->dl_link, 0x18);
    if (D_8018ECD8_ovl5 == 3) {
        func_8015C740_ovl5(arg0, D_80187658_ovl5);
        func_8015C740_ovl5(arg0, D_80187678_ovl5);
        spobj = (SPObj *) func_8015C740_ovl5(arg0, D_80187698_ovl5);
        spobj->unk5A |= 1;
        spobj->unkBA |= 1;
        func_8015C740_ovl5(arg0, D_80187618_ovl5);
        spobj = (SPObj *) func_8015C740_ovl5(arg0, D_80187638_ovl5);
        spobj->unk5A |= 1;
        spobj->unkBA |= 1;
    } else {
        func_8015C740_ovl5(arg0, D_801876B8_ovl5);
        func_8015C740_ovl5(arg0, D_801876D8_ovl5);
        spobj = (SPObj *) func_8015C740_ovl5(arg0, D_801876F8_ovl5);
        spobj->unk5A |= 1;
        spobj->unkBA |= 1;
    }
    curObjSleepForever();
}


void func_80175A28_ovl5(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = NULL;
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    omGMoveObjDL(arg0, arg0->dl_link, 0x18);
    func_8015C740_ovl5(arg0, D_80187898_ovl5);
    curObjSleepForever();
}

void func_80175AD0_ovl5(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
#ifdef PORT
    /* D_801873A0 is ten N64 pointer words; the PC data generator emits the
       region as a native void*[] (8-byte slots), so the word-struct copy
       reads pointer halves. Index the live table instead. */
    void **sp20 = (void **) &D_801873A0_ovl5;
#else
    Unk28Words sp20 = D_801873A0_ovl5;
#endif
    SPObj *spobj;

#ifdef PORT
    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20[arg1]);
#else
    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20.unk0[arg1]);
#endif
    spobj->xOffset = arg2;
    spobj->yOffset = arg3;
}

s32 func_80175B70_ovl5(s32 arg0) {
    return (arg0 % 30) * 3;
}

s32 func_80175B8C_ovl5(s32 arg0) {
    return (arg0 / 30) % 60;
}

s32 func_80175BB0_ovl5(s32 arg0) {
    return (arg0 / 30) / 60;
}

void func_80175BD4_ovl5(s32 arg0, s32 arg1) {
    extern f32 D_80187A18_ovl5[];
    extern f32 D_80187A28_ovl5[];
    extern f32 D_80187A38_ovl5[];
    extern f32 D_80187A48_ovl5[];
    extern f32 D_80187A58_ovl5[];
    extern f32 D_80187A68_ovl5;
    s32 pad;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 temp;

    temp = (s32) (200.0f + D_80187A68_ovl5);
    if (D_8018E468_ovl5[arg1] >= 0x464F) {
        sp2C = 0x63;
        sp30 = 0x3B;
        sp34 = 9;
    } else {
        sp2C = func_80175B70_ovl5(D_8018E468_ovl5[arg1]);
        sp30 = func_80175B8C_ovl5(D_8018E468_ovl5[arg1]);
        sp34 = func_80175BB0_ovl5(D_8018E468_ovl5[arg1]);
    }
    func_80175AD0_ovl5(arg0, sp2C % 10, (s32) (D_80187A18_ovl5[arg1] + 21.0f), temp);
    func_80175AD0_ovl5(arg0, sp2C / 10, (s32) (D_80187A28_ovl5[arg1] + 21.0f), temp);
    func_80175AD0_ovl5(arg0, sp30 % 10, (s32) (D_80187A38_ovl5[arg1] + 21.0f), temp);
    func_80175AD0_ovl5(arg0, sp30 / 10, (s32) (D_80187A48_ovl5[arg1] + 21.0f), temp);
    func_80175AD0_ovl5(arg0, sp34, (s32) (D_80187A58_ovl5[arg1] + 21.0f), temp);
}

void func_80175DBC_ovl5(GObj *arg0) {
    s32 i;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = NULL;
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    omGMoveObjDL(arg0, arg0->dl_link, 0x18);
    while (1) {
        func_800ACBDC(arg0);
        for (i = 0; i < 4; i++) {
            func_80175BD4_ovl5(arg0, i);
        }
        ohSleep(1);
    }
}

void func_80175E98_ovl5(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = func_80175F50_ovl5;
    D_800DDA90[omCurrentObj->objId] = 0x24;
    while (1) {
        ohSleep(1);
    }
}

#ifdef NON_MATCHING
/* Faithful, not byte-exact (104/110). Structurally correct; the residue is
   that the ROM keeps EIGHT saved registers -- it strength-reduces
   D_8018E998_ovl5[i] into an $s4 byte-offset induction and hoists
   &D_80187CA4_ovl5 into $s7 -- where this C uses seven and re-shifts the index
   each iteration, so every save slot moves 4 bytes. Explicit pointer and
   byte-bias inductions both make it worse (103, 99). */
extern f32 D_80187CA4_ovl5[];
extern f32 D_8018DC70_ovl5;
extern u8 D_8018E450_ovl5;
s32 func_801716E0_ovl5(s32);
s32 func_80171868_ovl5(void);

void func_80175F50_ovl5(GObj *arg0) {
    f32 *p;
    f32 *q;
    s32 v;
    s32 i;
    f32 lim;

    lim = D_8018DC70_ovl5;
    p = D_8018EB48_ovl5;
    for (i = 0; i != 4; i++) {
        if ((D_8018E478_ovl5[i][0x51] == 0) ||
            !((*p + gEntitiesNextPosZArray[D_8018E478_ovl5[i][0x51]]) <= lim)) {
            q = &D_80187CA4_ovl5[func_801716E0_ovl5(i)];
            if (D_8018E998_ovl5[i] == 0) {
                v = 0;
            } else {
                v = (s32) *q;
            }
            if (*p < (f32) v) {
                *p = *p + 12.0f;
                if ((f32) v < *p) {
                    *p = (f32) v;
                }
            }
            if ((f32) v < *p) {
                *p = *p - 12.0f;
                if (*p < (f32) v) {
                    *p = (f32) v;
                }
            }
        }
        p++;
    }
    if ((D_8018E450_ovl5 == 0) && (func_80171868_ovl5() != 0)) {
        D_8018E450_ovl5 = 0x5A;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175F50_ovl5.s")
#endif

/* 2 diffs, and the single physical line is load-bearing (expanded over three
   lines it is 4): IDO fills the post-`jal` slot with `addiu $s0,$s0,1` and
   sinks `sw $v0` to `-4($s1)`, where the ROM stores at `0xC($s1)` first. The
   empty `if` reproduces the ROM's dead $s2 induction over D_8018ECA8_ovl5.
   Clone twins with the identical residue: func_801649CC_ovl5,
   func_8016CB14_ovl5. */
void func_80176108_ovl5(void)
{
  extern s32 D_800D7178[];
  s32 i;
  for (i = 0; i < 4; i++)
  {
    D_800D7178[(i * 4) + 3] = func_80171768_ovl5(i);
    if (D_8018ECA8_ovl5[i] != 0)
    {
      if ((!i) && (!i))
      {
      }
    }
  }

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176170_ovl5.s")

void func_801764F0_ovl5(void) {
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

#include "main/contpad.h"
#include "ovl1/game.h"

extern s32 D_800D6B24;
extern u32 D_800D6B68;
extern u8 D_8018E450_ovl5;
extern s32 D_8018E46C_ovl5;
extern s32 D_8018E470_ovl5;
extern s32 D_8018E474_ovl5;
extern s32 D_800D71D0;
extern s32 D_800D71D4;
extern s32 D_800D71D8;
extern s32 D_800D71DC;
void func_80176108_ovl5(void);

void func_80176530_ovl5(GObj *arg0) {
    if (D_800D6B24 == 0) {
        if (D_8018E450_ovl5 != 0) {
            if ((--D_8018E450_ovl5 == 0) || (gPlayerControllers[0].buttonPressed & (A_BUTTON | START_BUTTON))) {
                D_800D6B68 = gGameState;
                gGameState = 0x20;
                func_80176108_ovl5();
                D_800D71D0 = D_8018E468_ovl5[0];
                D_800D71D4 = D_8018E46C_ovl5;
                D_800D71D8 = D_8018E470_ovl5;
                D_800D71DC = D_8018E474_ovl5;
                func_801764F0_ovl5();
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801765EC_ovl5.s")

void func_8017685C_ovl5(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
    s32 sp34;
    s32 sp30;
    s32 sp2C;

    if (arg1 >= 0x464F) {
        sp2C = 0x63;
        sp30 = 0x3B;
        sp34 = 9;
    } else {
        sp2C = func_80175B70_ovl5(arg1);
        sp30 = func_80175B8C_ovl5(arg1);
        sp34 = func_80175BB0_ovl5(arg1);
    }
    func_80175AD0_ovl5(arg0, sp2C % 10, (s32) (arg2 + 38.0f), (s32) arg3);
    func_80175AD0_ovl5(arg0, sp2C / 10, (s32) (arg2 + 31.0f), (s32) arg3);
    func_80175AD0_ovl5(arg0, sp30 % 10, (s32) (arg2 + 19.0f), (s32) arg3);
    func_80175AD0_ovl5(arg0, sp30 / 10, (s32) (arg2 + 12.0f), (s32) arg3);
    func_80175AD0_ovl5(arg0, sp34, (s32) arg2, (s32) arg3);
}

u16 func_801769D8_ovl5(s32 arg0) {
    switch (arg0) {
        case 0x1D:
            return gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord;
        case 0x1F:
            return gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord;
        case 0x1E:
            return gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord;
    }
}

typedef union Unk12Colors {
    u16 unk0[6];
} Unk12Colors;

typedef union Unk12Defs {
    struct UnkStruct8015C740 *unk0[3];
} Unk12Defs;

extern Unk12Colors D_801873C8_ovl5;
extern Unk12Colors D_801873D4_ovl5;
extern Unk12Colors D_801873E0_ovl5;
extern Unk12Colors D_801873EC_ovl5;
extern Unk12Colors D_801873F8_ovl5;
extern Unk12Defs D_80187404_ovl5;
extern u8 D_80187B8C_ovl5[];
extern u8 D_80187BAC_ovl5[];
extern u8 D_80187798_ovl5[];
extern f32 D_80187BCC_ovl5[2];
extern s32 D_8018ECA0_ovl5;
void func_800ACB7C(SPObj *);
void func_8015C804_ovl5(SPObj *, f32, f32);
void func_80176EC8_ovl5(u8 *, u16 *);

#ifdef NON_MATCHING
/* Left un-guarded when the container killed this lane mid-stint. */
void func_80176A80_ovl5(GObj *arg0) {
    s32 pad0;
    s32 pad1;
    Unk12Colors spA4 = D_801873C8_ovl5;
    Unk12Colors sp98 = D_801873D4_ovl5;
    Unk12Colors sp8C = D_801873E0_ovl5;
    Unk12Colors sp80 = D_801873EC_ovl5;
    Unk12Colors sp74 = D_801873F8_ovl5;
    Unk12Defs sp68 = D_80187404_ovl5;
    struct UnkStruct8015C740 **p;
    SPObj *spobj;
    f32 scale;
    f32 step;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_8015C740_ovl5(arg0, D_80187B8C_ovl5);
    func_8015C740_ovl5(arg0, D_80187BAC_ovl5);
    func_8017685C_ovl5(arg0, func_801769D8_ovl5(0x1D), D_80187BCC_ovl5[0], D_80187BCC_ovl5[1]);
    ohSleep(0xF);
    for (p = &sp68.unk0[2]; p >= &sp68.unk0[0]; p--) {
        spobj = (SPObj *) func_8015C740_ovl5(arg0, *p);
        scale = 1.0f;
        play_sound(0x111);
        while (scale < 1.5f) {
            spobj->yScale = scale;
            spobj->xScale = scale;
            func_8015C804_ovl5(spobj, (*p)->xOffset + (spobj->width / 2), (*p)->yOffset + (spobj->height / 2));
            ohSleep(1);
            scale += 0.25f;
        }
        if (1.0f < scale) {
            step = (spobj->xScale - 1.0f) * 0.5f;
            do {
                spobj->yScale = scale;
                spobj->xScale = scale;
                func_8015C804_ovl5(spobj, (*p)->xOffset + (spobj->width / 2), (*p)->yOffset + (spobj->height / 2));
                ohSleep(1);
                scale -= step;
            } while (1.0f < scale);
        }
        spobj->yScale = 1.0f;
        spobj->xScale = 1.0f;
        spobj->xOffset = (*p)->xOffset;
        spobj->yOffset = (*p)->yOffset;
        ohSleep(0x10);
        spobj->renderFlags |= 8;
        ohSleep(0xA);
        spobj->renderFlags &= ~8;
        func_800ACB7C(spobj);
    }
    spobj = (SPObj *) func_8015C740_ovl5(arg0, D_80187798_ovl5);
    play_sound(0xB9);
    func_8016FD54_ovl5();
    D_8018ECA0_ovl5 = 0;
    func_80176EC8_ovl5((u8 *) spobj, spA4.unk0);
    ohSleep(2);
    func_80176EC8_ovl5((u8 *) spobj, sp98.unk0);
    ohSleep(2);
    func_80176EC8_ovl5((u8 *) spobj, sp8C.unk0);
    ohSleep(2);
    func_80176EC8_ovl5((u8 *) spobj, sp80.unk0);
    ohSleep(2);
    func_80176EC8_ovl5((u8 *) spobj, sp74.unk0);
    func_800ACBDC(arg0);
    func_800B1900(omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176A80_ovl5.s")
#endif

void func_80176EC8_ovl5(u8 *arg0, u16 *arg1) {
    arg0[0x14] = arg1[0];
    arg0[0x15] = arg1[1];
    arg0[0x16] = arg1[2];
    arg0[0x18] = arg1[3];
    arg0[0x19] = arg1[4];
    arg0[0x1A] = arg1[5];
}

void func_80176EFC_ovl5(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176F04_ovl5.s")

/* Faithful, not byte-exact (25/166). The first 124 instructions -- both
   struct-copy prologues, the clear loop and its 0x52-iteration inner loop --
   are exact; the residue is confined to the second copy loop, where the ROM
   keeps two inductions over D_8018EA00_ovl5 and materialises the +2 row bias
   with `addiu $v1, $a3, 2` while IDO folds it into the store displacements. */
#ifdef NON_MATCHING
typedef struct Unk4Ptrs {
    s32 *unk0[4];
} Unk4Ptrs;

typedef struct Unk4Ints {
    s32 unk0[4];
} Unk4Ints;

typedef struct Unk52Row {
    u8 unk0;
    u8 unk1;
    u8 unk2[0x50];
} Unk52Row;

extern Unk4Ptrs D_8018745C_ovl5;
extern Unk4Ptrs D_8018746C_ovl5;
extern Unk4Ptrs D_8018747C_ovl5;
extern Unk4Ints D_8018748C_ovl5;
extern u8 D_8018E9A8_ovl5;
extern u8 D_8018E9A9_ovl5;
extern u8 D_8018E9AA_ovl5[];
extern s32 D_8018ECA0_ovl5;
extern u8 D_8018EB58_ovl5[];
void func_801765EC_ovl5(void);

void func_8017712C_ovl5(void) {
    extern s32 D_800D7178[];
    s32 i;
    s32 j;
    s32 temp;
    Unk4Ptrs sp94 = D_8018745C_ovl5;
    Unk4Ptrs sp84 = D_8018746C_ovl5;
    Unk4Ptrs sp74 = D_8018747C_ovl5;
    Unk4Ints sp64 = D_8018748C_ovl5;

    temp = D_800D7178[0x10];
    D_8018E450_ovl5 = 0;
    D_8018ECD8_ovl5 = temp;
    for (i = 0; i < 4; i++) {
        D_8018E998_ovl5[i] = 0;
        D_8018EB48_ovl5[i] = 0.0f;
        D_8018E468_ovl5[i] = 0;
        for (j = 0; j < 0x52; j++) {
            D_8018E478_ovl5[i][j] = 0;
            if (j == 0) {
                D_8018EB58_ovl5[(i * 0x52) + j] = 1;
            } else {
                D_8018EB58_ovl5[(i * 0x52) + j] = 0;
            }
        }
        ((s32 *) D_8018ECB8_ovl5)[i * 2] = *sp94.unk0[i];
        ((s32 *) D_8018ECB8_ovl5)[(i * 2) + 1] = *sp84.unk0[i];
        if (*sp74.unk0[i] == 1) {
            D_8018ECA8_ovl5[i] = sp64.unk0[temp];
        } else {
            D_8018ECA8_ovl5[i] = 0;
        }
    }
    func_801765EC_ovl5();
    for (i = 0; i < 4; i++) {
        ((Unk52Row *) D_8018EA00_ovl5)[i].unk0 = D_8018E9A8_ovl5;
        ((Unk52Row *) D_8018EA00_ovl5)[i].unk1 = D_8018E9A9_ovl5;
        for (j = 0; j < 0x50; j++) {
            ((Unk52Row *) D_8018EA00_ovl5)[i].unk2[j] = D_8018E9AA_ovl5[j];
        }
    }
    D_8018ECA0_ovl5 = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017712C_ovl5.s")
#endif

void func_801773C4_ovl5(struct GObj *arg0) {
    if (!(D_800DD8D0[omCurrentObj->objId] & 0x40) && (arg0->data.dobj != NULL)) {
        arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId] + D_800E2410[omCurrentObj->objId];
        arg0->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
        arg0->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
        arg0->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
        arg0->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
        arg0->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
        arg0->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    }
}

#include "main/gtl.h"

s32 func_800AB0F4(GObj *);
void func_800AB120(GObj *);
void func_800AB174(GObj *);
void func_800AB1F0(GObj *);
void func_800AB244(GObj *);
void renderDrawDObjFromGObj(GObj *);
void renderDrawObject_TypeD(GObj *);
void func_8001585C(GObj *);
void func_80015BCC(GObj *);

void func_80177524_ovl5(GObj *arg0) {
    gDPSetScissor(gDisplayListHeads[0]++, G_SC_NON_INTERLACE, 30, 10, 290, 230);
    gDPSetScissor(gDisplayListHeads[1]++, G_SC_NON_INTERLACE, 30, 10, 290, 230);
    switch (func_800AB0F4(arg0)) {
        case 19:
            gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
            func_800AB120(arg0);
            break;
        case 21:
            gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
            func_800AB1F0(arg0);
            break;
        case 23:
        case 25:
            gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
            renderDrawDObjFromGObj(arg0);
            break;
        case 27:
        case 29:
            gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
            func_8001585C(arg0);
            break;
        case 20:
            gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
            func_800AB174(arg0);
            break;
        case 22:
            gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
            func_800AB244(arg0);
            break;
        case 24:
        case 26:
            gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
            renderDrawObject_TypeD(arg0);
            break;
        case 28:
        case 30:
            gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
            func_80015BCC(arg0);
            break;
    }
}

void gameSetUpdateRate(f32);
void func_800AAF34(s32, s32, f32);

void func_8017783C_ovl5(void) {
    s32 i;
    s32 t;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x200);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(1);
    func_8017712C_ovl5();
    func_800A6BC0(8);
    func_800AAF34(0x10, 0x3007B, 0.0f);
    func_800A71A0(0x10);
    t = request_track_3(8, 0, 0x70);
    D_800E98E0[t] = 7;
    D_800E98E0[request_track_3(8, 0, 0x70)] = 8;
    D_800E98E0[request_track_3(8, 0, 0x70)] = 0xF;
    D_800E98E0[request_track_general(8, 0, 0x70)] = 1;
    D_800E98E0[request_track_3(8, 0, 0x70)] = 0x11;
    for (i = 3; i != 7; i++) {
        D_800E98E0[request_track_general(8, 0, 0x70)] = i;
    }
    func_801735A4_ovl5();
    D_800E98E0[func_800AEA64(8, 0, 0x70)] = 0xE;
    HS64_omMakeGObj(0, &func_80176530_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80177A0C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_801874A0_ovl5);
}

// PADDING TRAP (padtrap: trap, 5 words after .size) -- converting this would
// shorten the TU and shift the segment, so the pragma must stay. The body below
// is the framebuffer-clear form proved byte-exact on func_8017CC3C_ovl5 (the
// vu16 casts are what stop IDO hoisting the D_803D6900 induction bump); it is
// kept live for the PC port, which builds with NON_MATCHING.

#include "main/vi.h"
#include "main/gtl.h"

extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_801874D0_ovl5;
extern SceneSetup D_801874EC_ovl5;
extern s32 D_800D7178[];

void func_80177A30_ovl5(void) {
    s32 i;

    func_800A74D8();
    ((s32 *) D_800D7178)[0x1D] = 0;
    ((s32 *) D_800D7178)[0x1E] = 0;
    D_801874D0_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_801874D0_ovl5);
    D_801874EC_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_801874EC_ovl5);
}




