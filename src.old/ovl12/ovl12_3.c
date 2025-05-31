#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"
#include "ovl2/ovl2_8.h"

#include "ovl12.h"


void func_801E15D8_ovl12(s32, s32, f32);
void func_801E1590_ovl12(GObj *);
void func_801E1590_ovl12(GObj *);
void func_801E2298_ovl12(GObj *);
void func_801E23A0_ovl12(GObj *);
void func_801E2494_ovl12(GObj *);
void func_801E1DC4_ovl12();
void func_801E21D8_ovl12(GObj *);
void func_801E2298_ovl12(GObj *);
void func_801E23A0_ovl12(GObj *);
void func_801E2494_ovl12(GObj *);
void func_801E1E38_ovl12();
void func_801E22D8_ovl12(GObj *);
void func_801E23F8_ovl12(GObj *);
void func_801E2528_ovl12(GObj *);
void func_801E22F8_ovl12();
void func_801E1D7C_ovl12(GObj *);
void func_801E1D7C_ovl12(GObj *);
void func_801E2530_ovl12();
void func_801E28C8_ovl12(GObj *);


VTABLE D_801E2D00_ovl12 = {
    func_801E23A0_ovl12,
    func_801E2298_ovl12,
    func_801E2494_ovl12 
};

VTABLE D_801E2D0C_ovl12 = {
    func_801E23F8_ovl12,
    func_801E22D8_ovl12,
    func_801E2528_ovl12,
};

// weird switch case
#ifdef NON_MATCHING
void func_801E1890_ovl12(GObj *arg0) {
    struct UnkStruct8004A7C4_3C_10 *sp1C;

    sp1C = ((GObj*)D_800DE350[omCurrentObj->objId])->unk3C->unk10;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800EA520[omCurrentObj->objId] = 1;
    func_800AFBB4(1);
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 1:
            func_800AA018(0x0001056F);
            func_800AA018(0x0001056E);
            D_800DF310[omCurrentObj->objId] = func_801E15D8_ovl12;
            func_800AF27C();
            func_800AA018(0x0001056D);
            break;
        case 2:
            func_800AA018(0x00010577);
            func_800AA018(0x0001056E);
            D_800DF310[omCurrentObj->objId] = func_801E15D8_ovl12;
            func_800AF27C();
            func_800AA018(0x00010575);
            break;
        case 3:
            if (D_800D7098.unk14 == 2) {
                sp1C->unk30.x = 1.5707964f;
            }
            func_800AA018(0x0001057F);
            func_800AA018(0x0001056E);
            D_800DF310[omCurrentObj->objId] = func_801E15D8_ovl12;
            func_800AF27C();
            func_800AA018(0x0001057D);
            break;
    }
    func_800AA018(0x0001056C);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl12/1/ovl12_3/130.s")
#endif

void func_801E1A60_ovl12(GObj *arg0) {
    if (D_800D7098.unk8 == 0) {
        if (D_801E2E20_ovl12.unk0 != 0) {
            func_800A7870(&D_801E2E20_ovl12.unk0, &D_801E2E20_ovl12.unk4);
        }
        gEntityVtableIndexArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E1590_ovl12);
    } else if (D_800E9FE0[D_800E0D50[omCurrentObj->objId]].as_s32 != 0) {
        if ((D_800D7098.unk18 <= 0) && (D_801E2E20_ovl12.unk0 != 0)) {
            func_800A7870(&D_801E2E20_ovl12.unk0, &D_801E2E20_ovl12.unk4);
        }
        gEntityVtableIndexArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E1590_ovl12);
    }
}

// another weird switch case
#ifdef NON_MATCHING
void func_801E1B90_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    if (D_800E7B20[D_800E0D50[omCurrentObj->objId]] == 0.0f) {
        arg0->unk48 = NULL;
    }
    D_800DF310[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 1:
            func_800AA018(0x0001056B);
            break;
        case 2:
            func_800AA018(0x00010573);
            break;
        case 3:
            func_800AA018(0x0001057B);
            break;
    }
    func_800AA864(0x0001056A, 1);
    D_800EA520[omCurrentObj->objId] = 0;
    func_800AFBB4(0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl12/1/ovl12_3/132.s")
#endif

void func_801E1CD4_ovl12(GObj *arg0) {
    if (D_800D7098.unk8 == 1) {
        if ((D_800E9FE0[D_800E0D50[omCurrentObj->objId]].as_s32 == 0)) {
            if (D_800E7B20[D_800E0D50[omCurrentObj->objId]] != 0.0f) {
                gEntityVtableIndexArray[omCurrentObj->objId] = 1;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E1590_ovl12);
            }
        }
    }
}

