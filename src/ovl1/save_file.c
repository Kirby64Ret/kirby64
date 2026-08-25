#include "common.h"
#include "save_file.h"
#include "main/contpad.h"

void func_80004D00(s32, void *, s32);
void func_800B91B8(void);
void func_800B92B4(void);
void func_800B8C08(void);
void func_800B8BDC(void);
void func_800B9008(void);
/* Hoisted out of func_800B87E0. saveVerify also has a file-scope
 * declaration at the bottom of this file, but that one is BELOW every call
 * to it, so it was never the declaration in scope. */
s32 saveCalcFileChecksum(u32);
void saveVerify(s32);
void func_800B8E00(s32);

typedef struct SaveBlock {
    u32 data[0x6E];
} SaveBlock;

#define SAVE_U32(off) (*(u32 *)((u8 *)&gSaveBuffer1 + (off)))
#define SAVE_U16(off) (*(u16 *)((u8 *)&gSaveBuffer1 + (off)))


extern u16 D_800ECB00[];
extern u32 D_800ECB10[];
extern u32 D_800ECBA8;
extern u32 D_800ECBAC;
extern u8 D_800D5157[];
extern s32 D_800BE500;
extern s32 D_800BE504;
extern u8 D_800D6BC0[];

void func_80004D34(s32, void *, s32);
void func_800B891C(s32);
void saveSetFileChecksum(u32 file);
u32 func_800B922C(void);
extern u8 D_800D6BC8[];
extern u8 D_800D6BC5;

void func_800B8700(void) {
    s32 count;
    s32 i;

    func_80004D00(0, &gSaveBuffer1, 0x118);
    if (saveCalcHeaderChecksum() != gSaveBuffer1.header.checksum) {
        func_800B9008();
    }
#ifdef PORT
    /* Sanitize every file record straight off the cartridge, before anything
     * reads it. A record whose world/level are outside the game's range
     * bricks the map screens later (they index tables with the raw value);
     * real hardware never produces one, but early port builds wrote
     * half-real records whose valid checksums made the poison durable, and
     * the file-select exists test is not the same field the count below
     * uses. Erasing is idempotent for genuinely empty (all-0x99) files --
     * they are out of range by definition and get re-stamped clean. */
    {
        for (i = 0; i < 3; i++) {
            if (gSaveBuffer1.files[i].world - 1 >= 8 || gSaveBuffer1.files[i].level - 1 >= 9) {
                func_800B8E00(i);
            }
        }
    }
#endif
    for (i = 0, count = 0; i < 3; i++) {
        if (gSaveBuffer1.files[i].level != SAVE_INIT_MAGIC) {
            count++;
        }
    }
    gSaveBuffer1.header.head[2] = count;
    saveSetHeaderChecksum();
    func_800B8BDC();
    *(SaveBlock *)&gSaveBuffer2 = *(SaveBlock *)&gSaveBuffer1;
}

extern u8 D_800D5150[];

void func_800B87E0(void) {
    s32 i;

    for (i = 0; i != 3; i++) {
        if (saveCalcFileChecksum(i) == gSaveBuffer1.files[i].checksum) {
            saveVerify(i);
            saveSetFileChecksum(i);
            func_800B891C(i);
        } else {
            func_80004D00(D_800D5150[i * 2 + 7], &gSaveBuffer1.files[i], 0x58);
            if (saveCalcFileChecksum(i) == gSaveBuffer1.files[i].checksum) {
                func_80004D34(D_800D5150[i * 2 + 1], &gSaveBuffer1.files[i], 0x58);
            } else {
                func_800B8E00(i);
            }
        }
        gSaveBuffer2.files[i] = gSaveBuffer1.files[i];
    }
}

