#include "common.h"

#include "DObj.h"
#include "GObj.h"
#include "anim.h"
#include "object_manager.h"
#include "lbmatrix.h"
#include "math.h"

DObj *animModelTreeNextNode(DObj *dobj) {
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

void animSetModelAnimationSpeed(GObj *gobj, f32 speed) {
    DObj *dobj = gobj->data;

    while (dobj != NULL) {
        dobj->animSpeed = speed;
        dobj = animModelTreeNextNode(dobj);
    }
}

void animSetModelAndTextureAnimationSpeed(GObj *gobj, f32 speed) {
    DObj *dobj = gobj->data;

    while (dobj != NULL) {
        MObj *mobj = dobj->mobjList;
        dobj->animSpeed = speed;
        while (mobj != NULL) {
            mobj->animSpeed = speed;
            mobj = mobj->next;
        }
        dobj = animModelTreeNextNode(dobj);
    }
}

void animSetTextureAnimationSpeed(GObj *gobj, f32 speed) {
    DObj *dobj = gobj->data;

    while (dobj != NULL) {
        MObj *mobj = dobj->mobjList;
        while (mobj != NULL) {
            mobj->animSpeed = speed;
            mobj = mobj->next;
        }
        dobj = animModelTreeNextNode(dobj);
    }
}

void animResetModelAnimation(GObj *gobj) {
    DObj *dobj = gobj->data;

    while (dobj != NULL) {
        omDObjResetAnimation(dobj);
        dobj = animModelTreeNextNode(dobj);
    }
}

void animResetModelAndTextureAnimation(GObj *gobj) {
    DObj *dobj = gobj->data;
    MObj *mobj;

    while (dobj != NULL) {
        omDObjResetAnimation(dobj);
        mobj = dobj->mobjList;
        while (mobj != NULL) {
            func_80009918(mobj);
            mobj = mobj->next;
        }

        dobj = animModelTreeNextNode(dobj);
    }
}

void animResetTextureAnimation(GObj *gobj) {
    DObj *dobj = gobj->data;
    MObj *mobj;

    while (dobj != NULL) {
        mobj = dobj->mobjList;
        while (mobj != NULL) {
            func_80009918(mobj);
            mobj = mobj->next;
        }

        dobj = animModelTreeNextNode(dobj);
    }
}

void animSetModelAnimation(DObj *dobj, AnimCmd *animList, f32 time) {
    AObj *aobj = dobj->aobjList;

    while (aobj != NULL) {
        aobj->kind = ANIM_TYPE_NONE;
        aobj = aobj->next;
    }

    dobj->animList = animList;
    dobj->timeLeft = ANIMATION_CHANGED;
    dobj->timePassed = time;
}

void animSetTextureAnimation(MObj *mobj, AnimCmd *animList, f32 time) {
    AObj *aobj = mobj->aobjList;

    while (aobj != NULL) {
        aobj->kind = ANIM_TYPE_NONE;
        aobj = aobj->next;
    }

    mobj->animList = animList;
    mobj->timeLeft = ANIMATION_CHANGED;
    mobj->timePassed = time;
}

void animSetModelTreeAnimation(GObj *obj, AnimCmd **animLists, f32 time) {
    DObj *dobj;
    u8 s2 = TRUE;

    dobj = obj->data;
    obj->animTimer = time;
    while (dobj != NULL) {
        if (*animLists != NULL) {
            animSetModelAnimation(dobj, *animLists, time);
            dobj->animCBReceiver = s2;
            s2 = FALSE;
        } else {
            dobj->timeLeft = ANIMATION_DISABLED;
            dobj->animCBReceiver = FALSE;
        }

        animLists++;
        dobj = animModelTreeNextNode(dobj);
    }
}

void animSetModelTreeTextureAnimation(GObj *obj, AnimCmd*** textureAnimLists, f32 time) {
    DObj *dobj;
    MObj *mobj;
    AnimCmd** cmdlist;

    dobj = obj->data;
    obj->animTimer = time;
    while (dobj != NULL) {
        if (textureAnimLists != NULL) {
            if (*textureAnimLists != NULL) {
                cmdlist = *textureAnimLists;
                mobj = dobj->mobjList;
                while (mobj != NULL) {
                    if (*cmdlist != NULL) {
                        animSetTextureAnimation(mobj, *cmdlist, time);
                    }
                    cmdlist++;
                    mobj = mobj->next;
                }
            }
            textureAnimLists++;
        }
        dobj = animModelTreeNextNode(dobj);
    }
}

void animSetModelTreeAndTextureAnimation(GObj *obj, AnimCmd** modelAnimLists,
                                         AnimCmd*** textureAnimLists, f32 time) {
    DObj *dobj = obj->data;
    MObj *mobj;
    AnimCmd **cmdlist;
    u8 mainNode = TRUE;

    obj->animTimer = time;
    while (dobj != NULL) {
        if (modelAnimLists != NULL) {
            if (*modelAnimLists != NULL) {
                animSetModelAnimation(dobj, *modelAnimLists, time);
                dobj->animCBReceiver = mainNode;
                mainNode = FALSE;
            } else {
                dobj->timeLeft = ANIMATION_DISABLED;
                dobj->animCBReceiver = FALSE;
            }
            modelAnimLists++;
        }
        if (textureAnimLists != NULL) {
            if (*textureAnimLists != NULL) {
                cmdlist = *textureAnimLists;
                mobj = dobj->mobjList;
                while (mobj != NULL) {
                    if (*cmdlist != NULL) {
                        animSetTextureAnimation(mobj, *cmdlist, time);
                    }
                    cmdlist++;
                    mobj = mobj->next;
                }
            }
            textureAnimLists++;
        }
        dobj = animModelTreeNextNode(dobj);
    }
}

void animProcessModelAnimation(DObj *dobj) {
    AObj *aobjArray[ANIM_PARAM_MODEL_MAX - ANIM_PARAM_MODEL_MIN + 1];
    AObj *aobj;
    s32 i;
    u32 cmd;
    u32 bitMask;
    f32 duration;

    if (dobj->timeLeft == ANIMATION_DISABLED) {
        return;
    }

    if (dobj->timeLeft == ANIMATION_CHANGED) {
        dobj->timeLeft = -dobj->timePassed;
    } else {
        dobj->timeLeft -= dobj->animSpeed;
        dobj->timePassed += dobj->animSpeed;
        dobj->gobj->animTimer = dobj->timePassed;

        if (dobj->timeLeft > 0.0f) {
            return;
        }
    }

    for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
        aobjArray[i] = NULL;
    }

    aobj = dobj->aobjList;
    while (aobj != NULL) {
        if (aobj->paramID >= ANIM_PARAM_MODEL_MIN && aobj->paramID <= ANIM_PARAM_MODEL_MAX) {
            aobjArray[aobj->paramID - ANIM_PARAM_MODEL_MIN] = aobj;
        }
        aobj = aobj->next;
    }

    do {
        if (dobj->animList == NULL) {
            aobj = dobj->aobjList;
            while (aobj != NULL) {
                if (aobj->kind != ANIM_TYPE_NONE) {
                    aobj->timer += dobj->animSpeed + dobj->timeLeft;
                }
                aobj = aobj->next;
            }
            dobj->timePassed = dobj->timeLeft;
            dobj->gobj->animTimer = dobj->timeLeft;
            dobj->timeLeft = ANIMATION_FINISHED;
            return;
        }

        cmd = dobj->animList->w >> 25;
        switch (cmd) {
            case ANIM_CMD_SET_VALUE_ZERO_RATE_LAST:
            case ANIM_CMD_SET_VALUE_ZERO_RATE:
                duration = (f32) (dobj->animList->w & 0x7FFF);
                bitMask = (dobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = HS64_AObjNew(dobj, i + ANIM_PARAM_MODEL_MIN);
                        }

                        aobjArray[i]->startVal = aobjArray[i]->goalVal;
                        aobjArray[i]->goalVal = dobj->animList->f;
                        dobj->animList++;
                        aobjArray[i]->speed = aobjArray[i]->goalSpeed;
                        aobjArray[i]->goalSpeed = 0.0f;
                        aobjArray[i]->kind = ANIM_TYPE_CUBIC;
                        if (duration != 0.0f) {
                            aobjArray[i]->Rduration = 1.0f / duration;
                        }
                        aobjArray[i]->timer = -dobj->timeLeft - dobj->animSpeed;
                    }
                    bitMask >>= 1;
                }

                if (cmd == ANIM_CMD_SET_VALUE_ZERO_RATE_LAST) {
                    dobj->timeLeft += duration;
                }
                break;
            case ANIM_CMD_SET_VALUE_LAST:
            case ANIM_CMD_SET_VALUE:
                duration = (f32) (dobj->animList->w & 0x7FFF);
                bitMask = (dobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = HS64_AObjNew(dobj, i + ANIM_PARAM_MODEL_MIN);
                        }
                        aobjArray[i]->startVal = aobjArray[i]->goalVal;
                        aobjArray[i]->goalVal = dobj->animList->f;
                        dobj->animList++;
                        aobjArray[i]->kind = ANIM_TYPE_LINEAR;
                        if (duration != 0.0f) {
                            aobjArray[i]->speed = (aobjArray[i]->goalVal - aobjArray[i]->startVal) / duration;
                        }
                        aobjArray[i]->timer = -dobj->timeLeft - dobj->animSpeed;
                        aobjArray[i]->goalSpeed = 0.0f;
                    }
                    bitMask >>= 1;
                }

                if (cmd == ANIM_CMD_SET_VALUE_LAST) {
                    dobj->timeLeft += duration;
                }
                break;
            case ANIM_CMD_SET_VALUE_WITH_RATE_LAST:
            case ANIM_CMD_SET_VALUE_WITH_RATE:
                duration = (f32) (dobj->animList->w & 0x7FFF);
                bitMask = (dobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = HS64_AObjNew(dobj, i + ANIM_PARAM_MODEL_MIN);
                        }

                        aobjArray[i]->startVal = aobjArray[i]->goalVal;
                        aobjArray[i]->goalVal = dobj->animList->f;
                        dobj->animList++;
                        aobjArray[i]->speed = aobjArray[i]->goalSpeed;
                        aobjArray[i]->goalSpeed = dobj->animList->f;
                        dobj->animList++;
                        aobjArray[i]->kind = ANIM_TYPE_CUBIC;
                        if (duration != 0.0f) {
                            aobjArray[i]->Rduration = 1.0f / duration;
                        }
                        aobjArray[i]->timer = -dobj->timeLeft - dobj->animSpeed;
                    }

                    bitMask >>= 1;
                }

                if (cmd == ANIM_CMD_SET_VALUE_WITH_RATE_LAST) {
                    dobj->timeLeft += duration;
                }
                break;
            case ANIM_CMD_SET_TARGET_RATE:
                bitMask = (dobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = HS64_AObjNew(dobj, i + ANIM_PARAM_MODEL_MIN);
                        }

                        aobjArray[i]->goalSpeed = dobj->animList->f;
                        dobj->animList++;
                    }
                    bitMask >>= 1;
                }
                break;
            case ANIM_CMD_WAIT:
                dobj->timeLeft += (f32) (dobj->animList++->w & 0x7FFF);
                break;
            case ANIM_CMD_SET_VALUE_AFTER_LAST:
            case ANIM_CMD_SET_VALUE_AFTER:
                duration = (f32) (dobj->animList->w & 0x7FFF);
                bitMask = (dobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = HS64_AObjNew(dobj, i + ANIM_PARAM_MODEL_MIN);
                        }

                        aobjArray[i]->startVal = aobjArray[i]->goalVal;
                        aobjArray[i]->goalVal = dobj->animList->f;
                        dobj->animList++;
                        aobjArray[i]->kind = ANIM_TYPE_STEP;
                        aobjArray[i]->Rduration = duration;
                        aobjArray[i]->timer = -dobj->timeLeft - dobj->animSpeed;
                        aobjArray[i]->goalSpeed = 0.0f;
                    }

                    bitMask >>= 1;
                }

                if (cmd == ANIM_CMD_SET_VALUE_AFTER_LAST) {
                    dobj->timeLeft += duration;
                }
                break;
            case ANIM_CMD_SET_ANIMATION:
                dobj->animList++;
                dobj->animList = dobj->animList->ptr;
                // reset animation timers
                dobj->timePassed = -dobj->timeLeft;
                dobj->gobj->animTimer = -dobj->timeLeft;

                if (dobj->animCBReceiver && dobj->gobj->onAnimate != NULL) {
                    dobj->gobj->onAnimate(dobj, -2, 0);
                }
                break;
            case ANIM_CMD_JUMP:
                dobj->animList++;
                dobj->animList = dobj->animList->ptr;

                if (dobj->animCBReceiver && dobj->gobj->onAnimate != NULL) {
                    dobj->gobj->onAnimate(dobj, -2, 0);
                }
                break;
            case ANIM_CMD_12:
                duration = (f32) (dobj->animList->w & 0x7FFF);
                bitMask = (dobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = HS64_AObjNew(dobj, i + ANIM_PARAM_MODEL_MIN);
                        }

                        aobjArray[i]->timer += duration;
                    }
                    bitMask >>= 1;
                }

                break;
            case ANIM_CMD_13:
                dobj->animList++;
                if (aobjArray[ANIM_PARAM_4 - ANIM_PARAM_MODEL_MIN] == NULL) {
                    aobjArray[ANIM_PARAM_4 - ANIM_PARAM_MODEL_MIN] = HS64_AObjNew(dobj, ANIM_PARAM_4);
                }
                aobjArray[ANIM_PARAM_4 - ANIM_PARAM_MODEL_MIN]->unk20 = dobj->animList->ptr;
                dobj->animList++;
                break;
            case ANIM_CMD_END:
                for (aobj = dobj->aobjList; aobj != NULL; aobj = aobj->next) {
                    if (aobj->kind != ANIM_TYPE_NONE) {
                        aobj->timer += dobj->animSpeed + dobj->timeLeft;
                    }
                }

                dobj->timePassed = dobj->timeLeft;
                dobj->gobj->animTimer = dobj->timeLeft;
                dobj->timeLeft = ANIMATION_FINISHED;
                if (dobj->animCBReceiver && dobj->gobj->onAnimate != NULL) {
                    dobj->gobj->onAnimate(dobj, -1, 0);
                }
                return;
            case ANIM_CMD_SET_FLAGS:
                dobj->flags = (dobj->animList->w << 7) >> 22;
                dobj->timeLeft += (f32) (dobj->animList++->w & 0x7FFF);
                break;
            case ANIM_CMD_16:
                if (dobj->gobj->onAnimate != NULL) {
                    dobj->gobj->onAnimate(dobj, ((dobj->animList->w << 7) >> 22) >> 8,
                                              ((dobj->animList->w << 7) >> 22) & 0xFF);
                }

                dobj->timeLeft += (f32) (dobj->animList++->w & 0x7FFF);
                break;
            case ANIM_CMD_17:
                bitMask = (dobj->animList->w << 7) >> 22;
                dobj->timeLeft += (f32) (dobj->animList++->w & 0x7FFF);

                for (i = 4; i < 14; i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (dobj->gobj->onAnimate != NULL) {
                            dobj->gobj->onAnimate(dobj, i, dobj->animList->f);
                        }
                        dobj->animList++;
                    }
                    bitMask >>= 1;
                }
                break;
            default:
                break;
        }
    } while (dobj->timeLeft <= 0.0f);
}

