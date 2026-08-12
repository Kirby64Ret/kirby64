#include "common.h"
#include "lbmatrix.h"
#include "lbvector.h"


#define BIQUAD(x) ((x) * (x) * (x) * (x))
#define CUBE(x) ((x) * (x) * (x))

typedef struct InterpDesc {
    /* 0x00 */ u8 kind;
    /* 0x02 */ s16 pointsNum;
    /* 0x04 */ f32 unk04;
    /* 0x08 */ Vector *points;
    /* 0x0C */ f32 length;
    /* 0x10 */ f32 *keyframes;
    /* 0x14 */ f32 *quartics;
} InterpDesc; // size = 0x18

enum InterpKind {
    INTERP_KIND_LINEAR,
    INTERP_KIND_BEZIER_S3,
    INTERP_KIND_BEZIER,
    INTERP_KIND_CATROM
};



void func_8001D3D0(Vector *out, Vector *ctrl, f32 s, f32 t) {
    Vector *lctrl = ctrl;
    f32 sqt = SQ(t);
    f32 w0, w1, w2, w3;
    f32 cbt = sqt * t;

    w0 = (2.0f * sqt - cbt - t) * s;
    w1 = (2.0f - s) * cbt + (s - 3.0f) * sqt + 1.0f;
    w2 = (s - 2.0f) * cbt + (3.0f - 2.0f * s) * sqt + s * t;
    w3 = (cbt - sqt) * s;

    out->x = lctrl[0].x * w0 + lctrl[1].x * w1 + lctrl[2].x * w2 + lctrl[3].x * w3;
    out->y = lctrl[0].y * w0 + lctrl[1].y * w1 + lctrl[2].y * w2 + lctrl[3].y * w3;
    out->z = lctrl[0].z * w0 + lctrl[1].z * w1 + lctrl[2].z * w2 + lctrl[3].z * w3;
}

void func_8001D514(Vector *out, Vector *ctrl, f32 s, f32 t) {
    f32 sqt;
    f32 w1;
    f32 w2;
    f32 w0;
    f32 temp;
    f32 w3;

    sqt = t * t;
    w0 = ((((-3.0f) * sqt) + (4.0f * t)) - 1.0f) * s;
    temp = s - 3.0f;
    w3 = s;
    w1 = (((2.0f - w3) * 3.0f) * sqt) + ((2.0f * temp) * t);
    temp = 3.0f - (2.0f * w3);
    w2 = ((((w3 - 2.0f) * 3.0f) * sqt) + ((2.0f * temp) * t)) + w3;
    w3 = ((3.0f * sqt) - (2.0f * t)) * w3;

    out->x = (ctrl[0].x * w0) + (ctrl[1].x * w1) + (ctrl[2].x * w2) + (ctrl[3].x * w3);
    out->y = (ctrl[0].y * w0) + (ctrl[1].y * w1) + (ctrl[2].y * w2) + (ctrl[3].y * w3);
    out->z = (ctrl[0].z * w0) + (ctrl[1].z * w1) + (ctrl[2].z * w2) + (ctrl[3].z * w3);
}

void func_8001D6A0(Vector *out, Vector *ctrl, f32 t) {
    Vector *lctrl = ctrl;
    f32 subt;
    f32 cbt;
    f32 w0, w1, w2, w3;
    f32 sqt;

    subt = 1.0f - t;
    sqt = SQ(t);
    cbt = sqt * t;

    w0 = (1.0f / 6.0f) * subt * subt * subt;
    w1 = (1.0f / 6.0f) * (3.0f * cbt - 6.0f * sqt + 4.0f);
    w2 = (1.0f / 6.0f) * (3.0f * (sqt - cbt + t) + 1.0f);
    w3 = (1.0f / 6.0f) * cbt;

    out->x = lctrl[0].x * w0 + lctrl[1].x * w1 + lctrl[2].x * w2 + lctrl[3].x * w3;
    out->y = lctrl[0].y * w0 + lctrl[1].y * w1 + lctrl[2].y * w2 + lctrl[3].y * w3;
    out->z = lctrl[0].z * w0 + lctrl[1].z * w1 + lctrl[2].z * w2 + lctrl[3].z * w3;
}

