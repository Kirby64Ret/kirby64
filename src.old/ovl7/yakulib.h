#ifndef YAKULIB_H
#define YAKULIB_H

typedef struct {
	u32 unk0;
	u32 unk4;
	u32 *unk8;
	f32 *unkC;
	u8  unk10;
	u8  unk11;
	u16 unk12;
	u32 unk14;
	u32 unk18;
	u32 unk1C;
} YakuLibStruct;

// externs that probably belong in another function
extern u32 D_801CD820[];
extern YakuLibStruct D_801CE750, D_801D0A38;
extern YakuLibStruct D_801C7DDC, D_801CA7DC, D_801CA7FC;
extern YakuLibStruct D_801CE770, D_801C7E84;

extern YakuLibStruct D_801D0A58;
extern YakuLibStruct D_801CA6F4;
extern YakuLibStruct D_801CA738;
extern s32 D_800E8220[];

#endif