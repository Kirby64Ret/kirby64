typedef struct {
	/* 0x0; */  u32 world;
    /* 0x4; */  u32 level;
    /* 0x8; */  u32 data8;
    /* 0xC; */  u32 cutscenesWatched;
    /* 0x10 */  u8 percentComplete;
                u8 soundSetting;
                u8 hudDisplay;
                u8 data13;
                
    /* 0x14 */  u8 data14;
                u8 data15;
                u8 data16;
                u8 data17;

                // minigames
    /* 0x18 */  u16 hundredYardHopRecord;
    /* 0x1A */  u16 bumperCropBumpRecord;
    /* 0x1C */  u16 checkerBoardChaseRecord;

                u8 enemyCard1E[4];
    /* 0x20 */  u16 enemyCard22;
    /* 0x24 */  u32 enemyCard24;
    /* 0x28 */  u32 enemyCard28;
    /* 0x2C */  u32 enemyCard2C;
    /* 0x30 */  u8 enemyCard30[4];
    /* 0x34 */  u8 data34[4];
                u8 data38[4];

                // the range in question
    /* 0x3C */  u32 shards[6];
    
    /* 0x54 */ u32 checksum;
} File;

struct EEPHeader {
    u32 head[3];
    u32 checksum;
};

struct EEPROM {
	struct EEPHeader header;
	File files[3]; // 0x10, 0x68, 0xC0
};

extern struct EEPROM gSaveBuffer1;
extern struct EEPROM gSaveBuffer2;

s32 check_cutscene_watched(s32 arg0);
