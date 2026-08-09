/* Minimal type base for the generated data translation units.
 *
 * These files deliberately include NO game headers: the same symbol is often
 * declared elsewhere with a real type, and a definition here would conflict.
 * C does no cross-TU type checking at link time, so isolation is what lets the
 * whole generated set compile.
 */
#ifndef PC_TYPES_H
#define PC_TYPES_H

typedef unsigned char  u8;
typedef unsigned short u16;
typedef unsigned int   u32;
typedef signed char    s8;
typedef short          s16;
typedef int            s32;
typedef float          f32;
typedef double         f64;

#endif
