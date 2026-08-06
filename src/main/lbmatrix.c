#include "common.h"
#include "lbmatrix.h"
#include "lbvector.h"

// This file is a combination of early Kirby64/HAL decomp work (see pull request #33).
//  naming from melee (which should be changed to lbreflect -> lbmatrix),
//  and so much of pokemon snap's src/sys/matrix.c.

// s16 lbreflect_Int16SinTable[0x800] = {
// #include "s16_sintable.h"
// };

// Seems to be a version of MtxF2L that uses unsigned values only
void HS64_MtxF2L(float mf[4][4], Mtx *m) {
    u32 e1,e2;

    // This macro should match, but doesn't (some instructions are reordered)
    // This is because the two `mtx->m[...][...] = ...` lines in the macro end up on the same line of code
    // When this happens, the two or instructions are misordered (confirmed by checking with the matching code).
    
    /*
    #define MTXF_TO_MTXF_UNSIGNED_CELL(i, j, mtxf, mtx) \
        e1=FTOFIX32(mtxf[i][j*2]); \
        e2=FTOFIX32(mtxf[i][j*2+1]); \
        mtx->m[0 + i/2][j + 2 * (i % 2)] = COMBINE_INTEGRAL(e1, e2); \
        mtx->m[2 + i/2][j + 2 * (i % 2)] = COMBINE_FRACTIONAL(e1, e2);

        MTXF_TO_MTXF_UNSIGNED_CELL(0,0,mf,m);
        MTXF_TO_MTXF_UNSIGNED_CELL(0,1,mf,m);
        MTXF_TO_MTXF_UNSIGNED_CELL(1,0,mf,m);
        MTXF_TO_MTXF_UNSIGNED_CELL(1,1,mf,m);
        
        MTXF_TO_MTXF_UNSIGNED_CELL(2,0,mf,m);
        MTXF_TO_MTXF_UNSIGNED_CELL(2,1,mf,m);
        MTXF_TO_MTXF_UNSIGNED_CELL(3,0,mf,m);
        MTXF_TO_MTXF_UNSIGNED_CELL(3,1,mf,m);
    */
    
    // This is probably an unrolled loop, but I couldn't get it to match
    e1=FTOFIX32(mf[0][0]);
    e2=FTOFIX32(mf[0][1]);
    m->m[0][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][0] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[0][2]);
    e2=FTOFIX32(mf[0][3]);
    m->m[0][1] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][1] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[1][0]);
    e2=FTOFIX32(mf[1][1]);
    m->m[0][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][2] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[1][2]);
    e2=FTOFIX32(mf[1][3]);
    m->m[0][3] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][3] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[2][0]);
    e2=FTOFIX32(mf[2][1]);
    m->m[1][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][0] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[2][2]);
    e2=FTOFIX32(mf[2][3]);
    m->m[1][1] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][1] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[3][0]);
    e2=FTOFIX32(mf[3][1]);
    m->m[1][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][2] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[3][2]);
    e2=FTOFIX32(mf[3][3]);
    m->m[1][3] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][3] = COMBINE_FRACTIONAL(e1, e2);
}

// Same as above, but assumes column 3 is (0, 0, 0, 1)
void HS64_MtxF2L43(float mf[4][4], Mtx *m) {
    u32 e1,e2;
    
    e1=FTOFIX32(mf[0][0]);
    e2=FTOFIX32(mf[0][1]);
    m->m[0][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][0] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[0][2]);
    e2=FTOFIX32(0.0f);
    m->m[0][1] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][1] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[1][0]);
    e2=FTOFIX32(mf[1][1]);
    m->m[0][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][2] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[1][2]);
    e2=FTOFIX32(0.0f);
    m->m[0][3] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][3] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[2][0]);
    e2=FTOFIX32(mf[2][1]);
    m->m[1][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][0] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[2][2]);
    e2=FTOFIX32(0.0f);
    m->m[1][1] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][1] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[3][0]);
    e2=FTOFIX32(mf[3][1]);
    m->m[1][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][2] = COMBINE_FRACTIONAL(e1, e2);
    e1=FTOFIX32(mf[3][2]);
    e2=FTOFIX32(1.0f);
    m->m[1][3] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][3] = COMBINE_FRACTIONAL(e1, e2);
}

s32 lbreflect_Int16Sin(f32 arg0) {
    s32 idx = arg0 * 651.8986f;

    u16 ret = INT16_SIN(idx);

    if (idx & 0x800) {
        return -ret;
    } else {
        return ret;
    }
}

s32 lbreflect_Int16Cos(f32 arg0) {
    s32 idx = (arg0 + (M_PIF / 2)) * 651.8986f;

    u16 ret = INT16_SIN(idx);

    if (idx & 0x800) {
        return -ret;
    } else {
        return ret;
    }
}

// This should be part of libultra, but it's slightly modified (1.0f instead of 1.0)
// This applies to most of the following functions
void guLookAtF(float mf[4][4], float xEye, float yEye, float zEye,
           float xAt,  float yAt,  float zAt,
           float xUp,  float yUp,  float zUp)
{
    float   len, xLook, yLook, zLook, xRight, yRight, zRight;

    xLook = xAt - xEye;
    yLook = yAt - yEye;
    zLook = zAt - zEye;

    /* Negate because positive Z is behind us: */
    len = -1.0f / sqrtf (xLook*xLook + yLook*yLook + zLook*zLook);
    xLook *= len;
    yLook *= len;
    zLook *= len;

    /* Right = Up x Look */

    xRight = yUp * zLook - zUp * yLook;
    yRight = zUp * xLook - xUp * zLook;
    zRight = xUp * yLook - yUp * xLook;
    len = 1.0f / sqrtf (xRight*xRight + yRight*yRight + zRight*zRight);
    xRight *= len;
    yRight *= len;
    zRight *= len;

    /* Up = Look x Right */

    xUp = yLook * zRight - zLook * yRight;
    yUp = zLook * xRight - xLook * zRight;
    zUp = xLook * yRight - yLook * xRight;
    len = 1.0f / sqrtf (xUp*xUp + yUp*yUp + zUp*zUp);
    xUp *= len;
    yUp *= len;
    zUp *= len;

    mf[0][0] = xRight;
    mf[1][0] = yRight;
    mf[2][0] = zRight;
    mf[3][0] = -(xEye * xRight + yEye * yRight + zEye * zRight);

    mf[0][1] = xUp;
    mf[1][1] = yUp;
    mf[2][1] = zUp;
    mf[3][1] = -(xEye * xUp + yEye * yUp + zEye * zUp);

    mf[0][2] = xLook;
    mf[1][2] = yLook;
    mf[2][2] = zLook;
    mf[3][2] = -(xEye * xLook + yEye * yLook + zEye * zLook);

    mf[0][3] = 0;
    mf[1][3] = 0;
    mf[2][3] = 0;
    mf[3][3] = 1;
}

void guLookAt (Mtx *m, float xEye, float yEye, float zEye,
           float xAt,  float yAt,  float zAt,
           float xUp,  float yUp,  float zUp)
{
    Mat4    mf;

    guLookAtF(mf, xEye, yEye, zEye, xAt, yAt, zAt, xUp, yUp, zUp);

    HS64_MtxF2L(mf, m);
}

