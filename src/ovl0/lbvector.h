#ifndef LBVECTOR_H
#define LBVECTOR_H

#define AXIS_X  1
#define AXIS_Y  2
#define AXIS_Z  4

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

#endif // LBVECTOR_H
