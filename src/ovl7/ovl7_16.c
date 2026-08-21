#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

void eneTurnCommon(s32);
s32 func_8019A7E8_ovl7(f32);
void func_801A3280_ovl7(void);
void func_801BE588_ovl7(GObj *);
void func_800A9760(s32);

struct Sub800E1B50_Unk34 *func_800A8100(s32, s32, s32, void *);
void func_801BDBDC_ovl7(GObj *);
void func_801BE1A8_ovl7(GObj *);

void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801BE79C_ovl7(GObj *);
void func_801BDABC_ovl7(GObj *);

void func_800AA018(s32);
void curObjSleepForever(void);
void func_801BD88C_ovl7(GObj *);
void func_801BF1F4_ovl7(GObj *);

void func_801A0880_ovl7(void);
void func_801BE490_ovl7();

extern FUNCLIST D_801CD8B0_ovl7;
extern FUNCLIST D_801CD8B8_ovl7;
extern FUNCLIST D_801CD8C0_ovl7;
extern FUNCLIST D_801CD8DC_ovl7;
void func_800B67A8(GObj *);
void func_800B6684(GObj *);
void func_800B6474(GObj *);

void func_801BEF18_ovl7(void);
/* D_801CE5D4_ovl7 = 0.666f : now emitted by this TU */
/* D_801CE5D8_ovl7 = 0.666f : now emitted by this TU */
void func_8019B424_ovl7(s32);
f32 func_8019DA50_ovl7(f32);
extern u8 D_800D6E30[];
extern s32 D_800BE508;
s32 change_kirby_hp(f32);
void change_kirby_stars(s32);
void change_kirby_lives(s32);
void func_800A22D4(s32);
void play_sound(s32);
void func_80121F14(s32);
void func_8019B7D8_ovl7(void *);
void func_8019BB58_ovl7(void);
void func_800A2300(void *);
void func_800B19F4(s32, s32);
void ohSleep(s32);
void func_8019D958_ovl7(u16);
void func_800AFA14(void);
void func_801A3E80_ovl7(void);
void func_800AFBB4(s32, struct GObj *);
s32 func_80104C24(Vector *, Vector *);
u32 func_800B9DF8(s32);
void func_801BDEB0_ovl7(GObj *);
extern FUNCLIST D_801CD8C0_ovl7;

void func_800B67A8(GObj *);
void func_800B6684(GObj *);
void func_800B6474(GObj *);

void func_801BD510_ovl7(void *arg0) {
    struct UnkStruct800E1B50 *temp_t8;
    struct UnkStruct800E1B50 *sp1C;
    struct SubSub800E1B50_Unk88_UnkC *temp_a0;
    struct SubSub800E1B50_Unk88_UnkC_Unk0_Unk1C *temp_a0_2;
    struct Sub800E1B50_Unk88 *temp_v0;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *temp_v0_2;

    temp_t8 = D_800E1B50[omCurrentObj->objId];
    sp1C = temp_t8;
    temp_v0 = temp_t8->unk88;
    if (temp_v0 != 0) {
        temp_a0 = temp_v0->unkC;
        if (temp_a0 != 0) {
            temp_v0_2 = temp_a0->unk0;
            if (temp_v0_2 != 0) {
                temp_a0_2 = temp_v0_2->unk1C;
                if (temp_a0_2 != 0) {
                    change_kirby_hp(temp_a0_2->unk8);
                }
            }
        }
    }
    if ((D_800E7730[omCurrentObj->objId] != 3) || (D_800E77A0[omCurrentObj->objId] < 0) || (D_800E77A0[omCurrentObj->objId] >= 5)) {
        if ((D_800E7730[omCurrentObj->objId] == 4) && (D_800E77A0[omCurrentObj->objId] == 0x39)) {
block_10:
            play_sound(0xCA);
        }
    } else {
        goto block_10;
    }
    if ((D_800E7730[omCurrentObj->objId] == 3) && (D_800E77A0[omCurrentObj->objId] == 5)) {
        func_80121F14(D_800E7730[omCurrentObj->objId]);
        play_sound(0xCA);
    }
    if ((D_800E7730[omCurrentObj->objId] == 3) && (D_800E77A0[omCurrentObj->objId] == 6)) {
        change_kirby_stars(1);
        play_sound(0xCA);
    }
    if ((D_800E7730[omCurrentObj->objId] == 3) && (D_800E77A0[omCurrentObj->objId] == 7) && (D_800E7880[omCurrentObj->objId] == 3)) {
        change_kirby_stars(10);
        play_sound(0xCA);
        D_800D6E30[D_800BE508]++;
    }
    if ((D_800E7730[omCurrentObj->objId] == 3) && (D_800E77A0[omCurrentObj->objId] == 9)) {
        change_kirby_lives(1);
        play_sound(1);
    }
    func_8019B7D8_ovl7(arg0);
    func_8019BB58_ovl7();
    if (sp1C->unk34 != 0) {
        func_800A22D4((s32) sp1C->unk34);
    }
    func_800A2300(arg0);
    sp1C->unk34 = 0;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B19F4(0x7D, omCurrentObj->objId);
    ohSleep(0xF);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

void func_801BD7C4_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD8B0_ovl7);
}

