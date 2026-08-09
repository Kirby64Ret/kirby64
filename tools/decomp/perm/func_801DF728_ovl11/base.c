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
    struct {f32 f_odd; f32 f_even;} f;
} __OSfp;
typedef struct
{
              u64 at, v0, v1, a0, a1, a2, a3;
              u64 t0, t1, t2, t3, t4, t5, t6, t7;
              u64 s0, s1, s2, s3, s4, s5, s6, s7;
              u64 t8, t9, gp, sp, s8, ra;
              u64 lo, hi;
              u32 sr, pc, cause, badvaddr, rcp;
              u32 fpcsr;
    __OSfp fp0, fp2, fp4, fp6, fp8, fp10, fp12, fp14;
    __OSfp fp16, fp18, fp20, fp22, fp24, fp26, fp28, fp30;
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
void osCreateThread(OSThread *thread, OSId id, void (*entry)(void *),
    void *arg, void *sp, OSPri pri);
OSId osGetThreadId(OSThread *thread);
OSPri osGetThreadPri(OSThread *thread);
void osSetThreadPri(OSThread *thread, OSPri pri);
void osStartThread(OSThread *thread);
void osStopThread(OSThread *thread);
void osDestroyThread(OSThread *thread);
typedef u32 OSEvent;
typedef void * OSMesg;
typedef struct OSMesgQueue_s {
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
typedef struct {
    u16 type;
    u8 status;
    u8 errno;
}OSContStatus;
typedef struct {
    u16 button;
    s8 stick_x;
    s8 stick_y;
    u8 errno;
} OSContPad;
typedef struct {
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
typedef union {
    OSTask_t t;
    long long int force_structure_alignment;
} OSTask;
typedef u32 OSYieldResult;
void osSpTaskLoad(OSTask *task);
void osSpTaskLoad(OSTask *task);
void osSpTaskStartGo(OSTask *task);
void osSpTaskYield(void);
OSYieldResult osSpTaskYielded(OSTask *task);
extern u64 rspF3DBootStart[], rspF3DBootEnd[];
extern u64 rspF3DStart[], rspF3DEnd[];
extern u64 rspF3DDataStart[], rspF3DDataEnd[];
extern u64 rspAspMainStart[], rspAspMainEnd[];
extern u64 rspAspMainDataStart[], rspAspMainDataEnd[];
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
               void* buffer;
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
typedef struct {
    u32 errStatus;
    void *dramAddr;
    void *C2Addr;
    u32 sectorSize;
    u32 C1ErrNum;
    u32 C1ErrSector[4];
} __OSBlockInfo;
typedef struct {
    u32 cmdType;
    u16 transferMode;
    u16 blockNum;
    s32 sectorNum;
    uintptr_t devAddr;
    u32 bmCtlShadow;
    u32 seqCtlShadow;
    __OSBlockInfo block[2];
} __OSTranxInfo;
typedef struct OSPiHandle_s {
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
typedef struct {
    u8 type;
    uintptr_t address;
} OSPiInfo;
typedef struct {
    u16 type;
    u8 pri;
    u8 status;
    OSMesgQueue *retQueue;
} OSIoMesgHdr;
typedef struct {
             OSIoMesgHdr hdr;
             void *dramAddr;
             uintptr_t devAddr;
             size_t size;
    OSPiHandle *piHandle;
} OSIoMesg;
s32 osPiStartDma(OSIoMesg *mb, s32 priority, s32 direction, uintptr_t devAddr, void *vAddr,
                 size_t nbytes, OSMesgQueue *mq);
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
extern s32 osEPiRawWriteIo(OSPiHandle *, u32 , u32);
extern s32 osEPiRawReadIo(OSPiHandle *, u32 , u32 *);
extern s32 osEPiWriteIo(OSPiHandle *, u32 , u32 );
extern s32 osEPiReadIo(OSPiHandle *, u32 , u32 *);
extern s32 osEPiStartDma(OSPiHandle *, OSIoMesg *, s32);
extern s32 osEPiLinkHandle(OSPiHandle *);
OSThread *__osGetCurrFaultedThread(void);
extern u32 osVirtualToPhysical(void *);
extern void * osPhysicalToVirtual(u32);
extern long long int gspF3DEX2_fifoDataStart[];
extern long long int gspF3DEX2_fifoTextStart[];
extern long long int gspL3DEX2_fifoDataStart[];
extern long long int gspL3DEX2_fifoTextStart[];
typedef struct {
 short ob[3];
 unsigned short flag;
 short tc[2];
 unsigned char cn[4];
} Vtx_t;
typedef struct {
 short ob[3];
 unsigned short flag;
 short tc[2];
 signed char n[3];
 unsigned char a;
} Vtx_tn;
typedef union {
    Vtx_t v;
    Vtx_tn n;
    long long int force_structure_alignment;
} Vtx;
typedef struct {
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
typedef union {
  uSprite_t s;
  long long int force_structure_allignment[3];
} uSprite;
typedef struct {
 unsigned char flag;
 unsigned char v[3];
} Tri;
typedef s32 Mtx_t[4][4];
typedef union {
    Mtx_t m;
    long long int force_structure_alignment;
} Mtx;
typedef struct {
 short vscale[4];
 short vtrans[4];
} Vp_t;
typedef union {
    Vp_t vp;
    long long int force_structure_alignment;
} Vp;
typedef struct {
  unsigned char col[3];
  char pad1;
  unsigned char colc[3];
  char pad2;
  signed char dir[3];
  char pad3;
} Light_t;
typedef struct {
  unsigned char col[3];
  char pad1;
  unsigned char colc[3];
  char pad2;
} Ambient_t;
typedef struct {
  int x1,y1,x2,y2;
} Hilite_t;
typedef union {
    Light_t l;
    long long int force_structure_alignment[2];
} Light;
typedef union {
    Ambient_t l;
    long long int force_structure_alignment[1];
} Ambient;
typedef struct {
    Ambient a;
    Light l[7];
} Lightsn;
typedef struct {
    Ambient a;
    Light l[1];
} Lights0;
typedef struct {
    Ambient a;
    Light l[1];
} Lights1;
typedef struct {
    Ambient a;
    Light l[2];
} Lights2;
typedef struct {
    Ambient a;
    Light l[3];
} Lights3;
typedef struct {
    Ambient a;
    Light l[4];
} Lights4;
typedef struct {
    Ambient a;
    Light l[5];
} Lights5;
typedef struct {
    Ambient a;
    Light l[6];
} Lights6;
typedef struct {
    Ambient a;
    Light l[7];
} Lights7;
typedef struct {
    Light l[2];
} LookAt;
typedef union {
    Hilite_t h;
    long int force_structure_alignment[4];
} Hilite;
void guPerspectiveF(float mf[4][4], u16 *perspNorm, float fovy, float aspect,
                    float near, float far, float scale);
void guPerspective(Mtx *m, u16 *perspNorm, float fovy, float aspect, float near,
                   float far, float scale);
void guOrtho(Mtx *m, float left, float right, float bottom, float top,
             float near, float far, float scale);
void guTranslate(Mtx *m, float x, float y, float z);
void guRotate(Mtx *m, float a, float x, float y, float z);
void guScale(Mtx *m, float x, float y, float z);
void guMtxF2L(float mf[4][4], Mtx *m);
void guMtxIdent(Mtx *m);
void guMtxIdentF(float mf[4][4]);
void guMtxL2F(float mf[4][4], Mtx *m);
void guNormalize(float *, float *, float *);
void guMtxXFMF(float mf[4][4], float x, float y, float z,
                            float *ox, float *oy, float *oz);
void guLookAtReflect (Mtx *m, LookAt *l, float xEye, float yEye, float zEye,
                    float xAt, float yAt, float zAt,
                    float xUp, float yUp, float zUp);
typedef struct {
 int cmd:8;
 unsigned int par:8;
 unsigned int len:16;
 uintptr_t addr;
} Gdma;
typedef struct {
  int cmd:8;
  int pad:24;
  Tri tri;
} Gtri;
typedef struct {
  int cmd:8;
  int pad1:24;
  int pad2:24;
  unsigned char param:8;
} Gpopmtx;
typedef struct {
  int cmd:8;
  int pad0:8;
  int mw_index:8;
  int number:8;
  int pad1:8;
  int base:24;
} Gsegment;
typedef struct {
  int cmd:8;
  int pad0:8;
  int sft:8;
  int len:8;
  unsigned int data:32;
} GsetothermodeL;
typedef struct {
  int cmd:8;
  int pad0:8;
  int sft:8;
  int len:8;
  unsigned int data:32;
} GsetothermodeH;
typedef struct {
  unsigned char cmd;
  unsigned char lodscale;
  unsigned char tile;
  unsigned char on;
  unsigned short s;
  unsigned short t;
} Gtexture;
typedef struct {
  int cmd:8;
  int pad:24;
  Tri line;
} Gline3D;
typedef struct {
  int cmd:8;
  int pad1:24;
  short int pad2;
  short int scale;
} Gperspnorm;
typedef struct {
                int cmd:8;
                unsigned int fmt:3;
                unsigned int siz:2;
                unsigned int pad:7;
                unsigned int wd:12;
                uintptr_t dram;
} Gsetimg;
typedef struct {
  int cmd:8;
  unsigned int muxs0:24;
  unsigned int muxs1:32;
} Gsetcombine;
typedef struct {
  int cmd:8;
  unsigned char pad;
  unsigned char prim_min_level;
  unsigned char prim_level;
  unsigned long color;
} Gsetcolor;
typedef struct {
  int cmd:8;
  int x0:10;
  int x0frac:2;
  int y0:10;
  int y0frac:2;
  unsigned int pad:8;
  int x1:10;
  int x1frac:2;
  int y1:10;
  int y1frac:2;
} Gfillrect;
typedef struct {
  int cmd:8;
  unsigned int fmt:3;
  unsigned int siz:2;
  unsigned int pad0:1;
  unsigned int line:9;
  unsigned int tmem:9;
  unsigned int pad1:5;
  unsigned int tile:3;
  unsigned int palette:4;
  unsigned int ct:1;
  unsigned int mt:1;
  unsigned int maskt:4;
  unsigned int shiftt:4;
  unsigned int cs:1;
  unsigned int ms:1;
  unsigned int masks:4;
  unsigned int shifts:4;
} Gsettile;
typedef struct {
  int cmd:8;
  unsigned int sl:12;
  unsigned int tl:12;
  int pad:5;
  unsigned int tile:3;
  unsigned int sh:12;
  unsigned int th:12;
} Gloadtile;
typedef Gloadtile Gloadblock;
typedef Gloadtile Gsettilesize;
typedef Gloadtile Gloadtlut;
typedef struct {
  unsigned int cmd:8;
  unsigned int xl:12;
  unsigned int yl:12;
  unsigned int pad1:5;
  unsigned int tile:3;
  unsigned int xh:12;
  unsigned int yh:12;
  unsigned int s:16;
  unsigned int t:16;
  unsigned int dsdx:16;
  unsigned int dtdy:16;
} Gtexrect;
typedef struct {
    unsigned long w0;
    unsigned long w1;
    unsigned long w2;
    unsigned long w3;
} TexRect;
typedef struct {
 uintptr_t w0;
 uintptr_t w1;
} Gwords;
typedef union {
 Gwords words;
 long long int force_structure_alignment;
} Gfx;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int gain:16;
    unsigned int addr;
} Aadpcm;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int gain:16;
    unsigned int addr;
} Apolef;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int pad1:16;
    unsigned int addr;
} Aenvelope;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int dmem:16;
    unsigned int pad2:16;
    unsigned int count:16;
} Aclearbuff;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int pad2:16;
    unsigned int inL:16;
    unsigned int inR:16;
} Ainterleave;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:24;
    unsigned int addr;
} Aloadbuff;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int pad1:16;
    unsigned int addr;
} Aenvmixer;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int gain:16;
    unsigned int dmemi:16;
    unsigned int dmemo:16;
} Amixer;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int dmem2:16;
    unsigned int addr;
} Apan;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int pitch:16;
    unsigned int addr;
} Aresample;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int pad1:16;
    unsigned int addr;
} Areverb;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:24;
    unsigned int addr;
} Asavebuff;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:24;
    unsigned int pad2:2;
    unsigned int number:4;
    unsigned int base:24;
} Asegment;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int dmemin:16;
    unsigned int dmemout:16;
    unsigned int count:16;
} Asetbuff;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int vol:16;
    unsigned int voltgt:16;
    unsigned int volrate:16;
} Asetvol;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int dmemin:16;
    unsigned int dmemout:16;
    unsigned int count:16;
} Admemmove;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int count:16;
    unsigned int addr;
} Aloadadpcm;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int pad2:16;
    unsigned int addr;
} Asetloop;
typedef struct {
    uintptr_t w0;
    uintptr_t w1;
} Awords;
typedef union {
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
enum SpTaskState {
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
struct Unk8Byte {
    u32 unk0;
    u32 unk4;
};
typedef f32 Vec3f[3];
typedef f32 Mat4[4][4];
typedef struct {
    s32 x, y, z;
} Vector3Int;
typedef struct Vector3 {
    f32 x;
    f32 y;
    f32 z;
} Vector;
typedef struct {
    f32 x;
    f32 y;
} Vector2;
struct Overlay {
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
struct Entity {
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
struct UnkStruct8015C740 {
    s32 image;
    s32 mode;
    f32 xOffset;
    f32 yOffset;
    u16 primColor[3];
    u16 envColor[3];
    u8 flags;
};
typedef union ColorPack {
    struct {
        u8 r, g, b, a;
    } color;
    u32 pack;
} ColorPack;
struct BankHeader {
               u32 *geoBlockTable;
               u32 *geoROMOffset;
               u32 *imageBlockTable;
               u32 *imageROMOffset;
               u32 *animBlockTable;
               u32 *animROMOffset;
               u32 *miscBlockTable;
               u32 *miscROMOffset;
};
struct GeometryBlockHeader {
             u32 *layout;
             u32 *texScroll;
             int layoutMode;
             u32 *imgRefs;
             u32 *vtxRefs;
             int numAnimations;
             u32 *Animations;
             u32 lenLayout;
};
typedef struct Controller_800D6FE8 {
             u16 buttonHeld;
             u16 buttonPressed;
             u16 buttonHeldLong;
             u16 buttonReleased;
             s8 stickX;
             s8 stickY;
} Controller_800D6FE8;
extern Controller_800D6FE8 gKirbyController;
struct EntryPoint {
 u32 marker;
 Gfx *dl;
};
struct EntryPoint_1C {
    Gfx *dl0;
    Gfx *dl1;
    Gfx *dl2;
    u32 unkC;
    u32 unk10;
    u32 unk14;
};
struct DisplayListPair {
 Gfx *dl1;
 Gfx *dl2;
};
struct Layout {
 u16 flag;
 u16 command;
 struct EntryPoint *entry;
 Vec3f translation;
 Vec3f rotation;
 Vec3f scale;
};
struct GeoBlockHeader {
   void *entriesOrLayoutsOrDL;
   struct TextureScroll ***texScrollHeader;
   u32 renderMode;
   Gfx **imgRefs;
   Gfx **vtxRefs;
   u32 animCount;
   u32 *anims;
   u32 layoutCount;
};
typedef struct TextureScroll {
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
struct UnkStruct8004A7F8 {
               u8 drawFrame;
               Gfx* glists[4];
};
struct unkAddr8004A7C8_2 {
    u8 filler[0x3C];
    f32 x;
    f32 y;
    f32 z;
};
struct unkAddr8004A7C8 {
    u8 filler[0x2C];
    u32 unk2C;
    u32 unk30;
    u32 unk34;
    u32 unk38;
    struct unkAddr8004A7C8_2* data;
};
struct UnkStruct80014264 {
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
typedef struct {
               s32 (*unk0)(Mtx*, void*, Gfx**);
               s32 (*unk4)(Mtx*, void*, Gfx**);
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
struct ObjStack {
    u64 stack[0x20];
};
struct DynamicBuffer {
    u32 id;
    void *poolStart;
    void *poolEnd;
    u8 *top;
};
extern struct DynamicBuffer gDynamicBuffer1, gDynamicBuffer2;
struct SObj {
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
struct GObjThreadStack {
    struct GObjThreadStack *next;
    struct GObjThreadStack *prev;
    u64 stack[8];
};
typedef struct GObjProcess {
    struct GObjProcess *next;
    struct GObjProcess *prev;
    struct GObjProcess *nextPriProc;
    struct GObjProcess *prevPriProc;
               u32 pri;
               u8 kind;
               u8 paused;
               struct GObj *gobj;
    union {
        struct GObjThread *thread;
        void (*callback)(struct GObj *);
    } payload;
               void (*entryPoint)(struct GObj *);
} GObjProcess;
enum MatrixType {
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
    MTX_TYPE_66,
};
typedef struct OMMtx {
    struct OMMtx *next;
               u8 kind;
               u8 unk05;
               Mtx unk08;
} OMMtx;
typedef struct OMPersp {
               struct OMMtx *mtx;
               u16 perspNorm;
               f32 fovy;
               f32 aspect;
               f32 near;
               f32 far;
               f32 scale;
} OMPersp;
typedef struct OMOrtho {
               struct OMMtx *mtx;
               f32 left;
               f32 right;
               f32 bottom;
               f32 top;
               f32 near;
               f32 far;
               f32 scale;
} OMOrtho;
typedef struct OMLookAt {
               struct OMMtx *mtx;
               Vector eye;
               Vector at;
               Vector up;
} OMLookAt;
typedef struct OMLookAtRoll {
               struct OMMtx* mtx;
               f32 xEye;
               f32 yEye;
               f32 zEye;
               f32 xAt;
               f32 yAt;
               f32 zAt;
               f32 roll;
} OMLookAtRoll;
typedef f32 quartic[5];
typedef struct {
               s8 type;
               char unk_01[0x1];
               s16 length;
               f32 invSegTime;
               Vector *pts;
               f32 duration;
               f32 *times;
               quartic *quartics;
} pathSpline;
typedef struct {
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
typedef struct {
               u32 type;
               u32 flags;
               s32 inc;
} uvState;
typedef struct MObj {
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
enum CameraFlags {
    CAMERA_FLAG_1 = 0x01,
    CAMERA_FLAG_2 = 0x02,
    CAMERA_FLAG_4 = 0x04,
    CAMERA_FLAG_8 = 0x08,
    CAMERA_FLAG_10 = 0x10,
    CAMERA_FLAG_20 = 0x20,
    CAMERA_FLAG_40 = 0x40,
    CAMERA_FLAG_80 = 0x80
};
typedef struct Camera {
    struct Camera *nextFree;
    struct GObj *gobj;
               Vp viewport;
               union {
        struct OMPersp persp;
        struct OMOrtho ortho;
    } perspMtx;
               union {
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
    Gfx* start;
    u32 length;
};
struct InterruptMessageType5 {
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
struct InterruptMessageTypeB {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
};
extern OSMesgQueue gInterruptMesgQueue;
struct DObjDynamicStore {
               u8 kinds[3];
               u8 pad;
               u8 data[1];
};
typedef struct {
    OMMtx *mtx;
    Vector v;
} OMMtxFloat3;
typedef struct {
               OMMtx *mtx;
               Vector3Int v;
} OMMtxInt3;
typedef struct {
    OMMtx *mtx;
    float a;
    Vector v;
} OMMtxFloat4;
union Mtx3fi {
    OMMtxFloat3 f;
    OMMtxInt3 i;
};
typedef struct DObjPayloadTypeC {
               s32 dlistID;
               Gfx* dlist;
} DObjPayloadTypeC;
typedef struct DObjPayloadTypeE {
               f32 drawDistance;
               Gfx* dlist;
} DObjPayloadTypeE;
typedef struct DObjPayloadTypeG {
               f32 drawDistance;
               DObjPayloadTypeC* typeC;
} DObjPayloadTypeG;
typedef struct DObj {
               struct DObj* nextFree;
               struct GObj* gobj;
               struct DObj* next;
               struct DObj* prev;
               struct DObj* firstChild;
               struct DObj* parent;
    OMMtxFloat3 pos;
    OMMtxFloat4 angle;
    OMMtxFloat3 scale;
    struct DObjDynamicStore *unk4C;
    union {
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
struct AnimationUnk6C {
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
struct Animation {
  u32 unk0;
  struct {
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
struct unk8000BE90Func {
    u32 unk0;
    u32 unk4;
    struct unk8000BE90Func* unk8;
    u32 unkC;
    struct unk8000BE90Func* unk10;
    struct unk8000BE90Func* unk14;
    u8 filler[0x55 - 0x14 - 0x04];
    s8 unk55;
    u8 filler2[0x6C - 0x55 - 0x01];
    struct AObj* unk6C;
    u8 filler3[0x74 - 0x6C - 0x04];
    f32 unk74;
    f32 unk78;
    u32 unk7C;
    struct unk8000BF3CFunc* unk80;
};
typedef struct AObj {
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
typedef struct {
               struct GObjThread* threads;
               s32 numThreads;
               u32 threadStackSize;
               struct GObjThreadStack* stacks;
               u32 numStacks;
               s32 unk_14;
               GObjProcess* processes;
               s32 numProcesses;
               struct GObj* objects;
               s32 numObjects;
               s32 objectSize;
               OMMtx* matrices;
               s32 numMatrices;
               void* cleanupFn;
               struct AObj* aobjs;
               s32 numAObjs;
               struct MObj* mobjs;
               s32 numMObjs;
               struct DObj* dobjs;
               s32 numDObjs;
               s32 dobjSize;
               struct SObj* sobjs;
               s32 numSObjs;
               s32 sobjSize;
               struct Camera* cameras;
               s32 numCameras;
               s32 cameraSize;
} ObjectSetup;
extern s32 D_8003DE54;
extern struct GObjProcess *omCurrentProc;
extern OSMesgQueue HS64_GObjProcMesgQ;
extern struct GObj *omGObjListHead[32];
extern struct GObj *omGObjListDlHead[];
extern struct UnkStruct8004A7F8 D_8004A7F8[32];
struct Camera *func_80009F7C(struct GObj*);
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
MObj *omDObjAddMObj(struct DObj* dobj, TextureScroll *t);
AObj *omCameraAddAObj(Camera *, u8);
OMMtx* omCameraAddMtx(Camera *cam, u8 kind, u8 arg2);
void func_80009918(MObj *mobj);
struct GObj *func_8000B4D4(s32 link, struct GObj *(*cb)(struct GObj *, u32), void *param, s32 single);
void func_80009DF4(struct DObj *);
struct PositionState {
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
struct ModelNode{
 struct ModelNode *next;
 u8 renderMode;
 u8 pad[3];
};
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
struct UnkStruct8004A7C4_3C_80 {
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
struct UnkStruct8004A7C4_3C_10 {
    u8 pad[0x30];
    Vector unk30;
};
typedef struct UnkStruct8004A7C4_3C {
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
struct UnkStruct8004A7C4_3C_duplicate {
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
enum GObjKinds {
    GOBJ_KIND_NONE = 0,
};
typedef void (*GObjFunc)(struct GObj *);
typedef struct GObj {
               u32 objId;
               struct GObj* next;
               struct GObj* prev;
               u8 link;
               u8 dl_link;
               u8 lastDrawFrame;
    u8 kind;
    u32 pri;
    GObjFunc onUpdate;
    struct GObjProcess *procListHead;
    struct GObjProcess *procListTail;
    struct GObj* nextDL;
    struct GObj* prevDL;
    u32 renderPriority;
    GObjFunc onDraw;
    u32 dlLinkBitMask;
    u32 cameraTag;
    u32 unk38;
               union {
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
extern struct GObj *omCurrentObj, *omCurrentDrawObj;
extern GObj *omCurrentCamera;
extern struct GObj *D_800DE44C;
extern GObj *D_800DE350[];
extern GObj *D_800D799C;
typedef void (*FUNCLIST[])(struct GObj *);
enum KirbySounds {
              SOUND_1UP1 = 1,
              SOUND_1UP1SUB1,
              SOUND_1UP1SUB2,
              SOUND_AIRSHOT1,
              SOUND_ASIOTO1,
              SOUND_ASIOTO1S,
              SOUND_ASIOTODED1,
              SOUND_ASIOTODED1S,
              SOUND_ASIOTOMIZU1,
              SOUND_BGBRAKE1,
              SOUND_BGBRAKE2,
              SOUND_BGBRAKE3,
              SOUND_BGTAORE1,
              SOUND_BOMB1,
              SOUND_BOMBBOMB1,
              SOUND_BOMBBOMB2,
              SOUND_BOMBCUTTER1,
              SOUND_BOMBCUTTER2,
              SOUND_BOMBCUTTER2BG,
              SOUND_BOMBCUTTER3,
              SOUND_BOMBDENGEKI1,
              SOUND_BOMBDENGEKI2,
              SOUND_BOMBFIRE1,
              SOUND_BOMBFIRE2,
              SOUND_BOMBFIRENAGE1,
              SOUND_BOMBICE1,
              SOUND_BOMBICE1SUB,
              SOUND_BOMBICE2,
              SOUND_BOMBICE2SUB,
              SOUND_BOMBNAGE1,
              SOUND_BOMBSTONE1,
              SOUND_BOMBSTONE2,
              SOUND_BOMBSTONE2SUB,
              SOUND_BOMBSTONE3,
              SOUND_BOMBSTONE4,
              SOUND_BOMBTOGE1,
              SOUND_BOMBTOGE2,
              SOUND_BOMBTOGE2SUB,
              SOUND_BOSSDAMAGE1,
              SOUND_BOSSDAMAGE2,
              SOUND_BOSSDEAD1,
              SOUND_BOSSDEAD2,
              SOUND_CANCEL1,
              SOUND_CANCEL2,
              SOUND_CHIME1,
              SOUND_CRYSTAL1,
              SOUND_CUT1,
              SOUND_CUT2,
              SOUND_CUTTER1,
              SOUND_CUTTER2,
              SOUND_CUTTERCUTTER1,
              SOUND_CUTTERCUTTER2,
              SOUND_CUTTERCUTTER3,
              SOUND_CUTTERDENGEKI1,
              SOUND_CUTTERDENGEKI2,
              SOUND_CUTTERDENGEKI3,
              SOUND_CUTTERFIRE1,
              SOUND_CUTTERFIRE2,
              SOUND_CUTTERFIRE3,
              SOUND_CUTTERICE1,
              SOUND_CUTTERICE2,
              SOUND_CUTTERICEJUMP1,
              SOUND_CUTTERSTONE1,
              SOUND_CUTTERSTONE2,
              SOUND_CUTTERSTONE3,
              SOUND_CUTTERTOGE1,
              SOUND_CUTTERTOGE2,
              SOUND_CUTTERTOGE2SUB,
              SOUND_DASHJ,
              SOUND_DEDDAMAGE1,
              SOUND_DEDFURI1,
              SOUND_DEDFURI2,
              SOUND_DEDFURI2V,
              SOUND_DEDFURI3,
              SOUND_DEDNOBORI1,
              SOUND_DEDRAKKA1,
              SOUND_DENGEKI1,
              SOUND_DENGEKIDENKI1,
              SOUND_DENGEKIDENKI2,
              SOUND_DENGEKIDENKI2SUB,
              SOUND_DENGEKIFIRE1,
              SOUND_DENGEKIFIRE2,
              SOUND_DENGEKIICE1,
              SOUND_DENGEKIICE2,
              SOUND_DENGEKIICE3,
              SOUND_DENGEKILP1,
              SOUND_DENGEKISP1,
              SOUND_DENGEKISTONE1,
              SOUND_DENGEKISTONE2,
              SOUND_DENGEKITOGE1,
              SOUND_DENGEKITOGE2,
              SOUND_DENGEKIWIND1,
              SOUND_DOORDEDE1,
              SOUND_DOORL1C,
              SOUND_DOORL1MOV,
              SOUND_DOORM1C,
              SOUND_DOORM1O,
              SOUND_DOORM2C,
              SOUND_DOORM2O,
              SOUND_DOORR11C,
              SOUND_DOORR11O,
              SOUND_DOORR12C,
              SOUND_DOORR12O,
              SOUND_DOORR21C,
              SOUND_DOORR21O,
              SOUND_DOORR23C,
              SOUND_DOORR23O,
              SOUND_DOORR24C,
              SOUND_DOORR24O,
              SOUND_DOORR31C,
              SOUND_DOORR31O,
              SOUND_DOORR31O2,
              SOUND_DOORR32C,
              SOUND_DOORR32O,
              SOUND_DOORR33C,
              SOUND_DOORR33O,
              SOUND_DOORR34C,
              SOUND_DOORR34O,
              SOUND_DOORR41C,
              SOUND_DOORR41O,
              SOUND_DOORR42C1,
              SOUND_DOORR42C2,
              SOUND_DOORR42O,
              SOUND_DOORR51C,
              SOUND_DOORR51O,
              SOUND_DOORR52C,
              SOUND_DOORR52CSUB,
              SOUND_DOORR52O,
              SOUND_DOORR53C,
              SOUND_DOORR53O,
              SOUND_DOORR54C,
              SOUND_DOORR54O,
              SOUND_DOORR61C,
              SOUND_DOORR61O,
              SOUND_DOORR631C,
              SOUND_DOORR631O,
              SOUND_DOORR632C,
              SOUND_DOORR632O,
              SOUND_DOORR633C,
              SOUND_DOORR633O,
              SOUND_DOORR634C,
              SOUND_DOORR634O,
              SOUND_DOORR635C,
              SOUND_DOORR635O,
              SOUND_DOORSUNA1,
              SOUND_ENEBOMB1,
              SOUND_ENECUT1,
              SOUND_ENECUT2,
              SOUND_ENECUT3,
              SOUND_ENECUTTER1,
              SOUND_ENECUTTER1R,
              SOUND_ENEDOMM1,
              SOUND_ENEDOMM2,
              SOUND_ENEDOMM3,
              SOUND_ENEDOMMHAM1,
              SOUND_ENEDOMMPRS1,
              SOUND_ENEHAKIDASI1,
              SOUND_ENEHAKIDASI2,
              SOUND_ENEHANEKAESI1,
              SOUND_ENEICE1,
              SOUND_ENEICE1R,
              SOUND_ENEKAMI1,
              SOUND_ENEKAMI2,
              SOUND_ENEKOROGARI1,
              SOUND_ENESHOT1,
              SOUND_ENESHOT1R,
              SOUND_ENESHOT2,
              SOUND_ENESHOT3,
              SOUND_ENESHOT4,
              SOUND_FIREFIRE1,
              SOUND_FIREICE1,
              SOUND_FIREKAEN1 = 173,
              SOUND_FIREKAENEND,
              SOUND_FIREKBY1,
              SOUND_FIREKBY1S,
              SOUND_FIREKBY2LP,
              SOUND_FIREKBYLPEND,
              SOUND_FIRESHOT1,
              SOUND_FIRESTONE1,
              SOUND_FIRETOGE1,
              SOUND_FIRETOGE2,
              SOUND_FIRETOGE3,
              SOUND_FIREWIND1,
              SOUND_GO1,
              SOUND_HYOI1,
              SOUND_HYOI2,
              SOUND_ICE1,
              SOUND_ICE2,
              SOUND_ICE3,
              SOUND_ICE4,
              SOUND_ICE5KIRA,
              SOUND_ICECUBE1,
              SOUND_ICECUBE2,
              SOUND_ICEICE1,
              SOUND_ICEICE2,
              SOUND_ICEICE3,
              SOUND_ICESTONE1,
              SOUND_ICESTONEHANE1,
              SOUND_ICETOGE1,
              SOUND_ICETOGE1SUB,
              SOUND_ITEM1,
              SOUND_ITEM2,
              SOUND_ITEM2SUB1,
              SOUND_ITEM2SUB2,
              SOUND_ITEM3,
              SOUND_ITEM3SUB1,
              SOUND_ITEM3SUB2,
              SOUND_JERRYIN1,
              SOUND_JERRYOUT1,
              SOUND_KAIFUKU1,
              SOUND_KAWAGET1,
              SOUND_KAWAZONEAPP,
              SOUND_KAWAZONEDIS,
              SOUND_KBYBUTUKARI1,
              SOUND_KBYDAMAGE1,
              SOUND_KBYDAMAGE2,
              SOUND_KBYDAMAGE3,
              SOUND_KBYDAMAGE4,
              SOUND_KBYDAMAGEL1,
              SOUND_KBYDAMAGEL1SUB,
              SOUND_KBYEI1,
              SOUND_KBYEI2,
              SOUND_KBYHABATAKI1,
              SOUND_KBYHAKIDASHI1,
              SOUND_KBYHI1,
              SOUND_KBYHI2,
              SOUND_KBYHI3,
              SOUND_KBYHOOBARI1,
              SOUND_KBYMOTIAGE1,
              SOUND_KBYNAGE1,
              SOUND_KBYNOMIKOMI1,
              SOUND_KBYTOBIKAKARI1,
              SOUND_KBYUNSYO1,
              SOUND_KBYUWATTO1,
              SOUND_KEIKOKU1,
              SOUND_KETTEI,
              SOUND_KETTEI2,
              SOUND_KETTEILW,
              SOUND_KETTEIWL,
              SOUND_KOTE1,
              SOUND_MAPIROTUKI1,
              SOUND_MAPSYUTUGEN1,
              SOUND_MIXDAMA1,
              SOUND_MIXDAMA1SUB,
              SOUND_MYBRAKE1,
              SOUND_MYJUMP1,
              SOUND_MYJUMPDED1,
              SOUND_MYMIZUOTIL,
              SOUND_MYMIZUOTIM,
              SOUND_MYMIZUOTIS,
              SOUND_MYMIZUOTIS2,
              SOUND_MYNOBORI1,
              SOUND_MYNOBORI2,
              SOUND_MYNOBORI3,
              SOUND_MYORI1,
              SOUND_MYORI2,
              SOUND_MYSLIDING1,
              SOUND_MYTUKAMI1,
              SOUND_NOURYOKU1,
              SOUND_NOURYOKU1SUB1,
              SOUND_NOURYOKU1SUB2,
              SOUND_OTOBEAM1,
              SOUND_OTOOTI1,
              SOUND_OTOOTI1SUB,
              SOUND_OTOSEKIKA1,
              SOUND_OYOGI1,
              SOUND_OYOGIWALK1,
              SOUND_PARASOL1,
              SOUND_PARASOLTOGE1,
              SOUND_PARIN1,
              SOUND_RAKKA,
              SOUND_READY1,
              SOUND_ROOMAPP1,
              SOUND_SELECT,
              SOUND_SELECT2,
              SOUND_SELECTJET1,
              SOUND_SELECTJET1SUB,
              SOUND_STARCOUNT1,
              SOUND_STARDASI1,
              SOUND_STARHANSYA1,
              SOUND_STARSHOT1,
              SOUND_STARSHOT2,
              SOUND_STONE1,
              SOUND_STONE2,
              SOUND_STONE3,
              SOUND_STONE4,
              SOUND_STONE5,
              SOUND_STONE6,
              SOUND_STONESTONEB,
              SOUND_STONESTONEC,
              SOUND_STONESTONES,
              SOUND_STONETOGE1,
              SOUND_SUIKOMIDEDE,
              SOUND_SUIKOMIKBY,
              SOUND_SUIKOMIKBY2,
              SOUND_SUIKOMIKBY2_1,
              SOUND_SUIKOMIKBY2_2,
              SOUND_SUIKOMIKBY2_3,
              SOUND_SUIKOMIKBY2_4,
              SOUND_SUIKOMIKBY2_5,
              SOUND_SUIKOMIKBY2_6,
              SOUND_SUIKOMIKBY_1,
              SOUND_SUIKOMIKBY_2,
              SOUND_SUIKOMIKBY_3,
              SOUND_SUIKOMIKBY_4,
              SOUND_SUIKOMIKBY_5,
              SOUND_SUIKOMIKBY_6,
              SOUND_SUNA1,
              SOUND_TAKI1,
              SOUND_TAKI1L,
              SOUND_TAKI1R,
              SOUND_TOGEKIKI1,
              SOUND_TOGESYAKI1,
              SOUND_TOGETOGE1,
              SOUND_TOGETOGE1SUB,
              SOUND_TOGETOGE1SUB2,
              SOUND_TOGETYAKUTI1,
              SOUND_TOGEWIND1,
              SOUND_TRABOAT1,
              SOUND_TRABOATDAMAGE1,
              SOUND_TRABOATTYAKUTI1,
              SOUND_TRAIN1,
              SOUND_TRAINDAMAGE1,
              SOUND_TRAINTYAKUTI1,
              SOUND_TRASORI1,
              SOUND_TRASORIDAMAGE1,
              SOUND_TRASORITYAKUTI1,
              SOUND_TUBURE1,
              SOUND_WAVE1,
              SOUND_WIND1,
              SOUND_WINDWIND1,
              SOUND_WINDWIND2,
              SOUND_YOU1,
              SOUND_YOU2,
              SOUND_YOU3,
              SOUND_YUKAMOVE1,
              SOUND_YUKAMOVEDEC1,
              SOUND_YUKAMOVEDEC2,
              SOUND_YUKAMOVEDEC3,
              SOUND_YUKAMOVEMIZU1,
              SOUND_YUKASTOP1,
              SOUND_ZAKODAMAGE1,
              SOUND_ZAKODEAD1,
              SOUND_ZAKODEAD2,
              SOUND_ZAKODEADIWA1,
              SOUND_ZAKODENGEKI1,
              SOUND_ZAKODENGEKI2,
              SOUND_ZAKODENGEKI3,
              SOUND_ZAKODENGEKI4,
              SOUND_ZAKOFIRE1,
              SOUND_ZAKOFIRE1R,
              SOUND_ZAKOFURI1,
              SOUND_ZAKOHABATAKI1,
              SOUND_ZAKOHABATAKI2R,
              SOUND_ZAKOJUMP1,
              SOUND_ZAKOJUMP1R,
              SOUND_ZAKOJUMP2,
              SOUND_ZAKOJUMP2R,
              SOUND_ZAKOMOPOOR1,
              SOUND_ZAKONAGE1,
              SOUND_ZAKONOKOGI1R,
              SOUND_ZAKOWATER1,
              SOUND_ZAKOWATER2,
              SOUND_ZAKOWATER3,
              SOUND_ZZBOSSDEAD1L,
              SOUND_ZZBOSSDEAD1R,
              SOUND_ZZBOSSDEAD2P,
              SOUND_ZZCUT2SUB,
              SOUND_ZZMYDAMAGEN1,
              SOUND_ZZWAVE1SUB,
              SOUND__B1_BATA,
              SOUND__B1_HARIDAMAGE,
              SOUND__B1_JIMEN,
              SOUND__B1_RINGO,
              SOUND__B1_SI,
              SOUND__B1_SIRATAMA,
              SOUND__B1_TORIBATA,
              SOUND__B1_TORIDASI,
              SOUND__B1_YURE,
              SOUND__B2_HIKARI,
              SOUND__B2_NOBI,
              SOUND__B2_SI,
              SOUND__B2_SIKAKU,
              SOUND__B2_STOP,
              SOUND__B2_TAMA,
              SOUND__B2_UP,
              SOUND__B3_ABARE,
              SOUND__B3_JIMEN,
              SOUND__B3_JISIN,
              SOUND__B3_TUKKOMI,
              SOUND__B3_ZAKODASI,
              SOUND__B4_DAMAGE,
              SOUND__B4_DASH,
              SOUND__B4_FIRE,
              SOUND__B4_HASIRA,
              SOUND__B4_HIK,
              SOUND__B4_HUNKA,
              SOUND__B4_MAGARI,
              SOUND__B4_START,
              SOUND__B4_TAMA,
              SOUND__B4_UP,
              SOUND__B4_ZUTUKI,
              SOUND__B5_BACK,
              SOUND__B5_BEAM,
              SOUND__B5_BON,
              SOUND__B5_BUTUKARI,
              SOUND__B5_DAMAGE,
              SOUND__B5_HASAMI,
              SOUND__B5_HASSYA,
              SOUND__B5_HASSYA2,
              SOUND__B5_HENKEI,
              SOUND__B5_JIMEN,
              SOUND__B5_SI,
              SOUND__B5_START,
              SOUND__B5_TATAKI,
              SOUND__B5_TOBI,
              SOUND__B5_TORIBAKU,
              SOUND__B5_TUBURE,
              SOUND__B5_UDE,
              SOUND__B5_ZENSIN,
              SOUND__B6_AWADASI,
              SOUND__B6_AWAWARE,
              SOUND__B6_DAMAGE,
              SOUND__B6_DENGEKI,
              SOUND__B6_FIREHIKKOMI,
              SOUND__B6_FIRENOBI,
              SOUND__B6_FIRESTART,
              SOUND__B6_GHIKKOMI,
              SOUND__B6_GIZAGIZA,
              SOUND__B6_GNOBI,
              SOUND__B6_GTUKI,
              SOUND__B6_HANSYA,
              SOUND__B6_HENSIN,
              SOUND__B6_IWADASI,
              SOUND__B6_IWAGORO,
              SOUND__B6_IWAJIMEN,
              SOUND__B6_NODAMAGE,
              SOUND__B6_ORANGE,
              SOUND__B6_SI,
              SOUND__B6_YUKI,
              SOUND__B7_BAKUHATU,
              SOUND__B7_BUNRETU,
              SOUND__B7_DAMAGE1,
              SOUND__B7_DAMAGE2,
              SOUND__B7_DAMAGE3,
              SOUND__B7_DAMAGE4,
              SOUND__B7_FREEZE,
              SOUND__B7_HASSYA,
              SOUND__B7_KOWARE2,
              SOUND__B7_KOWARE3,
              SOUND__B7_KOWARE4,
              SOUND__B7_NODAMAGE,
              SOUND__B7_SI,
              SOUND__B7_SIRATAMA,
              SOUND__BADO_BUNBUN,
              SOUND__BADO_DAMAGE,
              SOUND__BADO_DON,
              SOUND__BADO_ICE1,
              SOUND__BADO_ICE2,
              SOUND__BADO_ICEDASI,
              SOUND__BADO_ICEIKI,
              SOUND__BADO_IKE,
              SOUND__BADO_JUMP,
              SOUND__BADO_KAKI,
              SOUND__BADO_SI,
              SOUND__BADO_TUKKOMI,
              SOUND__BADO_ZAKO,
              SOUND__BDEDE_BIYOON,
              SOUND__BDEDE_DON,
              SOUND__BDEDE_GURUGURU,
              SOUND__BDEDE_HAKIDASI,
              SOUND__BDEDE_HAMMER,
              SOUND__BDEDE_HOOBARI,
              SOUND__BDEDE_KAKEIN,
              SOUND__BDEDE_KAMI,
              SOUND__BDEDE_KEMURI,
              SOUND__BDEDE_POWER,
              SOUND__BDEDE_SOUNDSTOP,
              SOUND__BDEDE_TAMADASI,
              SOUND__BLACK_DERU,
              SOUND__BLACK_SARU,
              SOUND__BLACK_TORITUKI,
              SOUND__BLACK_TUKKOMI,
              SOUND__BLACK_UGOKI01,
              SOUND__BOSSDEAD_L,
              SOUND__BOSSDEAD_M,
              SOUND__BOSSDEAD_S,
              SOUND__BUTUKARI,
              SOUND__BWAD_DASH,
              SOUND__BWAD_JIMEN,
              SOUND__BWAD_JUMP,
              SOUND__BWAD_KAKEASI,
              SOUND__BWAD_NAGE,
              SOUND__BWAD_NORIKOMI,
              SOUND__BWAD_NUKI,
              SOUND__BWAD_SI,
              SOUND__BWAD_SLID,
              SOUND__BWAD_SORI,
              SOUND__BWAD_TE,
              SOUND__BWAD_TUBUSI,
              SOUND__CRYSTAL_NAGARE,
              SOUND__CRYSTAL_TAME,
              SOUND__CRYSTAL_TAME2,
              SOUND__CRYSTAL_UP,
              SOUND__GOGO,
              SOUND__HUNKA,
              SOUND__INFO,
              SOUND__PUSH,
              SOUND__UMIWAVE_1,
              SOUND__WADNAGE,
              SOUND__ZISIN_1,
              SOUND__ZISIN_2,
              SOUND__ZISIN_3,
              SOUND__ZUZAZAZA,
              SOUND__ZZADOBUN,
              SOUND__ZZADOBUN2,
              SOUND__ZZBAK_S,
              SOUND__ZZBOSSDEAD,
              SOUND__ZZBOYON,
              SOUND__ZZCRYSTAL_CHIME,
              SOUND__ZZCRYSTAL_CHIME2,
              SOUND__ZZCRYSTAL_CHIME3,
              SOUND__ZZHASAMI,
              SOUND__ZZHUNKA,
              SOUND__ZZHUNKA2,
              SOUND__ZZITABANE,
              SOUND__ZZJISIN,
              SOUND__ZZJISIN2,
              SOUND__ZZJUU,
              SOUND__ZZJUU2,
              SOUND__ZZKAKI,
              SOUND__ZZMISS,
              SOUND__ZZRINGO,
              SOUND__ZZSIPPO,
              SOUND__ZZTAMA,
              SOUND__ZZTAMA2,
              SOUND__ZZTENSI,
              SOUND__ZZTENSIDA,
              SOUND__ZZUMIMIZU,
              SOUND_TRAINDEMO1,
              SOUND_ZAKODROP1,
              SOUND_ZAKODROP2,
              SOUND_ZAKODROP3,
              SOUND_ZAKOMOPOO1,
              SOUND_TOGESASARI1,
              SOUND_YUKAMOVE431,
              SOUND__B5_STOP,
              SOUND_BOMBTOGE3,
              SOUND_CRYSTALRAPP1,
              SOUND_CRYSTALRAPP1SUB,
              SOUND_FIRESTONE2,
              SOUND_STONETOGE2,
              SOUND_STONETOGE3,
              SOUND_ZAKOROBOTMOVE1,
              SOUND_ZAKOROBOTSTOP1,
              SOUND_CUTTER3,
              SOUND_MINIIREKAE1,
              SOUND_MINIKIYURE1,
              SOUND_MINIKIYURE1SUB,
              SOUND_MININO1,
              SOUND_MININO1SUB1,
              SOUND_MININO2,
              SOUND_MININO2SUB1,
              SOUND_MINIRAKKA1,
              SOUND_BGHIBI1,
              SOUND_DOORELEV1R,
              SOUND_DOORELEV1RSUB,
              SOUND_DOORELEV2,
              SOUND_DOORELEVBEL1,
              SOUND__BDEDE_ASI,
              SOUND__BDEDE_IW1,
              SOUND__BDEDE_IW2,
              SOUND__ZZHUNKA3,
              SOUND_CUTTERSTONE22,
              SOUND_CUTTERSTONEFOOT1,
              SOUND_CUTTERSTONENAGO1,
              SOUND_CUTTERSTONENAGO2,
              SOUND_CUTTERSTONENAGO3,
              SOUND_ZAKOMINO1R,
              SOUND_ZAKOHABATAKIN1,
              SOUND_CRYSTALMAPP1,
              SOUND_CRYSTALMAPP1SUB,
              SOUND_YOUGAN1,
              SOUND_DENGEKISTONE2SUB,
              SOUND_KBYDAMAGE4SUB,
              SOUND_HYOI3,
              SOUND_MINIPAUSE1,
              SOUND_MINIPAUSE1SUB,
              SOUND_DOORDED22C,
              SOUND_DOORDED44C,
              SOUND_DOORDED54C,
              SOUND__B5_OPEN,
              SOUND__ZZOPEN,
              SOUND_DOORDED442C,
              SOUND_YOUGAN0,
              SOUND_YOUGAN0SUB,
              SOUND_ZAKOMINO1,
              SOUND_DOORELEV1R2,
              SOUND_BGBRAKE71WAD1,
              SOUND__BDEDE_LAST,
              SOUND_BGBRAKE21WAD1,
              SOUND_DOOR12C,
              SOUND_DOOR54C,
              SOUND__B7_LAST,
              SOUND__B7_MIDORI,
              SOUND__BDEDE_NAGE,
              SOUND__BDEDE_TE,
              SOUND_DEDUWATTO1,
              SOUND_MINIOTI1,
              SOUND_KBYKAIJO1,
              SOUND_MYGATTAI1,
              SOUND_MYGATTAIJU1SUB,
              SOUND_MYGATTAIJUU1,
              SOUND_ASIOTO1D,
              SOUND_ENEDOMM4,
              SOUND_KBYDAMAGE3SUB,
              SOUND_MINIBUZZER1,
              SOUND_SELECT2MINI,
              SOUND_MINISTAR1,
              SOUND_FIREICE1SUB,
              SOUND_TOGEKIKI1SUB,
              SOUND_TOGETOGE1SUBBAK,
              SOUND__UMIWAVE_1SUB,
              SOUND_ITEMCARD1,
              SOUND_ITEMCARD1SUB,
              SOUND_ITEMCARD2,
              SOUND_ITEMCARD2SUB,
              SOUND_KETTEI2LV,
              SOUND_KETTEILWLV,
              SOUND_SELECT2LV,
};
f32 utilVec3Dot(Vector *, Vector *);
extern f32 utilVec3Mag(Vector *);
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
Vector *func_800191F8(Vector *, Vector *, f32);
f32 lbvector_Len(Vector *arg0);
GObj* ohCreateCamera(s32 objId, void (*updateCB)(GObj*), s32 objLink, s32 objPriority,
                     void (*renderCB)(GObj*), s32 dlPriority, s32 dlLinkBitMask, s32 cameraTag, s32 defaultMatrices,
                     u8 procKind, void (*procFunc)(GObj*), s32 procPriority, s32 defaultFlags);
void ohSleep(s32 sleep);
void ohUpdateStub(GObj *g);
GObj *ohCreateCameraWrapper(s32 link, s32 pri, s32 dlPriority, s32 flags, s32 bgColor);
void ohGObjPause(GObj *g);
void ohGObjResume(GObj *g);
void ohDeleteAllObjects(void);
GObj *ohFindById(u32 id);
void play_sound(s32 arg0);
struct Level
{
        u8 world;
        u8 level;
        u8 area;
        u8 warpID;
};
struct Entities {
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
union v {
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
struct vCollisionHeader {
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
struct ColStateUnk4 {
    u16 cell;
    f32 projection;
};
struct CollisionState {
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
struct EntityThing800E9AA0 {
 u8 unk0;
 u8 unk1;
 u8 unk2;
 u8 unk3;
 u32 unk4;
 f32 unk8; f32 unkC; f32 unk10;
 u32 unk14;
 u32 unk18;
 u32 unk1C;
 u32 unk20;
 f32 unk24;
};
extern struct EntityThing800E9AA0 *_D_800E9AA0[];
extern u32 D_800DD710[];
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
extern union {
    u32 as_u32;
    u32 *as_u32p;
} D_800DF690[];
extern u32 *gSegment4StartArray[];
extern struct DObj **D_800DFBD0[];
extern u32 D_800DFBD0_as_u32[];
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
extern f32 D_800E3590[];
extern f32 D_800E3750[];
extern f32 D_800E3910[];
extern f32 D_800E3050[];
extern f32 D_800E3210[];
extern f32 D_800E33D0[];
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
extern s32 D_800E7CE0[];
extern s32 D_800EA520[];
extern s32 D_800EA360[];
extern s32 D_800EA1A0[];
extern union {u32 as_u32; u32 *as_u32p; s32 as_s32; s32 *as_s32p; void *as_ptr;} D_800E9FE0[];
extern s32 D_800E9E20[];
extern s32 D_800E9C60[];
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
extern union {u32 as_u32; u32 *as_u32p; s32 as_s32; s32 *as_s32p; void *as_ptr;} D_800EC2E0[];
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
extern f32 D_800D66FC, D_800D66F8;
extern u32 D_800E8060[];
extern s32 D_800E8920[];
extern s32 D_800E7EA0[];
s32 func_800AEC70(s32 id, s32 minIndex, s32 maxIndex);
struct UnkStruct800B1EC8 {
    struct UnkStruct800B1EC8 *unk0;
    struct UnkStruct800B1EC8 *unk4;
    struct UnkStruct800B1EC8 *unk8;
    struct UnkStruct800B1EC8 *unkC;
    u32 unk10;
    u32 unk14;
    u32 *unk18;
    GObjThread *unk1C;
    void (*unk20)(struct GObj *);
};
typedef struct ovl1_7_gobj_4c {
    u32 unk0[4];
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    struct {f32 x,y;} pos;
    Vector scale;
    u32 unk34;
    u32 unk38;
    u32 unk3C;
    u32 unk40;
    u32 unk44;
    u32 unk48;
    u32 unk4C;
    u32 unk50;
    u32 unk54;
    s16 unk58; s16 unk5A;
    u32 unk5C;
    s16 unk60; s16 unk62;
    u32 unk64;
    u32 unk68;
    u8 unk6C;
    u8 unk6D;
    u8 unk6E;
    s8 unk6F;
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
    u32 unkA0;
    u32 unkA4;
    u32 unkA8;
    u32 unkAC;
    u32 unkB0;
    u32 unkB4;
    s16 unkB8; s16 unkBA;
    u32 unkBC;
    s16 unkC0; s16 unkC2;
    u32 unkC4;
    u32 unkC8;
    u8 unkCC;
    u8 unkCD;
    u8 unkCE;
    s8 unkCF;
} UnkStruct800B158C;
extern void (*gDrawFuncList[])(struct GObj *);
void func_800AFA88(GObj *gobj);
extern s32 func_800B3234(f32, f32, f32);
void func_800B1900(u16 track);
void func_800AFBB4(s32, GObj *);
void func_800AED80(f32 arg0, s32 arg1);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B2340(Vector *vec, struct DObj *node, u32 track);
void func_800B26D8(Vector *vec, struct DObj *node, u32 track);
void func_800B2928(Vector *vec, struct DObj *node, u32 track);
void setProcessMain(GObjProcess *proc, void (*cb)(GObj *));
void assign_new_process_entry(struct GObjProcess *ts, void (*func)(struct GObj *));
s32 func_800A4F48(s32 arg0, Vector *arg1, f32 arg2, f32 arg3);
void procMainStub(GObj *g);
void procMainMove(GObj *g);
void func_800B158C(GObj *);
void func_800B175C(GObj *gobj);
void func_800B1C7C(GObj *gobj);
void curObjSleepForever(void);
void initTrack(s32);
extern s32 D_800EC9E0;
s32 request_job(s32 id, s32 minIndex, s32 maxIndex, void *, void *);
s32 request_track(u8 goal, s32 id, s32 minIndex, s32 maxIndex);
s32 request_track_general(s32 id, s32 minIndex, s32 maxIndex);
s32 request_track_2(s32 id, s32 minIndex, s32 maxIndex);
s32 request_track_3(s32 id, s32 minIndex, s32 maxIndex);
void utilPrintf(char* fmt, ...);
void utilFuncTableJump(u32 idx, u32 max, FUNCLIST callbackTbl);
void utilWrapRotation(Vector *vec);
void utilGetTransformSRT(Vector *vec, DObj *dobj);
void utilTransformPoint(Vector *vec, DObj *dobj, Vector *input);
void utilSetPlayerContPad(void);
void utilSetRectBoundsAndColor(s32 ulx, s32 uly, s32 lrx, s32 lry, u8 red, u8 green, u8 blue);
void utilSetRectColorFullScreen(u16 red, u16 green, u16 blue);
void utilSetRectColor(u16 red, u16 green, u16 blue);
void utilFadeRectLoop(s32 arg0);
void utilDrawRectGfx(GObj *gobj);
void utilSpawnRect(s16 alpha, s16 rate, u8 endKind);
void utilPauseAllGObjs(void);
void utilResumeAllGObjs(void);
void utilLoadOverlay(u32 arg0);
u8 utilTamperCheck(void);
void func_800FBE1C(void);
f32 vec3_abs_angle_diff(Vector *v1, Vector *v2);
f32 func_800F9828(s32, s32);
struct UnkStruct800DE350 {
 u32 unk0;
 u32 unk4;
 u32 unk8;
 u32 unkC;
 u32 unk10[4];
 u32 unk20[4];
 u32 unk30[3];
 u32 unk3C;
 s32 unk40;
 s32 unk44;
    s32 unk48;
 s32 unk4C;
};
extern GObj *D_800DE350[];
struct SubSub800E1B50_Unk88_UnkC_Unk0_Unk1C {
    u8 filler0[8];
    f32 unk8;
};
struct SubSub800E1B50_Unk88_UnkC_Unk0 {
    u8 filler0[0x10];
    f32 unk10;
    s32 unk14;
    s32 unk18;
    struct SubSub800E1B50_Unk88_UnkC_Unk0_Unk1C *unk1C;
};
struct SubSub800E1B50_Unk88_UnkC_Unk4 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    f32 unk10;
};
struct SubSub800E1B50_Unk88_UnkC {
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *unk0;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *unk4;
};
struct Sub800E1B50_Unk88 {
    f32 unk0;
    u32 unk4;
    u32 unk8;
    struct SubSub800E1B50_Unk88_UnkC *unkC;
    u32 unk10;
    s32 *unk14;
    struct Sub800E1B50_Unk94 *unk18;
    u32 unk1C;
    int (*unk20)(struct Sub800E1B50_Unk84 *);
};
struct Sub800E1B50_Unk94 {
    s32 unk0;
    s32 unk4;
    f32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
};
struct Sub800E1B50_80 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    u32 unk1C;
    u8 unk20;
    u8 unk21;
};
struct Sub800E1B50_34_4C {
    u32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
};
struct Sub800E1B50_Unk34 {
    u8 pad[0x4C];
    struct Sub800E1B50_34_4C *unk4C;
};
struct Sub800E1B50_Unk84 {
    u32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
    u32 unk28;
    u32 unk2C;
    u8 fill[0x20];
    u8 unk50;
};
struct Sub800E1B50_Unk98 {
    s8 unk0[7];
    void (*func8)(GObj *);
    void (*funcC)(GObj *);
    void (*func10)(GObj *);
    void (*func14)(GObj *);
    void (*func18)(GObj *);
    void (*func1C)(GObj *);
    void (*func20)(GObj *);
};
typedef struct UnkStruct800E1B50 {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    f32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
    f32 unk28;
    u32 unk2C;
    u32 unk30;
    struct Sub800E1B50_Unk34 *unk34;
    u8 unk38;
    s8 unk39;
    u8 unk3A;
    s8 unk3B;
    u8 unk3C;
    u8 unk3D;
    u8 unk3E;
    u8 unk3F;
    u8 unk40;
    u8 unk41;
    u8 unk42;
    u8 unk43;
    u32 unk44;
    int (*unk48)(struct Sub800E1B50_Unk84*);
    f32 unk4C;
    f32 unk50;
    f32 unk54;
    f32 unk58;
    f32 unk5C;
    f32 unk60;
    u32 unk64;
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;
    struct Sub800E1B50_80 *unk80;
    struct Sub800E1B50_Unk84 *unk84;
    struct Sub800E1B50_Unk88 *unk88;
    s32 *unk8C;
    u32 unk90;
    struct Sub800E1B50_Unk94 *unk94;
    struct Sub800E1B50_Unk98 *unk98;
    void (*unk9C)(GObj *);
} UnkStruct800E1B50;
extern struct UnkStruct800E1B50 *D_800E1B50[];
extern f32 D_801E0C0C_ovl11;
extern f32 D_801E0C18_ovl11;
extern f32 D_801E0C1C_ovl11;
extern f32 D_801E0C20_ovl11;
extern f32 D_801E0C30_ovl11;
extern f32 D_801E0C34_ovl11;
extern f32 D_801E0C40_ovl11;
extern FUNCLIST D_801E0B00_ovl11;
typedef struct Ovl11Color {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
} Ovl11Color;
extern Ovl11Color D_801E0B10_ovl11;
extern Ovl11Color D_801E0B14_ovl11;
extern Ovl11Color D_801E0B18_ovl11;
extern Ovl11Color D_801E0B1C_ovl11;
extern Ovl11Color D_801E0B20_ovl11;
extern FUNCLIST D_801E0B24_ovl11;
extern FUNCLIST D_801E0B38_ovl11;
extern FUNCLIST D_801E0B4C_ovl11;
extern FUNCLIST D_801E0B70_ovl11;
extern FUNCLIST D_801E0B9C_ovl11;
extern FUNCLIST D_801E0BB0_ovl11;
extern FUNCLIST D_801E0BD0_ovl11;
extern FUNCLIST D_801E0BC4_ovl11;
extern f32 D_800D70D8;
extern struct GObjProcess *gEntityGObjProcessArray[];
extern void func_800B113C(struct DObj *, s32, f32);
extern void func_800B1900(u16);
extern void func_800BB468(s32, s32);
extern void func_800BC11C(f32);
extern void func_800BC1FC(s32);
extern void func_800AA018(s32);
extern void func_800AA864(s32, s32);
extern void func_800A9EA4(s32);
extern void func_800AF27C(void);
extern void curObjSleepForever(void);
extern void func_800FF0A8(void *);
extern void func_800FB914(s32);
extern s32 random_soft_s32_range(s32);
extern s32 func_801AE7E0_ovl7(s32);
extern void func_801ACCA0_ovl7(s32, s32, f32, f32);
extern void func_801ACF84_ovl7(struct GObj *);
extern void func_801A03B4_ovl7(void);
extern void func_801A0D74_ovl7(void);
extern void eneTurnCommon(s32);
extern void func_800A9760(s32);
extern void func_800B3520(s32);
extern void func_800FD570(s32, s32, f32, f32, f32);
extern void func_800FF0C4(void *);
extern void func_80198880_ovl7(void *);
extern void func_8019F1EC_ovl7(void);
extern void func_801A0D50_ovl7(void *);
extern void func_801BC794_ovl7(s32);
extern void func_801D0E3C_ovl8(void);
extern u8 D_801D79E8[];
extern struct Sub800E1B50_Unk98 D_801DAF18;
extern u8 D_801D7A2C[];
extern struct Sub800E1B50_Unk98 D_801CB4DC_ovl7;
extern struct Sub800E1B50_Unk98 D_801DAF84;
extern struct Sub800E1B50_Unk98 D_801DAFCC;
extern void func_8019B9B0_ovl7(void);
extern f32 eneGetPlayerHeight(void);
extern void func_800A9864(s32, s32, s32, void *);
extern void func_801D1094_ovl8(s32);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_801A3E80_ovl7(s32);
extern f32 gameTicksPerDraw;
extern s32 func_800F98EC(s32, f32);
extern s32 func_801ACD90_ovl7(s32, s32, Vector *);
extern void func_801D0D44_ovl8(s32);
extern void omGMoveObjDL(struct GObj *, u8, s32);
extern struct UnkStruct8004A7C4_3C *animModelTreeNextNode(struct UnkStruct8004A7C4_3C *);
void func_801DB34C_ovl11(void);
void func_801DB684_ovl11(f32);
void func_801DB8A0_ovl11(struct GObj *);
void func_801DB8E8_ovl11(void);
void func_801DBB4C_ovl11(struct GObj *);
void func_801DBFA4_ovl11(s32, s32, f32);
void func_801DC258_ovl11(struct GObj *);
void func_801DD840_ovl11(s32, s32, f32);
void func_801DB31C_ovl11(struct DObj *, Ovl11Color *);
void func_801DC2A0_ovl11(f32);
void func_801DC45C_ovl11(void);
void func_801DC5B0_ovl11(void);
void func_801DC674_ovl11(void);
void func_801DC7B8_ovl11(void);
void func_801DC83C_ovl11(void);
void func_801DCA48_ovl11(struct GObj *);
void func_801DCE04_ovl11(s32, s32, f32);
void func_801DD1CC_ovl11(struct GObj *);
void func_801DDBA4_ovl11(void);
void func_801DDD80_ovl11(void);
void func_801DDE08_ovl11(void);
void func_801DE038_ovl11(void);
void func_801DE258_ovl11(void);
void func_801DEB78_ovl11(struct GObj *);
void func_801DCD8C_ovl11(void);
void func_801DDEC0_ovl11(struct GObj *);
void func_801DEF9C_ovl11(struct GObj *);
void func_801DFA38_ovl11(void);
void func_801DFD3C_ovl11(void);
void func_801DFEA8_ovl11(void);
void func_801E0168_ovl11(void);
void func_801E0610_ovl11(void);
void func_801E0820_ovl11(void);
void func_801DE9C8_ovl11(s32, s32, f32);
void func_801DEC08_ovl11(s32);
void func_801DEED0_ovl11(void);
void func_801DF0B4_ovl11(struct GObj *);
void func_801DF198_ovl11(s32, s32, f32);
void func_801DF728_ovl11(void);
void func_801DF798_ovl11(void);
void func_801DFA9C_ovl11(void);
s32 func_801E00B8_ovl11(s32);
void func_801E024C_ovl11(void);
void func_801DB1E0_ovl11(struct GObj *this);
void func_801DB2BC_ovl11(struct GObj *this, f32 arg1);
void func_801DB31C_ovl11(struct DObj *arg0, Ovl11Color *arg1);
void func_801DB34C_ovl11(void);
f32 func_801DB5C8_ovl11(void);
void func_801DB7D0_ovl11(void);
void func_801DB8A0_ovl11(struct GObj *arg0);
void func_801DB9E0_ovl11(struct GObj *arg0);
void func_801DBB4C_ovl11(struct GObj *arg0);
void func_801DBCCC_ovl11(struct GObj *arg0);
void func_801DBD58_ovl11(struct GObj *arg0);
void func_801DBDF8_ovl11(struct GObj *arg0);
void func_801DBE64_ovl11(struct GObj *arg0);
void func_801DBEE8_ovl11(struct GObj *arg0);
void func_801DBEF0_ovl11(struct GObj *arg0);
void func_801DBF9C_ovl11(struct GObj *arg0);
void func_801DBFA4_ovl11(s32 arg0, s32 arg1, f32 arg2);
void func_801DC064_ovl11(struct GObj *arg0);
void func_801DC158_ovl11(struct GObj *arg0);
void func_801DC1C4_ovl11(struct GObj *arg0);
void func_801DC250_ovl11(struct GObj *arg0);
void func_801DC258_ovl11(struct GObj *arg0);
void func_801DC5B0_ovl11(void);
void func_801DC7B8_ovl11(void);
void func_801DC83C_ovl11(void);
void func_801DC8F8_ovl11(struct GObj *arg0);
void func_801DCA48_ovl11(struct GObj *arg0);
void func_801DCB04_ovl11(struct GObj *arg0);
void func_801DCBE0_ovl11(struct GObj *arg0);
void func_801DCC4C_ovl11(struct GObj *arg0);
void func_801DCCD0_ovl11(struct GObj *arg0);
void func_801DCCD8_ovl11(struct GObj *arg0);
void func_801DCD84_ovl11(struct GObj *arg0);
void func_801DCD8C_ovl11(void);
void func_801DCE04_ovl11(s32 arg0, s32 arg1, f32 arg2);
void func_801DCE48_ovl11(struct GObj *arg0);
void func_801DD0B4_ovl11(struct GObj *arg0);
void func_801DD160_ovl11(struct GObj *arg0);
void func_801DD490_ovl11(struct GObj *arg0);
void func_801DD730_ovl11(struct GObj *arg0);
void func_801DD7D4_ovl11(struct GObj *arg0);
void func_801DD840_ovl11(s32 arg0, s32 arg1, f32 arg2);
void func_801DD900_ovl11(struct GObj *arg0);
void func_801DD9C8_ovl11(struct GObj *arg0);
void func_801DDB9C_ovl11(struct GObj *arg0);
void func_801DDD80_ovl11(void);
void func_801DDEC0_ovl11(struct GObj *arg0);
void func_801DDF08_ovl11(struct GObj *arg0);
void func_801DE038_ovl11(void);
void func_801DE0F8_ovl11(struct GObj *arg0);
void func_801DE1EC_ovl11(struct GObj *arg0);
void func_801DE258_ovl11(void);
void func_801DE548_ovl11(struct GObj *arg0);
void func_801DE758_ovl11(struct GObj *arg0);
void func_801DE7BC_ovl11(struct GObj *arg0);
void func_801DE9C8_ovl11(s32 arg0, s32 arg1, f32 arg2);
void func_801DEA1C_ovl11(struct GObj *arg0);
void func_801DEAE8_ovl11(struct GObj *arg0);
void func_801DEE50_ovl11(void);
void func_801DEF9C_ovl11(struct GObj *arg0);
void func_801DEFE4_ovl11(struct GObj *arg0);
void func_801DF0B4_ovl11(struct GObj *arg0);
void func_801DF198_ovl11(s32 arg0, s32 arg1, f32 arg2);
void func_801DF204_ovl11(struct GObj *arg0);
void func_801DF318_ovl11(struct GObj *arg0);
void func_801DF384_ovl11(struct GObj *arg0);
void func_801DF4B0_ovl11(struct GObj *arg0);
void func_801DF650_ovl11(struct GObj *arg0);


void func_801DF728_ovl11(void) {
    s32 *temp_v1;
    s32 temp_a1;
    u32 temp_v0;
    temp_v0 = omCurrentObj->objId;
    temp_v1 = &D_800E98E0[temp_v0];
    temp_a1 = *temp_v1;
    if (temp_a1 == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[temp_v0], func_801ACF84_ovl7);
        return;
    }
    *temp_v1 = temp_a1 - 1;
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}


void func_801DFA38_ovl11(void);
void func_801DFA9C_ovl11(void);
void func_801DFACC_ovl11(struct GObj *arg0);
void func_801DFD3C_ovl11(void);
void func_801E0168_ovl11(void);
void func_801E024C_ovl11(void);
void func_801E0820_ovl11(void);
void func_801E098C_ovl11(void);
