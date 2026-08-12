#include "common.h"
#include "types.h"
#include "GObj.h"

#include "buffers.h"
#include "buffers.h"
#include "track_arrays.h"
#include "main/gtl.h"
#include "main/math.h"
#include "main/object_helpers.h"
#include "ovl1/game.h"
#include "ovl1/ovl1_7.h"

#include "plylib.h"

extern f32 gameTicksPerDrawInv;

struct UnkStruct801290D8_2 {
    u8 filler[0x16];
    u16 unk16;
};
extern struct UnkStruct801290D8_2 *D_801290D8;
extern u8 D_800D6C68[];
extern u32 D_800D6D10[][2];
extern u8 D_800D7010[];
extern u8 D_80124000[];

void func_800A5404(void *, void *);

void func_800F6C40(s32 arg0, UNUSED s32 arg1) {
    D_800BE4F8 = 2;
    D_800BE4FC = 1;
    D_800BE534 = arg0;
}

void func_800F6C68(void) {
    D_800BE4F8 = 3;
}

void func_800F6C78(void) {
    D_800BE4F8 = 4;
}

void func_800F6C88(void) {
    D_800BE4F8 = 7;
}

void func_800F6C98(UNUSED GObj *gobj) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    ohSleep((u32) (120.0f * gameTicksPerDrawInv));
    if (D_800E98E0[omCurrentObj->objId] == 3) {
        func_800F6C68();
    }
    if (D_800E98E0[omCurrentObj->objId] == 4) {
        func_800F6C78();
    }
    func_800B1900(omCurrentObj->objId);
}

void func_800F6E04(UNUSED GObj *gobj) {

}

void func_800F6E0C(void *arg0, UNUSED void *_1, UNUSED void *_2) {
    func_8011C2A0(arg0);
}

#ifdef MIPS_TO_C

