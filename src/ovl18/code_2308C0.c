#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800E1B50.h"

extern u32 D_800BE4EC;
extern Gfx D_80227440_ovl18[];

extern Gfx *gDisplayListHeads[4];

void HS64_Translate(Mtx *, f32, f32, f32);

/* Unspecified arguments, like func_8021ED10_ovl18 below: the definition is
   K&R and takes the GObj slot the ROM reads out of $a0, but func_8021F400_ovl18
   calls it with none. */
void func_8021E978_ovl18();
void func_8021ED10_ovl18();
/* Unspecified arguments: the definition is K&R and homes the GObj slot the
   ROM leaves in $a0, but func_8021F400_ovl18 calls it with none. */
void func_8021ED3C_ovl18();
void ohSleep(s32);
s32 func_8021E050_ovl18(s32, s32, s32);
void func_800B1900(s32);
void func_800B1BF0(s32, s32);
void dma_read(u32, void *, u32);

extern s32 D_800E83E0[];
extern s32 D_800E7CE0[];
extern u16 D_800E77A0[];
extern s32 D_800E98E0[];
extern f32 D_800D6E58;
extern s32 D_802297E4_ovl18;
extern void (*D_802297E0_ovl18)(void);
extern f32 gEntitiesAngleXArray[];
extern f32 gEntitiesAngleYArray[];
extern f32 gEntitiesAngleZArray[];
extern f32 gEntitiesScaleXArray[];
extern f32 gEntitiesScaleYArray[];
extern f32 gEntitiesScaleZArray[];
extern s32 gEntityGObjProcessArray[];

void func_800B19F4(s32, u32, struct UnkStruct800D70D8 *);
void func_800BB468(s32, s32);
s32 func_800BC11C(f32);
void func_801A3E80_ovl7(struct GObj *);
void assign_new_process_entry(s32, void (*)(struct GObj *));
extern void func_80111550(void *);
s32 func_80111C88(s32 *, u32);
void func_80111ECC(s32);
void play_sound(s32);
s32 func_8021F70C_ovl18(void);
void func_8021FB18_ovl18(void);
void func_8021F4E8_ovl18(void);
s32 func_8021F658_ovl18(void);
void func_8021F970_ovl18(void);
void func_8021FF80_ovl18(void);
void func_80220038_ovl18(void);