// Modified version of guLookAtF that takes an extra Vector* argument and calls func_800191F8
void guLookAtF_2(float mf[4][4],
    float xEye, float yEye, float zEye,
    float xAt,  float yAt,  float zAt,
    float arg7, float xUp,  float yUp,  float zUp)
 {
    f32 len;
    Vector look;
    Vector right;

    look.x = xAt - xEye;
    look.y = yAt - yEye;
    look.z = zAt - zEye;

    /* Negate because positive Z is behind us: */
    len = -1.0f / sqrtf (look.x*look.x + look.y*look.y + look.z*look.z);
    look.x *= len;
    look.y *= len;
    look.z *= len;

    /* Right = Up x Look */

    right.x = yUp * look.z - zUp * look.y;
    right.y = zUp * look.x - xUp * look.z;
    right.z = xUp * look.y - yUp * look.x;
    len = 1.0f / sqrtf (right.x*right.x + right.y*right.y + right.z*right.z);
    right.x *= len;
    right.y *= len;
    right.z *= len;

    func_800191F8(&right, &look, arg7);
    xUp = (look.y * right.z) - (look.z * right.y);
    yUp = (look.z * right.x) - (look.x * right.z);
    zUp = (look.x * right.y) - (look.y * right.x);
    len = 1.0f / sqrtf(((xUp * xUp) + (yUp * yUp)) + (zUp * zUp));
    xUp = xUp * len;
    yUp = yUp * len;
    zUp = zUp * len;
    

    mf[0][0] = right.x;
    mf[1][0] = right.y;
    mf[2][0] = right.z;
    mf[3][0] = -(xEye * right.x + yEye * right.y + zEye * right.z);

    mf[0][1] = xUp;
    mf[1][1] = yUp;
    mf[2][1] = zUp;
    mf[3][1] = -(xEye * xUp + yEye * yUp + zEye * zUp);

    mf[0][2] = look.x;
    mf[1][2] = look.y;
    mf[2][2] = look.z;
    mf[3][2] = -(xEye * look.x + yEye * look.y + zEye * look.z);

    mf[0][3] = 0;
    mf[1][3] = 0;
    mf[2][3] = 0;
    mf[3][3] = 1;
}


void HS64_LookAt(Mtx *outMtx,
    float xEye, float yEye, float zEye,
    float xAt,  float yAt,  float zAt,
    float arg7, float xUp,  float yUp, float zUp
) {
    float tmp[4][4];

    guLookAtF_2(tmp, xEye, yEye, zEye, xAt, yAt, zAt, arg7, xUp, yUp, zUp);
    HS64_MtxF2L(tmp, outMtx);
}

// Modified in the same way that guLookAtF was
void guLookAtReflectF(float mf[4][4], LookAt *l, 
              float xEye, float yEye, float zEye,
              float xAt,  float yAt,  float zAt,
              float xUp,  float yUp,  float zUp)
{
    float   len, xLook, yLook, zLook, xRight, yRight, zRight;

    xLook = xAt - xEye;
    yLook = yAt - yEye;
    zLook = zAt - zEye;

    /* Negate because positive Z is behind us: */
    len = -1.0f / sqrtf (xLook*xLook + yLook*yLook + zLook*zLook);
    xLook *= len;
    yLook *= len;
    zLook *= len;

    /* Right = Up x Look */

    xRight = yUp * zLook - zUp * yLook;
    yRight = zUp * xLook - xUp * zLook;
    zRight = xUp * yLook - yUp * xLook;
    len = 1.0f / sqrtf (xRight*xRight + yRight*yRight + zRight*zRight);
    xRight *= len;
    yRight *= len;
    zRight *= len;

    /* Up = Look x Right */

    xUp = yLook * zRight - zLook * yRight;
    yUp = zLook * xRight - xLook * zRight;
    zUp = xLook * yRight - yLook * xRight;
    len = 1.0f / sqrtf (xUp*xUp + yUp*yUp + zUp*zUp);
    xUp *= len;
    yUp *= len;
    zUp *= len;

    /* reflectance vectors = Up and Right */

    l->l[0].l.dir[0] = FTOFRAC8(xRight);
    l->l[0].l.dir[1] = FTOFRAC8(yRight);
    l->l[0].l.dir[2] = FTOFRAC8(zRight);
    l->l[1].l.dir[0] = FTOFRAC8(xUp);
    l->l[1].l.dir[1] = FTOFRAC8(yUp);
    l->l[1].l.dir[2] = FTOFRAC8(zUp);
    l->l[0].l.col[0] = 0x00;
    l->l[0].l.col[1] = 0x00;
    l->l[0].l.col[2] = 0x00;
    l->l[0].l.pad1 = 0x00;
    l->l[0].l.colc[0] = 0x00;
    l->l[0].l.colc[1] = 0x00;
    l->l[0].l.colc[2] = 0x00;
    l->l[0].l.pad2 = 0x00;
    l->l[1].l.col[0] = 0x00;
    l->l[1].l.col[1] = 0x80;
    l->l[1].l.col[2] = 0x00;
    l->l[1].l.pad1 = 0x00;
    l->l[1].l.colc[0] = 0x00;
    l->l[1].l.colc[1] = 0x80;
    l->l[1].l.colc[2] = 0x00;
    l->l[1].l.pad2 = 0x00;

    mf[0][0] = xRight;
    mf[1][0] = yRight;
    mf[2][0] = zRight;
    mf[3][0] = -(xEye * xRight + yEye * yRight + zEye * zRight);

    mf[0][1] = xUp;
    mf[1][1] = yUp;
    mf[2][1] = zUp;
    mf[3][1] = -(xEye * xUp + yEye * yUp + zEye * zUp);

    mf[0][2] = xLook;
    mf[1][2] = yLook;
    mf[2][2] = zLook;
    mf[3][2] = -(xEye * xLook + yEye * yLook + zEye * zLook);

    mf[0][3] = 0;
    mf[1][3] = 0;
    mf[2][3] = 0;
    mf[3][3] = 1;
}

void guLookAtReflect (Mtx *m, LookAt *l, float xEye, float yEye, float zEye,
           float xAt,  float yAt,  float zAt,
           float xUp,  float yUp,  float zUp)
{
    float   mf[4][4];

    guLookAtReflectF(mf, l, xEye, yEye, zEye, xAt, yAt, zAt,
             xUp, yUp, zUp);

    HS64_MtxF2L(mf, m);
}


// Lookat counterpart for guLookAtF_2
f32 guLookAtReflectF_2(float mf[4][4], LookAt *l, float xEye, float yEye, float zEye, float xAt,  float yAt,  float zAt, float arg8, float xUp,  float yUp,  float zUp) {
    float   len;
    Vector look;
    Vector right;

    look.x = xAt - xEye;
    look.y = yAt - yEye;
    look.z = zAt - zEye;

    /* Negate because positive Z is behind us: */
    len = -1.0f / sqrtf (look.x*look.x + look.y*look.y + look.z*look.z);
    look.x *= len;
    look.y *= len;
    look.z *= len;

    /* Right = Up x Look */

    right.x = yUp * look.z - zUp * look.y;
    right.y = zUp * look.x - xUp * look.z;
    right.z = xUp * look.y - yUp * look.x;
    len = 1.0f / sqrtf (right.x*right.x + right.y*right.y + right.z*right.z);
    right.x *= len;
    right.y *= len;
    right.z *= len;

    /* Up = Look x Right */

    func_800191F8(&right, &look, arg8);
    xUp = look.y * right.z - look.z * right.y;
    yUp = look.z * right.x - look.x * right.z;
    zUp = look.x * right.y - look.y * right.x;
    len = 1.0f / sqrtf (xUp*xUp + yUp*yUp + zUp*zUp);
    xUp *= len;
    yUp *= len;
    zUp *= len;

    /* reflectance vectors = Up and Right */

    l->l[0].l.dir[0] = FTOFRAC8(right.x);
    l->l[0].l.dir[1] = FTOFRAC8(right.y);
    l->l[0].l.dir[2] = FTOFRAC8(right.z);
    l->l[1].l.dir[0] = FTOFRAC8(xUp);
    l->l[1].l.dir[1] = FTOFRAC8(yUp);
    l->l[1].l.dir[2] = FTOFRAC8(zUp);
    l->l[0].l.col[0] = 0x00;
    l->l[0].l.col[1] = 0x00;
    l->l[0].l.col[2] = 0x00;
    l->l[0].l.pad1 = 0x00;
    l->l[0].l.colc[0] = 0x00;
    l->l[0].l.colc[1] = 0x00;
    l->l[0].l.colc[2] = 0x00;
    l->l[0].l.pad2 = 0x00;
    l->l[1].l.col[0] = 0x00;
    l->l[1].l.col[1] = 0x80;
    l->l[1].l.col[2] = 0x00;
    l->l[1].l.pad1 = 0x00;
    l->l[1].l.colc[0] = 0x00;
    l->l[1].l.colc[1] = 0x80;
    l->l[1].l.colc[2] = 0x00;
    l->l[1].l.pad2 = 0x00;

    mf[0][0] = right.x;
    mf[1][0] = right.y;
    mf[2][0] = right.z;
    mf[3][0] = -(xEye * right.x + yEye * right.y + zEye * right.z);

    mf[0][1] = xUp;
    mf[1][1] = yUp;
    mf[2][1] = zUp;
    mf[3][1] = -(xEye * xUp + yEye * yUp + zEye * zUp);

    mf[0][2] = look.x;
    mf[1][2] = look.y;
    mf[2][2] = look.z;
    mf[3][2] = -(xEye * look.x + yEye * look.y + zEye * look.z);

    mf[0][3] = 0;
    mf[1][3] = 0;
    mf[2][3] = 0;
    mf[3][3] = 1;
}