void func_801BD838_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801BD88C_ovl7;
    func_800AA018(0x105EF);
    curObjSleepForever();
}

void func_801BD88C_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
}

void func_801BD8AC_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801BDABC_ovl7;
    func_800AA018(0x105F2);
    curObjSleepForever();
}

void func_801BD930_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801BDABC_ovl7;
    func_800AA018(0x105F3);
    curObjSleepForever();
}

void func_801BD9B4_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801BDABC_ovl7;
    func_800AA018(0x105F4);
    curObjSleepForever();
}

void func_801BDA38_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801BDABC_ovl7;
    func_800AA018(0x105F5);
    curObjSleepForever();
}

void func_801BDABC_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
}

void func_801BDADC_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD8B8_ovl7);
}

void func_801BDB50_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801BDBDC_ovl7;
    func_800AA018(0x105F0);
    func_800AA018(0x105F1);
    ent->unk34 = func_800A8100(0, 2, 0x34, arg0->data.dobj);
    curObjSleepForever();
}

void func_801BDBDC_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
}

void func_801BDBFC_ovl7(void) {
    Vector v1, v2, v3, v4;
    struct UnkStruct800E1B50 *temp = D_800E1B50[omCurrentObj->objId];

    if ((D_800E8E60[omCurrentObj->objId] != 0) || (D_800E5F90[omCurrentObj->objId] == -1)) {
        temp->unk40 = 1;
        func_801A3E80_ovl7();
    }
    func_800AFBB4(0, omCurrentObj);
    v1.x = v2.x = v3.x = v4.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    v1.y = v2.y = v3.y = v4.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    v1.z = v2.z = v3.z = v4.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    v2.x += 60.0f;
    v3.y += 60.0f;
    v4.z += 60.0f;
    while ((func_80104C24(&v1, &v3) != 0) || (func_80104C24(&v1, &v2) != 0) || (func_80104C24(&v1, &v4) != 0)) {
        ohSleep(1);
    }
    func_800AFBB4(1, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    func_801A3280_ovl7();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801BDEB0_ovl7;
    D_800EA6E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
    func_800AA018(0x105F6);
    func_800AA018(0x105F7);
    curObjSleepForever();
}

void func_801BDEB0_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
    if (((f32) D_800E5F90[omCurrentObj->objId] == D_800EA6E0[omCurrentObj->objId]) && (D_800E83E0[omCurrentObj->objId] == 0xA)) {
        if ((D_800EAA60[omCurrentObj->objId] == 1.0f) && (D_800EA8A0[omCurrentObj->objId] < D_800E6BD0[omCurrentObj->objId])) {
            D_800EAA60[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] * -1.0f;
        } else if ((D_800EAA60[omCurrentObj->objId] == -1.0f) && (D_800E6BD0[omCurrentObj->objId] < D_800EA8A0[omCurrentObj->objId])) {
            D_800EAA60[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] * -1.0f;
        }
        D_800E64D0[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] + D_800EAA60[omCurrentObj->objId];
    } else {
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        D_800E5F90[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
        D_800E6BD0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    }
}

void func_801BE068_ovl7(GObj *arg0) {
    func_801A3280_ovl7();
    D_800E8920[omCurrentObj->objId] = 0;
    if (func_800B9DF8(((s32 *) &D_800E9020[0x70])[omCurrentObj->objId]) != 0) {
        D_800E7880[omCurrentObj->objId] += 3;
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 7, &D_801CD8C0_ovl7);
}

void func_801BE10C_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct DObj *dobj = D_800DFBD0[omCurrentObj->objId][1];

    D_800DF150[omCurrentObj->objId] = func_801BE1A8_ovl7;
    func_800AA018(0x105F9);
    func_800AA018(0x105FA);
    ent->unk34 = func_800A8100(0, 2, 0x33, dobj);
    curObjSleepForever();
}