void func_8021DF20_ovl18(struct GObj *arg0) {
    Mtx *temp_a0;

    if ((D_800DD8D0[arg0->objId] & 0x40) == 0) {
        if ((D_800E7880[arg0->objId] == 0) || !(D_800BE4EC & 1)) {

            gDPPipeSync(gDisplayListHeads[2]++);

            temp_a0 = (Mtx *)gDynamicBuffer1.top;

            gDynamicBuffer1.top += sizeof(Mtx);

            HS64_Translate(temp_a0, gEntitiesNextPosXArray[arg0->objId], gEntitiesNextPosYArray[arg0->objId], gEntitiesNextPosZArray[arg0->objId]);

            gSPMatrix(gDisplayListHeads[2]++, temp_a0, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPDisplayList(gDisplayListHeads[2]++, &D_80227440_ovl18);
            gSPPopMatrix(gDisplayListHeads[2]++, G_MTX_MODELVIEW);
        }
    }
}

/* The C for this one is below, next to the cue-record declarations it needs
   (search func_8021E050_ovl18). It cannot be written here -- struct Ovl18Cue
   and D_8022959C_ovl18 are declared further down, hoisting them would re-type
   every call site in between, and moving the DEFINITION down would move the
   function in .text. So the pragma keeps the address. */
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021E050_ovl18.s")

extern u8 D_8022BCD8_ovl18[][4];

s32 func_8021E4CC_ovl18(s32 arg0) {
    u8 *temp_v0;
    s32 phi_v1;

    temp_v0 = D_8022BCD8_ovl18[arg0];
    phi_v1 = 0;
    if (temp_v0[0] == 0) {
        phi_v1++;
    }
    if (temp_v0[1] == 0) {
        phi_v1++;
    }
    if (temp_v0[2] == 0) {
        phi_v1++;
    }
    if (temp_v0[3] == 0) {
        phi_v1++;
    }
    return phi_v1;
}

struct Ovl18Cue {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 pad5;
    /* 0x06 */ s16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u8 padA[2];
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ u8 pad14[4];
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ f32 unk20;
}; /* 0x24 */

struct Ovl18Row {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ struct Ovl18Cue *unk4;
    /* 0x08 */ u8 pad8[0x10];
}; /* 0x18 */

struct Ovl18Tbl {
    /* 0x00 */ struct Ovl18Row *unk0;
    /* 0x04 */ u8 pad4[0x18];
}; /* 0x1C */

extern struct Ovl18Tbl D_8022959C_ovl18[];
extern s32 D_8022BC90_ovl18;
extern u8 D_8022BCD0_ovl18[];

#if defined(MIPS_TO_C) || defined(PORT)
/* func_8021E050_ovl18 -- the cue SPAWNER. Its #pragma is ~50 lines above, at
 * the function's real address: the C cannot be written there because the cue
 * record types and D_8022959C_ovl18 are only declared here.
 *
 * Placement modes are the top nibble-and-a-half of the cue's first byte:
 *   0x00  spawn on the lane's path node (D_800E5F90/D_800E6BD0), offset along
 *         the path by unkC and in Y by unk10;
 *   0x10  same, but both offsets are randomised and snapped DOWN to a
 *         multiple of 5 (`random_soft_s32_range(n) / 5 * 5`, which is what the
 *         div/multu/mflo pair in the listing computes -- not a remainder);
 *   0x20  spawn at Kirby's position plus (unkC, unk10);
 *   0x30  spawn at Kirby's position plus a random (unkC, unk10) box.
 * Modes 0x20/0x30 only fill `pos` and fall out returning an uninitialised
 * `ret`, which is the ROM's behaviour, not a transcription slip -- the listing
 * has no store to 0x7C on those paths. Low nibble 7 suppresses the spawn
 * fanfare (play_sound 0x112 + func_800A7F74 + an 18-frame pause).
 *
 * FACTORY: 261/287 words DIFFER, but that is ONE fact, not 261: the
 * instruction count is exact, every branch matches, and the whole local block
 * sits 4 bytes LOW -- yScale/scale/angle/pos/ret/node land at
 * 0x4C/0x50/0x5C/0x68/0x78/0x7C where the ROM has 0x50/0x54/0x60/0x6C/0x7C/
 * 0x80. Every stack-referencing instruction therefore differs. The frame size
 * itself (0x88) is already right, as is the relative order of the six locals
 * and the 4-byte hole the ROM leaves between `pos` and `ret`.
 * Swept and rejected: every 1-, 2- and 3-pad placement across all eight
 * declaration slots (best 261, plain 264) and four spellings of the top pad
 * (plain s32, s32[1], volatile s32, u8[4], f32) -- IDO drops an unreferenced
 * scalar at the TOP of the block, which is exactly where the ROM's spare word
 * (0x84) is, so a pad cannot buy that word. This is the decidable
 * stack-block-base class of LEVERS levers 12/43 and wants the permuter.
 *
 * PORT: shared rather than duplicated. Every local is a named Vector/s32/f32
 * and every callee takes real types, so nothing here is N64-only. */
s32 func_800F9974(s32 *, f32 *, f32);
s32 func_800F9020(Vector *, s32, f32);
s32 func_800FCD14(u32, u8, f32, u8, u8, u8, u8, u8, s16, Vector *, Vector *, Vector *);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
s32 random_soft_s32_range(s32);
void ohSleep(s32);
extern s32 D_800E5F90[];
extern f32 D_800E6BD0[];

s32 func_8021E050_ovl18(s32 arg0, s32 arg1, s32 arg2) {
    s32 pad0;
    struct Ovl18Cue *cue;
    s32 node;
    s32 ret;
    Vector pos;
    Vector angle;
    s32 pad1;
    Vector scale;
    f32 yScale;

    cue = &D_8022959C_ovl18[D_8022BC90_ovl18].unk0[arg1].unk4[arg2];
    angle.x = cue->unk18;
    angle.y = cue->unk1C;
    angle.z = cue->unk20;
    scale.x = 1.0f;
    scale.y = 1.0f;
    scale.z = 1.0f;
    switch (cue->unk0 & 0x70) {
        case 0:
            node = D_800E5F90[omCurrentObj->objId];
            yScale = D_800E6BD0[omCurrentObj->objId];
            func_800F9974(&node, &yScale, cue->unkC);
            func_800F9020(&pos, node, yScale);
            pos.y = gEntitiesNextPosYArray[omCurrentObj->objId] + cue->unk10;
            if ((cue->unk0 & 0xF) != 7) {
                play_sound(0x112);
                func_800A7F74(3, 0, 0xCE, pos.x, pos.y, pos.z);
                ohSleep(0x12);
            }
            ret = func_800FCD14(0xFF, (u8) node, yScale, cue->unk1, cue->unk2, cue->unk3, cue->unk4, 0,
                                cue->unk6, &pos, &angle, &scale);
            break;
        case 0x10:
            node = D_800E5F90[omCurrentObj->objId];
            yScale = D_800E6BD0[omCurrentObj->objId];
            func_800F9974(&node, &yScale, (f32) (random_soft_s32_range((s32) cue->unkC) / 5 * 5));
            func_800F9020(&pos, node, yScale);
            pos.y = gEntitiesNextPosYArray[omCurrentObj->objId] +
                    (f32) (random_soft_s32_range((s32) cue->unk10) / 5 * 5);
            if ((cue->unk0 & 0xF) != 7) {
                play_sound(0x112);
                func_800A7F74(3, 0, 0xCE, pos.x, pos.y, pos.z);
                ohSleep(0x12);
            }
            ret = func_800FCD14(0xFF, (u8) node, yScale, cue->unk1, cue->unk2, cue->unk3, cue->unk4, 0,
                                cue->unk6, &pos, &angle, &scale);
            break;
        case 0x20:
            pos.x = gEntitiesNextPosXArray[omCurrentObj->objId] + cue->unkC;
            pos.y = gEntitiesNextPosYArray[omCurrentObj->objId] + cue->unk10;
            break;
        case 0x30:
            pos.x = (f32) random_soft_s32_range((s32) cue->unkC) + gEntitiesNextPosXArray[omCurrentObj->objId];
            pos.y = (f32) random_soft_s32_range((s32) cue->unk10) + gEntitiesNextPosYArray[omCurrentObj->objId];
            break;
    }
    return ret;
}
#endif

void func_8021E528_ovl18(s32 arg0, s32 arg1, s32 arg2) {
    extern u8 D_8022BCF8_ovl18[][4];
    extern u8 D_8022BD18_ovl18[][4];
    extern u8 D_800E7650[];
    s32 n;
    s32 i;
    s32 ret;

    ohSleep(D_8022959C_ovl18[D_8022BC90_ovl18].unk0[arg1].unk4[arg2].unk8);
    if (D_8022BCD0_ovl18[arg1] != 1) {
        while (1) {
            if (func_8021E4CC_ovl18(arg1) != 0) {
                break;
            }
            ohSleep(1);
        }
        for (i = 0, n = 4; i != n; i++) {
            if (D_8022BCD8_ovl18[arg1][i] == 0) {
                break;
            }
        }
        ret = func_8021E050_ovl18(arg0, arg1, arg2);
        D_8022BCD8_ovl18[arg1][i] = ret;
        D_8022BCF8_ovl18[arg1][i] = D_800E7650[ret];
        D_8022BD18_ovl18[arg1][i] = D_8022959C_ovl18[D_8022BC90_ovl18].unk0[arg1].unk4[arg2].unk0;
        while (1) {
            if (D_8022BCD8_ovl18[arg1][i] == 0) {
                break;
            }
            if (D_800E7650[D_8022BCD8_ovl18[arg1][i]] != D_8022BCF8_ovl18[arg1][i]) {
                break;
            }
            ohSleep(1);
        }
    }
}

void func_8021E6E0_ovl18(s32 arg0, s32 arg1, s32 arg2) {
    extern u8 D_8022BCF8_ovl18[][4];
    extern u8 D_8022BD18_ovl18[][4];
    extern u8 D_800E7650[];
    s32 n;
    s32 i;
    s32 ret;

    ohSleep(D_8022959C_ovl18[D_8022BC90_ovl18].unk0[arg1].unk4[arg2].unk8);
    if (D_8022BCD0_ovl18[arg1] != 1) {
        while (1) {
            if (func_8021E4CC_ovl18(arg1) != 0) {
                break;
            }
            ohSleep(1);
        }
        for (i = 0, n = 4; i != n; i++) {
            if (D_8022BCD8_ovl18[arg1][i] == 0) {
                break;
            }
        }
        ret = func_8021E050_ovl18(arg0, arg1, arg2);
        D_8022BCD8_ovl18[arg1][i] = ret;
        D_8022BCF8_ovl18[arg1][i] = D_800E7650[ret];
        D_8022BD18_ovl18[arg1][i] = D_8022959C_ovl18[D_8022BC90_ovl18].unk0[arg1].unk4[arg2].unk0;
    }
}

extern u8 D_8022BCF8_ovl18[][4];
extern u8 D_8022BD18_ovl18[][4];
extern u8 D_800E7650[];

void func_8021E858_ovl18(UNUSED s32 arg0) {
    s32 i;
    s32 idx;
    s32 n;
    u8 *p;

    idx = D_800E98E0[omCurrentObj->objId];
    p = D_8022BCD8_ovl18[idx];
    for (i = 0, n = 4; i != n; i++, p++) {
        if (*p != 0) {
            if (D_800E7650[*p] != D_8022BCF8_ovl18[idx][i]) {
                if ((D_8022BD18_ovl18[idx][i] & 0x80) != 0) {
                    D_800D6E58 -= 1.0f;
                    func_800BC11C(D_800D6E58);
                }
                *p = 0;
            }
        }
    }
}

#if defined(MIPS_TO_C) || defined(PORT)
/* The per-lane CUE-SCRIPT interpreter. Row `row` of the current table's lane
 * list is a program; D_800E9AA0[objId] is its program counter and the low
 * nibble of each 0x24-byte cue's first byte is the opcode: 0/7 spawn-and-wait
 * (func_8021E528_ovl18), 1 spawn-and-continue (func_8021E6E0_ovl18), 2 rewind
 * the pc to 0, 4 bump every lane's state byte, 5 bump the global D_800D6E1C
 * counter, 6 park this lane in state 2, 0xF drain the lane (wait for all four
 * slots to clear) and then retire, 3 retire immediately. Opcodes 8..0xE are
 * the jump table's default and just re-read the pc.
 *
 * FACTORY: 13/230 words DIFFER (12 real -- [122] is only verify.py's
 * anonymous-.rodata artifact for the jump table when scoring a scratch copy).
 * Instruction count is exact and every branch target matches. The residue is
 * two scheduling facts: at both `pc`/`row` reload sites IDO emits the two
 * `addu`s in the opposite order to the ROM (4 diffs; the ROM computes the
 * D_800E98E0 address first but issues the D_800E9AA0 LOAD first, and no source
 * order produces both -- putting `row` first swaps the loads instead), and
 * IDO's 4x unroll of the opcode-4 loop rotates its four lbu/addiu pairs by one
 * (8 diffs).
 * Swept and rejected: `i != 8` (13), `x = x + 1` instead of `x++` (13), an
 * explicit objId local (17).
 * What paid, in order: writing the opcode-4 loop as an INDEXED loop over 8 --
 * IDO then knows the trip count and unrolls to the ROM's 4-at-a-time walk
 * with no zero-trip guard and no remainder loop, where a pointer walk gets
 * both (238 -> 230 words); naming the masked opcode in a local, which is what
 * makes IDO keep the `sltiu 0x10` range check the ROM has; the two pads that
 * put the frame at the ROM's 0x50; and reading `pc` before `row`. The last
 * 34 diffs went when case 0xF was made to FALL THROUGH into case 5 -- the ROM
 * has no branch after its curObjSleepForever(), and neither does case 3.
 *
 * PORT: shared rather than duplicated. Everything here is s32/u8 through named
 * types; the `(s32 *)` view of D_800E9AA0 is the 4-byte-slot vram layout the
 * host uses (tools/pc/vram_syms.txt), and the two function-pointer casts are
 * the ROM's own stores of a GObj callback into an s32 callback slot. The K&R
 * definition is what makes IDO read the GObj out of $a0 while
 * func_8021F400_ovl18 calls it with no argument, exactly as for
 * func_8021ED10_ovl18 below. The declarations live inside this guard so the
 * N64 build's file-scope view is unchanged. */
void ohSleep(s32);
void curObjSleepForever(void);
void setProcessMain(struct GObjProcess *proc, void (*cb)(struct GObj *));
void procMainStub(struct GObj *g);
void func_800AF9B8(u16, u8);
void func_800B491C(struct GObj *);
extern struct GObjProcess *gEntityGObjProcessArray5[];
extern s32 D_800D6E1C;

void func_8021E978_ovl18(arg0)
s32 arg0;
{
    s32 row;
    s32 pad0;
    s32 pc;
    s32 pad1;
    s32 i;
    s32 op;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = func_800B491C;
    func_800AF9B8(0x24, 0x10);
    D_800DD8D0[omCurrentObj->objId] |= 0x40;
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_8021E858_ovl18;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    ohSleep(D_8022959C_ovl18[D_8022BC90_ovl18].unk0[D_800E98E0[omCurrentObj->objId]].unk0);
    pc = ((s32 *) D_800E9AA0)[omCurrentObj->objId];
    row = D_800E98E0[omCurrentObj->objId];
    while (1) {
        if (D_8022BCD0_ovl18[row] == 1) {
            curObjSleepForever();
        }
        op = D_8022959C_ovl18[D_8022BC90_ovl18].unk0[row].unk4[pc].unk0 & 0xF;
        switch (op) {
            case 0:
            case 7:
                func_8021E528_ovl18(arg0, row, pc);
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] += 1;
                break;
            case 1:
                func_8021E6E0_ovl18(arg0, row, pc);
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] += 1;
                break;
            case 4:
                for (i = 0; i < 8; i++) {
                    D_8022BCD0_ovl18[i]++;
                }
                break;
            case 2:
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
                break;
            case 3:
                curObjSleepForever();
                /* fallthrough */
            case 0xF:
                while (func_8021E4CC_ovl18(row) != 4) {
                    ohSleep(1);
                }
                D_8022BCD0_ovl18[row]++;
                curObjSleepForever();
                /* fallthrough */
            case 5:
                D_800D6E1C += 1;
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] += 1;
                break;
            case 6:
                D_8022BCD0_ovl18[row] = 2;
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] += 1;
                break;
        }
        pc = ((s32 *) D_800E9AA0)[omCurrentObj->objId];
        row = D_800E98E0[omCurrentObj->objId];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021E978_ovl18.s")
