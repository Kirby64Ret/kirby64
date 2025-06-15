#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include "ovl1/ovl1_6.h"
#include "ovl0/ovl0_2_5.h"
#include "omCurrentObj.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800E1B50.h"

extern struct DynamicBuffer gDynamicBuffer1;
extern u32 D_800BE4EC;
extern Gfx D_80227440[];

extern Gfx *gDisplayListHeads[4];

void func_8001B784_ovl18(Mtx *, f32, f32, f32);


void func_8021DF20_ovl18(struct GObj *arg0) {
    Mtx *temp_a0;
    u32 n;

    if ((D_800DD8D0[arg0->objId] & 0x40) == 0) {
        if ((D_800E7880[arg0->objId] == 0) || !(D_800BE4EC & 1)) {

            gDPPipeSync(gDisplayListHeads[2]++);

            n = gDynamicBuffer1.top;

            temp_a0 = (Mtx *)gDynamicBuffer1.top;

            gDynamicBuffer1.top = n + sizeof(Mtx);

            func_8001B784_ovl18(temp_a0, gEntitiesNextPosXArray[arg0->objId], gEntitiesNextPosYArray[arg0->objId], gEntitiesNextPosZArray[arg0->objId]);

            gSPMatrix(gDisplayListHeads[2]++, temp_a0, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPDisplayList(gDisplayListHeads[2]++, &D_80227440);
            gSPPopMatrix(gDisplayListHeads[2]++, G_MTX_MODELVIEW);
        }
    }
}

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021E050_ovl18.s")

extern u8 D_8022BCD8[][4];

s32 func_8021E4CC_ovl18(s32 arg0) {
    u8 *temp_v0;
    s32 phi_v1;

    temp_v0 = D_8022BCD8[arg0];
    phi_v1 = 0;
    if (temp_v0[0] == 0) {
        phi_v1++;
    }
    if (temp_v0[1] == 0) {
        phi_v1++;
    }
    if (temp_v0[2] == 0) {
        phi_v1++;
    }
    if (temp_v0[3] == 0) {
        phi_v1++;
    }
    return phi_v1;
}

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021E528_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021E6E0_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021E858_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021E978_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021ED10_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021ED3C_ovl18.s")

// checks bytes in the PIF as a tamper check
u8 ovl18_TamperCheck(void) {
    s32 buf[4];

    dma_read(0x00000F10, &buf, 0x10);
    if (buf[0] != 0x04080040) {
        return 0;
    } else if (buf[1] != 0x02081040) {
        return 0;
    } else {
        return 1;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021F35C_ovl18.s")

void func_8021F400_ovl18(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
        case 0:
            func_8021ED3C_ovl18();
            break;
        case 1:
            func_8021E978_ovl18();
            break;
        case 2:
            func_8021ED10_ovl18();
    }
    func_800B1900(omCurrentObj->objId & 0xFFFF);
}

extern f32 D_800D6E58;
void func_8021F4A0_ovl18(void) {
    D_800E7B20[omCurrentObj->objId] = D_800D6E58;
    D_800E7CE0[omCurrentObj->objId] = 0x1E;
    D_800D7098.unk0 = 0;
}

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021F4E8_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021F5CC_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021F658_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021F70C_ovl18.s")




extern u32 D_802297E4[];
#ifdef NON_MATCHING
void func_8021F970_ovl18(void) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];
    s32 sp18;

    sp18 = D_800E77A0[omCurrentObj->objId] - 0x4E;
    play_sound(0x28);
    sp1C->unk3D = D_802297E4[sp18];
    D_800E7CE0[omCurrentObj->objId] = D_802297E4[sp18];
    D_800D70D8.unk0 = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800D70D8.unk4 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800D70D8.unk8 = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800D70D8.unkC = gEntitiesAngleXArray[omCurrentObj->objId];
    D_800D70D8.unk10 = gEntitiesAngleYArray[omCurrentObj->objId];
    D_800D70D8.unk14 = gEntitiesAngleZArray[omCurrentObj->objId];
    D_800D70D8.unk18 = gEntitiesScaleXArray[omCurrentObj->objId];
    D_800D70D8.unk1C = gEntitiesScaleYArray[omCurrentObj->objId];
    D_800D70D8.unk20 = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800D7098.unk0 = 1;
    D_800D7098.unk4 = 0;
    D_800D7098.unk8 = 0;
    D_800D7098.unkC = 0;
    D_800D7098.unk10 = 0;
    D_800D7098.unk14 = 0;
    D_800D7098.unk18 = 0;
    func_800B19F4(6, omCurrentObj->objId, &D_800D70D8);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021F970_ovl18.s")
#endif

void func_8021FB18_ovl18(void) {
    D_800E7CE0[omCurrentObj->objId] = 0;
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_800D70D8.unk0;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800D70D8.unk4;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800D70D8.unk8;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800D70D8.unkC;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800D70D8.unk10;
    gEntitiesAngleZArray[omCurrentObj->objId] = D_800D70D8.unk14;
    gEntitiesScaleXArray[omCurrentObj->objId] = D_800D70D8.unk18;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_800D70D8.unk1C;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_800D70D8.unk20;
    D_800D7098.unk0 = 0;
    func_800B1BF0(0, omCurrentObj->objId);
}

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021FC40_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021FD48_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021FDF4_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021FEBC_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_8021FF80_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_80220038_ovl18.s")

GLOBAL_ASM("asm/non_matchings/ovl18/ovl18/func_80220184_ovl18.s")
