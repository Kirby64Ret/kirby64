#ifndef LB_MATRIX_H
#define LB_MATRIX_H

#define MAT4_SET(mat, a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15)\
{\
        mat[3][0] = a12; \
        mat[3][1] = a13; \
        mat[3][2] = a14; \
        mat[0][0] = a0; \
        mat[1][1] = a5; \
        mat[2][2] = a10; \
        mat[3][3] = a15; \
        mat[2][3] = a11; \
        mat[2][1] = a9; \
        mat[2][0] = a8; \
        mat[1][3] = a7; \
        mat[1][2] = a6; \
        mat[1][0] = a4; \
        mat[0][3] = a3; \
        mat[0][2] = a2; \
        mat[0][1] = a1; \
}

// #define MAT4_SET(mat, a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15)\
// {\
//      mat[3][3] = a15; \
//      mat[3][2] = a14; \
//      mat[3][1] = a13; \
//      mat[3][0] = a12; \
//      mat[2][3] = a11; \
//      mat[2][2] = a10; \
//      mat[2][1] = a9; \
//      mat[2][0] = a8; \
//      mat[1][3] = a7; \
//      mat[1][2] = a6; \
//      mat[1][1] = a5; \
//      mat[1][0] = a4; \
//      mat[0][3] = a3; \
//      mat[0][2] = a2; \
//      mat[0][1] = a1; \
//      mat[0][0] = a0; \
// }

#define COMBINE_INTEGRAL(a, b) ((a & 0xffff0000 ) | ((b >> 16)))
#define COMBINE_FRACTIONAL(a, b) ((a << 16)) | (b & 0xffff)

s32 lbreflect_Int16Sin(f32 arg0);
s32 lbreflect_Int16Cos(f32 arg0);

void HS64_MkScaleMtxF(Mat4 mf, f32 x, f32 y, f32 z);
void HS64_MkRotationMtxF(Mat4 mf, f32 x, f32 y, f32 z);
void create_y_rotation_matrix(Mat4 arg0, f32 angle);
void func_800A465C(Mat4 mf, f32 x, f32 y, f32 z);
void func_8001B5E4(Mat4, f32, f32, f32);
void HS64_MkTranslateMtxF(Mat4 mf, f32 x, f32 y, f32 z);

#endif // LB_MATRIX_H
