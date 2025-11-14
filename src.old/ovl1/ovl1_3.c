#include <ultra64.h>
#include <macros.h>
#include "omCurrentObj.h"
#include "ovl0/ovl0_2_5.h"
#include "ovl1/ovl1_6.h"
#include "unk_structs/D_800D79D8.h"

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A82C0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8310.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8358.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A840C.s")

// regalloc
#ifdef NON_MATCHING
void func_800A84F0(u8 *arg0) {
    D_800D7C10 += ((u32)arg0 + 0xF) & 0xFFFFF0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A84F0.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8518.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8540.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A855C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8564.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8578.s")

s32 func_800A86C8(s32, s32 *, s32 *); // extern
extern s32 D_800D7BF0[];
extern s32 D_800D7C00[];

s32 func_800A8648(void) {
    int ret = 0;
    int i;

    for (i = 0; i < 4; i++) {
        ret += func_800A86C8(i, &D_800D7BF0[i], &D_800D7C00[i]);
    }
    return ret;
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A86C8.s")

extern u32 D_800D00E4[], D_800D0124[];
extern u32 D_800D6E78;
extern u32 D_800D6E68;
extern u32 D_800D6E7C;
extern u32 D_800D6E6C;
extern u32 D_800D6E80;
extern u32 D_800D6E70;
extern u32 D_800D6E84;
extern u32 D_800D6E74;

struct UnkStruct800C4654{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
};
extern struct UnkStruct800C4654 D_800C4654[5];
extern u32 D_800D7BC0[];
extern u32 D_800D7BD0[];
extern u32 D_800D7BE0[];

extern u32 D_800D0144;
extern u32 D_800D7BB8;

// doozy / 10
#ifdef ___MIPS_TO_C
s32 func_800A8724(s32 arg0) {
    int i;
    int j;
    int ret;

    func_800A82C0();
    for (i = 0; i < 32; i++) {
        for (j = 0; j < D_800D00E4[i]; j++) {
            D_800D00C4[i][j] = 0;
        }
        for (j = 0; j < D_800D0124[i]; j++) {
            D_800D0104[i][j] = 0;
        }
    }

    ret = 0;

    for (i = 0; i < 4; i++) {
        if (D_800C4654[arg0].unk0 != 0) {
            if (D_800C4654[arg0].unk0 != -1) {
                s32 tmp = func_800A840C(D_800D7BB8, i, D_800C4654[arg0]);

                D_800D7BD0[i] = tmp;
                if (tmp == 0) {
                    ret++;
                }
            } else {
                s32 tmp = func_800A840C(D_800C4654[arg0], i, D_800C4654[arg0]);

                D_800D7BD0[i] = tmp;
                if (tmp == 0) {
                    ret++;
                }
            }
        }
        D_800D7BE0[i] = D_800D7BB8 - D_800D7BB8;
        D_800D7BC0[i] = D_800D7BD0[i];
    }
    D_800D6E78 = 0;
    D_800D6E68 = 0;
    D_800D6E7C = 0;
    D_800D6E6C = 0;
    D_800D6E80 = 0;
    D_800D6E70 = 0;
    D_800D6E84 = 0;
    D_800D6E74 = 0;
    return ret;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8724.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8934.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A89E0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8A7C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8B0C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8BAC.s")




// parses the Header of an S2DEX background file and relocates image/palette offset
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8C40.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8CE0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8D64.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8E54.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A8EC0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9088.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9250.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A94F4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9648.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9760.s")


// extern struct {
//     u32 unk0;
//     u32 unk0;
//     u32 unk0;
//     u32 unk0;
// } 


void func_800AF9B8(u16, u8);

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9864.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A99E4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9A2C.s")

extern struct BankHeader *D_800D0184[];
#ifdef NON_MATCHING
// regalloc moment
s32 func_800A8358(u32);
s32 func_800A9AA8(u32 bankIndex, u32 arg1) {
    u32 sp18;
    s32 temp_a3;
    s32 temp_v0;
    u32 *miscTable;

    miscTable = &D_800D0184[bankIndex >> 0x10]->miscBlockTable[bankIndex & 0xFFFF];
    sp18 = D_800D0184[bankIndex >> 0x10]->miscROMOffset;
    temp_a3 = ((miscTable[1] - miscTable[0]) + 3) & 0xFFFFFC;
    temp_v0 = func_800A8358(temp_a3 | arg1);
    dma_read(miscTable[0] + sp18, temp_v0, temp_a3 & 0xFFFFFC);
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9AA8.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9B48.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9C78.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9D64.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9DE4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9EA4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9EC4.s")


extern void func_800AEEB4(s32 arg0, f32 arg1);
extern void func_800AEE20(s32 arg0, f32 arg1);

// these arrays are double pointers?
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800A9F98.s")


extern void func_800A9F98(s32 arg0, f32 arg1);

void func_800AA018(s32 arg0) {
    func_800A9F98(arg0, 0.0f);
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA038.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA0C4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA154.s")

void func_800AA174(void) {
    omCurrentObj->unk3C->posVec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    omCurrentObj->unk3C->posVec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    omCurrentObj->unk3C->posVec.z = gEntitiesNextPosZArray[omCurrentObj->objId];

    omCurrentObj->unk3C->angleVec.x = gEntitiesAngleXArray[omCurrentObj->objId];
    omCurrentObj->unk3C->angleVec.y = gEntitiesAngleYArray[omCurrentObj->objId];
    omCurrentObj->unk3C->angleVec.z = gEntitiesAngleZArray[omCurrentObj->objId];

    omCurrentObj->unk3C->scaleVec.x = gEntitiesScaleXArray[omCurrentObj->objId];
    omCurrentObj->unk3C->scaleVec.y = gEntitiesScaleYArray[omCurrentObj->objId];
    omCurrentObj->unk3C->scaleVec.z = gEntitiesScaleZArray[omCurrentObj->objId];
}

void func_800AA2A0(void) {
    func_800A9760();
    func_800AA174();
}

void func_800AA2C8(s32 arg0, s32 arg1, s32 arg2) {
    func_800A9864(arg0, arg1, arg2);
    func_800AA174();
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA2F0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA368.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA3F0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA49C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA5C4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA608.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA78C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA7D0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA864.s")

extern u32 ***D_800D00C4;
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA888.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA8E4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA934.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AA96C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AAB3C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AABD4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AACC8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AAF04.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AAF34.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AAFC4.s")

extern f32 D_800D5DF8;
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AB040.s")

void func_800AB0A8(s32 arg0, f32 arg1) {
    // D_800D79D8[(arg0 - 10) >> 1]->unk78 = arg1;
    struct UnkStruct800D79D8 *new_var;
    new_var = D_800D79D8[(arg0 - 10) >> 1];
    new_var->unk78 = arg1;
}
// GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AB0A8.s")

extern f32 D_800D5DFC;
void func_800AB0CC(s32 arg0) {
    // why doesnt just the one-line solution work?
    // D_800D79D8[(arg0 - 10) >> 1]->unk74 = D_800D5DFC;
    int tmp;
    struct UnkStruct800D79D8 *tmp2;
    tmp = (arg0 - 10) >> 1;
    tmp2 = D_800D79D8[tmp];
    tmp2->unk74 = D_800D5DFC;
}
// GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_3/func_800AB0CC.s")

s32 func_800AB0F4(struct GObj *arg0) {
    u32* v1 = gSegment4StartArray[arg0->objId];
    return v1[2];
}

void func_800AB110(s32 arg0) {

}

void func_800AB118(s32 arg0) {

}

extern Gfx* gDisplayListHeads[];

void func_800AB120(struct GObj *arg0) {
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[arg0->objId]);
    func_800141D4();
}

void func_800AB174(struct GObj *arg0) {
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[arg0->objId]);
    gSPSegment(gDisplayListHeads[1]++, 0x04, gSegment4StartArray[arg0->objId]);
    func_80014768();
}

void func_800AB1F0(struct GObj *arg0) {
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[arg0->objId]);
    func_80014B4C(arg0);
}

void func_800AB244(struct GObj *arg0) {
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[arg0->objId]);
    gSPSegment(gDisplayListHeads[1]++, 0x04, gSegment4StartArray[arg0->objId]);
    func_80014FA4();
}

void func_800AB2C0(struct GObj *arg0) {
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[arg0->objId])
    func_800143A4();
}


void func_800AB314(struct GObj *arg0) {
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[arg0->objId]);
    gSPSegment(gDisplayListHeads[1]++, 0x04, gSegment4StartArray[arg0->objId]);
    func_80014AD4(arg0);
}

void func_800AB390(s32 arg0) {

}

void func_800AB398(s32 arg0) {

}

void func_800AB3A0(struct GObj *arg0) {
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[arg0->objId]);
    func_8001585C();
}

void func_800AB3F4(struct GObj *arg0) {
    gSPSegment(gDisplayListHeads[0]++, 0x04, gSegment4StartArray[arg0->objId]);
    gSPSegment(gDisplayListHeads[1]++, 0x04, gSegment4StartArray[arg0->objId]);
    func_80015BCC();
}

void func_800AB470(s32 arg0) {

}

void func_800AB478(s32 arg0) {

}

void func_800AB480(s32 arg0) {

}
