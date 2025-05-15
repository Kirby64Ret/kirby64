#ifndef OVL1_6_H
#define OVL1_6_H

#include "ovl2/ovl2_6.h"
#include "ovl19/ovl19_5.h"


#define MultiType union {u32 as_u32; u32 *as_u32p; s32 as_s32; s32 *as_s32p; void *as_ptr;}
#define _MultiType(CustomType) union {u32 as_u32; s32 as_s32; void *as_ptr; CustomType *consume;}

extern s32 D_800DD710[];
extern s32 D_800DE190[];
extern s32 D_800DDFD0[];
extern s32 D_800DDE10[];
extern s32 gEntityVtableIndexArray[];
extern s32 D_800DD8D0[];
extern s32 D_800E0810[];


extern f32 D_800E0B90[];
extern f32 D_800E09D0[];
extern s32 D_800E0F10[];
extern s32 D_800E0D50[];
extern f32 **D_800E0490[];
extern s32 *D_800E0650[];
extern s32 D_800E1ED0[];
extern void (*D_800DEDD0[])(struct GObj *);
extern void (*D_800DEF90[])(s32);
extern void (*D_800DF150[])(s32);
extern void (*D_800DF310[])(s32, s32, f32);
extern u32 D_800DF850[];
extern u32 D_800DF690[];
extern u32 *gSegment4StartArray[];

// i think this is an array of pairs (2-length arrays) of pointers but cba to figure out syntax
extern struct LayoutNode **D_800DFBD0[];
extern s32 D_800E0110[];
extern s32 D_800DFF50[];
extern s32 D_800E02D0[];

extern f32 D_800E2410[];
extern f32 D_800E2250[];
extern f32 D_800E2090[];

extern f32 gEntitiesPosZArray[];
extern f32 gEntitiesPosYArray[];
extern f32 gEntitiesPosXArray[];
extern f32 gEntitiesNextPosZArray[];
extern f32 gEntitiesNextPosYArray[];
extern f32 gEntitiesNextPosXArray[];
extern f32 D_800E3910[];
extern f32 D_800E3750[];
extern f32 D_800E3590[];
extern f32 D_800E33D0[];
extern f32 D_800E3210[];
extern f32 D_800E3050[];
extern f32 D_800E3E50[];
extern f32 D_800E3C90[];
extern f32 D_800E3AD0[];
extern f32 gEntitiesAngleZArray[];
extern f32 gEntitiesAngleYArray[];
extern f32 gEntitiesAngleXArray[];
extern f32 D_800E1450[];
extern f32 D_800E1290[];
extern f32 D_800E10D0[];
extern f32 gEntitiesScaleZArray[];
extern f32 gEntitiesScaleYArray[];
extern f32 gEntitiesScaleXArray[];
extern f32 D_800E5DD0[];
extern f32 D_800E5C10[];
extern f32 D_800E5A50[];
extern f32 D_800E4E10[];
extern f32 D_800E4C50[];
extern f32 D_800E4A90[];
extern f32 D_800E5350[];
extern f32 D_800E5190[];
extern f32 D_800E4FD0[];

extern u32 D_800DDA90[];

extern u8 D_800E7650[];

extern s32 D_800E8AE0[];
extern s32 D_800E8220[];
extern s32 D_800E83E0[];
extern s32 D_800E8760[];

extern u32 D_800E8E60[];
extern f32 D_800E9020[];
extern u8 D_800E76C0[];
extern u8 D_800E7730[];

extern u16 D_800E77A0[];

extern u8 D_800E7880[];
extern u8 D_800E78F0[];
extern f32 D_800E7B20[];
extern u32 D_800E7CE0[];
extern s32 D_800EA520[];
extern s32 D_800EA360[];
extern s32 D_800EA1A0[];

// this is a union or void*
extern MultiType D_800E9FE0[];

extern s32 D_800E9E20[];
extern s32 D_800E9C60[];

// this is also a union or void*
extern struct EntityThing800E9AA0 *D_800E9AA0[];
extern s32 D_800E98E0[];
extern f32 D_800EB320[];
extern f32 D_800EB160[];
extern f32 D_800EAFA0[];
extern f32 D_800EADE0[];
extern f32 D_800EAC20[];
extern f32 D_800EAA60[];
extern f32 D_800EA8A0[];
extern f32 D_800EA6E0[];
extern s32 D_800EB6A0[];
extern s32 D_800EB4E0[];
extern f32 D_800EBA20[];
extern f32 D_800EB860[];
extern s32 D_800EC120[];
extern s32 D_800EBF60[];
extern s32 D_800EBDA0[];
extern s32 D_800EBBE0[];
extern s32 D_800EC4A0[];

// this is also a union or void*
extern MultiType D_800EC2E0[];

extern f32 D_800EC820[];
extern f32 D_800EC660[];
extern s32 D_800E6150[];
extern s32 D_800E5F90[];
extern f32 D_800E6D90[];
extern f32 D_800E6BD0[];
extern f32 D_800E17D0[];
extern f32 D_800E1610[];
extern f32 D_800E6A10[];
extern f32 D_800E6690[];
extern f32 D_800E64D0[];

extern f32 D_800E6850[];
extern s32 D_800E8CA0[];
extern s32 D_800E6310[];
extern f32 D_800E56D0[];
extern f32 D_800E5510[];
extern f32 D_800E5890[];
extern s32 D_800E9720[];
extern s32 D_800E9560[];
extern s32 D_800E93A0[];

extern f32 D_800D6B10;

extern struct Normal D_800E6F50[];
extern f32 D_800D66FC, D_800D66F8;

extern u32 D_800E8060[];
extern s32 D_800E8920[];
extern s32 D_800E7EA0[];

s32 func_800AEC70(s32 id, s32 minIndex, s32 maxIndex);

#endif