void func_8001AD90(Mtx *m, LookAt *l,
    float xEye, float yEye, float zEye,
    float xAt,  float yAt,  float zAt,
    float arg8, float xUp,  float yUp, float zUp
) {
    float tmp[4][4];

    guLookAtReflectF_2(tmp, l, xEye, yEye, zEye, xAt, yAt, zAt, arg8, xUp, yUp, zUp);
    HS64_MtxF2L(tmp, m);
}

void guOrthoF(float mf[4][4], float l, float r, float b, float t, float n, float f, float scale){
    int i, j;

    mf[0][0] = 2/(r-l);
    mf[1][1] = 2/(t-b);
    mf[2][2] = -2/(f-n);
    mf[3][0] = -(r+l)/(r-l);
    mf[3][1] = -(t+b)/(t-b);
    mf[3][2] = -(f+n)/(f-n);
    mf[3][3] = 1;

    for (i=0; i<3; i++) {
        if (i != 0)
            mf[i][0] = 0;
        if (i != 1)
            mf[i][1] = 0;
        if (i != 2)
            mf[i][2] = 0;
        if (i != 3)
            mf[i][3] = 0;
    }

    for (i=0; i<4; i++)
        for (j=0; j<4; j++)
            mf[i][j] *= scale;
}

void guOrtho(Mtx *m, float l, float r, float b, float t, float n, float f, float scale)
{
    Mat4 mf;

    guOrthoF(mf, l, r, b, t, n, f, scale);

    HS64_MtxF2L(mf, m);
}

void HS64_PerspectiveF(Mat4 mf, u16* perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale) {
    f32 cot;
    u16 sinAngle;
    f32 sinX, cosX;
    Unused s32 pad[4];

    fovy *= 0.008726646f;

    sinAngle = (s32) (fovy * 651.8986f) & 0xFFF;
    INLINE_SINCOS(sinAngle);
    cot = cosX / sinX;

    mf[0][0] = (cot / aspect) * scale;
    mf[1][1] = cot * scale;
    mf[2][2] = ((near + far) * scale) / (near - far);
    mf[2][3] = -scale;
    mf[3][2] = (2.0f * near * far * scale) / (near - far);
    mf[3][3] = 0.0f;

    mf[0][1] = 0;
    mf[0][2] = 0;
    mf[0][3] = 0;

    mf[1][0] = 0;
    mf[1][2] = 0;
    mf[1][3] = 0;

    mf[2][0] = 0;
    mf[2][1] = 0;

    mf[3][0] = 0;
    mf[3][1] = 0;

    if (perspNorm != NULL) {
        if (near + far <= 2.0f) {
            *perspNorm = (u16) 0xFFFF;
        } else {
            *perspNorm = (u16) ((2.0f * 65536.0f) / (near + far));
            if (*perspNorm <= 0) {
                *perspNorm = (u16) 0x0001;
            }
        }
    }
}

void HS64_Perspective(Mtx* m, u16* perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale) {
    Mat4 mf;

    HS64_PerspectiveF(mf, perspNorm, fovy, aspect, near, far, scale);

    HS64_MtxF2L(mf, m);
}

void func_8001B28C(float mf[4][4], u16* perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale) {
    f32 cot;
    Unused s32 pad[2];
    f32 cosX;
    f32 tmp;

    fovy *= 0.017453292f;

    tmp = fovy / 2;
    cosX = cosf(tmp);
    cot = cosX / sinf(tmp);

    mf[0][0] = (cot / aspect) * scale;
    mf[1][1] = cot * scale;
    mf[2][2] = ((near + far) * scale) / (near - far);
    mf[2][3] = -scale;
    mf[3][2] = (2.0f * near * far * scale) / (near - far);
    mf[3][3] = 0.0f;

    mf[0][1] = 0;
    mf[0][2] = 0;
    mf[0][3] = 0;

    mf[1][0] = 0;
    mf[1][2] = 0;
    mf[1][3] = 0;

    mf[2][0] = 0;
    mf[2][1] = 0;

    mf[3][0] = 0;
    mf[3][1] = 0;

    if (perspNorm != NULL) {
        if (near + far <= 2.0f) {
            *perspNorm = (u16) 0xFFFF;
        } else {
            *perspNorm = (u16) ((2.0f * 65536.0f) / (near + far));
            if (*perspNorm <= 0) {
                *perspNorm = (u16) 0x0001;
            }
        }
    }
}

void func_8001B454(Mtx* m, u16* perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale) {
    Mat4 mf;

    func_8001B28C(mf, perspNorm, fovy, aspect, near, far, scale);

    HS64_MtxF2L(mf, m);
}

void HS64_MkScaleMtxF(Mat4 mf, f32 x, f32 y, f32 z) {
    int i, j;

    mf[0][0] = x;
    mf[1][1] = y;
    mf[2][2] = z;
    mf[3][3] = 1.0f;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (i != j) {
                mf[i][j] = 0;
            }
        }
    }
}

void HS64_MtxScale(Mtx* arg0, f32 arg1, f32 arg2, f32 arg3) {
    arg0->m[0][1] = 0;
    arg0->m[2][1] = 0;
    arg0->m[0][3] = 0;
    arg0->m[0][0] = ((s32) (arg1 * 65536.0f)) & 0xFFFF0000;
    arg0->m[2][3] = 0;
    arg0->m[2][0] = ((s32) (arg1 * 65536.0f)) << 0x10;
    arg0->m[0][2] = ((s32) (arg2 * 65536.0f)) >> 0x10;
    arg0->m[1][0] = 0;
    arg0->m[3][0] = 0;
    arg0->m[2][2] = ((s32) (arg2 * 65536.0f)) & 0xFFFF;
    arg0->m[1][1] = ((s32) (arg3 * 65536.0f)) & 0xFFFF0000;
    arg0->m[1][2] = 0;
    arg0->m[3][1] = ((s32) (arg3 * 65536.0f)) << 0x10;
    arg0->m[3][2] = 0;
    arg0->m[1][3] = 1;
    arg0->m[3][3] = 0;
}

void func_8001B5E4(Mat4 mf, f32 x, f32 y, f32 z) {
    int i;

    for (i = 0; i < 4; i++) {
        if (mf[0][i] != 0.0f) {
            mf[0][i] *= x;
        }
    }
    for (i = 0; i < 4; i++) {
        if (mf[1][i] != 0.0f) {
            mf[1][i] *= y;
        }
    }
    for (i = 0; i < 4; i++) {
        if (mf[2][i] != 0.0f) {
            mf[2][i] *= z;
        }
    }
}

void HS64_MkTranslateMtxF(Mat4 mf, f32 x, f32 y, f32 z) {
    int i, j;

    mf[3][0] = x;
    mf[3][1] = y;
    mf[3][2] = z;

    for (i = 0; i < 3; i++) {
        for (j = 0; j < 4; j++) {
            if (i == j) {
                mf[i][j] = 1.0f;
            } else {
                mf[i][j] = 0.0f;
            }
        }
    }
    mf[3][3] = 1.0f;
}

