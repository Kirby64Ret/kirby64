#include "common.h"
#include "ovl1/ovl1_6.h"
#include "ovl2/ovl2_2.h"
#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "sounds.h"

extern struct GObj *D_800DE350[];
s32 func_800B3234(f32 inputX, f32 inputY, f32 inputZ);

void func_8011DD5C(f32 *, f32 *);
void func_8011D40C(void);
u8 func_8011E244(void);
void func_8011E31C(Vector *);
void func_80112A40(s32, Vector *, Vector *);
f32 func_800F8728(s32, f32, f32);
#define M_TAU (2 * M_PIF)

void func_800B35F0(void) {
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E6150[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800E6D90[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
}

void func_800B369C(void) {
    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E3050[omCurrentObj->objId];
    if (gEntitiesAngleXArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleXArray[omCurrentObj->objId] -= M_TAU;
    }
    else if (gEntitiesAngleXArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleXArray[omCurrentObj->objId] += M_TAU;
    }

    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId];
    if (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    else if (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800E33D0[omCurrentObj->objId];
    if (gEntitiesAngleZArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleZArray[omCurrentObj->objId] -= M_TAU;
    }
    else if (gEntitiesAngleZArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] += M_TAU;
    }
}

void func_800B3838(void) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = (D_800E2090[omCurrentObj->objId] += D_800E3050[omCurrentObj->objId]) +
        gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    if (gEntitiesAngleXArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleXArray[omCurrentObj->objId] -= M_TAU;
    }
    else if (gEntitiesAngleXArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleXArray[omCurrentObj->objId] += M_TAU;
    }

    gEntitiesNextPosYArray[omCurrentObj->objId] = (D_800E2250[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId]) +
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    if (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    else if (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    gEntitiesNextPosZArray[omCurrentObj->objId] = (D_800E2410[omCurrentObj->objId] += D_800E33D0[omCurrentObj->objId]) +
        gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    if (gEntitiesAngleZArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleZArray[omCurrentObj->objId] -= M_TAU;
    }
    else if (gEntitiesAngleZArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] += M_TAU;
    }
}

void func_800B3A6C(void) {
    Vector vec;
    struct GeometryBlockHeader *header = gSegment4StartArray[D_800E0D50[omCurrentObj->objId]];

    if (header->lenLayout >= D_800E0F10[omCurrentObj->objId]) {
        func_800B2340(&vec,
                      D_800DFBD0[D_800E0D50[omCurrentObj->objId]][D_800E0F10[omCurrentObj->objId]],
                      D_800E0D50[omCurrentObj->objId]
        );
        
        gEntitiesNextPosXArray[omCurrentObj->objId] =
            (D_800E2090[omCurrentObj->objId] += D_800E3050[omCurrentObj->objId])
          + (vec.x);

        if (gEntitiesAngleXArray[omCurrentObj->objId] >= M_TAU) {
            gEntitiesAngleXArray[omCurrentObj->objId] -= M_TAU;
        } else if (gEntitiesAngleXArray[omCurrentObj->objId] < 0.0f) {
            gEntitiesAngleXArray[omCurrentObj->objId] += M_TAU;
        }

        gEntitiesNextPosYArray[omCurrentObj->objId] =
            (D_800E2250[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId])
          + (vec.y);

        if (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
            gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
        } else if (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
            gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
        }

        gEntitiesNextPosZArray[omCurrentObj->objId] =
            (D_800E2410[omCurrentObj->objId] += D_800E33D0[omCurrentObj->objId])
          + (vec.z);

        if (gEntitiesAngleZArray[omCurrentObj->objId] >= M_TAU) {
            gEntitiesAngleZArray[omCurrentObj->objId] -= M_TAU;
        } else if (gEntitiesAngleZArray[omCurrentObj->objId] < 0.0f) {
            gEntitiesAngleZArray[omCurrentObj->objId] += M_TAU;
        }
    }
}

void func_800B3CEC(void) {
    Vector posVec;
    Vector angleVec;
    
    struct GeometryBlockHeader *header = gSegment4StartArray[D_800E0D50[omCurrentObj->objId]];

    if (header->lenLayout >= D_800E0F10[omCurrentObj->objId]) {
        func_800B2340(&posVec,
                      D_800DFBD0[D_800E0D50[omCurrentObj->objId]][D_800E0F10[omCurrentObj->objId]],
                      D_800E0D50[omCurrentObj->objId]
        );
        func_800B26D8(&angleVec,
                      D_800DFBD0[D_800E0D50[omCurrentObj->objId]][D_800E0F10[omCurrentObj->objId]],
                      D_800E0D50[omCurrentObj->objId]
        );

        gEntitiesNextPosXArray[omCurrentObj->objId] =
            (D_800E2090[omCurrentObj->objId] += D_800E3050[omCurrentObj->objId])
          + (posVec.x);
        gEntitiesAngleXArray[omCurrentObj->objId] = D_800E4A90[omCurrentObj->objId] + angleVec.x;

        if (gEntitiesAngleXArray[omCurrentObj->objId] >= M_TAU) {
            gEntitiesAngleXArray[omCurrentObj->objId] -= M_TAU;
        } else if (gEntitiesAngleXArray[omCurrentObj->objId] < 0.0f) {
            gEntitiesAngleXArray[omCurrentObj->objId] += M_TAU;
        }

        gEntitiesNextPosYArray[omCurrentObj->objId] =
            (D_800E2250[omCurrentObj->objId]+= D_800E3210[omCurrentObj->objId])
          + (posVec.y);
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E4C50[omCurrentObj->objId] + angleVec.y;

        
        if (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
            gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
        } else if (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
            gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
        }

        gEntitiesNextPosZArray[omCurrentObj->objId] =
            (D_800E2410[omCurrentObj->objId] += D_800E33D0[omCurrentObj->objId])
          + (posVec.z);
        gEntitiesAngleZArray[omCurrentObj->objId] = D_800E4E10[omCurrentObj->objId] + angleVec.z;

        if (gEntitiesAngleZArray[omCurrentObj->objId] >= M_TAU) {
            gEntitiesAngleZArray[omCurrentObj->objId] -= M_TAU;
        } else if (gEntitiesAngleZArray[omCurrentObj->objId] < 0.0f) {
            gEntitiesAngleZArray[omCurrentObj->objId] += M_TAU;
        }
    }
}

void func_800B4024(void) {
    D_800E3050[omCurrentObj->objId] += D_800E3590[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] += D_800E3750[omCurrentObj->objId];
    D_800E33D0[omCurrentObj->objId] += D_800E3910[omCurrentObj->objId];
    
    if (D_800E3AD0[omCurrentObj->objId] != 65535.0f) {
        if (D_800E3050[omCurrentObj->objId] > 0.0f) {
            if (D_800E3AD0[omCurrentObj->objId] < D_800E3050[omCurrentObj->objId]) {
                D_800E3050[omCurrentObj->objId] = D_800E3AD0[omCurrentObj->objId];
            }
        } else {
            if (D_800E3050[omCurrentObj->objId] < -D_800E3AD0[omCurrentObj->objId]) {
                D_800E3050[omCurrentObj->objId] = -D_800E3AD0[omCurrentObj->objId];
            }
        }
    }

    if (D_800E3C90[omCurrentObj->objId] != 65535.0f) {
        if (D_800E3210[omCurrentObj->objId] > 0.0f) {
            if (D_800E3C90[omCurrentObj->objId] < D_800E3210[omCurrentObj->objId]) {
                D_800E3210[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
            }
        } else {
            if (D_800E3210[omCurrentObj->objId] < -D_800E3C90[omCurrentObj->objId]) {
                D_800E3210[omCurrentObj->objId] = -D_800E3C90[omCurrentObj->objId];
            }
        }
    }

    if (D_800E3E50[omCurrentObj->objId] != 65535.0f) {
        if (D_800E33D0[omCurrentObj->objId] > 0.0f) {
            if (D_800E3E50[omCurrentObj->objId] < D_800E33D0[omCurrentObj->objId]) {
                D_800E33D0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
            }
        } else {
            if (D_800E33D0[omCurrentObj->objId] < -D_800E3E50[omCurrentObj->objId]) {
                D_800E33D0[omCurrentObj->objId] = -D_800E3E50[omCurrentObj->objId];
            }
        }
    }
}

void func_800B4218(void) {
    D_800E3050[omCurrentObj->objId] += D_800E3590[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] += D_800E3750[omCurrentObj->objId];
    D_800E33D0[omCurrentObj->objId] += D_800E3910[omCurrentObj->objId];

    if (D_800E3AD0[omCurrentObj->objId] != 65535.0f) {
        if (D_800E3590[omCurrentObj->objId] != 0) {
            if (D_800E3590[omCurrentObj->objId] > 0.0f) {
                if (D_800E3050[omCurrentObj->objId] > 0.0f) {
                    if (D_800E3AD0[omCurrentObj->objId] < D_800E3050[omCurrentObj->objId]) {
                        D_800E3050[omCurrentObj->objId] = D_800E3AD0[omCurrentObj->objId];
                    }
                }
            } else {
                if (D_800E3050[omCurrentObj->objId] < 0.0f) {
                    if (D_800E3050[omCurrentObj->objId] < -D_800E3AD0[omCurrentObj->objId]) {
                        D_800E3050[omCurrentObj->objId] = -D_800E3AD0[omCurrentObj->objId];
                    }
                }
            }
        } else {
            if (D_800E3050[omCurrentObj->objId] > 0.0f) {
                if (D_800E3050[omCurrentObj->objId] > 0.0f) {
                    if (D_800E3AD0[omCurrentObj->objId] < D_800E3050[omCurrentObj->objId]) {
                        D_800E3050[omCurrentObj->objId] = D_800E3AD0[omCurrentObj->objId];
                    }
                }
            } else {
                if (D_800E3050[omCurrentObj->objId] < 0.0f) {
                    if (D_800E3050[omCurrentObj->objId] < -D_800E3AD0[omCurrentObj->objId]) {
                        D_800E3050[omCurrentObj->objId] = -D_800E3AD0[omCurrentObj->objId];
                    }
                }
            }
        }
    }
    if (D_800E3C90[omCurrentObj->objId] != 65535.0f) {
        if (D_800E3750[omCurrentObj->objId] != 0) {
            if (D_800E3750[omCurrentObj->objId] > 0.0f) {
                if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                    if (D_800E3C90[omCurrentObj->objId] < D_800E3210[omCurrentObj->objId]) {
                        D_800E3210[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
                    }
                }
            } else {
                if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                    if (D_800E3210[omCurrentObj->objId] < -D_800E3C90[omCurrentObj->objId]) {
                        D_800E3210[omCurrentObj->objId] = -D_800E3C90[omCurrentObj->objId];
                    }
                }
            }
        } else {
            if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                    if (D_800E3C90[omCurrentObj->objId] < D_800E3210[omCurrentObj->objId]) {
                        D_800E3210[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
                    }
                }
            } else {
                if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                    if (D_800E3210[omCurrentObj->objId] < -D_800E3C90[omCurrentObj->objId]) {
                        D_800E3210[omCurrentObj->objId] = -D_800E3C90[omCurrentObj->objId];
                    }
                }
            }
        }
    }
    if (D_800E3E50[omCurrentObj->objId] != 65535.0f) {
        if (D_800E3910[omCurrentObj->objId] != 0) {
            if (D_800E3910[omCurrentObj->objId] > 0.0f) {
                if (D_800E33D0[omCurrentObj->objId] > 0.0f) {
                    if (D_800E3E50[omCurrentObj->objId] < D_800E33D0[omCurrentObj->objId]) {
                        D_800E33D0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
                    }
                }
            } else {
                if (D_800E33D0[omCurrentObj->objId] < 0.0f) {
                    if (D_800E33D0[omCurrentObj->objId] < -D_800E3E50[omCurrentObj->objId]) {
                        D_800E33D0[omCurrentObj->objId] = -D_800E3E50[omCurrentObj->objId];
                    }
                }
            }
        } else {
            if (D_800E33D0[omCurrentObj->objId] > 0.0f) {
                if (D_800E33D0[omCurrentObj->objId] > 0.0f) {
                    if (D_800E3E50[omCurrentObj->objId] < D_800E33D0[omCurrentObj->objId]) {
                        D_800E33D0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
                    }
                }
            } else {
                if (D_800E33D0[omCurrentObj->objId] < 0.0f) {
                    if (D_800E33D0[omCurrentObj->objId] < -D_800E3E50[omCurrentObj->objId]) {
                        D_800E33D0[omCurrentObj->objId] = -D_800E3E50[omCurrentObj->objId];
                    }
                }
            }
        }
    }
}

