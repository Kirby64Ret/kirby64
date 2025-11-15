#include <ultra64.h>
#include <macros.h>

GLOBAL_ASM("asm/non_matchings/ovl2/func_800F61A0.s")

void func_800F629C(void) {

}

GLOBAL_ASM("asm/non_matchings/ovl2/func_800F62A4.s")

GLOBAL_ASM("asm/non_matchings/ovl2/func_800F64B0.s")

GLOBAL_ASM("asm/non_matchings/ovl2/func_800F6830.s")


extern u32 D_80123E90;
void func_800F6AB0(Gfx **pkt) {
    gSPDisplayList((*pkt)++, &D_80123E90);
}

extern s16 gFrameBuffer[0x3F00], D_803D3F00[];
extern u32 D_800BE500, D_800BE504, D_800BE508, D_800BE534;
extern u32 D_800D6FA8;
extern u32 D_8012D920;
extern u32 D_800D6FAC;
extern u32 D_800D7B80;
extern u32 D_800D7B7C;
extern u32 D_800D7B78;
extern u32 D_800D6B70;
extern u32 D_8012EB00;
extern u32 _ovl19SegNoloadEnd;
extern u8 D_80123F68[];
struct Unk80123EC0{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
};
extern struct Unk80123EC0 D_80123EC0;
extern u32 D_803FC100;
extern u32 D_80123EDC;
extern u32 D_8012D200;
extern u32 D_80123EEC;
extern void gameSetUpdateRate(f32 a, u32 *b);//, u32 *c);
extern void func_80007BA4_ovl2(struct Unk80123EC0 *a);

// TOOD: fix loop
GLOBAL_ASM("asm/non_matchings/ovl2/func_800F6AD4.s")