void HS64_Translate(Mtx* m, f32 x, f32 y, f32 z) {
    u32 e1, e2;

    m->m[0][0] = COMBINE_INTEGRAL(FTOFIX32(1.0F), FTOFIX32(0.0F));
    m->m[2][0] = COMBINE_FRACTIONAL(FTOFIX32(1.0F), FTOFIX32(0.0F));

    m->m[0][1] = COMBINE_INTEGRAL(FTOFIX32(0.0F), FTOFIX32(0.0F));
    m->m[2][1] = COMBINE_FRACTIONAL(FTOFIX32(0.0F), FTOFIX32(0.0F));

    m->m[0][2] = COMBINE_INTEGRAL(FTOFIX32(0.0F), FTOFIX32(1.0F));
    m->m[2][2] = COMBINE_FRACTIONAL(FTOFIX32(0.0F), FTOFIX32(1.0F));

    m->m[0][3] = COMBINE_INTEGRAL(FTOFIX32(0.0F), FTOFIX32(0.0F));
    m->m[2][3] = COMBINE_FRACTIONAL(FTOFIX32(0.0F), FTOFIX32(0.0F));

    m->m[1][0] = COMBINE_INTEGRAL(FTOFIX32(0.0F), FTOFIX32(0.0F));
    m->m[3][0] = COMBINE_FRACTIONAL(FTOFIX32(0.0F), FTOFIX32(0.0F));

    m->m[1][1] = COMBINE_INTEGRAL(FTOFIX32(1.0F), FTOFIX32(0.0F));
    m->m[3][1] = COMBINE_FRACTIONAL(FTOFIX32(1.0F), FTOFIX32(0.0F));

    e1 = FTOFIX32(x);
    e2 = FTOFIX32(y);
    m->m[1][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][2] = COMBINE_FRACTIONAL(e1, e2);

    e1 = FTOFIX32(z);
    m->m[1][3] = COMBINE_INTEGRAL(e1, FTOFIX32(1.0F));
    m->m[3][3] = COMBINE_FRACTIONAL(e1, FTOFIX32(1.0F));
}

void func_8001B838(Mat4 mf, f32 a, f32 x, f32 y, f32 z) {
    f32 sine;
    f32 cosine;
    f32 ab, bc, ca, t;

    guNormalize(&x, &y, &z);
    sine = sinf(a);
    cosine = cosf(a);
    t = (1.0f - cosine);
    ab = x * y * t;
    bc = y * z * t;
    ca = z * x * t;

    t = x * x;
    mf[0][0] = t + cosine * (1 - t);
    mf[2][1] = bc - x * sine;
    mf[1][2] = bc + x * sine;

    t = y * y;
    mf[1][1] = t + cosine * (1 - t);
    mf[2][0] = ca + y * sine;
    mf[0][2] = ca - y * sine;

    t = z * z;
    mf[2][2] = t + cosine * (1 - t);
    mf[1][0] = ab - z * sine;
    mf[0][1] = ab + z * sine;

    mf[0][3] = 0.0f;
    mf[1][3] = 0.0f;
    mf[2][3] = 0.0f;

    mf[3][0] = 0.0f;
    mf[3][1] = 0.0f;
    mf[3][2] = 0.0f;
    mf[3][3] = 1.0f;
}

void HS64_MtxRotate(Mtx* m, f32 a, f32 x, f32 y, f32 z) {
    Mat4 mf;

    func_8001B838(mf, a, x, y, z);

    HS64_MtxF2L43(mf, m);
}

void func_8001BA04(Mat4 mf, f32 dx, f32 dy, f32 dz, f32 angle, f32 rx, f32 ry, f32 rz) {
    func_8001B838(mf, angle, rx, ry, rz);
    mf[3][0] = dx;
    mf[3][1] = dy;
    mf[3][2] = dz;
}

void HS64_MtxRotateTranslate(Mtx* m, f32 dx, f32 dy, f32 dz, f32 angle, f32 rx, f32 ry, f32 rz) {
    Mat4 mf;

    func_8001BA04(mf, dx, dy, dz, angle, rx, ry, rz);
    HS64_MtxF2L43(mf, m);
}

void func_8001BAC4(Mat4 mf, f32 dx, f32 dy, f32 dz, f32 angle, f32 rx, f32 ry, f32 rz, f32 sx, f32 sy, f32 sz) {
    func_8001B838(mf, angle, rx, ry, rz);
    mf[3][0] = dx;
    mf[3][1] = dy;
    mf[3][2] = dz;
    func_8001B5E4(mf, sx, sy, sz);
}

void HS64_MtxTransformRTS(Mtx* m, f32 dx, f32 dy, f32 dz, f32 angle, f32 rx, f32 ry, f32 rz, f32 sx, f32 sy, f32 sz) {
    Mat4 mf;

    func_8001BAC4(mf, dx, dy, dz, angle, rx, ry, rz, sx, sy, sz);
    HS64_MtxF2L43(mf, m);
}

void HS64_MkRotationMtxF(Mat4 mf, f32 r, f32 p, f32 h) {
    f32 sinr, sinp, sinh;
    f32 cosr, cosp, cosh;

    sinr = sinf(r);
    cosr = cosf(r);
    sinp = sinf(p);
    cosp = cosf(p);
    sinh = sinf(h);
    cosh = cosf(h);

    mf[0][0] = cosp * cosh;
    mf[0][1] = cosp * sinh;
    mf[0][2] = -sinp;

    mf[1][0] = sinr * sinp * cosh - cosr * sinh;
    mf[1][1] = sinr * sinp * sinh + cosr * cosh;
    mf[1][2] = sinr * cosp;

    mf[2][0] = cosr * sinp * cosh + sinr * sinh;
    mf[2][1] = cosr * sinp * sinh - sinr * cosh;
    mf[2][2] = cosr * cosp;

    mf[3][2] = 0.0f;
    mf[3][1] = 0.0f;
    mf[3][0] = 0.0f;

    mf[3][3] = 1.0f;
    mf[2][3] = 0.0f;
    mf[1][3] = 0.0f;
    mf[0][3] = 0.0f;
}

#define GET_SIN_COS_S16(s, c, angle, index)          \
    index = (s32) ((angle) * 651.8986f) & 0xFFF;     \
    s = INT16_SIN(index);                            \
    if (index & 0x800) {                             \
        s = -s;                                      \
    }                                                \
    index += 0x400;                                  \
    c = INT16_SIN(index);                            \
    if (index & 0x800) {                             \
        c = -c;                                      \
    }

void HS64_MtxRotateRPY(Mtx* m, f32 r, f32 p, f32 h) {
    s32 sinr, sinp, siny;
    s32 cosr, cosp, cosy;
    u16 indexr, indexp, indexy;
    u32 e1, e2;

    GET_SIN_COS_S16(sinr, cosr, r, indexr);
    GET_SIN_COS_S16(sinp, cosp, p, indexp);
    GET_SIN_COS_S16(siny, cosy, h, indexy);

    e1 = (cosp * cosy) >> 14;
    e2 = (cosp * siny) >> 14;
    m->m[0][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][0] = COMBINE_FRACTIONAL(e1, e2);

    e1 = -sinp * 2;
    m->m[0][1] = COMBINE_INTEGRAL(e1, FTOFIX32(0.0F));
    m->m[2][1] = COMBINE_FRACTIONAL(e1, FTOFIX32(0.0F));

    e1 = ((((sinr * sinp) >> 15) * cosy) >> 14) - ((cosr * siny) >> 14);
    e2 = ((((sinr * sinp) >> 15) * siny) >> 14) + ((cosr * cosy) >> 14);
    m->m[0][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][2] = COMBINE_FRACTIONAL(e1, e2);

    e1 = (sinr * cosp) >> 14;
    m->m[0][3] = COMBINE_INTEGRAL(e1, FTOFIX32(0.0F));
    m->m[2][3] = COMBINE_FRACTIONAL(e1, FTOFIX32(0.0F));

    e1 = ((((cosr * sinp) >> 15) * cosy) >> 14) + ((sinr * siny) >> 14);
    e2 = ((((cosr * sinp) >> 15) * siny) >> 14) - ((sinr * cosy) >> 14);

    m->m[1][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][0] = COMBINE_FRACTIONAL(e1, e2);

    e1 = (cosr * cosp) >> 14;
    m->m[1][1] = COMBINE_INTEGRAL(e1, FTOFIX32(0.0F));
    m->m[3][1] = COMBINE_FRACTIONAL(e1, FTOFIX32(0.0F));

    m->m[1][2] = COMBINE_INTEGRAL(FTOFIX32(0.0F), FTOFIX32(0.0F));
    m->m[3][2] = COMBINE_FRACTIONAL(FTOFIX32(0.0F), FTOFIX32(0.0F));

    m->m[1][3] = COMBINE_INTEGRAL(FTOFIX32(0.0F), FTOFIX32(1.0F));
    m->m[3][3] = COMBINE_FRACTIONAL(FTOFIX32(0.0F), FTOFIX32(1.0F));
}