void func_800B4640(void) {
    D_800E3210[omCurrentObj->objId] += D_800E3750[omCurrentObj->objId];

    if (D_800E3C90[omCurrentObj->objId] != 65535.0f) {
        if (D_800E3210[omCurrentObj->objId] > 0.0f) {
            if (D_800E3C90[omCurrentObj->objId] < D_800E3210[omCurrentObj->objId]) {
                D_800E3210[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
            }
        } else {
            if (D_800E3210[omCurrentObj->objId] < -D_800E3C90[omCurrentObj->objId]) {
                D_800E3210[omCurrentObj->objId] = -D_800E3C90[omCurrentObj->objId];
            }
        }
    }
}

void func_800B46F8(void) {
    D_800E3210[omCurrentObj->objId] += D_800E3750[omCurrentObj->objId];

    if (D_800E3C90[omCurrentObj->objId] != 65535.0f) {
        if (D_800E3750[omCurrentObj->objId] != 0) {
            if (D_800E3750[omCurrentObj->objId] > 0.0f) {
                if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                    if (D_800E3C90[omCurrentObj->objId] < D_800E3210[omCurrentObj->objId]) {
                        D_800E3210[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
                    }
                }
            } else {
                if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                    if (D_800E3210[omCurrentObj->objId] < -D_800E3C90[omCurrentObj->objId]) {
                        D_800E3210[omCurrentObj->objId] = -D_800E3C90[omCurrentObj->objId];
                    }
                }
            }
        } else {
            if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                    if (D_800E3C90[omCurrentObj->objId] < D_800E3210[omCurrentObj->objId]) {
                        D_800E3210[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
                    }
                }
            } else {
                if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                    if (D_800E3210[omCurrentObj->objId] < -D_800E3C90[omCurrentObj->objId]) {
                        D_800E3210[omCurrentObj->objId] = -D_800E3C90[omCurrentObj->objId];
                    }
                }
            }
        }
    }
}