void func_8001D800(Vector *out, Vector *ctrl, f32 t) {
    s32 unused[2];
    f32 sqt;
    f32 mt;
    f32 w1;
    f32 w2;
    f32 w3;
    f32 w0;

    sqt = t * t;
    w0 = 1.0f - t;
    w3 = -0.5f * w0 * w0;
    mt = ((3.0f * sqt) - (4.0f * t)) * 0.5f;
    w1 = ((-3.0f * sqt) + (2.0f * t) + 1.0f) * 0.5f;
    w2 = 0.5f * sqt;

    out->x = (ctrl[0].x * w3) + (ctrl[1].x * mt) + (ctrl[2].x * w1) + (ctrl[3].x * w2);
    out->y = (ctrl[0].y * w3) + (ctrl[1].y * mt) + (ctrl[2].y * w1) + (ctrl[3].y * w2);
    out->z = (ctrl[0].z * w3) + (ctrl[1].z * mt) + (ctrl[2].z * w1) + (ctrl[3].z * w2);
}

void func_8001D934(Vector *out, Vector *ctrl, f32 t) {
    f32 sqt;
    f32 w1;
    f32 w2;
    f32 w3;
    f32 w0;
    f32 subt;
    f32 sqsubt;

    subt = 1.0f - t;
    sqt = SQ(t);
    sqsubt = SQ(subt);

    w0 = sqsubt * subt;
    w1 = 3.0f * t * sqsubt;
    w2 = 3.0f * sqt * subt;
    w3 = sqt * t;

    out->x = ctrl[0].x * w0 + ctrl[1].x * w1 + ctrl[2].x * w2 + ctrl[3].x * w3;
    out->y = ctrl[0].y * w0 + ctrl[1].y * w1 + ctrl[2].y * w2 + ctrl[3].y * w3;
    out->z = ctrl[0].z * w0 + ctrl[1].z * w1 + ctrl[2].z * w2 + ctrl[3].z * w3;
}

void func_8001DA48(Vector *out, Vector *ctrl, f32 t) {
    f32 mt;
    f32 w0;
    f32 w1;
    f32 w2;
    f32 w3;

    mt = t - 1.0f;
    w3 = -3.0f * mt * mt;
    w0 = SQ(t);
    w0 = 3.0f * w0;
    w1 = ((1.0f - (4.0f * t)) + w0) * 3.0f;
    w2 = ((2.0f * t) - w0) * 3.0f;

    out->x = (ctrl[0].x * w3) + (ctrl[1].x * w1) + (ctrl[2].x * w2) + (ctrl[3].x * w0);
    out->y = (ctrl[0].y * w3) + (ctrl[1].y * w1) + (ctrl[2].y * w2) + (ctrl[3].y * w0);
    out->z = (ctrl[0].z * w3) + (ctrl[1].z * w1) + (ctrl[2].z * w2) + (ctrl[3].z * w0);
}

void func_8001DB54(Vector *out, InterpDesc *desc, f32 t) {
    s16 targetFrame;
    Vector *point;

    if ((t < 0.0f) || (t > 1.0f)) {
        return;
    } else if (t < 1.0f) {
        t *= (f32) (desc->pointsNum - 1);

        targetFrame = t;

        t -= targetFrame;

        switch (desc->kind) {
            case INTERP_KIND_LINEAR:
                point = &desc->points[targetFrame];
                out->x = (point[1].x - point[0].x) * t + point[0].x;
                out->y = (point[1].y - point[0].y) * t + point[0].y;
                out->z = (point[1].z - point[0].z) * t + point[0].z;
                break;

            case INTERP_KIND_BEZIER_S3:
                func_8001D934(out, &desc->points[targetFrame * 3], t);
                break;

            case INTERP_KIND_BEZIER:
                func_8001D6A0(out, &desc->points[targetFrame], t);
                break;

            case INTERP_KIND_CATROM:
                func_8001D3D0(out, &desc->points[targetFrame], desc->unk04, t);
                break;
        }
    } else {
        targetFrame = desc->pointsNum - 1;

        switch (desc->kind) {
            case INTERP_KIND_LINEAR:
                point = &desc->points[targetFrame];
                *out = *point;
                break;

            case INTERP_KIND_BEZIER_S3:
                point = &desc->points[targetFrame * 3];
                *out = *point;
                break;

            case INTERP_KIND_BEZIER:
                func_8001D6A0(out, &desc->points[targetFrame - 1], 1.0f);
                break;

            case INTERP_KIND_CATROM:
                point = &desc->points[targetFrame + 1];
                *out = *point;
                break;
        }
    }
}