#endif

/* K&R definition is load-bearing: the parameter home slot (sw $a0) is only
 * emitted with a declared parameter, and a prototyped one would reject the
 * zero-argument call in func_8021F400_ovl18. */
void func_8021ED10_ovl18(arg0)
s32 arg0;
{
    func_800B1900(((u16 *)omCurrentObj)[1]);
}

#if defined(MIPS_TO_C) || defined(PORT)
/* The stage OPENER for an ovl18 minigame round. Latches the level id from
 * D_800E77A0 into D_8022BC90_ovl18, its lane count into D_8022BC94_ovl18 and
 * the entity slot into D_8022BC98_ovl18, copies that entity record out of
 * D_801290E0 into D_8022BCA0_ovl18, clears all eight lanes' state and slot
 * arrays, then -- unless this is a replay (D_800D6E20[D_800BE508]), which
 * short-circuits straight to the result words -- spawns one seat track per
 * lane at its offset along Kirby's path node and waits for every lane to
 * check in. It finishes by publishing the round's three result words
 * (D_800D6E14/18/1C) and, when the level names a prize entity and both
 * anti-tamper probes pass, spawning that prize.
 *
 * FACTORY: 343/374 words differ, and the draft is 4 words LONG (the ROM is
 * 370). Semantics are solved -- every call, constant and branch is accounted
 * for -- but two register-allocation facts make almost every word differ:
 * the frame comes out 0xB8 against the ROM 0xC0, and IDO hoists FIVE array
 * bases into saved registers around the seat loop (it lifts
 * gEntitiesNextPosYArray as well) where the ROM hoists four and
 * re-materialises that one inside the loop, which permutes s0-s8 for the rest
 * of the function. Swept: two dead scalars in each of two placements
 * (345 -> 343). This wants the permuter, not more source spellings.
 *
 * Types recovered here and worth keeping regardless of the score:
 * D_80229594_ovl18 is the SAME 0x1C-stride table as D_8022959C_ovl18 above,
 * eight bytes earlier -- Ovl18Tbl.unk0 is this record's `rows` field -- and
 * the per-lane seat records it points at are 0x18 bytes with a path offset at
 * +8 and an (x,y,z) offset at +0xC/+0x10/+0x14.
 *
 * PORT: shared rather than duplicated; everything is named types and the one
 * struct copy is a plain `struct Entity` assignment. */
