nonmatching auLoadAssets, 0x53C

glabel auLoadAssets
    /* 1FEE0 8001F2E0 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 1FEE4 8001F2E4 AFB10024 */  sw         $s1, 0x24($sp)
    /* 1FEE8 8001F2E8 3C118009 */  lui        $s1, %hi(auCurrentSettings)
    /* 1FEEC 8001F2EC 263164A0 */  addiu      $s1, $s1, %lo(auCurrentSettings)
    /* 1FEF0 8001F2F0 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1FEF4 8001F2F4 AFB20028 */  sw         $s2, 0x28($sp)
    /* 1FEF8 8001F2F8 AFB00020 */  sw         $s0, 0x20($sp)
    /* 1FEFC 8001F2FC 8E240000 */  lw         $a0, 0x0($s1)
    /* 1FF00 8001F300 0C00BA2C */  jal        bzero
    /* 1FF04 8001F304 8E250004 */   lw        $a1, 0x4($s1)
    /* 1FF08 8001F308 3C128009 */  lui        $s2, %hi(auHeap)
    /* 1FF0C 8001F30C 26525DC8 */  addiu      $s2, $s2, %lo(auHeap)
    /* 1FF10 8001F310 02402025 */  or         $a0, $s2, $zero
    /* 1FF14 8001F314 8E250000 */  lw         $a1, 0x0($s1)
    /* 1FF18 8001F318 0C0078E8 */  jal        alHeapInit
    /* 1FF1C 8001F31C 8E260004 */   lw        $a2, 0x4($s1)
    /* 1FF20 8001F320 8E220020 */  lw         $v0, 0x20($s1)
    /* 1FF24 8001F324 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 1FF28 8001F328 00002025 */  or         $a0, $zero, $zero
    /* 1FF2C 8001F32C 0041082B */  sltu       $at, $v0, $at
    /* 1FF30 8001F330 14200004 */  bnez       $at, .L8001F344
    /* 1FF34 8001F334 00002825 */   or        $a1, $zero, $zero
    /* 1FF38 8001F338 3C018009 */  lui        $at, %hi(auSeqBank)
    /* 1FF3C 8001F33C 10000013 */  b          .L8001F38C
    /* 1FF40 8001F340 AC226470 */   sw        $v0, %lo(auSeqBank)($at)
  .L8001F344:
    /* 1FF44 8001F344 8E2E0024 */  lw         $t6, 0x24($s1)
    /* 1FF48 8001F348 02403025 */  or         $a2, $s2, $zero
    /* 1FF4C 8001F34C 24070001 */  addiu      $a3, $zero, 0x1
    /* 1FF50 8001F350 01C28023 */  subu       $s0, $t6, $v0
    /* 1FF54 8001F354 0C0078F5 */  jal        alHeapDBAlloc
    /* 1FF58 8001F358 AFB00010 */   sw        $s0, 0x10($sp)
    /* 1FF5C 8001F35C AFA20048 */  sw         $v0, 0x48($sp)
    /* 1FF60 8001F360 8E240020 */  lw         $a0, 0x20($s1)
    /* 1FF64 8001F364 00402825 */  or         $a1, $v0, $zero
    /* 1FF68 8001F368 0C0079C9 */  jal        auRomRead
    /* 1FF6C 8001F36C 02003025 */   or        $a2, $s0, $zero
    /* 1FF70 8001F370 8FB00048 */  lw         $s0, 0x48($sp)
    /* 1FF74 8001F374 8E250028 */  lw         $a1, 0x28($s1)
    /* 1FF78 8001F378 0C007924 */  jal        alBnkfNew
    /* 1FF7C 8001F37C 02002025 */   or        $a0, $s0, $zero
    /* 1FF80 8001F380 8E0F0004 */  lw         $t7, 0x4($s0)
    /* 1FF84 8001F384 3C018009 */  lui        $at, %hi(auSeqBank)
    /* 1FF88 8001F388 AC2F6470 */  sw         $t7, %lo(auSeqBank)($at)
  .L8001F38C:
    /* 1FF8C 8001F38C 8E220014 */  lw         $v0, 0x14($s1)
    /* 1FF90 8001F390 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 1FF94 8001F394 00002025 */  or         $a0, $zero, $zero
    /* 1FF98 8001F398 0041082B */  sltu       $at, $v0, $at
    /* 1FF9C 8001F39C 14200004 */  bnez       $at, .L8001F3B0
    /* 1FFA0 8001F3A0 00002825 */   or        $a1, $zero, $zero
    /* 1FFA4 8001F3A4 3C018009 */  lui        $at, %hi(D_80096468)
    /* 1FFA8 8001F3A8 10000013 */  b          .L8001F3F8
    /* 1FFAC 8001F3AC AC226468 */   sw        $v0, %lo(D_80096468)($at)
  .L8001F3B0:
    /* 1FFB0 8001F3B0 8E380018 */  lw         $t8, 0x18($s1)
    /* 1FFB4 8001F3B4 02403025 */  or         $a2, $s2, $zero
    /* 1FFB8 8001F3B8 24070001 */  addiu      $a3, $zero, 0x1
    /* 1FFBC 8001F3BC 03028023 */  subu       $s0, $t8, $v0
    /* 1FFC0 8001F3C0 0C0078F5 */  jal        alHeapDBAlloc
    /* 1FFC4 8001F3C4 AFB00010 */   sw        $s0, 0x10($sp)
    /* 1FFC8 8001F3C8 AFA20048 */  sw         $v0, 0x48($sp)
    /* 1FFCC 8001F3CC 8E240014 */  lw         $a0, 0x14($s1)
    /* 1FFD0 8001F3D0 00402825 */  or         $a1, $v0, $zero
    /* 1FFD4 8001F3D4 0C0079C9 */  jal        auRomRead
    /* 1FFD8 8001F3D8 02003025 */   or        $a2, $s0, $zero
    /* 1FFDC 8001F3DC 8FB00048 */  lw         $s0, 0x48($sp)
    /* 1FFE0 8001F3E0 8E25001C */  lw         $a1, 0x1C($s1)
    /* 1FFE4 8001F3E4 0C007924 */  jal        alBnkfNew
    /* 1FFE8 8001F3E8 02002025 */   or        $a0, $s0, $zero
    /* 1FFEC 8001F3EC 8E190004 */  lw         $t9, 0x4($s0)
    /* 1FFF0 8001F3F0 3C018009 */  lui        $at, %hi(D_80096468)
    /* 1FFF4 8001F3F4 AC396468 */  sw         $t9, %lo(D_80096468)($at)
  .L8001F3F8:
    /* 1FFF8 8001F3F8 8E22002C */  lw         $v0, 0x2C($s1)
    /* 1FFFC 8001F3FC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 20000 8001F400 3C098009 */  lui        $t1, %hi(auSeqFile)
    /* 20004 8001F404 0041082B */  sltu       $at, $v0, $at
    /* 20008 8001F408 14200003 */  bnez       $at, .L8001F418
    /* 2000C 8001F40C 25296474 */   addiu     $t1, $t1, %lo(auSeqFile)
    /* 20010 8001F410 1000002A */  b          .L8001F4BC
    /* 20014 8001F414 AD220000 */   sw        $v0, 0x0($t1)
  .L8001F418:
    /* 20018 8001F418 240A0004 */  addiu      $t2, $zero, 0x4
    /* 2001C 8001F41C AFAA0010 */  sw         $t2, 0x10($sp)
    /* 20020 8001F420 00002025 */  or         $a0, $zero, $zero
    /* 20024 8001F424 00002825 */  or         $a1, $zero, $zero
    /* 20028 8001F428 02403025 */  or         $a2, $s2, $zero
    /* 2002C 8001F42C 0C0078F5 */  jal        alHeapDBAlloc
    /* 20030 8001F430 24070001 */   addiu     $a3, $zero, 0x1
    /* 20034 8001F434 3C098009 */  lui        $t1, %hi(auSeqFile)
    /* 20038 8001F438 25296474 */  addiu      $t1, $t1, %lo(auSeqFile)
    /* 2003C 8001F43C AD220000 */  sw         $v0, 0x0($t1)
    /* 20040 8001F440 8E24002C */  lw         $a0, 0x2C($s1)
    /* 20044 8001F444 00402825 */  or         $a1, $v0, $zero
    /* 20048 8001F448 0C0079C9 */  jal        auRomRead
    /* 2004C 8001F44C 24060004 */   addiu     $a2, $zero, 0x4
    /* 20050 8001F450 3C098009 */  lui        $t1, %hi(auSeqFile)
    /* 20054 8001F454 25296474 */  addiu      $t1, $t1, %lo(auSeqFile)
    /* 20058 8001F458 8D2B0000 */  lw         $t3, 0x0($t1)
    /* 2005C 8001F45C 00002025 */  or         $a0, $zero, $zero
    /* 20060 8001F460 00002825 */  or         $a1, $zero, $zero
    /* 20064 8001F464 85620002 */  lh         $v0, 0x2($t3)
    /* 20068 8001F468 02403025 */  or         $a2, $s2, $zero
    /* 2006C 8001F46C 24070001 */  addiu      $a3, $zero, 0x1
    /* 20070 8001F470 000210C0 */  sll        $v0, $v0, 3
    /* 20074 8001F474 24420004 */  addiu      $v0, $v0, 0x4
    /* 20078 8001F478 00408025 */  or         $s0, $v0, $zero
    /* 2007C 8001F47C 0C0078F5 */  jal        alHeapDBAlloc
    /* 20080 8001F480 AFA20010 */   sw        $v0, 0x10($sp)
    /* 20084 8001F484 3C098009 */  lui        $t1, %hi(auSeqFile)
    /* 20088 8001F488 25296474 */  addiu      $t1, $t1, %lo(auSeqFile)
    /* 2008C 8001F48C AD220000 */  sw         $v0, 0x0($t1)
    /* 20090 8001F490 8E24002C */  lw         $a0, 0x2C($s1)
    /* 20094 8001F494 00402825 */  or         $a1, $v0, $zero
    /* 20098 8001F498 0C0079C9 */  jal        auRomRead
    /* 2009C 8001F49C 02003025 */   or        $a2, $s0, $zero
    /* 200A0 8001F4A0 3C098009 */  lui        $t1, %hi(auSeqFile)
    /* 200A4 8001F4A4 25296474 */  addiu      $t1, $t1, %lo(auSeqFile)
    /* 200A8 8001F4A8 8D240000 */  lw         $a0, 0x0($t1)
    /* 200AC 8001F4AC 0C007914 */  jal        alSeqFileNew
    /* 200B0 8001F4B0 8E25002C */   lw        $a1, 0x2C($s1)
    /* 200B4 8001F4B4 3C098009 */  lui        $t1, %hi(auSeqFile)
    /* 200B8 8001F4B8 25296474 */  addiu      $t1, $t1, %lo(auSeqFile)
  .L8001F4BC:
    /* 200BC 8001F4BC 8D240000 */  lw         $a0, 0x0($t1)
    /* 200C0 8001F4C0 00004025 */  or         $t0, $zero, $zero
    /* 200C4 8001F4C4 00008025 */  or         $s0, $zero, $zero
    /* 200C8 8001F4C8 848C0002 */  lh         $t4, 0x2($a0)
    /* 200CC 8001F4CC 19800013 */  blez       $t4, .L8001F51C
    /* 200D0 8001F4D0 00002825 */   or        $a1, $zero, $zero
    /* 200D4 8001F4D4 00801025 */  or         $v0, $a0, $zero
  .L8001F4D8:
    /* 200D8 8001F4D8 8C430008 */  lw         $v1, 0x8($v0)
    /* 200DC 8001F4DC 306D0001 */  andi       $t5, $v1, 0x1
    /* 200E0 8001F4E0 006D7021 */  addu       $t6, $v1, $t5
    /* 200E4 8001F4E4 AC4E0008 */  sw         $t6, 0x8($v0)
    /* 200E8 8001F4E8 8D240000 */  lw         $a0, 0x0($t1)
    /* 200EC 8001F4EC 00851021 */  addu       $v0, $a0, $a1
    /* 200F0 8001F4F0 8C430008 */  lw         $v1, 0x8($v0)
    /* 200F4 8001F4F4 0203082A */  slt        $at, $s0, $v1
    /* 200F8 8001F4F8 50200003 */  beql       $at, $zero, .L8001F508
    /* 200FC 8001F4FC 848F0002 */   lh        $t7, 0x2($a0)
    /* 20100 8001F500 00608025 */  or         $s0, $v1, $zero
    /* 20104 8001F504 848F0002 */  lh         $t7, 0x2($a0)
  .L8001F508:
    /* 20108 8001F508 25080001 */  addiu      $t0, $t0, 0x1
    /* 2010C 8001F50C 24A50008 */  addiu      $a1, $a1, 0x8
    /* 20110 8001F510 010F082A */  slt        $at, $t0, $t7
    /* 20114 8001F514 1420FFF0 */  bnez       $at, .L8001F4D8
    /* 20118 8001F518 24420008 */   addiu     $v0, $v0, 0x8
  .L8001F51C:
    /* 2011C 8001F51C 3C038009 */  lui        $v1, %hi(auBGMSeqData)
    /* 20120 8001F520 24636484 */  addiu      $v1, $v1, %lo(auBGMSeqData)
  .L8001F524:
    /* 20124 8001F524 00002025 */  or         $a0, $zero, $zero
    /* 20128 8001F528 00002825 */  or         $a1, $zero, $zero
    /* 2012C 8001F52C 02403025 */  or         $a2, $s2, $zero
    /* 20130 8001F530 24070001 */  addiu      $a3, $zero, 0x1
    /* 20134 8001F534 AFB00010 */  sw         $s0, 0x10($sp)
    /* 20138 8001F538 0C0078F5 */  jal        alHeapDBAlloc
    /* 2013C 8001F53C AFA30030 */   sw        $v1, 0x30($sp)
    /* 20140 8001F540 8FA30030 */  lw         $v1, 0x30($sp)
    /* 20144 8001F544 3C188009 */  lui        $t8, %hi(auBGMPlayerStatus)
    /* 20148 8001F548 27186488 */  addiu      $t8, $t8, %lo(auBGMPlayerStatus)
    /* 2014C 8001F54C 24630004 */  addiu      $v1, $v1, 0x4
    /* 20150 8001F550 0078082B */  sltu       $at, $v1, $t8
    /* 20154 8001F554 1420FFF3 */  bnez       $at, .L8001F524
    /* 20158 8001F558 AC62FFFC */   sw        $v0, -0x4($v1)
    /* 2015C 8001F55C 34198000 */  ori        $t9, $zero, 0x8000
    /* 20160 8001F560 AFB90010 */  sw         $t9, 0x10($sp)
    /* 20164 8001F564 00002025 */  or         $a0, $zero, $zero
    /* 20168 8001F568 00002825 */  or         $a1, $zero, $zero
    /* 2016C 8001F56C 02403025 */  or         $a2, $s2, $zero
    /* 20170 8001F570 0C0078F5 */  jal        alHeapDBAlloc
    /* 20174 8001F574 24070001 */   addiu     $a3, $zero, 0x1
    /* 20178 8001F578 3C108009 */  lui        $s0, %hi(auCmdListBuffers)
    /* 2017C 8001F57C 26106450 */  addiu      $s0, $s0, %lo(auCmdListBuffers)
    /* 20180 8001F580 340A8000 */  ori        $t2, $zero, 0x8000
    /* 20184 8001F584 AE020000 */  sw         $v0, 0x0($s0)
    /* 20188 8001F588 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 2018C 8001F58C 00002025 */  or         $a0, $zero, $zero
    /* 20190 8001F590 00002825 */  or         $a1, $zero, $zero
    /* 20194 8001F594 02403025 */  or         $a2, $s2, $zero
    /* 20198 8001F598 0C0078F5 */  jal        alHeapDBAlloc
    /* 2019C 8001F59C 24070001 */   addiu     $a3, $zero, 0x1
    /* 201A0 8001F5A0 240B0068 */  addiu      $t3, $zero, 0x68
    /* 201A4 8001F5A4 AE020004 */  sw         $v0, 0x4($s0)
    /* 201A8 8001F5A8 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 201AC 8001F5AC 00002025 */  or         $a0, $zero, $zero
    /* 201B0 8001F5B0 00002825 */  or         $a1, $zero, $zero
    /* 201B4 8001F5B4 02403025 */  or         $a2, $s2, $zero
    /* 201B8 8001F5B8 0C0078F5 */  jal        alHeapDBAlloc
    /* 201BC 8001F5BC 24070001 */   addiu     $a3, $zero, 0x1
    /* 201C0 8001F5C0 3C108009 */  lui        $s0, %hi(auScTasks)
    /* 201C4 8001F5C4 26106460 */  addiu      $s0, $s0, %lo(auScTasks)
    /* 201C8 8001F5C8 240C0068 */  addiu      $t4, $zero, 0x68
    /* 201CC 8001F5CC AE020000 */  sw         $v0, 0x0($s0)
    /* 201D0 8001F5D0 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 201D4 8001F5D4 00002025 */  or         $a0, $zero, $zero
    /* 201D8 8001F5D8 00002825 */  or         $a1, $zero, $zero
    /* 201DC 8001F5DC 02403025 */  or         $a2, $s2, $zero
    /* 201E0 8001F5E0 0C0078F5 */  jal        alHeapDBAlloc
    /* 201E4 8001F5E4 24070001 */   addiu     $a3, $zero, 0x1
    /* 201E8 8001F5E8 240D0E60 */  addiu      $t5, $zero, 0xE60
    /* 201EC 8001F5EC AE020004 */  sw         $v0, 0x4($s0)
    /* 201F0 8001F5F0 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 201F4 8001F5F4 00002025 */  or         $a0, $zero, $zero
    /* 201F8 8001F5F8 00002825 */  or         $a1, $zero, $zero
    /* 201FC 8001F5FC 02403025 */  or         $a2, $s2, $zero
    /* 20200 8001F600 0C0078F5 */  jal        alHeapDBAlloc
    /* 20204 8001F604 24070001 */   addiu     $a3, $zero, 0x1
    /* 20208 8001F608 3C108009 */  lui        $s0, %hi(auDataBuffers)
    /* 2020C 8001F60C 26106440 */  addiu      $s0, $s0, %lo(auDataBuffers)
    /* 20210 8001F610 240E0E60 */  addiu      $t6, $zero, 0xE60
    /* 20214 8001F614 AE020000 */  sw         $v0, 0x0($s0)
    /* 20218 8001F618 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2021C 8001F61C 00002025 */  or         $a0, $zero, $zero
    /* 20220 8001F620 00002825 */  or         $a1, $zero, $zero
    /* 20224 8001F624 02403025 */  or         $a2, $s2, $zero
    /* 20228 8001F628 0C0078F5 */  jal        alHeapDBAlloc
    /* 2022C 8001F62C 24070001 */   addiu     $a3, $zero, 0x1
    /* 20230 8001F630 240F0E60 */  addiu      $t7, $zero, 0xE60
    /* 20234 8001F634 AE020004 */  sw         $v0, 0x4($s0)
    /* 20238 8001F638 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2023C 8001F63C 00002025 */  or         $a0, $zero, $zero
    /* 20240 8001F640 00002825 */  or         $a1, $zero, $zero
    /* 20244 8001F644 02403025 */  or         $a2, $s2, $zero
    /* 20248 8001F648 0C0078F5 */  jal        alHeapDBAlloc
    /* 2024C 8001F64C 24070001 */   addiu     $a3, $zero, 0x1
    /* 20250 8001F650 8E230050 */  lw         $v1, 0x50($s1)
    /* 20254 8001F654 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 20258 8001F658 AE020008 */  sw         $v0, 0x8($s0)
    /* 2025C 8001F65C 0061082B */  sltu       $at, $v1, $at
    /* 20260 8001F660 10200015 */  beqz       $at, .L8001F6B8
    /* 20264 8001F664 00002025 */   or        $a0, $zero, $zero
    /* 20268 8001F668 8E380054 */  lw         $t8, 0x54($s1)
    /* 2026C 8001F66C 00002825 */  or         $a1, $zero, $zero
    /* 20270 8001F670 02403025 */  or         $a2, $s2, $zero
    /* 20274 8001F674 03038023 */  subu       $s0, $t8, $v1
    /* 20278 8001F678 AFB00010 */  sw         $s0, 0x10($sp)
    /* 2027C 8001F67C 0C0078F5 */  jal        alHeapDBAlloc
    /* 20280 8001F680 24070001 */   addiu     $a3, $zero, 0x1
    /* 20284 8001F684 8E240050 */  lw         $a0, 0x50($s1)
    /* 20288 8001F688 00402825 */  or         $a1, $v0, $zero
    /* 2028C 8001F68C 02003025 */  or         $a2, $s0, $zero
    /* 20290 8001F690 0C0079C9 */  jal        auRomRead
    /* 20294 8001F694 AFA2003C */   sw        $v0, 0x3C($sp)
    /* 20298 8001F698 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 2029C 8001F69C 3C018004 */  lui        $at, %hi(D_8003F39C)
    /* 202A0 8001F6A0 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 202A4 8001F6A4 246B0004 */  addiu      $t3, $v1, 0x4
    /* 202A8 8001F6A8 A62A004C */  sh         $t2, 0x4C($s1)
    /* 202AC 8001F6AC A42AF39C */  sh         $t2, %lo(D_8003F39C)($at)
    /* 202B0 8001F6B0 AE2B0044 */  sw         $t3, 0x44($s1)
    /* 202B4 8001F6B4 AC2BF394 */  sw         $t3, %lo(D_8003F394)($at)
  .L8001F6B8:
    /* 202B8 8001F6B8 8E220058 */  lw         $v0, 0x58($s1)
    /* 202BC 8001F6BC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 202C0 8001F6C0 00002025 */  or         $a0, $zero, $zero
    /* 202C4 8001F6C4 0041082B */  sltu       $at, $v0, $at
    /* 202C8 8001F6C8 10200023 */  beqz       $at, .L8001F758
    /* 202CC 8001F6CC 00002825 */   or        $a1, $zero, $zero
    /* 202D0 8001F6D0 8E2D005C */  lw         $t5, 0x5C($s1)
    /* 202D4 8001F6D4 02403025 */  or         $a2, $s2, $zero
    /* 202D8 8001F6D8 24070001 */  addiu      $a3, $zero, 0x1
    /* 202DC 8001F6DC 01A28023 */  subu       $s0, $t5, $v0
    /* 202E0 8001F6E0 0C0078F5 */  jal        alHeapDBAlloc
    /* 202E4 8001F6E4 AFB00010 */   sw        $s0, 0x10($sp)
    /* 202E8 8001F6E8 8E240058 */  lw         $a0, 0x58($s1)
    /* 202EC 8001F6EC 00402825 */  or         $a1, $v0, $zero
    /* 202F0 8001F6F0 02003025 */  or         $a2, $s0, $zero
    /* 202F4 8001F6F4 0C0079C9 */  jal        auRomRead
    /* 202F8 8001F6F8 AFA20038 */   sw        $v0, 0x38($sp)
    /* 202FC 8001F6FC 8FA70038 */  lw         $a3, 0x38($sp)
    /* 20300 8001F700 3C018004 */  lui        $at, %hi(D_8003F39A)
    /* 20304 8001F704 00004025 */  or         $t0, $zero, $zero
    /* 20308 8001F708 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 2030C 8001F70C 24EF0004 */  addiu      $t7, $a3, 0x4
    /* 20310 8001F710 A62E004A */  sh         $t6, 0x4A($s1)
    /* 20314 8001F714 31C2FFFF */  andi       $v0, $t6, 0xFFFF
    /* 20318 8001F718 A422F39A */  sh         $v0, %lo(D_8003F39A)($at)
    /* 2031C 8001F71C AE2F0040 */  sw         $t7, 0x40($s1)
    /* 20320 8001F720 1840000D */  blez       $v0, .L8001F758
    /* 20324 8001F724 AC2FF390 */   sw        $t7, %lo(D_8003F390)($at)
    /* 20328 8001F728 00001025 */  or         $v0, $zero, $zero
    /* 2032C 8001F72C 8E390040 */  lw         $t9, 0x40($s1)
  .L8001F730:
    /* 20330 8001F730 25080001 */  addiu      $t0, $t0, 0x1
    /* 20334 8001F734 03221821 */  addu       $v1, $t9, $v0
    /* 20338 8001F738 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 2033C 8001F73C 24420004 */  addiu      $v0, $v0, 0x4
    /* 20340 8001F740 01475821 */  addu       $t3, $t2, $a3
    /* 20344 8001F744 AC6B0000 */  sw         $t3, 0x0($v1)
    /* 20348 8001F748 962C004A */  lhu        $t4, 0x4A($s1)
    /* 2034C 8001F74C 010C082A */  slt        $at, $t0, $t4
    /* 20350 8001F750 5420FFF7 */  bnel       $at, $zero, .L8001F730
    /* 20354 8001F754 8E390040 */   lw        $t9, 0x40($s1)
  .L8001F758:
    /* 20358 8001F758 8E220060 */  lw         $v0, 0x60($s1)
    /* 2035C 8001F75C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 20360 8001F760 00002025 */  or         $a0, $zero, $zero
    /* 20364 8001F764 0041082B */  sltu       $at, $v0, $at
    /* 20368 8001F768 10200026 */  beqz       $at, .L8001F804
    /* 2036C 8001F76C 00002825 */   or        $a1, $zero, $zero
    /* 20370 8001F770 8E2D0064 */  lw         $t5, 0x64($s1)
    /* 20374 8001F774 02403025 */  or         $a2, $s2, $zero
    /* 20378 8001F778 24070001 */  addiu      $a3, $zero, 0x1
    /* 2037C 8001F77C 01A28023 */  subu       $s0, $t5, $v0
    /* 20380 8001F780 AFB00010 */  sw         $s0, 0x10($sp)
    /* 20384 8001F784 00004025 */  or         $t0, $zero, $zero
    /* 20388 8001F788 0C0078F5 */  jal        alHeapDBAlloc
    /* 2038C 8001F78C AFA00044 */   sw        $zero, 0x44($sp)
    /* 20390 8001F790 8E240060 */  lw         $a0, 0x60($s1)
    /* 20394 8001F794 00402825 */  or         $a1, $v0, $zero
    /* 20398 8001F798 02003025 */  or         $a2, $s0, $zero
    /* 2039C 8001F79C 0C0079C9 */  jal        auRomRead
    /* 203A0 8001F7A0 AFA20034 */   sw        $v0, 0x34($sp)
    /* 203A4 8001F7A4 8FA70034 */  lw         $a3, 0x34($sp)
    /* 203A8 8001F7A8 3C038004 */  lui        $v1, %hi(auPublicSettings)
    /* 203AC 8001F7AC 2463F350 */  addiu      $v1, $v1, %lo(auPublicSettings)
    /* 203B0 8001F7B0 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 203B4 8001F7B4 24EF0004 */  addiu      $t7, $a3, 0x4
    /* 203B8 8001F7B8 8FA80044 */  lw         $t0, 0x44($sp)
    /* 203BC 8001F7BC 31C2FFFF */  andi       $v0, $t6, 0xFFFF
    /* 203C0 8001F7C0 A4620048 */  sh         $v0, 0x48($v1)
    /* 203C4 8001F7C4 AE2F003C */  sw         $t7, 0x3C($s1)
    /* 203C8 8001F7C8 AC6F003C */  sw         $t7, 0x3C($v1)
    /* 203CC 8001F7CC 1840000D */  blez       $v0, .L8001F804
    /* 203D0 8001F7D0 A62E0048 */   sh        $t6, 0x48($s1)
    /* 203D4 8001F7D4 00001025 */  or         $v0, $zero, $zero
    /* 203D8 8001F7D8 8E39003C */  lw         $t9, 0x3C($s1)
  .L8001F7DC:
    /* 203DC 8001F7DC 25080001 */  addiu      $t0, $t0, 0x1
    /* 203E0 8001F7E0 03221821 */  addu       $v1, $t9, $v0
    /* 203E4 8001F7E4 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 203E8 8001F7E8 24420004 */  addiu      $v0, $v0, 0x4
    /* 203EC 8001F7EC 01475821 */  addu       $t3, $t2, $a3
    /* 203F0 8001F7F0 AC6B0000 */  sw         $t3, 0x0($v1)
    /* 203F4 8001F7F4 962C0048 */  lhu        $t4, 0x48($s1)
    /* 203F8 8001F7F8 010C082A */  slt        $at, $t0, $t4
    /* 203FC 8001F7FC 5420FFF7 */  bnel       $at, $zero, .L8001F7DC
    /* 20400 8001F800 8E39003C */   lw        $t9, 0x3C($s1)
  .L8001F804:
    /* 20404 8001F804 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 20408 8001F808 8FB00020 */  lw         $s0, 0x20($sp)
    /* 2040C 8001F80C 8FB10024 */  lw         $s1, 0x24($sp)
    /* 20410 8001F810 8FB20028 */  lw         $s2, 0x28($sp)
    /* 20414 8001F814 03E00008 */  jr         $ra
    /* 20418 8001F818 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel auLoadAssets
.size auLoadAssets, . - auLoadAssets
