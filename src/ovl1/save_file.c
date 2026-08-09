#include "common.h"
#include "save_file.h"
#include "main/contpad.h"

void func_80004D00(s32, void *, s32);
void func_800B91B8(void);
void func_800B92B4(void);
void func_800B8C08(void);
void func_800B8BDC(void);
void func_800B9008(void);

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
    s32 saveCalcFileChecksum(u32);
    void saveVerify(s32);
    void func_800B8E00(s32);
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/init_save_file_maybe.s")

// Draft, 4/77: only the 4x-unrolled fill body's store order is left -- the ROM
// emits -0x10/-0xC/-0x8 then -0x4 in the delay slot, IDO rotates it to
// -0xC/-0x8/-0x4 then -0x10. vu32 on the store (the wave-9 lever) does not move
// it; do/while and `<` cost the whole loop (64-66 diffs).
// Load-bearing: the single leading `s32 pad0;` (frame 0x40, spill at 0x2C -- 0
// pads gives 0x30 and 2 gives the spill at 0x28), and assigning `p` BEFORE `end`
// so the ROM's start-then-end pointer order is reproduced.
#ifdef NON_MATCHING
void func_800B8E00(s32 fileNum) {
    s32 pad0;
    u32 *p;
    u32 *end;

    p = (u32 *) &gSaveBuffer1.files[fileNum];
    end = (u32 *) &gSaveBuffer1.files[fileNum].checksum;
    while (p != end) {
        *p = SAVE_INIT_MAGIC;
        p++;
    }
    saveSetFileChecksum(fileNum);
    func_80004D34(D_800D5150[fileNum * 2 + 1], &gSaveBuffer1.files[fileNum], 0x58);
    func_80004D34(D_800D5150[fileNum * 2 + 7], &gSaveBuffer1.files[fileNum], 0x58);
    gSaveBuffer2.files[fileNum] = gSaveBuffer1.files[fileNum];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B8E00.s")
#endif

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

#ifdef MIPS_TO_C
void func_800B9008(void) {
    s32 i;

    for (i = 0; i < 3; i++) {
        gSaveBuffer1.header.head[i] = 0;
    }
    gSaveBuffer1.header.head[0] = 0;
    gSaveBuffer1.header.head[1] = 0;
    gSaveBuffer1.header.head[2] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9008.s")
#endif

#ifdef MIPS_TO_C
u32 saveCalcHeaderChecksum(void) {
    u32 *p = gSaveBuffer1.header.head;
    u32 *end = &gSaveBuffer1.header.checksum;
    u32 resultBuffer = SAVE_CHECKSUM_MAGIC;

    while (p != end) {
        resultBuffer += *p++;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B91B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B922C.s")

void func_800B92B4(void) {
    D_800ECBAC = func_800B922C();
}

void saveVerify(s32 fileNum);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/saveVerify.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B94FC.s")

// read_write_save_buf
void func_800B96A0(s32 fileNum, SaveAction action);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B96A0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9FE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800BA284.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800BA40C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/saveForceCompleteFile.s")
