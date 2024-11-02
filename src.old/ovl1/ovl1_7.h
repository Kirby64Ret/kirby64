#ifndef _OVL1_7_H_
#define _OVL1_7_H_

#include "D_8004A7C4.h"
#include "ovl0/ovl0_2_5.h"


// GObjThreadStack?
struct UnkStruct800B1EC8 {
	struct UnkStruct800B1EC8 *unk0;
	struct UnkStruct800B1EC8 *unk4;
	struct UnkStruct800B1EC8 *unk8;
	struct UnkStruct800B1EC8 *unkC; // pointer?
	u32 unk10;
	u32 unk14; // pointer?
	u32 *unk18;
	GObjThread *unk1C;

	void (*unk20)(struct GObj *);

};

void func_800B1900(u16 track);
void func_800AFBB4(s32, struct GObj*);
// 80293D50
// 80293CE4
// 80293DE0
// 00000000

// 00000002
// 00000000
// 802964B8
// 8022FED0

// 800B1878
// 80293CE4
// 00000000
// 80293CE4

// 80293CC0
// 00000003
// 00000000
// 802964B8
// 8022FD10
// 8011C720

#endif