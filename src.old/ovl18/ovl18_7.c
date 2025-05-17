#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "omCurrentObj.h"
#include "ovl18_1.h"
#include "ovl18_3.h"
#include "ovl18_5.h"

extern f32 D_800D6B14;
s32 func_800AEC70(s32, s32, s32);
void ohSleep(s32);
void func_802266E0_ovl18(s32 arg0, s32 arg1, s32 arg2) {
    f32 temp_f0;
    s32 temp_v0;

    temp_v0 = func_800AEC70(0x2D, 0x1E, 0x4F);
    D_800E98E0[temp_v0] = arg0;
    D_800E9AA0[temp_v0] = arg1 * D_800D6B14;
    if (arg2 != 0) {
        ohSleep(arg2 * D_800D6B14);
    }
}


extern u32 D_8022AD30[];
extern u32 D_800BE4F8;
void func_800B1900(u16);

void func_8022677C_ovl18(s32 arg0) {
    u32 idx;

    if (D_800E98E0[omCurrentObj->objId] != 0) {
        idx = D_800E98E0[omCurrentObj->objId] * 3;

        gEntitiesNextPosXArray[omCurrentObj->objId] = D_8022AD30[idx + 1];
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_8022AD30[idx + 2];
        if (D_800E98E0[omCurrentObj->objId] < 0xC) {
            func_800AF8C0(D_8022AD30[idx + 0], 0xA, 6);
            func_800A5B14(arg0, 0x10, 0x1E, 0x63, 0xFF);
        } else {
            func_800AF8C0(D_8022AD30[idx + 0], 0xA, 4);
        }
        ohSleep(D_800E9AA0[omCurrentObj->objId]);
        func_800B1900((u16) omCurrentObj->objId);
    }
    ohSleep(30.0f * D_800D6B10);
    func_802266E0_ovl18(0xD, 0xB4, 0);
    func_802266E0_ovl18(1, 0xB4, 0xC8);
    func_802266E0_ovl18(0xD, 0xB4, 0);
    func_802266E0_ovl18(2, 0xB4, 0xF0);
    func_802266E0_ovl18(0xD, 0xB4, 0);
    func_802266E0_ovl18(1, 0xB4, 0xC8);
    func_802266E0_ovl18(0x11, 0xB4, 0);
    func_802266E0_ovl18(3, 0xB4, 0xF0);
    func_802266E0_ovl18(4, 0x1A4, 0x1B8);
    func_802266E0_ovl18(5, 0x12C, 0x140);
    func_802266E0_ovl18(6, 0xF0, 0x104);
    func_802266E0_ovl18(0x12, 0xB4, 0);
    func_802266E0_ovl18(7, 0xB4, 0xC8);
    func_802266E0_ovl18(0xD, 0xB4, 0);
    func_802266E0_ovl18(8, 0xB4, 0xC8);
    func_802266E0_ovl18(9, 0x21C, 0x230);
    func_802266E0_ovl18(0xA, 0x1E0, 0x1F4);
    func_802266E0_ovl18(0xB, 0x7F8, 0x780);
    D_800BE4F8 = 2;
    func_800AFA14();
}

extern u32 D_800D6B64;

void func_80226A18_ovl18(s32 arg0) {
    u32 phi_a3;

    gEntitiesNextPosXArray[omCurrentObj->objId] = 56.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 80.0f;
    phi_a3 = 0x5012A;
    if (D_800D6B64 != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 56.0f;
        gEntitiesNextPosYArray[omCurrentObj->objId] = 89.0f;
        phi_a3 = 0x5012C;
    }
    func_800AF8C0(phi_a3, 0xE, 2);
    func_800A5B14(arg0, 0xF1, 0xFC, 0xF3, 0xFF);
    func_800AFA14();
}

extern u32 D_800D6B64;


void func_80226AF4_ovl18(s32 arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = 139.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 97.0f;
    if (D_800D6B64 != 0) {
        func_800B1900(omCurrentObj->objId);
    }
    func_800AF8C0(0x5012B, 0xE, 2);
    func_800A5B14(arg0, 0xFF, 0x7B, 0x7B, 0xFF);
    func_800AFA14();
}

extern u32 D_800D6B64;
void func_80226B9C_ovl18(s32 arg0) {
    u32 phi_a0;

    gEntitiesNextPosYArray[omCurrentObj->objId] = 117.0f;
    if (D_800D6B64 != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 56.0f;
        phi_a0 = 0x50130;
    } else {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 169.0f;
        phi_a0 = 0x5012F;
    }
    func_800AF8C0(phi_a0, 0xE, 2);
    func_800A5B14(arg0, 0x46, 0x46, 0, 0xFF);
    func_800AFA14();
}

void func_80226C64_ovl18(s32 arg0) {
    u32 phi_a0;

    gEntitiesNextPosYArray[omCurrentObj->objId] = 117.0f;
    if (D_800D6B64 != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 177.0f;
        phi_a0 = 0x50135;
    } else {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 55.0f;
        phi_a0 = 0x50134;
    }
    func_800AF8C0(phi_a0, 0xE, 2);
    func_800A5B14(arg0, 0x46, 0x46, 0, 0xFF);
    func_800AFA14();
}