void func_8001BF88(Mat4 mf, f32 dx, f32 dy, f32 dz, f32 r, f32 p, f32 h) {
    HS64_MkRotationMtxF(mf, r, p, h);
    mf[3][0] = dx;
    mf[3][1] = dy;
    mf[3][2] = dz;
}

void HS64_MtxRotateRPYTranslate(Mtx* m, f32 dx, f32 dy, f32 dz, f32 r, f32 p, f32 h) {
    s32 sinr, sinp, siny;
    s32 cosr, cosp, cosy;
    u16 indexr, indexp, indexy;
    u32 e1, e2;

    GET_SIN_COS_S16(sinr, cosr, r, indexr);
    GET_SIN_COS_S16(sinp, cosp, p, indexp);
    GET_SIN_COS_S16(siny, cosy, h, indexy);

    e1 = (cosp * cosy) >> 14;
    e2 = (cosp * siny) >> 14;
    m->m[0][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][0] = COMBINE_FRACTIONAL(e1, e2);

    e1 = -sinp * 2;
    m->m[0][1] = COMBINE_INTEGRAL(e1, FTOFIX32(0.0F));
    m->m[2][1] = COMBINE_FRACTIONAL(e1, FTOFIX32(0.0F));

    e1 = ((((sinr * sinp) >> 15) * cosy) >> 14) - ((cosr * siny) >> 14);
    e2 = ((((sinr * sinp) >> 15) * siny) >> 14) + ((cosr * cosy) >> 14);
    m->m[0][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][2] = COMBINE_FRACTIONAL(e1, e2);

    e1 = (sinr * cosp) >> 14;
    m->m[0][3] = COMBINE_INTEGRAL(e1, FTOFIX32(0.0F));
    m->m[2][3] = COMBINE_FRACTIONAL(e1, FTOFIX32(0.0F));

    e1 = ((((cosr * sinp) >> 15) * cosy) >> 14) + ((sinr * siny) >> 14);
    e2 = ((((cosr * sinp) >> 15) * siny) >> 14) - ((sinr * cosy) >> 14);

    m->m[1][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][0] = COMBINE_FRACTIONAL(e1, e2);

    e1 = (cosr * cosp) >> 14;
    m->m[1][1] = COMBINE_INTEGRAL(e1, FTOFIX32(0.0F));
    m->m[3][1] = COMBINE_FRACTIONAL(e1, FTOFIX32(0.0F));

    e1 = FTOFIX32(dx);
    e2 = FTOFIX32(dy);
    m->m[1][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][2] = COMBINE_FRACTIONAL(e1, e2);

    e1 = FTOFIX32(dz);
    m->m[1][3] = COMBINE_INTEGRAL(e1, FTOFIX32(1.0F));
    m->m[3][3] = COMBINE_FRACTIONAL(e1, FTOFIX32(1.0F));
}

void func_8001C2E4(Mat4 arg0, Vector arg1, Vector arg4, Vector arg7) {
    HS64_MkRotationMtxF(arg0, arg4.x, arg4.y, arg4.z);
    arg0[3][0] = arg1.x;
    arg0[3][1] = arg1.y;
    arg0[3][2] = arg1.z;
    func_8001B5E4(arg0, arg7.x, arg7.y, arg7.z);
}

void HS64_MtxRotateTransformSRT_RPY(Mtx* m, f32 dx, f32 dy, f32 dz, f32 r, f32 p, f32 h, f32 sx, f32 sy, f32 sz) {
    s32 sinr, sinp, siny;
    s32 cosr, cosp, cosy;
    s32 scalex, scaley, scalez;
    u16 indexr, indexp, indexy;
    u32 e1, e2;

    GET_SIN_COS_S16(sinr, cosr, r, indexr);
    GET_SIN_COS_S16(sinp, cosp, p, indexp);
    GET_SIN_COS_S16(siny, cosy, h, indexy);

    scalex = sx * 256;
    scaley = sy * 256;
    scalez = sz * 256;

    e1 = (((cosp * cosy) >> 14) * scalex) >> 8;
    e2 = (((cosp * siny) >> 14) * scalex) >> 8;
    m->m[0][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][0] = COMBINE_FRACTIONAL(e1, e2);

    e1 = (-sinp * scalex) >> 7;
    m->m[0][1] = COMBINE_INTEGRAL(e1, FTOFIX32(0.0F));
    m->m[2][1] = COMBINE_FRACTIONAL(e1, FTOFIX32(0.0F));

    e1 = ((((((sinr * sinp) >> 15) * cosy) >> 14) - ((cosr * siny) >> 14)) * scaley) >> 8;
    e2 = ((((((sinr * sinp) >> 15) * siny) >> 14) + ((cosr * cosy) >> 14)) * scaley) >> 8;
    m->m[0][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][2] = COMBINE_FRACTIONAL(e1, e2);

    e1 = (((sinr * cosp) >> 14) * scaley) >> 8;
    m->m[0][3] = COMBINE_INTEGRAL(e1, FTOFIX32(0.0F));
    m->m[2][3] = COMBINE_FRACTIONAL(e1, FTOFIX32(0.0F));

    e1 = ((((((cosr * sinp) >> 15) * cosy) >> 14) + ((sinr * siny) >> 14)) * scalez) >> 8;
    e2 = ((((((cosr * sinp) >> 15) * siny) >> 14) - ((sinr * cosy) >> 14)) * scalez) >> 8;
    m->m[1][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][0] = COMBINE_FRACTIONAL(e1, e2);

    e1 = (((cosr * cosp) >> 14) * scalez) >> 8;
    m->m[1][1] = COMBINE_INTEGRAL(e1, FTOFIX32(0.0F));
    m->m[3][1] = COMBINE_FRACTIONAL(e1, FTOFIX32(0.0F));

    e1 = FTOFIX32(dx);
    e2 = FTOFIX32(dy);
    m->m[1][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][2] = COMBINE_FRACTIONAL(e1, e2);

    e1 = FTOFIX32(dz);
    m->m[1][3] = COMBINE_INTEGRAL(e1, FTOFIX32(1.0F));
    m->m[3][3] = COMBINE_FRACTIONAL(e1, FTOFIX32(1.0F));
}

void func_8001C73C(Mat4 mf, f32 r, f32 p, f32 h) {
    f32 sinr, sinp, sinh;
    f32 cosr, cosp, cosh;
    Unused u32 pad[4];

    sinr = sinf(r);
    cosr = cosf(r);
    sinp = sinf(p);
    cosp = cosf(p);
    sinh = sinf(h);
    cosh = cosf(h);

    mf[0][0] = cosh * cosp;
    mf[0][1] = cosr * sinh * cosp + sinr * sinp;
    mf[0][2] = sinr * sinh * cosp - cosr * sinp;

    mf[1][0] = -sinh;
    mf[1][1] = cosr * cosh;
    mf[1][2] = sinr * cosh;

    mf[2][0] = cosh * sinp;
    mf[2][1] = cosr * sinh * sinp - sinr * cosp;
    mf[2][2] = sinr * sinh * sinp + cosr * cosp;

    mf[0][3] = 0;
    mf[1][3] = 0;
    mf[2][3] = 0;

    mf[3][0] = 0;
    mf[3][1] = 0;
    mf[3][2] = 0;
    mf[3][3] = 1;
}

void HS64_MtxRotatePYR(Mtx* m, f32 r, f32 p, f32 h) {
    Mat4 mf;

    func_8001C73C(mf, r, p, h);
    HS64_MtxF2L43(mf, m);
}

void func_8001C8B8(Mat4 mf, f32 dx, f32 dy, f32 dz, f32 r, f32 p, f32 h) {
    func_8001C73C(mf, r, p, h);
    mf[3][0] = dx;
    mf[3][1] = dy;
    mf[3][2] = dz;
}

