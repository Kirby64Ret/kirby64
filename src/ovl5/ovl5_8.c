#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"

extern s32 D_800D6B24;
extern s32 saveSoundMode;
extern s32 saveHUDTheme;
extern s32 saveCurrentFileNum;
extern u8 D_8018EDB0_ovl5;
extern u8 D_8018EDB8_ovl5;
extern u8 D_8018EDB9_ovl5;
extern u8 D_8018EDBA_ovl5;
extern Gfx D_80189270_ovl5[];
void func_800B9C50(s32);
void func_8017EAB0_ovl5(void);
void auSetHighSoundQuality(void);
void auSetLowSoundQuality(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017E180_ovl5.s")

void func_8017E21C_ovl5(s32 arg0) {
    saveSoundMode = arg0;
    func_800B9C50(saveCurrentFileNum);
    if (arg0 == 1) {
        auSetHighSoundQuality();
    } else {
        auSetLowSoundQuality();
    }
}

void func_8017E274_ovl5(s32 arg0) {
    saveHUDTheme = arg0;
    func_800B9C50(saveCurrentFileNum);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017E2A0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017E350_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017E64C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017E754_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017E85C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017E95C_ovl5.s")

void func_8017EA7C_ovl5(void) {
    D_8018EDB0_ovl5 = 0;
    D_8018EDB8_ovl5 = 0;
    D_8018EDB9_ovl5 = saveSoundMode;
    D_8018EDBA_ovl5 = saveHUDTheme;
}

void func_8017EAB0_ovl5(void) {
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D6B24;
extern u8 D_8018EDB0_ovl5;
void func_8017EAB0_ovl5(void);

void func_8017EAE8_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EDB0_ovl5 != 0) {
        func_8017EAB0_ovl5();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017EB28_ovl5.s")

void func_8017EC80_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80189270_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017ECA4_ovl5.s")

