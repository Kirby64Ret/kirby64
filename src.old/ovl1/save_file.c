#include <ultra64.h>
#include <macros.h>
#include "save_file.h"

#define SAVE_CHECKSUM_MAGIC 0x97538642
#define SAVE_INIT_MAGIC 0x99999999


void calc_header_checksum(void);
u32 calc_save_header_checksum(void);
extern u16 D_800ECB00[];

#ifdef NON_MATCHING
void func_800B86FC(void) {
    s32 i;
    s32 phi_v1;

    func_80004D00_ovl1(0, &gSaveBuffer1, 0x118);
    if (calc_save_header_checksum() != gSaveBuffer1.header.checksum) {
        func_800B9008();
    }
    
    for (i = 0; i < 3; i++) {
        if (gSaveBuffer1.files[i].checksum == 0x99999999) {
            break;
        }
    }

    gSaveBuffer1.header.head[2] = i;
    calc_header_checksum();
    func_800B8BDC();

    gSaveBuffer2 = gSaveBuffer1;

    // gSaveBuffer2.header.head[0] = gSaveBuffer1.header.head[0];
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B86FC.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B87E0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B891C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B8AD4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B8B2C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B8B58.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B8B84.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B8BB0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B8BDC.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B8C08.s")

extern void calc_file_checksum(u32 fileNum);
extern u8 D_800D5150[]; // TODO: get correct type for this
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B8C34.s")

// delete save file?
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B8E00.s")

s32 calc_save_file_checksum(u32 fileNum) {
    u32 *i = &gSaveBuffer1.files[fileNum];
    u32 *saveEnd = &gSaveBuffer1.files[fileNum].checksum;
    u32 resultBuffer = SAVE_CHECKSUM_MAGIC;
    while (i != saveEnd) {
        resultBuffer += *i;
        i++;
    }
    return resultBuffer;
}

void calc_file_checksum(u32 arg0) {
    gSaveBuffer1.files[arg0].checksum = calc_save_file_checksum(arg0);
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B9008.s")

#ifdef NON_MATCHING
u32 calc_save_header_checksum(void) {
    s32 *i = gSaveBuffer1.header.head;
    s32 *saveEnd = &gSaveBuffer1.header.checksum;
    u32 resultBuffer = SAVE_CHECKSUM_MAGIC;


    do {
        resultBuffer += *(i++);
    }
    while (i != saveEnd);
        // i++;
    return resultBuffer;

    // int i = 0;
    // u32 resultBuffer = SAVE_CHECKSUM_MAGIC;

    // do {
    //     resultBuffer += gSaveBuffer1.header.head[i++];
    // } while (i < 3);

    // for (i = 0; i < 3; i++) {
    //     resultBuffer += gSaveBuffer1.header.head[i];
    // }
    // return resultBuffer;

    // s32 *i = gSaveBuffer1.header.head;
    // s32 *saveEnd = &gSaveBuffer1.header.checksum;
    // u32 resultBuffer;
    // for (resultBuffer = SAVE_CHECKSUM_MAGIC; i != saveEnd; i++) resultBuffer+=*i;
    // return resultBuffer;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B9068.s")
#endif


void calc_header_checksum(void) {
    gSaveBuffer1.header.checksum = calc_save_header_checksum();
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B9104.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B91B8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B922C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B92B4.s")


extern u8 D_800BE5A8[];

// verify save
// calculates percent complete and more
#ifdef MIPS_TO_C_
void verify_save(s32 fileNum) {
    u32 i;
    u32 percent;

    if (gSaveBuffer1.files[fileNum].hundredYardHopRecord < 600) {
        gSaveBuffer1.files[fileNum].hundredYardHopRecord = 600;
    }
    if (gSaveBuffer1.files[fileNum].bumperCropBumpRecord > 200) {
        gSaveBuffer1.files[fileNum].bumperCropBumpRecord = 200;
    }
    if (gSaveBuffer1.files[fileNum].checkerBoardChaseRecord < 600) {
        gSaveBuffer1.files[fileNum].checkerBoardChaseRecord = 600;
    }
    gSaveBuffer1.files[fileNum].shards[23] = (u8)0;
    gSaveBuffer1.files[fileNum].shards[3] = (u8)0;
    gSaveBuffer1.files[fileNum].data38[3] = (u8)0;
    percent = 0;
    if (gSaveBuffer1.files[fileNum].cutscenesWatched & 2) {
        percent = 2;
    }


    for (i = 0; i < 5; i++) {
        if (i < gSaveBuffer1.files[fileNum].world - 1) {
            gSaveBuffer1.files[fileNum].shards[8 + i] = 1;
        }
    }
    // loop_9:
        // phi_a2->unk44 = (u8)0;
        // if (phi_a1 < (u32) (temp_v0->unk10 - 1)) {
            //     (temp_a3 + phi_a1)->unk44 = (u8)1U;
        // }
        // temp_a1 = phi_a1 + 1;
        // phi_a2 = phi_a2 + 1;
        // phi_a1 = (u32) temp_a1;
        // if (temp_a1 < 5) {
            //     goto loop_9;
        // }
    if (gSaveBuffer1.files[fileNum].world >= 8) {
        gSaveBuffer1.files[fileNum].data38[2] = 1;
        gSaveBuffer1.files[fileNum].data38[1] = 1;
    }
    if (gSaveBuffer1.files[fileNum].world < 6) {
        gSaveBuffer1.files[fileNum].data38[2] = 0;
        gSaveBuffer1.files[fileNum].data38[1] = 0;
    }

    // problematic loop; might have to regenerate in m2c
    for (i = 0; i < 16; i++) {
        if (gSaveBuffer1.files[fileNum].shards[8] != 0) {
            percent += D_800BE5A8[i];
        }
        if (gSaveBuffer1.files[fileNum].shards[i] & 1)
            percent++;
        if (gSaveBuffer1.files[fileNum].shards[i] & 2)
            percent++;
        if (gSaveBuffer1.files[fileNum].shards[i] & 4)
            percent++;
    }

    gSaveBuffer1.files[fileNum].percentComplete = percent;
    gSaveBuffer1.files[fileNum].data13 = 0U;
    if (gSaveBuffer1.files[fileNum].data38[1] != 0) {
        gSaveBuffer1.files[fileNum].data13 = 1U;
    }
    gSaveBuffer1.files[fileNum].data14 = 0U;
    if (gSaveBuffer1.files[fileNum].data38[2] != 0) {
        gSaveBuffer1.files[fileNum].data14 = 1U;
    }
}

#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B92D8.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B94FC.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B96A0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B9C50.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B9CB4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B9D60.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B9DC8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B9DF8.s")

extern u8 D_800D6BC8[];
extern u8 D_800D6BC5;

s32 func_800B9E4C(void) {
    s32 v0;
    s32 a0;

    v0 = 0;

    for (a0 = 0; a0 < 24; a0++) {
        if (D_800D6BC8[a0] & 1) {
            v0++;
        }
        if (D_800D6BC8[a0] & 2) {
            v0++;
        }
        if (D_800D6BC8[a0] & 4) {
            v0++;
        }
    }
    if (v0 < 0x42) {
        return 0;
    }
    if (D_800D6BC5 != 0) {
        return 1;
    }
    return 0;
}

s32 check_cutscene_watched(s32 arg0) {
    return (gCutscenesWatched >> arg0) & 1;
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B9F64.s")


s32 set_cutscene_watched(s32 arg0, s32 fileNum) {
    gCutscenesWatched |= (1 << arg0);
    
    if (fileNum >= 0 && fileNum < 3) {
        gSaveBuffer1.files[fileNum].cutscenesWatched = gCutscenesWatched;
    }
    return gCutscenesWatched;
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800B9FE0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800BA284.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800BA40C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_9/func_800BA5C4.s")
