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

void func_800B531C(s32 arg0) {
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    s32 sp48;
    ? sp3C;
    f32 sp30;
    GObj *temp_a2;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a1;
    f32 *temp_a1_2;
    f32 *temp_v0_3;
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 *temp_v1_3;
    f32 *temp_v1_4;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    s32 var_v0;
    u16 var_v0_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;

    func_800B35F0();
    if (gKirbyState.unk18 == 0) {
        gKirbyState.forwardVel = D_800E64D0[omCurrentObj->objId];
        gKirbyState.vel[0] = D_800E3050[omCurrentObj->objId];
        gKirbyState.vel[1] = D_800E3210[omCurrentObj->objId];
        gKirbyState.vel[2] = D_800E33D0[omCurrentObj->objId];
        sp64 = D_800E64D0[omCurrentObj->objId];
        sp68 = D_800E6690[omCurrentObj->objId];
        sp6C = D_800E6850[omCurrentObj->objId];
        func_800B50C4(&sp64);
        sp58 = sp64 + sp68;
    }
    func_8011DD5C(&sp54, &sp50);
    if (gKirbyState.unk18 != 0) {
        D_800E6850[omCurrentObj->objId] = 0.0f;
        temp_v0 = omCurrentObj->objId;
        temp_f0 = D_800E6850[temp_v0];
        D_800E6690[temp_v0] = temp_f0;
        sp58 = 0.0f;
        D_800E64D0[omCurrentObj->objId] = temp_f0;
    } else if (D_800D6B54 == 0) {
        temp_v0_2 = omCurrentObj->objId;
        D_800E64D0[temp_v0_2] = D_800E5510[temp_v0_2] + sp58 + sp54;
        if (gKirbyState.unk160 == 0) {
            if (gKirbyState.unk164 != 0.0f) {
                if (D_800E8920[omCurrentObj->objId] != 0) {
                    gKirbyState.unk164 = 0.0f;
                } else if ((gKirbyState.horizontalCollision != 0) && (gKirbyState.unk104 != 2) && (gKirbyState.unk106 != 2)) {
                    gKirbyState.unk164 = 0.0f;
                } else {
                    if (gKirbyState.action == 9) {
                        var_f2 = 0.5f;
                    } else {
                        var_f2 = 0.1f;
                    }
                    if (gKirbyState.unk164 > 0.0f) {
                        gKirbyState.unk164 -= var_f2;
                        if (gKirbyState.unk164 < 0.0f) {
                            gKirbyState.unk164 = 0.0f;
                        }
                    } else {
                        gKirbyState.unk164 += var_f2;
                        if (gKirbyState.unk164 > 0.0f) {
                            gKirbyState.unk164 = 0.0f;
                        }
                    }
                    temp_v0_3 = &D_800E64D0[omCurrentObj->objId];
                    *temp_v0_3 += gKirbyState.unk164;
                }
            }
            if (gKirbyState.unk168 != 0.0f) {
                if (gKirbyState.ceilingCollisionNext != 0) {
                    gKirbyState.unk168 = 0.0f;
                } else {
                    if (gKirbyState.action == 9) {
                        var_f2_2 = 1.28f;
                    } else {
                        var_f2_2 = 1.14f;
                    }
                    if (gKirbyState.unk168 > 0.0f) {
                        gKirbyState.unk168 -= var_f2_2;
                        if (gKirbyState.unk168 < 0.0f) {
                            gKirbyState.unk168 = 0.0f;
                        }
                    } else {
                        gKirbyState.unk168 += var_f2_2;
                        if (gKirbyState.unk168 > 0.0f) {
                            gKirbyState.unk168 = 0.0f;
                        }
                    }
                    temp_v1 = &gEntitiesNextPosYArray[omCurrentObj->objId];
                    *temp_v1 += gKirbyState.unk168;
                }
            }
        }
    }
    gKirbyState.unk170 = D_800E5F90[omCurrentObj->objId];
    func_800F8E6C(*(&D_800DE350 + (omCurrentObj->objId * 4)));
    func_800F8C70(*(&D_800DE350 + (omCurrentObj->objId * 4)));
    D_800E64D0[omCurrentObj->objId] = sp58;
    func_800B46F8();
    temp_a2 = omCurrentObj;
    temp_v0_4 = temp_a2->objId;
    var_v0 = temp_v0_4 * 4;
    temp_v1_2 = &D_800E3210[temp_v0_4];
    temp_f0_2 = *temp_v1_2;
    if (D_800D6B54 == 0) {
        *temp_v1_2 = temp_f0_2 + (D_800E5C10[temp_v0_4] + sp50);
        var_v0 = temp_a2->objId * 4;
    }
    temp_a0 = var_v0 + gEntitiesNextPosXArray;
    *temp_a0 += *(D_800E3050 + var_v0);
    temp_v0_5 = temp_a2->objId;
    temp_v1_3 = &gEntitiesNextPosYArray[temp_v0_5];
    *temp_v1_3 += D_800E3210[temp_v0_5];
    temp_v0_6 = temp_a2->objId;
    temp_a1 = &gEntitiesNextPosZArray[temp_v0_6];
    *temp_a1 += D_800E33D0[temp_v0_6];
    D_800E3210[temp_a2->objId] = temp_f0_2;
    temp_v0_7 = temp_a2->objId;
    if (gEntitiesNextPosYArray[temp_v0_7] < -10000.0f) {
        D_800E3750[temp_v0_7] = 0.0f;
        temp_v0_8 = temp_a2->objId;
        D_800E3210[temp_v0_8] = D_800E3750[temp_v0_8];
        D_800E3C90[temp_a2->objId] = 65535.0f;
        func_8011D40C(0, temp_a0, temp_a1, temp_a2, &gKirbyState);
        gEntitiesNextPosYArray[omCurrentObj->objId] = -10000.0f;
    }
    if (gKirbyHp != 0.0f) {
        var_v0_2 = gKirbyState.unk162;
        sp48 = 0x14;
        if (var_v0_2 == 0x14) {
            if (D_800E8920[temp_a2->objId] != 0) {
                var_v0_2 = func_8011E244(0.0f);
                goto block_46;
            }
        } else {
block_46:
            sp48 = var_v0_2;
        }
        if (sp48 != 0x14) {
            func_8011E31C(&sp3C);
            func_80112A40(sp48, &sp3C, &sp30);
            if ((sp30 != 0.0f) || (sp38 != 0.0f)) {
                var_f2_3 = func_800F8728(omCurrentObj->objId, sp30, sp38, &gKirbyState);
            } else {
                var_f2_3 = 0.0f;
            }
            temp_a0_2 = &gEntitiesNextPosXArray[omCurrentObj->objId];
            *temp_a0_2 += sp30;
            temp_v1_4 = &gEntitiesNextPosYArray[omCurrentObj->objId];
            *temp_v1_4 += sp34;
            gKirbyState.unk160 = 1;
            gKirbyState.unk164 = var_f2_3;
            temp_a1_2 = &gEntitiesNextPosZArray[omCurrentObj->objId];
            gKirbyState.unk168 = sp34;
            *temp_a1_2 += sp38;
            return;
        }
        gKirbyState.unk160 = 0;
        return;
    }
    gKirbyState.unk168 = 0.0f;
    gKirbyState.unk160 = 0;
    gKirbyState.unk164 = gKirbyState.unk168;
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

void func_800B531C(s32 arg0) {
    void func_8011DD5C(f32 *, f32 *);
    void func_8011D40C(void);
    u8 func_8011E244(void);
    void func_8011E31C(Vector *);
    void func_80112A40(s32, Vector *, Vector *);
    f32 func_800F8728(s32, f32, f32);
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

void func_800B6144(s32 arg0) {
    s32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp24;
    f32 *temp_a0_2;
    f32 *temp_a1;
    f32 *temp_v1;
    struct Sub800E1B50_Unk84 *temp_a0;
    u32 temp_a3;
    u8 temp_t7;

    temp_a3 = omCurrentObj->objId;
    temp_a0 = D_800E1B50[temp_a3]->unk84;
    if ((D_800E8920[temp_a3] != 0) && (temp_a0 != NULL)) {
        temp_t7 = temp_a0->unk50;
        sp3C = temp_t7;
        if (temp_t7 != 0x14) {
            sp30 = gEntitiesNextPosXArray[temp_a3];
            sp34 = gEntitiesNextPosYArray[omCurrentObj->objId];
            sp38 = gEntitiesNextPosZArray[omCurrentObj->objId];
            func_80112A40(temp_t7, &sp30, &sp24, temp_a3 * 4);
            if ((sp24 != 0.0f) || (sp2C != 0.0f)) {
                func_800F8728(omCurrentObj->objId, sp24, sp2C);
            }
            temp_v1 = &gEntitiesNextPosXArray[omCurrentObj->objId];
            *temp_v1 += sp24;
            temp_a0_2 = &gEntitiesNextPosYArray[omCurrentObj->objId];
            *temp_a0_2 += sp28;
            temp_a1 = &gEntitiesNextPosZArray[omCurrentObj->objId];
            *temp_a1 += sp2C;
        }
    }
}
#elif defined(PORT)
/* Ride-the-platform step (draft above, completed): when the entity stands
 * on a dynamic collider (slot byte != 0x14), fetch that collider's frame
 * delta (func_80112A40) and carry the entity's next position with it,
 * reporting the lateral part to func_800F8728 first. */
void func_800B6144(s32 arg0) {
    void func_80112A40(s32, Vector *, Vector *);
    f32 func_800F8728(s32, f32, f32);
    u32 objId = omCurrentObj->objId;
    struct Sub800E1B50_Unk84 *rec = D_800E1B50[objId]->unk84;

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
