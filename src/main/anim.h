#ifndef __ANIM_H__
#define __ANIM_H__

#include "DObj.h"
#include "object_manager.h"

#define ANIMATION_DISABLED ((-FLOAT_MAX))
#define ANIMATION_CHANGED ((-FLOAT_MAX) / 2)
#define ANIMATION_FINISHED ((-FLOAT_MAX) / 3)

#define TAKE_MAX(a, b) \
    if ((a) < (b))     \
    (a) = (b)

enum AnimType {
    ANIM_TYPE_NONE = 0,
    ANIM_TYPE_STEP = 1,
    ANIM_TYPE_LINEAR = 2,
    ANIM_TYPE_CUBIC = 3
};

enum AnimCommand {
    ANIM_CMD_END = 0,
    ANIM_CMD_JUMP = 1,
    ANIM_CMD_WAIT = 2,
    ANIM_CMD_SET_VALUE_LAST = 3,
    ANIM_CMD_SET_VALUE = 4,
    ANIM_CMD_SET_VALUE_WITH_RATE_LAST = 5,
    ANIM_CMD_SET_VALUE_WITH_RATE = 6,
    ANIM_CMD_SET_TARGET_RATE = 7,
    ANIM_CMD_SET_VALUE_ZERO_RATE_LAST = 8,
    ANIM_CMD_SET_VALUE_ZERO_RATE = 9,
    ANIM_CMD_SET_VALUE_AFTER_LAST = 10,
    ANIM_CMD_SET_VALUE_AFTER = 11,
    ANIM_CMD_12 = 12,
    ANIM_CMD_13 = 13,
    ANIM_CMD_SET_ANIMATION = 14,
    ANIM_CMD_SET_FLAGS = 15,
    ANIM_CMD_16 = 16,
    ANIM_CMD_17 = 17,
    ANIM_CMD_SET_EXTRA_VALUE_AFTER_LAST = 18,
    ANIM_CMD_SET_EXTRA_VALUE_AFTER = 19,
    ANIM_CMD_SET_EXTRA_VALUE_LAST = 20,
    ANIM_CMD_SET_EXTRA_VALUE = 21,
    ANIM_CMD_22 = 22,
    ANIM_CMD_23 = 23
};

enum AnimParam {
    // model
    ANIM_PARAM_MODEL_MIN = 1,
    ANIM_PARAM_ROTATION_X = 1,
    ANIM_PARAM_ROTATION_Y = 2,
    ANIM_PARAM_ROTATION_Z = 3,
    ANIM_PARAM_4 = 4,
    ANIM_PARAM_POSITION_X = 5,
    ANIM_PARAM_POSITION_Y = 6,
    ANIM_PARAM_POSITION_Z = 7,
    ANIM_PARAM_SCALE_X = 8,
    ANIM_PARAM_SCALE_Y = 9,
    ANIM_PARAM_SCALE_Z = 10,
    ANIM_PARAM_MODEL_MAX = 10,
    // texture
    ANIM_PARAM_TEXTURE_MIN = 13,
    ANIM_PARAM_TEXTURE_13 = 13,
    ANIM_PARAM_TEXTURE_14 = 14,
    ANIM_PARAM_TEXTURE_15 = 15,
    ANIM_PARAM_TEXTURE_16 = 16,
    ANIM_PARAM_TEXTURE_17 = 17,
    ANIM_PARAM_TEXTURE_18 = 18,
    ANIM_PARAM_TEXTURE_19 = 19,
    ANIM_PARAM_TEXTURE_20 = 20,
    ANIM_PARAM_TEXTURE_21 = 21,
    ANIM_PARAM_TEXTURE_22 = 22,
    ANIM_PARAM_TEXTURE_MAX = 22,
    // camera
    ANIM_PARAM_CAMERA_MIN = 25,
    ANIM_PARAM_CAMERA_XEYE = 25,
    ANIM_PARAM_CAMERA_YEYE = 26,
    ANIM_PARAM_CAMERA_ZEYE = 27,
    ANIM_PARAM_CAMERA_28 = 28,
    ANIM_PARAM_CAMERA_XAT = 29,
    ANIM_PARAM_CAMERA_YAT = 30,
    ANIM_PARAM_CAMERA_ZAT = 31,
    ANIM_PARAM_CAMERA_32 = 32,
    ANIM_PARAM_CAMERA_ROLL = 33,
    ANIM_PARAM_CAMERA_FOVY = 34,
    ANIM_PARAM_CAMERA_MAX = 34,
    // texture extra
    ANIM_PARAM_TEXTURE_EXTRA_MIN = 37,
    ANIM_PARAM_TEXTURE_EXTRA_37 = 37,
    ANIM_PARAM_TEXTURE_EXTRA_38 = 38,
    ANIM_PARAM_TEXTURE_EXTRA_39 = 39,
    ANIM_PARAM_TEXTURE_EXTRA_40 = 40,
    ANIM_PARAM_TEXTURE_EXTRA_41 = 41,
    ANIM_PARAM_TEXTURE_EXTRA_MAX = 41
};

typedef union AnimCmd {
    u32 w;
    f32 f;
    void* ptr;
} AnimCmd;

typedef struct {
    /* 0x00 */ f32 speed;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ AnimCmd** modelAnims;
    /* 0x0C */ AnimCmd*** matAnims;
    /* 0x10 */ s32* ids;
} AnimationHeader;

typedef struct UnkEC64Arg3 {
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ void* unk04;
    /* 0x08 */ Vec3f position;
    /* 0x14 */ Vec3f rotation;
    /* 0x20 */ Vec3f scale;
} UnkEC64Arg3; // size == 0x2C

DObj* animModelTreeNextNode(DObj*);
// void anim_func_8000FBC4(GObj* obj, struct UnkEC64Arg3* arg1, DObj** arg2);
void animSetModelAnimationSpeed(GObj* obj, f32 speed);
void animSetTextureAnimationSpeed(GObj* obj, f32 speed);
void animSetModelTreeAnimation(GObj* obj, AnimCmd** animLists, f32 skipFrames);
void animSetModelTreeTextureAnimation(GObj* obj, AnimCmd*** textureAnimLists, f32 skipFrames);
void animUpdateModelTreeAnimation(GObj* obj);
// void anim_func_80010230(GObj* arg0, UnkEC64Arg3* arg1, Texture*** arg2, DObj** arg3,
//                    u8 arg4, u8 arg5, u8 arg6);
void animSetCameraAnimation(Camera* cam, AnimCmd* animList, f32 skipFrames);
void animUpdateCameraAnimation(GObj* obj);
// void anim_func_8000FDA0(DObj* dobj, u8 arg1, u8 arg2, u8 arg3);
// void anim_func_8000F8E4(GObj* arg0, AnimCmd** arg1, f32 arg2, UnkEC64Arg3* arg3);
void animSetModelAndTextureAnimationSpeed(GObj* obj, f32 speed);

#endif // __ANIM_H__