void func_8001DDE0(Vector *out, InterpDesc *desc, f32 t) {
    s16 targetFrame;
    f32 tOrigin;
    Vector *point;

    if ((t < 0.0f) || (t > 1.0f)) {
        return;
    } else {
        tOrigin = t;
        t *= (f32) (desc->pointsNum - 1);

        targetFrame = t;
        t = t - (f32) targetFrame;

        switch (desc->kind) {
            case INTERP_KIND_LINEAR:
                if (tOrigin == 1.0f) {
                    targetFrame--;
                }
                point = desc->points + targetFrame;
                out->x = point[1].x - point[0].x;
                out->y = point[1].y - point[0].y;
                out->z = point[1].z - point[0].z;
                break;

            case INTERP_KIND_BEZIER_S3:
                func_8001DA48(out, &desc->points[targetFrame * 3], t);
                break;

            case INTERP_KIND_BEZIER:
                func_8001D800(out, &desc->points[targetFrame], t);
                break;

            case INTERP_KIND_CATROM:
                func_8001D514(out, &desc->points[targetFrame], desc->unk04, t);
                break;
        }
    }
}

f32 func_8001DF68(f32 x, f32 *cof) {
    f32 sum = cof[0] * BIQUAD(x) + cof[1] * CUBE(x) + cof[2] * SQ(x) + cof[3] * x + cof[4];

    if ((sum < 0.0f) && (sum > -0.001f)) {
        sum = 0.0f;
    }
    return sqrtf(sum);
}

f32 func_8001E000(f32 arg0, f32 arg1, void *arg2) {
    f32 sp4C;
    f32 temp_f20;
    f32 temp_f24;
    f32 var_f20;
    f32 var_f22;
    s32 var_s0;

    temp_f24 = (arg1 - arg0) / (f32)8;
    var_f22 = 0.0f;
    var_s0 = 2;
    sp4C = temp_f24;
    var_f20 = arg0 + temp_f24;
    do {
        if (!(var_s0 & 1)) {
            var_f22 += 4.0f * func_8001DF68(var_f20, arg2);
        } else {
            var_f22 += 2.0f * func_8001DF68(var_f20, arg2);
        }
        var_s0 += 1;
        var_f20 += temp_f24;
    } while (var_s0 != 9);
    temp_f20 = func_8001DF68(arg0, arg2);
    return ((func_8001DF68(arg1, arg2) + (temp_f20 + var_f22)) * sp4C) / 3.0f;
}

f32 func_8001E104(InterpDesc *desc, f32 t) {
    f32 *point;
    s32 id;
    f32 fracFrame;
    f32 timeScale;
    f32 min = 0.0f;
    f32 max = 1.0f;
    f32 res;
    f32 diff;

    id = 0;

    if (desc->keyframes[1] < t) {
        point = desc->keyframes;
        do {
            id++;
            point++;
        } while (point[1] < t);
    }
    switch (desc->kind) {
        case INTERP_KIND_LINEAR:
            fracFrame = (t - desc->keyframes[id]) / (desc->keyframes[id + 1] - desc->keyframes[id]);
            break;

// the single-line do/while(0) shape below is load-bearing for the match
        do { case INTERP_KIND_BEZIER_S3: case INTERP_KIND_BEZIER: case INTERP_KIND_CATROM: timeScale = (t - desc->keyframes[id]) * desc->length; diff = (min < max) ? (-(min - max)) : (min - max); while (0.00001f <= diff) { fracFrame = (min + max) * 0.5f; res = func_8001E000(min, fracFrame, desc->quartics + (id * 5)); if (timeScale < (res + 0.00001f)) { max = fracFrame; } else { min = fracFrame; timeScale -= res; } diff = (min < max) ? (-(min - max)) : (min - max); } break; } while (0);
    }
    return ((f32) id + fracFrame) / ((f32) desc->pointsNum - 1.0f);
}

void mtxGetInterpolatedPosition(Vector *arg0, s32 *arg1, f32 arg2) {
    func_8001DB54(arg0, (InterpDesc *)arg1, func_8001E104((InterpDesc *)arg1, arg2));
}

// last function in this translation unit: its listing carries the
// TU's trailing alignment padding, which C does not emit

void func_8001E344(Vector *arg0, InterpDesc *arg1, f32 arg2) {
    func_8001DDE0(arg0, arg1, func_8001E104(arg1, arg2));
}


