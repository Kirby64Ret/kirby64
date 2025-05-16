#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "sounds.h"

#include "ovl0/ovl0_5.h"

#include "buffers.h"

#include "unk_structs/D_800DE350.h"

#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"

#include "ovl1/ovl1_6.h"

extern void func_800B113C(void);
extern void func_801D0D44_ovl8(void);

extern VTABLE D_801E0B00; // 4 funcs

void func_801DB1E0_ovl11(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    this->unk48 = func_800B113C;
    D_800DEF90[omCurrentObj->objId] = func_801D0D44_ovl8;
    func_800FF0A8(tmp->unk80);
    D_800E0810[omCurrentObj->objId] = 0x18;
    func_8000A888_ovl11(this, this->dl_link, D_800E0810[omCurrentObj->objId]);
    call_virtual_function(D_800E7880[omCurrentObj->objId], 4, &D_801E0B00);
}

void func_801DB2BC_ovl11(struct GObj *this, f32 arg1) {
    struct UnkStruct8004A7C4_3C_80 *tmp;
    struct UnkStruct8004A7C4_3C *tmp_0 = this->unk3C;

    while (tmp_0 != 0) {
        tmp = tmp_0->unk80;
        while (tmp != 0) {
            tmp->unk88 = arg1;
            tmp = tmp->unk0;
        }
        tmp_0 = func_8000BE90(tmp_0);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DB31C_ovl11.s")

extern const char D_801E0BE0[];
extern f32 D_801E0C0C;
extern int func_800F98EC(s32, f32);
extern void func_800B1900(u16);

void func_801DB34C_ovl11(void) {
    f32 temp_f22;
    s32 temp_v0;
    s32 i;

    temp_f22 = D_801E0C0C;

    for (i = 0; i < 3; i++) {
        temp_v0 = request_track_general(0x19, 0x1E, 0x3C);
        if (temp_v0 >= 0x3C || temp_v0 == -1) {
            print_error_stub(&D_801E0BE0);
            func_800B1900(temp_v0);
            return;
        }
        gEntityVtableIndexArray[temp_v0] = gEntityVtableIndexArray[omCurrentObj->objId];
        D_800E76C0[temp_v0] = 0xFF;
        D_800E7730[temp_v0] = 2;
        D_800E77A0[temp_v0] = 0;
        D_800E7880[temp_v0] = 2;
        D_800E5F90[temp_v0] = 0;
        D_800E6BD0[temp_v0] = 0.25f;
        func_800F98EC(temp_v0, i * temp_f22);
        D_800E6150[temp_v0] = D_800E5F90[temp_v0];
        D_800E6D90[temp_v0] = D_800E6BD0[temp_v0];
        // regalloc starts here?
        gEntitiesNextPosXArray[temp_v0] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesPosXArray[temp_v0] = gEntitiesPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[temp_v0] = gEntitiesNextPosYArray[omCurrentObj->objId];
        gEntitiesPosYArray[temp_v0] = gEntitiesPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[temp_v0] = gEntitiesNextPosZArray[omCurrentObj->objId];
        gEntitiesPosZArray[temp_v0] = gEntitiesPosZArray[omCurrentObj->objId];
        D_800E8E60[temp_v0] = 0;
        D_800EA520[temp_v0] = omCurrentObj->objId;
    }
}

extern f32 gEntitiesNextPosXArray[];
extern f32 gEntitiesNextPosZArray[];
extern f32 gEntitiesAngleYArray[];

extern f32 vec3_abs_angle_diff(Vector *arg0, Vector *arg1);

f32 func_801DB5C8_ovl11(void) {
    Vector sp2C;
    Vector sp20;

    sp2C.x = sp2C.y = 0.0f;
    sp2C.z = 2.0f;
    lbvector_Rotate(&sp2C, AXIS_Y, gEntitiesAngleYArray[omCurrentObj->objId]);
    sp20.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = 0.0f;
    sp20.z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    return vec3_abs_angle_diff(&sp2C, &sp20);
}

void func_801DB684_ovl11(f32);
GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DB684_ovl11.s")


extern f32 D_801E0C18; // rodata
void func_801DB7D0_ovl11(void) {
    f32 temp_f0;
    f32 phi_f0;

    temp_f0 = func_801DB5C8_ovl11();
    func_801DB684_ovl11(temp_f0);
    if (D_800E9720[omCurrentObj->objId] == 0) {
        if (D_800E4C50[omCurrentObj->objId] < D_800EA8A0[omCurrentObj->objId]) {
            phi_f0 = ABSF(temp_f0);
            if (phi_f0 <= D_801E0C18) {
                D_800EA520[omCurrentObj->objId] = 2;
                return;
            }
        }
    } else {
        D_800E9720[omCurrentObj->objId]--;
    }
}

extern VTABLE D_801E0B24;
void func_801DB8A0_ovl11(struct GObj *arg0) {
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 5, &D_801E0B24);
}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DB8E8_ovl11.s")

void func_801DBB4C_ovl11(struct GObj *arg0);
extern f32 D_801E0C1C;
extern f32 D_800D70D8;
void func_801DB9E0_ovl11(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = &func_801DBB4C_ovl11;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA360[omCurrentObj->objId] = 3;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    D_800D70D8 = 6.0f;
    D_800EA8A0[omCurrentObj->objId] = D_801E0C1C;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0x1E;
    D_800E7CE0[omCurrentObj->objId] = 0x6C;
    gEntityVtableIndexArray[omCurrentObj->objId] = 0;
    func_801DB34C_ovl11();
    D_800E9560[omCurrentObj->objId] = -1;
    D_800E93A0[omCurrentObj->objId] = D_800E9560[omCurrentObj->objId];
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 5, &D_801E0B24);
}