void func_800F6E30(s32 arg0) {
    s32 temp_a0;
    s32 temp_s0;
    s32 temp_v1;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;
    s32 var_v1;
    u32 var_s3;
    void *temp_v0;
    void *var_v0;

    setProcessMain(*(&gEntityGObjProcessArray5 + (*omCurrentObj * 4)), &procMainStub);
    *(&D_800DEF90 + (*omCurrentObj * 4)) = &func_800F6E04;
    func_800AF980(0x18);
    *(&D_800DF150 + (*omCurrentObj * 4)) = &func_800F7258;
    func_800A9864(*D_801290D8, 0x26, 0x10);
    func_800A2550(*(&D_800DFA10 + (D_801290D0 * 4)));
    func_800B3070(0x10, gameTicksPerDraw);
    var_s1 = 0;
    var_s2 = 0;
    var_v1 = *omCurrentObj * 4;
    var_v0 = *(&gSegment4StartArray + var_v1);
    temp_a0 = var_v0->unk14;
    if (temp_a0 != 0) {
        var_s3 = 0;
        if (temp_a0 != 0) {
            var_s4 = 0;
            do {
                temp_s0 = *(var_v0->unk18 + var_s4);
                temp_v0 = func_800A94F4(temp_s0);
                temp_v1 = temp_v0->unk4;
                switch (temp_v1) {                  /* irregular */
                    case 0:
                        if (var_s2 == 0) {
                            *(&D_800DF690 + (*omCurrentObj * 4)) = temp_v0;
                            *(&D_800DFF50 + (*omCurrentObj * 4)) = temp_s0;
                            func_800AEE20(**(&D_800DF690 + (*omCurrentObj * 4)), 0, temp_v0);
                            D_8012E7B0 = NULL;
                            var_s2 += 1;
                        } else {
                            D_8012E7B0 = temp_v0;
                            var_s2 += 1;
                        }
                        break;
                    case 1:
                        if (var_s1 == 0) {
                            *(&D_800DF850 + (*omCurrentObj * 4)) = temp_v0;
                            *(&D_800E0110 + (*omCurrentObj * 4)) = temp_s0;
                            func_800AEEB4(**(&D_800DF850 + (*omCurrentObj * 4)), 0, temp_v0);
                            D_8012E7B4 = NULL;
                            var_s1 += 1;
                        } else {
                            D_8012E7B4 = temp_v0;
                            var_s1 += 1;
                        }
                        break;
                    case 2:
                        func_800FA414(0x8000000D);
                        func_800AAF34(0x10, temp_s0, 0);
                        func_801129AC();
                        func_801129DC();
                        if ((D_800BE500 == 1) && (D_800BE504 == 0)) {
                            D_800D6E44 = 1;
                        }
                        if ((D_800BE500 == 3) && (D_800BE504 == 0)) {
                            D_800D6E44 = 2;
                        }
                        break;
                }
                var_s3 += 1;
                var_s4 += 4;
                var_v1 = *omCurrentObj * 4;
                var_v0 = *(&gSegment4StartArray + var_v1);
            } while (var_s3 < var_v0->unk14);
        }
    }
    *(&D_800DF310 + var_v1) = &func_800F6E0C;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F6E30.s")
#endif

void func_800F716C(GObj *gobj) {
    if ((D_800BE500 == 1) && (D_800BE504 == 2)) {
        gSPFogPosition(gDisplayListHeads[0]++, 102, 1003);
        gSPFogPosition(gDisplayListHeads[1]++, 102, 1003);
    } else {
        gSPFogPosition(gDisplayListHeads[0]++, 920, 1000);
        gSPFogPosition(gDisplayListHeads[1]++, 920, 1000);
    }
    gDrawFuncList[gSegment4StartArray[gobj->objId][2]](gobj);
}

void func_800F7258(s32 arg0) {
    func_800A5404(&D_800D7010[0], &D_80124000[0]);
    func_800A5404(&D_800D7010[0x18], &D_80124000[0]);
    func_800A5404(&D_800D7010[0x30], &D_80124000[0]);
}

/* 2/85 diffs, structurally exact.  Residue: the ROM loads objId straight into
 * $v1 and shifts in place (lw $v1,0($t4); sll $v1,$v1,2); IDO loads into $v0 and
 * shifts into $v1, i.e. `idx` and the scaled-index temp fail to coalesce.
 * Measured: `seg` lands in $a1 only when it is passed as a SECOND argument to
 * func_800A2550/func_800AA018 (IDO argument-register targeting) -- that alone
 * took 16 diffs to 4.  A named `idx` then took 4 to 2.  Swept without moving it:
 * decl order (all 6), u32 vs s32 for idx/temp, switch-through-temp, second
 * dispatch as a switch, seg inlined, byte-offset idx, GObj* local for
 * omCurrentObj, capturing func_800A9864's return into temp, `temp = 0` pad. */
#ifdef NON_MATCHING
extern u32 D_800DFA10[];
void func_800B491C(GObj *);
void func_800A2550(void *, void *);
void func_800AA018(s32, void *);

void func_800F72B0(UNUSED s32 arg0) {
    u32 *seg;
    s32 temp;
    s32 idx;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = func_800B491C;
    func_800AF980(8);
    func_800A9864(((u32 *)D_801290D8)[1], 0x26, 0x10);
    idx = omCurrentObj->objId;
    seg = gSegment4StartArray[idx];
    switch (seg[2]) {
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
            break;
        default:
            func_800A2550((void *)D_800DFA10[idx], seg);
            seg = gSegment4StartArray[omCurrentObj->objId];
            break;
    }
    temp = seg[5];
    if (temp != 0) {
        if (temp != 1) {
            if (temp == 2) {
                func_800AA018(((u32 *)seg[6])[1], seg);
                seg = gSegment4StartArray[omCurrentObj->objId];
            } else {
                goto end;
            }
        }
        func_800AA018(((u32 *)seg[6])[0], seg);
    }
end:
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F72B0.s")
#endif

#ifdef NON_MATCHING
// 13/32 diffs; the residue is ONLY the whole $t file allocated one slot low
// (ROM t8/t7 then t9/t1/t2/t3, IDO t7/t6 then t8/t9/t1/t2 -- the bound is $t0
// in both, and the relative order idx<sym is right; the whole pair just starts
// one register low, so one $t temp is allocated before it in the ROM).
// Two reusable levers got it here:
//   * IDO hands out $v0/$v1/$a0..$a3 in order of FIRST ASSIGNMENT, so priming
//     the locals before the loop in the ROM's register order (val, src, i,
//     dst, p) fixes the allocation at no instruction cost -- the dead stores
//     are eliminated but the ordering survives (22 -> 13).
//   * the ROM materialises D_800D6D10 TWICE; IDO CSEs one symbol, so the loop
//     bound has to be spelled as something else. (u8 *) 0x800D6D10 is the only
//     form that stays 2 instructions; it costs one `ori` where the ROM has
//     `addiu`.  Re-measured this wave: (u8 *) D_800D6D10 CSEs and costs 28,
//     &D_800D6C94[0x7C] costs 17.  0x800D6D10 stays the best spelling.
extern u8 D_800D6C94[];

void func_800F7404(s32 arg0) {
    u32 val;
    s32 i;
    u8 *p;
    u8 *dst;
    u32 *src;

    val = 0;
    src = D_800D6D10[arg0];
    i = 0;
    dst = &D_800D6C94[0x3C];
    p = dst;
    do {
        val = *src;
        p = dst;
        for (i = 0; i < 0x20; i++) {
            p[i] = val & 1;
            val >>= 1;
        }
        dst += 0x20;
        src++;
    } while (dst != (u8 *) 0x800D6D10);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F7404.s")
#endif

#ifdef NON_MATCHING
// 22/46 diffs. Body and instruction count are exact; the residue is the whole
// $t register file allocated one slot low (ROM t7/t8/t9 where IDO takes
// t6/t7/t8), the resulting prologue schedule, and one `ori` where the ROM has
// `addiu` for the loop bound. Same family as func_800F7404 above.
// What DID work and is worth keeping if anyone returns to it:
//   * priming `val = 0; i = 0;` BEFORE the outer loop is what puts val/i in
//     $v0/$v1 and src/dst in $a1/$a2 (42 -> 27); declaration order is inert.
//   * spelling src as &D_800D6C94[0x3C] and the bound as a DIFFERENT symbol
//     stops IDO CSEing the one base the ROM materialises twice (45 -> 46
//     instructions). &sym[N] as a loop BOUND is recomputed inside the loop,
//     so only the absolute form (u8 *) 0x800D6D10 costs 2 instructions.
//   * `dst++; dst[-1] = val;` gives the ROM's `addiu $a2,4` + `sw -0x4($a2)`
//     in the delay slot; `*dst++ = val;` puts the bump in the delay slot.
extern u8 D_800D6C94[];

void func_800F7484(s32 arg0) {
    u32 val;
    s32 i;
    u8 *p;
    u8 *src;
    u32 *dst;

    val = 0;
    i = 0;
    p = src = &D_800D6C94[0x3C];
    dst = D_800D6D10[arg0];
    do {
        val = 0;
        p = src;
        for (i = 0; i < 0x20; i++) {
            val >>= 1;
            if (p[i] & 1) {
                val |= 0x80000000;
            }
        }
        src += 0x20;
        dst++;
        dst[-1] = val;
    } while (src != (u8 *) 0x800D6D10);
}




#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F7484.s")
#endif

void func_800F753C(void) {
    s32 temp_v0;

    temp_v0 = D_800E76C0[omCurrentObj->objId];
    if ((temp_v0 >= 0) && (temp_v0 < 0x40)) {
        D_800D6C68[temp_v0 + 0x68] = 1;
    }
}

#ifdef MIPS_TO_C

void func_800F7578(void) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f2;
    s32 var_a0;
    s32 var_s3;
    u8 *temp_s2;
    u8 temp_v0;
    u8 temp_v1;
    void *var_s1;

    if (D_80129124 != 0) {
        var_s3 = 0;
        if (D_800BE4F8 != 6) {
            var_s1 = D_801290E0;
            if (D_80129124 > 0) {
                do {
                    temp_v0 = var_s1->unk5;
                    temp_s2 = &D_800D6C68 + 0x28 + var_s3;
                    if (!(temp_v0 & 8)) {
                        temp_v1 = *temp_s2;
                        var_a0 = 0;
                        if (!((*(&D_800D6C68 + 0x68 + var_s3) | temp_v1) & 1)) {
                            temp_f0 = var_s1->unk8;
                            temp_f2 = var_s1->unkC;
                            temp_f12 = var_s1->unk10;
                            temp_f16 = 1.0f / (D_800D6ED0.unk3C + ((D_800D6ED0.unkC * temp_f0) + (D_800D6ED0.unk1C * temp_f2) + (D_800D6ED0.unk2C * temp_f12)));
                            temp_f14 = (D_800D6ED0.unk30 + ((D_800D6ED0.unk0 * temp_f0) + (D_800D6ED0.unk10 * temp_f2) + (D_800D6ED0.unk20 * temp_f12))) * temp_f16;
                            if (!(temp_f14 > 1.4f) && !(temp_f14 < -1.4f)) {
                                temp_f14_2 = (D_800D6ED0.unk34 + ((D_800D6ED0.unk4 * temp_f0) + (D_800D6ED0.unk14 * temp_f2) + (D_800D6ED0.unk24 * temp_f12))) * temp_f16;
                                if (!(temp_f14_2 > 2.0f) && !(temp_f14_2 < -2.0f)) {
                                    if (temp_v0 & 0x20) {
                                        goto block_14;
                                    }
                                    temp_f14_3 = (D_800D6ED0.unk38 + ((D_800D6ED0.unk8 * temp_f0) + (D_800D6ED0.unk18 * temp_f2) + (D_800D6ED0.unk28 * temp_f12))) * temp_f16;
                                    if (!(temp_f14_3 > 0.9f) && !(temp_f14_3 < -0.9f)) {
block_14:
                                        var_a0 = 1;
                                    }
                                }
                            }
                        }
                        if (var_a0 != 0) {
                            if (temp_v1 & 0x80) {
                                *temp_s2 = temp_v1 | 0x80;
                            } else if (spawn_entity(var_s3, var_s1) != -1) {
                                *temp_s2 = 0x81;
                            }
                        } else if (!(temp_v1 & 1)) {
                            *temp_s2 = temp_v1 & 0x7F;
                        }
                    }
                    var_s3 += 1;
                    var_s1 += 0x2C;
                } while (var_s3 < D_80129124);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F7578.s")
#endif

void func_800F7844(void) {
    switch (D_800BE4FC) {
        case 0:
            D_800BE508 = 0;
            D_800BE50C = 0;
            return;
        case 1:
            D_800BE508 = D_800BE534;
            D_800BE50C = 0;
            return;
        case 2:
            D_800BE500 = D_800BE52C;
            D_800BE504 = D_800BE530;
            D_800BE508 = D_800BE534;
            D_800BE50C = D_800BE538;
            return;
    }
}

#ifdef MIPS_TO_C

void func_800F78E4(void) {
    void *sp54;
    ? sp44;
    ? *var_a1;
    s32 *temp_v1;
    s32 *var_v0;
    s32 *var_v1_2;
    s32 temp_a2;
    s32 temp_t4_2;
    s32 temp_v0_4;
    s32 temp_v1_5;
    u16 temp_v0_3;
    u8 *temp_a0_3;
    u8 *temp_t5;
    u8 *temp_v1_4;
    u8 *var_v1;
    u8 temp_a2_2;
    u8 temp_t7_2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_t3;
    void *temp_t4;
    void *temp_t7;
    void *temp_t7_3;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_t9;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1_2;
    void *temp_v1_3;
    void *var_a0;
    void *var_v0_2;

    var_v0 = *(&D_800D1F98 + ((D_800BE500 * 0xC * 4) + (D_800BE504 * 4)));
    temp_v1 = &D_800D6F3C + 0xC;
    D_801290D8 = (D_800BE508 * 0x24) + var_v0;
    *temp_v1 = 0;
    if (*var_v0 != 0) {
        do {
            var_v0 += 0x24;
            *temp_v1 += 1;
        } while (*var_v0 != 0);
    }
    temp_v0 = func_800A9AA8(D_801290D8->unk10, 3, &D_801290D8);
    D_801290DC = temp_v0;
    sp54 = temp_v0;
    temp_v1_2 = temp_v0->unk0 + temp_v0;
    temp_v0->unk0 = temp_v1_2;
    D_8012911C = temp_v1_2;
    temp_v1_3 = temp_v0->unk4 + temp_v0;
    temp_v0->unk4 = temp_v1_3;
    D_80129114 = temp_v1_3;
    temp_v1_4 = temp_v0->unk8 + temp_v0;
    temp_v0->unk8 = temp_v1_4;
    D_80129120 = temp_v1_4;
    D_801290E0 = temp_v1_4;
    temp_a2 = D_80129114->unk0;
    var_a1 = NULL;
    D_80129118 = temp_a2;
    D_80129114->unk4 = D_80129114->unk4 + temp_v0;
    var_a0 = D_80129114->unk4;
    if (temp_a2 != 0) {
        temp_v1_5 = temp_a2 & 3;
        if (temp_v1_5 != 0) {
            do {
                temp_t4 = var_a0->unk4 + temp_v0;
                var_a0->unk4 = temp_t4;
                var_a0->unk8 = var_a0->unk8 + temp_v0;
                var_a0->unk0 = var_a0->unk0 + temp_v0;
                temp_t4->unk8 = temp_t4->unk8 + temp_v0;
                temp_t4->unk10 = temp_t4->unk10 + temp_v0;
                if (temp_t4->unk14 != NULL) {
                    temp_t4->unk14 = temp_t4->unk14 + temp_v0;
                }
                var_a1 += 1;
                var_a0 += 0x10;
            } while (temp_v1_5 != var_a1);
            if (var_a1 != temp_a2) {
                goto loop_8;
            }
        } else {
            do {
loop_8:
                temp_t3 = var_a0->unk4 + temp_v0;
                var_a0->unk0 = var_a0->unk0 + temp_v0;
                var_a0->unk8 = var_a0->unk8 + temp_v0;
                var_a0->unk4 = temp_t3;
                temp_t3->unk8 = temp_t3->unk8 + temp_v0;
                temp_t3->unk10 = temp_t3->unk10 + temp_v0;
                if (temp_t3->unk14 != NULL) {
                    temp_t3->unk14 = temp_t3->unk14 + temp_v0;
                }
                temp_t8 = var_a0->unk14 + temp_v0;
                var_a0->unk14 = temp_t8;
                var_a0->unk18 = var_a0->unk18 + temp_v0;
                var_a0->unk10 = var_a0->unk10 + temp_v0;
                temp_t8->unk8 = temp_t8->unk8 + temp_v0;
                temp_t8->unk10 = temp_t8->unk10 + temp_v0;
                temp_a0 = var_a0 + 0x10;
                if (temp_t8->unk14 != NULL) {
                    temp_t8->unk14 = temp_t8->unk14 + temp_v0;
                }
                temp_t9 = temp_a0->unk14 + temp_v0;
                temp_a0->unk14 = temp_t9;
                temp_a0->unk18 = temp_a0->unk18 + temp_v0;
                temp_a0->unk10 = temp_a0->unk10 + temp_v0;
                temp_t9->unk8 = temp_t9->unk8 + temp_v0;
                temp_t9->unk10 = temp_t9->unk10 + temp_v0;
                temp_a0_2 = temp_a0 + 0x10;
                if (temp_t9->unk14 != NULL) {
                    temp_t9->unk14 = temp_t9->unk14 + temp_v0;
                }
                temp_t7 = temp_a0_2->unk14 + temp_v0;
                temp_a0_2->unk14 = temp_t7;
                temp_a0_2->unk18 = temp_a0_2->unk18 + temp_v0;
                temp_a0_2->unk10 = temp_a0_2->unk10 + temp_v0;
                temp_t7->unk8 = temp_t7->unk8 + temp_v0;
                temp_t7->unk10 = temp_t7->unk10 + temp_v0;
                if (temp_t7->unk14 != NULL) {
                    temp_t7->unk14 = temp_t7->unk14 + temp_v0;
                }
                var_a1 += 4;
                var_a0 = temp_a0_2 + 0x10 + 0x10;
            } while (var_a1 != temp_a2);
        }
    }
    temp_a0_3 = D_801290E0;
    D_80129128 = 0;
    D_80129124 = 0;
    if (temp_v0 != temp_a0_3) {
        var_v1 = D_80129120;
        var_a1 = &sp44;
        if (var_v1->unk0 != 0x99) {
            do {
                var_a1->unk0 = var_v1->unk8;
                var_a1->unk4 = var_v1->unkC;
                var_a1->unk8 = var_v1->unk10;
                temp_a2_2 = var_v1->unk4;
                if ((temp_a2_2 == 0) || (temp_a2_2 == 2)) {
                    temp_v0_2 = D_80129114->unk4 + (var_v1->unk0 * 0x10);
                    D_80129120->unk24 = func_800FA1D4(temp_v0_2->unk4, var_a1, temp_v0_2->unkE, &D_80129124);
                    var_v1 = D_80129120;
                    var_a1 = &sp44;
                }
                temp_t5 = var_v1 + 0x2C;
                D_80129120 = temp_t5;
                D_80129124 += 1;
                temp_t7_2 = var_v1[0x2C];
                var_v1 = temp_t5;
            } while (temp_t7_2 != 0x99);
        }
        D_80129120 = temp_a0_3;
    }
    var_v0_2 = &D_800D6C68 + 0x28;
    do {
        var_v0_2 += 4;
        var_v0_2->unk-4 = 0;
        var_v0_2->unk-3 = 0;
        var_v0_2->unk-2 = 0;
        var_v0_2->unk-1 = 0;
    } while (var_v0_2 != (&D_800D6C68 + 0x68));
    func_800F7404(D_800BE508, var_a1);
    D_80129114->unk8 = D_80129114->unk8 + sp54;
    D_80129114->unkC = D_80129114->unkC + sp54;
    D_8012912C = D_80129114->unk8;
    D_80129130 = D_80129114->unkC;
    D_8012B9B0 = 0;
    temp_v0_3 = D_801290D8->unk8;
    if (temp_v0_3 != 0) {
        var_v1_2 = *(&D_800D4668 + (temp_v0_3 * 4));
        if (*var_v1_2 != 0) {
            do {
                M2C_MEMCPY_ALIGNED(&D_8012B9B8 + (D_8012B9B0 * 0x30), var_v1_2, 0x30);
                D_8012B9B0 += 1;
                temp_t4_2 = var_v1_2->unk30;
                var_v1_2 += 0x30;
            } while (temp_t4_2 != 0);
        }
    }
    temp_t8_2 = &D_800D7010 + 0x30;
    temp_t8_2->unk0 = D_800BE548.unk0;
    temp_t7_3 = &gKirbyController + 0x10;
    temp_t8_2->unk4 = D_800BE548.unk4;
    temp_t8_2->unk8 = D_800BE548.unk8;
    temp_t8_2->unkC = D_800BE548.unkC;
    temp_t8_2->unk10 = D_800BE548.unk10;
    temp_t8_2->unk14 = D_800BE548.unk14;
    temp_t7_3->unk0 = D_800BE548.unk0;
    temp_t7_3->unk4 = D_800BE548.unk4;
    temp_t7_3->unk8 = D_800BE548.unk8;
    temp_t7_3->unkC = D_800BE548.unkC;
    temp_t7_3->unk10 = D_800BE548.unk10;
    temp_t7_3->unk14 = D_800BE548.unk14;
    func_800A7A70(0, 1, 2, D_80129114);
    func_800A7A70(5, 1, 2);
    func_800A7A70(1, 0x20001, 0x20002);
    func_800A7A70(2, 0x20001, 0x20002);
    *(&D_800D6AB8 + 8) = &D_800D7B80 + 0x18;
    func_800A7A70(3, 0x10001, 0x10002);
    *(&D_800D6AB8 + 0x10) = &D_800D7B80 + 0x20;
    func_800A7A70(6, D_801290D8->unk18, D_801290D8->unk1C);
    *(&D_800D6AB8 + 0x1C) = &D_800D7B80 + 0x28;
    func_800A7BF4(&D_800D7B80 + 0x10, &gKirbyController + 0x10);
    func_800A7BF4(&D_800D7B80 + 0x28, &D_800D7010 + 0x30);
    temp_v0_4 = func_800F8560();
    switch (temp_v0_4) {                            /* switch 1 */
        case 9:                                     /* switch 1 */
            utilLoadOverlay(7);
            utilLoadOverlay(0x10);
            return;
        case 2:                                     /* switch 1 */
            utilLoadOverlay(7);
            switch (D_800BE500) {                   /* switch 2 */
                case 0:                             /* switch 2 */
                    utilLoadOverlay(0xA);
                    return;
                case 1:                             /* switch 2 */
                    utilLoadOverlay(0xB);
                    return;
                case 2:                             /* switch 2 */
                    utilLoadOverlay(0xC);
                    return;
                case 3:                             /* switch 2 */
                    utilLoadOverlay(0xD);
                    return;
                case 4:                             /* switch 2 */
                    utilLoadOverlay(0xE);
                    return;
                case 5:                             /* switch 2 */
                    utilLoadOverlay(0xF);
                    return;
                default:                            /* switch 2 */
                    return;
            }
            break;
        case 1:                                     /* switch 1 */
        case 3:                                     /* switch 1 */
            utilLoadOverlay(7);
            utilLoadOverlay(9);
            return;
        case 10:                                    /* switch 1 */
            utilLoadOverlay(8);
            utilLoadOverlay(0x12);
            return;
        default:                                    /* switch 1 */
            utilLoadOverlay(8);
            if (D_800D6F3C >= 3) {
                utilLoadOverlay(0x12);
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F78E4.s")
#endif

#ifdef MIPS_TO_C

void func_800F8078(void) {
    u8 temp_a0;
    void *temp_v0;

    temp_v0 = *(D_80129114->unk4 + (D_800BE50C * 0x10));
    D_800BE514 = 0;
    D_800BE510 = 0.0f;
    switch (D_800BE4FC) {                           /* irregular */
        case 0:
            D_800BE4FC = 0;
            break;
        case 1:
            D_800BE4FC = 1;
            break;
        case 2:
            temp_a0 = temp_v0->unk3;
            switch (temp_a0) {                      /* switch 1; irregular */
                case 0:                             /* switch 1 */
                    break;
                case 1:                             /* switch 1 */
                    D_800BE514 = 0x80000000;
                    D_800BE510 = 1.0f;
                    break;
                case 2:                             /* switch 1 */
                    D_800BE514 = 0x80000000;
                    break;
                case 3:                             /* switch 1 */
                    D_800BE510 = 1.0f;
                    break;
            }
            D_800BE514 |= temp_v0->unk2;
            break;
    }
    if (!(temp_v0->unkE & 4)) {
        D_800BE518 = D_800BE4FC;
        D_800BE51C = D_800BE508;
        D_800BE520 = D_800BE50C;
        D_800BE524 = D_800BE510;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F8078.s")
#endif

void func_800F81A4(void) {
    extern s32 D_801290D0, D_801290D4, D_8012B9B0;
    extern s32 D_8012913C, D_80129138, D_80129140, D_80129144, D_801292E0;
    extern void func_8010137C(void);
    extern void func_800FA414(s32);
    extern void func_800FBF18(s32);
    extern u16 func_800F8560(void);

    D_801290D0 = request_track_general(0x24, 0x4A, 0x50);
    if (((s32 *) D_801290D8)[1] != 0) {
        D_801290D4 = request_track_general(0x25, 0x4A, 0x50);
    }
    if (D_8012B9B0 != 0) {
        func_8010137C();
    }
    func_800FA414(2);
    D_80129138 = D_8012913C = 0;
    D_80129140 = 0;
    D_80129144 = -1;
    D_801292E0 = 0x270F;
    if (func_800F8560() == 9) {
        func_800FA414(0xC);
        func_800FBF18(0);
    }
}

extern f32 D_801293AC;
extern f32 D_801293B0;
extern f32 D_801293B4;
extern f32 D_801293B8;
extern f32 D_801293BC;
extern f32 D_801293C0;
extern f32 D_801293C4;
extern f32 D_801293C8;
extern f32 D_801293CC;
extern f32 D_801293D0;
extern f32 D_801293D4;
extern s32 D_801293D8;
extern s32 D_80129408;
void func_800FB914(s32);
void func_800F78E4(void);
void func_800F8378(void);
void func_800F8078(void);
void func_800F81A4(void);

void func_800F8274(void) {
    D_801293AC = 0.0;
    D_801293B0 = 0.0f;
    D_801293B4 = 5.0f;
    D_801293B8 = 16.0f;
    D_801293BC = 0.0f;
    D_801293C0 = 1.0f;
    D_801293C4 = 0.1f;
    D_801293C8 = 0.3f;
    D_801293CC = 3.0f;
    D_801293D0 = 80.0f;
    D_801293D4 = 8.0f;
    D_801293D8 = 0;
    func_800FB914(0);
    D_80129408 = 0xC8;
    *(s32 *) &D_8012940C = 0x64;
    func_800F7844();
    func_800F78E4();
    func_800F8378();
    func_800F8078();
    func_800F81A4();
}

struct UnkStruct80129418 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
    s32 unk30;
    s32 unk34;
    s32 unk38;
    s32 unk3C;
    s32 unk40;
    s32 unk44;
};
extern struct UnkStruct80129418 D_80129418;
extern struct UnkStruct80129418 *D_80129410;
extern struct UnkStruct80129418 *D_8012911C;
extern s32 D_801290DC;

void func_800F8378(void) {
    struct UnkStruct80129418 *src = D_8012911C;
    s32 base = D_801290DC;
    s32 temp;

    D_80129418.unk0 = 0;
    D_80129418.unk4 = src->unk0 + base;
    D_80129418.unk8 = src->unk4;
    D_80129418.unkC = src->unk8 + base;
    D_80129418.unk10 = src->unkC;
    D_80129418.unk14 = src->unk10 + base;
    D_80129418.unk18 = src->unk14;
    D_80129418.unk1C = src->unk18 + base;
    D_80129418.unk20 = src->unk1C;
    D_80129418.unk24 = src->unk20 + base;
    D_80129418.unk28 = src->unk24;
    D_80129418.unk2C = src->unk28;
    D_80129418.unk30 = src->unk2C + base;
    D_80129418.unk34 = src->unk30 + base;
    temp = src->unk34;
    if (temp != 0) {
        D_80129418.unk38 = temp + base;
    } else {
        D_80129418.unk38 = 0;
    }
    D_80129418.unk3C = src->unk38;
    temp = src->unk3C;
    if (temp != 0) {
        D_80129418.unk40 = temp + base;
    } else {
        D_80129418.unk40 = 0;
    }
    D_80129418.unk44 = src->unk40;
    D_80129410 = &D_80129418;
}

s32 func_800A9AA8(s32, s32);

void func_800F8464(s32 arg0, struct UnkStruct80129418 *dst) {
    s32 base = func_800A9AA8(arg0, 3);
    struct UnkStruct80129418 *src = (struct UnkStruct80129418 *) (*(s32 *) base + base);
    s32 temp;

    dst->unk0 = 0;
    dst->unk4 = src->unk0 + base;
    dst->unk8 = src->unk4;
    dst->unkC = src->unk8 + base;
    dst->unk10 = src->unkC;
    dst->unk14 = src->unk10 + base;
    dst->unk18 = src->unk14;
    dst->unk1C = src->unk18 + base;
    dst->unk20 = src->unk1C;
    dst->unk24 = src->unk20 + base;
    dst->unk28 = src->unk24;
    dst->unk2C = src->unk28;
    dst->unk30 = src->unk2C + base;
    dst->unk34 = src->unk30 + base;
    temp = src->unk34;
    if (temp != 0) {
        dst->unk38 = temp + base;
    } else {
        dst->unk38 = 0;
    }
    dst->unk3C = src->unk38;
    temp = src->unk3C;
    if (temp != 0) {
        dst->unk40 = temp + base;
    } else {
        dst->unk40 = 0;
    }
    dst->unk44 = src->unk40;
}









u16 func_800F8560(void) {
    return D_801290D8->unk16;
}

#ifdef MIPS_TO_C

void func_800F8570(s32 arg0) {
    f32 *temp_v1;
    f32 temp_f0;
    f32 temp_f12;
    f32 var_f0;
    f32 var_f2;
    s16 temp_t0;
    s32 *temp_a1;
    s32 temp_t1;
    s32 temp_v0;
    s32 var_a0;
    s32 var_t1;
    s32 var_t2;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_t5;
    void *temp_a0;
    void *temp_a3;
    void *temp_a3_2;
    void *var_v0;

    temp_v0 = arg0 * 4;
    temp_v1 = temp_v0 + &D_800E6BD0;
    temp_f0 = *temp_v1;
    temp_a1 = temp_v0 + &D_800E5F90;
    if (!(temp_f0 >= 0.0f) || !(temp_f0 <= 1.0f)) {
        temp_a0 = (*temp_a1 * 0x10) + D_80129114->unk4;
        temp_a3 = temp_a0->unk4;
        temp_t0 = temp_a0->unkC;
        if (temp_f0 < 0.0f) {
            var_t1 = 0;
            if (temp_t0 == 0) {
                *temp_v1 = 0.0001f;
                return;
            }
            var_v0 = temp_a0->unk8;
            if (temp_t0 != 0) {
loop_6:
                temp_a0_2 = var_v0->unk0;
                var_t1 += 1;
                if ((temp_a0_2 != 0) || (var_v0->unk1 & 0xF0)) {
                    if (temp_a0_2 != 0) {
                        *temp_v1 = 0.0001f;
                        return;
                    }
                    var_v0 += 4;
                    if (var_t1 == temp_t0) {
                        goto block_11;
                    }
                    goto loop_6;
                }
                goto block_11;
            }
block_11:
            var_f2 = -temp_f0;
            var_a0 = 0;
            goto block_21;
        }
        if (temp_t0 == 0) {
            *temp_v1 = 0.9999f;
            return;
        }
        var_t2 = temp_t0 - 1;
        var_v0 = (temp_a0->unk8 + (temp_t0 * 4)) - 4;
        temp_t1 = temp_a3->unk2 - 1;
        if (var_t2 >= 0) {
loop_15:
            temp_a0_3 = var_v0->unk0;
            var_t2 -= 1;
            if ((temp_t1 != temp_a0_3) || (var_v0->unk1 & 0xF0)) {
                if (temp_t1 != temp_a0_3) {
                    *temp_v1 = 0.9999f;
                    return;
                }
                var_v0 -= 4;
                if (var_t2 < 0) {
                    goto block_20;
                }
                goto loop_15;
            }
            goto block_20;
        }
block_20:
        var_a0 = 1;
        var_f2 = temp_f0 - 1.0f;
block_21:
        temp_t5 = var_v0->unk2;
        *temp_a1 = temp_t5;
        temp_a3_2 = (D_80129114->unk4 + (temp_t5 * 0x10))->unk4;
        temp_f12 = (temp_a3->unkC * var_f2) / temp_a3_2->unkC;
        if (var_a0 != 0) {
            var_f0 = temp_f12;
        } else {
            var_f0 = -temp_f12;
        }
        *temp_v1 = var_f0 + *(temp_a3_2->unk10 + (var_v0->unk3 * 4));
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F8570.s")
#endif

#ifdef MIPS_TO_C

f32 func_800F8728(s32 arg0, f32 arg1, f32 arg2) {
    void *sp34;
    f32 sp30;
    f32 sp28;
    f32 sp20;
    f32 *sp1C;
    f32 *temp_v1;
    f32 temp_f12;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f4;
    s32 temp_v0;
    void *temp_a1;

    temp_v0 = arg0 * 4;
    temp_a1 = (D_80129114->unk4 + (*(&D_800E5F90 + temp_v0) * 0x10))->unk4;
    temp_v1 = temp_v0 + &D_800E6BD0;
    sp1C = temp_v1;
    sp34 = temp_a1;
    func_8001E344(&sp28, temp_a1, *temp_v1);
    temp_f2 = 1.0f / sqrtf((sp28 * sp28) + (sp30 * sp30));
    temp_f16 = sp28 * temp_f2;
    temp_f4 = sp30 * temp_f2;
    sp28 = temp_f16;
    sp30 = temp_f4;
    temp_f12 = (temp_f16 * arg1) + (temp_f4 * arg2);
    sp20 = temp_f12;
    *sp1C += (temp_f12 / sp34->unkC) * 0.1f;
    func_800F8570(temp_f12, arg0);
    return sp20;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_2/func_800F8728.s")
#endif

f32 func_800F8824(Vector *vec, f32 angle) {
    if (vec != NULL) {
        return atanf(-((vec->x * sinf(angle)) + (cosf(angle) * vec->z)) / vec->y);
    } else {
        return 0.0f;
    }
}