// Draft, 34/110: correct; residue is the frame being 8 bytes too big (IDO gives
// 10 local slots where the ROM has 8) and the register rotation that follows from
// it. Two levers are load-bearing here: `j = 0; p = src; q = dst;` in THAT order
// (assignment order, not declaration order, decides that $v0 holds the counter),
// and `8U` as the SECOND loop's bound -- without the unsigned spelling IDO CSEs
// the two `8`s into one saved register and drops the ROM's second `addiu $s0,8`.
// Swept: local count/order, one-temp and zero-temp compare forms, separate
// counters for the two loops.
#ifdef NON_MATCHING
void func_800B891C(s32 fileNum) {
    void func_80004D98(s32, void *);
    s32 j;
    u32 *p;
    u32 *q;
    u32 *src;
    u32 *dst;
    u32 i;
    u32 a;
    u32 b;
    if ((saveCurrentFileNum >= 0) && (saveCurrentFileNum < 3)) {
        src = (u32 *) &gSaveBuffer1.files[fileNum];
        dst = (u32 *) &gSaveBuffer2.files[fileNum];
        for (i = 0; i < 11; i++) {
            j = 0;
            p = src;
            q = dst;
            do {
                a = *p;
                b = *q;
                j += 4;
                p++;
                if (a != b) {
                    func_80004D98((u8) (*(u16 *) &D_800D5150[fileNum * 2 + 0] + i), src);
                    break;
                }
                q++;
            } while (j != 8);
            src += 2;
            dst += 2;
        }
        src = (u32 *) &gSaveBuffer1.files[fileNum];
        dst = (u32 *) &gSaveBuffer2.files[fileNum];
        for (i = 0; i != 11; i++) {
            j = 0;
            p = src;
            q = dst;
            do {
                a = *p;
                b = *q;
                j += 4;
                p++;
                if (a != b) {
                    func_80004D98((u8) (*(u16 *) &D_800D5150[fileNum * 2 + 6] + i), src);
                    break;
                }
                q++;
            } while (j != 8U);
            src += 2;
            dst += 2;
        }
        gSaveBuffer2.files[fileNum] = gSaveBuffer1.files[fileNum];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B891C.s")
#endif

void func_800B8AD4(s32 fileNum) {
    func_80004D34(D_800D5157[fileNum * 2], &gSaveBuffer1.files[fileNum], 0x58);
}

void func_800B8B2C(void) {
    func_80004D34(2, &gSaveBuffer1.files[0], 0x58);
}

void func_800B8B58(void) {
    func_80004D34(0xD, &gSaveBuffer1.files[1], 0x58);
}

void func_800B8B84(void) {
    func_80004D34(0x18, &gSaveBuffer1.files[2], 0x58);
}

void func_800B8BB0(void) {
    func_80004D34(2, &gSaveBuffer1.files[0], 0x108);
}

void func_800B8BDC(void) {
    func_80004D34(0, &gSaveBuffer1, 0x10);
}

void func_800B8C08(void) {
    func_80004D34(0x23, D_800ECB10, 0xA0);
}

// Draft, 110/114: structurally complete (every store, constant, loop bound and
// unroll factor lines up). The residue is one global allocation decision: the
// ROM promotes NOTHING to a saved register -- it spills fileNum to its 0x38(sp)
// home slot and the base/offset/pointer temps to 0x18..0x24 across the two
// calls -- where IDO here keeps fileNum in $s0 and recomputes. The ROM also
// computes fileNum*0x58 TWICE in the prologue (one base for the scalar field
// stores, one for the loops); IDO CSEs it to one.
#ifdef NON_MATCHING
void init_save_file_maybe(s32 fileNum) {
    s32 i;

    gSaveBuffer1.files[fileNum].world = 1;
    gSaveBuffer1.files[fileNum].level = 1;
    gSaveBuffer1.files[fileNum].data8 = 0;
    gSaveBuffer1.files[fileNum].cutscenesWatched = 1;
    gSaveBuffer1.files[fileNum].percentComplete = 0;
    gSaveBuffer1.files[fileNum].soundSetting = 1;
    gSaveBuffer1.files[fileNum].hudDisplay = 0;
    gSaveBuffer1.files[fileNum].data13 = 0;
    gSaveBuffer1.files[fileNum].data14 = 0;
    gSaveBuffer1.files[fileNum].data15 = 0;
    gSaveBuffer1.files[fileNum].data16 = 0;
    gSaveBuffer1.files[fileNum].data17 = 0;
    gSaveBuffer1.files[fileNum].hundredYardHopRecord = 1500;
    gSaveBuffer1.files[fileNum].bumperCropBumpRecord = 10;
    gSaveBuffer1.files[fileNum].checkerBoardChaseRecord = 2400;
    for (i = 0; i < 6; i++) {
        ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 0] = 0;
        ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 1] = 0;
        ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 2] = 0;
        ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 3] = 0;
    }
    for (i = 0; i < 8; i++) {
        gSaveBuffer1.files[fileNum].data34[i] = 0;
    }
    for (i = 0; i < 22; i++) {
        gSaveBuffer1.files[fileNum].enemyCard1E[i] = 0;
    }
    saveVerify(fileNum);
    saveSetFileChecksum(fileNum);
    func_80004D34(D_800D5150[fileNum * 2 + 1], &gSaveBuffer1.files[fileNum], 0x58);
    func_80004D34(D_800D5150[fileNum * 2 + 7], &gSaveBuffer1.files[fileNum], 0x58);
    gSaveBuffer2.files[fileNum] = gSaveBuffer1.files[fileNum];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/init_save_file_maybe.s")
#endif