void HS64_MtxRotatePYRTranslate(Mtx* m, f32 dx, f32 dy, f32 dz, f32 r, f32 p, f32 h) {
    Mat4 mf;

    func_8001C8B8(mf, dx, dy, dz, r, p, h);
    HS64_MtxF2L43(mf, m);
}

void func_8001C968(Mat4 mf, f32 dx, f32 dy, f32 dz, f32 r, f32 p, f32 h, f32 sx, f32 sy, f32 sz) {
    func_8001C73C(mf, r, p, h);
    mf[3][0] = dx;
    mf[3][1] = dy;
    mf[3][2] = dz;
    func_8001B5E4(mf, sx, sy, sz);
}

void HS64_MtxTransformRTS_PYR(Mtx* m, f32 dx, f32 dy, f32 dz, f32 r, f32 p, f32 h, f32 sx, f32 sy, f32 sz) {
    Mat4 mf;

    func_8001C968(mf, dx, dy, dz, r, p, h, sx, sy, sz);
    HS64_MtxF2L43(mf, m);
}

void create_yz_rotation_matrix(Mat4 mf, f32 p, f32 h) {
    f32 sinp, sinh;
    f32 cosp, cosh;

    sinp = sinf(p);
    cosp = cosf(p);
    sinh = sinf(h);
    cosh = cosf(h);

    mf[0][0] = cosp * cosh;
    mf[0][1] = cosp * sinh;
    mf[0][2] = -sinp;

    mf[1][0] = -sinh;
    mf[1][1] = cosh;
    mf[1][2] = 0;

    mf[2][0] = sinp * cosh;
    mf[2][1] = sinp * sinh;
    mf[2][2] = cosp;

    mf[0][3] = mf[1][3] = mf[2][3] = mf[3][0] = mf[3][1] = mf[3][2] = 0;

    mf[3][3] = 1.0f;
}

void func_8001CB0C(Mtx* m, f32 p, f32 h) {
    Mat4 mf;

    create_yz_rotation_matrix(mf, p, h);
    HS64_MtxF2L43(mf, m);
}

void func_8001CB4C(Mat4 mf, f32 dx, f32 dy, f32 dz, f32 p, f32 h) {
    create_yz_rotation_matrix(mf, p, h);
    mf[3][0] = dx;
    mf[3][1] = dy;
    mf[3][2] = dz;
}

void func_8001CB9C(Mtx* m, f32 dx, f32 dy, f32 dz, f32 p, f32 h) {
    Mat4 mf;

    func_8001CB4C(mf, dx, dy, dz, p, h);
    HS64_MtxF2L43(mf, m);
}

void create_xy_rotation_matrix(Mat4 mf, f32 r, f32 p) {
    f32 sinr, sinp;
    f32 cosr, cosp;

    sinr = sinf(r);
    cosr = cosf(r);
    sinp = sinf(p);
    cosp = cosf(p);

    mf[0][0] = cosp;
    mf[0][1] = 0;
    mf[0][2] = -sinp;

    mf[1][0] = sinp * sinr;
    mf[1][1] = cosr;
    mf[1][2] = cosp * sinr;

    mf[2][0] = sinp * cosr;
    mf[2][1] = -sinr;
    mf[2][2] = cosp * cosr;

    mf[0][3] = mf[1][3] = mf[2][3] = mf[3][0] = mf[3][1] = mf[3][2] = 0;

    mf[3][3] = 1.0f;
}

void func_8001CCBC(Mtx* m, f32 r, f32 p) {
    Mat4 mf;

    create_xy_rotation_matrix(mf, r, p);
    HS64_MtxF2L43(mf, m);
}

void func_8001CCFC(Mat4 mf, f32 dx, f32 dy, f32 dz, f32 r, f32 p) {
    create_xy_rotation_matrix(mf, r, p);
    mf[3][0] = dx;
    mf[3][1] = dy;
    mf[3][2] = dz;
}

void func_8001CD4C(Mtx* m, f32 dx, f32 dy, f32 dz, f32 r, f32 p) {
    Mat4 mf;

    func_8001CCFC(mf, dx, dy, dz, r, p);
    HS64_MtxF2L43(mf, m);
}

void create_z_rotation_matrix(Mat4 mf, f32 h) {
    f32 sinh;
    f32 cosh;

    sinh = sinf(h);
    cosh = cosf(h);

    mf[0][0] = mf[1][1] = cosh;
    mf[1][0] = -sinh;
    mf[3][3] = 1.0f;
    mf[1][1] = cosh;
    mf[0][1] = sinh;

    mf[2][1] = 0;
    mf[2][0] = 0;
    mf[1][2] = 0;
    mf[0][2] = 0;

    mf[3][2] = 0;
    mf[3][1] = 0;
    mf[3][0] = 0;

    mf[2][3] = 0;
    mf[1][3] = 0;
    mf[0][3] = 0;

    mf[2][2] = mf[3][3];
}

void func_8001CE30(Mtx* m, f32 h) {
    Mat4 mf;

    create_z_rotation_matrix(mf, h);
    HS64_MtxF2L43(mf, m);
}

void func_8001CE68(Mat4 mf, f32 x, f32 y, f32 z, f32 zrot) {
    create_z_rotation_matrix(mf, zrot);
    mf[3][0] = x;
    mf[3][1] = y;
    mf[3][2] = z;
}

void func_8001CEB4(Mtx* m, f32 dx, f32 dy, f32 dz, f32 h) {
    Mat4 mf;

    func_8001CE68(mf, dx, dy, dz, h);
    HS64_MtxF2L43(mf, m);
}

void create_y_rotation_matrix(Mat4 mf, f32 yaw) {
    f32 sinY;
    f32 cosY;

    sinY = sinf(yaw);
    cosY = cosf(yaw);

    mf[0][0] = mf[2][2] = cosY;
    mf[0][2] = -sinY;
    mf[3][3] = 1.0f;
    mf[2][2] = cosY;
    mf[2][0] = sinY;

    mf[2][1] = 0;
    mf[1][0] = 0;

    mf[1][2] = 0;
    mf[0][1] = 0;

    mf[3][2] = 0;
    mf[3][1] = 0;
    mf[3][0] = 0;

    mf[2][3] = 0;
    mf[1][3] = 0;
    mf[0][3] = 0;

    mf[1][1] = mf[3][3];
}

void func_8001CF90(Mtx* m, f32 yaw) {
    Mat4 mf;

    create_y_rotation_matrix(mf, yaw);
    HS64_MtxF2L43(mf, m);
}

void func_8001CFC8(float mf[4][4], f32 x, f32 y, f32 z, f32 yRot) {
    create_y_rotation_matrix(mf, yRot);
    mf[3][0] = x;
    mf[3][1] = y;
    mf[3][2] = z;
}

void func_8001D014(Mtx* m, f32 dx, f32 dy, f32 dz, f32 yaw) {
    Mat4 mf;

    func_8001CFC8(mf, dx, dy, dz, yaw);
    HS64_MtxF2L43(mf, m);
}

void func_8001D060(Mat4 mf, f32 a, f32 x, f32 y, f32 z) {
    func_8001B838(mf, (a * 3.1415927f) / 180.0f, x, y, z);
}

void HS64_MtxRotateDegrees(Mtx* m, f32 a, f32 x, f32 y, f32 z) {
    Mat4 mf;

    func_8001B838(mf, (a * 3.1415927f) / 180.0f, x, y, z);
    HS64_MtxF2L43(mf, m);
}

void func_8001D11C(Mat4 mf, f32 dx, f32 dy, f32 dz, f32 a, f32 rx, f32 ry, f32 rz) {
    func_8001BA04(mf, dx, dy, dz, (a * 3.1415927f) / 180.0f, rx, ry, rz);
}

void HS64_MtxRotateTranslateDegrees(Mtx* m, f32 dx, f32 dy, f32 dz, f32 a, f32 rx, f32 ry, f32 rz) {
    Mat4 mf;

    func_8001BA04(mf, dx, dy, dz, (a * 3.1415927f) / 180.0f, rx, ry, rz);
    HS64_MtxF2L43(mf, m);
}