void func_801BE1A8_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        D_800E7730[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BE79C_ovl7);
    }
}

void func_801BE21C_ovl7(GObj *arg0) {
    Vector v1, v2, v3, v4;

    func_800AFBB4(0, omCurrentObj);
    v1.x = v2.x = v3.x = v4.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    v1.y = v2.y = v3.y = v4.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    v1.z = v2.z = v3.z = v4.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    v2.x += 60.0f;
    v3.y += 60.0f;
    v4.z += 60.0f;
    while ((func_80104C24(&v1, &v3) != 0) || (func_80104C24(&v1, &v2) != 0) || (func_80104C24(&v1, &v4) != 0)) {
        ohSleep(1);
    }
    func_800AFBB4(1, omCurrentObj);
    D_800E7880[omCurrentObj->objId]--;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 7, &D_801CD8C0_ovl7);
}

void func_801BE3D8_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    D_800E7880[omCurrentObj->objId] -= 2;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 7, &D_801CD8C0_ovl7);
}

void func_801BE450_ovl7(void) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    func_801BE490_ovl7();
}

void func_801BE490_ovl7(arg0)
GObj *arg0;
{
    func_801A3280_ovl7();
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9760(0x100D2);
    D_800DF150[omCurrentObj->objId] = func_801BE588_ovl7;
    D_800EA6E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
    func_800AA018(0x10602);
    func_800AA018(0x10603);
    curObjSleepForever();
}

void func_801BE588_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
    if (((f32) D_800E5F90[omCurrentObj->objId] == D_800EA6E0[omCurrentObj->objId]) && (D_800E83E0[omCurrentObj->objId] == 0xA)) {
        if ((D_800EAA60[omCurrentObj->objId] == 1.0f) && (D_800EA8A0[omCurrentObj->objId] < D_800E6BD0[omCurrentObj->objId])) {
            D_800EAA60[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] * -1.0f;
        } else if ((D_800EAA60[omCurrentObj->objId] == -1.0f) && (D_800E6BD0[omCurrentObj->objId] < D_800EA8A0[omCurrentObj->objId])) {
            D_800EAA60[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] * -1.0f;
        }
        D_800E64D0[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] + D_800EAA60[omCurrentObj->objId];
    } else {
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        D_800E5F90[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
        D_800E6BD0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    }
}

void func_801BE740_ovl7(void) {
    D_800DEF90[omCurrentObj->objId] = func_800B6684;
    D_800E7880[omCurrentObj->objId] -= 2;
    func_801BE490_ovl7();
}