// #ifdef MIPS_TO_C
extern VTABLE D_801E0B38;
extern void func_800BC1FC(s32);
extern void func_800BC11C(f32);

void func_801DBB4C_ovl11(struct GObj *arg0) {
    if (D_800EC2E0[omCurrentObj->objId].as_s32 > 0) {
        D_800EC2E0[omCurrentObj->objId].as_s32--;
    }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        func_800BC1FC(D_800D70D8);
        D_800EC2E0[omCurrentObj->objId].as_s32 = -1;
    }
    call_virtual_function(D_800DDFD0[omCurrentObj->objId], 5, &D_801E0B38);
    if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        func_801DB7D0_ovl11();
        func_801DB8E8_ovl11();
    }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 < 0) {
        func_800BC11C(D_800D70D8);
    }
    if (D_800D70D8 <= 0.0f) {
        gEntityVtableIndexArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB8A0_ovl11);
    }
}

void func_801DBCCC_ovl11(struct GObj *arg0) {
    if (D_800EA360[omCurrentObj->objId] == 0) {
        D_800EA360[omCurrentObj->objId] = 1;
        D_800EA360[D_800EA520[omCurrentObj->objId]]--;
        D_800D70D8 -= D_800EB320[omCurrentObj->objId];
    }
}

void func_801DBD58_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10400);
    func_800AA864(0x103FF, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

void func_801DBDF8_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityVtableIndexArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801DB8A0_ovl11);
    }
}

void func_801DBE64_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10400);
    func_800AA018(0x103FF);
    func_800AFA14();
}

// stub
void func_801DBEE8_ovl11(struct GObj *arg0) {

}

void func_801DBEF0_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    play_sound(0x174);
    func_800A9EA4(0x103FC);
    func_800A9EA4(0x103FB);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

// stub
void func_801DBF9C_ovl11(struct GObj *arg0) {

}

