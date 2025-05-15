#include "common.h"
#include "ovl1/ovl1_6.h"
#include "ovl2/ovl2_2.h"
#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "sounds.h"

extern struct GObj *D_800DE350[];
s32 func_800B3234(f32 inputX, f32 inputY, f32 inputZ);
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_8/func_800B50C4.s")
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_8/func_800B531C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_8/func_800B6144.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_8/func_800B7E44.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_8/func_800B83C8.s")

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