#ifdef PORT
/* Crystal-shard / prize collection sequence (ported from m2c).  Award the
 * prize: kind 7 (shard) records the shard id from the annex of
 * D_800E9020 (s32 words at +0x1C0, same idiom as func_801BF1F4 below)
 * into the save (func_800B9CB4 takes 2 args; the "3e-45f" family in the
 * m2c draft are the raw ints 2/5/8), kind 8 pays out by D_800EA520: an
 * ability card, a life or 6 HP -- level-clear variants (unk7880 >= 6) set
 * the exit flag D_8012E828.  A duplicate/paid prize (D_800EA520 != 0)
 * parks the track and sleeps forever with the results byte
 * D_8012E7C5[0xF] = 2.  A NEW shard runs the pickup jingle: recolor
 * effect 0x32, the all-shards fanfare or the single-shard one (with the
 * matching func_801AE7E0_ovl7 spawns), reposition to the model, wait for
 * D_800E98E0 to hit 2, close out, and for clear kinds 6/7/8 advance the
 * level-select state (func_800F6C40, 2 args) and save 2/5/8. */
void func_801BE79C_ovl7(GObj *arg0) {
    void func_801BEE54_ovl7(GObj *);
    void func_800B7138(GObj *);
    void func_800BB468(s32, s32);
    void func_800B3520(void);
    void func_800AF27C(void);
    void func_8019B164_ovl7(void);
    s32 func_801AE7E0_ovl7(s32);
    void func_800F6C40(s32, s32);
    void func_800B9CB4(s32, s32);
    s32 saveCollectedAllShards(void);
    void utilGetTransformSRT(Vector *, struct DObj *);
    extern s32 saveCurrentFileNum;
    extern u8 D_800D6BC0[];
    extern s32 D_800BE500;
    extern u8 D_8012E7C5[];
    extern s16 D_8012E828;
    extern f32 D_800E9020[];
    u32 id = omCurrentObj->objId;
    struct UnkStruct800E1B50 *ent = D_800E1B50[id];
    Vector srt;
    u16 kind;

    D_800DEF90[id] = (void (*)(s32)) func_800B7138;
    D_800DF150[omCurrentObj->objId] = func_801BEE54_ovl7;
    gEntitiesScaleXArray[omCurrentObj->objId] = 1.0f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 1.0f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 1.0f;
    func_8019BB58_ovl7();
    if (ent->unk34 != NULL) {
        func_800A22D4((s32) (uintptr_t) ent->unk34);
    }
    func_800A2300(arg0);
    ent->unk34 = NULL;
    id = omCurrentObj->objId;
    kind = D_800E77A0[id];
    if (kind == 7) {
        func_800B9CB4(saveCurrentFileNum, ((s32 *) &D_800E9020[0x70])[id]);
        D_800D6E30[D_800BE508] += 1;
        play_sound(0xCB);
        func_800BB468(0xC, 0);
    } else if (kind == 8) {
        if ((s32) D_800E7880[id] < 6) {
            switch (D_800EA520[id]) {
            case 0:
                D_800D6BC0[D_800BE500] = 1;
                play_sound(0xCE);
                func_800BB468(0xC, 0);
                break;
            case 1:
                change_kirby_lives(1);
                play_sound(1);
                break;
            case 2:
                change_kirby_hp(6.0f);
                play_sound(0xCA);
                break;
            }
        } else {
            play_sound(0xCB);
            func_800BB468(0xC, 0);
            D_8012E828 = 1;
        }
    }
    id = omCurrentObj->objId;
    if (D_800EA520[id] != 0) {
        func_8019BB58_ovl7();
        if (ent->unk34 != NULL) {
            func_800A22D4((s32) (uintptr_t) ent->unk34);
        }
        func_800A2300(arg0);
        ent->unk34 = NULL;
        D_800DF150[omCurrentObj->objId] = NULL;
        func_800B19F4(0x7D, omCurrentObj->objId);
        ohSleep(0x1E);
        D_8012E7C5[0xF] = 2;
        curObjSleepForever();
        id = omCurrentObj->objId;
    }
    D_800E98E0[id] = 0;
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[0];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[0];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[0];
    func_800A9760(0x100C3);
    func_800A8100(0, 2, 0x32, D_800DFBD0[omCurrentObj->objId][1]);
    if (saveCollectedAllShards() != 0) {
        func_800AA018(0x105EC);
        func_801AE7E0_ovl7(0xB);
        func_801AE7E0_ovl7(0xC);
    } else {
        func_800AA018(0x105EB);
        func_801AE7E0_ovl7(0xA);
    }
    func_800B3520();
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = 1;
    if (ent->unk34 != NULL) {
        func_800A22D4((s32) (uintptr_t) ent->unk34);
    }
    func_800A2300(arg0);
    ent->unk34 = NULL;
    utilGetTransformSRT(&srt, D_800DFBD0[omCurrentObj->objId][1]);
    gEntitiesNextPosYArray[omCurrentObj->objId] = srt.y;
    func_800A9760(0x100C4);
    func_800AA018(0x105EE);
    func_8019B164_ovl7();
    func_800A8100(0, 2, 0x32, D_800DFBD0[omCurrentObj->objId][1]);
    while (D_800E98E0[omCurrentObj->objId] != 2) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 2;
    func_800AA018(0x105ED);
    if (ent->unk34 != NULL) {
        func_800A22D4((s32) (uintptr_t) ent->unk34);
    }
    func_800A2300(arg0);
    ent->unk34 = NULL;
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = 3;
    func_800B3520();
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B19F4(0x7D, omCurrentObj->objId);
    id = omCurrentObj->objId;
    kind = D_800E77A0[id];
    if (kind == 7) {
        ohSleep(0xF);
        id = omCurrentObj->objId;
    } else if (kind == 8) {
        switch (D_800E7880[id]) {
        case 6:
            func_800F6C40(D_800BE508 + 1, 0);
            func_800B9CB4(saveCurrentFileNum, 2);
            id = omCurrentObj->objId;
            break;
        case 7:
            func_800F6C40(D_800BE508 + 1, 0);
            func_800B9CB4(saveCurrentFileNum, 5);
            id = omCurrentObj->objId;
            break;
        case 8:
            func_800F6C40(D_800BE508 + 1, 0);
            func_800B9CB4(saveCurrentFileNum, 8);
            id = omCurrentObj->objId;
            break;
        default:
            D_8012E7C5[0xF] = 2;
            id = omCurrentObj->objId;
            break;
        }
    }
    func_8019D958_ovl7((u16) id);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_16/func_801BE79C_ovl7.s")
#endif

void func_801BEE54_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent;
    s32 state;

    state = D_800E98E0[omCurrentObj->objId];
    ent = D_800E1B50[omCurrentObj->objId];

    if (state == 1) {
        func_801BEF18_ovl7();
        eneTurnCommon(2);
        if (ent->unk3C == 0) {
            if (func_8019A7E8_ovl7(30.0f) != 0) {
                D_800E98E0[omCurrentObj->objId] = 2;
            }
        }
    } else if (state == 2) {
        func_801BEF18_ovl7();
        eneTurnCommon(2);
    }
}