f32 animGetAObjInterpValue(f32 Rduration, f32 elapsed, f32 initialValue, f32 targetValue, f32 initialRate,
                           f32 targetRate) {
    f32 timeSquaredOverDuration;
    f32 sp14;
    f32 sp10;
    f32 twoTimeCubedOverDurationCubed;
    f32 timeCubedOverDurationSquared;
    f32 RdurationSquared;
    f32 timeSquared;

    timeSquared = SQ(elapsed);
    RdurationSquared = SQ(Rduration);
    timeCubedOverDurationSquared = timeSquared * elapsed * RdurationSquared;
    twoTimeCubedOverDurationCubed = 2.0f * timeCubedOverDurationSquared * Rduration;
    sp14 = 3.0f * timeSquared * RdurationSquared;
    timeSquaredOverDuration = timeSquared * Rduration;
    sp10 = timeCubedOverDurationSquared - timeSquaredOverDuration;

    return ((twoTimeCubedOverDurationCubed - sp14) + 1.0f) * initialValue + targetValue * (sp14 - twoTimeCubedOverDurationCubed) +
           initialRate * ((sp10 - timeSquaredOverDuration) + elapsed) + targetRate * sp10;
}

f32 animGetAObjInterpRate(f32 invDuration, f32 time, f32 initialValue, f32 targetValue, f32 initialRate,
                          f32 targetRate) {
    f32 temp_f18;
    f32 temp_f16;
    f32 temp_f2;

    temp_f2 = 2.0f * time * invDuration;
    temp_f16 = 3.0f * time * time * invDuration * invDuration;
    temp_f18 = 6.0f * time;

    return (temp_f18 * time * invDuration * invDuration * invDuration - temp_f18 * invDuration * invDuration) *
               (initialValue - targetValue) +
           initialRate * (temp_f16 - 2.0f * temp_f2 + 1.0f) + targetRate * (temp_f16 - temp_f2);
}

f32 animGetAObjValue(AObj *aobj) {
    switch (aobj->kind) {
        case ANIM_TYPE_LINEAR:
            return aobj->startVal + (aobj->timer * aobj->speed);
        case ANIM_TYPE_CUBIC:
            return animGetAObjInterpValue(aobj->Rduration, aobj->timer, aobj->startVal, aobj->goalVal,
                                          aobj->speed, aobj->goalSpeed);
        case ANIM_TYPE_STEP:
            return aobj->Rduration <= aobj->timer ? aobj->goalVal : aobj->startVal;
    }
}

f32 animGetAObjRate(AObj *aobj) {
    switch (aobj->kind) {
        case ANIM_TYPE_LINEAR:
            return aobj->speed;
        case ANIM_TYPE_CUBIC:
            return animGetAObjInterpRate(aobj->Rduration, aobj->timer, aobj->startVal, aobj->goalVal,
                                         aobj->speed, aobj->goalSpeed);
        case ANIM_TYPE_STEP:
            return 0.0f;
    }
}

void animUpdateModelAnimatedParams(DObj *dobj) {
    f32 value;
    AObj *aobj;

    if (dobj->timeLeft != ANIMATION_DISABLED) {
        aobj = dobj->aobjList;

        while (aobj != NULL) {
            if (aobj->kind != ANIM_TYPE_NONE) {
                if (dobj->timeLeft != ANIMATION_FINISHED) {
                    aobj->timer += dobj->animSpeed;
                }

                if (!(dobj->gobj->flags & 2)) {
                    switch (aobj->kind) {
                        case ANIM_TYPE_LINEAR:
                            value = aobj->startVal + aobj->timer * aobj->speed;
                            break;
                        case ANIM_TYPE_CUBIC: {
                            f32 temp_f16 = SQ(aobj->Rduration);
                            f32 temp_f12 = SQ(aobj->timer);
                            f32 temp_f18 = aobj->Rduration * temp_f12;
                            f32 temp_f14 = aobj->timer * temp_f12 * temp_f16;
                            f32 temp_f20 = 2.0f * temp_f14 * aobj->Rduration;
                            f32 temp_f22 = 3.0f * temp_f12 * temp_f16;
                            f32 temp_f24 = temp_f14 - temp_f18;

                            value = (aobj->startVal * ((temp_f20 - temp_f22) + 1.0f)) +
                                    (aobj->goalVal * (temp_f22 - temp_f20)) +
                                    (aobj->speed * ((temp_f24 - temp_f18) + aobj->timer)) + (aobj->goalSpeed * temp_f24);
                            break;
                        }
                        case ANIM_TYPE_STEP:
                            value = aobj->Rduration <= aobj->timer ? aobj->goalVal : aobj->startVal;
                            break;
                        default:
                            break;
                    }

                    switch (aobj->paramID) {
                        case ANIM_PARAM_ROTATION_X:
                            dobj->angle.v.x = value;
                            break;
                        case ANIM_PARAM_ROTATION_Y:
                            dobj->angle.v.y = value;
                            break;
                        case ANIM_PARAM_ROTATION_Z:
                            dobj->angle.v.z = value;
                            break;
                        case ANIM_PARAM_4:
                            if (value < 0.0f) {
                                value = 0.0f;
                            } else if (value > 1.0f) {
                                value = 1.0f;
                            }
                            mtxGetInterpolatedPosition(&dobj->pos.v, aobj->unk20, value);
                            break;
                        case ANIM_PARAM_POSITION_X:
                            dobj->pos.v.x = value;
                            break;
                        case ANIM_PARAM_POSITION_Y:
                            dobj->pos.v.y = value;
                            break;
                        case ANIM_PARAM_POSITION_Z:
                            dobj->pos.v.z = value;
                            break;
                        case ANIM_PARAM_SCALE_X:
                            dobj->scale.v.x = value;
                            break;
                        case ANIM_PARAM_SCALE_Y:
                            dobj->scale.v.y = value;
                            break;
                        case ANIM_PARAM_SCALE_Z:
                            dobj->scale.v.z = value;
                            break;
                    }
                }
            }
            aobj = aobj->next;
        }

        if (dobj->timeLeft == ANIMATION_FINISHED) {
            dobj->timeLeft = ANIMATION_DISABLED;
        }
    }
}