// MATCHED. The last residue was the 4x-unrolled fill body's store order: the
// ROM emits -0x10/-0xC/-0x8 then -0x4 in the delay slot and the braced loop
// rotated it to -0xC/-0x8/-0x4 then -0x10. That is NOT inside IDO's unroller,
// as the note here used to say -- it is the braces. An UNBRACED `for` body
// schedules differently from the braced one (LEVERS: the no-braces lever), and
// writing this fill as a one-line `for` took 4/77 straight to MATCH. The
// previously swept `*p++ = M` and braced `for (; p != end; p++) { ... }` forms
// are byte-identical to each other and to the old `while` -- only dropping the
// braces moves it.
// Still load-bearing: the single leading `s32 pad0;` (frame 0x40, spill at
// 0x2C -- 0 pads gives 0x30 and 2 gives the spill at 0x28), and assigning `p`
// BEFORE `end` so the ROM's start-then-end pointer order is reproduced.
void func_800B8E00(s32 fileNum) {
    s32 pad0;
    u32 *p;
    u32 *end;

    p = (u32 *) &gSaveBuffer1.files[fileNum];
    end = (u32 *) &gSaveBuffer1.files[fileNum].checksum;
    for (; p != end; p++) *p = SAVE_INIT_MAGIC;
    saveSetFileChecksum(fileNum);
    func_80004D34(D_800D5150[fileNum * 2 + 1], &gSaveBuffer1.files[fileNum], 0x58);
    func_80004D34(D_800D5150[fileNum * 2 + 7], &gSaveBuffer1.files[fileNum], 0x58);
    gSaveBuffer2.files[fileNum] = gSaveBuffer1.files[fileNum];
}

s32 saveCalcFileChecksum(u32 fileNum) {
    u32 *i = (u32 *)&gSaveBuffer1.files[fileNum];
    u32 *saveEnd = &gSaveBuffer1.files[fileNum].checksum;
    u32 resultBuffer = SAVE_CHECKSUM_MAGIC;
    while (i != saveEnd) {
        resultBuffer += *i;
        i++;
    }
    return resultBuffer;
}

void saveSetFileChecksum(u32 file) {
    gSaveBuffer1.files[file].checksum = saveCalcFileChecksum(file);
}

/* FACTORY: 1/24, residue = the unroller's zero-trip guard `beq end,start`.
   FAMILY FLOOR shared with func_800B91B8, func_800B922C and
   saveCalcHeaderChecksum: in IDO the guard and the residual are ENTANGLED.
   Same-symbol `end` (or `end = p + N`, which folds to it) yields the ROM's
   constant residual `addiu $a0,$zero,0xC` and the ROM's $a1/$a2 allocation but
   NO guard; a genuinely distinct `end` symbol yields the guard but replaces the
   constant with the runtime `subu`/`andi 0xF` pair (7 diffs). No spelling gives
   both. Everything else in this draft is byte-exact; the -0x10-last store
   rotation is a consequence of the missing guard, not an independent diff.
   Tried: &gSaveBuffer1.header.checksum, &D_800ECA04, and `end = p + 3`. */
