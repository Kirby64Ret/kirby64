#ifndef OVL2_8_HEADER
#define OVL2_8_HEADER

struct PositionState {
/*0x0*/  u32    padding;
/*0x4*/  f32 	kirbyFootPos[3]; //Position of kirby at feet/back
/*0x10*/ f32 	scale[3]; //this is prob for size of char (for dedede segments?)
/*0x1c*/ f32 	faceAngle[3]; //Constat with mag, last member seems to be total H dist or something
/*0X28*/ f32 	kirbyHeadPos[3]; //Position of kirby at head/face
/*0x34*/ f32 	kirbyGroundPath[2]; //the X/Z pos of kirby feet
/*0x40*/ f32 	kirbyHeadPath[2]; //the X/Z pos of kirby head
/*0x44*/ f32 	kirbyHeight[2]; //Y pos of head/feet respectively (assumption)
/*0x4c*/ u32    collisionFlags; //0x10000000 when grounded, 0 when not
/*0x50*/ u8     byteArray[5]; //0x1414141414 constant
/*0x57*/ u8     unkPad2[3]; //0x000000 constant
/*0x58*/ u32    VI_Timer; //the VI
};

struct ModelNode{
	struct ModelNode *next;
	u8 renderMode;
	u8 pad[3];
};


typedef struct LayoutNode {
	struct LayoutNode *next;
	struct LayoutNode *unk4;
	struct LayoutNode *sibling;
	struct LayoutNode *unkC;
	struct LayoutNode *parent; //usually same as Unk0_Node
	struct LayoutNode *child; //is 1 when at end of models layout
	struct ModelNode *unk18;
	Vector /*0x1c*/ pos;
	struct ModelNode *unk28;
	u32 *unk2C;
	Vector angle; /* 0x30 0x34 0x38 */
	struct ModelNode *unk3C;
	Vector scale; /* 0x40 0x44 0x48 */
	u32 *unk4C;
	u32 *model; //ptr to Bank4 model, probably only used upon load_
	u8 unk54;
	u8 unk55;
	u8 unk56;
	u8 unk57;

	// goes up to at least 0x80?
	u32 unk58;
    u32 unk5C;
    u32 unk60;
    u32 unk64;
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;
    // TODO: analyze/fill out struct
    void *unk80;
} LayoutNode;

struct struct8011BA10_temp {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    struct vCollisionHeader *unk4;
    u32 unk8;
	u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
    u32 unk28;
    u32 unk2C;
    u32 unk30;
    u32 unk34;
    u32 unk38;
    u32 unk3C;
    u32 unk40;
    u32 unk44;
    u32 unk48;
    u32 unk4C;
    u32 unk50;
    u32 unk54;
    u32 unk58;
    u32 unk5C;
    u32 unk60;
    u32 unk64;
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;
    u32 unk80;
    u32 unk84;
    u32 unk88;
    u32 unk8C;
    u32 unk90;
    u32 unk94;
    u32 unk98;
    u32 unk9C;
    f32 unkA0;
    f32 unkA4;
    f32 unkA8;
    f32 unkAC;
    f32 unkB0;
    f32 unkB4;
};


extern struct struct8011BA10_temp D_8012D948[];
extern struct struct8011BA10_temp D_8012940C;



extern struct PositionState gPositionState;
extern struct Player gKirbyState;
extern f32 D_80128EFC, D_80128EF8, D_80128F24, D_80128F20;
extern u32 gGameState, D_8012E818, D_8012E81C, D_8012E820, D_8012E824;
extern s32 D_800D6F10;
extern u16 D_8012E8C2;
extern s16 D_8012E922;
extern u8 D_8012E9B8;
// extern u32 D_800E8920;

void func_8012310C(s32 currentInhale);
void set_kirby_action_1(s32 actionChange, s32 action);
void set_kirby_action_2(s32 actionChange, u32 action);
void func_801230E8(s32 arg0, s32 arg1, s32 arg2);

extern struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    u32 unkC;
    u32 unk10;
} D_80198830;


#endif
