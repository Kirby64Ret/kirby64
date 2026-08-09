
float sinf(float);
double sin(double);
float cosf(float);
double cos(double);
float sqrtf(float);
typedef signed char s8;
typedef unsigned char u8;
typedef signed short int s16;
typedef unsigned short int u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long int s64;
typedef unsigned long long int u64;
typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;
typedef float f32;
typedef double f64;
typedef u32 size_t;
typedef s32 ssize_t;
typedef u32 uintptr_t;
typedef s32 intptr_t;
typedef s32 ptrdiff_t;
typedef u32 OSIntMask;
typedef u32 OSHWIntr;
extern OSIntMask osGetIntMask(void);
extern OSIntMask osSetIntMask(OSIntMask);
void osInitialize(void);
u32 osGetCount(void);
uintptr_t osVirtualToPhysical(void *);
extern u32 osDpGetStatus(void);
extern void osDpSetStatus(u32);
extern void osDpGetCounters(u32 *);
extern s32 osDpSetNextBuffer(void *, u64);
typedef s32 OSPri;
typedef s32 OSId;
typedef union 
{
  struct 
  {
    f32 f_odd;
    f32 f_even;
  } f;
} __OSfp;
typedef struct 
{
  u64 at;
  u64 v0;
  u64 v1;
  u64 a0;
  u64 a1;
  u64 a2;
  u64 a3;
  u64 t0;
  u64 t1;
  u64 t2;
  u64 t3;
  u64 t4;
  u64 t5;
  u64 t6;
  u64 t7;
  u64 s0;
  u64 s1;
  u64 s2;
  u64 s3;
  u64 s4;
  u64 s5;
  u64 s6;
  u64 s7;
  u64 t8;
  u64 t9;
  u64 gp;
  u64 sp;
  u64 s8;
  u64 ra;
  u64 lo;
  u64 hi;
  u32 sr;
  u32 pc;
  u32 cause;
  u32 badvaddr;
  u32 rcp;
  u32 fpcsr;
  __OSfp fp0;
  __OSfp fp2;
  __OSfp fp4;
  __OSfp fp6;
  __OSfp fp8;
  __OSfp fp10;
  __OSfp fp12;
  __OSfp fp14;
  __OSfp fp16;
  __OSfp fp18;
  __OSfp fp20;
  __OSfp fp22;
  __OSfp fp24;
  __OSfp fp26;
  __OSfp fp28;
  __OSfp fp30;
} __OSThreadContext;
typedef struct 
{
  u32 flag;
  u32 count;
  u64 time;
} __OSThreadprofile_s;
typedef struct OSThread_s
{
  struct OSThread_s *next;
  OSPri priority;
  struct OSThread_s **queue;
  struct OSThread_s *tlnext;
  u16 state;
  u16 flags;
  OSId id;
  int fp;
  __OSThreadprofile_s *thprof;
  __OSThreadContext context;
} OSThread;
void osCreateThread(OSThread *thread, OSId id, void (*entry)(void *), void *arg, void *sp, OSPri pri);
OSId osGetThreadId(OSThread *thread);
OSPri osGetThreadPri(OSThread *thread);
void osSetThreadPri(OSThread *thread, OSPri pri);
void osStartThread(OSThread *thread);
void osStopThread(OSThread *thread);
void osDestroyThread(OSThread *thread);
typedef u32 OSEvent;
typedef void *OSMesg;
typedef struct OSMesgQueue_s
{
  OSThread *mtqueue;
  OSThread *fullqueue;
  s32 validCount;
  s32 first;
  s32 msgCount;
  OSMesg *msg;
} OSMesgQueue;
extern void osCreateMesgQueue(OSMesgQueue *, OSMesg *, s32);
extern s32 osSendMesg(OSMesgQueue *, OSMesg, s32);
extern s32 osJamMesg(OSMesgQueue *, OSMesg, s32);
extern s32 osRecvMesg(OSMesgQueue *, OSMesg *, s32);
extern void osSetEventMesg(OSEvent, OSMesgQueue *, OSMesg);
typedef struct OSTimer_str
{
  struct OSTimer_str *next;
  struct OSTimer_str *prev;
  u64 interval;
  u64 remaining;
  OSMesgQueue *mq;
  OSMesg *msg;
} OSTimer;
typedef u64 OSTime;
OSTime osGetTime(void);
void osSetTime(OSTime time);
u32 osSetTimer(OSTimer *, OSTime, u64, OSMesgQueue *, OSMesg);
typedef struct 
{
  u16 type;
  u8 status;
  u8 errno;
} OSContStatus;
typedef struct 
{
  u16 button;
  s8 stick_x;
  s8 stick_y;
  u8 errno;
} OSContPad;
typedef struct 
{
  void *address;
  u8 databuffer[32];
  u8 addressCrc;
  u8 dataCrc;
  u8 errno;
} OSContRamIo;
extern s32 osContInit(OSMesgQueue *, u8 *, OSContStatus *);
extern s32 osContReset(OSMesgQueue *, OSContStatus *);
extern s32 osContStartQuery(OSMesgQueue *);
extern s32 osContStartReadData(OSMesgQueue *);
extern s32 osContSetCh(u8);
extern void osContGetQuery(OSContStatus *);
extern void osContGetReadData(OSContPad *);
typedef u32 OSPageMask;
extern void osMapTLB(s32, OSPageMask, void *, u32, u32, s32);
extern void osMapTLBRdb(void);
extern void osUnmapTLB(s32);
extern void osUnmapTLBAll(void);
extern void osSetTLBASID(s32);
typedef struct 
{
  u32 type;
  u32 flags;
  u64 *ucode_boot;
  u32 ucode_boot_size;
  u64 *ucode;
  u32 ucode_size;
  u64 *ucode_data;
  u32 ucode_data_size;
  u64 *dram_stack;
  u32 dram_stack_size;
  u64 *output_buff;
  u64 *output_buff_size;
  u64 *data_ptr;
  u32 data_size;
  u64 *yield_data_ptr;
  u32 yield_data_size;
} OSTask_t;
typedef union 
{
  OSTask_t t;
  long long int force_structure_alignment;
} OSTask;
typedef u32 OSYieldResult;
void osSpTaskLoad(OSTask *task);
void osSpTaskLoad(OSTask *task);
void osSpTaskStartGo(OSTask *task);
void osSpTaskYield(void);
OSYieldResult osSpTaskYielded(OSTask *task);
extern u64 rspF3DBootStart[];
extern u64 rspF3DBootEnd[];
extern u64 rspF3DStart[];
extern u64 rspF3DEnd[];
extern u64 rspF3DDataStart[];
extern u64 rspF3DDataEnd[];
extern u64 rspAspMainStart[];
extern u64 rspAspMainEnd[];
extern u64 rspAspMainDataStart[];
extern u64 rspAspMainDataEnd[];
extern void osInvalDCache(void *, size_t);
extern void osInvalICache(void *, size_t);
extern void osWritebackDCache(void *, size_t);
extern void osWritebackDCacheAll(void);
typedef struct 
{
  u32 ctrl;
  u32 width;
  u32 burst;
  u32 vSync;
  u32 hSync;
  u32 leap;
  u32 hStart;
  u32 xScale;
  u32 vCurrent;
} OSViCommonRegs;
typedef struct 
{
  u32 origin;
  u32 yScale;
  u32 vStart;
  u32 vBurst;
  u32 vIntr;
} OSViFieldRegs;
typedef struct 
{
  u8 type;
  OSViCommonRegs comRegs;
  OSViFieldRegs fldRegs[2];
} OSViMode;
typedef struct 
{
  u16 unk00;
  u16 retraceCount;
  void *buffer;
  OSViMode *unk08;
  u32 features;
  OSMesgQueue *mq;
  OSMesg *msg;
  u32 unk18;
  u32 unk1c;
  u32 unk20;
  f32 unk24;
  u16 unk28;
  u32 unk2c;
} OSViContext;
void osCreateViManager(OSPri pri);
void osViSetMode(OSViMode *mode);
void osViSetEvent(OSMesgQueue *mq, OSMesg msg, u32 retraceCount);
void osViBlack(u8 active);
void osViSetSpecialFeatures(u32 func);
void osViSwapBuffer(void *vaddr);
void osViSetYScale(f32 scale);
extern OSViMode osViModeTable[];
typedef struct 
{
  u32 errStatus;
  void *dramAddr;
  void *C2Addr;
  u32 sectorSize;
  u32 C1ErrNum;
  u32 C1ErrSector[4];
} __OSBlockInfo;
typedef struct 
{
  u32 cmdType;
  u16 transferMode;
  u16 blockNum;
  s32 sectorNum;
  uintptr_t devAddr;
  u32 bmCtlShadow;
  u32 seqCtlShadow;
  __OSBlockInfo block[2];
} __OSTranxInfo;
typedef struct OSPiHandle_s
{
  struct OSPiHandle_s *next;
  u8 type;
  u8 latency;
  u8 pageSize;
  u8 relDuration;
  u8 pulse;
  u8 domain;
  u32 baseAddress;
  u32 speed;
  __OSTranxInfo transferInfo;
} OSPiHandle;
typedef struct 
{
  u8 type;
  uintptr_t address;
} OSPiInfo;
typedef struct 
{
  u16 type;
  u8 pri;
  u8 status;
  OSMesgQueue *retQueue;
} OSIoMesgHdr;
typedef struct 
{
  OSIoMesgHdr hdr;
  void *dramAddr;
  uintptr_t devAddr;
  size_t size;
  OSPiHandle *piHandle;
} OSIoMesg;
s32 osPiStartDma(OSIoMesg *mb, s32 priority, s32 direction, uintptr_t devAddr, void *vAddr, size_t nbytes, OSMesgQueue *mq);
void osCreatePiManager(OSPri pri, OSMesgQueue *cmdQ, OSMesg *cmdBuf, s32 cmdMsgCnt);
OSMesgQueue *osPiGetCmdQueue(void);
s32 osPiWriteIo(uintptr_t devAddr, u32 data);
s32 osPiReadIo(uintptr_t devAddr, u32 *data);
s32 osPiRawStartDma(s32 dir, u32 cart_addr, void *dram_addr, size_t size);
s32 osEPiRawStartDma(OSPiHandle *piHandle, s32 dir, u32 cart_addr, void *dram_addr, size_t size);
extern OSPiHandle *osCartRomInit(void);
extern OSPiHandle *osLeoDiskInit(void);
extern OSPiHandle *osDriveRomInit(void);
extern s32 osEPiDeviceType(OSPiHandle *, OSPiInfo *);
extern s32 osEPiRawWriteIo(OSPiHandle *, u32, u32);
extern s32 osEPiRawReadIo(OSPiHandle *, u32, u32 *);
extern s32 osEPiWriteIo(OSPiHandle *, u32, u32);
extern s32 osEPiReadIo(OSPiHandle *, u32, u32 *);
extern s32 osEPiStartDma(OSPiHandle *, OSIoMesg *, s32);
extern s32 osEPiLinkHandle(OSPiHandle *);
OSThread *__osGetCurrFaultedThread(void);
extern u32 osVirtualToPhysical(void *);
extern void *osPhysicalToVirtual(u32);
extern long long int gspF3DEX2_fifoDataStart[];
extern long long int gspF3DEX2_fifoTextStart[];
extern long long int gspL3DEX2_fifoDataStart[];
extern long long int gspL3DEX2_fifoTextStart[];
typedef struct 
{
  short ob[3];
  unsigned short flag;
  short tc[2];
  unsigned char cn[4];
} Vtx_t;
typedef struct 
{
  short ob[3];
  unsigned short flag;
  short tc[2];
  signed char n[3];
  unsigned char a;
} Vtx_tn;
typedef union 
{
  Vtx_t v;
  Vtx_tn n;
  long long int force_structure_alignment;
} Vtx;
typedef struct 
{
  void *SourceImagePointer;
  void *TlutPointer;
  short Stride;
  short SubImageWidth;
  short SubImageHeight;
  char SourceImageType;
  char SourceImageBitSize;
  short SourceImageOffsetS;
  short SourceImageOffsetT;
  char dummy[4];
} uSprite_t;
typedef union 
{
  uSprite_t s;
  long long int force_structure_allignment[3];
} uSprite;
typedef struct 
{
  unsigned char flag;
  unsigned char v[3];
} Tri;
typedef s32 Mtx_t[4][4];
typedef union 
{
  Mtx_t m;
  long long int force_structure_alignment;
} Mtx;
typedef struct 
{
  short vscale[4];
  short vtrans[4];
} Vp_t;
typedef union 
{
  Vp_t vp;
  long long int force_structure_alignment;
} Vp;
typedef struct 
{
  unsigned char col[3];
  char pad1;
  unsigned char colc[3];
  char pad2;
  signed char dir[3];
  char pad3;
} Light_t;
typedef struct 
{
  unsigned char col[3];
  char pad1;
  unsigned char colc[3];
  char pad2;
} Ambient_t;
typedef struct 
{
  int x1;
  int y1;
  int x2;
  int y2;
} Hilite_t;
typedef union 
{
  Light_t l;
  long long int force_structure_alignment[2];
} Light;
typedef union 
{
  Ambient_t l;
  long long int force_structure_alignment[1];
} Ambient;
typedef struct 
{
  Ambient a;
  Light l[7];
} Lightsn;
typedef struct 
{
  Ambient a;
  Light l[1];
} Lights0;
typedef struct 
{
  Ambient a;
  Light l[1];
} Lights1;
typedef struct 
{
  Ambient a;
  Light l[2];
} Lights2;
typedef struct 
{
  Ambient a;
  Light l[3];
} Lights3;
typedef struct 
{
  Ambient a;
  Light l[4];
} Lights4;
typedef struct 
{
  Ambient a;
  Light l[5];
} Lights5;
typedef struct 
{
  Ambient a;
  Light l[6];
} Lights6;
typedef struct 
{
  Ambient a;
  Light l[7];
} Lights7;
typedef struct 
{
  Light l[2];
} LookAt;
typedef union 
{
  Hilite_t h;
  long int force_structure_alignment[4];
} Hilite;
void guPerspectiveF(float mf[4][4], u16 *perspNorm, float fovy, float aspect, float near, float far, float scale);
void guPerspective(Mtx *m, u16 *perspNorm, float fovy, float aspect, float near, float far, float scale);
void guOrtho(Mtx *m, float left, float right, float bottom, float top, float near, float far, float scale);
void guTranslate(Mtx *m, float x, float y, float z);
void guRotate(Mtx *m, float a, float x, float y, float z);
void guScale(Mtx *m, float x, float y, float z);
void guMtxF2L(float mf[4][4], Mtx *m);
void guMtxIdent(Mtx *m);
void guMtxIdentF(float mf[4][4]);
void guMtxL2F(float mf[4][4], Mtx *m);
void guNormalize(float *, float *, float *);
void guMtxXFMF(float mf[4][4], float x, float y, float z, float *ox, float *oy, float *oz);
void guLookAtReflect(Mtx *m, LookAt *l, float xEye, float yEye, float zEye, float xAt, float yAt, float zAt, float xUp, float yUp, float zUp);
typedef struct 
{
  int cmd : 8;
  unsigned int par : 8;
  unsigned int len : 16;
  uintptr_t addr;
} Gdma;
typedef struct 
{
  int cmd : 8;
  int pad : 24;
  Tri tri;
} Gtri;
typedef struct 
{
  int cmd : 8;
  int pad1 : 24;
  int pad2 : 24;
  unsigned char param : 8;
} Gpopmtx;
typedef struct 
{
  int cmd : 8;
  int pad0 : 8;
  int mw_index : 8;
  int number : 8;
  int pad1 : 8;
  int base : 24;
} Gsegment;
typedef struct 
{
  int cmd : 8;
  int pad0 : 8;
  int sft : 8;
  int len : 8;
  unsigned int data : 32;
} GsetothermodeL;
typedef struct 
{
  int cmd : 8;
  int pad0 : 8;
  int sft : 8;
  int len : 8;
  unsigned int data : 32;
} GsetothermodeH;
typedef struct 
{
  unsigned char cmd;
  unsigned char lodscale;
  unsigned char tile;
  unsigned char on;
  unsigned short s;
  unsigned short t;
} Gtexture;
typedef struct 
{
  int cmd : 8;
  int pad : 24;
  Tri line;
} Gline3D;
typedef struct 
{
  int cmd : 8;
  int pad1 : 24;
  short int pad2;
  short int scale;
} Gperspnorm;
typedef struct 
{
  int cmd : 8;
  unsigned int fmt : 3;
  unsigned int siz : 2;
  unsigned int pad : 7;
  unsigned int wd : 12;
  uintptr_t dram;
} Gsetimg;
typedef struct 
{
  int cmd : 8;
  unsigned int muxs0 : 24;
  unsigned int muxs1 : 32;
} Gsetcombine;
typedef struct 
{
  int cmd : 8;
  unsigned char pad;
  unsigned char prim_min_level;
  unsigned char prim_level;
  unsigned long color;
} Gsetcolor;
typedef struct 
{
  int cmd : 8;
  int x0 : 10;
  int x0frac : 2;
  int y0 : 10;
  int y0frac : 2;
  unsigned int pad : 8;
  int x1 : 10;
  int x1frac : 2;
  int y1 : 10;
  int y1frac : 2;
} Gfillrect;
typedef struct 
{
  int cmd : 8;
  unsigned int fmt : 3;
  unsigned int siz : 2;
  unsigned int pad0 : 1;
  unsigned int line : 9;
  unsigned int tmem : 9;
  unsigned int pad1 : 5;
  unsigned int tile : 3;
  unsigned int palette : 4;
  unsigned int ct : 1;
  unsigned int mt : 1;
  unsigned int maskt : 4;
  unsigned int shiftt : 4;
  unsigned int cs : 1;
  unsigned int ms : 1;
  unsigned int masks : 4;
  unsigned int shifts : 4;
} Gsettile;
typedef struct 
{
  int cmd : 8;
  unsigned int sl : 12;
  unsigned int tl : 12;
  int pad : 5;
  unsigned int tile : 3;
  unsigned int sh : 12;
  unsigned int th : 12;
} Gloadtile;
typedef Gloadtile Gloadblock;
typedef Gloadtile Gsettilesize;
typedef Gloadtile Gloadtlut;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int xl : 12;
  unsigned int yl : 12;
  unsigned int pad1 : 5;
  unsigned int tile : 3;
  unsigned int xh : 12;
  unsigned int yh : 12;
  unsigned int s : 16;
  unsigned int t : 16;
  unsigned int dsdx : 16;
  unsigned int dtdy : 16;
} Gtexrect;
typedef struct 
{
  unsigned long w0;
  unsigned long w1;
  unsigned long w2;
  unsigned long w3;
} TexRect;
typedef struct 
{
  uintptr_t w0;
  uintptr_t w1;
} Gwords;
typedef union 
{
  Gwords words;
  long long int force_structure_alignment;
} Gfx;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int flags : 8;
  unsigned int gain : 16;
  unsigned int addr;
} Aadpcm;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int flags : 8;
  unsigned int gain : 16;
  unsigned int addr;
} Apolef;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int flags : 8;
  unsigned int pad1 : 16;
  unsigned int addr;
} Aenvelope;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int pad1 : 8;
  unsigned int dmem : 16;
  unsigned int pad2 : 16;
  unsigned int count : 16;
} Aclearbuff;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int pad1 : 8;
  unsigned int pad2 : 16;
  unsigned int inL : 16;
  unsigned int inR : 16;
} Ainterleave;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int pad1 : 24;
  unsigned int addr;
} Aloadbuff;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int flags : 8;
  unsigned int pad1 : 16;
  unsigned int addr;
} Aenvmixer;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int flags : 8;
  unsigned int gain : 16;
  unsigned int dmemi : 16;
  unsigned int dmemo : 16;
} Amixer;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int flags : 8;
  unsigned int dmem2 : 16;
  unsigned int addr;
} Apan;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int flags : 8;
  unsigned int pitch : 16;
  unsigned int addr;
} Aresample;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int flags : 8;
  unsigned int pad1 : 16;
  unsigned int addr;
} Areverb;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int pad1 : 24;
  unsigned int addr;
} Asavebuff;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int pad1 : 24;
  unsigned int pad2 : 2;
  unsigned int number : 4;
  unsigned int base : 24;
} Asegment;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int flags : 8;
  unsigned int dmemin : 16;
  unsigned int dmemout : 16;
  unsigned int count : 16;
} Asetbuff;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int flags : 8;
  unsigned int vol : 16;
  unsigned int voltgt : 16;
  unsigned int volrate : 16;
} Asetvol;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int pad1 : 8;
  unsigned int dmemin : 16;
  unsigned int dmemout : 16;
  unsigned int count : 16;
} Admemmove;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int pad1 : 8;
  unsigned int count : 16;
  unsigned int addr;
} Aloadadpcm;
typedef struct 
{
  unsigned int cmd : 8;
  unsigned int pad1 : 8;
  unsigned int pad2 : 16;
  unsigned int addr;
} Asetloop;
typedef struct 
{
  uintptr_t w0;
  uintptr_t w1;
} Awords;
typedef union 
{
  Awords words;
  long long int force_union_align;
} Acmd;
typedef short ADPCM_STATE[16];
typedef short POLEF_STATE[4];
typedef short RESAMPLE_STATE[16];
typedef short ENVMIX_STATE[40];
extern s32 osEepromProbe(OSMesgQueue *);
extern s32 osEepromRead(OSMesgQueue *, u8, u8 *);
extern s32 osEepromWrite(OSMesgQueue *, u8, u8 *);
extern s32 osEepromLongRead(OSMesgQueue *, u8, u8 *, int);
extern s32 osEepromLongWrite(OSMesgQueue *, u8, u8 *, int);
extern void bcopy(const void *, void *, size_t);
extern void bzero(void *, size_t);
extern u32 osAiGetStatus(void);
extern u32 osAiGetLength(void);
extern s32 osAiSetFrequency(u32);
extern s32 osAiSetNextBuffer(void *, u32);
extern u32 osTvType;
extern u32 osRomBase;
extern u32 osResetType;
extern u32 osMemSize;
extern u8 osAppNmiBuffer[64];
enum SpTaskState
{
  SPTASK_STATE_NOT_STARTED,
  SPTASK_STATE_RUNNING,
  SPTASK_STATE_INTERRUPTED,
  SPTASK_STATE_FINISHED,
  SPTASK_STATE_FINISHED_DP
};
struct SPTask
{
  OSTask task;
  OSMesgQueue *msgqueue;
  OSMesg msg;
  enum SpTaskState state;
};
struct VblankHandler
{
  OSMesgQueue *queue;
  OSMesg msg;
};
struct Unk8Byte
{
  u32 unk0;
  u32 unk4;
};
typedef f32 Vec3f[3];
typedef f32 Mat4[4][4];
typedef struct 
{
  s32 x;
  s32 y;
  s32 z;
} Vector3Int;
typedef struct Vector3
{
  f32 x;
  f32 y;
  f32 z;
} Vector;
typedef struct 
{
  f32 x;
  f32 y;
} Vector2;
struct Overlay
{
  void *startAddr;
  void *endAddr;
  void *RAMStart;
  void *textStart;
  void *textEnd;
  void *dataStart;
  void *dataEnd;
  void *bssStart;
  void *bssEnd;
};
struct Entity
{
  u8 nodeNum;
  u8 bankID;
  u8 entityID;
  u8 action;
  u8 respawnFlag;
  u8 unk5;
  s16 saveToEeprom;
  Vec3f pos;
  Vec3f angle;
  Vec3f scale;
};
struct UnkStruct8015C740
{
  s32 image;
  s32 mode;
  f32 xOffset;
  f32 yOffset;
  u16 primColor[3];
  u16 envColor[3];
  u8 flags;
};
typedef union ColorPack
{
  struct 
  {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
  } color;
  u32 pack;
} ColorPack;
struct BankHeader
{
  u32 *geoBlockTable;
  u32 *geoROMOffset;
  u32 *imageBlockTable;
  u32 *imageROMOffset;
  u32 *animBlockTable;
  u32 *animROMOffset;
  u32 *miscBlockTable;
  u32 *miscROMOffset;
};
struct GeometryBlockHeader
{
  u32 *layout;
  u32 *texScroll;
  int layoutMode;
  u32 *imgRefs;
  u32 *vtxRefs;
  int numAnimations;
  u32 *Animations;
  u32 lenLayout;
};
typedef struct Controller_800D6FE8
{
  u16 buttonHeld;
  u16 buttonPressed;
  u16 buttonHeldLong;
  u16 buttonReleased;
  s8 stickX;
  s8 stickY;
} Controller_800D6FE8;
extern Controller_800D6FE8 gKirbyController;
struct EntryPoint
{
  u32 marker;
  Gfx *dl;
};
struct EntryPoint_1C
{
  Gfx *dl0;
  Gfx *dl1;
  Gfx *dl2;
  u32 unkC;
  u32 unk10;
  u32 unk14;
};
struct DisplayListPair
{
  Gfx *dl1;
  Gfx *dl2;
};
struct Layout
{
  u16 flag;
  u16 command;
  struct EntryPoint *entry;
  Vec3f translation;
  Vec3f rotation;
  Vec3f scale;
};
struct GeoBlockHeader
{
  void *entriesOrLayoutsOrDL;
  struct TextureScroll ***texScrollHeader;
  u32 renderMode;
  Gfx **imgRefs;
  Gfx **vtxRefs;
  u32 animCount;
  u32 *anims;
  u32 layoutCount;
};
typedef struct TextureScroll
{
  u16 h_8;
  s8 fmt1;
  s8 siz1;
  u32 *textures;
  u16 stretch;
  u16 sharedOffset;
  u16 t0w;
  u16 t0h;
  s32 halve;
  f32 xFrac0;
  f32 yFrac0;
  f32 xScale;
  f32 yScale;
  f32 field_0x2c;
  f32 field_0x30;
  u32 *palettes;
  u16 flags;
  s8 fmt2;
  s8 siz2;
  u16 w2;
  u16 h2;
  u16 t1w;
  u16 t1h;
  f32 xFrac1;
  f32 yFrac1;
  f32 unk_4C;
  s32 unk_50;
  s32 unk_54;
  ColorPack primColor;
  u8 unk_5C;
  s8 minLOD;
  u8 unk_5E;
  u8 unk_5F;
  ColorPack envColor;
  ColorPack blendColor;
  ColorPack lightColor1;
  ColorPack lightColor2;
  u32 unk70;
  u32 unk74;
  u32 unk78;
  u32 unk7C;
} TextureScroll;
struct Camera;
struct UnkStruct8004A7F8
{
  u8 drawFrame;
  Gfx *glists[4];
};
struct unkAddr8004A7C8_2
{
  u8 filler[0x3C];
  f32 x;
  f32 y;
  f32 z;
};
struct unkAddr8004A7C8
{
  u8 filler[0x2C];
  u32 unk2C;
  u32 unk30;
  u32 unk34;
  u32 unk38;
  struct unkAddr8004A7C8_2 *data;
};
struct UnkStruct80014264
{
  struct UnkStruct80014264 *unk0;
  struct UnkStruct80014264 *unk4;
  struct UnkStruct80014264 *unk8;
  u32 unkC;
  struct UnkStruct80014264 *unk10;
  u32 unk14;
  u32 *unk18;
  u32 unk1C;
  f32 unk20;
  u32 unk24;
  u32 *unk28;
  void (*unk2C)(void);
};
typedef struct 
{
  s32 (*unk0)(Mtx *, void *, Gfx **);
  s32 (*unk4)(Mtx *, void *, Gfx **);
} MatrixHandler;
extern MatrixHandler *renderMatrixHandler;
extern s32 renderCameraScissorTop;
extern s32 renderCameraScissorBottom;
extern s32 renderCameraScissorLeft;
extern s32 renderCameraScissorRight;
extern Mtx *renderProjectionMtx;
extern f32 renderObjectScale;
extern Mat4 renderPerspectiveMtxF;
extern Mat4 renderMVPMatrixF;
extern Mat4 D_8004AB18;
extern Mat4 D_8004AB58;
extern s32 renderLevelOfDetail;
void renderSetCameraScissors(s32 top, s32 bottom, s32 left, s32 right);
void renderSetMatrixHandler(MatrixHandler *handler);
void func_8001663C(Gfx **arg0, struct Camera *arg1, s32 ar2);
struct ObjStack
{
  u64 stack[0x20];
};
struct DynamicBuffer
{
  u32 id;
  void *poolStart;
  void *poolEnd;
  u8 *top;
};
extern struct DynamicBuffer gDynamicBuffer1;
extern struct DynamicBuffer gDynamicBuffer2;
struct SObj
{
  struct SObj *nextFree;
};
struct GObjThread
{
  struct GObjThread *next;
  OSThread thread;
  struct ObjStack *objStack;
  s32 objStackSize;
};
typedef struct GObjThread GObjThread;
struct GObjThreadStack
{
  struct GObjThreadStack *next;
  struct GObjThreadStack *prev;
  u64 stack[8];
};
typedef struct GObjProcess
{
  struct GObjProcess *next;
  struct GObjProcess *prev;
  struct GObjProcess *nextPriProc;
  struct GObjProcess *prevPriProc;
  u32 pri;
  u8 kind;
  u8 paused;
  struct GObj *gobj;
  union 
  {
    struct GObjThread *thread;
    void (*callback)(struct GObj *);
  } payload;
  void (*entryPoint)(struct GObj *);
} GObjProcess;
enum MatrixType
{
  MTX_TYPE_1 = 1,
  MTX_TYPE_2 = 2,
  MTX_TYPE_PERSP_FAST = 3,
  MTX_TYPE_PERSP = 4,
  MTX_TYPE_ORTHO = 5,
  MTX_TYPE_LOOKAT = 6,
  MTX_TYPE_LOOKAT_MVIEW = 7,
  MTX_TYPE_LOOKAT_ROLL = 8,
  MTX_TYPE_LOOKAT_ROLL_MVIEW = 9,
  MTX_TYPE_LOOKAT_ROLL_Z = 10,
  MTX_TYPE_LOOKAT_ROLL_Z_MVIEW = 11,
  MTX_TYPE_LOOKAT_REFLECT = 12,
  MTX_TYPE_LOOKAT_REFLECT_MVIEW = 13,
  MTX_TYPE_LOOKAT_REFLECT_ROLL = 14,
  MTX_TYPE_LOOKAT_REFLECT_ROLL_MVIEW = 15,
  MTX_TYPE_LOOKAT_REFLECT_ROLL_Z = 16,
  MTX_TYPE_LOOKAT_REFLECT_ROLL_Z_MVIEW = 17,
  MTX_TYPE_TRANSLATE = 18,
  MTX_TYPE_ROTATE_DEG = 19,
  MTX_TYPE_ROTATE_DEG_TRANSLATE = 20,
  MTX_TYPE_ROTATE_RPY_DEG = 21,
  MTX_TYPE_ROTATE_RPY_TRANSLATE_DEG = 22,
  MTX_TYPE_ROTATE = 23,
  MTX_TYPE_ROTATE_TRANSLATE = 24,
  MTX_TYPE_ROTATE_TRANSLATE_SCALE = 25,
  MTX_TYPE_ROTATE_RPY = 26,
  MTX_TYPE_ROTATE_RPY_TRANSLATE = 27,
  MTX_TYPE_ROTATE_RPY_TRANSLATE_SCALE = 28,
  MTX_TYPE_ROTATE_PYR = 29,
  MTX_TYPE_ROTATE_PYR_TRANSLATE = 30,
  MTX_TYPE_ROTATE_PYR_TRANSLATE_SCALE = 31,
  MTX_TYPE_SCALE = 32,
  MTX_TYPE_33,
  MTX_TYPE_34,
  MTX_TYPE_35,
  MTX_TYPE_36,
  MTX_TYPE_37,
  MTX_TYPE_38,
  MTX_TYPE_39,
  MTX_TYPE_40,
  MTX_TYPE_41,
  MTX_TYPE_42,
  MTX_TYPE_43,
  MTX_TYPE_44,
  MTX_TYPE_45,
  MTX_TYPE_46,
  MTX_TYPE_47,
  MTX_TYPE_48,
  MTX_TYPE_49,
  MTX_TYPE_50,
  MTX_TYPE_51,
  MTX_TYPE_52,
  MTX_TYPE_53,
  MTX_TYPE_54,
  MTX_TYPE_55,
  MTX_TYPE_56,
  MTX_TYPE_57,
  MTX_TYPE_58,
  MTX_TYPE_59,
  MTX_TYPE_60,
  MTX_TYPE_61,
  MTX_TYPE_62,
  MTX_TYPE_63,
  MTX_TYPE_64,
  MTX_TYPE_65,
  MTX_TYPE_66
};
typedef struct OMMtx
{
  struct OMMtx *next;
  u8 kind;
  u8 unk05;
  Mtx unk08;
} OMMtx;
typedef struct OMPersp
{
  struct OMMtx *mtx;
  u16 perspNorm;
  f32 fovy;
  f32 aspect;
  f32 near;
  f32 far;
  f32 scale;
} OMPersp;
typedef struct OMOrtho
{
  struct OMMtx *mtx;
  f32 left;
  f32 right;
  f32 bottom;
  f32 top;
  f32 near;
  f32 far;
  f32 scale;
} OMOrtho;
typedef struct OMLookAt
{
  struct OMMtx *mtx;
  Vector eye;
  Vector at;
  Vector up;
} OMLookAt;
typedef struct OMLookAtRoll
{
  struct OMMtx *mtx;
  f32 xEye;
  f32 yEye;
  f32 zEye;
  f32 xAt;
  f32 yAt;
  f32 zAt;
  f32 roll;
} OMLookAtRoll;
typedef f32 quartic[5];
typedef struct 
{
  s8 type;
  char unk_01[0x1];
  s16 length;
  f32 invSegTime;
  Vector *pts;
  f32 duration;
  f32 *times;
  quartic *quartics;
} pathSpline;
typedef struct 
{
  struct uvOP *next;
  s8 value;
  s8 op;
  char unk_06[0x2];
  f32 ref;
  f32 t;
  f32 p0;
  f32 p1;
  f32 v0;
  f32 v1;
  struct pathSpline *path;
} uvOP;
typedef struct 
{
  u32 type;
  u32 flags;
  s32 inc;
} uvState;
typedef struct MObj
{
  struct MObj *next;
  s32 unk_04;
  struct TextureScroll texture;
  u16 texIndex1;
  u16 texIndex2;
  f32 primLOD;
  f32 palIndex;
  char unk_8C[0x4];
  struct AObj *aobj;
  union AnimCmd *animList;
  f32 timeRemaining;
  f32 animSpeed;
  f32 timeElapsed;
  char unk_A4[0x4];
} MObj;
enum CameraFlags
{
  CAMERA_FLAG_1 = 0x01,
  CAMERA_FLAG_2 = 0x02,
  CAMERA_FLAG_4 = 0x04,
  CAMERA_FLAG_8 = 0x08,
  CAMERA_FLAG_10 = 0x10,
  CAMERA_FLAG_20 = 0x20,
  CAMERA_FLAG_40 = 0x40,
  CAMERA_FLAG_80 = 0x80
};
typedef struct Camera
{
  struct Camera *nextFree;
  struct GObj *gobj;
  Vp viewport;
  union 
  {
    struct OMPersp persp;
    struct OMOrtho ortho;
  } perspMtx;
  union 
  {
    struct OMLookAt lookAt;
    struct OMLookAtRoll lookAtRoll;
  } viewMtx;
  u32 mtxCount;
  struct OMMtx *matrices[2];
  struct AObj *aobj;
  union AnimCmd *animList;
  f32 timeRemaining;
  f32 animSpeed;
  f32 timeElapsed;
  u32 flags;
  u32 bgcolor;
  void (*onBeforeRender)(struct Camera *, s32);
  u32 unk8C;
} Camera;
struct DLBuffer
{
  Gfx *start;
  u32 length;
};
struct InterruptMessageType5
{
  s32 unk0;
  s32 unk4;
  s32 unk8;
  s32 unkC;
  s32 unk10;
  s32 unk14;
  s32 unk18;
  s32 unk1C;
  s32 unk20;
  s32 unk24;
  s32 unk28;
  s32 unk2C;
};
struct InterruptMessageTypeB
{
  s32 unk0;
  s32 unk4;
  s32 unk8;
  s32 unkC;
  s32 unk10;
  s32 unk14;
  s32 unk18;
};
extern OSMesgQueue gInterruptMesgQueue;
struct DObjDynamicStore
{
  u8 kinds[3];
  u8 pad;
  u8 data[1];
};
typedef struct 
{
  OMMtx *mtx;
  Vector v;
} OMMtxFloat3;
typedef struct 
{
  OMMtx *mtx;
  Vector3Int v;
} OMMtxInt3;
typedef struct 
{
  OMMtx *mtx;
  float a;
  Vector v;
} OMMtxFloat4;
union Mtx3fi
{
  OMMtxFloat3 f;
  OMMtxInt3 i;
};
typedef struct DObjPayloadTypeC
{
  s32 dlistID;
  Gfx *dlist;
} DObjPayloadTypeC;
typedef struct DObjPayloadTypeE
{
  f32 drawDistance;
  Gfx *dlist;
} DObjPayloadTypeE;
typedef struct DObjPayloadTypeG
{
  f32 drawDistance;
  DObjPayloadTypeC *typeC;
} DObjPayloadTypeG;
typedef struct DObj
{
  struct DObj *nextFree;
  struct GObj *gobj;
  struct DObj *next;
  struct DObj *prev;
  struct DObj *firstChild;
  struct DObj *parent;
  OMMtxFloat3 pos;
  OMMtxFloat4 angle;
  OMMtxFloat3 scale;
  struct DObjDynamicStore *unk4C;
  union 
  {
    void *data;
    Gfx *glist;
    DObjPayloadTypeC *typeC;
    DObjPayloadTypeE *typeE;
    Gfx **lod;
    DObjPayloadTypeC **typeH;
  } data;
  u8 flags;
  u8 animCBReceiver;
  u8 numMatrices;
  u8 unk57;
  OMMtx *matrices[5];
  struct AObj *aobj;
  union AnimCmd *animList;
  f32 timeRemaining;
  f32 animSpeed;
  f32 timeElapsed;
  struct MObj *mobjList;
  u32 unk84;
} DObj;
struct AnimationUnk6C
{
  struct AnimationUnk6C *next;
  u8 unk4;
  u8 unk5;
  u8 unk6;
  u8 unk7;
  f32 unk8;
  f32 unkC;
  f32 unk10;
  f32 unk14;
};
struct Animation
{
  u32 unk0;
  struct 
  {
    u8 pad[0x40];
    f32 unk40;
    u32 unk44;
    void (*unk48)(struct Animation *a0, u32 a1, u32 a2);
  } *unk4;
  u32 unk8;
  u32 unkC;
  u32 unk10[4];
  u32 unk20[4];
  u32 unk30[4];
  u32 unk40[4];
  u32 unk50;
  u8 unk54;
  u8 unk55;
  u8 unk56;
  u8 unk57;
  u32 unk58;
  u32 unk5C;
  u32 unk60;
  u32 unk64;
  u32 unk68;
  struct AObj *aobj;
  u32 *command;
  f32 scale;
  u32 unk78;
  f32 unk7C;
  u32 unk80;
  u32 unk84;
  u32 unk88;
  u32 unk8C;
  struct Animation *unk90;
};
struct unk8000BE90Func
{
  u32 unk0;
  u32 unk4;
  struct unk8000BE90Func *unk8;
  u32 unkC;
  struct unk8000BE90Func *unk10;
  struct unk8000BE90Func *unk14;
  u8 filler[(0x55 - 0x14) - 0x04];
  s8 unk55;
  u8 filler2[(0x6C - 0x55) - 0x01];
  struct AObj *unk6C;
  u8 filler3[(0x74 - 0x6C) - 0x04];
  f32 unk74;
  f32 unk78;
  u32 unk7C;
  struct unk8000BF3CFunc *unk80;
};
typedef struct AObj
{
  struct AObj *next;
  u8 paramID;
  u8 kind;
  f32 Rduration;
  f32 timer;
  f32 startVal;
  f32 goalVal;
  f32 speed;
  f32 goalSpeed;
  s32 *unk20;
} AObj;
typedef struct 
{
  struct GObjThread *threads;
  s32 numThreads;
  u32 threadStackSize;
  struct GObjThreadStack *stacks;
  u32 numStacks;
  s32 unk_14;
  GObjProcess *processes;
  s32 numProcesses;
  struct GObj *objects;
  s32 numObjects;
  s32 objectSize;
  OMMtx *matrices;
  s32 numMatrices;
  void *cleanupFn;
  struct AObj *aobjs;
  s32 numAObjs;
  struct MObj *mobjs;
  s32 numMObjs;
  struct DObj *dobjs;
  s32 numDObjs;
  s32 dobjSize;
  struct SObj *sobjs;
  s32 numSObjs;
  s32 sobjSize;
  struct Camera *cameras;
  s32 numCameras;
  s32 cameraSize;
} ObjectSetup;
extern s32 D_8003DE54;
extern struct GObjProcess *omCurrentProc;
extern OSMesgQueue HS64_GObjProcMesgQ;
extern struct GObj *omGObjListHead[32];
extern struct GObj *omGObjListDlHead[];
extern struct UnkStruct8004A7F8 D_8004A7F8[32];
struct Camera *func_80009F7C(struct GObj *);
void func_80009B5C(struct DObj *);
void omLinkGObjDL(struct GObj *gobj, void (*func)(struct GObj *), u8 link, s32 prio, s32 arg4);
struct GObj *HS64_omMakeGObj(s32 id, void (*func)(struct GObj *), u8 link, u32 pri);
void omUpdateAll();
void omGDeleteObj(struct GObj *gobj);
void HS64_omInit(ObjectSetup *);
AObj *func_800098AC(MObj *, u8);
void omEndProcess(GObjProcess *proc);
struct GObjProcess *omCreateProcess(struct GObj *arg0, void *arg1, u8 kind, u32 pri);
struct DObj *omGObjAddDObj(struct GObj *gobj, void *arg1);
struct Camera *omGObjSetCamera(struct GObj *gobj);
void omGLinkObjDLCamera(struct GObj *o, void (*drawCallback)(struct GObj *), s32 pri, s32 linkMask, s32 camTag);
struct AObj *HS64_AObjNew(struct DObj *dobj, u8 paramID);
struct DObj *omDObjAddChild(struct DObj *dobj, void *);
struct DObj *omDObjAddSibling(struct DObj *dobj, struct DObj *sibling);
OMMtx *omDObjAppendMtx(struct DObj *arg0, u8 type, u8 param);
void omDObjResetAnimation(struct DObj *dobj);
MObj *omDObjAddMObj(struct DObj *dobj, TextureScroll *t);
AObj *omCameraAddAObj(Camera *, u8);
OMMtx *omCameraAddMtx(Camera *cam, u8 kind, u8 arg2);
void func_80009918(MObj *mobj);
struct GObj *func_8000B4D4(s32 link, struct GObj *(*cb)(struct GObj *, u32), void *param, s32 single);
void func_80009DF4(struct DObj *);
struct PositionState
{
  u32 unk0;
  f32 kirbyFootPos[3];
  f32 scale[3];
  f32 faceAngle[3];
  f32 kirbyHeadPos[3];
  f32 kirbyGroundPath[2];
  f32 kirbyHeadPath[2];
  f32 kirbyHeight[2];
  u32 collisionFlags;
  u8 byteArray[5];
  u8 unkPad2[3];
  u32 VI_Timer;
};
struct ModelNode
{
  struct ModelNode *next;
  u8 renderMode;
  u8 pad[3];
};
struct struct8011BA10_temp
{
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
extern f32 D_80128EFC;
extern f32 D_80128EF8;
extern f32 D_80128F24;
extern f32 D_80128F20;
extern u32 gGameState;
extern u32 D_8012E818;
extern u32 D_8012E81C;
extern u32 D_8012E820;
extern u32 D_8012E824;
extern s32 D_800D6F10;
extern u16 D_8012E8C2;
extern s16 D_8012E922;
extern u8 D_8012E9B8;
void func_8012310C(s32 currentInhale);
void set_kirby_action_1(s32 actionChange, s32 action);
void set_kirby_action_2(s32 actionChange, u32 action);
void func_801230E8(s32 arg0, s32 arg1, s32 arg2);
extern struct 
{
  s16 unk0;
  s16 unk2;
  s16 unk4;
  s16 unk6;
  s16 unk8;
  s16 unkA;
  u32 unkC;
  u32 unk10;
} D_80198830;
struct UnkStruct8004A7C4_3C_80
{
  struct UnkStruct8004A7C4_3C_80 *unk0;
  u32 unk4;
  struct UnkStruct8004A7C4_3C_80 *unk8;
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
  u8 unk50;
  u8 unk51;
  u8 unk52;
  u8 unk53;
  u32 unk54;
  u8 unk58;
  u8 unk59;
  u8 unk5A;
  u8 unk5B;
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
  f32 unk88;
  u32 unk8C;
  u32 unk90;
  u32 unk94;
  f32 unk98;
  u32 unk9C;
  f32 unkA0;
};
struct UnkStruct8004A7C4_3C_10
{
  u8 pad[0x30];
  Vector unk30;
};
typedef struct UnkStruct8004A7C4_3C
{
  Vector unk0;
  u32 unkC;
  struct UnkStruct8004A7C4_3C_10 *unk10;
  u32 unk14;
  u32 unk18;
  Vector posVec;
  u32 unk28;
  u32 unk2C;
  Vector angleVec;
  f32 unk3C;
  Vector scaleVec;
  u32 unk4C;
  u32 unk50[4];
  u32 unk60[4];
  s32 unk70;
  s32 unk74;
  f32 unk78;
  s32 unk7C;
  struct UnkStruct8004A7C4_3C_80 *unk80;
  u32 unk84;
} GObj_3C;
struct UnkStruct8004A7C4_3C_duplicate
{
  Vector unk0;
  u32 unkC;
  struct UnkStruct8004A7C4_3C_10 *unk10;
  u32 unk14;
  u32 unk18;
  Vector unk1C;
  u32 unk28;
  u32 unk2C;
  Vector unk30;
  Vector unk3C;
  f32 unk40;
  u32 unk4C;
  u32 unk50[4];
  u32 unk60[4];
  u32 unk70[4];
  u32 unk80;
  u32 unk84;
};
enum GObjKinds
{
  GOBJ_KIND_NONE = 0
};
typedef void (*GObjFunc)(struct GObj *);
typedef struct GObj
{
  u32 objId;
  struct GObj *next;
  struct GObj *prev;
  u8 link;
  u8 dl_link;
  u8 lastDrawFrame;
  u8 kind;
  u32 pri;
  GObjFunc onUpdate;
  struct GObjProcess *procListHead;
  struct GObjProcess *procListTail;
  struct GObj *nextDL;
  struct GObj *prevDL;
  u32 renderPriority;
  GObjFunc onDraw;
  u32 dlLinkBitMask;
  u32 cameraTag;
  u32 unk38;
  union 
  {
    struct DObj *dobj;
    struct MObj *mobj;
    struct Camera *cam;
    void *ptr;
  } data;
  f32 animTimer;
  u32 flags;
  void (*onAnimate)(struct DObj *, s32, f32);
  void *unk4C;
} GObj;
extern struct GObj *omCurrentObj;
extern struct GObj *omCurrentDrawObj;
extern GObj *omCurrentCamera;
extern struct GObj *D_800DE44C;
extern GObj *D_800DE350[];
extern GObj *D_800D799C;
typedef void (*FUNCLIST[])(struct GObj *);
struct KirbyState_114
{
  u32 unk0;
  u32 unk4;
  u32 unk8;
  u32 unkC;
  u16 unk10;
  u16 unk12;
};
struct KirbyState_184
{
  f32 unk0;
  f32 unk4;
  f32 unk8;
  f32 unkC;
  f32 unk10;
  f32 unk14;
  f32 unk18;
  f32 unk1C;
  f32 unk20;
};
struct Player
{
  u32 actionChange;
  u8 unk4;
  u8 action;
  u8 previousAction;
  u8 unk7;
  u8 unk8;
  u8 unk9;
  u8 unkA;
  u8 unkB;
  u8 abilityState;
  s8 unkD;
  u8 unkE;
  u8 unkF;
  u32 unk10;
  u8 unk14;
  u8 unk15;
  u8 unk16;
  u8 unk17;
  u8 unk18;
  u8 unk19;
  u8 unk1A;
  u8 unk1B;
  u32 floatTimer;
  s32 turnDirection;
  u32 unk24;
  u32 unk28;
  s32 unk2C;
  u32 unk30;
  u32 isTurning;
  f32 unk38;
  s32 unk3C;
  f32 unk40;
  s32 unk44;
  u32 unk48;
  u32 unk4C;
  u32 unk50;
  u32 unk54;
  u32 unk58;
  u16 unk5C;
  u16 unk5E;
  u32 unk60;
  u16 unk64;
  u16 unk66;
  u16 unk68;
  u16 unk6A;
  u32 unk6C;
  u32 unk70;
  u32 unk74;
  f32 unk78;
  f32 unk7C;
  f32 unk80;
  u32 unk84;
  u16 unk88;
  u16 unk8A;
  u32 unk8C;
  u32 ability;
  u32 currentInhale;
  u32 firstInhale;
  u32 secondInhale;
  u32 abilityInUse;
  u32 unkA4;
  u32 inhaledEntityData;
  u32 isHoldingEntity;
  u8 isInhaling;
  u8 isInhalingBlock;
  s16 numberInhaling;
  s16 numberInhaled;
  u16 unkB6;
  u8 unkB8;
  u8 unkB9;
  u16 unkBA;
  f32 unkBC;
  f32 unkC0;
  f32 unkC4;
  f32 unkC8;
  f32 unkCC;
  u16 jumpHeight;
  u16 isFullJump;
  s16 damageType;
  u16 damageFlashTimer;
  u16 damagePaletteTimer;
  u16 damagePaletteIndex;
  u8 isTakingDamage;
  u8 droppedAbility;
  u16 abilityDropTimer;
  u16 hpAfterDamage;
  u16 unkE2;
  u32 ceilingCollisionNext;
  u32 floorCollisionNext;
  u32 rightCollisionNext;
  u32 leftCollisionNext;
  u32 levelCollisionFlags;
  u32 verticalCollision;
  u32 horizontalCollision;
  u16 ceilingType;
  u16 floorType;
  u16 unk104;
  u16 unk106;
  u16 unk108;
  u16 unk10A;
  u32 unk10C;
  u32 unk110;
  struct KirbyState_114 *unk114;
  u32 unk118;
  u32 unk11C;
  u32 unk120;
  u32 unk124;
  u32 unk128;
  u32 unk12C;
  u32 unk130;
  u32 unk134;
  u32 unk138;
  u32 unk13C;
  u32 unk140;
  f32 unk144;
  f32 unk148;
  f32 unk14C;
  u8 unk150;
  u8 unk151;
  u8 unk152;
  u8 unk153;
  u32 unk154;
  f32 unk158;
  u32 unk15C;
  u16 unk160;
  u16 unk162;
  f32 unk164;
  f32 unk168;
  u32 unk16C;
  u32 unk170;
  f32 forwardVel;
  Vec3f vel;
  struct KirbyState_184 _184;
  u32 unk1A8;
  u32 unk1AC;
  u32 unk1B0;
  u32 unk1B4;
  u32 unk1B8;
  u32 unk1BC;
  u32 unk1C0;
  u32 unk1C4;
  u32 unk1C8;
  f32 xPos;
  f32 yPos;
  f32 zPos;
  u32 unk1D8;
  u32 unk1DC;
  u32 unk1E0;
  u32 unk1E4;
  u32 unk1E8;
  u32 unk1EC;
  u32 unk1F0;
  u32 unk1F4;
  u32 unk1F8;
  u32 unk1FC;
  u32 viTimer;
};
extern struct Player gKirbyState;
struct Level
{
  u8 world;
  u8 level;
  u8 area;
  u8 warpID;
};
struct Entities
{
  u32 unk0;
};
struct Main_Header
{
  struct CollisionHeader *collisionHeader;
  struct NodeHeader *nodeHeader;
  struct Entities *entityIDs;
  int force_structure_alignment;
};
struct CollisionTriangle
{
  u16 vertex[3];
  u16 polyCount;
  u16 normalType;
  u16 collisionIndex;
  u16 breakParticle;
  u16 Halt_Movement;
  u16 collisionParameter;
  u16 collisionType;
};
struct Normal
{
  f32 x;
  f32 y;
  f32 z;
  f32 originOffset;
};
struct NormalGroup
{
  u16 normalIndex;
  u16 leftIndex;
  u16 rightIndex;
  u16 triCellIndex;
};
struct DynGeo_List
{
  u16 Num_Dynamic_Geo_Group_Members;
  u16 Index_To_Dynamic_Geo_Group;
  u16 Unk_Index;
};
struct WaterData
{
  u16 Num_Normals;
  u16 Norm_Array_Index;
  u8 Water_Box_Active;
  u8 Activate_Water_Flow;
  u8 Water_Flow_Direction;
  u8 Water_Flow_Speed;
  f32 Pos1;
  f32 Pos2;
  f32 Pos3;
  f32 Pos4;
};
struct bgmaprecord
{
  u16 index;
  u16 part1;
  u16 part2;
  u16 code;
};
struct CollisionHeader
{
  struct CollisionTriangle *Triangles;
  u32 Len_Triangles;
  union v
  {
    s16 *Vertices;
    f32 *VerticesF;
  } vertices;
  u32 Len_Vertices;
  struct Normal *Triangle_Normals;
  u32 Len_Triangle_Normals;
  u16 *Triangle_Cells;
  u32 Len_Triangle_Cells;
  struct bgmaprecord *Triangle_Norm_Cells;
  u32 Len_Triangle_Norm_Cells;
  u32 Num_Floor_Norms;
  struct DynGeo_List *Destructable_Groups;
  u16 *Destructable_Indices;
  struct WaterData *WaterData;
  u32 Len_WaterData;
  struct Normal *Water_Normals;
  u32 Len_Water_Normals;
};
struct vCollisionHeader
{
  u32 usingFloatVertices;
  struct CollisionHeader header;
};
struct Node_Connectors
{
  u16 Go_Backwards;
  u16 Current_Node;
  u16 Connected_Node;
  u16 Go_Foward;
};
struct PathNodeHeader
{
  struct Kirby_Node *Kirby_Node;
  struct Path_Node_Footer *Path_Node_Footer;
  struct Node_Connectors *Node_Connections;
  u16 Num_Connections;
  u16 Self_Connected;
};
struct NodeHeader
{
  u32 pathNodeCount;
  struct PathNodeHeader (*pathHeader)[];
  u8 (*unkU8Array)[];
  f32 (*unkF32Array)[];
};
struct Path_Node_Footer
{
  u32 FlagUnk;
  u32 Num_Node_Sections;
  Vec3f Position_Matrix;
  f32 Node_Length;
  f32 (*Boundary_Matrix)[];
  f32 (*Unk)[][5];
};
struct Camera_Node
{
  u16 Camera_Type;
  u8 Lock_X_pos;
  u8 Lock_Y_pos;
  u8 Lock_Z_pos;
  u8 unused;
  u8 unk1;
  u8 unk2;
  u8 Follow_X_Angle;
  u8 unk4;
  u8 unk5;
  f32 X_Focus_Pos;
  f32 Y_Focus_Pos;
  f32 Flag;
  f32 Near_Clip_Plane;
  f32 Far_Clip_Plane;
  f32 Cam_Y_Pos[2];
  f32 Cam_X_Pos[2];
  f32 Cam_Z_Pos[2];
  f32 FOV_Pair[2];
  f32 Lateral_Y_Pos[2];
  f32 Unk6;
  f32 Cam_X_Offset_Locked;
  f32 Unk7;
  f32 Cam_Y_Pos_Locked;
  f32 Flag2[2];
  f32 Focus_Y_Above;
  f32 Focus_Y_Below;
  f32 Focus_X_Left;
  f32 Focus_X_Right;
};
struct Kirby_Node
{
  u8 Node_Number;
  u8 Padding;
  u16 unk2;
  struct Level Warps;
  u8 unused;
  u8 Shade_Left;
  u8 Shade_Center;
  u8 Shade_Right;
  u16 unused2;
  u16 Unkflag;
  s16 unused3;
  s16 unused4;
  f32 opt_1;
  f32 opt_2;
  u32 unused5;
  struct Camera_Node Camera;
};
struct ColStateUnk4
{
  u16 cell;
  f32 projection;
};
struct CollisionState
{
  s32 numCells;
  struct ColStateUnk4 *unk4;
  Vector currPos;
  Vector nextPos;
  Vector deltaPos;
  struct Normal *someNormal;
  struct vCollisionHeader *unk30;
  struct Normal *unk34;
  struct Normal *unk38;
  u32 (*unk3C)(void);
  u8 (*unk40)(struct CollisionTriangle *a0, struct Normal *a1, struct Normal *a2, struct Normal *a3);
  u8 (*unk44)(struct Normal *a0, s32 arg1);
  u16 unk48;
  u16 unk4A;
  u16 unk4C;
  u16 unk4E;
};
struct EntityThing800E9AA0
{
  u8 unk0;
  u8 unk1;
  u8 unk2;
  u8 unk3;
  u32 unk4;
  f32 unk8;
  f32 unkC;
  f32 unk10;
  u32 unk14;
  u32 unk18;
  u32 unk1C;
  u32 unk20;
  f32 unk24;
};
extern struct EntityThing800E9AA0 *_D_800E9AA0[];
extern s32 D_800DD710[];
extern s32 D_800DE190[];
extern s32 D_800DDFD0[];
extern s32 D_800DDE10[];
extern s32 gEntityFuncListIDArray[];
extern s32 D_800DD8D0[];
extern s32 gEntityRenderPriorityArray[];
extern f32 D_800E0B90[];
extern f32 D_800E09D0[];
extern s32 D_800E0F10[];
extern s32 D_800E0D50[];
extern f32 **D_800E0490[];
extern s32 *D_800E0650[];
extern s32 D_800E1ED0[];
extern void (*D_800DEDD0[])(struct GObj *);
extern void (*D_800DEF90[])(s32);
extern void (*D_800DF150[])(struct GObj *);
extern void (*D_800DF310[])(s32, s32, f32);
extern u32 D_800DF850[];
extern u32 D_800DF690[];
extern u32 *gSegment4StartArray[];
extern struct DObj **D_800DFBD0[];
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
extern union 
{
  u32 as_u32;
  u32 *as_u32p;
  s32 as_s32;
  s32 *as_s32p;
  f32 as_f32;
  void *as_ptr;
} D_800E9FE0[];
extern s32 D_800E9E20[];
extern s32 D_800E9C60[];
extern union 
{
  u32 as_u32;
  u32 *as_u32p;
  s32 as_s32;
  s32 *as_s32p;
  f32 as_f32;
  void *as_ptr;
} D_800E9AA0[];
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
extern union 
{
  u32 as_u32;
  u32 *as_u32p;
  s32 as_s32;
  s32 *as_s32p;
  f32 as_f32;
  void *as_ptr;
} D_800EC2E0[];
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
extern f32 gameTicksPerDraw;
extern struct Normal D_800E6F50[];
extern f32 D_800D66FC;
extern f32 D_800D66F8;
extern u32 D_800E8060[];
extern s32 D_800E8920[];
extern s32 D_800E7EA0[];
GObj *ohCreateCamera(s32 objId, void (*updateCB)(GObj *), s32 objLink, s32 objPriority, void (*renderCB)(GObj *), s32 dlPriority, s32 dlLinkBitMask, s32 cameraTag, s32 defaultMatrices, u8 procKind, void (*procFunc)(GObj *), s32 procPriority, s32 defaultFlags);
void ohSleep(s32 sleep);
void ohUpdateStub(GObj *g);
GObj *ohCreateCameraWrapper(s32 link, s32 pri, s32 dlPriority, s32 flags, s32 bgColor);
void ohGObjPause(GObj *g);
void ohGObjResume(GObj *g);
void ohDeleteAllObjects(void);
GObj *ohFindById(u32 id);
void play_sound(s32 arg0);
void set_kirby_action_1(s32 actionChange, s32 action);
void set_kirby_action_2(s32 actionChange, u32 action);
struct UnkStruct80128434
{
  Vector unk0;
  u32 unkC;
  Vector unk10;
};
extern struct UnkStruct80128434 D_80128434[];
void func_8011C2A0(void *);
extern s32 D_800BE4F8;
extern f32 D_80196F54_ovl3;
extern f32 D_80196F58_ovl3;
extern f32 D_80196F5C_ovl3;
extern f32 D_80196F60_ovl3;
extern f32 D_80196F64_ovl3;
extern f32 D_80196F68_ovl3;
extern f32 D_80196F6C_ovl3;
extern void func_80153984_ovl3(void);
extern s32 D_800BE4FC;
extern s32 D_800BE500;
extern s32 D_800BE504;
extern s32 D_800BE508;
extern s32 D_800BE52C;
extern s32 D_800BE530;
extern s32 D_800BE534;
extern s32 D_800BE538;
extern s32 D_8012E944;
extern f32 D_80196F70_ovl3;
extern f32 D_80196F74_ovl3;
extern f32 D_80196FB4_ovl3;
extern f32 D_80196FB8_ovl3;
extern f32 D_80196FD8_ovl3;
extern u16 D_800D6FB2;
extern s32 D_80196D48_ovl3[];
extern u32 D_80190358_ovl3[];
extern u32 D_801903E0_ovl3[];
extern u32 D_801926E8_ovl3[];
extern u32 D_80192704_ovl3[];
extern s32 gEntityGObjProcessArray[];
extern void func_8011CF58(void);
extern void func_801217B8(void);
extern void func_80120CCC(f32, f32);
extern void func_800F6C78(void);
extern void func_800FF200(s32);
extern void func_800AA78C(s32, s32, f32);
extern s32 func_800AA888(s32);
extern f32 func_800F951C(s32, f32, s32, f32);
extern void func_80122F08(s32);
extern void func_8011DC5C(void);
extern void func_8011E0E8(void);
extern void func_801230E8(s32, s32, s32);
extern void func_8022785C_ovl19(struct GObj *);
extern void assign_new_process_entry(s32, void (*)(struct GObj *));
extern void func_800AF408(void);
extern void func_800AFBB4(s32, struct GObj *);
extern void func_800FBE1C(void);
extern void func_800FA414(s32);
extern void func_801708A0_ovl3(s32, s32, f32);
extern void func_8022E58C_ovl19(void);
void func_80157C5C_ovl3();
void func_80157F18_ovl3(struct GObj *);
void func_8015814C_ovl3(s32, void (*)(), f32);
void func_80158294_ovl3(void);
void func_801583BC_ovl3(void);
void func_80158410_ovl3(s32);
void func_80157E38_ovl3(s32);
void func_80157C5C_ovl3(s32 arg0);
void func_80157D58_ovl3(s32 arg0);
void func_80157E38_ovl3(s32 arg0);
void func_80157F18_ovl3(struct GObj *arg0);
void func_801580C4_ovl3(struct GObj *arg0, f32 arg1);
void func_8015814C_ovl3(s32 arg0, void (*arg1)(), f32 arg2);
void func_801583BC_ovl3(void);
void func_80158410_ovl3(s32 arg0);
void func_8015849C_ovl3(s32 arg0);
void func_80158508_ovl3(void);
void func_80158528_ovl3(s32 arg0);
void func_80158564_ovl3(s32 arg0);
void func_801585A0_ovl3(s32 arg0);
void func_80158604_ovl3(s32 arg0);
void func_80158668_ovl3(void);
void func_80158688_ovl3(void);
void func_801586A8_ovl3(s32 arg0);
void func_80158744_ovl3(s32 arg0);
void func_801587AC_ovl3(s32 arg0);
void func_8015880C_ovl3(void);
void func_8015882C_ovl3(s32 arg0);
void func_801588D0_ovl3(s32 arg0);
void func_80158924_ovl3(s32 arg0);
void func_80158B10_ovl3(s32 arg0);
void func_80158C40_ovl3(s32 arg0);
void func_80158CA8_ovl3(s32 arg0);
void func_80158DB4_ovl3(s32 arg0);
void func_80159ADC_ovl3(s32 arg0);
void func_80159EA0_ovl3(s32 arg0, s32 arg1, f32 arg2);
void func_8015A31C_ovl3(s32 arg0)
{
  switch (gKirbyState.unk44)
  {
    case 1:
      if ((D_800E5F90[omCurrentObj->objId] == 5) && (D_80196FB4_ovl3 <= D_800E6BD0[omCurrentObj->objId]))
    {
      D_800E6690[omCurrentObj->objId] = 0.0f;
      D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
      gKirbyState.unk44 = 2;
    }
      D_800E6850[omCurrentObj->objId] = D_80196FB8_ovl3;
      break;

    case 2:
      if (gKirbyState.unk30 != 0)
    {
      D_800BE52C = D_800BE500;
      D_800BE530 = D_800BE504;
      D_800BE534 = D_800BE508 + 1;
      D_800BE538 = 0;
      D_800BE4FC = 1;
      D_800BE4F8 = 2;
      gKirbyState.unk30 = 0;
    }
      break;

  }

}

void func_8015A92C_ovl3(s32 arg0);
