#include "common.h"
#include "save_file.h"


extern u16 D_800ECB00[];
extern u8 D_800D6BC8[];
extern u8 D_800D6BC5;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B8700.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B87E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B891C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B8AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B8B2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B8B58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B8B84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B8BB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B8BDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B8C08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/init_save_file_maybe.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B8E00.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/saveCalcHeaderChecksum.s")

void saveSetHeaderChecksum(void) {
    gSaveBuffer1.header.checksum = saveCalcHeaderChecksum();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9104.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B91B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B922C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B92B4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9CB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9D60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9DF8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/save_file/func_800B9F64.s")

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
