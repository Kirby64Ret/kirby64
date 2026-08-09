#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "GObj.h"
#include "main/object_manager.h"
#include "ovl1/save_file.h"
#include "ovl1/util.h"

struct Unk800ECA08 {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ u8 pad4[0xC];
    /* 0x10 */ u8 unk10;
    /* 0x11 */ u8 pad11[0x47];
};

extern struct Unk800ECA08 D_800ECA08[];
extern s32 D_800EC9FC;
extern s32 saveCurrentFileNum;

extern void func_800B8BDC(void);
extern void func_800B96A0(s32, s32);
extern void func_800B94FC(s32);
extern void func_800BB3F0(void);

extern Gfx D_8015AA70_ovl4[];
extern s32 D_800D6B24;
extern s32 D_8015C6D8_ovl4;

extern void func_800AC610(void);
extern void func_80157C38_ovl4(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801553C0_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801554F0_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801555AC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801555F4_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80155890_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80155C00_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80155E6C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156054_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156160_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801561DC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_8015632C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156560_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_8015665C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801567BC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801569F0_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156BAC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156C4C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156EB0_ovl4.s")

u8 func_80157004_ovl4(s32 arg0) {
    return D_800ECA08[arg0].unk10;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157028_ovl4.s")

s32 func_80157250_ovl4(void) {
    return 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157258_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801572E4_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157610_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157840_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157B1C_ovl4.s")

void func_80157C38_ovl4(void) {
    D_800EC9FC = saveCurrentFileNum;
    saveSetHeaderChecksum();
    func_800B8BDC();
    func_800B96A0(saveCurrentFileNum, 0);
    func_800B94FC(saveCurrentFileNum);
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

void func_80157CB0_ovl4(s32 arg0) {
    if (D_800D6B24 == 0) {
        if (D_8015C6D8_ovl4 != 0) {
            func_80157C38_ovl4();
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157CF0_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157E04_ovl4.s")

void func_80157FFC_ovl4(Gfx **gfxP) {
    gSPDisplayList((*gfxP)++, D_8015AA70_ovl4);
}

void func_80158020_ovl4(void) {
    omDrawAll();
    func_800AC610();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80158048_ovl4.s")

