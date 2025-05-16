#include <ultra64.h>
#include <macros.h>
#include "ovl0_4.h"
#include "omCurrentObj.h"

extern s32 D_8004AB9C;
extern Gfx *gDisplayListHeads[4];

struct unk80017FEC {
    u8 filler2[0x30];
    u32 unk30;
    u32 unk34;
    u32 unk38;
    struct unk80017B40* unk3C;
};

// extern struct {
//     u32 unk0;
// } D_8003DCA8;
extern u32 D_8003DCA8;

extern struct UnkStruct8004A7F8 D_8004A7F8[];

s32 D_8003DF10 = 0x0000000A;
s32 D_8003DF14 = 0x0000000A;
s32 D_8003DF18 = 0x0000000A;
s32 D_8003DF1C = 0x0000000A;

u8 D_8003DF20[0x400] = {
    0x2B, 0xE6, 0xDB, 0xB9, 0xB1, 0xF3, 0x53, 0x81, 0x37, 0x01, 0x7F, 0x44, 0x23, 0x3C, 0x11, 0xD0,
    0x48, 0x80, 0xD2, 0x15, 0x6A, 0x70, 0x9B, 0x9E, 0x27, 0x51, 0xB0, 0x4B, 0x6A, 0xDB, 0x1E, 0xFF,
    0x2D, 0xBC, 0x5B, 0x38, 0x6D, 0xCA, 0xAA, 0xF5, 0xCB, 0x42, 0x56, 0x96, 0x0F, 0x28, 0x6A, 0x59,
    0x08, 0x08, 0xB5, 0x1B, 0xA4, 0xEC, 0xAD, 0x8B, 0x7E, 0xD9, 0x6F, 0x4E, 0x8E, 0x40, 0x92, 0xA2,
    0x7F, 0x27, 0x88, 0x8D, 0x65, 0x5B, 0x3A, 0xF6, 0xA2, 0x41, 0xC8, 0xA6, 0x4A, 0xA6, 0xDE, 0x28,
    0x8C, 0x48, 0xD7, 0x90, 0x9B, 0xAB, 0xAB, 0x73, 0x9A, 0x44, 0x6F, 0x73, 0xF7, 0xE4, 0x15, 0x04,
    0xE6, 0xFF, 0xD8, 0xCD, 0xE7, 0xA9, 0x1D, 0x56, 0x4B, 0xEE, 0xD5, 0xBE, 0x32, 0x93, 0xCF, 0x7F,
    0x39, 0x4D, 0xA8, 0x15, 0x32, 0xF7, 0x68, 0x67, 0x9B, 0x6F, 0xD6, 0x84, 0x30, 0xE3, 0xDE, 0x52,
    0x5C, 0x09, 0x34, 0x54, 0xAB, 0x76, 0x03, 0x5A, 0xDE, 0xE0, 0xE4, 0xA0, 0x49, 0xAF, 0x0B, 0x7B,
    0x54, 0x2C, 0x82, 0xBC, 0xF4, 0xCE, 0xA4, 0x0A, 0x99, 0x42, 0x5C, 0xD0, 0x67, 0xAC, 0x46, 0x1C,
    0x05, 0x09, 0x4C, 0x87, 0x64, 0x61, 0x5D, 0x57, 0x4E, 0x13, 0x39, 0x67, 0x7D, 0x02, 0x26, 0x2A,
    0x04, 0x49, 0xAE, 0xC3, 0x69, 0x7B, 0x52, 0xEC, 0x7D, 0xA7, 0x45, 0x0F, 0xB4, 0x12, 0xAE, 0x44,
    0xA5, 0x1A, 0x22, 0xBC, 0xF3, 0xD0, 0x35, 0x3A, 0x50, 0x43, 0xEB, 0x94, 0x66, 0x9D, 0x85, 0xBB,
    0x0C, 0x02, 0xD9, 0x0B, 0xC5, 0xE8, 0xB2, 0x1D, 0x1A, 0x20, 0x66, 0x25, 0xAE, 0xF9, 0x33, 0xEF,
    0xD8, 0x1F, 0xA1, 0xDF, 0x68, 0xFB, 0xB0, 0xC5, 0x91, 0xA5, 0x24, 0x8D, 0xCC, 0xC1, 0x06, 0xA2,
    0x5D, 0xFD, 0x50, 0x45, 0xE6, 0x75, 0x4A, 0x5E, 0x02, 0xB7, 0x6C, 0xFE, 0x81, 0xB8, 0x93, 0x8C,
    0x4C, 0x29, 0x1F, 0xB1, 0x9A, 0xFA, 0x85, 0x23, 0xCE, 0x43, 0x04, 0x76, 0x5B, 0x14, 0xAF, 0x32,
    0xDA, 0xF7, 0x48, 0xBF, 0x0C, 0x3F, 0x30, 0x6D, 0x86, 0x2C, 0xE2, 0xA3, 0x31, 0x0D, 0xFF, 0xD3,
    0xF0, 0x76, 0x7B, 0x89, 0xED, 0xAA, 0x97, 0x0E, 0x45, 0xB3, 0x5B, 0xAB, 0x92, 0xB5, 0x79, 0xD3,
    0xCC, 0xFA, 0x4C, 0x7E, 0xA0, 0x25, 0x1A, 0xED, 0x56, 0xF4, 0xBE, 0xCA, 0xF2, 0xD7, 0x00, 0x6A,
    0xF3, 0x62, 0xC0, 0xBF, 0xB3, 0x56, 0x46, 0x50, 0x91, 0x69, 0x65, 0x5C, 0xC2, 0xDB, 0xE1, 0x8E,
    0x79, 0x03, 0xD9, 0xAC, 0xED, 0x10, 0xBB, 0x5E, 0x8B, 0xC1, 0xE5, 0xD4, 0xF1, 0xD7, 0x78, 0x6E,
    0x4D, 0x44, 0x01, 0x80, 0xDC, 0xB1, 0x0A, 0x97, 0x72, 0x1E, 0x5D, 0xB4, 0x99, 0xC0, 0xB0, 0x20,
    0x04, 0x39, 0xF6, 0xC1, 0xF7, 0x2B, 0x3D, 0x45, 0x59, 0xEC, 0x53, 0x4F, 0x9A, 0x86, 0xE5, 0x06,
    0x55, 0x80, 0x40, 0x9C, 0x86, 0x83, 0x90, 0x2D, 0x9B, 0xD1, 0xEF, 0xB9, 0x68, 0xDC, 0x93, 0x1D,
    0xC2, 0x6C, 0xB6, 0xE2, 0xCF, 0x28, 0x10, 0xB6, 0x16, 0x52, 0x33, 0x60, 0xDB, 0x82, 0x41, 0xD0,
    0xFD, 0x47, 0x1C, 0x35, 0x58, 0x94, 0x58, 0xE5, 0xBB, 0x58, 0xA2, 0x4C, 0x64, 0xCE, 0xCA, 0x94,
    0x13, 0x47, 0x6F, 0xA7, 0xF8, 0x5E, 0xC4, 0x3B, 0x76, 0x85, 0x01, 0x61, 0x26, 0x13, 0x28, 0x23,
    0x52, 0xFB, 0x19, 0x89, 0x35, 0xEA, 0xDD, 0x88, 0xE7, 0xBE, 0xA9, 0x2F, 0xD5, 0x82, 0x9C, 0x51,
    0x7F, 0x51, 0x29, 0x31, 0xDA, 0xF9, 0xFA, 0x2A, 0x06, 0xC2, 0xE3, 0x14, 0xD5, 0xEC, 0x79, 0xE9,
    0xDD, 0x75, 0x72, 0x37, 0x84, 0xFE, 0x7D, 0x72, 0x8E, 0xCD, 0xF5, 0xC3, 0xA8, 0xBA, 0xD8, 0xC6,
    0xD4, 0x42, 0x0B, 0xEE, 0x1B, 0xE0, 0xFE, 0xF0, 0xD7, 0xA6, 0xC6, 0x22, 0x12, 0x25, 0x49, 0x81,
    0xC0, 0x9F, 0x33, 0x9F, 0x38, 0xB7, 0x3C, 0x38, 0x42, 0xE2, 0xCB, 0xA9, 0x17, 0x03, 0x4E, 0xD3,
    0xF5, 0xE9, 0x77, 0x0E, 0xA8, 0x08, 0x3D, 0x47, 0x86, 0x98, 0xDA, 0x20, 0xD6, 0x9F, 0x7D, 0xFC,
    0xEE, 0xD6, 0x14, 0x5F, 0xFC, 0x5F, 0x46, 0xDF, 0xF2, 0x87, 0x39, 0x19, 0xA1, 0x62, 0x65, 0xA7,
    0x51, 0x64, 0x20, 0x7E, 0x77, 0xFD, 0xC9, 0xA7, 0x80, 0x5F, 0xFB, 0x41, 0xA0, 0xBD, 0x9D, 0x83,
    0xFC, 0xDF, 0xF0, 0xE3, 0x05, 0x60, 0xA6, 0xBB, 0xD9, 0xB0, 0x59, 0x43, 0xFF, 0xD1, 0x30, 0x7C,
    0xB2, 0xAF, 0x8D, 0x8C, 0xC7, 0x53, 0xF1, 0x47, 0x92, 0x38, 0xA3, 0x57, 0x9C, 0x0A, 0x72, 0x95,
    0x4A, 0x7C, 0xE4, 0xBF, 0x84, 0x49, 0x15, 0x2E, 0x2D, 0x0C, 0x68, 0x7C, 0x3B, 0x84, 0xEF, 0x05,
    0x1C, 0x78, 0x78, 0x2E, 0x6B, 0x11, 0x1D, 0x27, 0x3D, 0x87, 0x61, 0x1B, 0x3C, 0x93, 0x5A, 0x99,
    0xE8, 0x89, 0x95, 0xD2, 0xE1, 0x3B, 0x0C, 0x99, 0x11, 0x9F, 0x67, 0x3C, 0xC7, 0x98, 0xF2, 0x8B,
    0xCD, 0x21, 0x66, 0x19, 0x73, 0x96, 0xEB, 0xAA, 0x89, 0xCB, 0x4B, 0x8F, 0x33, 0xA5, 0x74, 0x4B,
    0x2F, 0xA1, 0x2A, 0x55, 0x48, 0x5A, 0xAD, 0x13, 0x0A, 0x43, 0xB4, 0xFA, 0xD5, 0x3F, 0xAC, 0x79,
    0x85, 0xD6, 0x9E, 0x9D, 0x60, 0x73, 0x74, 0xB2, 0x98, 0xE1, 0xBA, 0xB2, 0x6B, 0x29, 0xEB, 0x71,
    0x7B, 0xF2, 0x40, 0x37, 0x12, 0x90, 0x1F, 0x9D, 0x62, 0x1E, 0xAE, 0x6C, 0x3A, 0x8B, 0xCB, 0x1E,
    0x71, 0xBD, 0x2C, 0x9C, 0xBE, 0x8E, 0x10, 0x98, 0x70, 0xD4, 0x11, 0x4F, 0x07, 0x2F, 0x8F, 0x09,
    0x57, 0xE8, 0x0D, 0x3E, 0xC2, 0xDC, 0xA1, 0xF5, 0x6C, 0x46, 0x24, 0x26, 0x16, 0x8A, 0xEA, 0xED,
    0x1F, 0x00, 0x74, 0x00, 0x18, 0x2F, 0xF6, 0xCC, 0xC6, 0x02, 0x78, 0xC7, 0xB8, 0x2C, 0x2A, 0xE3,
    0x91, 0xD4, 0xFC, 0xF4, 0xCF, 0x7A, 0x3D, 0xC3, 0x14, 0xCC, 0x3F, 0xA0, 0xDE, 0x22, 0x0D, 0x1A,
    0x6D, 0xBD, 0xD1, 0x27, 0xBA, 0x6D, 0x08, 0x4D, 0x50, 0x07, 0xE7, 0x6B, 0x71, 0x36, 0x8C, 0x35,
    0x18, 0x2B, 0xFD, 0xA8, 0x74, 0x7A, 0xB9, 0x0E, 0x3B, 0x5D, 0x17, 0xBF, 0xB3, 0x3A, 0x00, 0x83,
    0xEF, 0x26, 0xF6, 0x2D, 0x31, 0xF9, 0x9E, 0xC1, 0xC9, 0x58, 0xE7, 0xC7, 0x41, 0x71, 0x36, 0x07,
    0xB7, 0x63, 0x29, 0xFB, 0x06, 0x63, 0x05, 0x0B, 0xF0, 0x88, 0x1B, 0x6B, 0x4F, 0xB8, 0xD8, 0x75,
    0x34, 0x70, 0x21, 0x92, 0xE2, 0x95, 0xC6, 0x70, 0x63, 0xDA, 0xEA, 0xB4, 0x77, 0xBC, 0xCF, 0x3E,
    0xC9, 0xE0, 0xC4, 0x65, 0xE0, 0xC5, 0x40, 0xEA, 0xC8, 0xF1, 0xF8, 0xD3, 0x34, 0x32, 0x54, 0x61,
    0x5F, 0xAD, 0x6E, 0x34, 0x17, 0xA3, 0x2E, 0xB3, 0xA3, 0xC3, 0x5C, 0xD2, 0x54, 0x16, 0x5A, 0x55,
    0xAC, 0x94, 0xAD, 0x53, 0xAA, 0x96, 0xCA, 0xEE, 0x64, 0x30, 0xB7, 0x87, 0x82, 0x36, 0xF1, 0xDD,
    0x31, 0x69, 0xCD, 0xA9, 0x91, 0xA5, 0x18, 0xC5, 0xF9, 0xE4, 0x8F, 0x97, 0x90, 0xE6, 0xCE, 0x23,
    0xB8, 0x59, 0x0D, 0xB1, 0x95, 0x4E, 0x2E, 0xB5, 0x8A, 0x57, 0x7C, 0xC9, 0x77, 0x88, 0xC4, 0x21,
    0x7A, 0xFE, 0x75, 0x83, 0x81, 0x63, 0x10, 0x3E, 0xB6, 0x0F, 0x7E, 0x36, 0x5E, 0x62, 0x6E, 0xD2,
    0x55, 0x19, 0x4F, 0x16, 0xC4, 0xBA, 0xA4, 0xAF, 0xE9, 0xB9, 0x0E, 0x25, 0x9A, 0xF8, 0x09, 0x0F,
    0x03, 0x12, 0xBD, 0x7A, 0xB6, 0xE9, 0x3E, 0x37, 0x24, 0x8A, 0xF8, 0x97, 0xF3, 0xE8, 0x4D, 0xE5,
    0x4A, 0x60, 0x3F, 0xA4, 0x2B, 0x24, 0xC0, 0xDC, 0x17, 0x66, 0x69, 0x21, 0xB5, 0x8F, 0x8D, 0x6E,
    0x96, 0x07, 0xF4, 0xD1, 0x1C, 0xC8, 0xE1, 0x18, 0xDD, 0xEB, 0x22, 0x01, 0x9E, 0xDF, 0xC8, 0x8A,
};