void func_801E1D7C_ovl12(GObj *arg0) {
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], ARRAYLEN(D_801E2D00_ovl12), D_801E2D00_ovl12);
}

void func_801E1DC4_ovl12(void) {
    s32 track;

    track = func_801AE7E0_ovl7(0x10);
    if (track != 0) {
        gEntitiesNextPosYArray[track] = gEntitiesNextPosYArray[D_800D7098.unk0];
        D_800EA520[track] = D_800EA520[omCurrentObj->objId];
    }
}

void func_801E1E38_ovl12(void) {
    struct UnkStruct8004A7C4_3C_10 *temp_v0 = ((GObj*)D_800DE350[omCurrentObj->objId])->unk3C->unk10;

    switch (D_800EA520[omCurrentObj->objId]) {
        case 1:
            temp_v0->unk30.x += 0.13962634f;
            while (temp_v0->unk30.x >= 6.2831855f) {
                temp_v0->unk30.x -= 6.2831855f;
            }
            while (temp_v0->unk30.x < 0.0f) {
                temp_v0->unk30.x += 6.2831855f;
            }
            break;
        case 2:
            temp_v0->unk30.y += 0.13962634f;
            while (temp_v0->unk30.y >= 6.2831855f) {
                temp_v0->unk30.y -= 6.2831855f;
            }
            while (temp_v0->unk30.y < 0.0f) {
                temp_v0->unk30.y += 6.2831855f;
            }
            break;
        case 3:
            temp_v0->unk30.z += 0.13962634f;
            while (temp_v0->unk30.z >= 6.2831855f) {
                temp_v0->unk30.z -= 6.2831855f;
            }
            while (temp_v0->unk30.z < 0.0f) {
                temp_v0->unk30.z += 6.2831855f;
            }
            break;
    }
}

void func_801E2018_ovl12(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801E21D8_ovl12;
    D_800DEF90[omCurrentObj->objId] = func_801D1BB0_ovl8;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EB320[omCurrentObj->objId] = 0.0f;
    func_8019B9B0_ovl7();
    func_801E1DC4_ovl12();
    ohSleep(0xF);
    D_800E98E0[omCurrentObj->objId] = 1;
    switch (D_800EA520[omCurrentObj->objId]) {
        case 1:
            func_800A9864(0x100AC, 0x23, 0x10);
            func_80198880_ovl7(&D_801D80CC);
            break;
        case 2:
            func_800A9864(0x100AD, 0x23, 0x10);
            func_80198880_ovl7(&D_801D80F0);
            break;
        case 3:
            func_800A9864(0x100AE, 0x23, 0x10);
            func_80198880_ovl7(&D_801D8114);
            break;
    }
    gEntityVtableIndexArray[omCurrentObj->objId] = 0;
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], ARRAYLEN(D_801E2D00_ovl12), D_801E2D00_ovl12);
    func_800AFA14();
}

void func_801E21D8_ovl12(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801E1E38_ovl12();
        call_virtual_function(D_800DDFD0[omCurrentObj->objId], ARRAYLEN(D_801E2D0C_ovl12), D_801E2D0C_ovl12);
        if (D_800D7098.unk18 != -1) {
            func_801A03B4_ovl7();
        } else {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
        }
    }
}

void func_801E2298_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AFA14();
}

void func_801E22D8_ovl12(GObj *arg0) {
    func_801E22F8_ovl12();
}

void func_801E22F8_ovl12(void) {
    D_800EB320[omCurrentObj->objId] -= 0.025f;
    if (D_800EB320[omCurrentObj->objId] < 0.025f) {
        D_800EB320[omCurrentObj->objId] = 0.0f;
        gEntityVtableIndexArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E1D7C_ovl12);
    }
}

void func_801E23A0_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 4.0f;
    func_800AFA14();
}

void func_801E23F8_ovl12(GObj *arg0) {
    if (D_800EA6E0[omCurrentObj->objId] <= gEntitiesNextPosYArray[omCurrentObj->objId]) {
        D_800E3210[omCurrentObj->objId] = 0.0f;
        gEntityVtableIndexArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E1D7C_ovl12);
    }
}