extern u32 D_800E0D50[];
void func_80226D2C_ovl18(s32 arg0) {
    u32 phi_a0;

    gEntitiesNextPosYArray[omCurrentObj->objId] = 117.0f;
    if (D_800D6B64 != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 56.0f;
        phi_a0 = 0x50132;
    } else {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 55.0f;
        phi_a0 = 0x50136;
    }
    func_800AF8C0(phi_a0, 0xE, 2);
    func_800A5B14(arg0, 0xFF, 0xF0, 0, 0xFF);
    func_800A5B3C(arg0, 0xDC, 0x1E, 0x1E, 0xFF);
    while (1) {
        func_800AF920(0);
        if (D_800E98E0[D_800E0D50[omCurrentObj->objId]] == 0) {
            func_800AF920(1);
        }
        ohSleep(1);
    }
}

void func_80226E78_ovl18(s32 arg0) {
    u32 phi_a0;

    gEntitiesNextPosYArray[omCurrentObj->objId] = 117.0f;
    if (D_800D6B64 != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 177.0f;
        phi_a0 = 0x00050137;
    } else {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 169.0f;
        phi_a0 = 0x00050131;
    }
    func_800AF8C0(phi_a0, 0xE, 2);
    func_800A5B14(arg0, 0xFF, 0xF0, 0, 0xFF);
    func_800A5B3C(arg0, 0xDC, 0x1E, 0x1E, 0xFF);
    while (1) {
        func_800AF920(0);
        if (D_800E98E0[D_800E0D50[omCurrentObj->objId]] != 0) {
            func_800AF920(1);
        }
        ohSleep(1);
    }
}

extern u32 D_800D6B74;
extern void (*D_8022AE14[])(u32);
extern u16 D_800D6B30;
extern u32 D_800EC2E0[];
extern u16 gPlayerControllers[];
extern u32 D_800D6B24;

void func_80226FD8_ovl18(u32 arg0) {
    s32 temp_a1 = D_800EC2E0[omCurrentObj->objId];
    u32 temp_v0;

    if (temp_a1 != 0) {
        D_8022AE14[temp_a1](arg0);
    }
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800D6B74 = D_800E98E0[omCurrentObj->objId];
    ohSleep(15.0f * D_800D6B14);
    while (1) {
        temp_v0 = gPlayerControllers[1];
        if (temp_v0 & 0x9000 && D_800D6B24 == 0) {
            play_sound(237);
            func_800A5A14(0, 0xC, 2);
            break;
        } else if (((temp_v0 & 0x200) != 0) && (D_800D6B24 == 0)) {
            play_sound(275);
            D_800E98E0[omCurrentObj->objId] = 0;
            D_800D6B74 = D_800E98E0[omCurrentObj->objId];
        } else if (((temp_v0 & 0x100) != 0) && (D_800D6B24 == 0)) {
            play_sound(275);
            D_800E98E0[omCurrentObj->objId] = 1;
            D_800D6B74 = D_800E98E0[omCurrentObj->objId];
        }
        ohSleep(1);
    }
    func_800AFA14();
}

struct GObj *func_8000BDF0(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4);
void func_80007C00(u32, f32, f32, f32, f32);
s32 func_800AEA64(u32, u32, u32);
s32 func_800AEC70(s32, s32, s32);

void func_802271A8_ovl18(void) {
    s32 temp_s0;
    s32 temp_v0;
    s32 temp_v1;
    s32 phi_s0;

    func_80007C00(&func_8000BDF0(0x19, 0x80000000, 0x63, 3, 0xFF)->unk3C->unk0.z, 10.0f, 10.0f, 310.0f, 230.0f);
    func_800AE048(0x40);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_800A6BC0(0);
    // required to be on the same line
    temp_v0 = func_800AEA64(0x2C, 0, 0x70); D_800EC2E0[temp_v0] = 0;

    D_800E9AA0[temp_v0] = 0;
    for (phi_s0 = 1; phi_s0 < 7; phi_s0++) {
        temp_v1 = func_800AEC70(0x2C, 0, 0x70);
        D_800EC2E0[temp_v1] = phi_s0;
        D_800E0D50[temp_v1] = temp_v0;
        D_800E9AA0[temp_v1] = 0;
    }
    D_800D6B30 = 0;
    func_800A5744(0, 0, 0);
    func_800A5A14(0xFF, -0xC, 0);
    func_800A74D8();
}


extern u16 D_803D6900[];
extern u32 _ovl19SegNoloadEnd[];


extern struct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
}D_8022AE4C;

extern struct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 zb;
    u32 unk10;
}D_8022AE30;
extern u32 D_8012E700;
extern u16 gFrameBuffer[320][240];
extern u16 D_803FC100;
void func_800A41B0(f32);

#ifdef NON_MATCHING
s32 func_80227308_ovl18(s32 arg0) {
    u32 phi_v0;

    D_800D6B64 = arg0;
    func_80002B88_ovl18();
    func_80020998_ovl18(0, 0x7800);
    func_800A41B0(2.0f);
    D_8022AE30.zb = &D_8012E700;
    func_80007BA4(&D_8022AE30);
    D_8022AE4C.unk10 = (u32)&gFrameBuffer - (u32)&_ovl19SegNoloadEnd;
    for (phi_v0 = 0; phi_v0 < 0x12C00; phi_v0++) {
        D_803D6900[phi_v0] = 1;
        // D_803D6900[phi_v0 + 0x1F84] = 1;
    }
    func_80007380(&D_8022AE4C);
    func_800BB3F0();
    return D_800D6B74;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl18/ovl18_7/func_80227308_ovl18.s")
#endif