/* D_80229594_ovl18 is the same 0x1C-stride table as D_8022959C_ovl18 above,
   eight bytes earlier: this record's unk8 IS Ovl18Tbl.unk0. */
struct Ovl18Level {
    /* 0x00 */ u8 laneCount;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 pad5[3];
    /* 0x08 */ struct Ovl18Row *rows;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 padD[3];
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ u8 pad18[4];
}; /* 0x1C */

struct Ovl18Seat {
    /* 0x00 */ u8 pad0[8];
    /* 0x08 */ f32 unk8;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
}; /* 0x18 */

extern struct Ovl18Level D_80229594_ovl18[];
extern s32 D_8022BC94_ovl18;
extern s32 D_8022BC98_ovl18;
extern struct Entity D_8022BCA0_ovl18;
extern struct Entity *D_801290E0;
extern u8 D_800E76C0[];
extern s32 D_800D6E14;
extern s32 D_800D6E18;
extern s32 D_800D6E1C;
extern s32 D_800D6E98;
extern u8 D_800D6E20[];
extern u32 D_800BE508;
extern u8 D_800E7880[];
extern s32 D_800E5F90[];
extern f32 D_800E6BD0[];
s32 func_800AEA64(s32, s32, s32);
void func_800BC1FC(s32);
s32 func_800FD754(s32, f32, f32, f32);
s32 func_800F9974(s32 *, f32 *, f32);
s32 func_800F9020(Vector *, s32, f32);
s32 func_800FCD14(u32, u8, f32, u8, u8, u8, u8, u8, s16, Vector *, Vector *, Vector *);
u8 func_8021F304_ovl18(void);
s32 func_8021F35C_ovl18(void);
void ohSleep(s32);
void curObjSleepForever(void);
void setProcessMain(struct GObjProcess *proc, void (*cb)(struct GObj *));
void procMainStub(struct GObj *g);
void func_800AF9B8(u16, u8);
void func_800B491C(struct GObj *);
extern struct GObjProcess *gEntityGObjProcessArray5[];

