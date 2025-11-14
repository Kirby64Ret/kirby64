#include <ultra64.h>
extern void EntryPoint(void);
struct struct_internal_header_t
{
    /* 0x00 */ u32 BSD_DOM1_CONFIG;
    /* 0x04 */ u32 ClockrateOverride;
    /* 0x08 */ void *Entrypoint;
    /* 0x0C */ u32 ReturnAddress;
    /* 0x10 */ u32 CRC1;
    /* 0x14 */ u32 CRC2;
    /* 0x18 */ u32 unkReserved0[2];
    /* 0x20 */ char InternalName[20];
    /* 0x34 */ u32 unkReserved1;
    /* 0x38 */ char MediaFormat[4];
    /* 0x3C */ char CartridgeId[2];
    /* 0x3E */ char CountryCode;
    /* 0x3F */ char Version;
    /* 0x40 */ char Bootstrap[];
};
extern void EntryPoint(void);

struct struct_internal_header_t ROMHeader = {
	0x80371240,
	0xF,
	0x80100400,
	0x1449,
	0x46039FB4,
	0x0337822C,
	{0, 0},
	"Kirby64             ",
	0,
	"\0\0\0N",
	"K4",
	'E',
	0,
};