void animProcessTextureAnimation(MObj *mobj) {
    AObj *aobjArray[10];
    AObj *extraAobjArray[5];
    AObj *aobj;
    s32 i;
    u32 cmd;
    u32 bitMask;
    f32 duration;

    if (mobj->timeLeft == ANIMATION_DISABLED) {
        return;
    }

    if (mobj->timeLeft == ANIMATION_CHANGED) {
        mobj->timeLeft = -mobj->timePassed;
    } else {
        mobj->timeLeft -= mobj->animSpeed;
        mobj->timePassed += mobj->animSpeed;

        if (mobj->timeLeft > 0.0f) {
            return;
        }
    }

    for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
        aobjArray[i] = NULL;
    }

    for (i = 0; i < ARRAY_COUNT(extraAobjArray); i++) {
        extraAobjArray[i] = NULL;
    }

    aobj = mobj->aobjList;
    while (aobj != NULL) {
        if (aobj->paramID >= ANIM_PARAM_TEXTURE_MIN && aobj->paramID <= ANIM_PARAM_TEXTURE_MAX) {
            aobjArray[aobj->paramID - ANIM_PARAM_TEXTURE_MIN] = aobj;
        }

        if (aobj->paramID >= ANIM_PARAM_TEXTURE_EXTRA_MIN && aobj->paramID <= ANIM_PARAM_TEXTURE_EXTRA_MAX) {
            extraAobjArray[aobj->paramID - ANIM_PARAM_TEXTURE_EXTRA_MIN] = aobj;
        }

        aobj = aobj->next;
    }

    do {
        if (mobj->animList == NULL) {
            aobj = mobj->aobjList;
            while (aobj != NULL) {
                if (aobj->kind != ANIM_TYPE_NONE) {
                    aobj->timer += mobj->animSpeed + mobj->timeLeft;
                }
                aobj = aobj->next;
            }
            mobj->timePassed = mobj->timeLeft;
            mobj->timeLeft = ANIMATION_FINISHED;
            return;
        }

        cmd = mobj->animList->w >> 25;
        switch (cmd) {
            case ANIM_CMD_SET_VALUE_ZERO_RATE_LAST:
            case ANIM_CMD_SET_VALUE_ZERO_RATE:
                duration = (f32) (mobj->animList->w & 0x7FFF);
                bitMask = (mobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = func_800098AC(mobj, i + ANIM_PARAM_TEXTURE_MIN);
                        }
                        aobjArray[i]->startVal = aobjArray[i]->goalVal;
                        aobjArray[i]->goalVal = mobj->animList->f;
                        mobj->animList++;
                        aobjArray[i]->speed = aobjArray[i]->goalSpeed;
                        aobjArray[i]->goalSpeed = 0.0f;
                        aobjArray[i]->kind = ANIM_TYPE_CUBIC;

                        if (duration != 0.0f) {
                            aobjArray[i]->Rduration = 1.0f / duration;
                        }
                        aobjArray[i]->timer = -mobj->timeLeft - mobj->animSpeed;
                    }
                    bitMask >>= 1;
                }

                if (cmd == ANIM_CMD_SET_VALUE_ZERO_RATE_LAST) {
                    mobj->timeLeft += duration;
                }
                break;
            case ANIM_CMD_SET_VALUE_LAST:
            case ANIM_CMD_SET_VALUE:
                duration = (f32) (mobj->animList->w & 0x7FFF);
                bitMask = (mobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = func_800098AC(mobj, i + ANIM_PARAM_TEXTURE_MIN);
                        }

                        aobjArray[i]->startVal = aobjArray[i]->goalVal;
                        aobjArray[i]->goalVal = mobj->animList->f;
                        mobj->animList++;
                        aobjArray[i]->kind = ANIM_TYPE_LINEAR;
                        if (duration != 0.0f) {
                            aobjArray[i]->speed = (aobjArray[i]->goalVal - aobjArray[i]->startVal) / duration;
                        }
                        aobjArray[i]->timer = -mobj->timeLeft - mobj->animSpeed;
                        aobjArray[i]->goalSpeed = 0.0f;
                    }
                    bitMask >>= 1;
                }

                if (cmd == ANIM_CMD_SET_VALUE_LAST) {
                    mobj->timeLeft += duration;
                }
                break;
            case ANIM_CMD_SET_VALUE_WITH_RATE_LAST:
            case ANIM_CMD_SET_VALUE_WITH_RATE:
                duration = (f32) (mobj->animList->w & 0x7FFF);
                bitMask = (mobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = func_800098AC(mobj, i + ANIM_PARAM_TEXTURE_MIN);
                        }
                        aobjArray[i]->startVal = aobjArray[i]->goalVal;
                        aobjArray[i]->goalVal = mobj->animList->f;
                        mobj->animList++;
                        aobjArray[i]->speed = aobjArray[i]->goalSpeed;
                        aobjArray[i]->goalSpeed = mobj->animList->f;
                        mobj->animList++;

                        aobjArray[i]->kind = ANIM_TYPE_CUBIC;
                        if (duration != 0.0f) {
                            aobjArray[i]->Rduration = 1.0f / duration;
                        }
                        aobjArray[i]->timer = -mobj->timeLeft - mobj->animSpeed;
                    }
                    bitMask >>= 1;
                }

                if (cmd == ANIM_CMD_SET_VALUE_WITH_RATE_LAST) {
                    mobj->timeLeft += duration;
                }
                break;
            case ANIM_CMD_SET_TARGET_RATE:
                bitMask = (mobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = func_800098AC(mobj, i + ANIM_PARAM_TEXTURE_MIN);
                        }
                        aobjArray[i]->goalSpeed = mobj->animList->f;
                        mobj->animList++;
                    }
                    bitMask >>= 1;
                }
                break;
            case ANIM_CMD_WAIT:
                mobj->timeLeft += (f32) (mobj->animList->w & 0x7FFF);
                mobj->animList++;
                break;
            case ANIM_CMD_SET_VALUE_AFTER_LAST:
            case ANIM_CMD_SET_VALUE_AFTER:
                duration = (f32) (mobj->animList->w & 0x7FFF);
                bitMask = (mobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = func_800098AC(mobj, i + ANIM_PARAM_TEXTURE_MIN);
                        }
                        aobjArray[i]->startVal = aobjArray[i]->goalVal;
                        aobjArray[i]->goalVal = mobj->animList->f;
                        mobj->animList++;

                        aobjArray[i]->kind = ANIM_TYPE_STEP;
                        aobjArray[i]->Rduration = duration;
                        aobjArray[i]->timer = -mobj->timeLeft - mobj->animSpeed;
                        aobjArray[i]->goalSpeed = 0.0f;
                    }
                    bitMask >>= 1;
                }

                if (cmd == ANIM_CMD_SET_VALUE_AFTER_LAST) {
                    mobj->timeLeft += duration;
                }
                break;
            case ANIM_CMD_SET_ANIMATION:
                mobj->animList++;
                mobj->animList = mobj->animList->ptr;
                mobj->timePassed = -mobj->timeLeft;
                break;
            case ANIM_CMD_JUMP:
                mobj->animList++;
                mobj->animList = mobj->animList->ptr;
                break;
            case ANIM_CMD_12:
                duration = (f32) (mobj->animList->w & 0x7FFF);
                bitMask = (mobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (aobjArray[i] == NULL) {
                            aobjArray[i] = func_800098AC(mobj, i + ANIM_PARAM_TEXTURE_MIN);
                        }
                        aobjArray[i]->timer += duration;
                    }
                    bitMask >>= 1;
                }
                break;
            case ANIM_CMD_END:
                aobj = mobj->aobjList;
                while (aobj != NULL) {
                    if (aobj->kind != ANIM_TYPE_NONE) {
                        aobj->timer += mobj->animSpeed + mobj->timeLeft;
                    }
                    aobj = aobj->next;
                }

                mobj->timePassed = mobj->timeLeft;
                mobj->timeLeft = ANIMATION_FINISHED;
                return; // not break
            case ANIM_CMD_SET_EXTRA_VALUE_AFTER_LAST:
            case ANIM_CMD_SET_EXTRA_VALUE_AFTER:
                duration = (f32) (mobj->animList->w & 0x7FFF);
                bitMask = (mobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(extraAobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (extraAobjArray[i] == NULL) {
                            extraAobjArray[i] = func_800098AC(mobj, i + ANIM_PARAM_TEXTURE_EXTRA_MIN);
                        }
                        extraAobjArray[i]->startVal = extraAobjArray[i]->goalVal;
                        extraAobjArray[i]->goalVal = mobj->animList->f;
                        mobj->animList++;

                        extraAobjArray[i]->kind = ANIM_TYPE_STEP;
                        extraAobjArray[i]->Rduration = duration;
                        extraAobjArray[i]->timer = -mobj->timeLeft - mobj->animSpeed;
                    }
                    bitMask >>= 1;
                }
                if (cmd == ANIM_CMD_SET_EXTRA_VALUE_AFTER_LAST) {
                    mobj->timeLeft += duration;
                }
                break;
            case ANIM_CMD_SET_EXTRA_VALUE_LAST:
            case ANIM_CMD_SET_EXTRA_VALUE:
                duration = (f32) (mobj->animList->w & 0x7FFF);
                bitMask = (mobj->animList++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(extraAobjArray); i++) {
                    if (bitMask == 0) {
                        break;
                    }

                    if (bitMask & 1) {
                        if (extraAobjArray[i] == NULL) {
                            extraAobjArray[i] = func_800098AC(mobj, i + ANIM_PARAM_TEXTURE_EXTRA_MIN);
                        }
                        extraAobjArray[i]->startVal = extraAobjArray[i]->goalVal;
                        extraAobjArray[i]->goalVal = mobj->animList->f;
                        mobj->animList++;

                        extraAobjArray[i]->kind = ANIM_TYPE_LINEAR;
                        if (duration != 0.0f) {
                            extraAobjArray[i]->Rduration = 1.0f / duration;
                        }
                        extraAobjArray[i]->timer = -mobj->timeLeft - mobj->animSpeed;
                    }
                    bitMask >>= 1;
                }
                if (cmd == ANIM_CMD_SET_EXTRA_VALUE_LAST) {
                    mobj->timeLeft += duration;
                }
                break;
            case ANIM_CMD_22:
                mobj->timeLeft = (f32) (mobj->animList->w & 0x7FFF);

                bitMask = (mobj->animList++->w << 7) >> 22;

                if (bitMask & 0x01) {
                    mobj->texture.unk_54 = mobj->animList->w;
                    mobj->animList++;
                }
                if (bitMask & 0x02) {
                    mobj->texture.unk74 = mobj->animList->w;
                    mobj->animList++;
                }
                if (bitMask & 0x04) {
                    mobj->texture.unk70 = mobj->animList->w;
                    mobj->animList++;
                }
                if (bitMask & 0x08) {
                    mobj->texture.unk7C = mobj->animList->w;
                    mobj->animList++;
                }
                if (bitMask & 0x10) {
                    mobj->texture.unk78 = mobj->animList->w;
                    mobj->animList++;
                }
                break;
            default:
                break;
        }
    } while (mobj->timeLeft <= 0.0f);
}

