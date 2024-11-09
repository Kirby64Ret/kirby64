#ifndef VEC_UTILS_H
#define VEC_UTILS_H

Vector *lbvector_Diff(Vector *, Vector *, Vector *);
Vector *lbvector_Rotate(Vector *arg0, s32 axis, f32 angle);

#define AXIS_X	1
#define AXIS_Y	2
#define AXIS_Z	4

f32 vec3_dot_product(Vector *, Vector *);
f32 lbvector_Angle(Vector *, Vector *);

extern f32 vec3_mag_square(Vector *);
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
(v.x*v.x)+(v.y*v.y)+(v.z*v.z)

#define IS_ZERO_VECTOR(v) (v.x == 0.0f && v.y == 0.0f && v.z == 0.0f)

#endif