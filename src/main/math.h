#ifndef _MATH_H_
#define _MATH_H_

f32 atanf(f32);
f32 asinf(f32);
f32 atan2f(f32, f32);

#define M_TAU (2 * M_PIF)
#define M_2PIF (2 * M_PIF)

#define DTOR(x) (((x) * M_PIF) / 180.0f)
#define seconds * 30
#define second seconds

extern u16 random_u16(void);

#endif // _MATH_H_