void func_801BEF18_ovl7(void) {
    f32 pad; // load-bearing: pushes the spill slot to 0x18
    f32 temp_f12;
    f32 temp_f0_2;

    func_8019B424_ovl7((s32) D_800DE350[omCurrentObj->objId]);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.5f;
    temp_f12 = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
    if (temp_f12 > 0) {
        D_800E3750[omCurrentObj->objId] = 2.5f;
    } else {
        D_800E3750[omCurrentObj->objId] = -2.5f;
    }
    temp_f0_2 = func_8019DA50_ovl7(temp_f12);
    if (temp_f0_2 < 37.5f) {
        D_800E6850[omCurrentObj->objId] = ABSF(temp_f0_2 * 0.666f);
    } else {
        D_800E6850[omCurrentObj->objId] = 25.0f;
    }
    if (ABSF(temp_f12) < 37.5f) {
        D_800E3C90[omCurrentObj->objId] = ABSF(temp_f12 * 0.666f);
    } else {
        D_800E3C90[omCurrentObj->objId] = 25.0f;
    }
}

void func_801BF12C_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD8DC_ovl7);
}

void func_801BF1A0_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801BF1F4_ovl7;
    func_800AA018(0x10601);
    curObjSleepForever();
}

void func_801BF1F4_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
}