void func_8021ED3C_ovl18(arg0)
s32 arg0;
{
    struct Ovl18Level *lvl;
    struct Ovl18Seat *seat;
    s32 i;
    s32 seated;
    s32 lanes;
    s32 track;
    s32 pad0;
    s32 pad1;
    s32 node;
    f32 yScale;
    Vector pos;
    Vector angle;
    Vector scale;

    D_8022BC90_ovl18 = D_800E77A0[omCurrentObj->objId];
    D_8022BC94_ovl18 = D_80229594_ovl18[D_8022BC90_ovl18].laneCount;
    D_8022BC98_ovl18 = D_800E76C0[omCurrentObj->objId];
    D_8022BCA0_ovl18 = D_801290E0[D_8022BC98_ovl18];
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = func_800B491C;
    func_800AF9B8(0x24, 0x10);
    D_800DD8D0[omCurrentObj->objId] |= 0x40;
    for (i = 0; i < 8; i++) {
        D_8022BCD0_ovl18[i] = 0;
        D_8022BCF8_ovl18[i][0] = 0;
        D_8022BCD8_ovl18[i][0] = 0;
        D_8022BCF8_ovl18[i][1] = 0;
        D_8022BCD8_ovl18[i][1] = 0;
        D_8022BCF8_ovl18[i][2] = 0;
        D_8022BCD8_ovl18[i][2] = 0;
        D_8022BCF8_ovl18[i][3] = 0;
        D_8022BCD8_ovl18[i][3] = 0;
    }
    if (D_800D6E20[D_800BE508] != 0) {
        ohSleep(0x2D);
        D_800D6E14 = D_80229594_ovl18[D_8022BC90_ovl18].unk2;
        D_800D6E18 = D_80229594_ovl18[D_8022BC90_ovl18].unk3;
        D_800D6E1C = D_80229594_ovl18[D_8022BC90_ovl18].unk4;
        curObjSleepForever();
    }
    seat = D_80229594_ovl18[D_8022BC90_ovl18].rows;
    i = 0;
    if (D_8022BC94_ovl18 != 0) {
        do {
            track = func_800AEA64(0x21, 0x3C, 0x49);
            D_800E7880[track] = 1;
            D_800E98E0[track] = i;
            D_800E5F90[track] = D_800E5F90[omCurrentObj->objId];
            D_800E6BD0[track] = D_800E6BD0[omCurrentObj->objId];
            func_800F9974(&D_800E5F90[track], &D_800E6BD0[track], seat->unk8);
            gEntitiesNextPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId] + seat->unkC;
            i++;
            seat++;
            gEntitiesNextPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId] + seat[-1].unk10;
            gEntitiesNextPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId] + seat[-1].unk14;
        } while (i < D_8022BC94_ovl18);
    }
    func_800BC1FC(D_80229594_ovl18[D_8022BC90_ovl18].unk1);
    seated = 0;
    while (1) {
        lanes = D_8022BC94_ovl18;
        for (; i < lanes; i++) {
            if (D_8022BCD0_ovl18[i] != 0) {
                seated++;
            }
        }
        if (seated == lanes) {
            break;
        }
        i = 0;
        seated = 0;
        ohSleep(1);
    }
    lvl = &D_80229594_ovl18[D_8022BC90_ovl18];
    D_800D6E14 = lvl->unk2;
    D_800D6E18 = lvl->unk3;
    D_800D6E1C = lvl->unk4;
    if ((lvl->unkC != 0) && (func_8021F304_ovl18() != 0) && (func_8021F35C_ovl18() != 0)) {
        node = D_800E5F90[omCurrentObj->objId];
        yScale = D_800E6BD0[omCurrentObj->objId];
        func_800F9974(&node, &yScale, lvl->unk10);
        func_800F9020(&pos, node, yScale);
        pos.y = gEntitiesNextPosYArray[omCurrentObj->objId] + lvl->unk14;
        func_800FD754(0, pos.x, pos.y, pos.z);
        ohSleep(0xA);
        scale.z = 1.0f;
        scale.y = 1.0f;
        scale.x = 1.0f;
        angle.z = 0.0f;
        angle.y = 0.0f;
        angle.x = 0.0f;
        func_800FCD14(0xFF, (u8) node, yScale, 3, 7, 2, 0, 0, lvl->unkC, &pos, &angle, &scale);
        play_sound(0x226);
    }
    D_800D6E98 = 0;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021ED3C_ovl18.s")