#ifdef NON_MATCHING
void func_800B9008(void) {
    u32 *p;
    u32 *end;

    p = gSaveBuffer1.header.head;
    end = &gSaveBuffer1.header.checksum;
    while (p != end) {
        *p = 0;
        p++;
    }
    gSaveBuffer1.header.head[0] = 0;
    gSaveBuffer1.header.head[1] = 0;
    gSaveBuffer1.header.head[2] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9008.s")
#endif

/* FACTORY: 1/30, residue = the same zero-trip-guard family floor as
   func_800B9008 above; see that comment for the entangled-lever measurement. */
#ifdef NON_MATCHING
u32 saveCalcHeaderChecksum(void) {
    u32 *p;
    u32 *end;
    u32 resultBuffer;

    p = gSaveBuffer1.header.head;
    end = &gSaveBuffer1.header.checksum;
    resultBuffer = SAVE_CHECKSUM_MAGIC;
    while (p != end) {
        resultBuffer += *p;
        p++;
    }
    return resultBuffer;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/saveCalcHeaderChecksum.s")
#endif
void saveSetHeaderChecksum(void) {
    gSaveBuffer1.header.checksum = saveCalcHeaderChecksum();
}

void func_800B9104(void) {
    func_80004624();
    if ((gPlayerControllers[0].buttonHeld & 0x830) == 0x830) {
        SAVE_U32(0x1B4) += 1;
        SAVE_U32(0x118) += 1;
    }
    if (SAVE_U32(0x118) != SAVE_CHECKSUM_MAGIC) {
        func_80004D00(0x23, D_800ECB10, 0xA0);
        if (func_800B922C() != SAVE_U32(0x1B4)) {
            func_800B91B8();
            func_800B92B4();
            func_800B8C08();
        }
    }
}

// Draft, 1 structural diff (28 vs 29 insns): everything lines up except the
// zero-trip guard `beq end,start` the ROM emits before the unroll residual, plus
// the register rotation and -0x10-last store rotation that follow from it.
#ifdef NON_MATCHING
void func_800B91B8(void) {
    u32 *p;
    u32 *end;

    SAVE_U32(0x1B0) = SAVE_CHECKSUM_MAGIC;
    SAVE_U32(0x118) = SAVE_CHECKSUM_MAGIC;
    p = D_800ECB10;
    end = D_800ECB10 + 38;
    while (p != end) {
        *p = 0;
        p++;
    }
    SAVE_U16(0x164) = 3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B91B8.s")
#endif

// Draft, 1 structural diff (33 vs 34 insns): identical apart from the zero-trip
// guard `beq end,start` the ROM emits before the unroll residual.
#ifdef NON_MATCHING
u32 func_800B922C(void) {
    u32 *p;
    u32 *end;
    u32 sum;

    SAVE_U32(0x1B0) = SAVE_CHECKSUM_MAGIC;
    SAVE_U32(0x118) = SAVE_CHECKSUM_MAGIC;
    sum = SAVE_CHECKSUM_MAGIC;
    p = D_800ECB10;
    end = D_800ECB10 + 38;
    while (p != end) {
        sum += *p;
        p++;
    }
    return sum;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B922C.s")
#endif

void func_800B92B4(void) {
    D_800ECBAC = func_800B922C();
}

#ifdef NON_MATCHING
/* Fully decoded and behaviourally complete; kept under NON_MATCHING so the PC
   port has a real implementation while the ROM keeps the pragma.
   It compiles to exactly 136 instructions -- the same length as the ROM -- and
   every displacement, constant and branch shape lines up.  The residue (120
   "diffs", nearly all of it a shift) is register allocation plus one scheduling
   choice.  MEASURED 2026-08-12, and the older description of this residue was
   wrong: the draft is at **1 diff**, not a multi-instruction register spread.

       [55] target  lw $a0, 0x10($v0)      (world, base in $v0)
            current lw $v1, 0x10($a1)      (base in $a1)

   Everything else in the function is byte-exact.  The ROM computes the base
   ONCE (`addu $v0, $t6, $t7`) and then COPIES it (`or $a2, $v0, $zero`) rather
   than recomputing, so this is not the "materialised twice" case it was filed
   as.  There is no call in the function, so the callee-return-type lever does
   not apply.
   Swept without movement (2026-08-12): declaration order of count/i, assignment
   order of count/i, and both together -- all four combinations stay at 1.
   Layout notes for whoever finishes this: File+0x34 is a u8[8] (not
   data34[4]+data38[4]) -- indices 0..4 are the world-unlocked flags written by
   loop 1, [5] and [6] are set together when world >= 8 and cleared when
   world < 6, and [7] is cleared unconditionally.  File+0x3C `shards[6]` is
   u8[6][4]: loop 2 walks it 4 bytes per world and counts bits 0/1/2 of each of
   the four bytes.  Making the header say so needs src/ovl4/ovl4_3.c updated
   too (it reads .data38[1], i.e. flag [5]).
   Swept: File * / u8 * pointer locals (they emit the `addiu +0x10` the ROM
   folds into displacements), declaration order of count/i, for vs do/while,
   and the uncast `.data34[i]` / `(u8 (*)[4])` array forms (137 insns, worse). */
extern u8 D_800BE5A8[];

void saveVerify(s32 fileNum) {
    s32 count;
    s32 i;

    count = 0;
    i = 0;
    if (gSaveBuffer1.files[fileNum].hundredYardHopRecord < 600) {
        gSaveBuffer1.files[fileNum].hundredYardHopRecord = 600;
    }
    if (gSaveBuffer1.files[fileNum].bumperCropBumpRecord > 200) {
        gSaveBuffer1.files[fileNum].bumperCropBumpRecord = 200;
    }
    if (gSaveBuffer1.files[fileNum].checkerBoardChaseRecord < 600) {
        gSaveBuffer1.files[fileNum].checkerBoardChaseRecord = 600;
    }
    ((u8 *) gSaveBuffer1.files[fileNum].shards)[23] = 0;
    ((u8 *) gSaveBuffer1.files[fileNum].shards)[3] = 0;
    ((u8 *) gSaveBuffer1.files[fileNum].data34)[7] = 0;
    if (gSaveBuffer1.files[fileNum].cutscenesWatched & 2) {
        count = 2;
    }
    do {
        ((u8 *) gSaveBuffer1.files[fileNum].data34)[i] = 0;
        if ((u32) i < gSaveBuffer1.files[fileNum].world - 1) {
            ((u8 *) gSaveBuffer1.files[fileNum].data34)[i] = 1;
        }
        i++;
    } while (i < 5);
    if (gSaveBuffer1.files[fileNum].world >= 8) {
        ((u8 *) gSaveBuffer1.files[fileNum].data34)[6] = 1;
        ((u8 *) gSaveBuffer1.files[fileNum].data34)[5] = 1;
    }
    if (gSaveBuffer1.files[fileNum].world < 6) {
        ((u8 *) gSaveBuffer1.files[fileNum].data34)[6] = 0;
        ((u8 *) gSaveBuffer1.files[fileNum].data34)[5] = 0;
    }
    i = 0;
    do {
        if (((u8 *) gSaveBuffer1.files[fileNum].data34)[i] != 0) {
            count += D_800BE5A8[i];
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 0] & 1) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 0] & 2) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 0] & 4) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 1] & 1) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 1] & 2) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 1] & 4) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 2] & 1) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 2] & 2) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 2] & 4) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 3] & 1) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 3] & 2) {
            count++;
        }
        if (((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 3] & 4) {
            count++;
        }
        i++;
    } while (i != 6);
    gSaveBuffer1.files[fileNum].percentComplete = count;
    gSaveBuffer1.files[fileNum].data13 = 0;
    if (((u8 *) gSaveBuffer1.files[fileNum].data34)[5] != 0) {
        gSaveBuffer1.files[fileNum].data13 = 1;
    }
    gSaveBuffer1.files[fileNum].data14 = 0;
    if (((u8 *) gSaveBuffer1.files[fileNum].data34)[6] != 0) {
        gSaveBuffer1.files[fileNum].data14 = 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/saveVerify.s")
#endif

extern u8 D_800D6BE0[];
extern u8 D_800D6BFE;

void func_800B94FC(s32 fileNum) {
    s32 i;
    s32 j;

    for (i = 0; i < 7; i++) {
        for (j = 0; j < 7; j++) {
            if (i >= gSaveBuffer1.files[fileNum].world) {
                D_800D6BE0[i * 6 + j] = 0;
            } else if (i + 1 == gSaveBuffer1.files[fileNum].world) {
                if (j >= gSaveBuffer1.files[fileNum].level) {
                    D_800D6BE0[i * 6 + j] = 0;
                } else if (j + 1 == gSaveBuffer1.files[fileNum].level) {
                    D_800D6BE0[i * 6 + j] = 1;
                } else {
                    D_800D6BE0[i * 6 + j] = 2;
                }
            } else {
                D_800D6BE0[i * 6 + j] = 2;
            }
        }
    }
    if (gSaveBuffer1.files[fileNum].world >= 6) {
        if (gSaveBuffer1.files[fileNum].percentComplete == 100) {
            D_800D6BFE = 2;
        }
    }
}

// read_write_save_buf
void func_800B96A0(s32 fileNum, SaveAction action);
// Draft, 206/364: the entire load/save field block (first 91 instructions,
// both branches) is byte-exact, as are the 4-statement loop bodies and the
// inlined enemyCard1E pack/unpack (ported from the matched func_800BA284).
// Residue is one floor: the ROM recomputes fileNum*0x58 a THIRD time at the
// if/else join, where IDO reuses the $v0 both branches leave it in -- the same
// no-CSE divergence recorded on init_save_file_maybe. Everything after the join
// is register-shifted by it.
/* 206/364, in progress. Guarded by the manager so the fleet could commit;
   un-guard the moment verify.py prints MATCH. */
#ifdef NON_MATCHING
void func_800B96A0(s32 fileNum, SaveAction action) {
    extern u32 D_800D6B98;
    extern s32 saveSoundMode;
    extern u32 saveHUDTheme;
    extern u8 D_800D6C10[];

    extern u8 D_800D6BB5;
    extern u8 D_800D6BB6;
    extern u8 D_800D6BB9;
    extern u8 D_800D6BBA;
    extern u8 D_800D6BBB;
    s32 i;

    if (action == SAVE_ACTION_LOAD) {
        saveCurrentWorld = gSaveBuffer1.files[fileNum].world;
        saveCurrentLevel = gSaveBuffer1.files[fileNum].level;
        D_800D6B98 = gSaveBuffer1.files[fileNum].data8;
        saveCutscenesWatched = gSaveBuffer1.files[fileNum].cutscenesWatched;
        savePercentComplete = gSaveBuffer1.files[fileNum].percentComplete;
        saveSoundMode = gSaveBuffer1.files[fileNum].soundSetting;
        saveHUDTheme = gSaveBuffer1.files[fileNum].hudDisplay;
        D_800D6BB5 = gSaveBuffer1.files[fileNum].data13;
        D_800D6BB6 = gSaveBuffer1.files[fileNum].data14;
        D_800D6BB9 = gSaveBuffer1.files[fileNum].data15;
        D_800D6BBA = gSaveBuffer1.files[fileNum].data16;
        D_800D6BBB = gSaveBuffer1.files[fileNum].data17;
    } else {
        gSaveBuffer1.files[fileNum].world = saveCurrentWorld;
        gSaveBuffer1.files[fileNum].level = saveCurrentLevel;
        gSaveBuffer1.files[fileNum].data8 = D_800D6B98;
        gSaveBuffer1.files[fileNum].cutscenesWatched = saveCutscenesWatched;
        gSaveBuffer1.files[fileNum].percentComplete = savePercentComplete;
        gSaveBuffer1.files[fileNum].soundSetting = saveSoundMode;
        gSaveBuffer1.files[fileNum].hudDisplay = saveHUDTheme;
        gSaveBuffer1.files[fileNum].data13 = D_800D6BB5;
        gSaveBuffer1.files[fileNum].data14 = D_800D6BB6;
        gSaveBuffer1.files[fileNum].data15 = D_800D6BB9;
        gSaveBuffer1.files[fileNum].data16 = D_800D6BBA;
        gSaveBuffer1.files[fileNum].data17 = D_800D6BBB;
    }
    for (i = 0; i < 6; i++) {
        if (action == SAVE_ACTION_LOAD) {
            D_800D6BC8[i * 4 + 0] = ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 0];
        } else {
            ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 0] = D_800D6BC8[i * 4 + 0];
        }
        if (action == SAVE_ACTION_LOAD) {
            D_800D6BC8[i * 4 + 1] = ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 1];
        } else {
            ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 1] = D_800D6BC8[i * 4 + 1];
        }
        if (action == SAVE_ACTION_LOAD) {
            D_800D6BC8[i * 4 + 2] = ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 2];
        } else {
            ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 2] = D_800D6BC8[i * 4 + 2];
        }
        if (action == SAVE_ACTION_LOAD) {
            D_800D6BC8[i * 4 + 3] = ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 3];
        } else {
            ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 3] = D_800D6BC8[i * 4 + 3];
        }
    }
    for (i = 0; i != 2; i++) {
        if (action == SAVE_ACTION_LOAD) {
            D_800D6BC0[i * 4 + 0] = gSaveBuffer1.files[fileNum].data34[i * 4 + 0];
        } else {
            gSaveBuffer1.files[fileNum].data34[i * 4 + 0] = D_800D6BC0[i * 4 + 0];
        }
        if (action == SAVE_ACTION_LOAD) {
            D_800D6BC0[i * 4 + 1] = gSaveBuffer1.files[fileNum].data34[i * 4 + 1];
        } else {
            gSaveBuffer1.files[fileNum].data34[i * 4 + 1] = D_800D6BC0[i * 4 + 1];
        }
        if (action == SAVE_ACTION_LOAD) {
            D_800D6BC0[i * 4 + 2] = gSaveBuffer1.files[fileNum].data34[i * 4 + 2];
        } else {
            gSaveBuffer1.files[fileNum].data34[i * 4 + 2] = D_800D6BC0[i * 4 + 2];
        }
        if (action == SAVE_ACTION_LOAD) {
            D_800D6BC0[i * 4 + 3] = gSaveBuffer1.files[fileNum].data34[i * 4 + 3];
        } else {
            gSaveBuffer1.files[fileNum].data34[i * 4 + 3] = D_800D6BC0[i * 4 + 3];
        }
    }
    if (action == SAVE_ACTION_LOAD) {
        for (i = 0; i < 22; i++) {
            D_800D6C10[i * 4] = gSaveBuffer1.files[fileNum].enemyCard1E[i] & 3;
            D_800D6C10[i * 4 + 1] = (gSaveBuffer1.files[fileNum].enemyCard1E[i] >> 2) & 3;
            D_800D6C10[i * 4 + 2] = (gSaveBuffer1.files[fileNum].enemyCard1E[i] >> 4) & 3;
            D_800D6C10[i * 4 + 3] = (gSaveBuffer1.files[fileNum].enemyCard1E[i] >> 6) & 3;
        }
    } else {
        for (i = 0; i < 22; i++) {
            gSaveBuffer1.files[fileNum].enemyCard1E[i] =
                (D_800D6C10[i * 4] & 3) | ((D_800D6C10[i * 4 + 1] & 3) << 2) |
                ((D_800D6C10[i * 4 + 2] & 3) << 4) | (D_800D6C10[i * 4 + 3] << 6);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B96A0.s")
#endif

void func_800B9C50(s32 fileNum) {
    if (saveCurrentFileNum >= 0) {
        func_800B96A0(fileNum, SAVE_ACTION_SAVE);
        saveVerify(fileNum);
        func_800B94FC(fileNum);
        saveSetFileChecksum(fileNum);
        func_800B891C(fileNum);
        func_800B96A0(fileNum, SAVE_ACTION_LOAD);
    }
}

void func_800B9CB4(s32 fileNum, s32 arg1) {
    D_800D6BC8[(D_800BE500 * 4) + D_800BE504] |= 1 << (arg1 % 3);
    ((u8 *) gSaveBuffer1.files[fileNum].shards)[((u32) D_800BE500 * 4) + D_800BE504] |= 1 << (arg1 % 3);
    saveVerify(fileNum);
    saveSetFileChecksum(fileNum);
    func_800B891C(fileNum);
}

void func_800B9D60(s32 fileNum, s32 arg1) {
    D_800D6BC0[arg1] = (gSaveBuffer1.files[fileNum].data34[arg1] = 1);
    saveVerify(fileNum);
    saveSetFileChecksum(fileNum);
    func_800B891C(fileNum);
}

s32 func_800B9DC8(void) {
    if (D_800D6BC0[D_800BE500] != 0) {
        return 1;
    }
    return 0;
}

s32 func_800B9DF8(s32 arg0) {
    if (D_800D6BC8[(D_800BE500 * 4) + D_800BE504] & (1 << (arg0 % 3))) {
        return 1;
    }
    return 0;
}

s32 saveCollectedAllShards(void) {
    s32 shards;
    s32 i;

    shards = 0;

    for (i = 0; i < 24; i++) {
        if (D_800D6BC8[i] & 1) {
            shards++;
        }
        if (D_800D6BC8[i] & 2) {
            shards++;
        }
        if (D_800D6BC8[i] & 4) {
            shards++;
        }
    }
    if (shards < 66) {
        return 0;
    }
    if (D_800D6BC5 != 0) {
        return 1;
    }
    return 0;
}

s32 saveCheckCutsceneWatched(s32 scene) {
    return (saveCutscenesWatched >> scene) & 1;
}

s32 func_800B9F64(s32 fileNum, s32 scene) {
    return (gSaveBuffer1.files[fileNum].cutscenesWatched >> scene) & 1;
}

s32 saveSetCutsceneWatched(s32 scene, s32 fileNum) {
    saveCutscenesWatched |= (1 << scene);
    
    if (fileNum >= 0 && fileNum < 3) {
        gSaveBuffer1.files[fileNum].cutscenesWatched = saveCutscenesWatched;
    }
    return saveCutscenesWatched;
}

/* FACTORY: 4/169, hoisted-constant register pair only.
 * Was 6/169. Both FP operand-order words are CLOSED, and the note that used to
 * stand here ("invariant to source operand order, lever 2 does not reach
 * either") was right about ORDER and wrong about the conclusion: both moved on
 * operand KIND, which is LEVERS lever 21 applied to c.eq.s and add.s.
 *   - `c.eq.s`: comparing the NAMED LOCAL (`0.0f != fx` / `fx != 0.0f`) emits
 *     `$f2,$f4` either way; comparing the DIRECT ARRAY LOAD (`p[1] != 0.0f`)
 *     emits the ROM's `$f4,$f2`. That is lever 14's memory-load rule, and `fx`
 *     is still needed -- IDO CSEs the second `p[1]` onto the same `lwc1`.
 *   - `add.s`: with one operand a named local (`fc`) and the other the mul
 *     temp, IDO emits (temp, local) whichever way the sum is spelled. Writing
 *     BOTH addends as inline conversions -- `(f32) count + (f32) count * fx`
 *     -- makes them the same kind and IDO honours source order, giving the
 *     ROM's `$f0,$f10`.
 * `fc = count;` and `fx = p[1];` are LOAD-BEARING even though `fc` is now dead:
 * they fix the $f0/$f2 assignment. Dropping either costs 3-4 words (measured).
 * Remaining residue: the constants 81 and 1 are hoisted into $a3/$a2 in the
 * opposite order from the ROM (2 materialisations + the 2 branches that read
 * them). Registers are handed out descending -- $t1=3, $t0=2, then $a3, $a2 --
 * so this is purely which of {81, 1} IDO encounters first; the loop-bound test
 * is emitted at the back edge and comes last for us, first for the ROM.
 * Swept without moving it: `i < 81`, `i != 81`, `i < 0x51` (byte-identical),
 * and the `i = 0; while (i != 81)` form (168/169, a different loop shape). */
#ifdef NON_MATCHING
extern f32 D_800D515C[];
extern s32 random_soft_s32_range(s32);

s32 func_800B9FE0(s32 fileNum) {
    extern u8 D_800D6C10[];
    s32 count;
    s32 i;
    f32 *p;
    f32 fc;
    s32 j;
    s32 k;
    u8 sp3C[81];
    u8 tmp;
    f32 fx;

    count = 0;
    for (i = 0; i < 81; i++) {
        sp3C[i] = 0xFF;
        if (D_800D6C10[i] != 0) {
            continue;
        }
        if ((i == 0) || (i == 1)) {
            if ((s32) saveCurrentWorld <= 0) {
                continue;
            }
        }
        if (i == 2) {
            if ((s32) saveCurrentWorld < 2) {
                continue;
            }
        }
        if (i == 3) {
            if ((s32) saveCurrentWorld < 3) {
                continue;
            }
        }
        if (i == 4) {
            if ((s32) saveCurrentWorld < 4) {
                continue;
            }
        }
        if ((i == 5) || (i == 6)) {
            if ((s32) saveCurrentWorld < 5) {
                continue;
            }
        }
        if (i == 7) {
            if ((s32) saveCurrentWorld < 6) {
                continue;
            }
        }
        if (i == 8) {
            if ((s32) saveCurrentWorld < 7) {
                continue;
            }
        }
        sp3C[count] = i;
        count++;
    }
    if (count == 0) {
        return 0;
    }
    p = D_800D515C;
    while (1) {
        if (count >= (s32) p[0]) {
            break;
        }
        p += 2;
    }
    fc = count;
    fx = p[1];
    count = (s32) ((f32) count + (f32) count * fx);
    if (p[1] != 0.0f) {
        count++;
    }
    for (i = 0; i != 22; i++) {
        j = random_soft_s32_range(count);
        k = random_soft_s32_range(count);
        tmp = sp3C[j];
        sp3C[j] = sp3C[k];
        sp3C[k] = tmp;
    }
    i = sp3C[random_soft_s32_range(count)];
    if (i == 0xFF) {
        return 0;
    }
    D_800D6C10[i] = 1;
    gSaveBuffer1.files[fileNum].enemyCard1E[i / 4] |= 1 << ((i % 4) * 2);
    saveSetFileChecksum(fileNum);
    func_800B891C(fileNum);
    return i + 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9FE0.s")
#endif

extern u8 D_800D6C10[];

void func_800BA284(s32 fileNum) {
    s32 i;

    for (i = 0; i < 22; i++) {
        D_800D6C10[i * 4] = gSaveBuffer1.files[fileNum].enemyCard1E[i] & 3;
        D_800D6C10[i * 4 + 1] = (gSaveBuffer1.files[fileNum].enemyCard1E[i] >> 2) & 3;
        D_800D6C10[i * 4 + 2] = (gSaveBuffer1.files[fileNum].enemyCard1E[i] >> 4) & 3;
        D_800D6C10[i * 4 + 3] = (gSaveBuffer1.files[fileNum].enemyCard1E[i] >> 6) & 3;
    }
}

// Draft, 96/110: the inverse of func_800BA284 and behaviourally complete. The
// OR chain order is right (source order B|C|D|A reproduces the ROM's
// ((A|B)|C)|D tree). Residue is purely prologue ordering: the ROM issues the
// first D_800D6C13 load before the fileNum*0x58 index math, which rotates every
// temp register. A `u8 val` temp gets the load-first order but costs the base
// register ($a2/$v1 swap, 106).
#ifdef NON_MATCHING
void func_800BA40C(s32 fileNum) {
    s32 i;

    for (i = 0; i < 22; i++) {
        gSaveBuffer1.files[fileNum].enemyCard1E[i] =
            (D_800D6C10[i * 4] & 3) | ((D_800D6C10[i * 4 + 1] & 3) << 2) |
            ((D_800D6C10[i * 4 + 2] & 3) << 4) | (D_800D6C10[i * 4 + 3] << 6);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800BA40C.s")
#endif

void init_save_file_maybe(s32);

// PADDING TRAP: this is the last function in the TU and its listing carries 6
// words of linker fill past its own .size, so converting it shortens the TU.
// Draft is behaviourally complete but must stay guarded.
#ifdef NON_MATCHING
void saveForceCompleteFile(s32 fileNum) {
    s32 i;

    if ((gSaveBuffer1.files[fileNum].level == SAVE_INIT_MAGIC) || (gSaveBuffer1.files[fileNum].level >= 6)) {
        init_save_file_maybe(fileNum);
    }
    if ((gSaveBuffer1.files[fileNum].world == 8) && (gSaveBuffer1.files[fileNum].level == 1)) {
        return;
    }
    gSaveBuffer1.files[fileNum].world = 8;
    gSaveBuffer1.files[fileNum].level = 1;
    gSaveBuffer1.files[fileNum].data8 = 0;
    gSaveBuffer1.files[fileNum].cutscenesWatched = -1;
    gSaveBuffer1.files[fileNum].percentComplete = 0;
    gSaveBuffer1.files[fileNum].soundSetting = 1;
    for (i = 0; i < 6; i++) {
        ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 0] = 7;
        ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 1] = 7;
        ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 2] = 7;
        ((u8 *) gSaveBuffer1.files[fileNum].shards)[i * 4 + 3] = 7;
    }
    ((u8 *) gSaveBuffer1.files[fileNum].shards)[23] = 0;
    ((u8 *) gSaveBuffer1.files[fileNum].shards)[3] = 0;
    for (i = 0; i < 8; i++) {
        gSaveBuffer1.files[fileNum].data34[i] = 0;
    }
    for (i = 0; i < 7; i++) {
        gSaveBuffer1.files[fileNum].data34[i] = 1;
    }
    for (i = 0; i < 21; i++) {
        gSaveBuffer1.files[fileNum].enemyCard1E[i] = 0x55;
    }
    saveVerify(fileNum);
    saveSetFileChecksum(fileNum);
    func_80004D34(D_800D5150[fileNum * 2 + 1], &gSaveBuffer1.files[fileNum], 0x58);
    func_80004D34(D_800D5150[fileNum * 2 + 7], &gSaveBuffer1.files[fileNum], 0x58);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/saveForceCompleteFile.s")
#endif
