// Forward Declared
void func_801A3E80(GObj *);
void func_801DB2D8_ovl13(GObj *);
void func_801DB358_ovl13(GObj *);
void func_801DB3A0_ovl13(GObj *);
void func_801DB870_ovl13(GObj *);
void func_801DC788_ovl13(GObj *arg0);
void func_801DCB28_ovl13(GObj *);
void func_801DCC7C_ovl13(GObj *);
void func_801DCDA8_ovl13(GObj *);
void func_801DCE9C_ovl13(GObj *);
void func_801DD148_ovl13(void);
void func_801DD184_ovl13(GObj *);
void func_801DD3A8_ovl13(GObj *);
void func_801DD46C_ovl13(GObj *);
void func_801DD550_ovl13(GObj *);
void func_801DD614_ovl13(GObj *);
void func_801DD888_ovl13(GObj *);
void func_801DDADC_ovl13(s32, s32, f32);
void func_801DDC58_ovl13(GObj *);
void func_801DDD90_ovl13(GObj *);
void func_801DDE54_ovl13(GObj *);
void func_801DE084_ovl13(GObj *);
void func_801DE148_ovl13(GObj *);
void func_801DF294_ovl13(GObj *);
void func_801DF588_ovl13(s32, s32, f32);
void func_801DF5D0_ovl13(GObj *);
void func_801E0928_ovl13(GObj *);
void func_801E0A90_ovl13(GObj *);
void func_801E11D0_ovl13(GObj *);
void func_801E135C_ovl13(GObj *);
void func_801E15DC_ovl13(GObj *);
void func_801E1680_ovl13(GObj *);
void func_801E185C_ovl13(GObj *);
void func_801E19AC_ovl13(GObj *);
void func_801E1F1C_ovl13(GObj *);
void func_801E2034_ovl13(GObj *);
void func_801E2630_ovl13(GObj *);
void func_801E28A8_ovl13(GObj *);
void func_801E29E0_ovl13(GObj *);
void func_801E2F0C_ovl13(s32, s32, f32);
void func_801E3028_ovl13(GObj *);
void func_801E35F4_ovl13(GObj *);
void func_801E36D8_ovl13(GObj *);
void func_801E3778_ovl13(GObj *);
void func_801E37E8_ovl13(GObj *);
void func_801E3958_ovl13(GObj *);
/* The three arguments are DObj nodes, not scalars: every one of the fourteen
   call sites in code_1F3160.c passes D_800DFBD0[objId][n], which is
   `struct DObj *` (track_arrays.h). Declared s32 they were truncated by the
   call itself on LP64, with the upper half of the argument register left
   undefined by the ABI. The truncation into the 4-byte joint slot is now
   explicit in the body instead -- see struct Ovl13AnimCmd below. */
s32 func_801E3A84_ovl13(struct DObj *, struct DObj *, struct DObj *);


struct Ovl13AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

struct Ovl13AnimCmd {
    u32 unk0;
    u32 unk4;
    /* The joint word. It holds either a small sentinel (-1/-2/-3) or a DObj
       node address TRUNCATED to 32 bits, and it must stay 4 bytes wide: this
       block is a view over ovl2_9.c's Shape28 arena, which is 40 bytes per
       entry and offset-stable on LP64 (see the note at the top of
       src/ovl2/ovl2_8.c). func_8010E740 rebuilds the pointer by
       zero-extension, which is lossless because the -no-pie image keeps
       everything the game can see below 4 GiB. Do NOT widen these three. */
    s32 unk8;
    u8 fillerC[0xC];
    f32 unk18;
    u8 filler1C[0x14];
    s32 unk30;
    u8 filler34[0x24];
    s32 unk58;
};

struct Ovl13AnimObj {
    u8 filler0[0x24];
    struct Ovl13AnimCmd *unk24;
};

extern f32 D_800D6E5C;
extern s32 func_80110150(struct Ovl13AnimInfo *);
extern s32 func_80110B00(struct Ovl13AnimInfo *);
extern s32 func_80110FD4(struct Ovl13AnimInfo *);
extern void func_80111550(s32);
extern struct Ovl13AnimObj *func_80111C88(void *, s32);
extern void func_80111ECC(struct Ovl13AnimObj *);
/* (u32, u32) is LOAD-BEARING, not a guess: func_801DB3A0_ovl13 passes literal
   1/2/3/4 to this while holding the same values as s32 in callee-saved
   registers for its `==` comparisons. IDO keeps one constant register per
   type, so an s32 prototype makes it reuse the saved copies (5 diffs) and a
   u32 one makes it materialise the arguments fresh, as the ROM does.
   The definition in ovl7/enelib.c is (s32, s32); declarations are per-TU. */
extern s32 func_8019E0E8_ovl7(u32, u32);
extern void func_800BC11C(f32);

// externs
extern void func_800B1900(u16);
extern void func_800B7138(s32);

extern void func_800AED80(f32, s32);
extern void func_800A9F98(s32, f32);
extern void func_800AED20(f32);
extern u32 D_801290D0;

extern void func_800F9974(s32 *, f32 *, f32);
extern void func_800AECC0(f32);
extern void func_800B72AC(s32);
extern void func_800B6CF8(s32);
extern f32 func_8019DA70_ovl7(s32);
extern void func_8019D958_ovl7(u16);

extern s32 random_soft_s32_range(s32);

extern u32 D_801290D0;

extern f32 D_801DAAF0_ovl8;
extern f32 D_801DAB18_ovl8;
extern f32 D_801D9384_ovl8;
extern f32 D_801DAE1C_ovl8;
extern f32 D_801DAB04_ovl8;
extern s32 *D_801D93A8_ovl8, *D_801DAD8C_ovl8, D_801DAE40_ovl8;

extern f32 D_801DAADC;
extern s32 D_801D93CC;
extern s32 D_801DAD8C;
extern s32 D_800D7154;
extern void func_800B17B8(GObj *);
extern s32 D_801DAE18;
extern s32 D_801DAE1C;
extern void procMainStub(GObj *arg0);
extern void func_800B7138(s32 arg0);

// data (asm/data/ovl13/ovl13.data.s)
extern void (*D_801E5A80_ovl13[6])(GObj *);
extern void (*D_801E5A98_ovl13[0x10])(GObj *);
extern void (*D_801E5AD8_ovl13[0xF])(GObj *);
extern s32 D_801E5B14_ovl13[4];
extern s32 D_801E5B24_ovl13[4];
extern f32 D_801E5B34_ovl13[2];
extern f32 D_801E5B3C_ovl13[7];
extern f32 D_801E5B58_ovl13[8];
extern s32 D_801E5B78_ovl13[6];
extern s32 D_801E5B90_ovl13[4];
extern f32 D_801E5BA0_ovl13[3];
extern f32 D_801E5BAC_ovl13[3];
extern f32 D_801E5BB8_ovl13[2];
extern f32 D_801E5BC4_ovl13[];