#endif

// checks bytes in the PIF as a tamper check
u8 func_8021F304_ovl18(void) {
    s32 buf[4];

    dma_read(0x00000F10, &buf, 0x10);
    if (buf[0] != 0x04080040) {
        return 0;
    } else if (buf[1] != 0x02081040) {
        return 0;
    } else {
        return 1;
    }
}

extern u8 utilTamperCheck(void);

/* Checksums the two functions' own instruction words and compares them.
 * The zeroed sums must be assigned BEFORE the two pointers -- that order is
 * what puts the sums in $v0/$v1 and the walkers in $a0/$a2. */
s32 func_8021F35C_ovl18(void) {
    s32 sum1;
    s32 sum2;
    s32 *p;
    s32 *q;
    s32 i;

    sum2 = 0;
    sum1 = 0;
    p = (s32 *) utilTamperCheck;
    q = (s32 *) func_8021F304_ovl18;
    i = 0;
    do {
        sum1 += *p++;
        sum2 += *q++;
        i++;
    } while (i != 10);
    if (sum1 != sum2) {
        return 0;
    }
    return 1;
}

void func_8021F400_ovl18(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
        case 0:
            func_8021ED3C_ovl18();
            break;
        case 1:
            func_8021E978_ovl18();
            break;
        case 2:
            func_8021ED10_ovl18();
    }
    func_800B1900(omCurrentObj->objId & 0xFFFF);
}

extern f32 D_800D6E58;
void func_8021F4A0_ovl18(void) {
    D_800E7B20[omCurrentObj->objId] = D_800D6E58;
    D_800E7CE0[omCurrentObj->objId] = 0x1E;
    D_800D7098.unk0 = 0;
}

void func_8021F4E8_ovl18(void) {
    struct EnemyRecord *temp_a0;

    temp_a0 = D_800E1B50[omCurrentObj->objId];
    if (D_800E83E0[omCurrentObj->objId] == 2 || D_800E83E0[omCurrentObj->objId] == 1) {
        temp_a0->unk43 = 0;
        D_800D6E58 = D_800E7B20[omCurrentObj->objId];
        if (D_800E83E0[omCurrentObj->objId] == 2) {
            func_8021F970_ovl18();
        }
        if (func_800BC11C(D_800D6E58) == 0) {
            func_800BB468(2, 0);
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        }
    }
}

s32 func_8021F5CC_ovl18(void) {
    struct EnemyRecord *temp_v0;

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    if (temp_v0 == NULL) {
        return 0;
    }
    if (temp_v0->unk8C == NULL) {
        return 0;
    }
    func_80111550((void *) omCurrentObj->objId);
    func_80111ECC(func_80111C88(temp_v0->unk8C, omCurrentObj->objId));
    return func_8021F658_ovl18();
}

s32 func_8021F658_ovl18(void) {
    struct EnemyRecord *sp24;
    s32 sp20;
    s32 sp1C;

    sp24 = D_800E1B50[omCurrentObj->objId];
    sp1C = D_800E77A0[omCurrentObj->objId] - 0x4E;
    sp20 = func_8021F70C_ovl18();
    func_8021F4E8_ovl18();
    if (D_800D7098.unk0 != 0) {
        sp24->unk3D = sp24->unk3D - 1;
        if (sp24->unk3D != 0) {
            /* the byte-offset spelling is load-bearing: the [i * 2] array form
             * costs one temp slot */
            (*(void (**)(void)) ((u8 *) &D_802297E0_ovl18 + sp1C * 8))();
        } else {
            func_8021FB18_ovl18();
        }
    }
    return sp20;
}

/* FACTORY: 135/152, one register-allocation choice, everything else exact.
   Cross-segment clone of ovl7_2's func_8019F650_ovl7 / func_8019FA68_ovl7 --
   same three func_80110B00/FD4/150 probes, same unk43/unk3E/unk3F/unk3A stores,
   same D_800E83E0 switch -- and it was ported from that draft.  The frame
   (0x50), the info struct at 0x2C and its 0x1C size are exact and needed the
   leading `s32 pad;`, same as the donor.  The `&omCurrentObj` hoist the donor
   cannot reach lands here for free off the inline-the-field lever: IDO puts the
   address in a SAVED register exactly as the ROM does.
   Residue: the ROM spends its one saved register on &omCurrentObj ($s0) and
   SPILLS `ent` to 0x48($sp), re-storing it in every jal delay slot; ours keeps
   `ent` in $s0 and pushes the address to $s1, so both saved-register names are
   swapped and the spill/reload pairs are absent.  Two variants spent: inlining
   `D_800E1B50[omCurrentObj->objId]->` at every use to demote `ent` to a
   compiler temp (219/219 -- it stops the array load being CSEd at all and
   costs 67 instructions), and declaring `ent` after the struct (141/152, moves
   the struct to 0x30).  A user local wins a callee-saved register here and the
   ROM's does not; that is not reachable from source shape.  Permuter food. */
#ifdef NON_MATCHING
struct Ovl18AnimInfoA {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0xC];
};