u16 D_8003E320 = 0x00000000;
s32 D_8003E324 = 0x00000001;

void func_80010B20(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    D_8003DF10 = arg0;
    D_8003DF14 = arg1;
    D_8003DF18 = arg2;
    D_8003DF1C = arg3;
}

void func_80010B44(s32 arg0) {
    D_8004AB9C = arg0;
}

void func_80010B50(void) {

}



struct unkFunc80010B58 {
    u8 filler[0x1C];
    f32 x;
    f32 y;
    f32 z;
};

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80010B58.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80010D28.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80010EF8.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_8001103C.s")

// file boundary?

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80011180.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80013300.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_800140FC.s")

extern Gfx* gDisplayListHeads[4];

void func_800141D4(void* arg0) {
    func_800140FC(arg0, &gDisplayListHeads[0]);
}

void func_800141F8(void* arg0) {
    func_800140FC(arg0, &gDisplayListHeads[1]);
}

void func_8001421C(void* arg0) {
    func_800140FC(arg0, &gDisplayListHeads[2]);
}

void func_80014240(void* arg0) {
    func_800140FC(arg0, &gDisplayListHeads[3]);
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80014264.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_800143A4.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_800143D4.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80014768.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_8001479C.s")

void func_800147C8(struct UnkStruct8004A7C4_3C *arg0);
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_800147C8.s")


extern f32 D_8004AA94;
void func_80014AD4(struct GObj *arg0) {
    D_8004AA94 = 1.0f;
    func_800147C8(arg0->unk3C);
}

#include "ovl0_5.h"

f32 func_80014B04(struct UnkStruct8004A7C4_3C *arg0) {
    Vector tmp;

    // extremely hacky cast because unk3C meme
    VEC_SUB(tmp, arg0->posVec, ((struct UnkStruct8004A7C4_3C_duplicate *)(D_8004A7C8->unk3C))->unk3C);
    return VEC_MAG_SQUARE(tmp);
} 

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80014B4C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80014C78.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80014DF0.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80014FA4.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_8001503C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80015368.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_800156C4.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_8001585C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_8001588C.s")

extern f32 D_8004AA94;

struct unk80015BCC {
    u32 filler[15];
    void* unk3C;
};

void func_8001588C(struct unk80015BCC *);

void func_80015BCC(struct unk80015BCC *arg0) {
    D_8004AA94 = 1.0f;
    func_8001588C(arg0->unk3C);
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80015BFC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80015DC4.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80015F78.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_800162D8.s")

void func_80016634(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_8001663C.s")

#ifdef WORK_ON_IT
void func_80016940(Gfx** arg0, Vp *arg1, s32 arg2) {
    void *sp84;
    void *sp3C;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t3;
    s32 temp_t4;
    u32 temp_t5;
    u32 temp_v0_2;
    void *temp_a1_4;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_5;
    void *phi_v1;
    s32 phi_t3;
    s32 phi_t4;
    s32 phi_t1;
    s32 phi_t2;
    void *phi_v1_2;
    void *phi_v1_3;
    void *phi_v1_4;

    temp_v1 = *arg0;
    if ((arg2 == 0) || (phi_v1 = temp_v1, (arg2 == 1))) {
        phi_v1 = temp_v1;
        if ((arg1->unk80 & 0x20) != 0) {
            append_microcode_load(arg0, D_8004A446);
            D_8004A448 = 1;
            phi_v1 = *arg0;
        }
    }
    gSPViewport(*arg0++, arg1[2]);
    // temp_a0 = phi_v1;
    // temp_a0->unk0 = 0xDC080008;
    // temp_v0 = arg1 + 8;
    // temp_a0->unk4 = temp_v0;

    temp_t5 = gCurrScreenWidth;
    temp_v1_2 = phi_v1 + 8;
    temp_a1 = temp_v0->unk8 / 4;
    temp_a2 = temp_v0->unk0 / 4;
    temp_t3 = temp_a1 - temp_a2;
    temp_a3 = temp_v0->unkA / 4;
    temp_t0 = temp_v0->unk2 / 4;
    temp_lo = temp_t5 / 0x140;
    temp_t4 = temp_a3 - temp_t0;
    temp_t1 = temp_a2 + temp_a1;
    temp_lo_2 = temp_lo * D_8003DF18;
    temp_t2 = temp_t0 + temp_a3;
    sp1C = temp_lo_2;
    phi_t3 = temp_t3;
    if (temp_t3 < temp_lo_2) {
        phi_t3 = temp_lo_2;
    }
    temp_v0_2 = gCurrScreenHeight;
    temp_lo_3 = temp_v0_2 / 0xF0;
    temp_lo_4 = temp_lo_3 * D_8003DF10;
    phi_t4 = temp_t4;
    if (temp_t4 < temp_lo_4) {
        phi_t4 = temp_lo_4;
    }
    temp_a1_2 = temp_t5 - (temp_lo * D_8003DF1C);
    phi_t1 = temp_t1;
    if (temp_a1_2 < temp_t1) {
        phi_t1 = temp_a1_2;
    }
    temp_a1_3 = temp_v0_2 - (temp_lo_3 * D_8003DF14);
    phi_t2 = temp_t2;
    if (temp_a1_3 < temp_t2) {
        phi_t2 = temp_a1_3;
    }
    temp_v0_3 = temp_v1_2;
    temp_v1_2 = temp_v1_2 + 8;
    temp_t1_2 = phi_t1 - 1;
    temp_v0_3->unk0 = (((phi_t3 * 4.0f) & 0xFFF) << 0xC) | 0xED000000 | ((phi_t4 * 4.0f) & 0xFFF);
    temp_t2_2 = phi_t2 - 1;
    temp_v0_3->unk4 = (((phi_t1 * 4.0f) & 0xFFF) << 0xC) | ((phi_t2 * 4.0f) & 0xFFF);
    temp_v0_4 = temp_v1_2;
    phi_v1_2 = temp_v1_2;
    if ((arg1->unk80 & 1) != 0) {
        gDPPipeSync(*arg0++);
        // temp_v1_2 = temp_v1_2 + 8;
        // temp_a0_2 = temp_v1_2;
        // temp_v0_4->unk0 = 0xE7000000;
        // temp_v0_4->unk4 = 0;
        gDPSetCycleType(*arg0++, G_CYC_FILL);
        // temp_v1_2 = temp_v1_2 + 8;
        // temp_a0_2->unk4 = 0x300000;
        // temp_a0_2->unk0 = 0xE3000A01;

        gDPSetRenderMode(*arg0++, G_RM_NOOP, G_RM_NOOP2);
        // temp_v1_2->unk0 = 0xE200001C; // gDPSetRenderMode(*arg0++, G_RM_NOOP, G_RM_NOOP2);
        // temp_v1_2->unk4 = 0;

        gDPSetColorImage(*arg0++, G_IM_FMT_RGBA, G_IM_SIZ_16b, gCurrScreenWidth, gZBuffer);
        // temp_v1_2 = temp_v1_2 + 8;
        // temp_a2_2 = temp_v1_2;
        // temp_a2_2->unk0 = ((gCurrScreenWidth - 1) & 0xFFF) | 0xFF100000;

        gDPSetFillColor(*arg0++, GPACK_RGBA5551(248, 248, 248, 0) << 16 | GPACK_RGBA5551(248, 248, 248, 0));
        // temp_v1_2 = temp_v1_2 + 8;
        // temp_a2_2->unk4 = gZBuffer;
        // temp_v1_2->unk4 = 0xFFFCFFFC; // 
        // temp_v1_2->unk0 = 0xF7000000;

        gDPFillRectangle(*arg0++, temp_t1_2, temp_t2_2, phi_t3, phi_t4);
        // temp_v1_2 = temp_v1_2 + 8;
        // temp_v1_2->unk0 = ((temp_t1_2 & 0x3FF) << 0xE) | 0xF6000000 | ((temp_t2_2 & 0x3FF) * 4);
        // temp_v1_2->unk4 = ((phi_t3 & 0x3FF) << 0xE) | ((phi_t4 & 0x3FF) * 4);
        // phi_v1_2 = temp_v1_2 + 8;
    }

    gDPPipeSync(*arg0++);
    // temp_v0_5 = phi_v1_2;
    // temp_v0_5->unk0 = 0xE7000000;
    // temp_v0_5->unk4 = 0;

    gDPSetColorImage(*arg0++, G_IM_FMT_RGBA, D_8004A504, gCurrScreenWidth, 0x0F000000);
    // temp_v1_3 = phi_v1_2 + 8;
    // temp_v1_3->unk4 = 0x0F000000;
    // temp_v1_3->unk0 = ((D_8004A504 & 3) << 0x13) | 0xFF000000 | ((gCurrScreenWidth - 1) & 0xFFF);
    // temp_v1_3 = temp_v1_3 + 8;
    // phi_v1_3 = temp_v1_3;
    if ((arg1->unk80 & 2) != 0) {
        gDPSetCycleType(*arg0++, G_CYC_FILL);
        // temp_v1_3->unk0 = 0xE3000A01;
        // temp_v1_3->unk4 = 0x300000;

        gDPSetRenderMode(*arg0++, G_RM_NOOP, G_RM_NOOP2);
        // temp_a1_4 = temp_v1_3 + 8;
        // temp_a1_4->unk4 = 0;
        // temp_a1_4->unk0 = 0xE200001C;

        gDPSetFillColor(*arg0++, func_800078F0(arg1->unk84));
        // temp_a2_3 = temp_a1_4 + 8;
        // temp_a2_3->unk0 = 0xF7000000;
        // temp_a2_3->unk4 = func_800078F0(arg1->unk84);

        // temp_v1_4 = temp_a2_3 + 8;
        // sp84 = temp_v1_4;

        // sp3C = temp_a2_3;
        // temp_a0_3 = temp_v1_4;

        gDPFillRectangle(*arg0++, temp_t1_2, temp_t2_2, phi_t3, phi_t4);
        // sp24 = ((temp_t1_2 & 0x3FF) << 0xE) | 0xF6000000 | ((temp_t2_2 & 0x3FF) * 4);
        // temp_a0_3->unk0 = sp24;
        // sp20 = ((phi_t3 & 0x3FF) << 0xE) | ((phi_t4 & 0x3FF) * 4);
        // temp_a0_3->unk4 = sp20;
        // phi_v1_3 = temp_v1_4 + 8;
    }
    gDPPipeSync(*arg0++);
    // temp_v0_6 = phi_v1_3;
    // temp_v1_5 = phi_v1_3 + 8;
    // temp_v0_6->unk0 = 0xE7000000;
    // temp_v0_6->unk4 = 0;

    gDPSetCycleType(*arg0++, G_CYC_1CYCLE);
    // temp_v1_5->unk0 = 0xE3000A01;
    // temp_v1_5->unk4 = 0;
    // temp_v1_5 = temp_v1_5 + 8;

    if ((arg2 == 0) || (arg2 == 2)) {
        // temp_v0_7->unk4 = 0x552078;
        // temp_v0_7->unk0 = 0xE200001C;
        // phi_v1_4 = temp_v1_5 + 8;
        gDPSetRenderMode(*arg0++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    } else {
        // temp_v1_5->unk4 = 0x5049D8;
        // temp_v1_5->unk0 = 0xE200001C;
        // phi_v1_4 = temp_v1_5 + 8;
        gDPSetRenderMode(*arg0++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
    }
    // *arg0 = phi_v1_4;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80016940.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80016DE8.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_800171E0.s")

extern u32 D_8004AB98;

void func_80017B34(u32 arg0) {
    D_8004AB98 = arg0;
}

struct unk80017B40 {
    u8 filler[0x80];
    u32 unk80;
    u32 unk84;
    void* (*unk88)(void*, s32);
};

void func_80017B40(struct unk80017B40 *arg0, s32 arg1) {
    if (arg0->unk88 != NULL) {
        arg0->unk88(arg0, arg1);
    }
}

extern struct GObj *gHighestPrioDLLinkProcs[];
extern u32 D_8003DE54;

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80017B6C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80017C7C.s")

extern Gfx *gDisplayListHeads[4];


// TODO: regalloc D_8004A7F8 into v1 instead of v0
#ifdef NON_MATCHING
void func_80017DB0(s32 arg0) {
    struct UnkStruct8004A7F8 *temp_v1;
    int tmp;

    temp_v1 = &D_8004A7F8[arg0];

    tmp = 0;
    if (temp_v1->unk4){
        gSPDisplayList(gDisplayListHeads[tmp]++, temp_v1->unk4);
    }
    // tmp = 1;if (temp_v1->unk8){gSPDisplayList(gDisplayListHeads[tmp]++, temp_v1->unk8);}
    // tmp = 2;if (temp_v1->unkC){gSPDisplayList(gDisplayListHeads[tmp]++, temp_v1->unkC);}
    // tmp = 3;if (temp_v1->unk10){gSPDisplayList(gDisplayListHeads[tmp]++, temp_v1->unk10);}

    tmp = 1;
    if (temp_v1->unk8){
        gSPDisplayList(gDisplayListHeads[tmp]++, temp_v1->unk8);
    }

    tmp = 2;
    if (temp_v1->unkC){
        gSPDisplayList(gDisplayListHeads[tmp]++, temp_v1->unkC);
    }

    tmp = 3;
    if (temp_v1->unk10){
        gSPDisplayList(gDisplayListHeads[tmp]++, temp_v1->unk10);
    }
    // return temp_v1;
}
#else
void func_80017DB0(u32 arg0);
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80017DB0.s")
#endif


void func_80017E84(struct GObj*, u32);
void func_80017C7C(struct GObj*, s32, u32);

void func_80017E84(struct GObj *arg0, u32 arg1) {
    s32 temp_a1;
    u32 temp_s1;
    u32 phi_s1;
    u32 phi_s2;
    s32 phi_s0;

    phi_s1 = arg0->unk30;
    phi_s0 = 0;
    phi_s2 = arg0->unk38;
    while (phi_s1 != 0) {
        if ((phi_s1 & 1) != 0) {
            if ((phi_s2 & 1) != 0) {
                temp_a1 = phi_s0;
                // D_8003DCA8 could be a struct? Seems strange to have an exact array index
                // update: probably the case
                if ((u8)D_8003DCA8 == D_8004A7F8[phi_s0].unk0) {
                    func_80017DB0(phi_s0);
                } else {
                    func_80017C7C(arg0, temp_a1, arg1);
                }
            } else {
                func_80017B6C(arg0, phi_s0, arg1);
            }
        }
        phi_s1 = phi_s1 >> 1;
        phi_s2 = phi_s2 >> 1;
        phi_s0 = phi_s0 + 1;
    }
}

void func_8000630C();
void func_80005F10();
void func_800059F8();

void func_80017F78(struct unk80017B40 *arg0) {
    if ((arg0->unk80 & 0x04)) {
        func_8000630C();
    }
    if ((arg0->unk80 & 0x10)) {
        func_80005F10();
        func_800059F8();
    }
    if ((arg0->unk80 & 0x40)) {
        func_80005F10();
    }
}

void func_80016940(Gfx**, void *, s32);
void func_800171E0(Gfx**, void *);

void func_80017FEC(struct GObj *arg0, Gfx** arg1, s32 arg2) {
    struct unk80017B40 *temp_s0;

    temp_s0 = arg0->unk3C;
    func_80016940(arg1, temp_s0, arg2);
    func_800171E0(arg1, temp_s0);
    func_80017B40(temp_s0, arg2);

    func_80017E84(arg0, (temp_s0->unk80 & 8) != 0 ? 1 : 0);
    func_80017F78(temp_s0);
}

// arg0 is the value at 8004A7C8
void func_8001806C(struct GObj *arg0) {
    func_80017FEC(arg0, &gDisplayListHeads[0], 0);
}

void func_80018094(struct GObj *arg0) {
    func_80017FEC(arg0, &gDisplayListHeads[1], 1);
}

void func_800180BC(struct GObj *arg0) {
    func_80017FEC(arg0, &gDisplayListHeads[2], 2);
}

void func_800180E4(struct GObj *arg0) {
    func_80017FEC(arg0, &gDisplayListHeads[3], 3);
}

extern Gfx* gDisplayListHead2;

// #define gDisplayListHead2 gDisplayListHeads[2]

void func_8001810C(void) {
    void* sp1C;

    sp1C = D_8004A7C8->unk3C;
    func_80005F10();
    func_800059F8();
    func_80016940(&gDisplayListHeads[0], sp1C, 0);
    func_800171E0(&gDisplayListHead2 - 1, sp1C); // Had to be done like this to make it match
    func_80017B40(sp1C, 0);
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_80018170.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_4/func_800183BC.s")

// file boundary???

extern f32 sinf(f32 a);
extern f32 cosf(f32 a);
f32 tanf(f32 x) {
    return sinf(x) / cosf(x);
}

extern f32 D_80040C38, D_80040C3C;
extern f32 D_80040C20, D_80040C24, D_80040C28, D_80040C2C, D_80040C30, D_80040C34;

f32 atanf(f32 yDivX) {
    f32 yDivX2;
    f32 result;
    s32 phi_v0;

    if (yDivX == 0.0f) return 0.0f;
    
    phi_v0 = 1;

    if (yDivX > 1.0f) {
        yDivX = 1.0f / yDivX;
    } else if (yDivX < -1.0f) {
        yDivX = 1.0f / yDivX;
        phi_v0 = 2;
    } else {
        phi_v0 = 0;
    }
    yDivX2 = yDivX * yDivX;
    result = (yDivX2 / (yDivX2 / (yDivX2 / (yDivX2 / (yDivX2 / (yDivX2 / D_80040C20 + D_80040C24) + D_80040C28) + D_80040C2C) + D_80040C30) + D_80040C34) + 1) * yDivX;
    switch (phi_v0) {
        case 0: return result; 
        case 1: return D_80040C38 - result; // pi/2 - result
        case 2: return D_80040C3C - result; // -pi/2 - result
        default: return;
    }
}

f32 atanf(f32);
extern f32 D_80040C40;
extern f32 D_80040C44;

f32 atan2f(f32 y, f32 x) {
    f32 yDivX;
    s32 phi_v0;
    UNUSED s32 phi_v0_2;

    if (0.0f < x) {
        return atanf(y / x);
    }
    if (x < 0.0f) {
        yDivX = y / x;
        phi_v0 = ((y < 0.0f) ? -1 : 1);

        // pi - atanf() * phi_v0
        return (D_80040C40 - atanf(ABSF(yDivX))) * phi_v0;
    }
    if (y != 0.0f) {
        return ((y < 0.0f) ? -1 : 1) * D_80040C44; // pi / 2
    } else return 0.0f;
}


extern f32 D_80040000;
extern f32 D_80040C48, D_80040C4C, D_80040C50, D_80040C54;
extern f32 sqrtf(f32 a);

f32 asinf(f32 x) {
    // if (x >= 1.0f)
    if (D_80040C48 < x) {
        // Return pi / 2;
        return D_80040C4C;
    }
    // if (x <= -1.0f)
    if (x < D_80040C50) {
        // Return -pi / 2;
        return D_80040C54;
    }
    return atanf(x / sqrtf(1.0f - x * x));
}

extern f32 D_80040C64;
extern f32 D_80040C58;
extern f32 D_80040C5C;
extern f32 D_80040C60;

f32 acosf(f32 x) {
    // if (x >= 1.0f)
    if (D_80040C58 < x) {
        return 0.0f;
    }
    // if (x <= -1.0f)
    if (x < D_80040C5C) {
        // return pi;
        return D_80040C60;
    }
    // pi / 2 - atan(x / sqrt(1 - x * x))
    return D_80040C64 - atanf(x / sqrtf(1.0f - x * x));
}

f32 cscf(f32 x) {
    return 1.0f / sinf(x);
}

f32 secf(f32 x) {
    return 1.0f / cosf(x);
}

f32 cotf(f32 x) {
    return 1.0f / tanf(x);
}

void set_soft_rng_seed(s32 arg0) {
    D_8003E320 = arg0 & 0x3FF;
}

u16 get_soft_rng_seed(void) {
    return D_8003E320;
}

u16 random_soft_u16(void) {
    return D_8003DF20[D_8003E320 = (++D_8003E320 & 0x3FF)];
}

f32 random_soft_f32(void) {
    return D_8003DF20[D_8003E320 = (++D_8003E320 & 0x3FF)] / 256.f;
}

s32 random_soft_s32_range(s32 arg0) {
    return D_8003DF20[D_8003E320 = (++D_8003E320 & 0x3FF)] * arg0 / 256;
}

void set_hard_rng_seed(s32 arg0) {
    D_8003E324 = arg0;
}

s32 get_rng_seed(void) {
    return D_8003E324;
}

u16 random_u16(void) {
    return (D_8003E324 = (D_8003E324 * 0x343FD) + 0x269EC3) >> 0x10;
}

f32 random_f32(void) {
    return ((D_8003E324 = (D_8003E324 * 0x343FD) + 0x269EC3) >> 0x10 & 0xffff) / 65536.f;
}

s32 random_s32_range(s32 arg0) {
    return (((D_8003E324 = (D_8003E324 * 0x343FD) + 0x269EC3)) >> 0x10 & 0xffff) * arg0 / 65536;
}

u8 random_u8(void) {
    return random_u16();
}

f32 random_f32_2(void) {
    return ((D_8003E324 = (D_8003E324 * 0x343FD) + 0x269EC3) >> 0x10 & 0xffff) / 65536.f;
}

s32 random_u16_range(s32 arg0) {
    return random_u16() * arg0 / 65536;
}