void func_8001D200(Mat4 mf, f32 r, f32 p, f32 h) {
    HS64_MkRotationMtxF(mf, (r * 3.1415927f) / 180.0f, (p * 3.1415927f) / 180.0f, (h * 3.1415927f) / 180.0f);
}

void HS64_MtxRotateRPYDegrees(Mtx* m, f32 r, f32 p, f32 h) {
    Mat4 mf;

    HS64_MkRotationMtxF(mf, (r * 3.1415927f) / 180.0f, (p * 3.1415927f) / 180.0f, (h * 3.1415927f) / 180.0f);
    HS64_MtxF2L43(mf, m);
}

void func_8001D2DC(Mat4 mf, f32 dx, f32 dy, f32 dz, f32 r, f32 p, f32 h) {
    func_8001BF88(mf, dx, dy, dz, (r * 3.1415927f) / 180.0f, (p * 3.1415927f) / 180.0f, (h * 3.1415927f) / 180.0f);
}

void HS64_MtxRotateRPYTranslateDegrees(Mtx* m, f32 dx, f32 dy, f32 dz, f32 r, f32 p, f32 h) {
    Mat4 mf;

    func_8001BF88(mf, dx, dy, dz, (r * 3.1415927f) / 180.0f, (p * 3.1415927f) / 180.0f, (h * 3.1415927f) / 180.0f);
    HS64_MtxF2L43(mf, m);
}

// File split between lbmatrix and interpolation?

