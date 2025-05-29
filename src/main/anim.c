#include "common.h"

#include "DObj.h"

DObj *func_8000BE90(DObj *dobj) {
    if (dobj->firstChild != NULL) {
        dobj = dobj->firstChild;
    } else if (dobj->next != NULL) {
        dobj = dobj->next;
    } else {
        while (TRUE) {
            if ((u32) dobj->parent == 1) {
                dobj = NULL;
                break;
            }
            if (dobj->parent->next != NULL) {
                dobj = dobj->parent->next;
                break;
            } else {
                dobj = dobj->parent;
            }
        }
    }
    return dobj;
}

#ifdef MIPS_TO_C
void func_8000BEF4(void *arg0, f32 arg1) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s0;

    var_s0 = arg0->unk3C;
    if (var_s0 != NULL) {
        do {
            var_s0->unk78 = arg1;
            temp_v0 = func_8000BE90(var_s0);
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000BEF4.s")
#endif

#ifdef MIPS_TO_C
void func_8000BF3C(void *arg0, f32 arg1) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s0;
    void *var_v0;

    var_s0 = arg0->unk3C;
    if (var_s0 != NULL) {
        do {
            var_v0 = var_s0->unk80;
            var_s0->unk78 = arg1;
            if (var_v0 != NULL) {
                do {
                    var_v0->unk9C = arg1;
                    var_v0 = var_v0->unk0;
                } while (var_v0 != NULL);
            }
            temp_v0 = func_8000BE90(var_s0);
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000BF3C.s")
#endif

#ifdef MIPS_TO_C
void func_8000BFA0(void *arg0, f32 arg1) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s0;
    void *var_v0;

    var_s0 = arg0->unk3C;
    if (var_s0 != NULL) {
        do {
            var_v0 = var_s0->unk80;
            if (var_v0 != NULL) {
                do {
                    var_v0->unk9C = arg1;
                    var_v0 = var_v0->unk0;
                } while (var_v0 != NULL);
            }
            temp_v0 = func_8000BE90(var_s0);
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000BFA0.s")
#endif

#ifdef MIPS_TO_C

void func_8000C000(void *arg0) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s0;

    var_s0 = arg0->unk3C;
    if (var_s0 != NULL) {
        do {
            func_8000984C(var_s0);
            temp_v0 = func_8000BE90(var_s0);
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000C000.s")
#endif

#ifdef MIPS_TO_C

void func_8000C044(void *arg0) {
    ? *var_s0;
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s1;

    var_s1 = arg0->unk3C;
    if (var_s1 != NULL) {
        do {
            func_8000984C(var_s1);
            var_s0 = var_s1->unk80;
            if (var_s0 != NULL) {
                do {
                    func_80009918(var_s0);
                    var_s0 = *var_s0;
                } while (var_s0 != NULL);
            }
            temp_v0 = func_8000BE90(var_s1);
            var_s1 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000C044.s")
#endif

#ifdef MIPS_TO_C

void func_8000C0AC(void *arg0) {
    ? *var_s0;
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s1;

    var_s1 = arg0->unk3C;
    if (var_s1 != NULL) {
        do {
            var_s0 = var_s1->unk80;
            if (var_s0 != NULL) {
                do {
                    func_80009918(var_s0);
                    var_s0 = *var_s0;
                } while (var_s0 != NULL);
            }
            temp_v0 = func_8000BE90(var_s1);
            var_s1 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000C0AC.s")
#endif

#ifdef MIPS_TO_C
void func_8000C10C(void *arg0, s32 arg1, f32 arg2) {
    void *var_v0;

    var_v0 = arg0->unk6C;
    if (var_v0 != NULL) {
        do {
            var_v0->unk5 = 0;
            var_v0 = var_v0->unk0;
        } while (var_v0 != NULL);
    }
    arg0->unk70 = arg1;
    arg0->unk7C = arg2;
    arg0->unk74 = -1.7014117e38f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000C10C.s")
#endif

#ifdef MIPS_TO_C
void func_8000C144(void *arg0, s32 arg1, f32 arg2) {
    void *var_v0;

    var_v0 = arg0->unk90;
    if (var_v0 != NULL) {
        do {
            var_v0->unk5 = 0;
            var_v0 = var_v0->unk0;
        } while (var_v0 != NULL);
    }
    arg0->unk94 = arg1;
    arg0->unkA0 = arg2;
    arg0->unk98 = -1.7014117e38f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000C144.s")
#endif

#ifdef MIPS_TO_C

void func_8000C17C(void *arg0, s32 *arg1, f32 arg2) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s0;
    s32 *var_s1;
    s32 temp_a1;
    s8 var_s2;

    var_s0 = arg0->unk3C;
    var_s1 = arg1;
    var_s2 = 1;
    arg0->unk40 = arg2;
    if (var_s0 != NULL) {
        do {
            temp_a1 = *var_s1;
            if (temp_a1 != 0) {
                func_8000C10C(var_s0, temp_a1, arg2);
                var_s0->unk55 = var_s2;
                var_s2 = 0;
            } else {
                var_s0->unk74 = -3.4028235e38f;
                var_s0->unk55 = 0;
            }
            var_s1 += 4;
            temp_v0 = func_8000BE90(var_s0);
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000C17C.s")
#endif

#ifdef MIPS_TO_C

void func_8000C218(void *arg0, s32 **arg1, f32 arg2) {
    ? *var_s0;
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s3;
    s32 **var_s2;
    s32 *temp_v0_2;
    s32 *var_s1;
    s32 temp_a1;

    var_s3 = arg0->unk3C;
    var_s2 = arg1;
    arg0->unk40 = arg2;
    if (var_s3 != NULL) {
        do {
            if (var_s2 != NULL) {
                temp_v0_2 = *var_s2;
                if (temp_v0_2 != NULL) {
                    var_s0 = var_s3->unk80;
                    var_s1 = temp_v0_2;
                    if (var_s0 != NULL) {
                        do {
                            temp_a1 = *var_s1;
                            if (temp_a1 != 0) {
                                func_8000C144(var_s0, temp_a1, arg2);
                            }
                            var_s0 = *var_s0;
                            var_s1 += 4;
                        } while (var_s0 != NULL);
                    }
                }
                var_s2 += 4;
            }
            temp_v0 = func_8000BE90(var_s3);
            var_s3 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000C218.s")
#endif

#ifdef MIPS_TO_C

void func_8000C2C8(void *arg0, s32 *arg1, s32 **arg2, f32 arg3) {
    ? *var_s0;
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s2;
    s32 **var_s4;
    s32 *temp_v0_2;
    s32 *var_s1;
    s32 *var_s3;
    s32 temp_a1;
    s32 temp_a1_2;
    s8 var_s5;

    var_s2 = arg0->unk3C;
    var_s3 = arg1;
    var_s4 = arg2;
    var_s5 = 1;
    arg0->unk40 = arg3;
    if (var_s2 != NULL) {
        do {
            if (var_s3 != NULL) {
                temp_a1 = *var_s3;
                if (temp_a1 != 0) {
                    func_8000C10C(var_s2, temp_a1, arg3);
                    var_s2->unk55 = var_s5;
                    var_s5 = 0;
                } else {
                    var_s2->unk74 = -3.4028235e38f;
                    var_s2->unk55 = 0;
                }
                var_s3 += 4;
            }
            if (var_s4 != NULL) {
                temp_v0_2 = *var_s4;
                if (temp_v0_2 != NULL) {
                    var_s0 = var_s2->unk80;
                    var_s1 = temp_v0_2;
                    if (var_s0 != NULL) {
                        do {
                            temp_a1_2 = *var_s1;
                            if (temp_a1_2 != 0) {
                                func_8000C144(var_s0, temp_a1_2, arg3);
                            }
                            var_s0 = *var_s0;
                            var_s1 += 4;
                        } while (var_s0 != NULL);
                    }
                }
                var_s4 += 4;
            }
            temp_v0 = func_8000BE90(var_s2);
            var_s2 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000C2C8.s")
#endif

#ifdef MIPS_TO_C
void func_8000C3D8(struct Animation *anim) {
    struct AObj *sp8C;
    ? sp88;
    s32 sp84;
    struct AObj *sp80;
    ? *var_s0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f20_4;
    f32 var_f16;
    s32 temp_t1;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_s1_5;
    s32 var_s1_6;
    struct AObj **temp_s0;
    struct AObj **temp_s0_2;
    struct AObj **temp_s0_3;
    struct AObj **temp_s0_4;
    struct AObj **temp_s0_5;
    struct AObj **temp_s0_6;
    struct AObj *temp_v0_2;
    struct AObj *temp_v0_3;
    struct AObj *temp_v0_4;
    struct AObj *temp_v0_5;
    struct AObj *temp_v0_6;
    struct AObj *temp_v0_9;
    struct AObj *temp_v1_3;
    struct AObj *temp_v1_4;
    struct AObj *temp_v1_5;
    struct AObj *var_v0;
    struct AObj *var_v0_2;
    struct AObj *var_v0_3;
    struct AObj *var_v1;
    struct AObj *var_v1_2;
    struct AObj *var_v1_3;
    struct AObj *var_v1_4;
    struct AObj *var_v1_5;
    struct AObj *var_v1_6;
    u32 *temp_t2;
    u32 *temp_t8;
    u32 *temp_v1_2;
    u32 temp_f2;
    u32 temp_v0;
    u32 temp_v1_6;
    u32 var_s0_2;
    u32 var_s1_7;
    u32 var_s2;
    u32 var_s2_2;
    u32 var_s2_3;
    u32 var_s2_4;
    u32 var_s2_5;
    u32 var_s2_6;
    u32 var_s2_7;
    u8 temp_v1;
    void (*temp_v0_10)(struct Animation *, u32, u32);
    void (*temp_v0_11)(struct Animation *, u32, u32);
    void (*temp_v0_12)(struct Animation *, u32, u32);
    void (*temp_v0_7)(struct Animation *, u32, u32);
    void (*temp_v0_8)(struct Animation *, u32, u32);

    temp_f0 = anim->scale;
    var_s0 = &sp88;
    if (temp_f0 != -3.4028235e38f) {
        if (temp_f0 == -1.7014117e38f) {
            anim->scale = -anim->unk7C;
            goto block_4;
        }
        temp_f2 = anim->unk78;
        anim->scale = temp_f0 - (bitwise f32) temp_f2;
        anim->unk7C += (bitwise f32) temp_f2;
        anim->unk4->unk40 = anim->unk7C;
        if (!(anim->scale > 0.0f)) {
block_4:
            sp80 = NULL;
            sp84 = 0;
            do {
                var_s0 += 0x10;
                var_s0->unk-C = 0;
                var_s0->unk-8 = 0;
                var_s0->unk-4 = 0;
                var_s0->unk-10 = 0;
            } while (var_s0 != &anim);
            var_v0 = anim->aobj;
            if (var_v0 != NULL) {
                do {
                    temp_v1 = var_v0->unk4;
                    if ((temp_v1 > 0) && (temp_v1 < 0xB)) {
                        (&sp80)[temp_v1].unk-4 = var_v0;
                    }
                    var_v0 = var_v0->next;
                } while (var_v0 != NULL);
            }
loop_12:
            temp_v1_2 = anim->command;
            if (temp_v1_2 == NULL) {
                var_v0_2 = anim->aobj;
                if (var_v0_2 != NULL) {
                    do {
                        if (var_v0_2->unk5 != 0) {
                            var_v0_2->unkC += (bitwise f32) anim->unk78 + anim->scale;
                        }
                        var_v0_2 = var_v0_2->next;
                    } while (var_v0_2 != NULL);
                }
                anim->unk7C = anim->scale;
                anim->unk4->unk40 = anim->scale;
                anim->scale = -1.1342745e38f;
                return;
            }
            var_s0_2 = *temp_v1_2;
            temp_v0 = var_s0_2 >> 0x19;
            switch (temp_v0) {
                case 8:
                case 9:
                    temp_f20 = var_s0_2 & 0x7FFF;
                    anim->command = temp_v1_2 + 4;
                    var_s2 = (var_s0_2 << 7) >> 0x16;
                    var_s1 = 0;
loop_21:
                    if (var_s2 != 0) {
                        if (var_s2 & 1) {
                            temp_s0 = &(&sp80)[var_s1];
                            var_v1 = *temp_s0;
                            if (var_v1 == NULL) {
                                temp_v0_2 = HS64_AObjNew(anim, (var_s1 + 1) & 0xFF);
                                *temp_s0 = temp_v0_2;
                                var_v1 = temp_v0_2;
                            }
                            var_v1->unk10 = var_v1->unk14;
                            (*temp_s0)->unk14 = (bitwise f32) *anim->command;
                            anim->command += 4;
                            temp_v1_3 = *temp_s0;
                            temp_v1_3->unk18 = temp_v1_3->unk1C;
                            (*temp_s0)->unk1C = 0.0f;
                            (*temp_s0)->unk5 = 3;
                            if (temp_f20 != 0.0f) {
                                (*temp_s0)->unk8 = 1.0f / temp_f20;
                            }
                            (*temp_s0)->unkC = -anim->scale - (bitwise f32) anim->unk78;
                        }
                        var_s1 += 1;
                        var_s2 = var_s2 >> 1;
                        if (var_s1 != 0xA) {
                            goto loop_21;
                        }
                    }
                    if (temp_v0 == 8) {
                        anim->scale += temp_f20;
                    }
                default:
block_115:
block_116:
                    if (!(anim->scale <= 0.0f)) {

                    } else {
                        goto loop_12;
                    }
                    break;
                case 3:
                case 4:
                    temp_f20_2 = var_s0_2 & 0x7FFF;
                    anim->command = temp_v1_2 + 4;
                    var_s2_2 = (var_s0_2 << 7) >> 0x16;
                    var_s1_2 = 0;
loop_33:
                    if (var_s2_2 != 0) {
                        if (var_s2_2 & 1) {
                            temp_s0_2 = &(&sp80)[var_s1_2];
                            var_v1_2 = *temp_s0_2;
                            if (var_v1_2 == NULL) {
                                temp_v0_3 = HS64_AObjNew(anim, (var_s1_2 + 1) & 0xFF);
                                *temp_s0_2 = temp_v0_3;
                                var_v1_2 = temp_v0_3;
                            }
                            var_v1_2->unk10 = var_v1_2->unk14;
                            (*temp_s0_2)->unk14 = (bitwise f32) *anim->command;
                            anim->command += 4;
                            (*temp_s0_2)->unk5 = 2;
                            if (temp_f20_2 != 0.0f) {
                                temp_v1_4 = *temp_s0_2;
                                temp_v1_4->unk18 = (temp_v1_4->unk14 - temp_v1_4->unk10) / temp_f20_2;
                            }
                            (*temp_s0_2)->unkC = -anim->scale - (bitwise f32) anim->unk78;
                            (*temp_s0_2)->unk1C = 0.0f;
                        }
                        var_s1_2 += 1;
                        var_s2_2 = var_s2_2 >> 1;
                        if (var_s1_2 != 0xA) {
                            goto loop_33;
                        }
                    }
                    if (temp_v0 == 3) {
                        anim->scale += temp_f20_2;
                    }
                    goto block_115;
                case 5:
                case 6:
                    temp_f20_3 = var_s0_2 & 0x7FFF;
                    anim->command = temp_v1_2 + 4;
                    var_s2_3 = (var_s0_2 << 7) >> 0x16;
                    var_s1_3 = 0;
loop_45:
                    if (var_s2_3 != 0) {
                        if (var_s2_3 & 1) {
                            temp_s0_3 = &(&sp80)[var_s1_3];
                            var_v1_3 = *temp_s0_3;
                            if (var_v1_3 == NULL) {
                                temp_v0_4 = HS64_AObjNew(anim, (var_s1_3 + 1) & 0xFF);
                                *temp_s0_3 = temp_v0_4;
                                var_v1_3 = temp_v0_4;
                            }
                            var_v1_3->unk10 = var_v1_3->unk14;
                            (*temp_s0_3)->unk14 = (bitwise f32) *anim->command;
                            anim->command += 4;
                            temp_v1_5 = *temp_s0_3;
                            temp_v1_5->unk18 = temp_v1_5->unk1C;
                            (*temp_s0_3)->unk1C = (bitwise f32) *anim->command;
                            anim->command += 4;
                            (*temp_s0_3)->unk5 = 3;
                            if (temp_f20_3 != 0.0f) {
                                (*temp_s0_3)->unk8 = 1.0f / temp_f20_3;
                            }
                            (*temp_s0_3)->unkC = -anim->scale - (bitwise f32) anim->unk78;
                        }
                        var_s1_3 += 1;
                        var_s2_3 = var_s2_3 >> 1;
                        if (var_s1_3 != 0xA) {
                            goto loop_45;
                        }
                    }
                    if (temp_v0 == 5) {
                        anim->scale += temp_f20_3;
                    }
                    goto block_115;
                case 7:
                    anim->command = temp_v1_2 + 4;
                    var_s2_4 = (var_s0_2 << 7) >> 0x16;
                    var_s1_4 = 0;
loop_57:
                    if (var_s2_4 != 0) {
                        if (var_s2_4 & 1) {
                            temp_s0_4 = &(&sp80)[var_s1_4];
                            var_v1_4 = *temp_s0_4;
                            if (var_v1_4 == NULL) {
                                temp_v0_5 = HS64_AObjNew(anim, (var_s1_4 + 1) & 0xFF);
                                *temp_s0_4 = temp_v0_5;
                                var_v1_4 = temp_v0_5;
                            }
                            var_v1_4->unk1C = (bitwise f32) *anim->command;
                            anim->command += 4;
                        }
                        var_s1_4 += 1;
                        var_s2_4 = var_s2_4 >> 1;
                        if (var_s1_4 != 0xA) {
                            goto loop_57;
                        }
                    }
                    goto block_115;
                case 2:
                    anim->command = temp_v1_2 + 4;
                    anim->scale += var_s0_2 & 0x7FFF;
                    goto block_115;
                case 10:
                case 11:
                    temp_f20_4 = var_s0_2 & 0x7FFF;
                    anim->command = temp_v1_2 + 4;
                    var_s2_5 = (var_s0_2 << 7) >> 0x16;
                    var_s1_5 = 0;
loop_66:
                    if (var_s2_5 != 0) {
                        if (var_s2_5 & 1) {
                            temp_s0_5 = &(&sp80)[var_s1_5];
                            var_v1_5 = *temp_s0_5;
                            if (var_v1_5 == NULL) {
                                temp_v0_6 = HS64_AObjNew(anim, (var_s1_5 + 1) & 0xFF);
                                *temp_s0_5 = temp_v0_6;
                                var_v1_5 = temp_v0_6;
                            }
                            var_v1_5->unk10 = var_v1_5->unk14;
                            (*temp_s0_5)->unk14 = (bitwise f32) *anim->command;
                            anim->command += 4;
                            (*temp_s0_5)->unk5 = 1;
                            (*temp_s0_5)->unk8 = temp_f20_4;
                            (*temp_s0_5)->unkC = -anim->scale - (bitwise f32) anim->unk78;
                            (*temp_s0_5)->unk1C = 0.0f;
                        }
                        var_s1_5 += 1;
                        var_s2_5 = var_s2_5 >> 1;
                        if (var_s1_5 != 0xA) {
                            goto loop_66;
                        }
                    }
                    if (temp_v0 == 0xA) {
                        anim->scale += temp_f20_4;
                    }
                    goto block_115;
                case 14:
                    temp_t2 = temp_v1_2 + 4;
                    anim->command = temp_t2;
                    temp_f0_2 = -anim->scale;
                    anim->command = *temp_t2;
                    anim->unk7C = temp_f0_2;
                    anim->unk4->unk40 = temp_f0_2;
                    if (anim->unk55 != 0) {
                        temp_v0_7 = anim->unk4->unk48;
                        if (temp_v0_7 != NULL) {
                            temp_v0_7(anim, -2, 0);
                        }
                    }
                    goto block_115;
                case 1:
                    temp_t8 = temp_v1_2 + 4;
                    anim->command = temp_t8;
                    anim->command = *temp_t8;
                    if (anim->unk55 != 0) {
                        temp_v0_8 = anim->unk4->unk48;
                        if (temp_v0_8 != NULL) {
                            temp_v0_8(anim, -2, 0);
                        }
                    }
                    goto block_115;
                case 12:
                    anim->command = temp_v1_2 + 4;
                    var_s2_6 = (var_s0_2 << 7) >> 0x16;
                    var_s1_6 = 0;
loop_84:
                    if (var_s2_6 != 0) {
                        if (var_s2_6 & 1) {
                            temp_s0_6 = &(&sp80)[var_s1_6];
                            var_v1_6 = *temp_s0_6;
                            if (var_v1_6 == NULL) {
                                temp_v0_9 = HS64_AObjNew(anim, (var_s1_6 + 1) & 0xFF);
                                *temp_s0_6 = temp_v0_9;
                                var_v1_6 = temp_v0_9;
                            }
                            var_v1_6->unkC += var_s0_2 & 0x7FFF;
                        }
                        var_s1_6 += 1;
                        var_s2_6 = var_s2_6 >> 1;
                        if (var_s1_6 != 0xA) {
                            goto loop_84;
                        }
                    }
                    goto block_115;
                case 13:
                    anim->command = temp_v1_2 + 4;
                    if (sp8C == NULL) {
                        sp8C = HS64_AObjNew(anim, 4);
                    }
                    sp8C->unk20 = *anim->command;
                    anim->command += 4;
                    goto block_116;
                case 0:
                    var_v0_3 = anim->aobj;
                    if (var_v0_3 != NULL) {
                        do {
                            if (var_v0_3->unk5 != 0) {
                                var_v0_3->unkC += (bitwise f32) anim->unk78 + anim->scale;
                            }
                            var_v0_3 = var_v0_3->next;
                        } while (var_v0_3 != NULL);
                    }
                    anim->unk7C = anim->scale;
                    anim->unk4->unk40 = anim->scale;
                    anim->scale = -1.1342745e38f;
                    if (anim->unk55 != 0) {
                        temp_v0_10 = anim->unk4->unk48;
                        if (temp_v0_10 != NULL) {
                            temp_v0_10(anim, -1, 0);
                            return;
                        }
                    }
                    break;
                case 15:
                    anim->unk54 = (var_s0_2 << 7) >> 0x16;
                    temp_t1 = *temp_v1_2 & 0x7FFF;
                    var_f16 = temp_t1;
                    if (temp_t1 < 0) {
                        var_f16 += 4294967296.0f;
                    }
                    anim->command = temp_v1_2 + 4;
                    anim->scale += var_f16;
                    goto block_115;
                case 16:
                    temp_v0_11 = anim->unk4->unk48;
                    if (temp_v0_11 != NULL) {
                        temp_v1_6 = (var_s0_2 << 7) >> 0x16;
                        temp_v0_11(anim, temp_v1_6 >> 8, (bitwise u32) (temp_v1_6 & 0xFF));
                        var_s0_2 = *anim->command;
                    }
                    anim->command += 4;
                    anim->scale += var_s0_2 & 0x7FFF;
                    goto block_115;
                case 17:
                    var_s2_7 = (var_s0_2 << 7) >> 0x16;
                    anim->command = temp_v1_2 + 4;
                    var_s1_7 = 4;
                    anim->scale += var_s0_2 & 0x7FFF;
loop_108:
                    if (var_s2_7 != 0) {
                        if (var_s2_7 & 1) {
                            temp_v0_12 = anim->unk4->unk48;
                            if (temp_v0_12 != NULL) {
                                temp_v0_12(anim, var_s1_7, *anim->command);
                            }
                            anim->command += 4;
                        }
                        var_s1_7 += 1;
                        var_s2_7 = var_s2_7 >> 1;
                        if (var_s1_7 != 0xE) {
                            goto loop_108;
                        }
                    }
                    goto block_115;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000C3D8.s")
#endif

#ifdef MIPS_TO_C
f32 func_8000CE18(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp0;
    f32 temp_f10;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f4;

    temp_f2 = arg1 * arg1;
    temp_f18 = arg0 * arg0;
    temp_f16 = temp_f2 * arg1 * temp_f18;
    temp_f10 = 2.0f * temp_f16 * arg0;
    spC = temp_f10;
    temp_f4 = 3.0f * temp_f2 * temp_f18;
    sp14 = temp_f4;
    sp18 = temp_f2 * arg0;
    sp0 = sp18;
    sp10 = temp_f16 - sp18;
    return (((temp_f10 - temp_f4) + 1.0f) * arg2) + (arg3 * (temp_f4 - temp_f10)) + (arg4 * ((sp10 - sp0) + arg1)) + (arg5 * sp10);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000CE18.s")
#endif

#ifdef MIPS_TO_C
f32 func_8000CECC(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;

    temp_f18 = 6.0f * arg1;
    temp_f16 = 3.0f * arg1 * arg1 * arg0 * arg0;
    temp_f2 = 2.0f * arg1 * arg0;
    return (((temp_f18 * arg1 * arg0 * arg0 * arg0) - (temp_f18 * arg0 * arg0)) * (arg2 - arg3)) + (arg4 * ((temp_f16 - (2.0f * temp_f2)) + 1.0f)) + (arg5 * (temp_f16 - temp_f2));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000CECC.s")
#endif

#ifdef MIPS_TO_C

void func_8000CF84(void *arg0) {
    u8 temp_v0;

    temp_v0 = arg0->unk5;
    switch (temp_v0) {                              /* irregular */
        case 2:
            return;
        case 3:
            func_8000CE18(arg0->unk8, arg0->unkC, arg0->unk10, arg0->unk14, arg0->unk18, arg0->unk1C);
            return;
        case 1:
            if (arg0->unk8 <= arg0->unkC) {

            }
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000CF84.s")
#endif

#ifdef MIPS_TO_C

void func_8000D030(void *arg0) {
    u8 temp_v0;

    temp_v0 = arg0->unk5;
    switch (temp_v0) {                              /* irregular */
        case 2:
            return;
        case 3:
            func_8000CECC(arg0->unk8, arg0->unkC, arg0->unk10, arg0->unk14, arg0->unk18, arg0->unk1C);
            return;
        case 1:
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000D030.s")
#endif

#ifdef MIPS_TO_C
void func_8000D0AC(void *arg0) {
    f32 sp54;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f26;
    u8 temp_t0;
    u8 temp_v0;
    void *var_s0;

    var_f0 = arg0->unk74;
    if (var_f0 != -3.4028235e38f) {
        var_s0 = arg0->unk6C;
        if (var_s0 != NULL) {
            var_f26 = sp54;
            do {
                if (var_s0->unk5 != 0) {
                    if (arg0->unk74 != -1.1342745e38f) {
                        var_s0->unkC = var_s0->unkC + arg0->unk78;
                    }
                    if (!(arg0->unk4->unk44 & 2)) {
                        temp_v0 = var_s0->unk5;
                        switch (temp_v0) {          /* switch 1; irregular */
                            case 2:                 /* switch 1 */
                                var_f26 = var_s0->unk10 + (var_s0->unkC * var_s0->unk18);
                                break;
                            case 3:                 /* switch 1 */
                                temp_f2 = var_s0->unk8;
                                temp_f0 = var_s0->unkC;
                                temp_f16 = temp_f2 * temp_f2;
                                temp_f12 = temp_f0 * temp_f0;
                                temp_f18 = temp_f2 * temp_f12;
                                temp_f14 = temp_f0 * temp_f12 * temp_f16;
                                temp_f24 = temp_f14 - temp_f18;
                                temp_f20 = 2.0f * temp_f14 * temp_f2;
                                temp_f22 = 3.0f * temp_f12 * temp_f16;
                                var_f26 = (var_s0->unk10 * ((temp_f20 - temp_f22) + 1.0f)) + (var_s0->unk14 * (temp_f22 - temp_f20)) + (var_s0->unk18 * ((temp_f24 - temp_f18) + temp_f0)) + (var_s0->unk1C * temp_f24);
                                break;
                            case 1:                 /* switch 1 */
                                if (var_s0->unk8 <= var_s0->unkC) {
                                    var_f26 = var_s0->unk14;
                                } else {
                                    var_f26 = var_s0->unk10;
                                }
                                break;
                        }
                        temp_t0 = var_s0->unk4;
                        switch (temp_t0) {
                            case 1:
                                arg0->unk30 = var_f26;
                                break;
                            case 2:
                                arg0->unk34 = var_f26;
                                break;
                            case 3:
                                arg0->unk38 = var_f26;
                                break;
                            case 4:
                                if (var_f26 < 0.0f) {
                                    var_f26 = 0.0f;
                                } else if (var_f26 > 1.0f) {
                                    var_f26 = 1.0f;
                                }
                                func_8001E300(M2C_ERROR(/* Read from unset register $f12 */), var_s0->unk20, var_f26, arg0);
                                break;
                            case 5:
                                arg0->unk1C = var_f26;
                                break;
                            case 6:
                                arg0->unk20 = var_f26;
                                break;
                            case 7:
                                arg0->unk24 = var_f26;
                                break;
                            case 8:
                                arg0->unk40 = var_f26;
                                break;
                            case 9:
                                arg0->unk44 = var_f26;
                                break;
                            case 10:
                                arg0->unk48 = var_f26;
                                break;
                        }
                    }
                }
                var_s0 = var_s0->unk0;
            } while (var_s0 != NULL);
            sp54 = var_f26;
            var_f0 = arg0->unk74;
        }
        if (var_f0 == -1.1342745e38f) {
            arg0->unk74 = -3.4028235e38f;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000D0AC.s")
#endif

#ifdef MIPS_TO_C

void func_8000D35C(void *arg0) {
    void *sp7C;
    u32 sp58;
    f32 temp_f0;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f20_4;
    f32 temp_f20_5;
    f32 temp_f20_6;
    f32 temp_f2;
    f32 var_f16;
    s32 temp_t5;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_s1_5;
    s32 var_s1_6;
    s32 var_s1_7;
    s32 var_s1_8;
    u32 *temp_t0;
    u32 *temp_t6;
    u32 *temp_t7;
    u32 *temp_v0;
    u32 *temp_v0_10;
    u32 *temp_v0_11;
    u32 *temp_v0_12;
    u32 *temp_v0_13;
    u32 temp_a0;
    u32 temp_s2;
    u32 temp_v1_2;
    u32 var_s2;
    u32 var_s2_2;
    u32 var_s2_3;
    u32 var_s2_4;
    u32 var_s2_5;
    u32 var_s2_6;
    u32 var_s2_7;
    u32 var_s2_8;
    u8 temp_v1;
    void **temp_s0;
    void **temp_s0_2;
    void **temp_s0_3;
    void **temp_s0_4;
    void **temp_s0_5;
    void **temp_s0_6;
    void **temp_s0_7;
    void **temp_s0_8;
    void **temp_s0_9;
    void **var_s0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *var_v0;
    void *var_v0_2;
    void *var_v0_3;
    void *var_v1;
    void *var_v1_2;
    void *var_v1_3;
    void *var_v1_4;
    void *var_v1_5;
    void *var_v1_6;
    void *var_v1_7;
    void *var_v1_8;

    temp_f0 = arg0->unk98;
    var_s0 = &sp90[0];
    if (temp_f0 != -3.4028235e38f) {
        if (temp_f0 == -1.7014117e38f) {
            arg0->unk98 = -arg0->unkA0;
            goto loop_4;
        }
        temp_f2 = arg0->unk9C;
        arg0->unk98 = temp_f0 - temp_f2;
        arg0->unkA0 = arg0->unkA0 + temp_f2;
        if (!(arg0->unk98 > 0.0f)) {
            do {
loop_4:
                var_s0 += 4;
                var_s0->unk-4 = 0;
            } while (var_s0 < &arg0);
            sp7C = NULL;
            temp_s0 = &(&sp7C)[1];
            temp_s0->unk4 = 0;
            temp_s0->unk8 = 0;
            temp_s0->unkC = 0;
            temp_s0->unk0 = NULL;
            var_v0 = arg0->unk90;
            if (var_v0 != NULL) {
                do {
                    temp_v1 = var_v0->unk4;
                    if ((temp_v1 >= 0xD) && (temp_v1 < 0x17)) {
                        (&sp90[0])[temp_v1].unk-34 = var_v0;
                    }
                    if ((var_v0->unk4 >= 0x25) && (var_v0->unk4 < 0x2A)) {
                        (sp + (var_v0->unk4 * 4))->unk-18 = var_v0;
                    }
                    var_v0 = var_v0->unk0;
                } while (var_v0 != NULL);
            }
loop_14:
            temp_v0 = arg0->unk94;
            if (temp_v0 == NULL) {
                var_v0_2 = arg0->unk90;
                if (var_v0_2 != NULL) {
                    do {
                        if (var_v0_2->unk5 != 0) {
                            var_v0_2->unkC = var_v0_2->unkC + (arg0->unk9C + arg0->unk98);
                        }
                        var_v0_2 = var_v0_2->unk0;
                    } while (var_v0_2 != NULL);
                }
                arg0->unkA0 = arg0->unk98;
                arg0->unk98 = -1.1342745e38f;
                return;
            }
            temp_v1_2 = *temp_v0;
            temp_a0 = temp_v1_2 >> 0x19;
            sp58 = temp_a0;
            switch (temp_a0) {
                case 8:
                case 9:
                    temp_f20 = temp_v1_2 & 0x7FFF;
                    arg0->unk94 = temp_v0 + 4;
                    var_s2 = (temp_v1_2 << 7) >> 0x16;
                    var_s1 = 0;
loop_23:
                    if (var_s2 != 0) {
                        if (var_s2 & 1) {
                            temp_s0_2 = &(&sp90[0])[var_s1];
                            var_v1 = *temp_s0_2;
                            if (var_v1 == NULL) {
                                temp_v0_2 = func_800098AC(arg0, (var_s1 + 0xD) & 0xFF);
                                *temp_s0_2 = temp_v0_2;
                                var_v1 = temp_v0_2;
                            }
                            var_v1->unk10 = var_v1->unk14;
                            (*temp_s0_2)->unk14 = *arg0->unk94;
                            arg0->unk94 = arg0->unk94 + 4;
                            temp_v1_3 = *temp_s0_2;
                            temp_v1_3->unk18 = temp_v1_3->unk1C;
                            (*temp_s0_2)->unk1C = 0.0f;
                            (*temp_s0_2)->unk5 = 3;
                            if (temp_f20 != 0.0f) {
                                (*temp_s0_2)->unk8 = 1.0f / temp_f20;
                            }
                            (*temp_s0_2)->unkC = -arg0->unk98 - arg0->unk9C;
                        }
                        var_s1 += 1;
                        var_s2 = var_s2 >> 1;
                        if (var_s1 != 0xA) {
                            goto loop_23;
                        }
                    }
                    if (sp58 == 8) {
                        arg0->unk98 = arg0->unk98 + temp_f20;
                    }
                default:
block_127:
block_128:
                    if (!(arg0->unk98 <= 0.0f)) {

                    } else {
                        goto loop_14;
                    }
                    break;
                case 3:
                case 4:
                    temp_f20_2 = temp_v1_2 & 0x7FFF;
                    arg0->unk94 = temp_v0 + 4;
                    var_s2_2 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_2 = 0;
loop_35:
                    if (var_s2_2 != 0) {
                        if (var_s2_2 & 1) {
                            temp_s0_3 = &(&sp90[0])[var_s1_2];
                            var_v1_2 = *temp_s0_3;
                            if (var_v1_2 == NULL) {
                                temp_v0_3 = func_800098AC(arg0, (var_s1_2 + 0xD) & 0xFF);
                                *temp_s0_3 = temp_v0_3;
                                var_v1_2 = temp_v0_3;
                            }
                            var_v1_2->unk10 = var_v1_2->unk14;
                            (*temp_s0_3)->unk14 = *arg0->unk94;
                            arg0->unk94 = arg0->unk94 + 4;
                            (*temp_s0_3)->unk5 = 2;
                            if (temp_f20_2 != 0.0f) {
                                temp_v1_4 = *temp_s0_3;
                                temp_v1_4->unk18 = ((bitwise f32) temp_v1_4->unk14 - temp_v1_4->unk10) / temp_f20_2;
                            }
                            (*temp_s0_3)->unkC = -arg0->unk98 - arg0->unk9C;
                            (*temp_s0_3)->unk1C = 0.0f;
                        }
                        var_s1_2 += 1;
                        var_s2_2 = var_s2_2 >> 1;
                        if (var_s1_2 != 0xA) {
                            goto loop_35;
                        }
                    }
                    if (sp58 == 3) {
                        arg0->unk98 = arg0->unk98 + temp_f20_2;
                    }
                    goto block_127;
                case 5:
                case 6:
                    temp_f20_3 = temp_v1_2 & 0x7FFF;
                    arg0->unk94 = temp_v0 + 4;
                    var_s2_3 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_3 = 0;
loop_47:
                    if (var_s2_3 != 0) {
                        if (var_s2_3 & 1) {
                            temp_s0_4 = &(&sp90[0])[var_s1_3];
                            var_v1_3 = *temp_s0_4;
                            if (var_v1_3 == NULL) {
                                temp_v0_4 = func_800098AC(arg0, (var_s1_3 + 0xD) & 0xFF);
                                *temp_s0_4 = temp_v0_4;
                                var_v1_3 = temp_v0_4;
                            }
                            var_v1_3->unk10 = var_v1_3->unk14;
                            (*temp_s0_4)->unk14 = *arg0->unk94;
                            arg0->unk94 = arg0->unk94 + 4;
                            temp_v1_5 = *temp_s0_4;
                            temp_v1_5->unk18 = temp_v1_5->unk1C;
                            (*temp_s0_4)->unk1C = *arg0->unk94;
                            arg0->unk94 = arg0->unk94 + 4;
                            (*temp_s0_4)->unk5 = 3;
                            if (temp_f20_3 != 0.0f) {
                                (*temp_s0_4)->unk8 = 1.0f / temp_f20_3;
                            }
                            (*temp_s0_4)->unkC = -arg0->unk98 - arg0->unk9C;
                        }
                        var_s1_3 += 1;
                        var_s2_3 = var_s2_3 >> 1;
                        if (var_s1_3 != 0xA) {
                            goto loop_47;
                        }
                    }
                    if (sp58 == 5) {
                        arg0->unk98 = arg0->unk98 + temp_f20_3;
                    }
                    goto block_127;
                case 7:
                    arg0->unk94 = temp_v0 + 4;
                    var_s2_4 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_4 = 0;
loop_59:
                    if (var_s2_4 != 0) {
                        if (var_s2_4 & 1) {
                            temp_s0_5 = &(&sp90[0])[var_s1_4];
                            var_v1_4 = *temp_s0_5;
                            if (var_v1_4 == NULL) {
                                temp_v0_5 = func_800098AC(arg0, (var_s1_4 + 0xD) & 0xFF);
                                *temp_s0_5 = temp_v0_5;
                                var_v1_4 = temp_v0_5;
                            }
                            var_v1_4->unk1C = *arg0->unk94;
                            arg0->unk94 = arg0->unk94 + 4;
                        }
                        var_s1_4 += 1;
                        var_s2_4 = var_s2_4 >> 1;
                        if (var_s1_4 != 0xA) {
                            goto loop_59;
                        }
                    }
                    goto block_127;
                case 2:
                    arg0->unk94 = temp_v0 + 4;
                    arg0->unk98 = arg0->unk98 + (temp_v1_2 & 0x7FFF);
                    goto block_127;
                case 10:
                case 11:
                    temp_f20_4 = temp_v1_2 & 0x7FFF;
                    arg0->unk94 = temp_v0 + 4;
                    var_s2_5 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_5 = 0;
loop_68:
                    if (var_s2_5 != 0) {
                        if (var_s2_5 & 1) {
                            temp_s0_6 = &(&sp90[0])[var_s1_5];
                            var_v1_5 = *temp_s0_6;
                            if (var_v1_5 == NULL) {
                                temp_v0_6 = func_800098AC(arg0, (var_s1_5 + 0xD) & 0xFF);
                                *temp_s0_6 = temp_v0_6;
                                var_v1_5 = temp_v0_6;
                            }
                            var_v1_5->unk10 = var_v1_5->unk14;
                            (*temp_s0_6)->unk14 = *arg0->unk94;
                            arg0->unk94 = arg0->unk94 + 4;
                            (*temp_s0_6)->unk5 = 1;
                            (*temp_s0_6)->unk8 = temp_f20_4;
                            (*temp_s0_6)->unkC = -arg0->unk98 - arg0->unk9C;
                            (*temp_s0_6)->unk1C = 0.0f;
                        }
                        var_s1_5 += 1;
                        var_s2_5 = var_s2_5 >> 1;
                        if (var_s1_5 != 0xA) {
                            goto loop_68;
                        }
                    }
                    if (sp58 == 0xA) {
                        arg0->unk98 = arg0->unk98 + temp_f20_4;
                    }
                    goto block_127;
                case 14:
                    temp_t7 = temp_v0 + 4;
                    arg0->unk94 = temp_t7;
                    arg0->unkA0 = -arg0->unk98;
                    arg0->unk94 = *temp_t7;
                    goto block_128;
                case 1:
                    temp_t0 = temp_v0 + 4;
                    arg0->unk94 = temp_t0;
                    arg0->unk94 = *temp_t0;
                    goto block_128;
                case 12:
                    arg0->unk94 = temp_v0 + 4;
                    var_s2_6 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_6 = 0;
loop_80:
                    if (var_s2_6 != 0) {
                        if (var_s2_6 & 1) {
                            temp_s0_7 = &(&sp90[0])[var_s1_6];
                            var_v1_6 = *temp_s0_7;
                            if (var_v1_6 == NULL) {
                                temp_v0_7 = func_800098AC(arg0, (var_s1_6 + 0xD) & 0xFF);
                                *temp_s0_7 = temp_v0_7;
                                var_v1_6 = temp_v0_7;
                            }
                            var_v1_6->unkC = var_v1_6->unkC + (temp_v1_2 & 0x7FFF);
                        }
                        var_s1_6 += 1;
                        var_s2_6 = var_s2_6 >> 1;
                        if (var_s1_6 != 0xA) {
                            goto loop_80;
                        }
                    }
                    goto block_127;
                case 0:
                    var_v0_3 = arg0->unk90;
                    if (var_v0_3 != NULL) {
                        do {
                            if (var_v0_3->unk5 != 0) {
                                var_v0_3->unkC = var_v0_3->unkC + (arg0->unk9C + arg0->unk98);
                            }
                            var_v0_3 = var_v0_3->unk0;
                        } while (var_v0_3 != NULL);
                    }
                    arg0->unkA0 = arg0->unk98;
                    arg0->unk98 = -1.1342745e38f;
                    return;
                case 18:
                case 19:
                    temp_f20_5 = temp_v1_2 & 0x7FFF;
                    arg0->unk94 = temp_v0 + 4;
                    var_s2_7 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_7 = 0;
loop_93:
                    if (var_s2_7 != 0) {
                        if (var_s2_7 & 1) {
                            temp_s0_8 = &(&sp7C)[var_s1_7];
                            var_v1_7 = *temp_s0_8;
                            if (var_v1_7 == NULL) {
                                temp_v0_8 = func_800098AC(arg0, (var_s1_7 + 0x25) & 0xFF);
                                *temp_s0_8 = temp_v0_8;
                                var_v1_7 = temp_v0_8;
                            }
                            var_v1_7->unk10 = var_v1_7->unk14;
                            (*temp_s0_8)->unk14 = *arg0->unk94;
                            arg0->unk94 = arg0->unk94 + 4;
                            (*temp_s0_8)->unk5 = 1;
                            (*temp_s0_8)->unk8 = temp_f20_5;
                            (*temp_s0_8)->unkC = -arg0->unk98 - arg0->unk9C;
                        }
                        var_s1_7 += 1;
                        var_s2_7 = var_s2_7 >> 1;
                        if (var_s1_7 != 5) {
                            goto loop_93;
                        }
                    }
                    if (sp58 == 0x12) {
                        arg0->unk98 = arg0->unk98 + temp_f20_5;
                    }
                    goto block_127;
                case 20:
                case 21:
                    temp_f20_6 = temp_v1_2 & 0x7FFF;
                    arg0->unk94 = temp_v0 + 4;
                    var_s2_8 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_8 = 0;
loop_103:
                    if (var_s2_8 != 0) {
                        if (var_s2_8 & 1) {
                            temp_s0_9 = &(&sp7C)[var_s1_8];
                            var_v1_8 = *temp_s0_9;
                            if (var_v1_8 == NULL) {
                                temp_v0_9 = func_800098AC(arg0, (var_s1_8 + 0x25) & 0xFF);
                                *temp_s0_9 = temp_v0_9;
                                var_v1_8 = temp_v0_9;
                            }
                            var_v1_8->unk10 = var_v1_8->unk14;
                            (*temp_s0_9)->unk14 = *arg0->unk94;
                            arg0->unk94 = arg0->unk94 + 4;
                            (*temp_s0_9)->unk5 = 2;
                            if (temp_f20_6 != 0.0f) {
                                (*temp_s0_9)->unk8 = 1.0f / temp_f20_6;
                            }
                            (*temp_s0_9)->unkC = -arg0->unk98 - arg0->unk9C;
                        }
                        var_s1_8 += 1;
                        var_s2_8 = var_s2_8 >> 1;
                        if (var_s1_8 != 5) {
                            goto loop_103;
                        }
                    }
                    if (sp58 == 0x14) {
                        arg0->unk98 = arg0->unk98 + temp_f20_6;
                    }
                    goto block_127;
                case 22:
                    temp_t5 = temp_v1_2 & 0x7FFF;
                    var_f16 = temp_t5;
                    if (temp_t5 < 0) {
                        var_f16 += 4294967296.0f;
                    }
                    arg0->unk98 = var_f16;
                    temp_t6 = temp_v0 + 4;
                    arg0->unk94 = temp_t6;
                    temp_s2 = (*temp_v0 << 7) >> 0x16;
                    if (temp_s2 & 1) {
                        arg0->unk94 = temp_t6 + 4;
                        arg0->unk54 = *temp_t6;
                    }
                    if (temp_s2 & 2) {
                        temp_v0_10 = arg0->unk94;
                        arg0->unk94 = temp_v0_10 + 4;
                        arg0->unk74 = *temp_v0_10;
                    }
                    if (temp_s2 & 4) {
                        temp_v0_11 = arg0->unk94;
                        arg0->unk94 = temp_v0_11 + 4;
                        arg0->unk70 = *temp_v0_11;
                    }
                    if (temp_s2 & 8) {
                        temp_v0_12 = arg0->unk94;
                        arg0->unk94 = temp_v0_12 + 4;
                        arg0->unk7C = *temp_v0_12;
                    }
                    if (temp_s2 & 0x10) {
                        temp_v0_13 = arg0->unk94;
                        arg0->unk94 = temp_v0_13 + 4;
                        arg0->unk78 = *temp_v0_13;
                    }
                    goto block_127;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000D35C.s")
#endif

#ifdef MIPS_TO_C
void func_8000DE30(void *arg0) {
    f32 sp64;
    u8 sp47;
    u8 sp46;
    u8 sp45;
    u8 sp44;
    s32 sp38;
    s32 sp34;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f2;
    f32 var_f26;
    s32 *var_a2;
    s32 temp_a2;
    s32 var_v1;
    u8 temp_a1;
    u8 temp_t9;
    void *var_v0;

    if (arg0->unk98 != -3.4028235e38f) {
        var_v0 = arg0->unk90;
        var_f26 = sp64;
        if (var_v0 != NULL) {
            do {
                if (var_v0->unk5 != 0) {
                    if (arg0->unk98 != -1.1342745e38f) {
                        var_v0->unkC = var_v0->unkC + arg0->unk9C;
                    }
                    temp_a1 = var_v0->unk4;
                    if (temp_a1 < 0x24) {
                        switch (var_v0->unk5) {     /* switch 3; irregular */
                            case 2:                 /* switch 3 */
                                var_f26 = var_v0->unk10 + (var_v0->unkC * var_v0->unk18);
                                break;
                            case 3:                 /* switch 3 */
                                temp_f2 = var_v0->unk8;
                                temp_f0 = var_v0->unkC;
                                temp_f16 = temp_f2 * temp_f2;
                                temp_f12 = temp_f0 * temp_f0;
                                temp_f18 = temp_f2 * temp_f12;
                                temp_f14 = temp_f0 * temp_f12 * temp_f16;
                                temp_f24 = temp_f14 - temp_f18;
                                temp_f20 = 2.0f * temp_f14 * temp_f2;
                                temp_f22 = 3.0f * temp_f12 * temp_f16;
                                var_f26 = (var_v0->unk10 * ((temp_f20 - temp_f22) + 1.0f)) + (var_v0->unk14 * (temp_f22 - temp_f20)) + (var_v0->unk18 * ((temp_f24 - temp_f18) + temp_f0)) + (var_v0->unk1C * temp_f24);
                                break;
                            case 1:                 /* switch 3 */
                                if (var_v0->unk8 <= var_v0->unkC) {
                                    var_f26 = var_v0->unk14;
                                } else {
                                    var_f26 = var_v0->unk10;
                                }
                                break;
                        }
                        switch (temp_a1) {          /* switch 1 */
                            case 13:                /* switch 1 */
                                arg0->unk80 = var_f26;
                                break;
                            case 14:                /* switch 1 */
                                arg0->unk1C = var_f26;
                                break;
                            case 15:                /* switch 1 */
                                arg0->unk20 = var_f26;
                                break;
                            case 16:                /* switch 1 */
                                arg0->unk24 = var_f26;
                                break;
                            case 17:                /* switch 1 */
                                arg0->unk28 = var_f26;
                                break;
                            case 18:                /* switch 1 */
                                arg0->unk82 = var_f26;
                                break;
                            case 19:                /* switch 1 */
                                arg0->unk44 = var_f26;
                                break;
                            case 20:                /* switch 1 */
                                arg0->unk48 = var_f26;
                                break;
                            case 21:                /* switch 1 */
                                arg0->unk84 = var_f26;
                                break;
                            case 22:                /* switch 1 */
                                arg0->unk88 = var_f26;
                                break;
                        }
                    } else {
                        if (var_v0->unk5 != 1) {
                            if (var_v0->unk5 == 2) {
                                var_v1 = var_v0->unkC * var_v0->unk8 * 256.0f;
                                if (var_v1 < 0) {
                                    var_v1 = 0;
                                }
                                if (var_v1 >= 0x101) {
                                    var_v1 = 0x100;
                                }
                                sp34 = 0;
                                sp38 = 0;
                                temp_a2 = 0x100 - var_v1;
                                unksp39 = (bitwise u8) var_v0->unk10;
                                unksp3B = var_v0->unk11;
                                unksp35 = (bitwise u8) var_v0->unk14;
                                unksp37 = var_v0->unk15;
                                sp38 = (temp_a2 * sp38) + (sp34 * var_v1);
                                temp_t9 = sp38;
                                sp38 = 0;
                                sp44 = temp_t9;
                                sp45 = unksp3A;
                                unksp39 = var_v0->unk12;
                                unksp3B = var_v0->unk13;
                                unksp35 = var_v0->unk16;
                                unksp37 = var_v0->unk17;
                                sp38 = (temp_a2 * sp38) + (sp34 * var_v1);
                                sp46 = sp38;
                                sp47 = unksp3A;
                            }
                        } else {
                            var_a2 = var_v0 + 0x10;
                            if (var_v0->unk8 <= var_v0->unkC) {
                                var_a2 = var_v0 + 0x14;
                            }
                            sp44 = *var_a2;
                        }
                        switch (var_v0->unk4) {     /* switch 2 */
                            case 37:                /* switch 2 */
                                arg0->unk58 = sp44;
                                break;
                            case 38:                /* switch 2 */
                                arg0->unk60 = sp44;
                                break;
                            case 39:                /* switch 2 */
                                arg0->unk64 = sp44;
                                break;
                            case 40:                /* switch 2 */
                                arg0->unk68 = sp44;
                                break;
                            case 41:                /* switch 2 */
                                arg0->unk6C = sp44;
                                break;
                        }
                    }
                }
                var_v0 = var_v0->unk0;
            } while (var_v0 != NULL);
            sp64 = var_f26;
        }
        if (arg0->unk98 == -1.1342745e38f) {
            arg0->unk98 = -3.4028235e38f;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000DE30.s")
#endif

#ifdef MIPS_TO_C

void func_8000E324(void *arg0) {
    struct Animation *temp_v1;
    struct Animation *var_s1;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 var_s0;

    var_s1 = arg0->unk3C;
    if (var_s1 != NULL) {
        do {
            func_8000C3D8(var_s1);
            func_8000D0AC(var_s1);
            var_s0 = var_s1->unk80;
            if (var_s0 != 0) {
                do {
                    func_8000D35C(var_s0);
                    func_8000DE30(var_s0);
                    var_s0 = *var_s0;
                } while (var_s0 != 0);
            }
            temp_v0 = var_s1->unk10[0];
            if (temp_v0 != 0) {
                var_s1 = temp_v0;
            } else {
                temp_v0_2 = var_s1->unk8;
                if (temp_v0_2 != 0) {
                    var_s1 = temp_v0_2;
                } else {
loop_7:
                    temp_v0_3 = var_s1->unk10[1];
                    if (temp_v0_3 == 1) {
                        var_s1 = NULL;
                    } else {
                        temp_v1 = temp_v0_3->unk8;
                        if (temp_v1 != NULL) {
                            var_s1 = temp_v1;
                        } else {
                            var_s1 = temp_v0_3;
                            goto loop_7;
                        }
                    }
                }
            }
        } while (var_s1 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000E324.s")
#endif

#ifdef MIPS_TO_C
void *func_8000E3F8(void *arg0, s32 arg1) {
    void *var_a0;

    var_a0 = arg0;
    if (var_a0 != NULL) {
loop_2:
        if ((arg1 & 0xFF) == var_a0->unk4) {
            return var_a0;
        }
        var_a0 = var_a0->unk0;
        if (var_a0 == NULL) {
            /* Duplicate return node #5. Try simplifying control flow for better match */
            return NULL;
        }
        goto loop_2;
    }
    return NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000E3F8.s")
#endif

#ifdef MIPS_TO_C
void func_8000E434(void *arg0, f32 arg1) {
    void *var_v0;

    var_v0 = arg0->unk6C;
    arg0->unk74 = arg0->unk78 + arg1;
    if (var_v0 != NULL) {
        do {
            var_v0->unk8 = 1.0f / arg1;
            var_v0 = var_v0->unk0;
        } while (var_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000E434.s")
#endif

#ifdef MIPS_TO_C
void func_8000E474(void *arg0, s32 arg1) {
    switch (arg1) {
        case 1:
            return;
        case 2:
            return;
        case 3:
            return;
        case 5:
            return;
        case 6:
            return;
        case 7:
            return;
        case 8:
            return;
        case 9:
            return;
        case 10:
            /* fallthrough */
        default:
        case 4:
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000E474.s")
#endif

#ifdef MIPS_TO_C
void func_8000E4E4(void *arg0, s32 arg1) {
    switch (arg1) {
        case 1:
            return;
        case 2:
            return;
        case 3:
            return;
        case 5:
            return;
        case 6:
            return;
        case 7:
            return;
        case 8:
            return;
        case 9:
            return;
        case 10:
            /* fallthrough */
        default:
        case 4:
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000E4E4.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000E554(s32 arg0, void *arg1, f32 *arg2, f32 *arg3, s32 arg4, s32 arg5, u8 arg6, s32 arg7, void *arg8, s32 *arg9) {
    void *sp24;
    f32 temp_f0;
    f32 var_f0;
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = func_8000E3F8(arg4, arg6);
    if ((temp_v0 != NULL) && (temp_v0->unk5 != 0)) {
        if ((arg0 == 0) && (arg1->unk74 != -1.1342745e38f)) {
            temp_v0->unkC = temp_v0->unkC + arg1->unk78;
        }
        sp24 = temp_v0;
        *arg2 = func_8000CF84(temp_v0);
        if (arg7 != 0) {
            *arg3 = func_8000D030(sp24);
        }
        goto block_47;
    }
    if ((arg6 == 5) || (arg6 == 6) || (arg6 == 7)) {
        if (*arg9 != 0) {
            switch (arg6) {                         /* switch 1; irregular */
                case 5:                             /* switch 1 */
                    *arg2 = arg8->unk0;
                    break;
                case 6:                             /* switch 1 */
                    *arg2 = arg8->unk4;
                    break;
                case 7:                             /* switch 1 */
                    *arg2 = arg8->unk8;
                    break;
            }
            goto block_47;
        }
        temp_v0_2 = func_8000E3F8(arg4, 4, arg1, arg6);
        if ((temp_v0_2 != NULL) && (temp_v0_2->unk5 != 0)) {
            if ((arg0 == 0) && (arg1->unk74 != -1.1342745e38f)) {
                temp_v0_2->unkC = temp_v0_2->unkC + arg1->unk78;
            }
            sp24 = temp_v0_2;
            temp_f0 = func_8000CF84(temp_v0_2);
            *arg2 = temp_f0;
            if (temp_f0 < 0.0f) {
                *arg2 = 0.0f;
            } else if (*arg2 > 1.0f) {
                *arg2 = 1.0f;
            }
            func_8001E300(M2C_ERROR(/* Read from unset register $f12 */), sp24->unk20, *arg2, M2C_ERROR(/* Read from unset register $a3 */));
            switch (arg6) {                         /* irregular */
                case 5:
                    *arg2 = arg8->unk0;
                    break;
                case 6:
                    *arg2 = arg8->unk4;
                    break;
                case 7:
                    *arg2 = arg8->unk8;
                    break;
            }
            *arg9 = 1;
            goto block_47;
        }
        if (arg0 == 0) {
            if (arg5 == 0) {
                return 1;
            }
            var_f0 = func_8000E4E4(arg5, arg6, arg1, arg6);
            goto block_46;
        }
        var_f0 = func_8000E474(arg1, arg6, arg1, arg6);
        goto block_46;
    }
    if (arg0 == 0) {
        if (arg5 == 0) {
            return 1;
        }
        var_f0 = func_8000E4E4(arg5, arg6, arg1, arg6);
        goto block_46;
    }
    var_f0 = func_8000E474(arg1, arg6, arg1, arg6);
block_46:
    *arg2 = var_f0;
block_47:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000E554.s")
#endif

#ifdef MIPS_TO_C
void func_8000E818(s32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 *arg4, void *arg5) {
    f32 sp3C;
    f32 sp38;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f16_4;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f2_7;
    f32 temp_f2_8;
    f32 temp_f8;

    switch (arg0) {
        case 1:
        case 2:
        case 3:
            sp2C = arg2;
            break;
        case 5:
        case 6:
        case 7:
            sp2C = arg1;
            break;
        case 8:
        case 9:
        case 10:
            sp2C = arg3;
            break;
    }
    if (sp2C != 0.0f) {
        temp_f18 = (2.0f * arg5->unk18) + arg5->unk1C;
        temp_f8 = -6.0f * sp2C;
        sp28 = temp_f8;
        temp_f16 = temp_f8 * (arg5->unk14 - arg5->unk10);
        temp_f10 = temp_f18 * temp_f18;
        sp24 = temp_f10;
        if (temp_f16 < sp24) {
            temp_f12 = sp24 - temp_f16;
            sp38 = temp_f16;
            sp3C = temp_f18;
            sp20 = temp_f12;
            temp_f14 = -temp_f18;
            temp_f2 = (sqrtf(temp_f12) + temp_f14) / sp2C;
            if (*arg4 < temp_f2) {
                *arg4 = temp_f2;
            }
            sp1C = temp_f14;
            sp38 = temp_f16;
            sp3C = temp_f18;
            temp_f2_2 = (temp_f14 - sqrtf(temp_f12)) / sp2C;
            if (*arg4 < temp_f2_2) {
                *arg4 = temp_f2_2;
            }
        } else if ((temp_f10 - temp_f16) == 0.0f) {
            temp_f0 = -temp_f18 / sp2C;
            if (*arg4 < temp_f0) {
                *arg4 = temp_f0;
            }
        }
        temp_f12_2 = sp24 + temp_f16;
        if (temp_f12_2 > 0.0f) {
            temp_f14_2 = -temp_f18;
            sp20 = temp_f12_2;
            sp1C = temp_f14_2;
            temp_f16_2 = -sp2C;
            temp_f2_3 = (sqrtf(temp_f12_2) + temp_f14_2) / temp_f16_2;
            if (*arg4 < temp_f2_3) {
                *arg4 = temp_f2_3;
            }
            sp1C = temp_f14_2;
            sp24 = temp_f16_2;
            temp_f2_4 = (temp_f14_2 - sqrtf(temp_f12_2)) / temp_f16_2;
            if (*arg4 < temp_f2_4) {
                *arg4 = temp_f2_4;
            }
        } else if (temp_f12_2 == 0.0f) {
            temp_f0_2 = -temp_f18 / -sp2C;
            if (*arg4 < temp_f0_2) {
                *arg4 = temp_f0_2;
            }
        }
        temp_f18_2 = -(arg5->unk18 + (2.0f * arg5->unk1C));
        temp_f16_3 = sp28 * (arg5->unk10 - arg5->unk14);
        temp_f10_2 = temp_f18_2 * temp_f18_2;
        sp24 = temp_f10_2;
        if (temp_f16_3 < sp24) {
            temp_f12_3 = sp24 - temp_f16_3;
            sp38 = temp_f16_3;
            sp3C = temp_f18_2;
            sp20 = temp_f12_3;
            temp_f14_3 = -temp_f18_2;
            temp_f2_5 = (sqrtf(temp_f12_3) + temp_f14_3) / sp2C;
            if (*arg4 < temp_f2_5) {
                *arg4 = temp_f2_5;
            }
            sp1C = temp_f14_3;
            sp38 = temp_f16_3;
            sp3C = temp_f18_2;
            temp_f2_6 = (temp_f14_3 - sqrtf(temp_f12_3)) / sp2C;
            if (*arg4 < temp_f2_6) {
                *arg4 = temp_f2_6;
            }
        } else if ((temp_f10_2 - temp_f16_3) == 0.0f) {
            temp_f0_3 = -temp_f18_2 / sp2C;
            if (*arg4 < temp_f0_3) {
                *arg4 = temp_f0_3;
            }
        }
        temp_f12_4 = sp24 + temp_f16_3;
        if (temp_f12_4 > 0.0f) {
            temp_f14_4 = -temp_f18_2;
            temp_f16_4 = -sp2C;
            sp1C = temp_f14_4;
            sp24 = temp_f16_4;
            sp20 = temp_f12_4;
            temp_f2_7 = (sqrtf(temp_f12_4) + temp_f14_4) / temp_f16_4;
            if (*arg4 < temp_f2_7) {
                *arg4 = temp_f2_7;
            }
            sp1C = temp_f14_4;
            sp24 = temp_f16_4;
            temp_f2_8 = (temp_f14_4 - sqrtf(temp_f12_4)) / temp_f16_4;
            if (*arg4 < temp_f2_8) {
                *arg4 = temp_f2_8;
            }
        } else if (temp_f12_4 == 0.0f) {
            temp_f0_4 = -temp_f18_2 / -sp2C;
            if (*arg4 < temp_f0_4) {
                *arg4 = temp_f0_4;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000E818.s")
#endif

#ifdef MIPS_TO_C

f32 func_8000EC98(struct Animation *arg0, u32 **arg1, struct Animation *arg2, s32 arg3, s32 arg4, f32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    struct AObj *spC4;
    struct AObj *spC0;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    s32 sp9C;
    s32 sp98;
    ? sp8C;
    ? sp80;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f14;
    f32 var_f16;
    f32 var_f16_2;
    f32 var_f18;
    s32 var_s0;
    struct AObj *temp_s0;
    struct AObj *temp_v0_2;
    struct AObj *temp_v1;
    u32 *temp_v0;
    u32 temp_f2;

    spC0 = NULL;
    sp9C = 0;
    sp98 = 0;
    spA4 = 0.0f;
    if (((arg1 == NULL) || (*arg1 == NULL)) && (arg3 == 0)) {
        func_8000984C(arg2, arg0);
        return 0.0f;
    }
    spC4 = arg0->aobj;
    arg0->aobj = NULL;
    if (arg1 != NULL) {
        temp_v0 = *arg1;
        if (temp_v0 != NULL) {
            arg0->command = temp_v0;
            arg0->unk7C = (bitwise f32) arg2;
            arg0->scale = -1.7014117e38f;
            func_8000C3D8(arg0);
            spC0 = arg0->aobj;
            arg0->aobj = NULL;
        }
    }
    var_s0 = 1;
    do {
        if (var_s0 != 4) {
            spA8 = 0.0f;
            spAC = 0.0f;
            if ((func_8000E554(0, arg0, &spB0, &spA8, spC0, arg3, var_s0, arg4, &sp80, &sp98) == 0) && ((func_8000E554(1, arg0, &spB4, &spAC, spC4, arg3, var_s0, arg4, &sp8C, &sp9C), (spB0 != spB4)) || (spA8 != spAC))) {
                temp_v0_2 = HS64_AObjNew(arg0, var_s0 & 0xFF);
                temp_v1 = temp_v0_2;
                if ((var_s0 == 1) || (var_s0 == 2) || (var_s0 == 3)) {
                    var_f18 = spB4;
                    temp_f0 = var_f18 + 6.2831855f;
                    if (spB0 < var_f18) {
                        var_f14 = spB0 - var_f18;
                        var_f16 = -var_f14;
                    } else {
                        var_f14 = spB0 - var_f18;
                        var_f16 = var_f14;
                    }
                    if (spB0 < temp_f0) {
                        var_f12 = -(spB0 - temp_f0);
                    } else {
                        var_f12 = spB0 - temp_f0;
                    }
                    if (var_f12 < var_f16) {
                        var_f18 = temp_f0;
                        var_f14 = spB0 - temp_f0;
                    }
                    temp_f0_2 = var_f18 - 6.2831855f;
                    if (spB0 < var_f18) {
                        var_f16_2 = -var_f14;
                    } else {
                        var_f16_2 = var_f14;
                    }
                    spB4 = var_f18;
                    if (spB0 < temp_f0_2) {
                        var_f12_2 = -(spB0 - temp_f0_2);
                    } else {
                        var_f12_2 = spB0 - temp_f0_2;
                    }
                    if (var_f12_2 < var_f16_2) {
                        spB4 = temp_f0_2;
                    }
                }
                switch (arg4) {                     /* irregular */
                    case 0:
                        temp_v0_2->unk10 = spB4;
                        temp_v0_2->unk5 = 2;
                        temp_v0_2->unk14 = spB0;
                        temp_v0_2->unk8 = 1.0f / arg5;
                        temp_v0_2->unk1C = 0.0f;
                        temp_v0_2->unkC = -(bitwise f32) arg0->unk78;
                        temp_v0_2->unk18 = (temp_v0_2->unk14 - temp_v0_2->unk10) / arg5;
                        break;
                    case 1:
                    case 2:
                        temp_v0_2->unk10 = spB4;
                        temp_v0_2->unk5 = 3;
                        temp_v0_2->unk14 = spB0;
                        temp_v0_2->unk8 = 1.0f / arg5;
                        temp_v0_2->unkC = -(bitwise f32) arg0->unk78;
                        temp_v0_2->unk18 = spAC;
                        temp_v0_2->unk1C = spA8;
                        if (arg4 == 2) {
                            func_8000E818(var_s0, arg6, arg7, arg8, &spA4, temp_v1);
                        }
                        break;
                }
            }
        }
        var_s0 += 1;
    } while (var_s0 != 0xB);
    temp_s0 = arg0->aobj;
    arg0->aobj = spC4;
    func_8000984C(arg0);
    arg0->aobj = spC0;
    func_8000984C(arg0);
    temp_f2 = arg0->unk78;
    arg0->aobj = temp_s0;
    arg0->command = NULL;
    arg0->scale = (bitwise f32) temp_f2 + arg5;
    arg0->unk7C = -(bitwise f32) temp_f2;
    return spA4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000EC98.s")
#endif

#ifdef MIPS_TO_C

f32 func_8000F054(void *arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9) {
    f32 sp68;
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *temp_v0_2;
    UserData8000BE90 *temp_v0_3;
    UserData8000BE90 *var_s2;
    f32 temp_f0;
    f32 var_f20;
    s32 var_s0;
    s32 var_s1;

    var_s0 = arg1;
    var_s1 = arg3;
    var_s2 = arg0->unk3C;
    arg0->unk40 = arg2;
    if (arg4 == 2) {
        sp68 = arg5;
        var_f20 = 0.0f;
        if (var_s2 != NULL) {
            do {
                temp_f0 = func_8000EC98(var_s2, var_s0, arg2, var_s1, arg4, var_f20, arg7, arg8, arg9);
                if (var_f20 < temp_f0) {
                    var_f20 = temp_f0;
                }
                if (var_s0 != 0) {
                    var_s0 += 4;
                }
                if (var_s1 != 0) {
                    var_s1 += 0x2C;
                }
                temp_v0 = func_8000BE90(var_s2);
                var_s2 = temp_v0;
            } while (temp_v0 != NULL);
            var_s2 = arg0->unk3C;
        }
        if (var_f20 < sp68) {
            var_f20 = sp68;
        } else if (arg6 < var_f20) {
            var_f20 = arg6;
        }
        if (var_s2 != NULL) {
            do {
                func_8000E434(var_s2, var_f20);
                temp_v0_2 = func_8000BE90(var_s2);
                var_s2 = temp_v0_2;
            } while (temp_v0_2 != NULL);
        }
        arg5 = var_f20;
    } else if (var_s2 != NULL) {
        do {
            func_8000EC98(var_s2, var_s0, arg2, var_s1, arg4, arg5, arg7, arg8, arg9);
            if (var_s0 != 0) {
                var_s0 += 4;
            }
            if (var_s1 != 0) {
                var_s1 += 0x2C;
            }
            temp_v0_3 = func_8000BE90(var_s2);
            var_s2 = temp_v0_3;
        } while (temp_v0_3 != NULL);
    }
    arg0->unk40 = 0.0f;
    return arg5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000F054.s")
#endif

#ifdef MIPS_TO_C

void func_8000F230(void *arg0, s32 *arg1, f32 arg2, void *arg3) {
    ?32 sp84;
    s32 sp7C;
    ? sp70;
    s32 sp6C;
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s0;
    s32 *var_fp;
    s32 temp_a1;
    s32 var_s1;
    void *var_s2;

    var_s0 = arg0->unk3C;
    sp7C = 0;
    sp6C = 1;
    var_s2 = arg3;
    var_fp = arg1;
    arg0->unk40 = arg2;
    if (var_s0 != NULL) {
        do {
            temp_a1 = *var_fp;
            if (temp_a1 != 0) {
                func_8000C10C(var_s0, temp_a1, arg2);
                var_s1 = 1;
                var_s0->unk55 = sp6C;
                sp6C = 0;
                do {
                    if (var_s1 != 4) {
                        func_8000E554(0, var_s0, &sp84, 0, var_s0->unk6C, var_s2, var_s1, 0, &sp70, &sp7C);
                        switch (var_s1) {
                            case 1:
                                var_s0->unk30 = sp84;
                                break;
                            case 2:
                                var_s0->unk34 = sp84;
                                break;
                            case 3:
                                var_s0->unk38 = sp84;
                                break;
                            case 5:
                                var_s0->unk1C = sp84;
                                break;
                            case 6:
                                var_s0->unk20 = sp84;
                                break;
                            case 7:
                                var_s0->unk24 = sp84;
                                break;
                            case 8:
                                var_s0->unk40 = sp84;
                                break;
                            case 9:
                                var_s0->unk44 = sp84;
                                break;
                            case 10:
                                var_s0->unk48 = sp84;
                                break;
                        }
                    }
                    var_s1 += 1;
                } while (var_s1 != 0xB);
            } else {
                var_s0->unk74 = -3.4028235e38f;
                var_s0->unk55 = 0;
                if (var_s2 != NULL) {
                    var_s0->unk1C = var_s2->unk8;
                    var_s0->unk20 = var_s2->unkC;
                    var_s0->unk24 = var_s2->unk10;
                    var_s0->unk30 = var_s2->unk14;
                    var_s0->unk34 = var_s2->unk18;
                    var_s0->unk38 = var_s2->unk1C;
                    var_s0->unk40 = var_s2->unk20;
                    var_s0->unk44 = var_s2->unk24;
                    var_s0->unk48 = var_s2->unk28;
                }
            }
            var_fp += 4;
            if (var_s2 != NULL) {
                var_s2 += 0x2C;
            }
            temp_v0 = func_8000BE90(var_s0);
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000F230.s")
#endif

#ifdef MIPS_TO_C

void func_8000F448(s32 arg0) {
    func_80009628(0x1B, 0);
    func_80009628(arg0, 0x20, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000F448.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000F480(void) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = omGObjAddDObj();
    sp1C = temp_v0;
    func_8000F448(temp_v0);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000F480.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000F4B0(void) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = omDObjAddSibling();
    sp1C = temp_v0;
    func_8000F448(temp_v0);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000F4B0.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000F4E0(void) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = omDObjAddChild();
    sp1C = temp_v0;
    func_8000F448(temp_v0);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000F4E0.s")
#endif

#ifdef MIPS_TO_C

s32 func_8000F510(s32 arg0, s32 *arg1, void **arg2) {
    ? sp8C;
    ? sp4C;
    s32 sp48;
    void *sp44;
    ? *var_v0_2;
    s32 *var_s2;
    s32 temp_v0;
    s32 var_v0;
    s32 var_v1;
    void **temp_s1;
    void **var_s3;
    void *var_v0_3;

    var_s2 = arg1;
    var_s3 = arg2;
    sp44 = NULL;
    sp48 = 0;
    var_v0_2 = &sp4C;
    do {
        var_v0_2 += 0x10;
        var_v0_2->unk-C = 0;
        var_v0_2->unk-8 = 0;
        var_v0_2->unk-4 = 0;
        var_v0_2->unk-10 = 0;
    } while (var_v0_2 != &sp8C);
    var_v1 = *var_s2;
    var_v0 = var_v1 & 0xFFF;
    if (var_v1 != 0x12) {
        do {
            temp_v0 = var_v1 & 0xFFF;
            if (temp_v0 != 0) {
                temp_s1 = &(&sp44)[temp_v0];
                var_v0_3 = omDObjAddChild(temp_s1->unk-4, var_s2->unk4);
                temp_s1->unk0 = var_v0_3;
            } else {
                var_v0_3 = omGObjAddDObj(arg0, var_s2->unk4);
                sp44 = var_v0_3;
            }
            if (var_s2->unk0 & 0xF000) {
                func_80009628(var_v0_3, 0x12, 0);
            }
            if (var_s2->unk0 & 0x8000) {
                var_v0 = func_80009628(var_v0_3, 0x2C, 0);
            } else if (var_s2->unk0 & 0x4000) {
                var_v0 = func_80009628(var_v0_3, 0x2E, 0);
            } else if (var_s2->unk0 & 0x2000) {
                var_v0 = func_80009628(var_v0_3, 0x30, 0);
            } else if (var_s2->unk0 & 0x1000) {
                var_v0 = func_80009628(var_v0_3, 0x32, 0);
            } else {
                var_v0 = func_8000F448(var_v0_3);
            }
            var_v0_3->unk1C = var_s2->unk8;
            var_v0_3->unk20 = var_s2->unkC;
            var_v0_3->unk24 = var_s2->unk10;
            var_v0_3->unk30 = var_s2->unk14;
            var_v0_3->unk34 = var_s2->unk18;
            var_v0_3->unk38 = var_s2->unk1C;
            var_v0_3->unk40 = var_s2->unk20;
            var_v0_3->unk44 = var_s2->unk24;
            var_v0_3->unk48 = var_s2->unk28;
            if (var_s3 != NULL) {
                *var_s3 = var_v0_3;
                var_s3 += 4;
            }
            var_v1 = var_s2->unk2C;
            var_s2 += 0x2C;
        } while (var_v1 != 0x12);
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000F510.s")
#endif

#ifdef MIPS_TO_C

void func_8000F6EC(s32 arg0, s32 arg1, u8 arg2, u8 arg3) {
    s32 temp_a1;

    temp_a1 = arg1 & 0xFF;
    if (temp_a1 != 0) {
        func_80009628(temp_a1, 0);
    }
    if (arg2 != 0) {
        func_80009628(arg0, arg2, 0);
    }
    if (arg3 != 0) {
        func_80009628(arg0, arg3, 0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000F6EC.s")
#endif

#ifdef MIPS_TO_C

void func_8000F754(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 sp20;
    s32 sp1C;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_t0;
    s32 var_t1;
    s32 var_v1;

    temp_a1 = arg1 & 0xFF;
    temp_a3 = arg3 & 0xFF;
    temp_a2 = arg2 & 0xFF;
    var_t0 = 0;
    var_t1 = 0;
    var_v1 = 0;
    switch (temp_a1) {
        case 18:
            var_t0 = 1;
            break;
        case 26:
            var_v1 = 1;
            break;
        case 27:
            var_v1 = 1;
            var_t0 = 1;
            break;
        case 28:
            var_t1 = 1;
            var_v1 = 1;
            var_t0 = 1;
            break;
        case 29:
            var_v1 = 2;
            break;
        case 30:
            var_v1 = 2;
            var_t0 = 1;
            break;
        case 31:
            var_v1 = 2;
            var_t1 = 1;
            var_t0 = 1;
            break;
        case 32:
            var_t1 = 1;
            break;
    }
    switch (temp_a2) {                              /* switch 1; irregular */
        case 26:                                    /* switch 1 */
            var_v1 = 1;
            break;
        case 29:                                    /* switch 1 */
            var_v1 = 2;
            break;
        case 32:                                    /* switch 1 */
            var_t1 = 1;
            break;
    }
    if (temp_a3 == 0x20) {
        var_t1 = 1;
    }
    if (var_t0 != 0) {
        sp1C = var_v1;
        sp20 = var_t1;
        func_80009628(0x12, 0, temp_a3);
    }
    if (arg4 & 0x4000) {
        if (var_v1 == 1) {
            func_80009628(arg0, 0x2E, 0);
            return;
        }
        func_80009628(arg0, 0x2D, 0);
        return;
    }
    if (arg4 & 0x2000) {
        if (var_v1 == 1) {
            func_80009628(arg0, 0x30, 0);
            return;
        }
        func_80009628(arg0, 0x2F, 0);
        return;
    }
    if (arg4 & 0x1000) {
        if (var_v1 == 1) {
            func_80009628(arg0, 0x32, 0);
            return;
        }
        func_80009628(arg0, 0x31, 0);
        return;
    }
    if (var_t1 != 0) {
        if (var_v1 == 1) {
            func_80009628(arg0, 0x2C, 0);
            return;
        }
        func_80009628(arg0, 0x2B, 0);
        return;
    }
    if (var_v1 == 1) {
        func_80009628(arg0, 0x2A, 0);
        return;
    }
    func_80009628(arg0, 0x29, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000F754.s")
#endif

#ifdef MIPS_TO_C

void func_8000F980(s32 arg0, s32 *arg1, void **arg2, s32 arg3, u8 arg4, u8 arg5) {
    ? sp9C;
    ? sp5C;
    s32 sp58;
    void *sp54;
    ? *var_v0;
    s32 *var_s1;
    s32 temp_s6;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_v0_2;
    void **temp_s2;
    void **var_s3;
    void *var_v0_3;

    var_s1 = arg1;
    var_s3 = arg2;
    temp_s6 = arg3 & 0xFF;
    sp54 = NULL;
    sp58 = 0;
    var_v0 = &sp5C;
    do {
        var_v0 += 0x10;
        var_v0->unk-C = 0;
        var_v0->unk-8 = 0;
        var_v0->unk-4 = 0;
        var_v0->unk-10 = 0;
    } while (var_v0 != &sp9C);
    var_v0_2 = *var_s1;
    if (var_v0_2 != 0x12) {
        do {
            temp_v1 = var_v0_2 & 0xFFF;
            if (temp_v1 != 0) {
                temp_s2 = &(&sp54)[temp_v1];
                var_v0_3 = omDObjAddChild(temp_s2->unk-4, var_s1->unk4);
                temp_s2->unk0 = var_v0_3;
            } else {
                var_v0_3 = omGObjAddDObj(arg0, var_s1->unk4);
                sp54 = var_v0_3;
            }
            temp_v0 = var_s1->unk0 & 0xF000;
            if (temp_v0 != 0) {
                func_8000F754(var_v0_3, temp_s6 & 0xFF, arg4 & 0xFF, arg5 & 0xFF, temp_v0);
            } else {
                func_8000F6EC(var_v0_3, temp_s6 & 0xFF, arg4 & 0xFF, arg5 & 0xFF);
            }
            var_v0_3->unk1C = var_s1->unk8;
            var_v0_3->unk20 = var_s1->unkC;
            var_v0_3->unk24 = var_s1->unk10;
            var_v0_3->unk30 = var_s1->unk14;
            var_v0_3->unk34 = var_s1->unk18;
            var_v0_3->unk38 = var_s1->unk1C;
            var_v0_3->unk40 = var_s1->unk20;
            var_v0_3->unk44 = var_s1->unk24;
            var_v0_3->unk48 = var_s1->unk28;
            if (var_s3 != NULL) {
                *var_s3 = var_v0_3;
                var_s3 += 4;
            }
            var_v0_2 = var_s1->unk2C;
            var_s1 += 0x2C;
        } while (var_v0_2 != 0x12);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000F980.s")
#endif

#ifdef MIPS_TO_C

void func_8000FB10(s32 arg0, s32 *arg1, s32 **arg2, void **arg3, u8 arg4, u8 arg5, u8 arg6) {
    ? spA4;
    ? sp64;
    s32 sp60;
    void *sp5C;
    ? *var_v0;
    s32 **var_s4;
    s32 *temp_v0_2;
    s32 *var_s0;
    s32 *var_s3;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_s1;
    s32 var_v0_2;
    void **temp_s0;
    void **var_s5;
    void *var_v0_3;

    var_s3 = arg1;
    var_s4 = arg2;
    var_s5 = arg3;
    sp5C = NULL;
    sp60 = 0;
    var_v0 = &sp64;
    do {
        var_v0 += 0x10;
        var_v0->unk-C = 0;
        var_v0->unk-8 = 0;
        var_v0->unk-4 = 0;
        var_v0->unk-10 = 0;
    } while (var_v0 != &spA4);
    var_v0_2 = *var_s3;
    if (var_v0_2 != 0x12) {
        do {
            temp_v1 = var_v0_2 & 0xFFF;
            if (temp_v1 != 0) {
                temp_s0 = &(&sp5C)[temp_v1];
                var_v0_3 = omDObjAddChild(temp_s0->unk-4, var_s3->unk4);
                temp_s0->unk0 = var_v0_3;
            } else {
                var_v0_3 = omGObjAddDObj(arg0, var_s3->unk4);
                sp5C = var_v0_3;
            }
            temp_v0 = var_s3->unk0 & 0xF000;
            if (temp_v0 != 0) {
                func_8000F754(var_v0_3, arg4 & 0xFF, arg5 & 0xFF, arg6 & 0xFF, temp_v0);
            } else {
                func_8000F6EC(var_v0_3, arg4 & 0xFF, arg5 & 0xFF, arg6 & 0xFF);
            }
            var_v0_3->unk1C = var_s3->unk8;
            var_v0_3->unk20 = var_s3->unkC;
            var_v0_3->unk24 = var_s3->unk10;
            var_v0_3->unk30 = var_s3->unk14;
            var_v0_3->unk34 = var_s3->unk18;
            var_v0_3->unk38 = var_s3->unk1C;
            var_v0_3->unk40 = var_s3->unk20;
            var_v0_3->unk44 = var_s3->unk24;
            var_v0_3->unk48 = var_s3->unk28;
            if (var_s4 != NULL) {
                temp_v0_2 = *var_s4;
                if (temp_v0_2 != NULL) {
                    var_s1 = *temp_v0_2;
                    var_s0 = temp_v0_2;
                    if (var_s1 != 0) {
                        do {
                            func_80009A44(var_v0_3, var_s1);
                            var_s1 = var_s0->unk4;
                            var_s0 += 4;
                        } while (var_s1 != 0);
                    }
                }
                var_s4 += 4;
            }
            if (var_s5 != NULL) {
                *var_s5 = var_v0_3;
                var_s5 += 4;
            }
            var_v0_2 = var_s3->unk2C;
            var_s3 += 0x2C;
        } while (var_v0_2 != 0x12);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000FB10.s")
#endif

#ifdef MIPS_TO_C

void func_8000FCE4(void *arg0, s32 **arg1) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s2;
    s32 **var_s3;
    s32 *temp_v0_2;
    s32 *var_s0;
    s32 var_s1;

    var_s2 = arg0->unk3C;
    var_s3 = arg1;
    if (var_s2 != NULL) {
        do {
            if (var_s3 != NULL) {
                temp_v0_2 = *var_s3;
                if (temp_v0_2 != NULL) {
                    var_s1 = *temp_v0_2;
                    var_s0 = temp_v0_2;
                    if (var_s1 != 0) {
                        do {
                            func_80009A44(var_s2, var_s1);
                            var_s1 = var_s0->unk4;
                            var_s0 += 4;
                        } while (var_s1 != 0);
                    }
                }
                var_s3 += 4;
            }
            temp_v0 = func_8000BE90(var_s2);
            var_s2 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000FCE4.s")
#endif

#ifdef MIPS_TO_C
void func_8000FD78(void *arg0, s32 *arg1) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s1;
    s32 *var_s0;
    s32 temp_t8;

    var_s1 = arg0->unk3C;
    var_s0 = arg1;
    if ((var_s1 != NULL) && (*arg1 != 0x12)) {
loop_2:
        temp_t8 = var_s0->unk8;
        var_s0 += 0x2C;
        var_s1->unk1C = temp_t8;
        var_s1->unk20 = var_s0->unk-20;
        var_s1->unk24 = var_s0->unk-1C;
        var_s1->unk30 = var_s0->unk-18;
        var_s1->unk34 = var_s0->unk-14;
        var_s1->unk38 = var_s0->unk-10;
        var_s1->unk40 = var_s0->unk-C;
        var_s1->unk44 = var_s0->unk-8;
        var_s1->unk48 = var_s0->unk-4;
        temp_v0 = func_8000BE90(var_s1);
        var_s1 = temp_v0;
        if (temp_v0 != NULL) {
            if (var_s0->unk0 != 0x12) {
                goto loop_2;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000FD78.s")
#endif

#ifdef MIPS_TO_C
void func_8000FE2C(void *arg0, s32 arg1, f32 arg2) {
    void *var_v0;

    var_v0 = arg0->unk6C;
    if (var_v0 != NULL) {
        do {
            var_v0->unk5 = 0;
            var_v0 = var_v0->unk0;
        } while (var_v0 != NULL);
    }
    arg0->unk70 = arg1;
    arg0->unk7C = arg2;
    arg0->unk74 = -1.7014117e38f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000FE2C.s")
#endif

#ifdef MIPS_TO_C

void func_8000FE64(void *arg0) {
    void *sp9C;
    void *sp8C;
    ? sp88;
    s32 sp84;
    void *sp80;
    ? *var_s0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f20_4;
    f32 temp_f2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_s1_5;
    s32 var_s1_6;
    u32 *temp_t0;
    u32 *temp_t4;
    u32 *temp_t8;
    u32 *temp_t9;
    u32 *temp_v0;
    u32 temp_a0;
    u32 temp_s2;
    u32 temp_v1_2;
    u32 var_s2;
    u32 var_s2_2;
    u32 var_s2_3;
    u32 var_s2_4;
    u32 var_s2_5;
    u32 var_s2_6;
    u8 temp_v1;
    void **temp_s0;
    void **temp_s0_2;
    void **temp_s0_3;
    void **temp_s0_4;
    void **temp_s0_5;
    void **temp_s0_6;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *var_v0;
    void *var_v0_2;
    void *var_v0_3;
    void *var_v1;
    void *var_v1_2;
    void *var_v1_3;
    void *var_v1_4;
    void *var_v1_5;
    void *var_v1_6;

    temp_f2 = arg0->unk74;
    var_s0 = &sp88;
    if (temp_f2 != -3.4028235e38f) {
        if (temp_f2 == -1.7014117e38f) {
            arg0->unk74 = -arg0->unk7C;
            goto block_4;
        }
        temp_f0 = arg0->unk78;
        arg0->unk74 = temp_f2 - temp_f0;
        arg0->unk7C = arg0->unk7C + temp_f0;
        arg0->unk4->unk40 = arg0->unk7C;
        if (!(arg0->unk74 > 0.0f)) {
block_4:
            sp80 = NULL;
            sp84 = 0;
            do {
                var_s0 += 0x10;
                var_s0->unk-C = 0;
                var_s0->unk-8 = 0;
                var_s0->unk-4 = 0;
                var_s0->unk-10 = 0;
            } while (var_s0 != &arg0);
            var_v0 = arg0->unk6C;
            if (var_v0 != NULL) {
                do {
                    temp_v1 = var_v0->unk4;
                    if ((temp_v1 >= 0x19) && (temp_v1 < 0x23)) {
                        (&sp80)[temp_v1].unk-64 = var_v0;
                    }
                    var_v0 = var_v0->unk0;
                } while (var_v0 != NULL);
            }
loop_12:
            temp_v0 = arg0->unk70;
            if (temp_v0 == NULL) {
                var_v0_2 = arg0->unk6C;
                if (var_v0_2 != NULL) {
                    do {
                        if (var_v0_2->unk5 != 0) {
                            var_v0_2->unkC = var_v0_2->unkC + (arg0->unk78 + arg0->unk74);
                        }
                        var_v0_2 = var_v0_2->unk0;
                    } while (var_v0_2 != NULL);
                }
                arg0->unk7C = arg0->unk74;
                arg0->unk74 = -1.1342745e38f;
                return;
            }
            temp_v1_2 = *temp_v0;
            temp_a0 = temp_v1_2 >> 0x19;
            switch (temp_a0) {
                case 8:
                case 9:
                    temp_f20 = temp_v1_2 & 0x7FFF;
                    arg0->unk70 = temp_v0 + 4;
                    var_s2 = (temp_v1_2 << 7) >> 0x16;
                    var_s1 = 0;
loop_21:
                    if (var_s2 != 0) {
                        if (var_s2 & 1) {
                            temp_s0 = &(&sp80)[var_s1];
                            var_v1 = *temp_s0;
                            if (var_v1 == NULL) {
                                temp_v0_2 = func_80009978(arg0, (var_s1 + 0x19) & 0xFF);
                                *temp_s0 = temp_v0_2;
                                var_v1 = temp_v0_2;
                            }
                            var_v1->unk10 = var_v1->unk14;
                            (*temp_s0)->unk14 = *arg0->unk70;
                            arg0->unk70 = arg0->unk70 + 4;
                            temp_v1_3 = *temp_s0;
                            temp_v1_3->unk18 = temp_v1_3->unk1C;
                            (*temp_s0)->unk1C = 0.0f;
                            (*temp_s0)->unk5 = 3;
                            if (temp_f20 != 0.0f) {
                                (*temp_s0)->unk8 = 1.0f / temp_f20;
                            }
                            (*temp_s0)->unkC = -arg0->unk74 - arg0->unk78;
                        }
                        var_s1 += 1;
                        var_s2 = var_s2 >> 1;
                        if (var_s1 != 0xA) {
                            goto loop_21;
                        }
                    }
                    if (temp_a0 == 8) {
                        arg0->unk74 = arg0->unk74 + temp_f20;
                    }
                default:
block_100:
block_101:
                    if (!(arg0->unk74 <= 0.0f)) {

                    } else {
                        goto loop_12;
                    }
                    break;
                case 3:
                case 4:
                    temp_f20_2 = temp_v1_2 & 0x7FFF;
                    arg0->unk70 = temp_v0 + 4;
                    var_s2_2 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_2 = 0;
loop_33:
                    if (var_s2_2 != 0) {
                        if (var_s2_2 & 1) {
                            temp_s0_2 = &(&sp80)[var_s1_2];
                            var_v1_2 = *temp_s0_2;
                            if (var_v1_2 == NULL) {
                                temp_v0_3 = func_80009978(arg0, (var_s1_2 + 0x19) & 0xFF);
                                *temp_s0_2 = temp_v0_3;
                                var_v1_2 = temp_v0_3;
                            }
                            var_v1_2->unk10 = var_v1_2->unk14;
                            (*temp_s0_2)->unk14 = *arg0->unk70;
                            arg0->unk70 = arg0->unk70 + 4;
                            (*temp_s0_2)->unk5 = 2;
                            if (temp_f20_2 != 0.0f) {
                                temp_v1_4 = *temp_s0_2;
                                temp_v1_4->unk18 = ((bitwise f32) temp_v1_4->unk14 - temp_v1_4->unk10) / temp_f20_2;
                            }
                            (*temp_s0_2)->unkC = -arg0->unk74 - arg0->unk78;
                            (*temp_s0_2)->unk1C = 0.0f;
                        }
                        var_s1_2 += 1;
                        var_s2_2 = var_s2_2 >> 1;
                        if (var_s1_2 != 0xA) {
                            goto loop_33;
                        }
                    }
                    if (temp_a0 == 3) {
                        arg0->unk74 = arg0->unk74 + temp_f20_2;
                    }
                    goto block_100;
                case 5:
                case 6:
                    temp_f20_3 = temp_v1_2 & 0x7FFF;
                    arg0->unk70 = temp_v0 + 4;
                    var_s2_3 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_3 = 0;
loop_45:
                    if (var_s2_3 != 0) {
                        if (var_s2_3 & 1) {
                            temp_s0_3 = &(&sp80)[var_s1_3];
                            var_v1_3 = *temp_s0_3;
                            if (var_v1_3 == NULL) {
                                temp_v0_4 = func_80009978(arg0, (var_s1_3 + 0x19) & 0xFF);
                                *temp_s0_3 = temp_v0_4;
                                var_v1_3 = temp_v0_4;
                            }
                            var_v1_3->unk10 = var_v1_3->unk14;
                            (*temp_s0_3)->unk14 = *arg0->unk70;
                            arg0->unk70 = arg0->unk70 + 4;
                            temp_v1_5 = *temp_s0_3;
                            temp_v1_5->unk18 = temp_v1_5->unk1C;
                            (*temp_s0_3)->unk1C = *arg0->unk70;
                            arg0->unk70 = arg0->unk70 + 4;
                            (*temp_s0_3)->unk5 = 3;
                            if (temp_f20_3 != 0.0f) {
                                (*temp_s0_3)->unk8 = 1.0f / temp_f20_3;
                            }
                            (*temp_s0_3)->unkC = -arg0->unk74 - arg0->unk78;
                        }
                        var_s1_3 += 1;
                        var_s2_3 = var_s2_3 >> 1;
                        if (var_s1_3 != 0xA) {
                            goto loop_45;
                        }
                    }
                    if (temp_a0 == 5) {
                        arg0->unk74 = arg0->unk74 + temp_f20_3;
                    }
                    goto block_100;
                case 7:
                    arg0->unk70 = temp_v0 + 4;
                    var_s2_4 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_4 = 0;
loop_57:
                    if (var_s2_4 != 0) {
                        if (var_s2_4 & 1) {
                            temp_s0_4 = &(&sp80)[var_s1_4];
                            var_v1_4 = *temp_s0_4;
                            if (var_v1_4 == NULL) {
                                temp_v0_5 = func_80009978(arg0, (var_s1_4 + 0x19) & 0xFF);
                                *temp_s0_4 = temp_v0_5;
                                var_v1_4 = temp_v0_5;
                            }
                            var_v1_4->unk1C = *arg0->unk70;
                            arg0->unk70 = arg0->unk70 + 4;
                        }
                        var_s1_4 += 1;
                        var_s2_4 = var_s2_4 >> 1;
                        if (var_s1_4 != 0xA) {
                            goto loop_57;
                        }
                    }
                    goto block_100;
                case 2:
                    arg0->unk70 = temp_v0 + 4;
                    arg0->unk74 = arg0->unk74 + (temp_v1_2 & 0x7FFF);
                    goto block_100;
                case 10:
                case 11:
                    temp_f20_4 = temp_v1_2 & 0x7FFF;
                    arg0->unk70 = temp_v0 + 4;
                    var_s2_5 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_5 = 0;
loop_66:
                    if (var_s2_5 != 0) {
                        if (var_s2_5 & 1) {
                            temp_s0_5 = &(&sp80)[var_s1_5];
                            var_v1_5 = *temp_s0_5;
                            if (var_v1_5 == NULL) {
                                temp_v0_6 = func_80009978(arg0, (var_s1_5 + 0x19) & 0xFF);
                                *temp_s0_5 = temp_v0_6;
                                var_v1_5 = temp_v0_6;
                            }
                            var_v1_5->unk10 = var_v1_5->unk14;
                            (*temp_s0_5)->unk14 = *arg0->unk70;
                            arg0->unk70 = arg0->unk70 + 4;
                            (*temp_s0_5)->unk5 = 1;
                            (*temp_s0_5)->unk8 = temp_f20_4;
                            (*temp_s0_5)->unkC = -arg0->unk74 - arg0->unk78;
                            (*temp_s0_5)->unk1C = 0.0f;
                        }
                        var_s1_5 += 1;
                        var_s2_5 = var_s2_5 >> 1;
                        if (var_s1_5 != 0xA) {
                            goto loop_66;
                        }
                    }
                    if (temp_a0 == 0xA) {
                        arg0->unk74 = arg0->unk74 + temp_f20_4;
                    }
                    goto block_100;
                case 14:
                    temp_t0 = temp_v0 + 4;
                    arg0->unk70 = temp_t0;
                    temp_f0_2 = -arg0->unk74;
                    arg0->unk70 = *temp_t0;
                    arg0->unk7C = temp_f0_2;
                    arg0->unk4->unk40 = temp_f0_2;
                    goto block_100;
                case 1:
                    temp_t4 = temp_v0 + 4;
                    arg0->unk70 = temp_t4;
                    arg0->unk70 = *temp_t4;
                    goto block_101;
                case 12:
                    arg0->unk70 = temp_v0 + 4;
                    var_s2_6 = (temp_v1_2 << 7) >> 0x16;
                    var_s1_6 = 0;
loop_78:
                    if (var_s2_6 != 0) {
                        if (var_s2_6 & 1) {
                            temp_s0_6 = &(&sp80)[var_s1_6];
                            var_v1_6 = *temp_s0_6;
                            if (var_v1_6 == NULL) {
                                temp_v0_7 = func_80009978(arg0, (var_s1_6 + 0x19) & 0xFF);
                                *temp_s0_6 = temp_v0_7;
                                var_v1_6 = temp_v0_7;
                            }
                            var_v1_6->unkC = var_v1_6->unkC + (temp_v1_2 & 0x7FFF);
                        }
                        var_s1_6 += 1;
                        var_s2_6 = var_s2_6 >> 1;
                        if (var_s1_6 != 0xA) {
                            goto loop_78;
                        }
                    }
                    goto block_100;
                case 13:
                    temp_s2 = (temp_v1_2 << 7) >> 0x16;
                    arg0->unk70 = temp_v0 + 4;
                    if (temp_s2 & 8) {
                        if (sp8C == NULL) {
                            sp8C = func_80009978(arg0, 0x1C);
                        }
                        sp8C->unk20 = *arg0->unk70;
                        arg0->unk70 = arg0->unk70 + 4;
                    }
                    if (temp_s2 & 0x80) {
                        if (sp9C == NULL) {
                            sp9C = func_80009978(arg0, 0x20);
                        }
                        sp9C->unk20 = *arg0->unk70;
                        arg0->unk70 = arg0->unk70 + 4;
                    }
                    goto block_100;
                case 0:
                    var_v0_3 = arg0->unk6C;
                    if (var_v0_3 != NULL) {
                        do {
                            if (var_v0_3->unk5 != 0) {
                                var_v0_3->unkC = var_v0_3->unkC + (arg0->unk78 + arg0->unk74);
                            }
                            var_v0_3 = var_v0_3->unk0;
                        } while (var_v0_3 != NULL);
                    }
                    arg0->unk7C = arg0->unk74;
                    arg0->unk74 = -1.1342745e38f;
                    return;
                case 23:
                    temp_t8 = temp_v0 + 4;
                    arg0->unk70 = temp_t8;
                    temp_t9 = temp_t8 + 4;
                    arg0->unk74 = arg0->unk74 + (temp_v1_2 & 0x7FFF);
                    arg0->unk70 = temp_t9;
                    arg0->unk28 = *temp_t8;
                    arg0->unk70 = temp_t9 + 4;
                    arg0->unk2C = *temp_t9;
                    goto block_101;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8000FE64.s")
#endif

#ifdef MIPS_TO_C

void func_8001074C(void *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f0;
    f32 var_f2;
    f32 var_f2_2;
    u8 temp_t0;
    void *var_s0;

    var_f0 = arg0->unk74;
    if (var_f0 != -3.4028235e38f) {
        var_s0 = arg0->unk6C;
        if (var_s0 != NULL) {
            do {
                if (var_s0->unk5 != 0) {
                    if (arg0->unk74 != -1.1342745e38f) {
                        var_s0->unkC = var_s0->unkC + arg0->unk78;
                    }
                    if (!(arg0->unk4->unk44 & 2)) {
                        temp_t0 = var_s0->unk4;
                        switch (temp_t0) {
                            case 25:
                                arg0->unk3C = func_8000CF84(var_s0);
                                break;
                            case 26:
                                arg0->unk40 = func_8000CF84(var_s0);
                                break;
                            case 27:
                                arg0->unk44 = func_8000CF84(var_s0);
                                break;
                            case 28:
                                temp_f0 = func_8000CF84(var_s0);
                                var_f2 = temp_f0;
                                if (temp_f0 < 0.0f) {
                                    var_f2 = 0.0f;
                                } else if (temp_f0 > 1.0f) {
                                    var_f2 = 1.0f;
                                }
                                func_8001E300(M2C_ERROR(/* Read from unset register $f12 */), var_s0->unk20, var_f2, M2C_ERROR(/* Read from unset register $a3 */));
                                break;
                            case 29:
                                arg0->unk48 = func_8000CF84(var_s0);
                                break;
                            case 30:
                                arg0->unk4C = func_8000CF84(var_s0);
                                break;
                            case 31:
                                arg0->unk50 = func_8000CF84(var_s0);
                                break;
                            case 32:
                                temp_f0_2 = func_8000CF84(var_s0);
                                var_f2_2 = temp_f0_2;
                                if (temp_f0_2 < 0.0f) {
                                    var_f2_2 = 0.0f;
                                } else if (temp_f0_2 > 1.0f) {
                                    var_f2_2 = 1.0f;
                                }
                                func_8001E300(M2C_ERROR(/* Read from unset register $f12 */), var_s0->unk20, var_f2_2, M2C_ERROR(/* Read from unset register $a3 */));
                                break;
                            case 33:
                                arg0->unk54 = func_8000CF84(var_s0);
                                break;
                            case 34:
                                arg0->unk20 = func_8000CF84(var_s0);
                                break;
                        }
                    }
                }
                var_s0 = var_s0->unk0;
            } while (var_s0 != NULL);
            var_f0 = arg0->unk74;
        }
        if (var_f0 == -1.1342745e38f) {
            arg0->unk74 = -3.4028235e38f;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_8001074C.s")
#endif

#ifdef MIPS_TO_C

void func_80010988(void *arg0) {
    s32 sp1C;
    s32 temp_a0;

    temp_a0 = arg0->unk3C;
    sp1C = temp_a0;
    func_8000FE64(temp_a0);
    func_8001074C(temp_a0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_80010988.s")
#endif

#ifdef MIPS_TO_C
s32 func_800109B4(u32 **arg0) {
    s32 temp_t2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_v1;
    u32 **var_a0;
    u32 *var_a0_2;
    u32 *var_v0;
    u32 temp_a2;
    u32 var_a1;
    u32 var_v0_2;
    u32 var_v0_3;
    u32 var_v0_4;

    var_a0 = arg0;
    var_v0 = *var_a0;
    var_v1 = 0;
    if (var_v0 == NULL) {
        do {
            var_v0 = var_a0->unk4;
            var_a0 += 4;
        } while (var_v0 == NULL);
    }
    var_a1 = *var_v0;
    var_a0_2 = var_v0;
loop_3:
    temp_a2 = var_a1 >> 0x19;
default:
    switch (temp_a2) {
        case 3:
        case 8:
        case 10:
            var_v1 += var_a1 & 0x7FFF;
            /* fallthrough */
        case 4:
        case 7:
        case 9:
        case 11:
            var_v0_2 = (var_a1 << 7) >> 0x16;
            var_a0_2 += 4;
            var_a2 = 0;
loop_8:
            if (var_v0_2 != 0) {
                var_a2 += 1;
                if (var_v0_2 & 1) {
                    var_a0_2 += 4;
                }
                var_v0_2 = var_v0_2 >> 1;
                if (var_a2 != 0xA) {
                    goto loop_8;
                }
            }
            var_a1 = *var_a0_2;
            goto loop_3;
        case 5:
            var_v1 += var_a1 & 0x7FFF;
            /* fallthrough */
        case 6:
            var_v0_3 = (var_a1 << 7) >> 0x16;
            var_a0_2 += 4;
            var_a2_2 = 0;
loop_15:
            if (var_v0_3 != 0) {
                var_a2_2 += 1;
                if (var_v0_3 & 1) {
                    var_a0_2 += 8;
                }
                var_v0_3 = var_v0_3 >> 1;
                if (var_a2_2 != 0xA) {
                    goto loop_15;
                }
            }
            var_a1 = *var_a0_2;
            goto loop_3;
        case 2:
        case 15:
            temp_t2 = var_a1 & 0x7FFF;
            var_a1 = var_a0_2->unk4;
            var_v1 += temp_t2;
            var_a0_2 += 4;
            goto loop_3;
        case 12:
            var_a1 = var_a0_2->unk4;
            var_a0_2 += 4;
            goto loop_3;
        case 13:
            var_a1 = var_a0_2->unk8;
            var_a0_2 += 8;
            goto loop_3;
        case 17:
            var_v1 += var_a1 & 0x7FFF;
            var_v0_4 = (var_a1 << 7) >> 0x16;
            var_a0_2 += 4;
            var_a2_3 = 4;
loop_24:
            if (var_v0_4 != 0) {
                var_a2_3 += 1;
                if (var_v0_4 & 1) {
                    var_a0_2 += 4;
                }
                var_v0_4 = var_v0_4 >> 1;
                if (var_a2_3 != 0xE) {
                    goto loop_24;
                }
            }
            var_a1 = *var_a0_2;
            goto loop_3;
        case 0:
            return var_v1;
        case 1:
        case 14:
            return -var_v1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/anim/func_800109B4.s")
#endif
