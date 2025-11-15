#include <ultra64.h>
#include <macros.h>
#include "omCurrentObj.h"
#include "ovl1/ovl1_6.h"
#include "buffers.h"
#include "unk_structs/D_800DE350.h"

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80111F10.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112000.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801121E0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801123AC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112498.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011253C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112600.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801126A4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112768.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801127D8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112828.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801128A4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801129AC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801129C4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801129DC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801129F4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112A0C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112A40.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112B4C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112CD4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112ED4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80112F70.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80113028.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80113300.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801133C8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80113F08.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80114974.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801149C0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80114A14.s")

void func_80114CCC(void) {
    func_80114974();
    func_800FD088();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80114CF4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80114D54.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80114DBC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80114E80.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115070.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011511C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801151BC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115270.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115330.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801153B8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011544C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801154F0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115578.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115618.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011572C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115888.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011591C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115A7C.s")

void func_80115AAC(void) {
    func_80115070();
}

void func_80115ACC(struct GObj *arg0);
GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115ACC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115B64.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115C4C.s")

void func_80115EAC(struct GObj *this);
extern f32 D_80128CF0;
#ifdef NON_MATCHING
void func_80115D38(struct GObj *this) {
    // f32 temp_f0;
    s32 idx = request_track_general(0x1E, 0x1E, 0x3C);

    // idx = request_track_general(0x1E, 0x1E, 0x3C);
    omCurrentObj = D_800DE350[idx];
    omEndProcess(gEntityGObjProcessArray[idx]);
    func_800AF980(0x17);
    func_800A9864(0x20060, 0x1869F, 0x10);
    // temp_f0 = D_80128CF0;
    gEntitiesNextPosXArray[idx] = gEntitiesNextPosXArray[this->objId];
    gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[this->objId] + 220.0f;
    gEntitiesNextPosZArray[idx] = gEntitiesNextPosZArray[this->objId];
    gEntitiesScaleZArray[idx] = D_80128CF0;
    gEntitiesScaleYArray[idx] = D_80128CF0;
    gEntitiesScaleXArray[idx] = D_80128CF0;
    func_800AA018(0x202E5);
    func_800AA018(0x202E6);
    D_800DEF90[omCurrentObj->objId] = &func_80115ACC;
    D_800E98E0[this->objId] = idx;
    omCurrentObj = this;
    func_801153B8(this);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115D38.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115EAC.s")

void func_80115EDC(void) {
    func_80115070();
}

void func_80115EFC(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80115F04.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80116118.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801161D4.s")

void func_80116218(s32 arg0) {
    omEndProcess(0);
}

void func_8011623C(s32 arg0) {
    omEndProcess(0);
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80116260.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801162F4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80116438.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011646C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801164A0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801164D4.s")


#include "ovl1/ovl1_6.h"

extern const f32 D_80128D1C, D_80128D20, D_80128D24,D_80128D28;
s32 random_soft_s32_range(s32);
// loop doesnt pad enough bytes
#ifdef NON_MATCHING
void func_80116508(struct GObj *arg0) {
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f30;

    u32 tmp = arg0->objId;

    D_800EA6E0[tmp] = gEntitiesNextPosYArray[tmp];
    D_800E98E0[tmp] = 0;
    temp_f30 = D_80128D1C;
    for (;;) {
        D_800E3210[omCurrentObj->objId] = (random_soft_s32_range(2) != 0) ? 0.25f : -0.25f;
        while (TRUE) {
            if (D_800E98E0[tmp] == 0) {
                f32 temp_f0 = gEntitiesNextPosYArray[tmp] - D_800EA6E0[tmp];
                if (temp_f0 >= 15.0f) {
                    D_800E3210[omCurrentObj->objId] = -0.25f;
                } else if (temp_f0 <= -10.0f) {
                    D_800E3210[omCurrentObj->objId] = 0.25f;
                }
                ohSleep(1);
            } else {
                break;
            }
        }
        if (D_800E98E0[tmp] == 1) {
            D_800E3590[omCurrentObj->objId] = 0.0f;
            D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
            D_800E3AD0[omCurrentObj->objId] = temp_f30;
            D_800E3210[omCurrentObj->objId] = D_80128D20 * 16.0f;
            D_800E3750[omCurrentObj->objId] = D_80128D24;
            D_800E33D0[omCurrentObj->objId] = 0.0f;
            D_800E3910[omCurrentObj->objId] = 0.0f;
            D_800E3E50[omCurrentObj->objId] = temp_f30;
            ohSleep(0xF);
            D_800E3910[omCurrentObj->objId] = 0.0f;
            temp_f0_2 = D_800E3910[omCurrentObj->objId];
            D_800E3750[omCurrentObj->objId] = temp_f0_2;
            D_800E3590[omCurrentObj->objId] = temp_f0_2;
            D_800E33D0[omCurrentObj->objId] = temp_f0_2;
            D_800E3210[omCurrentObj->objId] = temp_f0_2;
            D_800E3050[omCurrentObj->objId] = temp_f0_2;
            D_800E3E50[omCurrentObj->objId] = temp_f30;
            temp_f2 = D_800E3E50[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = temp_f2;
            D_800E3AD0[omCurrentObj->objId] = temp_f2;
            ohSleep(1);
            D_800E3590[omCurrentObj->objId] = 0.0f;
            D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
            D_800E3AD0[omCurrentObj->objId] = temp_f30;
            D_800E3210[omCurrentObj->objId] = 0.0f;
            D_800E3750[omCurrentObj->objId] = D_80128D28;
            D_800E33D0[omCurrentObj->objId] = 0.0f;
            D_800E3910[omCurrentObj->objId] = 0.0f;
            D_800E3E50[omCurrentObj->objId] = temp_f30;
            ohSleep(0x16);
            D_800E3910[omCurrentObj->objId] = 0.0f;
            temp_f0_3 = D_800E3910[omCurrentObj->objId];
            D_800E3750[omCurrentObj->objId] = temp_f0_3;
            D_800E3590[omCurrentObj->objId] = temp_f0_3;
            D_800E33D0[omCurrentObj->objId] = temp_f0_3;
            D_800E3210[omCurrentObj->objId] = temp_f0_3;
            D_800E3050[omCurrentObj->objId] = temp_f0_3;
            D_800E3E50[omCurrentObj->objId] = temp_f30;
            temp_f2_2 = D_800E3E50[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = temp_f2_2;
            D_800E3AD0[omCurrentObj->objId] = temp_f2_2;
            D_800E98E0[tmp] = 0;
        }
        else if (D_800E98E0[tmp] == 2) {
            D_800E3590[omCurrentObj->objId] = 0.0f;
            D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
            D_800E3AD0[omCurrentObj->objId] = temp_f30;
            D_800E3210[omCurrentObj->objId] = -8.0f;
            D_800E33D0[omCurrentObj->objId] = 0.0f;
            D_800E3910[omCurrentObj->objId] = 0.0f;
            D_800E3E50[omCurrentObj->objId] = temp_f30;
            ohSleep(0xA);
            D_800E3910[omCurrentObj->objId] = 0.0f;
            temp_f0_4 = D_800E3910[omCurrentObj->objId];
            D_800E3750[omCurrentObj->objId] = temp_f0_4;
            D_800E3590[omCurrentObj->objId] = temp_f0_4;
            D_800E33D0[omCurrentObj->objId] = temp_f0_4;
            D_800E3210[omCurrentObj->objId] = temp_f0_4;
            D_800E3050[omCurrentObj->objId] = temp_f0_4;
            D_800E3E50[omCurrentObj->objId] = temp_f30;
            temp_f2_3 = D_800E3E50[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = temp_f2_3;
            D_800E3AD0[omCurrentObj->objId] = temp_f2_3;
            func_800AFA14();
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80116508.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80116B68.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80116B90.s")

void func_80116CA0(void) {
    func_80116B90();
}

void func_80116CC0(void) {
    func_80116B90();
}

void func_80116CE0(void) {
    func_80116B90();
}

void func_80116D00(void) {
    func_80116B90();
}

void func_80116D20(void) {
    func_80116B90();
}

void func_80116D40(void) {
    func_80116B90();
}

void func_80116D60(void) {
    func_80116B90();
}

void func_80116D80(void) {
    func_80116B90();
}

void func_80116DA0(void) {
    func_80115070();
}

void func_80116DC0(void) {
    func_80115070();
}

void func_80116DE0(void) {
    func_80115070();
}

void func_80116E00(void) {
    func_80115070();
}

void func_80116E20(void) {
    func_801153B8();
}

void func_80116E40(void) {
    func_801153B8();
}

void func_80116E60(void) {
    func_801153B8();
}

void func_80116E80(void) {
    func_801153B8();
}

void func_80116EA0(void) {
    func_801153B8();
}

void func_80116EC0(void) {
    func_80115070();
}

void func_80116EE0(void) {
    func_80115070();
}

void func_80116F00(void) {
    func_80115070();
}

void func_80116F20(void) {
    func_80115070();
}

void func_80116F40(void) {
    func_80115070();
}

void func_80116F60(void) {
    func_801153B8();
}

void func_80116F80(struct GObj *arg0);
GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80116F80.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80116FF8.s")

void func_80117078(void) {
    func_80115070();
}

void func_80117098(void) {
    func_801153B8();
}

void func_801170B8(void) {
    func_801153B8();
}

void func_801170D8(void) {
    func_801153B8();
}

void func_801170F8(void) {
    func_801153B8();
}

void func_80117118(void) {
    func_801153B8();
}

void func_80117138(void) {
    func_801153B8();
}

void func_80117158(void) {
    func_801153B8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117178.s")

void func_801171F0(void) {
    func_801153B8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117210.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117328.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801173F4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117570.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011764C.s")

void func_80117698(void) {
    func_8011764C();
}

void func_801176B8(void) {
    func_8011764C();
}

void func_801176D8(void) {
    func_8011764C();
}

void func_801176F8(void) {
    func_8011764C();
}

void func_80117718(void) {
    func_8011764C();
}

void func_80117738(void) {
    func_8011764C();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117758.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117784.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801177B0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801177DC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117808.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117834.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117904.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117AB4.s")

void func_80117D70(s32 arg0) {
    func_80117834();
    func_80117904(arg0);
    func_80117AB4(arg0);
}

void func_80117DA0(s32 arg0) {
    func_80117834();
    ohSleep(0x1E);
    func_80117904(arg0);
    func_80117AB4(arg0);
}

void func_80117DD8(s32 arg0) {
    func_80117834();
    ohSleep(0x3C);
    func_80117904(arg0);
    func_80117AB4(arg0);
}

void func_80117E10(s32 arg0) {
    func_80117834();
    func_80117AB4(arg0);
}

void func_80117E38(s32 arg0) {
    func_80117834();
    func_80117AB4(arg0);
}

void func_80117E60(s32 arg0) {
    func_80117834();
    func_80117AB4(arg0);
}

void func_80117E88(s32 arg0) {
    func_80117834();
    func_80117AB4(arg0);
}

void func_80117EB0(s32 arg0) {
    func_80117834();
    func_80117AB4(arg0);
}

void func_80117ED8(s32 arg0) {
    func_80117834();
    func_80117AB4(arg0);
}

void func_80117F00(s32 arg0) {
    func_80117834();
    func_80117AB4(arg0);
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80117F28.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801180B8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118130.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801181AC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118270.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011829C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801182C8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801182F4.s")

void func_80118320(void) {
    func_801153B8();
}

void func_80118340(void) {
    func_801153B8();
}

void func_80118360(void) {
    func_801153B8();
}

void func_80118380(void) {
    func_801153B8();
}

void func_801183A0(void) {
    func_801153B8();
}

void func_801183C0(void) {
    func_801153B8();
}

void func_801183E0(void) {
    func_801153B8();
}

void func_80118400(void) {
    func_801153B8();
}

extern void func_80112B4C(void);
extern void func_8011E524(void);
extern void func_801129F4(void);
extern void func_80112B4C(void);

void func_80118420(u32 *arg0) {
    func_80112B4C();
    if ((D_800DD8D0[*arg0] * 2) < 0) {
        func_8011E524();
        func_801129F4();
        D_800DEF90[omCurrentObj->objId] = &func_80112B4C;
    }
}

void func_80118498(void) {
    func_80115070();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801184B8.s")

void func_80118578(void) {
    func_801153B8();
}

void func_80118598(void) {
    func_801153B8();
}

void func_801185B8(void) {
    func_801153B8();
}

void func_801185D8(void) {
    func_801153B8();
}

void func_801185F8(void) {
    func_80115070();
}

void func_80118618(void) {
    func_80115070();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118638.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118760.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801187A4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011884C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011890C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118A60.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118B60.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118BC8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118C88.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118CA8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118CC8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118D84.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118E44.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118F70.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80118F9C.s")

void func_80118FC8(void) {
    func_80118C88();
}

void func_80118FE8(void) {
    func_80118CA8();
}

void func_80119008(void) {
    func_80118C88();
}

void func_80119028(void) {
    func_80118CA8();
}

void func_80119048(void) {
    func_80118C88();
}

void func_80119068(void) {
    func_80118CA8();
}

void func_80119088(s32 arg0) {

}

void func_80119090(void) {
    func_80118CC8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801190B0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801190DC.s")

void func_80119108(void) {
    func_80118CC8();
}

void func_80119128(void) {
    func_80118C88();
}

void func_80119148(void) {
    func_80118CC8();
}

void func_80119168(void) {
    func_80118C88();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80119188.s")

void func_80119270(void) {
    func_80118C88();
}

void func_80119290(void) {
    func_80118CA8();
}

void func_801192B0(s32 arg0) {

}

void func_801192B8(s32 arg0) {

}

void func_801192C0(void) {
    func_80115070();
}

void func_801192E0(void) {
    func_80115070();
}

void func_80119300(void) {
    func_80115070();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80119320.s")

void func_801193CC(void) {
    func_801153B8();
}

void func_801193EC(void) {
    func_801153B8();
}

void func_8011940C(void) {
    func_801153B8();
}

void func_8011942C(void) {
    func_801153B8();
}

void func_8011944C(void) {
    func_801153B8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011946C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011948C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801194AC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_801194CC.s")

void func_801194EC(void) {
    func_80118C88();
}

void func_8011950C(void) {
    func_80118CA8();
}

void func_8011952C(void) {
    func_80118C88();
}

void func_8011954C(void) {
    func_80118CA8();
}

void func_8011956C(void) {
    func_80118C88();
}

void func_8011958C(void) {
    func_80118CA8();
}

void func_801195AC(void) {
    func_80118C88();
}

void func_801195CC(void) {
    func_80118CA8();
}

void func_801195EC(void) {
    func_80118C88();
}

void func_8011960C(void) {
    func_80118CA8();
}

void func_8011962C(void) {
    func_80118C88();
}

void func_8011964C(void) {
    func_80118CA8();
}

void func_8011966C(void) {
    func_80118C88();
}

void func_8011968C(void) {
    func_80118CA8();
}

void func_801196AC(void) {
    func_80118C88();
}

void func_801196CC(void) {
    func_80118CA8();
}

void func_801196EC(void) {
    func_80115070();
}

void func_8011970C(void) {
    func_80115070();
}

void func_8011972C(void) {
    func_80115070();
}

void func_8011974C(void) {
    func_80115070();
}

void func_8011976C(void) {
    func_80115070();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011978C.s")

void func_8011982C(void) {
    func_80115070();
}

void func_8011984C(void) {
    func_80115070();
}

void func_8011986C(void) {
    func_80115070();
}

void func_8011988C(void) {
    func_801153B8();
}

void func_801198AC(void) {
    func_801153B8();
}

void func_801198CC(void) {
    func_801153B8();
}

void func_801198EC(void) {
    func_801153B8();
}

void func_8011990C(void) {
    func_801153B8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011992C.s")

void func_801199E0(void) {
    func_8011992C();
}

void func_80119A00(void) {
    func_8011992C();
}

void func_80119A20(void) {
    func_8011992C();
}

void func_80119A40(void) {
    func_8011992C();
}

void func_80119A60(void) {
    func_8011992C();
}

void func_80119A80(void) {
    func_8011992C();
}

void func_80119AA0(void) {
    func_80115070();
}

void func_80119AC0(void) {
    func_80115070();
}

void func_80119AE0(void) {
    func_80115070();
}

void func_80119B00(void) {
    func_80115070();
}

void func_80119B20(void) {
    func_801153B8();
}

void func_80119B40(void) {
    func_801153B8();
}

void func_80119B60(void) {
    func_801153B8();
}

void func_80119B80(void) {
    func_80115070();
}

void func_80119BA0(void) {
    func_80115070();
}

void func_80119BC0(void) {
    func_80115070();
}

void func_80119BE0(void) {
    func_80115070();
}

void func_80119C00(void) {
    func_80115070();
}

void func_80119C20(void) {
    func_80115070();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80119C40.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80119C6C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80119C98.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80119CC4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80119CF0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80119D1C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80119D48.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_80119D74.s")

void func_80119DA0(void) {
    func_8011544C();
}

void func_80119DC0(void) {
    func_8011544C();
}

void func_80119DE0(void) {
    func_8011544C();
}

void func_80119E00(void) {
    func_8011544C();
}

void func_80119E20(void) {
    func_8011544C();
}

void func_80119E40(void) {
    func_8011544C();
}

void func_80119E60(void) {
    func_8011544C();
}

void func_80119E80(void) {
    func_8011544C();
}

void func_80119EA0(void) {
    func_8011544C();
}

void func_80119EC0(void) {
    func_8011544C();
}

void func_80119EE0(void) {
    func_8011544C();
}

void func_80119F00(void) {
    func_8011544C();
}

void func_80119F20(void) {
    func_8011544C();
}

void func_80119F40(void) {
    func_8011544C();
}

void func_80119F60(void) {
    func_8011544C();
}

void func_80119F80(void) {
    func_8011544C();
}

void func_80119FA0(void) {
    func_8011544C();
}

void func_80119FC0(void) {
    func_8011544C();
}

void func_80119FE0(void) {
    func_8011544C();
}

void func_8011A000(void) {
    func_8011544C();
}

void func_8011A020(void) {
    func_8011511C();
}

void func_8011A040(void) {
    func_8011511C();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A060.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A0FC.s")

void func_8011A178(void) {
    func_801153B8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A198.s")

void func_8011A214(void) {
    func_801153B8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A234.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A254.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A274.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A294.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A2F4.s")

void func_8011A3B8(void) {
    func_801153B8();
}

void func_8011A3D8(void) {
    func_801153B8();
}

void func_8011A3F8(void) {
    func_801153B8();
}

void func_8011A418(void) {
    func_801153B8();
}

void func_8011A438(void) {
    func_801153B8();
}

void func_8011A458(void) {
    func_801153B8();
}

void func_8011A478(void) {
    func_801153B8();
}

void func_8011A498(void) {
    func_80115618();
    omEndProcess(0);
}

void func_8011A4C0(void) {
    func_80115618();
    omEndProcess(0);
}

void func_8011A4E8(void) {
    func_80115618();
    omEndProcess(0);
}

void func_8011A510(void) {
    func_80115618();
    omEndProcess(0);
}

void func_8011A538(void) {
    func_80115618();
    omEndProcess(0);
}

void func_8011A560(void) {
    func_80115618();
    omEndProcess(0);
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A588.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A638.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A678.s")

void func_8011A770(s32 arg0) {
    func_80115578();
    func_80118760(arg0);
    func_801187A4();
    omEndProcess(0);
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A7A8.s")

void func_8011A86C(void) {
    func_801153B8();
}

void func_8011A88C(void) {
    func_801153B8();
}

void func_8011A8AC(void) {
    func_801153B8();
}

void func_8011A8CC(void) {
    func_801153B8();
}

void func_8011A8EC(void) {
    func_801153B8();
}

void func_8011A90C(void) {
    func_801153B8();
}

void func_8011A92C(void) {
    func_801153B8();
}

void func_8011A94C(void) {
    func_80115070();
}

void func_8011A96C(void) {
    func_80115070();
}

void func_8011A98C(void) {
    func_80115070();
}

void func_8011A9AC(void) {
    func_80115070();
}

void func_8011A9CC(void) {
    func_80115070();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011A9EC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011AA7C.s")

void func_8011AB7C(void) {
    func_80115070();
}

void func_8011AB9C(void) {
    func_80115070();
}

void func_8011ABBC(void) {
    func_80115070();
}

void func_8011ABDC(void) {
    func_80115070();
}

void func_8011ABFC(void) {
    func_80115070();
}

void func_8011AC1C(void) {
    func_80115070();
}

void func_8011AC3C(void) {
    func_80118C88();
}

void func_8011AC5C(void) {
    func_80118CA8();
}

void func_8011AC7C(void) {
    func_801153B8();
}

void func_8011AC9C(void) {
    func_801153B8();
}

void func_8011ACBC(void) {
    func_801153B8();
}

void func_8011ACDC(void) {
    func_801153B8();
}

void func_8011ACFC(void) {
    func_801153B8();
}

void func_8011AD1C(void) {
    func_801153B8();
}

void func_8011AD3C(void) {
    func_801153B8();
}

void func_8011AD5C(void) {
    func_801153B8();
}

void func_8011AD7C(void) {
    func_801153B8();
}

void func_8011AD9C(void) {
    func_801153B8();
}

void func_8011ADBC(void) {
    func_801153B8();
}

void func_8011ADDC(void) {
    func_801153B8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011ADFC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011AE6C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011AEF0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011AF50.s")

void func_8011AFB0(void) {
    func_801153B8();
}

void func_8011AFD0(void) {
    func_801153B8();
}

void func_8011AFF0(void) {
    func_801153B8();
}

void func_8011B010(void) {
    func_801153B8();
}

void func_8011B030(void) {
    func_801153B8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B050.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B0A4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B188.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B22C.s")

void func_8011B328(void) {
    func_801153B8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B348.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B3B8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B3F4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B464.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B528.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B554.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B580.s")

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B5AC.s")

void func_8011B5D8(void) {
    func_801153B8();
}

void func_8011B5F8(void) {
    func_801153B8();
}

void func_8011B618(void) {
    func_801153B8();
}

void func_8011B638(void) {
    func_801153B8();
}

void func_8011B658(void) {
    func_801153B8();
}

void func_8011B678(void) {
    func_801153B8();
}

void func_8011B698(void) {
    func_801153B8();
}

void func_8011B6B8(void) {
    func_801153B8();
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B6D8.s")

void func_8011B794(s32 arg0) {
    func_80115578();
    func_80118760(arg0);
    func_801187A4();
    omEndProcess(0);
}

GLOBAL_ASM("asm/non_matchings/ovl2_7/func_8011B7CC.s")

void func_8011B838(void) {
    func_801153B8();
}

void func_8011B858(void) {
    func_80118C88();
}

extern f32 gameTicksPerDrawInv;
extern s32 D_800D6E14;
void func_800AECC0(f32);
void func_800AED20(f32);

void func_8011B878(s32 arg0) {
    func_80115578();
    func_80118760(arg0);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    while (D_800D6E14 == 0) {
        ohSleep(1);
    }
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    ohSleep((s32) (30.0f * gameTicksPerDrawInv));
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    omEndProcess(NULL);
}

void func_8011B944(struct GObj *arg0) {
    func_8011B878(arg0);
}

void func_8011B964(void) {
    func_80118C88();
}

void func_8011B984(void) {
    func_80115070();
}

void func_8011B9A4(struct GObj *arg0) {
    func_8011B878(arg0);
}

void func_8011B9C4(void) {
    func_80118C88();
}

void func_8011B9E4(struct GObj *arg0) {
    func_8011B878(arg0);
}
