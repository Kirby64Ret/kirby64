#include <ultra64.h>
#include <macros.h>
#include "ovl18_3.h"
#include "ovl18_1.h"
#include "D_8004A7C4.h"

void func_802244FC_ovl18(void);
extern s32 D_801CB4DC;
extern u32 D_800E0D50[];

void func_80224320_ovl18(s32 arg0) {
    struct UnkStruct800E1B50 *temp_a3 = D_800E1B50[D_8004A7C4->unk0];

    D_800E98E0[D_8004A7C4->unk0] = 0x3C;
    D_800E4550[D_8004A7C4->unk0] = D_800E4550[D_800E0D50[D_8004A7C4->unk0]];
    D_800E4710[D_8004A7C4->unk0] = D_800E4710[D_800E0D50[D_8004A7C4->unk0]];
    D_800E48D0[D_8004A7C4->unk0] = D_800E48D0[D_800E0D50[D_8004A7C4->unk0]];
    D_800DF150[D_8004A7C4->unk0] = &func_802244FC_ovl18;
    temp_a3->unk98 = &D_801CB4DC;
    D_800E8920[D_8004A7C4->unk0] = 0;
    func_800A9864_ovl18(0x1008E, 0x23, 0x10, temp_a3);
    func_800AA018_ovl18(0x10523);
    func_800AECC0_ovl18(D_800D6B10 * 0.75f);
    func_800AED20_ovl18(D_800D6B10 * 0.75f);
    D_800E64D0[D_8004A7C4->unk0] = D_800E6A10[D_8004A7C4->unk0] * 9.0f;
    D_800E6690[D_8004A7C4->unk0] = 0.0f;
    D_800E6850[D_8004A7C4->unk0] = 9.0f;
    func_800AFA14_ovl18();
}

extern void func_801ACF84_ovl7(void);

#ifdef MIPS_TO_C
void func_802244FC_ovl18(void) {
    if (D_800E98E0[D_8004A7C4->unk0] == 0) {
        func_800B1EC8_ovl18(D_800E98E0[D_8004A7C4->unk0], &func_801ACF84_ovl7);
    } else {
        // D_800E98E0[D_8004A7C4->unk0]--;
        func_801ACF5C_ovl7(D_800E98E0[D_8004A7C4->unk0]--);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl18/ovl18_4/func_802244FC_ovl18.s")
#endif