void animUpdateTextureAnimatedParams(MObj *mobj) {
    f32 value;
    AObj *aobj;
    f32 temp_f16;
    f32 temp_f12;
    f32 temp_f18;
    f32 temp_f14;
    f32 temp_f20;
    f32 temp_f22;
    ColorPack color;
    f32 temp_f24;
    s32 interp;
    ColorPack sp38;
    ColorPack sp34;

    if (mobj->timeLeft != ANIMATION_DISABLED) {
        aobj = mobj->aobjList;

        while (aobj != NULL) {
            if (aobj->kind != ANIM_TYPE_NONE) {
                if (mobj->timeLeft != ANIMATION_FINISHED) {
                    aobj->timer += mobj->animSpeed;
                }
                if (aobj->paramID < 36) {
                    switch (aobj->kind) {
                        case ANIM_TYPE_LINEAR:
                            value = aobj->startVal + (aobj->timer * aobj->speed);
                            break;
                        case ANIM_TYPE_CUBIC: {
                            temp_f16 = SQ(aobj->Rduration);
                            temp_f12 = SQ(aobj->timer);
                            temp_f18 = aobj->Rduration * temp_f12;
                            temp_f14 = aobj->timer * temp_f12 * temp_f16;
                            temp_f20 = 2.0f * temp_f14 * aobj->Rduration;
                            temp_f22 = 3.0f * temp_f12 * temp_f16;
                            temp_f24 = temp_f14 - temp_f18;

                            value = (aobj->startVal * ((temp_f20 - temp_f22) + 1.0f)) +
                                    (aobj->goalVal * (temp_f22 - temp_f20)) +
                                    (aobj->speed * ((temp_f24 - temp_f18) + aobj->timer)) + (aobj->goalSpeed * temp_f24);
                            break;
                        }
                        case ANIM_TYPE_STEP:
                            value = aobj->Rduration <= aobj->timer ? aobj->goalVal : aobj->startVal;
                            break;
                        default:
                            break;
                    }
                    switch (aobj->paramID) {
                        case 13:
                            mobj->texIndex1 = value;
                            break;
                        case 14:
                            mobj->texture.xFrac0 = value;
                            break;
                        case 15:
                            mobj->texture.yFrac0 = value;
                            break;
                        case 16:
                            mobj->texture.xScale = value;
                            break;
                        case 17:
                            mobj->texture.yScale = value;
                            break;
                        case 18:
                            mobj->texIndex2 = value;
                            break;
                        case 19:
                            mobj->texture.xFrac1 = value;
                            break;
                        case 20:
                            mobj->texture.yFrac1 = value;
                            break;
                        case 21:
                            mobj->primLOD = value;
                            break;
                        case 22:
                            mobj->palIndex = value;
                            break;
                        default:
                            break;
                    }
                } else {
                    switch (aobj->kind) {
                        case 2:
                            interp = (s32) (aobj->timer * aobj->Rduration * 256.0f);

                            if (interp < 0) {
                                interp = 0;
                            }

                            if (interp > 0x100) {
                                interp = 0x100;
                            }

                            sp34.pack = 0;
                            sp38.pack = 0;

                            sp38.color.g = ((u8*) &aobj->startVal)[0]; // TODO: wut
                            sp38.color.a = ((u8*) &aobj->startVal)[1]; // TODO: wut

                            sp34.color.g = ((u8*) &aobj->goalVal)[0]; // TODO: wut
                            sp34.color.a = ((u8*) &aobj->goalVal)[1]; // TODO: wut

                            sp38.pack = ((0x100 - interp) * sp38.pack) + (sp34.pack * interp);

                            color.color.r = sp38.color.r;
                            color.color.g = sp38.color.b;

                            sp38.pack = 0;

                            sp38.color.g = ((u8*) &aobj->startVal)[2]; // TODO: wut
                            sp38.color.a = ((u8*) &aobj->startVal)[3]; // TODO: wut

                            sp34.color.g = ((u8*) &aobj->goalVal)[2]; // TODO: wut
                            sp34.color.a = ((u8*) &aobj->goalVal)[3]; // TODO: wut

                            sp38.pack = ((0x100 - interp) * sp38.pack) + (sp34.pack * interp);

                            color.color.b = sp38.color.r;
                            color.color.a = sp38.color.b;
                            break;
                        case 1:
                            color = (aobj->Rduration <= aobj->timer ? *(ColorPack*) &aobj->goalVal : *(ColorPack*) &aobj->startVal);
                            break;
                    }

                    switch (aobj->paramID) {
                        case 37:
                            mobj->texture.primColor = color;
                            break;
                        case 38:
                            mobj->texture.envColor = color;
                            break;
                        case 39:
                            mobj->texture.blendColor = color;
                            break;
                        case 40:
                            mobj->texture.lightColor1 = color;
                            break;
                        case 41:
                            mobj->texture.lightColor2 = color;
                            break;
                    }
                }
            }
            aobj = aobj->next;
        }

        if (mobj->timeLeft == ANIMATION_FINISHED) {
            mobj->timeLeft = ANIMATION_DISABLED;
        }
    }
}

void animUpdateModelTreeAnimation(GObj *obj) {
    DObj *dobj;
    MObj *mobj;

    dobj = obj->data;
    while (dobj != NULL) {
        animProcessModelAnimation(dobj);
        animUpdateModelAnimatedParams(dobj);

        mobj = dobj->mobjList;
        while (mobj != NULL) {
            animProcessTextureAnimation(mobj);
            animUpdateTextureAnimatedParams(mobj);

            mobj = mobj->next;
        }

        if (dobj->firstChild != NULL) {
            dobj = dobj->firstChild;
        } else if (dobj->next != NULL) {
            dobj = dobj->next;
        } else {
            while (true) {
                if ((u32) dobj->parent == 1) {
                    dobj = NULL;
                    break;
                }

                if (dobj->parent->next != NULL) {
                    dobj = dobj->parent->next;
                    break;
                }

                dobj = dobj->parent;
            }
        }
    }
}

AObj *animGetAObjByParamID(AObj *aobj, u8 paramID) {
    while (aobj != NULL) {
        if (aobj->paramID == paramID) {
            return aobj;
        }
        aobj = aobj->next;
    }

    return NULL;
}

void animSetModelAnimDuration(DObj *dobj, f32 duration) {
    AObj *aobj;

    aobj = dobj->aobjList;
    dobj->timeLeft = dobj->animSpeed + duration;
    while (aobj != NULL) {
        aobj->Rduration = 1.0f / duration;
        aobj = aobj->next;
    }
}

f32 animGetModelParamValue(DObj *dobj, s32 paramID) {
    switch (paramID) {
        case ANIM_PARAM_ROTATION_X:
            return dobj->angle.v.x;
        case ANIM_PARAM_ROTATION_Y:
            return dobj->angle.v.y;
        case ANIM_PARAM_ROTATION_Z:
            return dobj->angle.v.z;
        case ANIM_PARAM_POSITION_X:
            return dobj->pos.v.x;
        case ANIM_PARAM_POSITION_Y:
            return dobj->pos.v.y;
        case ANIM_PARAM_POSITION_Z:
            return dobj->pos.v.z;
        case ANIM_PARAM_SCALE_X:
            return dobj->scale.v.x;
        case ANIM_PARAM_SCALE_Y:
            return dobj->scale.v.y;
        case ANIM_PARAM_SCALE_Z:
            return dobj->scale.v.z;
    }
}