void func_801DBFA4_ovl11(struct GObj *arg0, s32 arg1, f32 arg2) {
    Vector sp1C;
    s32 temp_v0;

    if (arg1 == 0) {
        if ((s32)arg2 == 1) {
            sp1C.y = 60.0f;
            sp1C.z = 60.0f;
            sp1C.x = 0.0f;
            lbvector_Rotate(&sp1C, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
            temp_v0 = func_801ACD90_ovl11(0x20, 0, &sp1C);
            if (temp_v0 != 0) {
                gEntitiesAngleYArray[temp_v0] = gEntitiesAngleYArray[omCurrentObj->objId];
            }
            play_sound(0x17B);
        }
    }
}

void func_801DC064_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0x3C;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA018(0x103E8);
    func_800AA018(0x103E7);
    D_800DF310[omCurrentObj->objId] = func_801DBFA4_ovl11;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

void func_801DC158_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityVtableIndexArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB8A0_ovl11);
    }
}

extern VTABLE D_801E0B00;
void func_801DC1C4_ovl11(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800BB468(2, 0);
    D_800E7880[omCurrentObj->objId] = 1;
    call_virtual_function(D_800E7880[omCurrentObj->objId], 4, &D_801E0B00);
    func_800AFA14();
}

// stub
void func_801DC250_ovl11(struct GObj *arg0) {

}

extern VTABLE D_801E0B4C;
void func_801DC258_ovl11(struct GObj *arg0) {
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 9, &D_801E0B4C);
}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DC2A0_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DC388_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DC45C_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DC5B0_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DC674_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DC7B8_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DC83C_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DC8F8_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DCA48_ovl11.s")

extern f32 D_800E4C50[];
extern s32 D_800E9E20[];
extern s32 D_800DDFD0[]; 

void func_801DCB04_ovl11(struct GObj *arg0) {
    D_800E4C50[omCurrentObj->objId] = 0.0f;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    ohSleep(0x2D);
    func_800AA018(0x103E6);
    func_800AA864(0x103E5, 1);
    func_800AA018(0x10402);
    func_800AA864(0x10401, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DCBE0_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DCC4C_ovl11.s")

// stub
void func_801DCCD0_ovl11(struct GObj *arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DCCD8_ovl11.s")

// stub
void func_801DCD84_ovl11(struct GObj *arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DCD8C_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DCE04_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DCE48_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DCF70_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DD0B4_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DD160_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DD1CC_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DD270_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DD490_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DD588_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DD730_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DD7D4_ovl11.s")

void func_801DD840_ovl11(struct GObj *arg0, s32 arg1, f32 arg2);
GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DD840_ovl11.s")

void func_801DD900_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 7;
    func_800AA018(0x103EA);
    func_800AA018(0x103E9);
    D_800DF310[omCurrentObj->objId] = func_801DD840_ovl11;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

void func_801DD9C8_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E9720[omCurrentObj->objId] = 0;
        gEntityVtableIndexArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DC258_ovl11);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DDA4C_ovl11.s")

// stub
void func_801DDB9C_ovl11(struct GObj *arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DDBA4_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DDD80_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DDE08_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DDEC0_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DDF08_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE038_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE0F8_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE1EC_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE258_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE33C_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE454_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE548_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE758_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE7BC_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE8D0_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DE9C8_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DEA1C_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DEAE8_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DEB78_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DEC08_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DEE50_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DEED0_ovl11.s")

extern VTABLE D_801E0BC4;

void func_801DEF9C_ovl11(struct GObj *arg0) {
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 3, &D_801E0BC4);
}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DEFE4_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DF0B4_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DF198_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DF204_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DF318_ovl11.s")

void func_801DF384_ovl11(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9720[omCurrentObj->objId] = 0x2D;
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DF3DC_ovl11.s")

void func_801DF4B0_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    play_sound(SOUND__BADO_ICEDASI);
    func_800AA018(0x10556);
    func_800AA864(0x10555, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DF548_ovl11.s")

GLOBAL_ASM("asm/non_matchings/ovl11/ovl11/func_801DF5B8_ovl11.s")