void func_800B4864(void) {
    D_800E64D0[omCurrentObj->objId] += D_800E6690[omCurrentObj->objId];
    
    if (D_800E6850[omCurrentObj->objId] != 65535.0f) {
        if (D_800E64D0[omCurrentObj->objId] > 0.0f) {
            if (D_800E6850[omCurrentObj->objId] < D_800E64D0[omCurrentObj->objId]) {
                D_800E64D0[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
            }
        } else {
            if (D_800E64D0[omCurrentObj->objId] < -D_800E6850[omCurrentObj->objId]) {
                D_800E64D0[omCurrentObj->objId] = -D_800E6850[omCurrentObj->objId];
            }
        }
    }
}

void func_800B491C(GObj *gobj) {

}

void func_800B4924(GObj *gobj) {
    func_800B35F0();
    func_800B4024();
    func_800B369C();
}

void func_800B4954(GObj *gobj) {
    f32 temp;

    func_800B35F0();
    func_800B4864();
    temp = D_800E64D0[omCurrentObj->objId];

    D_800E64D0[omCurrentObj->objId] += (D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId]);
    func_800F8E6C(gobj);
    D_800E64D0[omCurrentObj->objId] = temp;
    func_800B4640();
    func_800B369C();
}

void func_800B49F8(GObj *gobj) {
    f32 tmp;

    func_800B35F0();
    func_800B4864();
    tmp = D_800E64D0[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] += (D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId]);
    func_800F8E6C(gobj);
    D_800E64D0[omCurrentObj->objId] = tmp;
    func_800B4640();
    func_800B369C();
    if (func_800B3158() == 0) {
        func_800B1900((u16) omCurrentObj->objId);
    }
}

void func_800B4AB8(GObj *gobj) {
    func_800B35F0();
    func_800B4024();
    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E3050[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId];

    if (gEntitiesAngleZArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleZArray[omCurrentObj->objId] -= M_TAU;
    } else if (gEntitiesAngleZArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] += M_TAU;
    }
}

void func_800B4B9C(GObj *gobj) {
    func_800B35F0();
    func_800B4024();
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800E4A90[omCurrentObj->objId] + gEntitiesAngleXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E4C50[omCurrentObj->objId] + gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesAngleZArray[omCurrentObj->objId] = D_800E4E10[omCurrentObj->objId] + gEntitiesAngleZArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleXArray[omCurrentObj->objId] = D_800E4FD0[omCurrentObj->objId] * gEntitiesScaleXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleYArray[omCurrentObj->objId] = D_800E5190[omCurrentObj->objId] * gEntitiesScaleYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleZArray[omCurrentObj->objId] = D_800E5350[omCurrentObj->objId] * gEntitiesScaleZArray[D_800E0D50[omCurrentObj->objId]];
    func_800B3838();
}

void func_800B4D40(GObj *gobj) {
    func_800B35F0();
    func_800B4024();
    func_800B3838();
}

void func_800B4D70(GObj *gobj) {
    func_800B35F0();
    func_800B4024();

    gEntitiesAngleXArray[omCurrentObj->objId] = D_800E4A90[omCurrentObj->objId] + gEntitiesAngleXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E4C50[omCurrentObj->objId] + gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesAngleZArray[omCurrentObj->objId] = D_800E4E10[omCurrentObj->objId] + gEntitiesAngleZArray[D_800E0D50[omCurrentObj->objId]];

    func_800B3838();

    gEntitiesNextPosYArray[omCurrentObj->objId] += 20.0f;
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B4EBC(GObj *gobj) {
    func_800B35F0();
    func_800B4024();
    func_800B3838();

    gEntitiesNextPosYArray[omCurrentObj->objId] += 20.0f;

    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B4F48(GObj *gobj) {
    func_800B35F0();
    func_800B4024();

    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E3050[omCurrentObj->objId] + gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId] + gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];

    if (gEntitiesAngleZArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleZArray[omCurrentObj->objId] = gEntitiesAngleZArray[omCurrentObj->objId] - M_TAU;
        return;
    }
    if (gEntitiesAngleZArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] = gEntitiesAngleZArray[omCurrentObj->objId] + M_TAU;
    }
}

void func_800B5064(GObj *gobj) {
    func_800B35F0();
    func_800B4024();
    func_800B3A6C();
}

void func_800B5094(GObj *gobj) {
    func_800B35F0();
    func_800B4024();
    func_800B3CEC();
}