f32 func_8000E4E4(UnkE4E4Arg* arg0, s32 paramID) {
    switch (paramID) {
        case ANIM_PARAM_ROTATION_X:
            return arg0->rotation.x;
        case ANIM_PARAM_ROTATION_Y:
            return arg0->rotation.y;
        case ANIM_PARAM_ROTATION_Z:
            return arg0->rotation.z;
        case ANIM_PARAM_POSITION_X:
            return arg0->position.x;
        case ANIM_PARAM_POSITION_Y:
            return arg0->position.y;
        case ANIM_PARAM_POSITION_Z:
            return arg0->position.z;
        case ANIM_PARAM_SCALE_X:
            return arg0->scale.x;
        case ANIM_PARAM_SCALE_Y:
            return arg0->scale.y;
        case ANIM_PARAM_SCALE_Z:
            return arg0->scale.z;
    }
}

s32 func_8000E554(s32 arg0, DObj *dobj, f32* outValue, f32* outRate, AObj *aobjList, UnkE4E4Arg* arg5,
                       s32 paramID, s32 setRate, Vector *interpPos, s32* interpPosReady) {
    AObj *aobj;

    aobj = animGetAObjByParamID(aobjList, paramID);

    if (aobj != NULL && aobj->kind != ANIM_TYPE_NONE) {
        if (arg0 == 0 && dobj->timeLeft != ANIMATION_FINISHED) {
            aobj->timer += dobj->animSpeed;
        }
        *outValue = animGetAObjValue(aobj);
        if (setRate) {
            *outRate = animGetAObjRate(aobj);
        }
    } else {
        if (paramID == ANIM_PARAM_POSITION_X || paramID == ANIM_PARAM_POSITION_Y || paramID == ANIM_PARAM_POSITION_Z) {
            if (*interpPosReady) {
                switch (paramID) {
                    case ANIM_PARAM_POSITION_X:
                        *outValue = interpPos->x;
                        break;
                    case ANIM_PARAM_POSITION_Y:
                        *outValue = interpPos->y;
                        break;
                    case ANIM_PARAM_POSITION_Z:
                        *outValue = interpPos->z;
                        break;
                }
            } else {
                aobj = animGetAObjByParamID(aobjList, ANIM_PARAM_4);
                if (aobj != NULL && aobj->kind != ANIM_TYPE_NONE) {
                    if (arg0 == 0 && dobj->timeLeft != ANIMATION_FINISHED) {
                        aobj->timer += dobj->animSpeed;
                    }
                    *outValue = animGetAObjValue(aobj);
                    if (*outValue < 0.0f) {
                        *outValue = 0.0f;
                    } else if (*outValue > 1.0f) {
                        *outValue = 1.0f;
                    }
                    mtxGetInterpolatedPosition(interpPos, aobj->unk20, *outValue);
                    switch (paramID) {
                        case ANIM_PARAM_POSITION_X:
                            *outValue = interpPos->x;
                            break;
                        case ANIM_PARAM_POSITION_Y:
                            *outValue = interpPos->y;
                            break;
                        case ANIM_PARAM_POSITION_Z:
                            *outValue = interpPos->z;
                            break;
                    }

                    *interpPosReady = true;
                } else {
                    if (arg0 == 0) {
                        if (arg5 == NULL) {
                            return true;
                        }
                        *outValue = func_8000E4E4(arg5, paramID);
                    } else {
                        *outValue = animGetModelParamValue(dobj, paramID);
                    }
                }
            }
        } else {
            if (arg0 == 0) {
                if (arg5 == NULL) {
                    return true;
                }
                *outValue = func_8000E4E4(arg5, paramID);
            } else {
                *outValue = animGetModelParamValue(dobj, paramID);
            }
        }
    }
    return false;
}

void func_8000E818(s32 track, f32 translate, f32 rotate, f32 scale, f32* arg4, AObj *aobj) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    UNUSED f32 unused;
    f32 value;

    switch (track) {
        case 1:
        case 2:
        case 3:
            value = rotate;
            break;
        case 5:
        case 6:
        case 7:
            value = translate;
            break;
        case 8:
        case 9:
        case 10:
            value = scale;
            break;
    }

    if (value != 0.0F) {
        if (1) {
            // required to match in both pokemon snap and here
        }

        sp3C = (2.0f * aobj->speed) + aobj->goalSpeed;
        sp38 = ((-6.0f) * value) * (aobj->goalVal - aobj->startVal);

        if (sp38 < SQ(sp3C)) {
            sp34 = (sqrtf(SQ(sp3C) - sp38) + -sp3C) / value;

            TAKE_MAX(*arg4, sp34);

            sp34 = (-sp3C - sqrtf(SQ(sp3C) - sp38)) / value;

            TAKE_MAX(*arg4, sp34);
        } else if (SQ(sp3C) + -sp38 == (0, 0.0f)) {
            sp34 = -sp3C / value;

            TAKE_MAX(*arg4, sp34);
        }

        if (SQ(sp3C) + sp38 > 0.0F) {
            sp34 = (sqrtf(SQ(sp3C) + sp38) + -sp3C) / -value;

            TAKE_MAX(*arg4, sp34);

            sp34 = (-sp3C - sqrtf(SQ(sp3C) + sp38)) / -value;

            TAKE_MAX(*arg4, sp34);
        } else if (SQ(sp3C) + sp38 == (0, 0.0f)) {
            sp34 = -sp3C / -value;

            TAKE_MAX(*arg4, sp34);
        }

        sp3C = -(aobj->speed + (2.0f * aobj->goalSpeed));
        sp38 = (-6.0f * value) * (aobj->startVal - aobj->goalVal);

        if (sp38 < SQ(sp3C)) {
            sp34 = (sqrtf(SQ(sp3C) - sp38) + -sp3C) / value;

            TAKE_MAX(*arg4, sp34);

            sp34 = (-sp3C - sqrtf(SQ(sp3C) - sp38)) / value;

            TAKE_MAX(*arg4, sp34);
        } else if (SQ(sp3C) + -sp38 == (0, 0.0f)) {
            sp34 = -sp3C / value;

            TAKE_MAX(*arg4, sp34);
        }

        if ((SQ(sp3C) + sp38) > 0.0f) {
            sp34 = (sqrtf(SQ(sp3C) + sp38) + -sp3C) / -value;

            TAKE_MAX(*arg4, sp34);

            sp34 = (-sp3C - sqrtf(sp38 + SQ(sp3C))) / -value;

            TAKE_MAX(*arg4, sp34);
        } else if ((SQ(sp3C) + sp38) == (0, 0.0f)) {
            sp34 = -sp3C / -value;

            TAKE_MAX(*arg4, sp34);
        }
    }
}

f32 func_8000EC98(DObj *dobj, AnimCmd **animLists, f32 arg2, UnkE4E4Arg* arg3, s32 setRate, f32 duration,
                       f32 arg6, f32 arg7, f32 arg8) {
    AObj *origAobjList;
    AObj *spC0;
    AObj *newAObj;
    AObj *origAObj;

    f32 oldValue;
    f32 newValue;
    f32 oldRate;
    f32 newRate;
    f32 spA4;
    s32 i;
    s32 interpPosReady2;
    s32 interpPosReady;
    Vec3f interpPos2;
    Vec3f interpPos;

    spC0 = NULL;
    interpPosReady2 = 0;
    interpPosReady = 0;
    spA4 = 0.0f;

    if (animLists == NULL || *animLists == NULL) {
        if (arg3 == NULL) {
            omDObjResetAnimation(dobj);
            return 0;
        }
    }

    origAobjList = dobj->aobjList;
    dobj->aobjList = NULL;
    if (animLists != NULL && *animLists != NULL) {
        dobj->animList = *animLists;
        dobj->timeLeft = ANIMATION_CHANGED;
        dobj->timePassed = arg2;
        animProcessModelAnimation(dobj);
        spC0 = dobj->aobjList;
        dobj->aobjList = NULL;
    }

    for (i = ANIM_PARAM_MODEL_MIN; i <= ANIM_PARAM_MODEL_MAX; i++) {
        if (i == ANIM_PARAM_4) {
            continue;
        }
        newRate = 0.0f;
        oldRate = 0.0f;

        if (func_8000E554(0, dobj, &newValue, &newRate, spC0, arg3, i, setRate, &interpPos, &interpPosReady)) {
            continue;
        }

        func_8000E554(1, dobj, &oldValue, &oldRate, origAobjList, arg3, i, setRate, &interpPos2, &interpPosReady2);

        if (newValue != oldValue || newRate != oldRate) {
            newAObj = HS64_AObjNew(dobj, i);

            if (i == ANIM_PARAM_ROTATION_X || i == ANIM_PARAM_ROTATION_Y || i == ANIM_PARAM_ROTATION_Z) {
                if (ABS(newValue - oldValue) > ABS(newValue - (oldValue + M_TAU))) {
                    oldValue += M_TAU;
                }

                if (ABS(newValue - oldValue) > ABS(newValue - (oldValue - M_TAU))) {
                    oldValue -= M_TAU;
                }
            }

            switch (setRate) {
                case 0:
                    newAObj->startVal = oldValue;
                    newAObj->goalVal = newValue;
                    newAObj->kind = ANIM_TYPE_LINEAR;
                    newAObj->Rduration = 1.0f / duration;
                    newAObj->timer = -dobj->animSpeed;
                    newAObj->speed = (newAObj->goalVal - newAObj->startVal) / duration;
                    newAObj->goalSpeed = 0.0f;
                    break;
                case 1:
                case 2:
                    newAObj->startVal = oldValue;
                    newAObj->goalVal = newValue;
                    newAObj->kind = ANIM_TYPE_CUBIC;
                    newAObj->Rduration = 1.0f / duration;
                    newAObj->timer = -dobj->animSpeed;
                    newAObj->speed = oldRate;
                    newAObj->goalSpeed = newRate;

                    if (setRate == 2) {
                        func_8000E818(i, arg6, arg7, arg8, &spA4, newAObj);
                    }
                    break;
                default:
                    break;
            }
        }
    }

    origAObj = dobj->aobjList;
    dobj->aobjList = origAobjList;
    omDObjResetAnimation(dobj);
    dobj->aobjList = spC0;
    omDObjResetAnimation(dobj);

    dobj->aobjList = origAObj;
    dobj->animList = NULL;
    dobj->timeLeft = dobj->animSpeed + duration;
    dobj->timePassed = -dobj->animSpeed;

    return spA4;
}

