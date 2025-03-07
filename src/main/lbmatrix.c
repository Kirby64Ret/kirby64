#include "common.h"
#include "lbmatrix.h"

// Seems to be a version of MtxF2L that uses unsigned values only
void func_80019A30(float mf[4][4], Mtx *m) {
    u32 e1,e2;

    // This macro should match, but doesn't (some instructions are reordered)
    // This is because the two `mtx->m[...][...] = ...` lines in the macro end up on the same line of code
    // When this happens, the two or instructions are misordered (confirmed by checking with the matching code).
    
// #define MTXF_TO_MTXF_UNSIGNED_CELL(i, j, mtxf, mtx) \
//     e1=FTOFIX32(mtxf[i][j*2]); \
//     e2=FTOFIX32(mtxf[i][j*2+1]); \
//     mtx->m[0 + i/2][j + 2 * (i % 2)] = COMBINE_INTEGRAL(e1, e2); \
//     mtx->m[2 + i/2][j + 2 * (i % 2)] = COMBINE_FRACTIONAL(e1, e2);

//     MTXF_TO_MTXF_UNSIGNED_CELL(0,0,mf,m);
//     MTXF_TO_MTXF_UNSIGNED_CELL(0,1,mf,m);
//     MTXF_TO_MTXF_UNSIGNED_CELL(1,0,mf,m);
//     MTXF_TO_MTXF_UNSIGNED_CELL(1,1,mf,m);
    
//     MTXF_TO_MTXF_UNSIGNED_CELL(2,0,mf,m);
//     MTXF_TO_MTXF_UNSIGNED_CELL(2,1,mf,m);
//     MTXF_TO_MTXF_UNSIGNED_CELL(3,0,mf,m);
//     MTXF_TO_MTXF_UNSIGNED_CELL(3,1,mf,m);
    
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
void func_80019C60(float mf[4][4], Mtx *m) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/lbreflect_Int16Sin.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/lbreflect_Int16Cos.s")

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

    func_80019A30(mf, m);
}

// Modified version of guLookAtF that takes an extra Vector* argument and calls func_800191F8
void guLookAtF_2(float mf[4][4], float xEye, float yEye, float zEye, float xAt,  float yAt,  float zAt, Vector* arg7, float xUp,  float yUp,  float zUp) {
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


#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001A488.s")

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

    func_80019A30(mf, m);
}

// Lookat counterpart for guLookAtF_2
f32 guLookAtReflectF_2(float mf[4][4], LookAt *l, float xEye, float yEye, float zEye, float xAt,  float yAt,  float zAt, Vector* arg8, float xUp,  float yUp,  float zUp) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001AD90.s")

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

    func_80019A30(mf, m);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001B008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001B234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001B28C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001B454.s")

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

void func_8001B540(Mtx* arg0, f32 arg1, f32 arg2, f32 arg3) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001B5E4.s")

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

void func_8001B784(s32 arg0[4][4], f32 arg1, f32 arg2, f32 arg3) {
    s32 temp_f6;
    s32 temp_f4;
    s32 temp_f10;
    u32 tmp;

    arg0[0][0] = 0x10000;
    arg0[2][0] = 0;
    arg0[0][1] = 0;
    arg0[2][1] = 0;
    temp_f6 = arg1 * 65536.0f;
    arg0[0][2] = 1;
    arg0[2][2] = 0;
    temp_f10 = arg2 * 65536.0f;
    arg0[0][3] = 0;
    tmp = (u32) temp_f10;
    arg0[2][3] = 0;
    arg0[1][0] = 0;
    arg0[3][0] = 0;
    arg0[1][1] = 0x10000;
    arg0[3][1] = 0;
    arg0[1][2] = COMBINE_INTEGRAL(temp_f6, (u32)temp_f10);
    arg0[3][2] = COMBINE_FRACTIONAL(temp_f6, (u32)tmp);
    temp_f4 = arg3 * 65536.0f;
    temp_f6 = 1 << 16;
    arg0[1][3] = COMBINE_INTEGRAL(temp_f4, temp_f6);
    arg0[3][3] = COMBINE_FRACTIONAL(temp_f4, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001B838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001B9B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001BA04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001BA60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001BAC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001BB30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/HS64_MkRotationMtxF.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001BCE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001BF88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001BFDC.s")

void func_8001C2E4(Mat4 arg0, Vector arg1, Vector arg4, Vector arg7) {
    HS64_MkRotationMtxF(arg0, arg4.x, arg4.y, arg4.z);
    arg0[3][0] = arg1.x;
    arg0[3][1] = arg1.y;
    arg0[3][2] = arg1.z;
    func_8001B5E4(arg0, arg7.x, arg7.y, arg7.z);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001C348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001C73C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001C874.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001C8B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001C90C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001C968.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001C9CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/create_yz_rotation_matrix.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001CB0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001CB4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001CB9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/create_xy_rotation_matrix.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001CCBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001CCFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001CD4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/create_z_rotation_matrix.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001CE30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001CE68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001CEB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/create_y_rotation_matrix.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001CF90.s")

void func_8001CFC8(float mf[4][4], f32 x, f32 y, f32 z, f32 yRot) {
    create_y_rotation_matrix(mf, yRot);
    mf[3][0] = x;
    mf[3][1] = y;
    mf[3][2] = z;
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D014.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D0B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D11C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D184.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D200.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D264.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D2DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D34C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D3D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D514.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D6A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D800.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001D934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001DA48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001DB54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001DDE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001DF68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001E000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001E104.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001E300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/lbreflect/func_8001E344.s")
