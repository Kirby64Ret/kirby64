#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/save_file.h"

extern s32 D_80187384_ovl5[];
extern Gfx D_80186A80_ovl5[];
extern Vector2 D_8018E3A0_ovl5[];
void func_800BB3F0(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801668E0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80166B28_ovl5.s")

#ifdef MIPS_TO_C
/* frame comes out 0x8 instead of 0x10 and the copy schedules differently */
Vector2 func_80166C68_ovl5(s32 arg1) {
    Vector2 sp8 = D_8018E3A0_ovl5[arg1];

    return sp8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80166C68_ovl5.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80166CAC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80166D48_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80166E30_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80166F14_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80167164_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801671E8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016725C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80167374_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80167650_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80167898_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016792C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801686E4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168804_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168928_ovl5.s")

s32 func_80168A04_ovl5(s32 arg0, s32 arg1) {
    s32 temp = ABS(arg0 - arg1);
    s32 r = temp % 8;

    if (r) {
        return 0;
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168A44_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168B30_ovl5.s")

typedef struct Unk2Bytes {
    s8 unk0;
    s8 unk1;
} Unk2Bytes;

Unk2Bytes func_80168E34_ovl5(s32 arg1) {
    Unk2Bytes sp4;

    sp4.unk0 = arg1 % 8;
    sp4.unk1 = arg1 / 8;
    return sp4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168E84_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801690F4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801695C8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016965C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80169D90_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016A2B8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016A61C_ovl5.s")

s32 func_8016A69C_ovl5(s32 arg0) {
    return D_80187384_ovl5[arg0];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016A6B0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016A774_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016B754_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016BEB0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016BFF0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C208_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C28C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C410_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C508_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C8C0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C974_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CA4C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CB14_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CB7C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CC88_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CFB0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016E650_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016E6F0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016E8D0_ovl5.s")

void func_8016EA4C_ovl5(void) {
}

u16 func_8016EA54_ovl5(s32 arg0) {
    switch (arg0) {
        case 0x1D:
            return gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord;
        case 0x1F:
            return gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord;
        case 0x1E:
            return gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016EAFC_ovl5.s")

void func_8016EF44_ovl5(u8 *arg0, u16 *arg1) {
    arg0[0x14] = arg1[0];
    arg0[0x15] = arg1[1];
    arg0[0x16] = arg1[2];
    arg0[0x18] = arg1[3];
    arg0[0x19] = arg1[4];
    arg0[0x1A] = arg1[5];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016EF78_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016F2F0_ovl5.s")

s32 func_8016F3A8_ovl5(s32 arg0) {
    return (arg0 % 30) * 3;
}

s32 func_8016F3C4_ovl5(s32 arg0) {
    return (arg0 / 30) % 60;
}

s32 func_8016F3E8_ovl5(s32 arg0) {
    return (arg0 / 30) / 60;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016F40C_ovl5.s")

void func_8016F730_ovl5(void) {
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016F770_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016F7EC_ovl5.s")

void func_8016FA8C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80186A80_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016FAB0_ovl5.s")