f32 func_8000F054(GObj *gobj, AnimCmd** cmdList, f32 animTimer, UnkE4E4Arg* arg3, s32 arg4, f32 arg5,
                       f32 arg6, f32 arg7, f32 arg8, f32 arg9) {
    f32 ret;
    UNUSED f32 tmp;
    DObj *dobj;

    dobj = gobj->data;
    gobj->animTimer = animTimer;
    if (arg4 == 2) {
        f32 sp68 = arg5;
        arg5 = 0.0f;
        while (dobj != NULL) {
            ret = func_8000EC98(dobj, cmdList, animTimer, arg3, arg4, arg5, arg7, arg8, arg9);
            if (arg5 < ret) {
                arg5 = ret;
            }

            if (cmdList != NULL) {
                cmdList++;
            }

            if (arg3 != NULL) {
                arg3++;
            }

            dobj = animModelTreeNextNode(dobj);
        }

        dobj = gobj->data;
        if (arg5 < sp68) {
            arg5 = sp68;
        } else if (arg5 > arg6) {
            arg5 = arg6;
        }

        while (dobj != NULL) {
            animSetModelAnimDuration(dobj, arg5);
            dobj = animModelTreeNextNode(dobj);
        }
    } else {
        while (dobj != NULL) {
            func_8000EC98(dobj, cmdList, animTimer, arg3, arg4, arg5, arg7, arg8, arg9);

            if (cmdList != NULL) {
                cmdList++;
            }

            if (arg3 != NULL) {
                arg3++;
            }

            dobj = animModelTreeNextNode(dobj);
        }
    }

    gobj->animTimer = 0.0f;
    return arg5;
}

void func_8000F230(GObj* obj, AnimCmd** cmdList, f32 animTimer, UnkE4E4Arg* arg3) {
    s32 i;
    DObj* dobj;
    f32 value;
    UNUSED s32 pad;
    s32 sp7C;
    Vec3f sp70;
    s32 sp6C;

    dobj = obj->data;
    sp7C = 0;
    sp6C = true;
    obj->animTimer = animTimer;

    while (dobj != NULL) {
        if (*cmdList != NULL) {
            animSetModelAnimation(dobj, *cmdList, animTimer);
            dobj->animCBReceiver = sp6C;
            sp6C = 0;

            for (i = ANIM_PARAM_MODEL_MIN; i <= ANIM_PARAM_MODEL_MAX; i++) {
                if (i != ANIM_PARAM_4) {

                    func_8000E554(0, dobj, &value, NULL, dobj->aobjList, arg3, i, 0, &sp70, &sp7C);

                    switch (i) {
                        case ANIM_PARAM_ROTATION_X:
                            dobj->angle.v.x = value;
                            break;
                        case ANIM_PARAM_ROTATION_Y:
                            dobj->angle.v.y = value;
                            break;
                        case ANIM_PARAM_ROTATION_Z:
                            dobj->angle.v.z = value;
                            break;
                        case ANIM_PARAM_POSITION_X:
                            dobj->pos.v.x = value;
                            break;
                        case ANIM_PARAM_POSITION_Y:
                            dobj->pos.v.y = value;
                            break;
                        case ANIM_PARAM_POSITION_Z:
                            dobj->pos.v.z = value;
                            break;
                        case ANIM_PARAM_SCALE_X:
                            dobj->scale.v.x = value;
                            break;
                        case ANIM_PARAM_SCALE_Y:
                            dobj->scale.v.y = value;
                            break;
                        case ANIM_PARAM_SCALE_Z:
                            dobj->scale.v.z = value;
                            break;
                    }
                }
            }
        } else {
            dobj->timeLeft = ANIMATION_DISABLED;
            dobj->animCBReceiver = false;
            if (arg3 != NULL) {
                dobj->pos.v = arg3->position;
                dobj->angle.v = arg3->rotation;
                dobj->scale.v = arg3->scale;
            }
        }

        cmdList++;

        if (arg3 != NULL) {
            arg3++;
        }

        dobj = animModelTreeNextNode(dobj);
    }
}

void func_8000F448(DObj *dobj) {
    omDObjAppendMtx(dobj, MTX_TYPE_ROTATE_RPY_TRANSLATE, 0);
    omDObjAppendMtx(dobj, MTX_TYPE_SCALE, 0);
}

DObj *func_8000F480(GObj *gobj, void* unk50) {
    DObj *dobj;

    dobj = omGObjAddDObj(gobj, unk50);
    func_8000F448(dobj);

    return dobj;
}

DObj *func_8000F4B0(DObj *d, void* arg1) {
    DObj *dobj;

    dobj = omDObjAddSibling(d, arg1);
    func_8000F448(dobj);

    return dobj;
}

DObj *func_8000F4E0(DObj *d, void* arg1) {
    DObj *dobj;

    dobj = omDObjAddChild(d, arg1);
    func_8000F448(dobj);

    return dobj;
}

void func_8000F510(GObj *obj, UnkE4E4Arg* arg1, DObj **arg2) {
    int i;
    DObj *dobj;
    s32 trunc;
    DObj *sp44[18];

    for (i = 0; i < ARRAY_COUNT(sp44); i++) {
        sp44[i] = NULL;
    }

    while (arg1->unk_00 != ARRAY_COUNT(sp44)) {
        trunc = arg1->unk_00 & 0xFFF;
        if (trunc != 0) {
            dobj = sp44[trunc] = omDObjAddChild(sp44[trunc - 1], arg1->unk04);
        } else {
            dobj = sp44[0] = omGObjAddDObj(obj, arg1->unk04);
        }
        if (arg1->unk_00 & 0xF000) {
            omDObjAppendMtx(dobj, (u32)MTX_TYPE_TRANSLATE, 0);
        }

        if (arg1->unk_00 & 0x8000) {
            omDObjAppendMtx(dobj, MTX_TYPE_44, 0);
        } else if (arg1->unk_00 & 0x4000) {
            omDObjAppendMtx(dobj, MTX_TYPE_46, 0);
        } else if (arg1->unk_00 & 0x2000) {
            omDObjAppendMtx(dobj, MTX_TYPE_48, 0);
        } else if (arg1->unk_00 & 0x1000) {
            omDObjAppendMtx(dobj, MTX_TYPE_50, 0);
        } else {
            func_8000F448(dobj);
        }
        dobj->pos.v = arg1->position;
        dobj->angle.v = arg1->rotation;
        dobj->scale.v = arg1->scale;

        if (arg2 != NULL) {
            *arg2++ = dobj;
        }

        arg1++;
    }
}

void func_8000F6EC(DObj *dobj, u8 mtxType1, u8 mtxType2, u8 mtxType3) {
    if (mtxType1 != 0) {
        omDObjAppendMtx(dobj, mtxType1, 0);
    }
    if (mtxType2 != 0) {
        omDObjAppendMtx(dobj, mtxType2, 0);
    }
    if (mtxType3 != 0) {
        omDObjAppendMtx(dobj, mtxType3, 0);
    }
}

void func_8000F754(DObj *arg0, u8 arg1, u8 arg2, u8 arg3, s32 arg4) {
    s32 isTranslate = false;
    s32 isScale = 0;
    s32 phi_v1 = 0;
    s32 phi_t2 = 0;

    switch (arg1) {
        case MTX_TYPE_TRANSLATE:
            isTranslate = true;
            break;
        case MTX_TYPE_ROTATE_RPY:
            phi_v1 = 1;
            break;
        case MTX_TYPE_ROTATE_RPY_TRANSLATE:
            phi_v1 = 1;
            isTranslate = true;
            break;
        case MTX_TYPE_ROTATE_RPY_TRANSLATE_SCALE:
            isScale = 1;
            phi_v1 = 1;
            isTranslate = true;
            break;
        case MTX_TYPE_ROTATE_PYR:
            phi_v1 = 2;
            break;
        case MTX_TYPE_ROTATE_PYR_TRANSLATE:
            phi_v1 = 2;
            isTranslate = true;
            break;
        case MTX_TYPE_ROTATE_PYR_TRANSLATE_SCALE:
            phi_v1 = 2;
            isScale = 1;
            isTranslate = true;
            break;
        case MTX_TYPE_SCALE:
            isScale = 1;
            break;
        // Removed MTX_TYPE_51, MTX_TYPE_52, and MTX_TYPE_54 handling
    }

    switch (arg2) {
        case MTX_TYPE_ROTATE_RPY:
            phi_v1 = 1;
            break;
        case MTX_TYPE_ROTATE_PYR:
            phi_v1 = 2;
            break;
        case MTX_TYPE_SCALE:
            isScale = 1;
            break;
    }

    if (arg3 == MTX_TYPE_SCALE) {
        isScale = 1;
    }

    if (isTranslate) {
        if (phi_t2) {
            omDObjAppendMtx(arg0, MTX_TYPE_55, 0);
        } else {
            omDObjAppendMtx(arg0, MTX_TYPE_TRANSLATE, 0);
        }
    }

    if (arg4 & 0x4000) {
        if (phi_v1 == 1) {
            omDObjAppendMtx(arg0, MTX_TYPE_46, 0);
        } else {
            omDObjAppendMtx(arg0, MTX_TYPE_45, 0);
        }
    } else if (arg4 & 0x2000) {
        if (phi_v1 == 1) {
            omDObjAppendMtx(arg0, MTX_TYPE_48, 0);
        } else {
            omDObjAppendMtx(arg0, MTX_TYPE_47, 0);
        }
    } else if (arg4 & 0x1000) {
        if (phi_v1 == 1) {
            omDObjAppendMtx(arg0, MTX_TYPE_50, 0);
        } else {
            omDObjAppendMtx(arg0, MTX_TYPE_49, 0);
        }
    } else if (isScale) {
        if (phi_v1 == 1) {
            omDObjAppendMtx(arg0, MTX_TYPE_44, 0);
        } else {
            omDObjAppendMtx(arg0, MTX_TYPE_43, 0);
        }
    } else {
        if (phi_v1 == 1) {
            omDObjAppendMtx(arg0, MTX_TYPE_42, 0);
        } else {
            omDObjAppendMtx(arg0, MTX_TYPE_41, 0);
        }
    }
}

