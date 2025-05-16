// omanim.c

// if i had to guess, it's the animation processor
#include <ultra64.h>
#include <macros.h>
#include "ovl0_3.h"
#include "omCurrentObj.h"

UserData8000BE90 *func_8000BE90(UserData8000BE90* data) {
    UserData8000BE90 *ret;
    
    UserData8000BE90 *tmp;

    if (data->unk10 != 0) {
        tmp = data->unk10;
        ret = tmp;
    } else if (data->unk8 != 0) {
        ret = data->unk8;
    } else {
        while (1) {
            if ((u32) data->unk14 == 1) {
                ret = 0; break;
            }
            if (data->unk14->unk8 != 0) {
                ret = data->unk14->unk8; break;
            }
            data = data->unk14;
        }
    }
    
    return ret;
}


// u32 func_8000BE90(struct unk8000BE90Func*);

// TODO: is this ALSO 8004A7C4?
struct unk8000BEF4Func {
    u8 filler[0x3C];
    struct unk8000BE90Func* unk3C;
    f32 unk40;
};

void func_8000BEF4(struct GObj *arg0, f32 arg1) {
    struct UnkStruct8004A7C4_3C *phi_s0;

    phi_s0 = arg0->unk3C;
    while (phi_s0 != 0) {
        phi_s0->unk78 = arg1;
        phi_s0 = func_8000BE90(phi_s0);
    }
}

struct unk8000BF3CFunc {
    struct unk8000BF3CFunc* unk0;
    u8 filler[0x9C - 0x04];
    f32 unk9C;
};

void func_8000BF3C(struct unk8000BEF4Func *arg0, f32 arg1) {
    struct unk8000BF3CFunc *phi_v0;
    struct unk8000BE90Func *phi_s0;

    phi_s0 = arg0->unk3C;
    while (phi_s0 != 0) {
        phi_v0 = phi_s0->unk80;
        phi_s0->unk78 = arg1;
        while (phi_v0) {
            phi_v0->unk9C = arg1;
            phi_v0 = phi_v0->unk0;
        }
        phi_s0 = func_8000BE90(phi_s0);
    }
}

void func_8000BFA0(struct unk8000BEF4Func *arg0, f32 arg1) {
    struct unk8000BF3CFunc *phi_v0;
    struct unk8000BE90Func *phi_s0;

    phi_s0 = arg0->unk3C;
    while (phi_s0 != 0) {
        phi_v0 = phi_s0->unk80;
        while (phi_v0 != 0) {
            phi_v0->unk9C = arg1;
            phi_v0 = phi_v0->unk0;
        }
        phi_s0 = func_8000BE90(phi_s0);
    }
    
}

void func_8000984C(struct unk8000BE90Func*);

void func_8000C000(struct unk8000BEF4Func *arg0) {
    s32 temp_v0;
    struct unk8000BE90Func* phi_s0;

    phi_s0 = arg0->unk3C;
    while (phi_s0 != 0) {
        func_8000984C(phi_s0);
        phi_s0 = func_8000BE90(phi_s0);
    }
}

void func_80009918(void*);

void func_8000C044(struct unk8000BEF4Func *arg0) {
    struct unk8000BE90Func* phi_s1;
    void **phi_s0;

    phi_s1 = arg0->unk3C;
    while (phi_s1 != 0) {
        func_8000984C(phi_s1);
        phi_s0 = phi_s1->unk80;
        while (phi_s0 != 0) {
            func_80009918(phi_s0);
            phi_s0 = *phi_s0;
        }
        phi_s1 = func_8000BE90(phi_s1);
    }
}