s32 func_8021F70C_ovl18(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_801A0244_ovl7(s32);
    void func_8019EBCC_ovl7(struct GObj *);
    s32 pad;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl18AnimInfoA sp2C;

    if (func_80110B00(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
        ent->unk3E = sp2C.unk0;
        ent->unk3F = sp2C.unk1;
        ent->unk3A = sp2C.unkC;
    } else if (func_80110FD4(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
        ent->unk3E = sp2C.unk0;
        ent->unk3F = sp2C.unk1;
        ent->unk3A = sp2C.unkC;
    } else if (func_80110150(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
        ent->unk3E = sp2C.unk0;
        ent->unk3F = sp2C.unk1;
        ent->unk3A = sp2C.unkC;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
        ent->unk3A = -1;
    }
    switch (D_800E83E0[omCurrentObj->objId]) {
    case 1:
        if (func_801A0244_ovl7(sp2C.unkC) != -1) {
            D_800E83E0[omCurrentObj->objId] = 0x12;
            play_sound(0xF4);
            ent->unk94 = 0;
            ent->unk40 = 1;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        return 1;
    case 2:
        func_8019EBCC_ovl7(D_800DE350[omCurrentObj->objId]);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021F70C_ovl18.s")
#endif

void func_8021F970_ovl18(void) {
    struct EnemyRecord *sp1C;
    s32 sp18;

    sp1C = D_800E1B50[omCurrentObj->objId];
    sp18 = D_800E77A0[omCurrentObj->objId] - 0x4E;
    play_sound(0x28);
    sp1C->unk3D = ((u8 *) &D_802297E4_ovl18)[sp18 * 8];
    D_800E7CE0[omCurrentObj->objId] = sp1C->unk3D;
    D_800D70D8.unk0 = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800D70D8.unk4 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800D70D8.unk8 = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800D70D8.unkC = gEntitiesAngleXArray[omCurrentObj->objId];
    D_800D70D8.unk10 = gEntitiesAngleYArray[omCurrentObj->objId];
    D_800D70D8.unk14 = gEntitiesAngleZArray[omCurrentObj->objId];
    D_800D70D8.unk18 = gEntitiesScaleXArray[omCurrentObj->objId];
    D_800D70D8.unk1C = gEntitiesScaleYArray[omCurrentObj->objId];
    D_800D70D8.unk20 = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800D7098.unk0 = 1;
    D_800D7098.unk4 = 0;
    D_800D7098.unk8 = 0;
    D_800D7098.unkC = 0;
    D_800D7098.unk10 = 0;
    D_800D7098.unk14 = 0;
    D_800D7098.unk18 = 0;
    func_800B19F4(6, omCurrentObj->objId, &D_800D70D8);
}

void func_8021FB18_ovl18(void) {
    D_800E7CE0[omCurrentObj->objId] = 0;
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_800D70D8.unk0;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800D70D8.unk4;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800D70D8.unk8;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800D70D8.unkC;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800D70D8.unk10;
    gEntitiesAngleZArray[omCurrentObj->objId] = D_800D70D8.unk14;
    gEntitiesScaleXArray[omCurrentObj->objId] = D_800D70D8.unk18;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_800D70D8.unk1C;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_800D70D8.unk20;
    D_800D7098.unk0 = 0;
    func_800B1BF0(0, omCurrentObj->objId);
}

/* The `*(s32 *) &D_800D7098.unk4` reload inside the if IS load-bearing -- the
 * plain member read is CSEd away. */
void func_8021FC40_ovl18(void) {
    struct EnemyRecord *p;
    s32 v;
    s32 temp;

    p = D_800E1B50[omCurrentObj->objId];
    if (p->unk3D == 0x17) {
        D_800D7098.unk8 = 1;
    }
    v = D_800D7098.unk4;
    if (ABS(v) >= 3) {
        D_800D7098.unk8 = -D_800D7098.unk8;
        v = *(s32 *) &D_800D7098.unk4;
    }
    temp = D_800D7098.unk8 + v;
    gEntitiesScaleXArray[omCurrentObj->objId] = ((D_800D70D8.unk18 * 0.12f) * (f32) temp) + D_800D70D8.unk18;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_800D70D8.unk1C - ((D_800D70D8.unk1C * 0.12f) * (f32) temp);
    gEntitiesScaleZArray[omCurrentObj->objId] = ((D_800D70D8.unk20 * 0.12f) * (f32) temp) + D_800D70D8.unk20;
    D_800D7098.unk4 = temp;
}

/* 0.20943952f now emitted by this TU */
/* 0.20943952f now emitted by this TU */
void func_8021FD48_ovl18(void) {
    D_800D7098.unk4 = D_800D7098.unk4 + 1;
    if (D_800E77A0[omCurrentObj->objId] == 0x56) {
        gEntitiesAngleXArray[omCurrentObj->objId] =
            D_800D70D8.unkC - (*(s32 *) &D_800D7098.unk4 * 0.20943952f);
    } else {
        gEntitiesAngleYArray[omCurrentObj->objId] =
            (*(s32 *) &D_800D7098.unk4 * 0.20943952f) + D_800D70D8.unk10;
    }
}

/* 45/57 -> 40/54.  Two fixes over the previous draft, both proved on the
 * siblings in this file: this TU's .rodata is MIGRATED, so the constant has to
 * be the LITERAL 0.17453294f (an `extern f32 D_8022BB8C_ovl18` would not even
 * link), and the ROM's two likely-branch exits out of the sign test are ONE
 * `if (old >= 0 || temp > 0)` -- two separate `if ... goto out` statements do
 * not put `addu $a1, $a0, $v0` in either delay slot.
 * What is left is a whole-function register rotation: the ROM keeps
 * &D_800D7098 in $a2 and temp/ABS(temp) in $v0/$a0, IDO uses $a3 and $a0/$v0,
 * and IDO hoists the `lw objId` into the two likely-branch delay slots where
 * the ROM loads it once in the tail.  Swept at 40-47: an explicit
 * `struct GObj *obj` local (47), `old = -D_800D7098.unk8` vs a reload-then-
 * negate local, the product inline vs folded into `ft` first. */
#ifdef NON_MATCHING
void func_8021FDF4_ovl18(void) {
    struct EnemyRecord *ent;
    s32 temp;
    s32 old;
    s32 sum;
    f32 ft;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent->unk3D == 0x17) {
        D_800D7098.unk8 = 1;
    }
    temp = D_800D7098.unk4;
    if (ABS(temp) < 3) {
        old = D_800D7098.unk8;
        if (old >= 0 || temp > 0) {
            sum = old + temp;
            goto out;
        }
    }
    old = -D_800D7098.unk8;
    D_800D7098.unk8 = old;
    sum = old + *(s32 *) &D_800D7098.unk4;
out:
    ft = (f32) sum;
    ft = 0.17453294f * ft;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800D70D8.unkC + ft;
    *(s32 *) &D_800D7098.unk4 = sum;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_8021FDF4_ovl18.s")
#endif
void func_8021FEBC_ovl18(void) {
    struct EnemyRecord *p;
    s32 v;
    s32 temp;
    f32 ft;

    p = D_800E1B50[omCurrentObj->objId];
    if (p->unk3D == 7) {
        D_800D7098.unk8 = 1;
    }
    v = D_800D7098.unk4;
    if (ABS(v) >= 2) {
        D_800D7098.unk8 = -D_800D7098.unk8;
        v = *(s32 *) &D_800D7098.unk4;
    }
    temp = D_800D7098.unk8 + v;
    ft = (f32) temp;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800D70D8.unk1C * 3.0f * ft + D_800D70D8.unk4;
    D_800D7098.unk4 = temp;
}

/* Folding the product back into `ft` before the add is load-bearing: with the
 * product written inline IDO canonicalises the outermost `add.s` to
 * product-first whatever the source order, and only a separate assignment
 * statement gives the ROM's `add.s $f18, $f16, $f10`. */
void func_8021FF80_ovl18(void) {
    struct EnemyRecord *p;
    s32 v;
    s32 temp;
    f32 ft;

    p = D_800E1B50[omCurrentObj->objId];
    if (p->unk3D == 0x17) {
        D_800D7098.unk8 = 1;
    }
    v = D_800D7098.unk4;
    if (ABS(v) >= 3) {
        D_800D7098.unk8 = -D_800D7098.unk8;
        v = *(s32 *) &D_800D7098.unk4;
    }
    temp = D_800D7098.unk8 + v;
    ft = (f32) temp;
    ft = 0.20943952f * ft;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800D70D8.unkC + ft;
    D_800D7098.unk4 = temp;
}

/* 67/86, new draft.  Structurally right: both halves are the ABS()/sign-flip
 * idiom of func_8021FC40/func_8021FEBC above, the Y half with the ROM's
 * `if (old >= 0 || temp > 0)` pair of likely branches and the Z half with the
 * plain `bnel` form.  Two things are already forced and must stay: the two
 * stores of 1 share ONE constant register only if unk18/unk10 are written
 * through the same type (they are declared s32/u32), and reusing ONE local for
 * both ABS(v) and `old` is what makes the ROM's single $a0 hold both.
 * The residue is a whole-function register rotation of exactly one slot: the
 * ROM has v in $v0 / abs+old in $a0 / sum in $a1, IDO has $a0 / $a1 / $a2,
 * because IDO materialises the constant 1 AFTER the `lbu unk3D` (so it takes
 * the just-freed $v0) where the ROM materialises it before (so it takes $t9).
 * Downstream of that IDO fills the two likely-branch delay slots with the
 * hoisted `lw objId` where the ROM fills them with the 1.25f `lui`.
 * Swept: sharing the constant as s32/u32/both-cast/chained, a separate `old`
 * vs one reused temp, goto vs nested if for the negate path. */
#ifdef NON_MATCHING
void func_80220038_ovl18(void) {
    struct EnemyRecord *ent;
    s32 v;
    s32 old;
    s32 sum;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent->unk3D == 0x17) {
        D_800D7098.unk18 = *(s32 *) &D_800D7098.unk10 = 1;
    }
    v = D_800D7098.unkC;
    old = ABS(v);
    if (old < 6) {
        old = D_800D7098.unk10;
        if (old >= 0 || v > 0) {
            goto skip;
        }
    }
    old = -D_800D7098.unk10;
    D_800D7098.unk10 = old;
    v = *(s32 *) &D_800D7098.unkC;
skip:
    sum = old + v;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800D70D8.unk1C * 1.25f * (f32) sum + D_800D70D8.unk4;
    D_800D7098.unkC = sum;
    v = D_800D7098.unk14;
    if (ABS(v) >= 6) {
        D_800D7098.unk18 = -D_800D7098.unk18;
        v = *(s32 *) &D_800D7098.unk14;
    }
    sum = D_800D7098.unk18 + v;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800D70D8.unk20 * 0.69999999f * (f32) sum + D_800D70D8.unk8;
    D_800D7098.unk14 = sum;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_2308C0/func_80220038_ovl18.s")
#endif

// last function in this translation unit: its listing carries the
// TU's trailing alignment padding, which C does not emit

void func_80220184_ovl18(void) {
    func_8021FF80_ovl18();
    func_80220038_ovl18();
}