void func_801E2494_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    while (D_800D7098.unk2C == 0) {
        ohSleep(1);
    }
    D_800E3210[omCurrentObj->objId] = 6.0f;
    func_800AFA14();
}

void func_801E2528_ovl12(GObj *arg0) {

}

void func_801E2530_ovl12(void) {
    Vector result;
    Vector nextPosVec2;
    Vector nextPosVec1;

    nextPosVec2.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    nextPosVec2.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    nextPosVec2.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    nextPosVec1.x = gEntitiesNextPosXArray[omCurrentObj->objId] - D_800E2090[D_800E0D50[omCurrentObj->objId]];
    nextPosVec1.y = gEntitiesNextPosYArray[D_800D7098.unk0];
    nextPosVec1.z = gEntitiesNextPosZArray[omCurrentObj->objId] - D_800E2410[D_800E0D50[omCurrentObj->objId]];
    lbvector_Diff(&result, &nextPosVec1, &nextPosVec2);
    lbvector_Normalize(&result);
    D_800E3050[omCurrentObj->objId] = result.x * 6.0f;
    D_800E3210[omCurrentObj->objId] = result.y * 6.0f;
    D_800E33D0[omCurrentObj->objId] = result.z * 6.0f;
    play_sound(0x182);
}

void func_801E26A8_ovl12(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDA90[omCurrentObj->objId] = 0x25;
    D_800DF150[omCurrentObj->objId] = func_801E28C8_ovl12;
    D_800DEF90[omCurrentObj->objId] = func_801D19B8_ovl8;
    tmp->unk98 = &D_801CB4DC;
    gEntitiesNextPosYArray[omCurrentObj->objId] -= 40.0f;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 1:
            func_800A9864(0x100AF, 0x23, 0x10);
            func_800AA018(0x00010584);
            func_800AA864(0x10583, 1);
            func_800AA018(0x00010582);
            func_800AA018(0x00010581);
            break;
        case 2:
            func_800A9864(0x100B0, 0x23, 0x10);
            func_800AA018(0x00010589);
            func_800AA864(0x10588, 1);
            func_800AA018(0x00010587);
            func_800AA018(0x00010586);
            break;
        case 3:
            func_800A9864(0x100B1, 0x23, 0x10);
            func_800AA018(0x0001058E);
            func_800AA864(0x1058D, 1);
            func_800AA018(0x0001058C);
            func_800AA018(0x0001058B);
            break;
    }
    D_800DEF90[omCurrentObj->objId] = func_800B78AC;
    func_801E2530_ovl12();
    func_800AFA14();
}

void func_801E28C8_ovl12(GObj *arg0) {
    func_801A0D74_ovl7(arg0);
    func_801A03B4_ovl7();
}

void func_801E28F0_ovl12(GObj *arg0) {
    struct UnkStruct8004A7C4_3C_10 *temp_v0 = arg0->unk3C->unk10;

    temp_v0->unk30.x += 0.13962634f;
    while (temp_v0->unk30.x >= 6.2831855f) {
        temp_v0->unk30.x -= 6.2831855f;
    }
    while (temp_v0->unk30.x < 0.0f) {
        temp_v0->unk30.x += 6.2831855f;
    }
}

void func_801E297C_ovl12(GObj *arg0) {
    struct UnkStruct8004A7C4_3C_10 *temp_v0 = arg0->unk3C->unk10;

    temp_v0->unk30.y += 0.13962634f;
    while (temp_v0->unk30.y >= 6.2831855f) {
        temp_v0->unk30.y -= 6.2831855f;
    }
    while (temp_v0->unk30.y < 0.0f) {
        temp_v0->unk30.y += 6.2831855f;
    }
}

void func_801E2A08_ovl12(GObj *arg0) {
    struct UnkStruct8004A7C4_3C_10 *temp_v0 = arg0->unk3C->unk10;

    temp_v0->unk30.z += 0.13962634f;
    while (temp_v0->unk30.z >= 6.2831855f) {
        temp_v0->unk30.z -= 6.2831855f;
    }
    while (temp_v0->unk30.z < 0.0f) {
        temp_v0->unk30.z += 6.2831855f;
    }
}