void func_8000F980(GObj *obj, UnkE4E4Arg* arg1, DObj **arg2, u8 arg3, u8 arg4, u8 arg5) {
    int i;
    DObj *dobj;
    s32 trunc;
    DObj *sp54[18];

    for (i = 0; i < ARRAY_COUNT(sp54); i++) {
        sp54[i] = NULL;
    }

    while (arg1->unk_00 != 18) {
        trunc = arg1->unk_00 & 0xFFF;
        if (trunc) {
            dobj = sp54[trunc] = omDObjAddChild(sp54[trunc - 1], arg1->unk04);
        } else {
            dobj = sp54[0] = omGObjAddDObj(obj, arg1->unk04);
        }

        if (arg1->unk_00 & 0xF000) {
            func_8000F754(dobj, arg3, arg4, arg5, arg1->unk_00 & 0xF000);
        } else {
            func_8000F6EC(dobj, arg3, arg4, arg5);
        }

        dobj->pos.v = arg1->position;
        dobj->angle.v = arg1->rotation;
        dobj->scale.v = arg1->scale;

        if (arg2 != NULL) {
            *arg2 = dobj;
            arg2++;
        }
        arg1++;
    }
}

void func_8000FB10(GObj *gobj, UnkE4E4Arg* arg1, TextureScroll*** arg2, DObj **arg3,
                        u8 arg4, u8 arg5, u8 arg6) {
    int i;
    DObj *dobj;
    s32 trunc;
    DObj *sp5C[18];
    TextureScroll** csr;
    TextureScroll* msub;

    for (i = 0; i < ARRAY_COUNT(sp5C); i++) {
        sp5C[i] = NULL;
    }

    while (arg1->unk_00 != 18) {
        trunc = arg1->unk_00 & 0xFFF;
        if (trunc) {
            dobj = sp5C[trunc] = omDObjAddChild(sp5C[trunc - 1], arg1->unk04);
        } else {
            dobj = sp5C[0] = omGObjAddDObj(gobj, arg1->unk04);
        }
        if (arg1->unk_00 & 0xF000) {
            func_8000F754(dobj, arg4, arg5, arg6, arg1->unk_00 & 0xF000);
        } else {
            func_8000F6EC(dobj, arg4, arg5, arg6);
        }
        dobj->pos.v = arg1->position;
        dobj->angle.v = arg1->rotation;
        dobj->scale.v = arg1->scale;

        if (arg2 != NULL) {
            if (*arg2 != NULL) {
                csr = *arg2;
                msub = *csr;
                while (msub != NULL) {
                    omDObjAddMObj(dobj, msub);
                    csr++;
                    msub = *csr;
                }
            }
            arg2++;
        }
        if (arg3 != NULL) {
            *arg3 = dobj;
            arg3++;
        }
        arg1++;
    }
}

void func_8000FCE4(GObj *arg0, TextureScroll*** arg1) {
    DObj *dobj;
    TextureScroll** csr;
    TextureScroll* msub;

    dobj = arg0->data;
    while (dobj != NULL) {
        if (arg1 != NULL) {
            if (*arg1 != NULL) {
                csr = *arg1;
                msub = *csr;
                while (msub != NULL) {
                    omDObjAddMObj(dobj, msub);
                    csr++;
                    msub = *csr;
                }
            }
            arg1++;
        }
        dobj = animModelTreeNextNode(dobj);
    }
}

void func_8000FD78(GObj *obj, UnkE4E4Arg* arg1) {
    DObj *dobj;

    dobj = obj->data;
    while (dobj != NULL && arg1->unk_00 != 18) {
        dobj->pos.v = arg1->position;
        dobj->angle.v = arg1->rotation;
        dobj->scale.v = arg1->scale;

        arg1++;
        dobj = animModelTreeNextNode(dobj);
    }
}

void animSetCameraAnimation(Camera *cam, AnimCmd *animList, f32 time) {
    AObj *aobj;

    aobj = cam->aobj;
    while (aobj != NULL) {
        aobj->kind = ANIM_TYPE_NONE;
        aobj = aobj->next;
    }
    cam->animList = animList;
    cam->timeRemaining = ANIMATION_CHANGED;
    cam->timeElapsed = time;
}

void animProcessCameraAnimation(Camera* cam) {
    struct AObj *aobjArray[ANIM_PARAM_CAMERA_MAX - ANIM_PARAM_CAMERA_MIN + 1];
    struct AObj *aobj;
    s32 i;
    u32 cmd;
    u32 bitMask;
    f32 duration;

    if (cam->timeRemaining != ANIMATION_DISABLED) {
        if (cam->timeRemaining == ANIMATION_CHANGED) {
            cam->timeRemaining = -cam->timeElapsed;
        } else {
            cam->timeRemaining -= cam->animSpeed;
            cam->timeElapsed += cam->animSpeed;
            cam->gobj->animTimer = cam->timeElapsed;

            if (cam->timeRemaining > 0.0f) {
                return;
            }
        }

        for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
            aobjArray[i] = NULL;
        }

        aobj = cam->aobj;
        while (aobj != NULL) {
            if (aobj->paramID >= ANIM_PARAM_CAMERA_MIN && aobj->paramID <= ANIM_PARAM_CAMERA_MAX) {
                aobjArray[aobj->paramID - ANIM_PARAM_CAMERA_MIN] = aobj;
            }
            aobj = aobj->next;
        }

        do {
            if (cam->animList == NULL) {
                aobj = cam->aobj;
                while (aobj != NULL) {
                    if (aobj->kind != ANIM_TYPE_NONE) {
                        aobj->timer += cam->animSpeed + cam->timeRemaining;
                    }
                    aobj = aobj->next;
                }
                cam->timeElapsed = cam->timeRemaining;
                cam->timeRemaining = ANIMATION_FINISHED;
                return;
            }

            cmd = cam->animList->w >> 25;
            switch (cmd) {
                case ANIM_CMD_SET_VALUE_ZERO_RATE_LAST:
                case ANIM_CMD_SET_VALUE_ZERO_RATE:
                    duration = (f32) (cam->animList->w & 0x7FFF);
                    bitMask = (cam->animList++->w << 7) >> 22;

                    for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                        if (bitMask == 0) {
                            break;
                        }
                        if (bitMask & 1) {
                            if (aobjArray[i] == NULL) {
                                aobjArray[i] = omCameraAddAObj(cam, i + ANIM_PARAM_CAMERA_MIN);
                            }
                            aobjArray[i]->startVal = aobjArray[i]->goalVal;
                            aobjArray[i]->goalVal = cam->animList->f;
                            cam->animList++;
                            aobjArray[i]->speed = aobjArray[i]->goalSpeed;
                            aobjArray[i]->goalSpeed = 0.0f;
                            aobjArray[i]->kind = ANIM_TYPE_CUBIC;

                            if (duration != 0.0f) {
                                aobjArray[i]->Rduration = 1.0f / duration;
                            }
                            aobjArray[i]->timer = -cam->timeRemaining - cam->animSpeed;
                        }
                        bitMask >>= 1;
                    }
                    if (cmd == ANIM_CMD_SET_VALUE_ZERO_RATE_LAST) {
                        cam->timeRemaining += duration;
                    }
                    break;
                case ANIM_CMD_SET_VALUE_LAST:
                case ANIM_CMD_SET_VALUE:
                    duration = (f32) (cam->animList->w & 0x7FFF);
                    bitMask = (cam->animList++->w << 7) >> 22;

                    for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                        if (bitMask == 0) {
                            break;
                        }
                        if (bitMask & 1) {
                            if (aobjArray[i] == NULL) {
                                aobjArray[i] = omCameraAddAObj(cam, i + ANIM_PARAM_CAMERA_MIN);
                            }
                            aobjArray[i]->startVal = aobjArray[i]->goalVal;
                            aobjArray[i]->goalVal = cam->animList->f;
                            cam->animList++;
                            aobjArray[i]->kind = ANIM_TYPE_LINEAR;

                            if (duration != 0.0f) {
                                aobjArray[i]->speed = (aobjArray[i]->goalVal - aobjArray[i]->startVal) / duration;
                            }
                            aobjArray[i]->timer = -cam->timeRemaining - cam->animSpeed;
                            aobjArray[i]->goalSpeed = 0.0f;
                        }
                        bitMask >>= 1;
                    }
                    if (cmd == ANIM_CMD_SET_VALUE_LAST) {
                        cam->timeRemaining += duration;
                    }
                    break;
                case ANIM_CMD_SET_VALUE_WITH_RATE_LAST:
                case ANIM_CMD_SET_VALUE_WITH_RATE:
                    duration = (f32) (cam->animList->w & 0x7FFF);
                    bitMask = (cam->animList++->w << 7) >> 22;

                    for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                        if (bitMask == 0) {
                            break;
                        }
                        if (bitMask & 1) {
                            if (aobjArray[i] == NULL) {
                                aobjArray[i] = omCameraAddAObj(cam, i + ANIM_PARAM_CAMERA_MIN);
                            }

                            aobjArray[i]->startVal = aobjArray[i]->goalVal;
                            aobjArray[i]->goalVal = cam->animList->f;
                            cam->animList++;
                            aobjArray[i]->speed = aobjArray[i]->goalSpeed;
                            aobjArray[i]->goalSpeed = cam->animList->f;
                            cam->animList++;
                            aobjArray[i]->kind = ANIM_TYPE_CUBIC;
                            if (duration != 0.0f) {
                                aobjArray[i]->Rduration = 1.0f / duration;
                            }
                            aobjArray[i]->timer = -cam->timeRemaining - cam->animSpeed;
                        }

                        bitMask >>= 1;
                    }

                    if (cmd == ANIM_CMD_SET_VALUE_WITH_RATE_LAST) {
                        cam->timeRemaining += duration;
                    }
                    break;
                case ANIM_CMD_SET_TARGET_RATE:
                    bitMask = (cam->animList++->w << 7) >> 22;
                    for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                        if (bitMask == 0) {
                            break;
                        }
                        if (bitMask & 1) {
                            if (aobjArray[i] == NULL) {
                                aobjArray[i] = omCameraAddAObj(cam, i + ANIM_PARAM_CAMERA_MIN);
                            }

                            aobjArray[i]->goalSpeed = cam->animList->f;
                            cam->animList++;
                        }
                        bitMask >>= 1;
                    }
                    break;
                case ANIM_CMD_WAIT:
                    cam->timeRemaining += (f32) (cam->animList++->w & 0x7FFF);
                    break;
                case ANIM_CMD_SET_VALUE_AFTER_LAST:
                case ANIM_CMD_SET_VALUE_AFTER:
                    duration = (f32) (cam->animList->w & 0x7FFF);
                    bitMask = (cam->animList++->w << 7) >> 22;

                    for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                        if (bitMask == 0) {
                            break;
                        }
                        if (bitMask & 1) {
                            if (aobjArray[i] == NULL) {
                                aobjArray[i] = omCameraAddAObj(cam, i + ANIM_PARAM_CAMERA_MIN);
                            }

                            aobjArray[i]->startVal = aobjArray[i]->goalVal;
                            aobjArray[i]->goalVal = cam->animList->f;
                            cam->animList++;
                            aobjArray[i]->kind = ANIM_TYPE_STEP;
                            aobjArray[i]->Rduration = duration;
                            aobjArray[i]->timer = -cam->timeRemaining - cam->animSpeed;
                            aobjArray[i]->goalSpeed = 0.0f;
                        }
                        bitMask >>= 1;
                    }

                    if (cmd == ANIM_CMD_SET_VALUE_AFTER_LAST) {
                        cam->timeRemaining += duration;
                    }

                    break;
                case ANIM_CMD_SET_ANIMATION:
                    cam->animList++;
                    cam->animList = cam->animList->ptr;
                    cam->timeElapsed = -cam->timeRemaining;
                    cam->gobj->animTimer = -cam->timeRemaining;
                    break;
                case ANIM_CMD_JUMP:
                    cam->animList++;
                    cam->animList = cam->animList->ptr;
                    break;
                case ANIM_CMD_12:
                    duration = (f32) (cam->animList->w & 0x7FFF);
                    bitMask = (cam->animList++->w << 7) >> 22;

                    for (i = 0; i < ARRAY_COUNT(aobjArray); i++) {
                        if (bitMask == 0) {
                            break;
                        }
                        if (bitMask & 1) {
                            if (aobjArray[i] == NULL) {
                                aobjArray[i] = omCameraAddAObj(cam, i + ANIM_PARAM_CAMERA_MIN);
                            }

                            aobjArray[i]->timer += duration;
                        }
                        bitMask >>= 1;
                    }
                    break;
                case ANIM_CMD_13:
                    bitMask = (cam->animList++->w << 7) >> 22;

                    if (bitMask & 0x08) {
                        if (aobjArray[3] == NULL) {
                            aobjArray[3] = omCameraAddAObj(cam, ANIM_PARAM_CAMERA_28);
                        }

                        aobjArray[3]->unk20 = cam->animList->ptr;
                        cam->animList++;
                    }
                    if (bitMask & 0x80) {
                        if (aobjArray[7] == NULL) {
                            aobjArray[7] = omCameraAddAObj(cam, ANIM_PARAM_CAMERA_32);
                        }

                        aobjArray[7]->unk20 = cam->animList->ptr;
                        cam->animList++;
                    }
                    break;
                case ANIM_CMD_END:
                    aobj = cam->aobj;
                    while (aobj != NULL) {
                        if (aobj->kind != ANIM_TYPE_NONE) {
                            aobj->timer += cam->animSpeed + cam->timeRemaining;
                        }
                        aobj = aobj->next;
                    }

                    cam->timeElapsed = cam->timeRemaining;
                    cam->timeRemaining = ANIMATION_FINISHED;
                    return; // not break
                case ANIM_CMD_SET_CLIP_PLANES:
                    cam->timeRemaining += (f32) (cam->animList++->w & 0x7FFF);
                    cam->perspMtx.persp.near = cam->animList++->f;
                    cam->perspMtx.persp.far = cam->animList++->f;
                    break;
                default:
                    break;
            }
        } while (cam->timeRemaining <= 0.0f);
    }
}