#ifdef MIPS_TO_C
void func_8001D3D0(Vector* out, Vector* pts, f32 s, f32 u) {
    f32 u2, u3;
    f32 b0, b1, b2, b3;

    u2 = u * u;
    u3 = u2 * u;
    b3 = (u3 - u2) * s;
    b0 = ((2.0f * u2 - u3) - u) * s;
    b1 = (2.0f - s) * u3 + (s - 3.0f) * u2 + 1.0f;
    b2 = (s - 2.0f) * u3 + (3.0f - 2.0f * s) * u2 + s * u;
    out->x = pts[3].x * b3 + (pts[0].x * b0 + pts[1].x * b1 + pts[2].x * b2);
    out->y = pts[3].y * b3 + (pts[0].y * b0 + pts[1].y * b1 + pts[2].y * b2);
    out->z = pts[3].z * b3 + (pts[0].z * b0 + pts[1].z * b1 + pts[2].z * b2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001D3D0.s")
#endif

#ifdef MIPS_TO_C
void func_8001D514(Vector* out, Vector* pts, f32 s, f32 u) {
    f32 u2;
    f32 b0, b1, b2, b3;

    u2 = u * u;
    b3 = (3.0f * u2 - 2.0f * u) * s;
    b0 = ((-3.0f * u2 + 4.0f * u) - 1.0f) * s;
    b1 = (2.0f - s) * 3.0f * u2 + 2.0f * (s - 3.0f) * u;
    b2 = (s - 2.0f) * 3.0f * u2 + 2.0f * (3.0f - 2.0f * s) * u + s;
    out->x = pts[3].x * b3 + (pts[0].x * b0 + pts[1].x * b1 + pts[2].x * b2);
    out->y = pts[3].y * b3 + (pts[0].y * b0 + pts[1].y * b1 + pts[2].y * b2);
    out->z = pts[3].z * b3 + (pts[0].z * b0 + pts[1].z * b1 + pts[2].z * b2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001D514.s")
#endif

#ifdef MIPS_TO_C
extern f32 D_80040CC0;
extern f32 D_80040CC4;
extern f32 D_80040CC8;
extern f32 D_80040CCC;

void func_8001D6A0(Vector* out, Vector* pts, f32 u) {
    f32 t, u2, u3;
    f32 b0, b1, b2, b3;

    t = 1.0f - u;
    u2 = u * u;
    u3 = u2 * u;
    b3 = D_80040CC0 * u3;
    b0 = D_80040CC4 * t * t * t;
    b1 = ((3.0f * u3) - (6.0f * u2) + 4.0f) * D_80040CC8;
    b2 = (((u2 - u3) + u) * 3.0f + 1.0f) * D_80040CCC;
    out->x = pts[3].x * b3 + (pts[0].x * b0 + pts[1].x * b1 + pts[2].x * b2);
    out->y = pts[3].y * b3 + (pts[0].y * b0 + pts[1].y * b1 + pts[2].y * b2);
    out->z = pts[3].z * b3 + (pts[0].z * b0 + pts[1].z * b1 + pts[2].z * b2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001D6A0.s")
#endif

#ifdef MIPS_TO_C
void func_8001D800(void *arg0, void *arg1, f32 arg2) {
    f32 sp4;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f8;

    temp_f0 = arg2 * arg2;
    temp_f8 = 1.0f - arg2;
    temp_f18 = 0.5f * temp_f0;
    sp4 = temp_f8;
    temp_f2 = -0.5f * temp_f8 * temp_f8;
    temp_f14 = ((3.0f * temp_f0) - (4.0f * arg2)) * 0.5f;
    temp_f16 = ((-3.0f * temp_f0) + (2.0f * arg2) + 1.0f) * 0.5f;
    arg0->unk0 = (arg1->unk24 * temp_f18) + ((arg1->unk0 * temp_f2) + (arg1->unkC * temp_f14) + (arg1->unk18 * temp_f16));
    arg0->unk4 = (arg1->unk28 * temp_f18) + ((arg1->unk4 * temp_f2) + (arg1->unk10 * temp_f14) + (arg1->unk1C * temp_f16));
    arg0->unk8 = (arg1->unk2C * temp_f18) + ((arg1->unk8 * temp_f2) + (arg1->unk14 * temp_f14) + (arg1->unk20 * temp_f16));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001D800.s")
#endif

#ifdef MIPS_TO_C
void func_8001D934(void *arg0, void *arg1, f32 arg2) {
    f32 sp8;
    f32 sp4;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f8;

    temp_f2 = arg2 * arg2;
    temp_f0 = 1.0f - arg2;
    temp_f14 = temp_f0 * temp_f0;
    sp4 = temp_f2 * arg2;
    temp_f16 = temp_f14 * temp_f0;
    temp_f18 = 3.0f * arg2 * temp_f14;
    temp_f8 = 3.0f * temp_f2 * temp_f0;
    sp8 = temp_f8;
    arg0->unk0 = (arg1->unk24 * sp4) + ((arg1->unk0 * temp_f16) + (arg1->unkC * temp_f18) + (arg1->unk18 * temp_f8));
    arg0->unk4 = (arg1->unk28 * sp4) + ((arg1->unk4 * temp_f16) + (arg1->unk10 * temp_f18) + (arg1->unk1C * sp8));
    arg0->unk8 = (arg1->unk2C * sp4) + ((arg1->unk8 * temp_f16) + (arg1->unk14 * temp_f18) + (arg1->unk20 * temp_f8));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001D934.s")
#endif

#ifdef MIPS_TO_C
void func_8001DA48(void *arg0, void *arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;

    temp_f0 = arg2 - 1.0f;
    temp_f14 = 3.0f * (arg2 * arg2);
    temp_f2 = -3.0f * temp_f0 * temp_f0;
    temp_f16 = ((1.0f - (4.0f * arg2)) + temp_f14) * 3.0f;
    temp_f18 = ((2.0f * arg2) - temp_f14) * 3.0f;
    arg0->unk0 = (arg1->unk24 * temp_f14) + ((arg1->unk0 * temp_f2) + (arg1->unkC * temp_f16) + (arg1->unk18 * temp_f18));
    arg0->unk4 = (arg1->unk28 * temp_f14) + ((arg1->unk4 * temp_f2) + (arg1->unk10 * temp_f16) + (arg1->unk1C * temp_f18));
    arg0->unk8 = (arg1->unk2C * temp_f14) + ((arg1->unk8 * temp_f2) + (arg1->unk14 * temp_f16) + (arg1->unk20 * temp_f18));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001DA48.s")
#endif

#ifdef MIPS_TO_C

void func_8001DB54(void *arg0, void *arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f2;
    s16 temp_t0;
    s32 temp_f10;
    u8 temp_v0;
    u8 temp_v0_3;
    void *temp_v0_2;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;

    if (!(arg2 < 0.0f) && !(arg2 > 1.0f)) {
        if (arg2 < 1.0f) {
            temp_v0 = arg1->unk0;
            temp_f12 = arg2 * (arg1->unk2 - 1);
            temp_f10 = temp_f12;
            temp_f12_2 = temp_f12 - temp_f10;
            switch (temp_v0) {                      /* switch 1; irregular */
                case 0:                             /* switch 1 */
                    temp_v0_2 = arg1->unk8 + (temp_f10 * 0xC);
                    temp_f0 = temp_v0_2->unk0;
                    arg0->unk0 = temp_f0 + ((temp_v0_2->unkC - temp_f0) * temp_f12_2);
                    temp_f2 = temp_v0_2->unk4;
                    arg0->unk4 = temp_f2 + ((temp_v0_2->unk10 - temp_f2) * temp_f12_2);
                    temp_f14 = temp_v0_2->unk8;
                    arg0->unk8 = temp_f14 + ((temp_v0_2->unk14 - temp_f14) * temp_f12_2);
                    return;
                case 1:                             /* switch 1 */
                    func_8001D934(temp_f12_2, arg1->unk8 + (temp_f10 * 0x24), temp_f12_2);
                    return;
                case 2:                             /* switch 1 */
                    func_8001D6A0(temp_f12_2, arg1->unk8 + (temp_f10 * 0xC), temp_f12_2);
                    return;
                case 3:                             /* switch 1 */
                    func_8001D3D0(temp_f12_2, arg1->unk8 + (temp_f10 * 0xC), arg1->unk4, temp_f12_2);
                    return;
            }
        } else {
            temp_v0_3 = arg1->unk0;
            temp_t0 = arg1->unk2 - 1;
            switch (temp_v0_3) {                    /* irregular */
                case 0:
                    temp_v0_4 = arg1->unk8 + (temp_t0 * 0xC);
                    arg0->unk0 = temp_v0_4->unk0;
                    arg0->unk4 = temp_v0_4->unk4;
                    arg0->unk8 = temp_v0_4->unk8;
                    return;
                case 1:
                    temp_v0_5 = arg1->unk8 + (temp_t0 * 0x24);
                    arg0->unk0 = temp_v0_5->unk0;
                    arg0->unk4 = temp_v0_5->unk4;
                    arg0->unk8 = temp_v0_5->unk8;
                    return;
                case 2:
                    func_8001D6A0(arg2, (arg1->unk8 + (temp_t0 * 0xC)) - 0xC, 1.0f);
                    return;
                case 3:
                    temp_v0_6 = arg1->unk8 + (temp_t0 * 0xC);
                    temp_v0_7 = temp_v0_6 + 0xC;
                    arg0->unk0 = temp_v0_6->unkC;
                    arg0->unk4 = temp_v0_7->unk4;
                    arg0->unk8 = temp_v0_7->unk8;
                    break;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001DB54.s")
#endif

#ifdef MIPS_TO_C

void func_8001DDE0(void *arg0, void *arg1, f32 arg2) {
    f32 temp_f12;
    f32 temp_f12_2;
    s16 var_t0;
    s32 temp_f10;
    u8 temp_v1;
    void *temp_v0;

    if (!(arg2 < 0.0f) && !(arg2 > 1.0f)) {
        temp_v1 = arg1->unk0;
        temp_f12 = arg2 * (arg1->unk2 - 1);
        temp_f10 = temp_f12;
        var_t0 = temp_f10;
        temp_f12_2 = temp_f12 - temp_f10;
        switch (temp_v1) {                          /* irregular */
            case 0:
                if (arg2 == 1.0f) {
                    var_t0 -= 1;
                }
                temp_v0 = arg1->unk8 + (var_t0 * 0xC);
                arg0->unk0 = temp_v0->unkC - temp_v0->unk0;
                arg0->unk4 = temp_v0->unk10 - temp_v0->unk4;
                arg0->unk8 = temp_v0->unk14 - temp_v0->unk8;
                return;
            case 1:
                func_8001DA48(temp_f12_2, arg1->unk8 + (var_t0 * 0x24), temp_f12_2);
                return;
            case 2:
                func_8001D800(temp_f12_2, arg1->unk8 + (var_t0 * 0xC), temp_f12_2);
                return;
            case 3:
                func_8001D514(temp_f12_2, arg1->unk8 + (var_t0 * 0xC), arg1->unk4, temp_f12_2);
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001DDE0.s")
#endif

#ifdef MIPS_TO_C

void func_8001DF68(f32 arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f14;

    temp_f0 = arg0 * arg0;
    temp_f2 = temp_f0 * arg0;
    var_f14 = arg1->unk10 + ((arg1->unk0 * (temp_f2 * arg0)) + (arg1->unk4 * temp_f2) + (arg1->unk8 * temp_f0) + (arg1->unkC * arg0));
    if ((var_f14 < 0.0f) && (D_80040CD0 < var_f14)) {
        var_f14 = 0.0f;
    }
    sqrtf(var_f14);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001DF68.s")
#endif

#ifdef MIPS_TO_C

f32 func_8001E000(f32 arg0, f32 arg1, ? arg2) {
    f32 sp4C;
    f32 temp_f20;
    f32 temp_f24;
    f32 var_f20;
    f32 var_f22;
    s32 var_s0;

    temp_f24 = (arg1 - arg0) / 8.0f;
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001E000.s")
#endif

#ifdef MIPS_TO_C

f32 func_8001E104(void *arg0, f32 arg1) {
    f32 sp5C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f14;
    f32 temp_f28;
    f32 temp_f6;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f20;
    f32 var_f22;
    f32 var_f24;
    f32 var_f26;
    s32 var_s1;
    u8 temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *var_v0;

    temp_v1 = arg0->unk10;
    var_s1 = 0;
    var_f24 = 1.0f;
    var_f20 = 0.0f;
    if (temp_v1->unk4 < arg1) {
        var_v0 = temp_v1;
        do {
            temp_f6 = var_v0->unk8;
            var_s1 += 1;
            var_v0 += 4;
        } while (temp_f6 < arg1);
    }
    temp_v0 = arg0->unk0;
    switch (temp_v0) {                              /* irregular */
        case 0:
            temp_v0_2 = temp_v1 + (var_s1 * 4);
            temp_f0 = temp_v0_2->unk0;
            var_f26 = (arg1 - temp_f0) / (temp_v0_2->unk4 - temp_f0);
            break;
        case 1:
        case 2:
        case 3:
            var_f22 = (arg1 - *(temp_v1 + (var_s1 * 4))) * arg0->unkC;
            if (0.0f < 1.0f) {
                var_f0 = -(0.0f - 1.0f);
            } else {
                var_f0 = 0.0f - 1.0f;
            }
            temp_f28 = D_80040CD4;
            if (temp_f28 <= var_f0) {
                do {
                    temp_f14 = (var_f20 + var_f24) * 0.5f;
                    temp_f0_2 = func_8001E000(var_f20, temp_f14, arg0->unk14 + (var_s1 * 0x14));
                    if (var_f22 < (temp_f0_2 + temp_f28)) {
                        var_f24 = temp_f14;
                    } else {
                        var_f20 = temp_f14;
                        var_f22 -= temp_f0_2;
                    }
                    if (var_f20 < var_f24) {
                        var_f0_2 = -(var_f20 - var_f24);
                    } else {
                        var_f0_2 = var_f20 - var_f24;
                    }
                } while (temp_f28 <= var_f0_2);
                sp5C = temp_f14;
            }
            /* fallthrough */
        default:
            var_f26 = sp5C;
            break;
    }
    return (var_s1 + var_f26) / (arg0->unk2 - 1.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001E104.s")
#endif

#ifdef MIPS_TO_C
void mtxGetInterpolatedPosition(s32 arg0, s32 arg1, ? arg2) {
    func_8001DB54(arg0, arg1, func_8001E104(arg2, arg1, arg2));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/mtxGetInterpolatedPosition.s")
#endif

#ifdef MIPS_TO_C

void func_8001E344(s32 arg0, s32 arg1, ? arg2) {
    func_8001DDE0(arg0, arg1, func_8001E104(arg2, arg1, arg2));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/lbmatrix/func_8001E344.s")
#endif
