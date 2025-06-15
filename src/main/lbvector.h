#ifndef LBVECTOR_H
#define LBVECTOR_H

#define AXIS_X  1
#define AXIS_Y  2
#define AXIS_Z  4

f32 utilVec3Dot(Vector *, Vector *);

extern f32 utilVec3Mag(Vector *);
#define LBVECTOR_MAG(x, y, z) sqrtf(((x)*(x))+((y)*(y))+((z)*(z)))
#define VEC_MAG_2(v) ((v->x * v->x) + (v->y * v->y) + (v->z * v->z))
#define VEC_DOT(v, w) ((v->x * w->x) + (v->y * w->y) + (v->z * w->z))

#define VEC_DOT_FIRST_ARG_NEGATE(v, w) ((-v->x * w->x) + (-v->y * w->y) + (-v->z * w->z))

#define VEC_SUB(result, a, b)\
result.x = a.x - b.x;\
result.y = a.y - b.y;\
result.z = a.z - b.z;

#define VECPTR_SUB(result, a, b)\
result.x = a->x - b->x;\
result.y = a->y - b->y;\
result.z = a->z - b->z;

#define VEC_ADD(result, a, b)\
result.x = a.x + b.x;\
result.y = a.y + b.y;\
result.z = a.z + b.z;


#define VEC_MAG_SQUARE(x, y, z)\
(x*x)+(y*y)+(z*z)

#define VEC_MAG_SQUARE(v)\
((v.x*v.x)+(v.y*v.y)+(v.z*v.z))

#define IS_ZERO_VECTOR(v) (v.x == 0.0f && v.y == 0.0f && v.z == 0.0f)

Vector *lbvector_Add(Vector *arg0, Vector *arg1);
Vector *lbvector_Sub(Vector *arg0, Vector *arg1);
Vector *lbvector_Diff(Vector *arg0, Vector *arg1, Vector *arg2);
void vec3_sub_normalize(Vector *arg0, Vector *arg1, Vector *arg2);
Vector *lbvector_Scale(Vector *arg0, f32 arg1);
Vector *lbvector_Shrink(Vector *arg0, f32 arg1);
Vector *func_80018EEC(Vector *arg0, Vector *arg1, f32 arg2);
void func_80018F34(Vector *arg0, f32 arg1, Vector *arg2, f32 arg3);
f32 lbvector_Angle(Vector *arg0, Vector *arg1);
Vector *lbvector_Rotate(Vector *arg0, s32 axis, f32 angle);
Vector *lbvector_Negate(Vector *arg0, s32 flag);
Vector *func_800193C8(Vector *arg0, u32 flags);
Vector *func_800195D8(Vector *arg0, Vector *arg1);
Vector *func_80019648(Vector *arg0, Vector *arg1);
s32 vec3_compare_directions(Vector *arg0, Vector *arg1);
s32 vec3_subtract_compare_directions(Vector *arg0, Vector *arg1, Vector *arg2);
f32 func_800198C0(Vector *arg0, Vector *arg1, Vector *arg2, Vector *arg3);
f32 lbvector_Len(Vector *arg0);

#endif // LBVECTOR_H