void animUpdateCameraAnimatedParams(Camera* cam) {
    AObj *aobj;
    f32 tmp;

    if (cam->timeRemaining != ANIMATION_DISABLED) {
        aobj = cam->aobj;
        while (aobj != NULL) {
            if (aobj->kind != ANIM_TYPE_NONE) {
                if (cam->timeRemaining != ANIMATION_FINISHED) {
                    aobj->timer += cam->animSpeed;
                }

                if (!(cam->gobj->flags & 2)) {
                    switch (aobj->paramID) {
                        case ANIM_PARAM_CAMERA_XEYE:
                            cam->viewMtx.lookAt.eye.x = animGetAObjValue(aobj);
                            break;
                        case ANIM_PARAM_CAMERA_YEYE:
                            cam->viewMtx.lookAt.eye.y = animGetAObjValue(aobj);
                            break;
                        case ANIM_PARAM_CAMERA_ZEYE:
                            cam->viewMtx.lookAt.eye.z = animGetAObjValue(aobj);
                            break;
                        case ANIM_PARAM_CAMERA_28:
                            tmp = animGetAObjValue(aobj);
                            if (tmp < 0.0f) {
                                tmp = 0.0f;
                            } else if (tmp > 1.0f) {
                                tmp = 1.0f;
                            }
                            mtxGetInterpolatedPosition(&cam->viewMtx.lookAt.eye, aobj->unk20, tmp);
                            break;
                        case ANIM_PARAM_CAMERA_XAT:
                            cam->viewMtx.lookAt.at.x = animGetAObjValue(aobj);
                            break;
                        case ANIM_PARAM_CAMERA_YAT:
                            cam->viewMtx.lookAt.at.y = animGetAObjValue(aobj);
                            break;
                        case ANIM_PARAM_CAMERA_ZAT:
                            cam->viewMtx.lookAt.at.z = animGetAObjValue(aobj);
                            break;
                        case ANIM_PARAM_CAMERA_32:
                            tmp = animGetAObjValue(aobj);
                            if (tmp < 0.0f) {
                                tmp = 0.0f;
                            } else if (tmp > 1.0f) {
                                tmp = 1.0f;
                            }
                            mtxGetInterpolatedPosition(&cam->viewMtx.lookAt.at, aobj->unk20, tmp);
                            break;
                        case ANIM_PARAM_CAMERA_ROLL:
                            cam->viewMtx.lookAtRoll.roll = animGetAObjValue(aobj);
                            break;
                        case ANIM_PARAM_CAMERA_FOVY:
                            cam->perspMtx.persp.fovy = animGetAObjValue(aobj);
                            break;
                    }
                }
            }

            aobj = aobj->next;
        }

        if (cam->timeRemaining == ANIMATION_FINISHED) {
            cam->timeRemaining = ANIMATION_DISABLED;
        }
    }
}

void animUpdateCameraAnimation(GObj *obj) {
    Camera* cam = obj->data;

    animProcessCameraAnimation(cam);
    animUpdateCameraAnimatedParams(cam);
}

s32 animGetTotalDuration(AnimCmd** arg0) {
    AnimCmd* list;
    u32 bitMask;
    s32 total = 0;
    s32 i;
    u32 cmd;
    u32 id;

    while (*arg0 == NULL) {
        arg0++;
    }

    list = *arg0;

    cmd = list->w;
    id = cmd >> 25;

    while (true) {
        switch (id) {
            case ANIM_CMD_SET_VALUE_LAST:
            case ANIM_CMD_SET_VALUE_ZERO_RATE_LAST:
            case ANIM_CMD_SET_VALUE_AFTER_LAST:
                total += cmd & 0x7FFF;
                /* fallthrough */
            case ANIM_CMD_SET_VALUE:
            case ANIM_CMD_SET_TARGET_RATE:
            case ANIM_CMD_SET_VALUE_ZERO_RATE:
            case ANIM_CMD_SET_VALUE_AFTER:
                bitMask = (cmd << 7) >> 22;
                list++;
                for (i = 0; i < 10; i++) {
                    if (bitMask == 0) {
                        break;
                    }
                    if (bitMask & 1) {
                        list++;
                    }

                    bitMask >>= 1;
                }
                cmd = list->w;
                id = cmd >> 25;
                break;
            case ANIM_CMD_SET_VALUE_WITH_RATE_LAST:
                total += cmd & 0x7FFF;
                /* fallthrough */
            case ANIM_CMD_SET_VALUE_WITH_RATE:
                bitMask = (cmd << 7) >> 22;
                list++;
                for (i = 0; i < 10; i++) {
                    if (bitMask == 0) {
                        break;
                    }
                    if (bitMask & 1) {
                        list += 2;
                    }

                    bitMask >>= 1;
                }
                cmd = list->w;
                id = cmd >> 25;
                break;
            case ANIM_CMD_WAIT:
            case ANIM_CMD_SET_FLAGS:
                total += cmd & 0x7FFF;
                list++;
                cmd = list->w;
                id = cmd >> 25;
                break;
            case ANIM_CMD_12:
                list++;
                cmd = list->w;
                id = cmd >> 25;
                break;
            case ANIM_CMD_13:
                list += 2;
                cmd = list->w;
                id = cmd >> 25;
                break;
            case ANIM_CMD_17:
                total += cmd & 0x7FFF;
                bitMask = (cmd << 7) >> 22;
                list++;
                for (i = 4; i < 14; i++) {
                    if (bitMask == 0) {
                        break;
                    }
                    if (bitMask & 1) {
                        list++;
                    }

                    bitMask >>= 1;
                }
                cmd = list->w;
                id = cmd >> 25;
                break;
            case ANIM_CMD_END:
                return total;
            case ANIM_CMD_JUMP:
            case ANIM_CMD_SET_ANIMATION:
                return -total;
            case ANIM_CMD_16:
                break;
        }
    }
}