#ifdef NON_MATCHING
void func_800B50C4(Vector *vec) {
    s32 var_v0;

    var_v0 = 0;
    if (vec->z != 65535.0f) {
        if (vec->y < 0.0f) {
            goto block_5;
        }
        if ((vec->y == 0.0f) && (vec->x < 0.0f)) {
block_5:
            var_v0 = -1;
        }
        if (var_v0 == 0) {
            if ((ABS(vec->x) + vec->z) != 0.0f) {
                if (vec->x > 0.0f) {
                    if (vec->x != vec->z) {
                        if (vec->z < vec->x) {
                            if ((vec->x - vec->y) < vec->z) {
                                vec->x = vec->z;
                                vec->y = 0.0f;
                                return;
                            }
                            if (vec->y != 0.0f) {
                                vec->y = -vec->y;
                                return;
                            }
                            vec->x = vec->z;
                        }
                    } else {
                        vec->x = vec->z;
                        vec->y = 0.0f;
                    }
                }
            } else {
                vec->z = 0.0f;
                vec->y = 0.0f;
                vec->x = 0.0f;
            }
        } else {
            if ((ABS(-vec->z) + ABS(vec->x)) != 0.0f) {
                if (vec->x < 0.0f) {
                    if (vec->x != -vec->z) {
                        if (vec->x < -vec->z) {
                            if (-vec->z < (vec->x - vec->y)) {
                                vec->x = -vec->z;
                                vec->y = 0.0f;
                            } else if (vec->y != 0.0f) {
                                vec->y = -vec->y;
                            } else {
                                vec->x = -vec->z;
                            }
                        }
                    } else {
                        vec->x = -vec->z;
                        vec->y = 0.0f;
                    }
                }
            } else {
                vec->z = 0.0f;
                vec->y = 0.0f;
                vec->x = 0.0f;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_8/func_800B50C4.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: DIFF 469/480 -- ONE decision, whole-body shift. The ROM holds
 * &gKirbyState in $a3 across the entire function (lui/addiu once, then
 * 0x18($a3), 0x164($a3) ...); IDO here folds the address into every access
 * as its own %hi/%lo pair, which re-rolls the register assignment and the
 * frame from the first instruction on. That decision is driven by the object
 * being a COMPLETE struct accessed by member, and this TU cannot see one:
 * gKirbyState is declared `extern struct Player` (incomplete) by ovl2_8.h and
 * Player.h is included only inside the PORT arm. A local struct view reached
 * through a pointer (used here, `ks`) does not reproduce it -- measured
 * unchanged under `register`, and under moving the base assignment after the
 * first call. NEXT STEP for whoever holds the whole-TU gate: include
 * Player.h at FILE SCOPE for the N64 build and access gKirbyState.<field>
 * directly; that is a file-scope change (it also prototypes functions this TU
 * currently calls implicitly) so it must be A/B'd against every already
 * matched function in ovl1_8.c, which is outside this lane's remit.
 * Everything else is solved and matches the listing: func_8011D40C and
 * func_8011E244 take NO arguments (m2c's extra args are leftover registers),
 * func_800F8728 is 3-arg with the &gKirbyState 4th register left over,
 * D_800DE350[objId] is a GObj* load re-read for each of the two calls, the
 * platform slot 0x14 sentinel logic writes plat through the 0x48(sp) home in
 * both arms, and the death floor is -10000.0f with D_800E3C90 set to
 * 65535.0f. Local frame layout to reproduce: spd 0x64, fwd 0x58, push 0x54,
 * pushY 0x50, plat 0x48, platIn 0x3C, platOut 0x30. */
void func_800B531C(struct GObj *arg0) {
    /* Local view of gKirbyState (0x8012E7C0). Player.h is not included by
     * this TU on the N64 side and must not be added at file scope, so the
     * fields this function touches are spelled at their real offsets here. */
    struct KState {
        /* 0x000 */ u32 actionChange;
        /* 0x004 */ u8 unk4;
        /* 0x005 */ u8 action;
        /* 0x006 */ u8 pad6[0x12];
        /* 0x018 */ u8 unk18;
        /* 0x019 */ u8 pad19[0xE4 - 0x19];
        /* 0x0E4 */ u32 ceilingCollisionNext;
        /* 0x0E8 */ u8 padE8[0xFC - 0xE8];
        /* 0x0FC */ u32 horizontalCollision;
        /* 0x100 */ u16 ceilingType;
        /* 0x102 */ u16 floorType;
        /* 0x104 */ u16 unk104;
        /* 0x106 */ u16 unk106;
        /* 0x108 */ u8 pad108[0x160 - 0x108];
        /* 0x160 */ u16 unk160;
        /* 0x162 */ u16 unk162;
        /* 0x164 */ f32 unk164;
        /* 0x168 */ f32 unk168;
        /* 0x16C */ u32 unk16C;
        /* 0x170 */ u32 unk170;
        /* 0x174 */ f32 forwardVel;
        /* 0x178 */ f32 vel[3];
    };
    extern f32 D_800E5510[];
    extern f32 D_800E5C10[];
    extern s32 D_800D6B54;
    extern f32 gKirbyHp;
    Vector spd;
    f32 fwd;
    f32 push;
    f32 pushY;
    s32 plat;
    Vector platIn;
    Vector platOut;
    GObj *obj;
    u32 id;
    f32 damp;
    f32 knock;
    f32 savedVelY;
    struct KState *ks;

    ks = (struct KState *) &gKirbyState;
    func_800B35F0();
    if (ks->unk18 == 0) {
        ks->forwardVel = D_800E64D0[omCurrentObj->objId];
        ks->vel[0] = D_800E3050[omCurrentObj->objId];
        ks->vel[1] = D_800E3210[omCurrentObj->objId];
        ks->vel[2] = D_800E33D0[omCurrentObj->objId];
        spd.x = D_800E64D0[omCurrentObj->objId];
        spd.y = D_800E6690[omCurrentObj->objId];
        spd.z = D_800E6850[omCurrentObj->objId];
        func_800B50C4(&spd);
        fwd = spd.x + spd.y;
    }
    func_8011DD5C(&push, &pushY);
    if (ks->unk18 != 0) {
        D_800E6850[omCurrentObj->objId] = 0.0f;
        id = omCurrentObj->objId;
        D_800E6690[id] = D_800E6850[id];
        fwd = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6850[id];
    } else if (D_800D6B54 == 0) {
        id = omCurrentObj->objId;
        D_800E64D0[id] = D_800E5510[id] + fwd + push;
        if (ks->unk160 == 0) {
            if (ks->unk164 != 0.0f) {
                if (D_800E8920[omCurrentObj->objId] != 0) {
                    ks->unk164 = 0.0f;
                } else if ((ks->horizontalCollision != 0) && (ks->unk104 != 2) && (ks->unk106 != 2)) {
                    ks->unk164 = 0.0f;
                } else {
                    if (ks->action == 9) {
                        damp = 0.5f;
                    } else {
                        damp = 0.1f;
                    }
                    if (ks->unk164 > 0.0f) {
                        ks->unk164 -= damp;
                        if (ks->unk164 < 0.0f) {
                            ks->unk164 = 0.0f;
                        }
                    } else {
                        ks->unk164 += damp;
                        if (ks->unk164 > 0.0f) {
                            ks->unk164 = 0.0f;
                        }
                    }
                    D_800E64D0[omCurrentObj->objId] += ks->unk164;
                }
            }
            if (ks->unk168 != 0.0f) {
                if (ks->ceilingCollisionNext != 0) {
                    ks->unk168 = 0.0f;
                } else {
                    if (ks->action == 9) {
                        damp = 1.28f;
                    } else {
                        damp = 1.14f;
                    }
                    if (ks->unk168 > 0.0f) {
                        ks->unk168 -= damp;
                        if (ks->unk168 < 0.0f) {
                            ks->unk168 = 0.0f;
                        }
                    } else {
                        ks->unk168 += damp;
                        if (ks->unk168 > 0.0f) {
                            ks->unk168 = 0.0f;
                        }
                    }
                    gEntitiesNextPosYArray[omCurrentObj->objId] += ks->unk168;
                }
            }
        }
    }
    ks->unk170 = D_800E5F90[omCurrentObj->objId];
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    func_800F8C70(D_800DE350[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] = fwd;
    func_800B46F8();
    obj = omCurrentObj;
    id = obj->objId;
    savedVelY = D_800E3210[id];
    if (D_800D6B54 == 0) {
        D_800E3210[id] = savedVelY + (D_800E5C10[id] + pushY);
    }
    gEntitiesNextPosXArray[obj->objId] += D_800E3050[obj->objId];
    gEntitiesNextPosYArray[obj->objId] += D_800E3210[obj->objId];
    gEntitiesNextPosZArray[obj->objId] += D_800E33D0[obj->objId];
    D_800E3210[obj->objId] = savedVelY;
    if (gEntitiesNextPosYArray[obj->objId] < -10000.0f) {
        D_800E3750[obj->objId] = 0.0f;
        D_800E3210[obj->objId] = D_800E3750[obj->objId];
        D_800E3C90[obj->objId] = 65535.0f;
        func_8011D40C();
        gEntitiesNextPosYArray[obj->objId] = -10000.0f;
    }
    if (gKirbyHp != 0.0f) {
        plat = 0x14;
        if (ks->unk162 == 0x14) {
            if (D_800E8920[obj->objId] != 0) {
                plat = func_8011E244();
            }
        } else {
            plat = ks->unk162;
        }
        if (plat != 0x14) {
            func_8011E31C(&platIn);
            func_80112A40(plat, &platIn, &platOut);
            if ((platOut.x != 0.0f) || (platOut.z != 0.0f)) {
                knock = func_800F8728(omCurrentObj->objId, platOut.x, platOut.z);
            } else {
                knock = 0.0f;
            }
            gEntitiesNextPosXArray[omCurrentObj->objId] += platOut.x;
            gEntitiesNextPosYArray[omCurrentObj->objId] += platOut.y;
            ks->unk160 = 1;
            ks->unk164 = knock;
            ks->unk168 = platOut.y;
            gEntitiesNextPosZArray[omCurrentObj->objId] += platOut.z;
            return;
        }
        ks->unk160 = 0;
        return;
    }
    ks->unk168 = 0.0f;
    ks->unk160 = 0;
    ks->unk164 = ks->unk168;
}
#elif defined(PORT)
/* PORT: Kirby's per-frame movement tick (registered by plyInit as the
 * player GObj's motion callback), from asm/nonmatchings/ovl1/ovl1_8/
 * func_800B531C.s -- the m2c sketch above garbles the D_800DE350 loads and
 * the moving-platform tail. Flow: read input velocity (func_800B50C4 on
 * the {speed, accel, cap} triple), add conveyor push (func_8011DD5C),
 * damp the knockback terms, seat on the track (func_800F8E6C /
 * func_800F8C70), integrate X/Y/Z, handle the death-pit floor at -10000,
 * then apply the moving-platform delta (func_80112A40 / func_800F8728). */
#include "Player.h"

void func_800B531C(struct GObj *arg0) {
    extern f32 D_800E5510[];
    extern f32 D_800E5C10[];
    extern s32 D_800D6B54;
    extern f32 gKirbyHp;
    Vector spd;      /* sp64: {forward speed, base accel, cap} */
    Vector platIn;   /* sp3C */
    Vector platOut;  /* sp30 */
    f32 fwd = 0.0f;  /* sp58 */
    f32 push;        /* sp54 */
    f32 pushY;       /* sp50: float bits through DD5C's second out param */
    f32 savedVelY;
    f32 damp;
    s32 objId;
    s32 plat;

    (void) arg0;
    func_800B35F0();
    objId = omCurrentObj->objId;
    if (gKirbyState.unk18 == 0) {
        gKirbyState.forwardVel = D_800E64D0[objId];
        gKirbyState.vel[0] = D_800E3050[objId];
        gKirbyState.vel[1] = D_800E3210[objId];
        gKirbyState.vel[2] = D_800E33D0[objId];
        spd.x = D_800E64D0[objId];
        spd.y = D_800E6690[objId];
        spd.z = D_800E6850[objId];
        func_800B50C4(&spd);
        fwd = spd.x + spd.y;
    }
    func_8011DD5C(&push, &pushY);
    if (gKirbyState.unk18 != 0) {
        D_800E6850[objId] = 0.0f;
        D_800E6690[objId] = D_800E6850[objId];
        fwd = 0.0f;
        D_800E64D0[objId] = 0.0f;
    } else if (D_800D6B54 == 0) {
        D_800E64D0[objId] = D_800E5510[objId] + fwd + push;
        if (gKirbyState.unk160 == 0) {
            if (gKirbyState.unk164 != 0.0f) {
                if (D_800E8920[objId] != 0) {
                    gKirbyState.unk164 = 0.0f;
                } else if ((gKirbyState.horizontalCollision != 0) &&
                           (gKirbyState.unk104 != 2) &&
                           (gKirbyState.unk106 != 2)) {
                    gKirbyState.unk164 = 0.0f;
                } else {
                    damp = (gKirbyState.action == 9) ? 0.5f : 0.1f;
                    if (gKirbyState.unk164 > 0.0f) {
                        gKirbyState.unk164 -= damp;
                        if (gKirbyState.unk164 < 0.0f) {
                            gKirbyState.unk164 = 0.0f;
                        }
                    } else {
                        gKirbyState.unk164 += damp;
                        if (gKirbyState.unk164 > 0.0f) {
                            gKirbyState.unk164 = 0.0f;
                        }
                    }
                    D_800E64D0[objId] += gKirbyState.unk164;
                }
            }
            if (gKirbyState.unk168 != 0.0f) {
                if (gKirbyState.ceilingCollisionNext != 0) {
                    gKirbyState.unk168 = 0.0f;
                } else {
                    damp = (gKirbyState.action == 9) ? 1.28f : 1.14f;
                    if (gKirbyState.unk168 > 0.0f) {
                        gKirbyState.unk168 -= damp;
                        if (gKirbyState.unk168 < 0.0f) {
                            gKirbyState.unk168 = 0.0f;
                        }
                    } else {
                        gKirbyState.unk168 += damp;
                        if (gKirbyState.unk168 > 0.0f) {
                            gKirbyState.unk168 = 0.0f;
                        }
                    }
                    gEntitiesNextPosYArray[objId] += gKirbyState.unk168;
                }
            }
        }
    }
    objId = omCurrentObj->objId;
    gKirbyState.unk170 = D_800E5F90[objId];
    func_800F8E6C(D_800DE350[objId]);
    func_800F8C70(D_800DE350[omCurrentObj->objId]);
    D_800E64D0[objId] = fwd;
    func_800B46F8();
    objId = omCurrentObj->objId;
    savedVelY = D_800E3210[objId];
    if (D_800D6B54 == 0) {
        D_800E3210[objId] = savedVelY + (D_800E5C10[objId] + pushY);
    }
    gEntitiesNextPosXArray[objId] += D_800E3050[objId];
    gEntitiesNextPosYArray[objId] += D_800E3210[objId];
    gEntitiesNextPosZArray[objId] += D_800E33D0[objId];
    D_800E3210[objId] = savedVelY;
    if (gEntitiesNextPosYArray[objId] < -10000.0f) {
        D_800E3750[objId] = 0.0f;
        D_800E3210[objId] = D_800E3750[objId];
        D_800E3C90[objId] = 65535.0f;
        func_8011D40C();
        gEntitiesNextPosYArray[objId] = -10000.0f;
    }
    if (gKirbyHp != 0.0f) {
        plat = 0x14;
        if (gKirbyState.unk162 == 0x14) {
            if (D_800E8920[objId] != 0) {
                plat = func_8011E244();
            }
        } else {
            plat = gKirbyState.unk162;
        }
        if (plat != 0x14) {
            f32 knock;

            func_8011E31C(&platIn);
            func_80112A40(plat, &platIn, &platOut);
            if ((platOut.x != 0.0f) || (platOut.z != 0.0f)) {
                knock = func_800F8728(objId, platOut.x, platOut.z);
            } else {
                knock = 0.0f;
            }
            gEntitiesNextPosXArray[objId] += platOut.x;
            gEntitiesNextPosYArray[objId] += platOut.y;
            gKirbyState.unk160 = 1;
            gKirbyState.unk164 = knock;
            gKirbyState.unk168 = platOut.y;
            gEntitiesNextPosZArray[objId] += platOut.z;
            return;
        }
        gKirbyState.unk160 = 0;
        return;
    }
    gKirbyState.unk168 = 0.0f;
    gKirbyState.unk160 = 0;
    gKirbyState.unk164 = gKirbyState.unk168;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_8/func_800B531C.s")
#endif

void func_800B5A7C(GObj *gobj) {
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E6150[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800E6D90[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];

    D_800E64D0[omCurrentObj->objId] += D_800E6690[omCurrentObj->objId];

    D_800E3210[omCurrentObj->objId] += D_800E3750[omCurrentObj->objId];
    
    if (D_800E6850[omCurrentObj->objId] < D_800E64D0[omCurrentObj->objId]) {
        D_800E64D0[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
    } else if (D_800E64D0[omCurrentObj->objId] < -D_800E6850[omCurrentObj->objId]) {
        D_800E64D0[omCurrentObj->objId] = -D_800E6850[omCurrentObj->objId];
    }

    if (D_800E3C90[omCurrentObj->objId] < D_800E3210[omCurrentObj->objId]) {
        D_800E3210[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    } else if (D_800E3210[omCurrentObj->objId] < -D_800E3C90[omCurrentObj->objId]) {
        D_800E3210[omCurrentObj->objId] = -D_800E3C90[omCurrentObj->objId];
    }
}

void func_800B5C28(GObj *gobj) {
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] += D_800E3590[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] += D_800E3750[omCurrentObj->objId];
    D_800E33D0[omCurrentObj->objId] += D_800E3910[omCurrentObj->objId];

    if (D_800E3AD0[omCurrentObj->objId] < D_800E3050[omCurrentObj->objId]) {
        D_800E3050[omCurrentObj->objId] = D_800E3AD0[omCurrentObj->objId];
    } else if (D_800E3050[omCurrentObj->objId] < -D_800E3AD0[omCurrentObj->objId]) {
        D_800E3050[omCurrentObj->objId] = -D_800E3AD0[omCurrentObj->objId];
    }

    if (D_800E3C90[omCurrentObj->objId] < D_800E3210[omCurrentObj->objId]) {
        D_800E3210[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    } else if (D_800E3210[omCurrentObj->objId] < -D_800E3C90[omCurrentObj->objId]) {
        D_800E3210[omCurrentObj->objId] = -D_800E3C90[omCurrentObj->objId];
    }
    
    if (D_800E3E50[omCurrentObj->objId] < D_800E33D0[omCurrentObj->objId]) {
        D_800E33D0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    } else if (D_800E33D0[omCurrentObj->objId] < -D_800E3E50[omCurrentObj->objId]) {
        D_800E33D0[omCurrentObj->objId] = -D_800E3E50[omCurrentObj->objId];
    }
}

void func_800B5E14(GObj *gobj) {
    while (gEntitiesAngleXArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleXArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleXArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleXArray[omCurrentObj->objId] += M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    while (gEntitiesAngleZArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleZArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleZArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] += M_TAU;
    }
}

void func_800B5FBC(GObj *gobj) {
    gEntitiesAngleXArray[omCurrentObj->objId] += D_800E4A90[omCurrentObj->objId];
    gEntitiesAngleYArray[omCurrentObj->objId] += D_800E4C50[omCurrentObj->objId];
    gEntitiesAngleZArray[omCurrentObj->objId] += D_800E4E10[omCurrentObj->objId];
    func_800B5E14(gobj);
}

void func_800B6064(GObj *gobj) {
    gEntitiesAngleXArray[omCurrentObj->objId] = gEntitiesAngleXArray[D_800E0D50[omCurrentObj->objId]] + D_800E4A90[omCurrentObj->objId];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]] + D_800E4C50[omCurrentObj->objId];
    gEntitiesAngleZArray[omCurrentObj->objId] = gEntitiesAngleZArray[D_800E0D50[omCurrentObj->objId]] + D_800E4E10[omCurrentObj->objId];
    func_800B5E14(gobj);
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 38/90. Body, branch shape and call sequence are right; the
 * residue is the local-block base and the caller-saved register names that
 * follow it. The ROM lays slot at 0x3C ABOVE both Vectors (pos 0x30, delta
 * 0x24) in a frame of 0x48; IDO segregates aggregates high and scalars low,
 * so ours puts the Vectors at the top and slot at 0x1C, frame 0x50. Measured
 * alternatives: writing the two Vectors as six loose f32 scalars DOES put
 * slot above them and gives the exact 0x48 frame, but shifts the whole block
 * +8 and rerolls every register (84/89); dropping the slot scalar fixes the
 * frame the other way and costs register names (56/90). Stack-offset class.
 * Solved semantics: func_80112A40 is a 3-arg call (the ROM's $a3 is the
 * leftover objId*4 index, not an argument), the slot byte 0x14 is the
 * "not riding anything" sentinel, and the lateral report to func_800F8728
 * is guarded by (delta.x != 0 || delta.z != 0). */
void func_800B6144(s32 arg0) {
    s32 slot;
    Vector pos;
    Vector delta;
    u32 objId;
    struct EnemyProbe *rec;
    u8 kind;

    objId = omCurrentObj->objId;
    rec = D_800E1B50[objId]->unk84;
    if ((D_800E8920[objId] != 0) && (rec != NULL)) {
        kind = rec->unk50;
        slot = kind;
        if (kind != 0x14) {
            pos.x = gEntitiesNextPosXArray[objId];
            pos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
            pos.z = gEntitiesNextPosZArray[omCurrentObj->objId];
            func_80112A40(kind, &pos, &delta);
            if ((delta.x != 0.0f) || (delta.z != 0.0f)) {
                func_800F8728(omCurrentObj->objId, delta.x, delta.z);
            }
            gEntitiesNextPosXArray[omCurrentObj->objId] += delta.x;
            gEntitiesNextPosYArray[omCurrentObj->objId] += delta.y;
            gEntitiesNextPosZArray[omCurrentObj->objId] += delta.z;
        }
    }
}
#elif defined(PORT)
/* Ride-the-platform step (draft above, completed): when the entity stands
 * on a dynamic collider (slot byte != 0x14), fetch that collider's frame
 * delta (func_80112A40) and carry the entity's next position with it,
 * reporting the lateral part to func_800F8728 first. */
void func_800B6144(s32 arg0) {
    u32 objId = omCurrentObj->objId;
    struct EnemyProbe *rec = D_800E1B50[objId]->unk84;

    if (D_800E8920[objId] != 0 && rec != NULL) {
        u8 slot = rec->unk50;

        if (slot != 0x14) {
            Vector pos, delta;

            pos.x = gEntitiesNextPosXArray[objId];
            pos.y = gEntitiesNextPosYArray[objId];
            pos.z = gEntitiesNextPosZArray[objId];
            func_80112A40(slot, &pos, &delta);
            if (delta.x != 0.0f || delta.z != 0.0f) {
                func_800F8728(objId, delta.x, delta.z);
            }
            gEntitiesNextPosXArray[objId] += delta.x;
            gEntitiesNextPosYArray[objId] += delta.y;
            gEntitiesNextPosZArray[objId] += delta.z;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_8/func_800B6144.s")
#endif

void func_800B62AC(GObj *gobj) {
    func_800B5A7C(gobj);
    D_800E64D0[omCurrentObj->objId] += (D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId]);
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] -= (D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId]);
    gEntitiesNextPosYArray[omCurrentObj->objId] += (D_800E3210[omCurrentObj->objId] + D_800E5C10[omCurrentObj->objId] + D_800E5890[omCurrentObj->objId]);
    func_800B5FBC(gobj);
}

void func_800B63C0(GObj *gobj) {
    func_800B5C28(gobj);
    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E3050[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800E33D0[omCurrentObj->objId];
    func_800B5FBC(gobj);
}

void func_800B6474(GObj *gobj) {
    func_800B62AC(gobj);
    func_800B6144(gobj);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];
    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B658C(GObj *gobj) {
    func_800B62AC(gobj);
    func_800B6144(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B31B4();
}

void func_800B6684(GObj *gobj) {
    func_800B62AC(gobj);
    func_800B6144(gobj);
    gEntitiesAngleYArray[omCurrentObj->objId] =
        (D_800E17D0[omCurrentObj->objId])
      + (D_800E6A10[omCurrentObj->objId] * (-M_PIF / 2));

    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B67A8(GObj *gobj) {
    func_800B62AC(gobj);
    func_800B6144(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = 
           D_800E17D0[omCurrentObj->objId]
        + (D_800E6A10[omCurrentObj->objId] * (-M_PIF / 2));
    
    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B31B4();
}

void func_800B68AC(GObj *gobj) {
    D_800E5510[omCurrentObj->objId] =
    D_800E56D0[omCurrentObj->objId] =
    D_800E5C10[omCurrentObj->objId] = D_800E5890[omCurrentObj->objId] = 0.0f;

    func_800B62AC(gobj);
    func_800B6144(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B6A2C(GObj *gobj) {
    D_800E5510[omCurrentObj->objId] =
    D_800E56D0[omCurrentObj->objId] =
    D_800E5C10[omCurrentObj->objId] = D_800E5890[omCurrentObj->objId] = 0.0f;
    func_800B62AC(gobj);
    func_800B6144(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B31B4();
}

void func_800B6B8C(GObj *gobj) {
    D_800E5510[omCurrentObj->objId] =
    D_800E56D0[omCurrentObj->objId] =
    D_800E5C10[omCurrentObj->objId] = D_800E5890[omCurrentObj->objId] = 0.0f;

    func_800B62AC(gobj);
    func_800B6144(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = 
        D_800E17D0[omCurrentObj->objId]
     + (D_800E6A10[omCurrentObj->objId] * (-M_PIF / 2));

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B31B4();
}

void func_800B6CF8(GObj *gobj) {
    D_800E5510[omCurrentObj->objId] =
    D_800E56D0[omCurrentObj->objId] =
    D_800E5C10[omCurrentObj->objId] = D_800E5890[omCurrentObj->objId] = 0.0f;

    func_800B62AC(gobj);
    func_800B6144(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] =
        D_800E17D0[omCurrentObj->objId]
     + (D_800E6A10[omCurrentObj->objId] * (-M_PIF / 2));

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B6E84(GObj *gobj) {
    D_800E5510[omCurrentObj->objId] =
    D_800E56D0[omCurrentObj->objId] =
    D_800E5C10[omCurrentObj->objId] = D_800E5890[omCurrentObj->objId] = 0.0f;

    func_800B62AC(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];


    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    
    func_800B31B4();
}

void func_800B6FD8(GObj *gobj) {
    D_800E5510[omCurrentObj->objId] =
    D_800E56D0[omCurrentObj->objId] =
    D_800E5C10[omCurrentObj->objId] = D_800E5890[omCurrentObj->objId] = 0.0f;

    func_800B62AC(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] =
        D_800E17D0[ omCurrentObj->objId]
     + (D_800E6A10[ omCurrentObj->objId] * (-M_PIF / 2));

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    func_800B31B4();
}

void func_800B7138(GObj *gobj) {
    D_800E5510[omCurrentObj->objId] =
    D_800E56D0[omCurrentObj->objId] =
    D_800E5C10[omCurrentObj->objId] = D_800E5890[omCurrentObj->objId] = 0.0f;

    func_800B62AC(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B72AC(GObj *gobj) {
    D_800E5510[omCurrentObj->objId] =
    D_800E56D0[omCurrentObj->objId] =
    D_800E5C10[omCurrentObj->objId] = D_800E5890[omCurrentObj->objId] = 0.0f;

    func_800B62AC(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] =
        D_800E17D0[omCurrentObj->objId]
     + (D_800E6A10[omCurrentObj->objId] * (-M_PIF / 2));

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B742C(GObj *gobj) {
    D_800E5510[omCurrentObj->objId] =
    D_800E56D0[omCurrentObj->objId] =
    D_800E5C10[omCurrentObj->objId] = D_800E5890[omCurrentObj->objId] = 0.0f;

    func_800B62AC(gobj);
    func_800B31B4();
}

void func_800B74B8(GObj *gobj) {
    func_800B31B4();
}

void func_800B74D8(GObj *gobj) {
    func_800B63C0(gobj);
    if (func_800B3158() == 0) {
        func_800B1900((u16) omCurrentObj->objId);
    }
}

void func_800B7514(GObj *gobj) {
    func_800B63C0(gobj);
    func_800B31B4();
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];
}

void func_800B7560(GObj *gobj) {

    func_800B63C0(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = 
        D_800E17D0[omCurrentObj->objId]
     + (D_800E6A10[omCurrentObj->objId] == 1.0f ? (-M_PIF / 2) : (M_PIF / 2));

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
}

void func_800B7674(GObj *gobj) {
    func_800B63C0(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = 
        D_800E17D0[omCurrentObj->objId]
     + (D_800E6A10[omCurrentObj->objId] == 1.0f ? (-M_PIF / 2) : (M_PIF / 2));

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B31B4();
}

void func_800B7790(GObj *gobj) {
    func_800B63C0(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] += D_800E9020[omCurrentObj->objId];

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];

    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B78AC(GObj *gobj) {
    func_800B63C0(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] += D_800E9020[omCurrentObj->objId];

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];

    func_800B31B4();
}

void func_800B799C(GObj *gobj) {
    func_800B5064(gobj);
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B79F4(GObj *gobj) {
    D_800E5510[omCurrentObj->objId] =
    D_800E56D0[omCurrentObj->objId] =
    D_800E5C10[omCurrentObj->objId] = D_800E5890[omCurrentObj->objId] = 0.0f;

    func_800B62AC(gobj);
    func_800B6144(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] =
       (D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId])
      + D_800E4C50[omCurrentObj->objId];

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B31B4();
}

void func_800B7B64(GObj *gobj) {
    func_800B62AC(gobj);
    func_800B6144(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];

    if (D_800E9AA0[omCurrentObj->objId] == 0) {
        gEntitiesAngleYArray[omCurrentObj->objId] += (D_800E6A10[omCurrentObj->objId] * (-M_PIF / 2));
    }

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    func_800B31B4();
}

void func_800B7CA0(GObj *gobj) {
    func_800B62AC(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
}

void func_800B7D88(GObj *gobj) {
    func_800B63C0(gobj);

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
}

void func_800B7E44(void) {
    f32 zero = 0.0f;
    f32 dx;
    f32 dz;

    dx = zero - gEntitiesNextPosXArray[omCurrentObj->objId];
    dz = zero - gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E2090[omCurrentObj->objId] = dx * D_800EB320[omCurrentObj->objId];
    D_800E2410[omCurrentObj->objId] = dz * D_800EB320[omCurrentObj->objId];
    D_800E2250[omCurrentObj->objId] = 0.0;
}

void func_800B7ED4(GObj *gobj) {
    func_800B5A7C(gobj);

    D_800E64D0[omCurrentObj->objId] += (D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId]);

    func_800F8E6C(D_800DE350[omCurrentObj->objId]);

    D_800E64D0[omCurrentObj->objId] -= (D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId]);

    func_800B7E44();

    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E2090[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800E2410[omCurrentObj->objId];
}

void func_800B8020(GObj *gobj) {
    func_800B7ED4(gobj);

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];
    
    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B8130(GObj *gobj) {
    func_800B5C28(gobj);

    gEntitiesNextPosXArray[omCurrentObj->objId] += (D_800E2090[omCurrentObj->objId] + D_800E3050[omCurrentObj->objId]);
    gEntitiesNextPosYArray[omCurrentObj->objId] += (D_800E2250[omCurrentObj->objId] + D_800E3210[omCurrentObj->objId]);
    gEntitiesNextPosZArray[omCurrentObj->objId] += (D_800E2410[omCurrentObj->objId] + D_800E33D0[omCurrentObj->objId]);
}

void func_800B8208(GObj *gobj) {
    func_800B8130(gobj);

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B8300(GObj *gobj) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
}

// The three leading dead locals are load-bearing: they place sp24/sp30 and give
// the ROM's 0x50 frame.
void func_800B83C8(GObj *gobj) {
    Vector unused0;
    s32 unused1;
    s32 unused2;
    Vector sp30;
    Vector sp24;
    struct DObj *node = D_800DE350[D_800E0D50[omCurrentObj->objId]]->data.dobj->firstChild;

    sp24.x = D_800E2090[omCurrentObj->objId];
    sp24.y = D_800E2250[omCurrentObj->objId];
    sp24.z = D_800E2410[omCurrentObj->objId];
    utilTransformPoint(&sp30, node, &sp24);
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp30.z;
    D_800E9C60[omCurrentObj->objId] = 1;
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B8550(GObj *gobj) {
    func_800B62AC(gobj);

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B8630(GObj *gobj) {
    func_800B62AC(gobj);
    func_800B6144(gobj);

    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }

    func_800B31B4();
}
