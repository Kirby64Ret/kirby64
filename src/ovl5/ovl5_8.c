#include <ultra64.h>
#include <macros.h>
#include "buffers.h"
#include "GObj.h"
#include "SPObj.h"
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

extern struct UnkStruct8015C740 D_80189348_ovl5;
extern struct UnkStruct8015C740 D_80189368_ovl5;
extern struct UnkStruct8015C740 D_80189388_ovl5;
extern struct UnkStruct8015C740 D_801893A8_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
void func_8017E64C_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_80189348_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_80189348_ovl5);
    spobj->xOffset = 160.0f;
    spobj->yOffset = 10.0f;
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    func_8015C740_ovl5(arg0, &D_80189368_ovl5);
    func_8015C740_ovl5(arg0, &D_80189388_ovl5);
    func_8015C740_ovl5(arg0, &D_801893A8_ovl5);
    curObjSleepForever();
}

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