void func_8000C0AC(struct unk8000BEF4Func *arg0) {
    struct unk8000BE90Func *phi_s1;
    void **phi_s0;

    phi_s1 = arg0->unk3C;
    while (phi_s1 != 0) {
        phi_s0 = phi_s1->unk80;
        while (phi_s0 != 0) {
            func_80009918(phi_s0);
            phi_s0 = *phi_s0;
        }
        phi_s1 = func_8000BE90(phi_s1);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000C10C.s")

extern f32 D_800406A4;

// void func_8000C144(void *arg0, s32 arg1, f32 arg2) {
//     void *var_v0;

//     var_v0 = arg0->unk90;
//     if (var_v0 != NULL) {
//         do {
//             var_v0->unk5 = 0;
//             var_v0 = var_v0->unk0;
//         } while (var_v0 != NULL);
//     }
//     arg0->unk94 = arg1;
//     arg0->unkA0 = arg2;
//     arg0->unk98 = D_800406A4;
// }
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000C144.s")

extern f32 D_800406A8;

void func_8000C10C(struct unk8000BEF4Func *, void*, f32);

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000C17C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000C218.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000C2C8.s")


extern f32 D_800406B0, D_800406B4, D_800406B8, D_80040704;

// Animation command processor
#ifdef RESEARCHING
void func_8000C3D8(struct Animation *anim) {
    struct AObj *sp8C;
    u32 *sp88;
    s32 sp84;
    struct AObj *sp80[10];
    u32 *temp_s0;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f20_4;
    f32 temp_f20_5;
    f32 temp_f2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s1_5;
    s32 temp_s1_6;
    s32 temp_s1_7;
    s32 temp_t1;
    struct AObj **temp_s0_2;
    struct AObj **temp_s0_3;
    struct AObj **temp_s0_4;
    struct AObj **temp_s0_5;
    struct AObj **temp_s0_6;
    struct AObj **temp_s0_7;
    struct AObj **temp_s5;
    struct AObj *temp_v0;
    struct AObj *temp_v0_4;
    struct AObj *temp_v0_5;
    struct AObj *temp_v0_6;
    struct AObj *temp_v0_7;
    struct AObj *temp_v0_8;
    struct AObj *temp_v0_9;
    struct AObj *temp_v0_10;
    struct AObj *temp_v0_2;
    u32 temp_s2;
    u32 temp_s2_2;
    u32 temp_s2_3;
    u32 temp_s2_4;
    u32 temp_s2_5;
    u32 temp_s2_6;
    u32 temp_s2_7;
    u32 temp_v0_3;
    u32 temp_v1_2;
    u8 temp_v1;
    u32 *temp_t2;
    u32 *temp_t8;
    u32 *phi_s0;
    struct AObj *phi_v0;
    struct AObj *phi_v0_2;
    f32 phi_f0;
    f32 phi_f0_2;
    u32 phi_s2;
    s32 phi_s1;
    struct AObj *phi_v1;
    u32 phi_s2_2;
    s32 phi_s1_2;
    struct AObj *phi_v1_2;
    u32 phi_s2_3;
    s32 phi_s1_3;
    struct AObj *phi_v1_3;
    u32 phi_s2_4;
    s32 phi_s1_4;
    struct AObj *phi_v1_4;
    u32 phi_s2_5;
    s32 phi_s1_5;
    struct AObj *phi_v1_5;
    u32 phi_s2_6;
    s32 phi_s1_6;
    struct AObj *phi_v1_6;
    struct AObj *phi_v0_3;
    f32 phi_f0_3;
    f32 phi_f0_4;
    f32 phi_f16;
    s32 phi_s0_2;
    u32 phi_s2_7;
    s32 phi_s1_7;
    f32 phi_f0_5;
    f32 phi_f0_6;

    if (D_800406B0 != anim->scale) {
        if (D_800406B4 == anim->scale) {
            anim->scale = -anim->unk7C;
block_4:
            sp80[0] = NULL;
            sp84 = 0;
            phi_s0 = &sp88;
            do {
                *(++phi_s0) = 0;
                // phi_s0++;
            } while ((u32) phi_s0 != (u32) &anim);
            // for (phi_s0 = &sp88; (u32)phi_s0 != (u32)&anim; phi_s0++) {
            //     *phi_s0 = 0;
            // }
            // phi_v0 = anim->unk6C;
            if (anim->unk6C != NULL) {
                do {
                    if (anim->unk6C->unk4 > 0 && anim->unk6C->unk4 < 0xB) {
                        *(&sp80 + anim->unk6C->unk4)[0] = anim->unk6C;
                    }
                    anim->unk6C = anim->unk6C->next;
                } while (anim->unk6C != NULL);
            }
loop_12:
            if (anim->command == 0) {
                phi_v0_2 = anim->unk6C;
                phi_f0 = anim->scale;
                phi_f0_2 = anim->scale;
                if (anim->unk6C != 0) {
loop_14:
                    phi_f0_5 = phi_f0;
                    if (phi_v0_2->unk5 != 0) {
                        phi_v0_2->unkC += (anim->unk78 + phi_f0);
                        phi_f0_5 = anim->scale;
                    }
                    temp_v0_2 = phi_v0_2->next;
                    phi_v0_2 = temp_v0_2;
                    phi_f0 = phi_f0_5;
                    phi_f0_2 = phi_f0_5;
                    if (temp_v0_2 != 0) {
                        goto loop_14;
                    }
                }
                anim->unk7C = phi_f0_2;
                anim->unk4->unk40 = phi_f0_2;
                anim->scale = D_800406B8;
                return;
                return;
            }
            temp_v0_3 = *anim->command >> 0x19;
            if (temp_v0_3 < 0x12) {
                switch(temp_v0_3) {
                    case 8:
                    case 9:
                        phi_s2 = (*anim->command << 7);
                        temp_f20 = (*anim->command & 0x7FFF);
                        anim->command++;
                        phi_s1 = 0;
                        phi_s2 >>= 0x16;
                        while (phi_s1 < 0xA) {
                            phi_s1++;
                            if (phi_s2 != 0 && (phi_s2 & 1) != 0) {
                                // temp_s0_2 = &(&sp80)[phi_s1];
                                if (sp80[phi_s1] == 0) {
                                    temp_v0_4 = HS64_AObjNew(anim, (phi_s1 + 1) & 0xFF);
                                    sp80[phi_s1] = temp_v0_4;
                                }
                                phi_v1->unk10 = phi_v1->unk14;
                                sp80[phi_s1]->unk14 = *anim->command;
                                anim->command++;
                                sp80[phi_s1]->unk18 = sp80[phi_s1]->unk1C;
                                sp80[phi_s1]->unk1C = 0.0f;
                                sp80[phi_s1]->unk5 = 3;
                                if (temp_f20 != 0.0f) {
                                    sp80[phi_s1]->unk8 = (1.0f / temp_f20);
                                }
                                sp80[phi_s1]->unkC = (-anim->scale - anim->unk78);
                            }
                            phi_s2 >>= 1;
                        }
                        if (temp_v0_3 == 8) {
                            anim->scale += temp_f20;
                        }
                        break;
                    default:
                        temp_s2_2 = *anim->command << 7;
                        temp_f20_2 = (f32) (u32) (*anim->command & 0x7FFF);
                        anim->command++;
                        phi_s2_2 = temp_s2_2 >> 0x16;
                        phi_s1_2 = 0;
        loop_33:
                        if (phi_s2_2 != 0) {
                            if ((phi_s2_2 & 1) != 0) {
                                temp_s0_3 = &(&sp80)[phi_s1_2];
                                phi_v1_2 = *temp_s0_3;
                                if (*temp_s0_3 == 0) {
                                    temp_v0_5 = HS64_AObjNew(anim, (phi_s1_2 + 1) & 0xFF);
                                    *temp_s0_3 = temp_v0_5;
                                    phi_v1_2 = temp_v0_5;
                                }
                                phi_v1_2->unk10 = (f32) phi_v1_2->unk14;
                                (*temp_s0_3)->unk14 = (f32) *anim->command;
                                anim->command++;
                                (*temp_s0_3)->unk5 = (u8)2;
                                if (temp_f20_2 != 0.0f) {
                                    (*temp_s0_3)->unk18 = (f32) (((*temp_s0_3)->unk14 - (*temp_s0_3)->unk10) / temp_f20_2);
                                }
                                (*temp_s0_3)->unkC = (f32) (-anim->scale - (f32) anim->unk78);
                                (*temp_s0_3)->unk1C = 0.0f;
                            }
                            temp_s1_2 = phi_s1_2 + 1;
                            phi_s2_2 = phi_s2_2 >> 1;
                            phi_s1_2 = temp_s1_2;
                            if (temp_s1_2 != 0xA) {
                                goto loop_33;
                            }
                        }
                        if (temp_v0_3 == 3) {
                            anim->scale = (f32) (anim->scale + temp_f20_2);
                        }
                        break;
                    case 5:
                    case 6:
                        temp_s2_3 = *anim->command << 7;
                        temp_f20_3 = (f32) (u32) (*anim->command & 0x7FFF);
                        anim->command++;
                        phi_s2_3 = temp_s2_3 >> 0x16;
                        phi_s1_3 = 0;
        loop_45:
                        if (phi_s2_3 != 0) {
                            if ((phi_s2_3 & 1) != 0) {
                                temp_s0_4 = &(&sp80)[phi_s1_3];
                                phi_v1_3 = *temp_s0_4;
                                if (*temp_s0_4 == 0) {
                                    temp_v0_6 = HS64_AObjNew(anim, (phi_s1_3 + 1) & 0xFF);
                                    *temp_s0_4 = temp_v0_6;
                                    phi_v1_3 = temp_v0_6;
                                }
                                phi_v1_3->unk10 = (f32) phi_v1_3->unk14;
                                (*temp_s0_4)->unk14 = (f32) *anim->command;
                                anim->command++;
                                (*temp_s0_4)->unk18 = (f32) (*temp_s0_4)->unk1C;
                                (*temp_s0_4)->unk1C = (f32) *anim->command;
                                anim->command++;
                                (*temp_s0_4)->unk5 = (u8)3;
                                if (temp_f20_3 != 0.0f) {
                                    (*temp_s0_4)->unk8 = (f32) (1.0f / temp_f20_3);
                                }
                                (*temp_s0_4)->unkC = (f32) (-anim->scale - (f32) anim->unk78);
                            }
                            temp_s1_3 = phi_s1_3 + 1;
                            phi_s2_3 = phi_s2_3 >> 1;
                            phi_s1_3 = temp_s1_3;
                            if (temp_s1_3 != 0xA) {
                                goto loop_45;
                            }
                        }
                        if (temp_v0_3 == 5) {
                            anim->scale = (f32) (anim->scale + temp_f20_3);
                        }
                        break;
                    case 7:
                        temp_s2_4 = *anim->command << 7;
                        anim->command++;
                        phi_s2_4 = temp_s2_4 >> 0x16;
                        phi_s1_4 = 0;
        loop_57:
                        if (phi_s2_4 != 0) {
                            if ((phi_s2_4 & 1) != 0) {
                                temp_s0_5 = &(&sp80)[phi_s1_4];
                                phi_v1_4 = *temp_s0_5;
                                if (*temp_s0_5 == 0) {
                                    temp_v0_7 = HS64_AObjNew(anim, (phi_s1_4 + 1) & 0xFF);
                                    *temp_s0_5 = temp_v0_7;
                                    phi_v1_4 = temp_v0_7;
                                }
                                phi_v1_4->unk1C = (f32) *anim->command;
                                anim->command++;
                            }
                            temp_s1_4 = phi_s1_4 + 1;
                            phi_s2_4 = phi_s2_4 >> 1;
                            phi_s1_4 = temp_s1_4;
                            if (temp_s1_4 != 0xA) {
                                goto loop_57;
                            }
                        }
                        break;
                    case 2:
                        temp_f10 = anim->scale + (f32) (u32) (*anim->command & 0x7FFF);
                        anim->command++;
                        anim->scale = temp_f10;
                        break;
                    case 10:
                    case 11:
                        temp_s2_5 = *anim->command << 7;
                        temp_f20_4 = (f32) (u32) (*anim->command & 0x7FFF);
                        anim->command++;
                        phi_s2_5 = temp_s2_5 >> 0x16;
                        phi_s1_5 = 0;
        loop_66:
                        if (phi_s2_5 != 0) {
                            if ((phi_s2_5 & 1) != 0) {
                                temp_s0_6 = &(&sp80)[phi_s1_5];
                                phi_v1_5 = *temp_s0_6;
                                if (*temp_s0_6 == 0) {
                                    temp_v0_8 = HS64_AObjNew(anim, (phi_s1_5 + 1) & 0xFF);
                                    *temp_s0_6 = temp_v0_8;
                                    phi_v1_5 = temp_v0_8;
                                }
                                phi_v1_5->unk10 = (f32) phi_v1_5->unk14;
                                (*temp_s0_6)->unk14 = (f32) *anim->command;
                                anim->command++;
                                (*temp_s0_6)->unk5 = (u8)1;
                                (*temp_s0_6)->unk8 = temp_f20_4;
                                (*temp_s0_6)->unkC = (f32) (-anim->scale - (f32) anim->unk78);
                                (*temp_s0_6)->unk1C = 0.0f;
                            }
                            temp_s1_5 = phi_s1_5 + 1;
                            phi_s2_5 = phi_s2_5 >> 1;
                            phi_s1_5 = temp_s1_5;
                            if (temp_s1_5 != 0xA) {
                                goto loop_66;
                            }
                        }
                        if (temp_v0_3 == 0xA) {
                            anim->scale = (f32) (anim->scale + temp_f20_4);
                        }
                        break;
                    case 14:
                        anim->command++;
                        // temp_f0 = -anim->scale;
                        anim->unk7C = -anim->scale;
                        anim->unk4->unk40 = -anim->scale;
                        if (anim->unk55 != 0) {
                            if (anim->unk4->unk48 != NULL) {
                                anim->unk4->unk48(anim, -2, 0);
                            }
                        }
                        break;
                    case 1:
                        anim->command++;
                        if (anim->unk55 != 0) {
                            if (anim->unk4->unk48 != NULL) {
                                anim->unk4->unk48(anim, -2, 0);
                            }
                        }
                        break;
                    case 12:
                        phi_s2_6 = (*anim->command << 7) >> 0x16;
                        temp_f20_5 = (f32) (u32) (*anim->command & 0x7FFF);
                        anim->command++;
                        phi_s1_6 = 0;
        loop_84:
                        if (phi_s2_6 != 0) {
                            if ((phi_s2_6 & 1) != 0) {
                                temp_s0_7 = &(&sp80)[phi_s1_6];
                                phi_v1_6 = *temp_s0_7;
                                if (*temp_s0_7 == 0) {
                                    temp_v0_9 = HS64_AObjNew(anim, (phi_s1_6 + 1) & 0xFF);
                                    *temp_s0_7 = temp_v0_9;
                                    phi_v1_6 = temp_v0_9;
                                }
                                phi_v1_6->unkC = (f32) (phi_v1_6->unkC + temp_f20_5);
                            }
                            temp_s1_6 = phi_s1_6 + 1;
                            phi_s2_6 = phi_s2_6 >> 1;
                            phi_s1_6 = temp_s1_6;
                            if (temp_s1_6 != 0xA) {
                                goto loop_84;
                            }
                        }
                        break;
                    case 13:
                        anim->command++;
                        if (sp8C == 0) {
                            sp8C = HS64_AObjNew(anim, (u8)4U);
                        }
                        sp8C->unk20 = (s32) *anim->command;
                        anim->command++;
                        goto block_116;
                    case 0:
                        phi_v0_3 = anim->unk6C;
                        phi_f0_3 = anim->scale;
                        phi_f0_4 = anim->scale;
                        if (anim->unk6C != 0) {
        loop_95:
                            phi_f0_6 = phi_f0_3;
                            if (phi_v0_3->unk5 != 0) {
                                phi_v0_3->unkC = (f32) (phi_v0_3->unkC + ((f32) anim->unk78 + phi_f0_3));
                                phi_f0_6 = anim->scale;
                            }
                            temp_v0_10 = phi_v0_3->next;
                            phi_v0_3 = temp_v0_10;
                            phi_f0_3 = phi_f0_6;
                            phi_f0_4 = phi_f0_6;
                            if (temp_v0_10 != 0) {
                                goto loop_95;
                            }
                        }
                        anim->unk7C = phi_f0_4;
                        anim->unk4->unk40 = phi_f0_4;
                        anim->scale = (f32) D_80040704;
                        if (anim->unk55 != 0) {
                            if (anim->unk4->unk48 != 0) {
                                anim->unk4->unk48(anim, -1, 0);
                                return;
                            }
                        }
                    case 15:
                        anim->unk54 = (u8) ((u32) (*anim->command << 7) >> 0x16);
                        temp_t1 = *anim->command & 0x7FFF;
                        temp_f16 = (f32) temp_t1;
                        phi_f16 = temp_f16;
                        if (temp_t1 < 0) {
                            phi_f16 = temp_f16 + 4294967296.0f;
                        }
                        anim->command++;
                        anim->scale += phi_f16;
                        break;
                    case 16:
                        phi_s0_2 = *anim->command;
                        if (anim->unk4->unk48 != 0) {
                            temp_v1_2 = (u32) (*anim->command << 7) >> 0x16;
                            anim->unk4->unk48(anim, temp_v1_2 >> 8, (f32) (u32) (temp_v1_2 & 0xFF));
                            phi_s0_2 = *anim->command;
                        }
                        anim->command++;
                        anim->scale = (f32) (anim->scale + (f32) (u32) (phi_s0_2 & 0x7FFF));
                        break;
                    case 17:
                        temp_s2_7 = (u32) (*anim->command << 7) >> 0x16;
                        temp_f16_2 = anim->scale + (f32) (u32) (*anim->command & 0x7FFF);
                        anim->command++;
                        anim->scale = temp_f16_2;
                        phi_s2_7 = temp_s2_7;
                        phi_s1_7 = 4;
loop_108:
                        if (phi_s2_7 != 0) {
                            if ((phi_s2_7 & 1) != 0) {
                                if (anim->unk4->unk48 != 0) {
                                    anim->unk4->unk48(anim, phi_s1_7, anim->command);
                                }
                                anim->command++;
                            }
                            temp_s1_7 = phi_s1_7 + 1;
                            phi_s2_7 = phi_s2_7 >> 1;
                            phi_s1_7 = temp_s1_7;
                            if (temp_s1_7 != 0xE) {
                                goto loop_108;
                            }
                        }
block_116:
                        if (anim->scale <= 0.0f) {
                            goto loop_12;
                        }

                }
            } else {
                goto block_116;
            }
        }
            temp_f2 = (f32) anim->unk78;
            anim->scale = (anim->scale - temp_f2);
            anim->unk7C = (anim->unk7C + temp_f2);
            anim->unk4->unk40 = anim->unk7C;
            if (!(0.0f < anim->scale)) {
                goto block_4;
            }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000C3D8.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000CE18.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000CECC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000CF84.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000D030.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000D0AC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000D35C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000DE30.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000E324.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000E434.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000E474.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000E4E4.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000E554.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000E818.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000EC98.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000F054.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000F230.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000F448.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000F480.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000F4B0.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000F4E0.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000F510.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000F6EC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000F754.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000F980.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000FB10.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000FCE4.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000FD78.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000FE2C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8000FE64.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_8001074C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_80010988.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_3/func_800109B4.s")
