nonmatching scThreadMain, 0x560

glabel scThreadMain
    /* 3198 80002598 3C018005 */  lui        $at, %hi(scClientList)
    /* 319C 8000259C AC208B80 */  sw         $zero, %lo(scClientList)($at)
    /* 31A0 800025A0 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 31A4 800025A4 AFA40088 */  sw         $a0, 0x88($sp)
    /* 31A8 800025A8 3C048005 */  lui        $a0, %hi(scPausedQueueHead)
    /* 31AC 800025AC 3C038005 */  lui        $v1, %hi(scPausedQueueTail)
    /* 31B0 800025B0 3C058005 */  lui        $a1, %hi(D_80048B90)
    /* 31B4 800025B4 3C068005 */  lui        $a2, %hi(scCurrentGfxTask)
    /* 31B8 800025B8 3C078005 */  lui        $a3, %hi(scMainQueueTail)
    /* 31BC 800025BC 24E78B88 */  addiu      $a3, $a3, %lo(scMainQueueTail)
    /* 31C0 800025C0 24C68B8C */  addiu      $a2, $a2, %lo(scCurrentGfxTask)
    /* 31C4 800025C4 24A58B90 */  addiu      $a1, $a1, %lo(D_80048B90)
    /* 31C8 800025C8 24638B98 */  addiu      $v1, $v1, %lo(scPausedQueueTail)
    /* 31CC 800025CC 24848B94 */  addiu      $a0, $a0, %lo(scPausedQueueHead)
    /* 31D0 800025D0 AC800000 */  sw         $zero, 0x0($a0)
    /* 31D4 800025D4 AC600000 */  sw         $zero, 0x0($v1)
    /* 31D8 800025D8 ACA00000 */  sw         $zero, 0x0($a1)
    /* 31DC 800025DC ACC00000 */  sw         $zero, 0x0($a2)
    /* 31E0 800025E0 ACE00000 */  sw         $zero, 0x0($a3)
    /* 31E4 800025E4 3C018005 */  lui        $at, %hi(scMainQueueHead)
    /* 31E8 800025E8 AC208B84 */  sw         $zero, %lo(scMainQueueHead)($at)
    /* 31EC 800025EC 3C088005 */  lui        $t0, %hi(D_80048BA0)
    /* 31F0 800025F0 3C098005 */  lui        $t1, %hi(scDPTaskHead)
    /* 31F4 800025F4 25298B9C */  addiu      $t1, $t1, %lo(scDPTaskHead)
    /* 31F8 800025F8 25088BA0 */  addiu      $t0, $t0, %lo(D_80048BA0)
    /* 31FC 800025FC AD000000 */  sw         $zero, 0x0($t0)
    /* 3200 80002600 AD200000 */  sw         $zero, 0x0($t1)
    /* 3204 80002604 3C018005 */  lui        $at, %hi(scCurrentDPTask)
    /* 3208 80002608 AC208BA4 */  sw         $zero, %lo(scCurrentDPTask)($at)
    /* 320C 8000260C 3C018005 */  lui        $at, %hi(D_80048C48)
    /* 3210 80002610 AC208C48 */  sw         $zero, %lo(D_80048C48)($at)
    /* 3214 80002614 3C0A8005 */  lui        $t2, %hi(D_80048C60)
    /* 3218 80002618 3C0B8005 */  lui        $t3, %hi(scNextFrameBuffer)
    /* 321C 8000261C 256B8C5C */  addiu      $t3, $t3, %lo(scNextFrameBuffer)
    /* 3220 80002620 254A8C60 */  addiu      $t2, $t2, %lo(D_80048C60)
    /* 3224 80002624 AD400000 */  sw         $zero, 0x0($t2)
    /* 3228 80002628 AD600000 */  sw         $zero, 0x0($t3)
    /* 322C 8000262C 3C018005 */  lui        $at, %hi(gCurrFrameBuffer)
    /* 3230 80002630 AC208C68 */  sw         $zero, %lo(gCurrFrameBuffer)($at)
    /* 3234 80002634 3C018005 */  lui        $at, %hi(D_80048CD0)
    /* 3238 80002638 AC208CD0 */  sw         $zero, %lo(D_80048CD0)($at)
    /* 323C 8000263C 3C198000 */  lui        $t9, %hi(scPreNMIDefault)
    /* 3240 80002640 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 3244 80002644 AFB00018 */  sw         $s0, 0x18($sp)
    /* 3248 80002648 27392AF8 */  addiu      $t9, $t9, %lo(scPreNMIDefault)
    /* 324C 8000264C 3C018005 */  lui        $at, %hi(scPreNMIProc)
    /* 3250 80002650 3C108005 */  lui        $s0, %hi(scBeforeReset)
    /* 3254 80002654 3C118005 */  lui        $s1, %hi(scPreNMIState)
    /* 3258 80002658 AC398CD8 */  sw         $t9, %lo(scPreNMIProc)($at)
    /* 325C 8000265C 26318CE0 */  addiu      $s1, $s1, %lo(scPreNMIState)
    /* 3260 80002660 26108CDC */  addiu      $s0, $s0, %lo(scBeforeReset)
    /* 3264 80002664 240CFFFF */  addiu      $t4, $zero, -0x1
    /* 3268 80002668 AE000000 */  sw         $zero, 0x0($s0)
    /* 326C 8000266C AE2C0000 */  sw         $t4, 0x0($s1)
    /* 3270 80002670 3C028000 */  lui        $v0, %hi(osTvType)
    /* 3274 80002674 8C420300 */  lw         $v0, %lo(osTvType)($v0)
    /* 3278 80002678 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 327C 8000267C AFB20020 */  sw         $s2, 0x20($sp)
    /* 3280 80002680 1040003D */  beqz       $v0, .L80002778
    /* 3284 80002684 24010001 */   addiu     $at, $zero, 0x1
    /* 3288 80002688 10410006 */  beq        $v0, $at, .L800026A4
    /* 328C 8000268C 3C048005 */   lui       $a0, %hi(D_80048BA8)
    /* 3290 80002690 24010002 */  addiu      $at, $zero, 0x2
    /* 3294 80002694 1041006E */  beq        $v0, $at, .L80002850
    /* 3298 80002698 3C048005 */   lui       $a0, %hi(D_80048BA8)
    /* 329C 8000269C 100000A1 */  b          .L80002924
    /* 32A0 800026A0 24848BA8 */   addiu     $a0, $a0, %lo(D_80048BA8)
  .L800026A4:
    /* 32A4 800026A4 3C0D8004 */  lui        $t5, %hi(osViModeNtscLan1)
    /* 32A8 800026A8 27A20030 */  addiu      $v0, $sp, 0x30
    /* 32AC 800026AC 25ADFC60 */  addiu      $t5, $t5, %lo(osViModeNtscLan1)
    /* 32B0 800026B0 24848BA8 */  addiu      $a0, $a0, %lo(D_80048BA8)
    /* 32B4 800026B4 25B90048 */  addiu      $t9, $t5, 0x48
    /* 32B8 800026B8 0040C025 */  or         $t8, $v0, $zero
  .L800026BC:
    /* 32BC 800026BC 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 32C0 800026C0 25AD000C */  addiu      $t5, $t5, 0xC
    /* 32C4 800026C4 2718000C */  addiu      $t8, $t8, 0xC
    /* 32C8 800026C8 AF0FFFF4 */  sw         $t7, -0xC($t8)
    /* 32CC 800026CC 8DAEFFF8 */  lw         $t6, -0x8($t5)
    /* 32D0 800026D0 AF0EFFF8 */  sw         $t6, -0x8($t8)
    /* 32D4 800026D4 8DAFFFFC */  lw         $t7, -0x4($t5)
    /* 32D8 800026D8 15B9FFF8 */  bne        $t5, $t9, .L800026BC
    /* 32DC 800026DC AF0FFFFC */   sw        $t7, -0x4($t8)
    /* 32E0 800026E0 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 32E4 800026E4 AF0F0000 */  sw         $t7, 0x0($t8)
    /* 32E8 800026E8 8DAE0004 */  lw         $t6, 0x4($t5)
    /* 32EC 800026EC 00406825 */  or         $t5, $v0, $zero
    /* 32F0 800026F0 AF0E0004 */  sw         $t6, 0x4($t8)
    /* 32F4 800026F4 244E0048 */  addiu      $t6, $v0, 0x48
    /* 32F8 800026F8 0080C025 */  or         $t8, $a0, $zero
  .L800026FC:
    /* 32FC 800026FC 8DB90000 */  lw         $t9, 0x0($t5)
    /* 3300 80002700 25AD000C */  addiu      $t5, $t5, 0xC
    /* 3304 80002704 2718000C */  addiu      $t8, $t8, 0xC
    /* 3308 80002708 AF19FFF4 */  sw         $t9, -0xC($t8)
    /* 330C 8000270C 8DACFFF8 */  lw         $t4, -0x8($t5)
    /* 3310 80002710 AF0CFFF8 */  sw         $t4, -0x8($t8)
    /* 3314 80002714 8DB9FFFC */  lw         $t9, -0x4($t5)
    /* 3318 80002718 15AEFFF8 */  bne        $t5, $t6, .L800026FC
    /* 331C 8000271C AF19FFFC */   sw        $t9, -0x4($t8)
    /* 3320 80002720 8DB90000 */  lw         $t9, 0x0($t5)
    /* 3324 80002724 3C0F8005 */  lui        $t7, %hi(gCurrentViMode)
    /* 3328 80002728 25EF8BF8 */  addiu      $t7, $t7, %lo(gCurrentViMode)
    /* 332C 8000272C AF190000 */  sw         $t9, 0x0($t8)
    /* 3330 80002730 8DAC0004 */  lw         $t4, 0x4($t5)
    /* 3334 80002734 AF0C0004 */  sw         $t4, 0x4($t8)
    /* 3338 80002738 244C0048 */  addiu      $t4, $v0, 0x48
    /* 333C 8000273C 0040C025 */  or         $t8, $v0, $zero
  .L80002740:
    /* 3340 80002740 8F0D0000 */  lw         $t5, 0x0($t8)
    /* 3344 80002744 2718000C */  addiu      $t8, $t8, 0xC
    /* 3348 80002748 25EF000C */  addiu      $t7, $t7, 0xC
    /* 334C 8000274C ADEDFFF4 */  sw         $t5, -0xC($t7)
    /* 3350 80002750 8F0EFFF8 */  lw         $t6, -0x8($t8)
    /* 3354 80002754 ADEEFFF8 */  sw         $t6, -0x8($t7)
    /* 3358 80002758 8F0DFFFC */  lw         $t5, -0x4($t8)
    /* 335C 8000275C 170CFFF8 */  bne        $t8, $t4, .L80002740
    /* 3360 80002760 ADEDFFFC */   sw        $t5, -0x4($t7)
    /* 3364 80002764 8F0D0000 */  lw         $t5, 0x0($t8)
    /* 3368 80002768 ADED0000 */  sw         $t5, 0x0($t7)
    /* 336C 8000276C 8F0E0004 */  lw         $t6, 0x4($t8)
    /* 3370 80002770 1000006C */  b          .L80002924
    /* 3374 80002774 ADEE0004 */   sw        $t6, 0x4($t7)
  .L80002778:
    /* 3378 80002778 3C198004 */  lui        $t9, %hi(osViModeFpalLan1)
    /* 337C 8000277C 27A20030 */  addiu      $v0, $sp, 0x30
    /* 3380 80002780 3C048005 */  lui        $a0, %hi(D_80048BA8)
    /* 3384 80002784 2739FDC0 */  addiu      $t9, $t9, %lo(osViModeFpalLan1)
    /* 3388 80002788 24848BA8 */  addiu      $a0, $a0, %lo(D_80048BA8)
    /* 338C 8000278C 272E0048 */  addiu      $t6, $t9, 0x48
    /* 3390 80002790 00407825 */  or         $t7, $v0, $zero
  .L80002794:
    /* 3394 80002794 8F380000 */  lw         $t8, 0x0($t9)
    /* 3398 80002798 2739000C */  addiu      $t9, $t9, 0xC
    /* 339C 8000279C 25EF000C */  addiu      $t7, $t7, 0xC
    /* 33A0 800027A0 ADF8FFF4 */  sw         $t8, -0xC($t7)
    /* 33A4 800027A4 8F2CFFF8 */  lw         $t4, -0x8($t9)
    /* 33A8 800027A8 ADECFFF8 */  sw         $t4, -0x8($t7)
    /* 33AC 800027AC 8F38FFFC */  lw         $t8, -0x4($t9)
    /* 33B0 800027B0 172EFFF8 */  bne        $t9, $t6, .L80002794
    /* 33B4 800027B4 ADF8FFFC */   sw        $t8, -0x4($t7)
    /* 33B8 800027B8 8F380000 */  lw         $t8, 0x0($t9)
    /* 33BC 800027BC ADF80000 */  sw         $t8, 0x0($t7)
    /* 33C0 800027C0 8F2C0004 */  lw         $t4, 0x4($t9)
    /* 33C4 800027C4 0040C825 */  or         $t9, $v0, $zero
    /* 33C8 800027C8 ADEC0004 */  sw         $t4, 0x4($t7)
    /* 33CC 800027CC 244C0048 */  addiu      $t4, $v0, 0x48
    /* 33D0 800027D0 00807825 */  or         $t7, $a0, $zero
  .L800027D4:
    /* 33D4 800027D4 8F2E0000 */  lw         $t6, 0x0($t9)
    /* 33D8 800027D8 2739000C */  addiu      $t9, $t9, 0xC
    /* 33DC 800027DC 25EF000C */  addiu      $t7, $t7, 0xC
    /* 33E0 800027E0 ADEEFFF4 */  sw         $t6, -0xC($t7)
    /* 33E4 800027E4 8F2DFFF8 */  lw         $t5, -0x8($t9)
    /* 33E8 800027E8 ADEDFFF8 */  sw         $t5, -0x8($t7)
    /* 33EC 800027EC 8F2EFFFC */  lw         $t6, -0x4($t9)
    /* 33F0 800027F0 172CFFF8 */  bne        $t9, $t4, .L800027D4
    /* 33F4 800027F4 ADEEFFFC */   sw        $t6, -0x4($t7)
    /* 33F8 800027F8 8F2E0000 */  lw         $t6, 0x0($t9)
    /* 33FC 800027FC 3C188005 */  lui        $t8, %hi(gCurrentViMode)
    /* 3400 80002800 27188BF8 */  addiu      $t8, $t8, %lo(gCurrentViMode)
    /* 3404 80002804 ADEE0000 */  sw         $t6, 0x0($t7)
    /* 3408 80002808 8F2D0004 */  lw         $t5, 0x4($t9)
    /* 340C 8000280C ADED0004 */  sw         $t5, 0x4($t7)
    /* 3410 80002810 244D0048 */  addiu      $t5, $v0, 0x48
    /* 3414 80002814 00407825 */  or         $t7, $v0, $zero
  .L80002818:
    /* 3418 80002818 8DF90000 */  lw         $t9, 0x0($t7)
    /* 341C 8000281C 25EF000C */  addiu      $t7, $t7, 0xC
    /* 3420 80002820 2718000C */  addiu      $t8, $t8, 0xC
    /* 3424 80002824 AF19FFF4 */  sw         $t9, -0xC($t8)
    /* 3428 80002828 8DECFFF8 */  lw         $t4, -0x8($t7)
    /* 342C 8000282C AF0CFFF8 */  sw         $t4, -0x8($t8)
    /* 3430 80002830 8DF9FFFC */  lw         $t9, -0x4($t7)
    /* 3434 80002834 15EDFFF8 */  bne        $t7, $t5, .L80002818
    /* 3438 80002838 AF19FFFC */   sw        $t9, -0x4($t8)
    /* 343C 8000283C 8DF90000 */  lw         $t9, 0x0($t7)
    /* 3440 80002840 AF190000 */  sw         $t9, 0x0($t8)
    /* 3444 80002844 8DEC0004 */  lw         $t4, 0x4($t7)
    /* 3448 80002848 10000036 */  b          .L80002924
    /* 344C 8000284C AF0C0004 */   sw        $t4, 0x4($t8)
  .L80002850:
    /* 3450 80002850 3C0E8004 */  lui        $t6, %hi(osViModeMpalLan1)
    /* 3454 80002854 27A20030 */  addiu      $v0, $sp, 0x30
    /* 3458 80002858 3C048005 */  lui        $a0, %hi(D_80048BA8)
    /* 345C 8000285C 25CEFCB0 */  addiu      $t6, $t6, %lo(osViModeMpalLan1)
    /* 3460 80002860 24848BA8 */  addiu      $a0, $a0, %lo(D_80048BA8)
    /* 3464 80002864 25CC0048 */  addiu      $t4, $t6, 0x48
    /* 3468 80002868 0040C025 */  or         $t8, $v0, $zero
  .L8000286C:
    /* 346C 8000286C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 3470 80002870 25CE000C */  addiu      $t6, $t6, 0xC
    /* 3474 80002874 2718000C */  addiu      $t8, $t8, 0xC
    /* 3478 80002878 AF0FFFF4 */  sw         $t7, -0xC($t8)
    /* 347C 8000287C 8DCDFFF8 */  lw         $t5, -0x8($t6)
    /* 3480 80002880 AF0DFFF8 */  sw         $t5, -0x8($t8)
    /* 3484 80002884 8DCFFFFC */  lw         $t7, -0x4($t6)
    /* 3488 80002888 15CCFFF8 */  bne        $t6, $t4, .L8000286C
    /* 348C 8000288C AF0FFFFC */   sw        $t7, -0x4($t8)
    /* 3490 80002890 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 3494 80002894 AF0F0000 */  sw         $t7, 0x0($t8)
    /* 3498 80002898 8DCD0004 */  lw         $t5, 0x4($t6)
    /* 349C 8000289C 00407025 */  or         $t6, $v0, $zero
    /* 34A0 800028A0 AF0D0004 */  sw         $t5, 0x4($t8)
    /* 34A4 800028A4 244D0048 */  addiu      $t5, $v0, 0x48
    /* 34A8 800028A8 0080C025 */  or         $t8, $a0, $zero
  .L800028AC:
    /* 34AC 800028AC 8DCC0000 */  lw         $t4, 0x0($t6)
    /* 34B0 800028B0 25CE000C */  addiu      $t6, $t6, 0xC
    /* 34B4 800028B4 2718000C */  addiu      $t8, $t8, 0xC
    /* 34B8 800028B8 AF0CFFF4 */  sw         $t4, -0xC($t8)
    /* 34BC 800028BC 8DD9FFF8 */  lw         $t9, -0x8($t6)
    /* 34C0 800028C0 AF19FFF8 */  sw         $t9, -0x8($t8)
    /* 34C4 800028C4 8DCCFFFC */  lw         $t4, -0x4($t6)
    /* 34C8 800028C8 15CDFFF8 */  bne        $t6, $t5, .L800028AC
    /* 34CC 800028CC AF0CFFFC */   sw        $t4, -0x4($t8)
    /* 34D0 800028D0 8DCC0000 */  lw         $t4, 0x0($t6)
    /* 34D4 800028D4 3C0F8005 */  lui        $t7, %hi(gCurrentViMode)
    /* 34D8 800028D8 25EF8BF8 */  addiu      $t7, $t7, %lo(gCurrentViMode)
    /* 34DC 800028DC AF0C0000 */  sw         $t4, 0x0($t8)
    /* 34E0 800028E0 8DD90004 */  lw         $t9, 0x4($t6)
    /* 34E4 800028E4 AF190004 */  sw         $t9, 0x4($t8)
    /* 34E8 800028E8 24590048 */  addiu      $t9, $v0, 0x48
    /* 34EC 800028EC 0040C025 */  or         $t8, $v0, $zero
  .L800028F0:
    /* 34F0 800028F0 8F0E0000 */  lw         $t6, 0x0($t8)
    /* 34F4 800028F4 2718000C */  addiu      $t8, $t8, 0xC
    /* 34F8 800028F8 25EF000C */  addiu      $t7, $t7, 0xC
    /* 34FC 800028FC ADEEFFF4 */  sw         $t6, -0xC($t7)
    /* 3500 80002900 8F0DFFF8 */  lw         $t5, -0x8($t8)
    /* 3504 80002904 ADEDFFF8 */  sw         $t5, -0x8($t7)
    /* 3508 80002908 8F0EFFFC */  lw         $t6, -0x4($t8)
    /* 350C 8000290C 1719FFF8 */  bne        $t8, $t9, .L800028F0
    /* 3510 80002910 ADEEFFFC */   sw        $t6, -0x4($t7)
    /* 3514 80002914 8F0E0000 */  lw         $t6, 0x0($t8)
    /* 3518 80002918 ADEE0000 */  sw         $t6, 0x0($t7)
    /* 351C 8000291C 8F0D0004 */  lw         $t5, 0x4($t8)
    /* 3520 80002920 ADED0004 */  sw         $t5, 0x4($t7)
  .L80002924:
    /* 3524 80002924 3C020001 */  lui        $v0, (0x10016 >> 16)
    /* 3528 80002928 34420016 */  ori        $v0, $v0, (0x10016 & 0xFFFF)
    /* 352C 8000292C AC820004 */  sw         $v0, 0x4($a0)
    /* 3530 80002930 3C018005 */  lui        $at, %hi(D_80048BFC)
    /* 3534 80002934 0C00C360 */  jal        osViSetMode
    /* 3538 80002938 AC228BFC */   sw        $v0, %lo(D_80048BFC)($at)
    /* 353C 8000293C 0C00C178 */  jal        osViBlack
    /* 3540 80002940 24040001 */   addiu     $a0, $zero, 0x1
    /* 3544 80002944 3C028005 */  lui        $v0, %hi(D_80048C7C)
    /* 3548 80002948 24428C7C */  addiu      $v0, $v0, %lo(D_80048C7C)
    /* 354C 8000294C 90590000 */  lbu        $t9, 0x0($v0)
    /* 3550 80002950 3C128005 */  lui        $s2, %hi(scTaskMQ)
    /* 3554 80002954 26528CB8 */  addiu      $s2, $s2, %lo(scTaskMQ)
    /* 3558 80002958 372F0080 */  ori        $t7, $t9, 0x80
    /* 355C 8000295C 31EE00BF */  andi       $t6, $t7, 0xBF
    /* 3560 80002960 A04F0000 */  sb         $t7, 0x0($v0)
    /* 3564 80002964 31D900DF */  andi       $t9, $t6, 0xDF
    /* 3568 80002968 A04E0000 */  sb         $t6, 0x0($v0)
    /* 356C 8000296C 332D00EF */  andi       $t5, $t9, 0xEF
    /* 3570 80002970 A0590000 */  sb         $t9, 0x0($v0)
    /* 3574 80002974 35AC0008 */  ori        $t4, $t5, 0x8
    /* 3578 80002978 A04D0000 */  sb         $t5, 0x0($v0)
    /* 357C 8000297C A04C0000 */  sb         $t4, 0x0($v0)
    /* 3580 80002980 318F00FB */  andi       $t7, $t4, 0xFB
    /* 3584 80002984 A04F0000 */  sb         $t7, 0x0($v0)
    /* 3588 80002988 35EC0002 */  ori        $t4, $t7, 0x2
    /* 358C 8000298C 904F0001 */  lbu        $t7, 0x1($v0)
    /* 3590 80002990 A04C0000 */  sb         $t4, 0x0($v0)
    /* 3594 80002994 35990001 */  ori        $t9, $t4, 0x1
    /* 3598 80002998 3C058005 */  lui        $a1, %hi(D_80048C98)
    /* 359C 8000299C 35ED0080 */  ori        $t5, $t7, 0x80
    /* 35A0 800029A0 A0590000 */  sb         $t9, 0x0($v0)
    /* 35A4 800029A4 A04D0001 */  sb         $t5, 0x1($v0)
    /* 35A8 800029A8 24A58C98 */  addiu      $a1, $a1, %lo(D_80048C98)
    /* 35AC 800029AC 02402025 */  or         $a0, $s2, $zero
    /* 35B0 800029B0 0C00CEB8 */  jal        osCreateMesgQueue
    /* 35B4 800029B4 24060008 */   addiu     $a2, $zero, 0x8
    /* 35B8 800029B8 02402025 */  or         $a0, $s2, $zero
    /* 35BC 800029BC 24050001 */  addiu      $a1, $zero, 0x1
    /* 35C0 800029C0 0C00D66C */  jal        osViSetEvent
    /* 35C4 800029C4 24060001 */   addiu     $a2, $zero, 0x1
    /* 35C8 800029C8 24040004 */  addiu      $a0, $zero, 0x4
    /* 35CC 800029CC 02402825 */  or         $a1, $s2, $zero
    /* 35D0 800029D0 0C00CAAC */  jal        osSetEventMesg
    /* 35D4 800029D4 24060002 */   addiu     $a2, $zero, 0x2
    /* 35D8 800029D8 24040009 */  addiu      $a0, $zero, 0x9
    /* 35DC 800029DC 02402825 */  or         $a1, $s2, $zero
    /* 35E0 800029E0 0C00CAAC */  jal        osSetEventMesg
    /* 35E4 800029E4 24060003 */   addiu     $a2, $zero, 0x3
    /* 35E8 800029E8 2404000E */  addiu      $a0, $zero, 0xE
    /* 35EC 800029EC 02402825 */  or         $a1, $s2, $zero
    /* 35F0 800029F0 0C00CAAC */  jal        osSetEventMesg
    /* 35F4 800029F4 24060063 */   addiu     $a2, $zero, 0x63
    /* 35F8 800029F8 3C048005 */  lui        $a0, %hi(gThreadInitializedMQ)
    /* 35FC 800029FC 24848A08 */  addiu      $a0, $a0, %lo(gThreadInitializedMQ)
    /* 3600 80002A00 24050001 */  addiu      $a1, $zero, 0x1
    /* 3604 80002A04 0C00B4BC */  jal        osSendMesg
    /* 3608 80002A08 00003025 */   or        $a2, $zero, $zero
  .L80002A0C:
    /* 360C 80002A0C 02402025 */  or         $a0, $s2, $zero
  .L80002A10:
    /* 3610 80002A10 27A50084 */  addiu      $a1, $sp, 0x84
    /* 3614 80002A14 0C00B540 */  jal        osRecvMesg
    /* 3618 80002A18 24060001 */   addiu     $a2, $zero, 0x1
    /* 361C 80002A1C 8FA40084 */  lw         $a0, 0x84($sp)
    /* 3620 80002A20 24010001 */  addiu      $at, $zero, 0x1
    /* 3624 80002A24 10810009 */  beq        $a0, $at, .L80002A4C
    /* 3628 80002A28 24010002 */   addiu     $at, $zero, 0x2
    /* 362C 80002A2C 1081000B */  beq        $a0, $at, .L80002A5C
    /* 3630 80002A30 24010003 */   addiu     $at, $zero, 0x3
    /* 3634 80002A34 10810017 */  beq        $a0, $at, .L80002A94
    /* 3638 80002A38 24010063 */   addiu     $at, $zero, 0x63
    /* 363C 80002A3C 10810019 */  beq        $a0, $at, .L80002AA4
    /* 3640 80002A40 3C028005 */   lui       $v0, %hi(scPreNMIProc)
    /* 3644 80002A44 1000001F */  b          .L80002AC4
    /* 3648 80002A48 8E190000 */   lw        $t9, 0x0($s0)
  .L80002A4C:
    /* 364C 80002A4C 0C000805 */  jal        scHandleVRetrace
    /* 3650 80002A50 00000000 */   nop
    /* 3654 80002A54 1000FFEE */  b          .L80002A10
    /* 3658 80002A58 02402025 */   or        $a0, $s2, $zero
  .L80002A5C:
    /* 365C 80002A5C 0C00081B */  jal        scHandleSPTaskDone
    /* 3660 80002A60 00000000 */   nop
    /* 3664 80002A64 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 3668 80002A68 24010001 */  addiu      $at, $zero, 0x1
    /* 366C 80002A6C 55C1FFE8 */  bnel       $t6, $at, .L80002A10
    /* 3670 80002A70 02402025 */   or        $a0, $s2, $zero
    /* 3674 80002A74 8E2C0000 */  lw         $t4, 0x0($s1)
    /* 3678 80002A78 2401FFFF */  addiu      $at, $zero, -0x1
    /* 367C 80002A7C 5581FFE4 */  bnel       $t4, $at, .L80002A10
    /* 3680 80002A80 02402025 */   or        $a0, $s2, $zero
    /* 3684 80002A84 0C00CACC */  jal        osAfterPreNMI
    /* 3688 80002A88 00000000 */   nop
    /* 368C 80002A8C 1000FFDF */  b          .L80002A0C
    /* 3690 80002A90 AE220000 */   sw        $v0, 0x0($s1)
  .L80002A94:
    /* 3694 80002A94 0C0008B7 */  jal        scHandleDPTaskDone
    /* 3698 80002A98 00000000 */   nop
    /* 369C 80002A9C 1000FFDC */  b          .L80002A10
    /* 36A0 80002AA0 02402025 */   or        $a0, $s2, $zero
  .L80002AA4:
    /* 36A4 80002AA4 8C428CD8 */  lw         $v0, %lo(scPreNMIProc)($v0)
    /* 36A8 80002AA8 5040FFD9 */  beql       $v0, $zero, .L80002A10
    /* 36AC 80002AAC 02402025 */   or        $a0, $s2, $zero
    /* 36B0 80002AB0 0040F809 */  jalr       $v0
    /* 36B4 80002AB4 00000000 */   nop
    /* 36B8 80002AB8 1000FFD5 */  b          .L80002A10
    /* 36BC 80002ABC 02402025 */   or        $a0, $s2, $zero
    /* 36C0 80002AC0 8E190000 */  lw         $t9, 0x0($s0)
  .L80002AC4:
    /* 36C4 80002AC4 5720FFD2 */  bnel       $t9, $zero, .L80002A10
    /* 36C8 80002AC8 02402025 */   or        $a0, $s2, $zero
    /* 36CC 80002ACC 0C00095B */  jal        scAddTask
    /* 36D0 80002AD0 00000000 */   nop
    /* 36D4 80002AD4 1000FFCE */  b          .L80002A10
    /* 36D8 80002AD8 02402025 */   or        $a0, $s2, $zero
    /* 36DC 80002ADC 00000000 */  nop
    /* 36E0 80002AE0 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 36E4 80002AE4 8FB00018 */  lw         $s0, 0x18($sp)
    /* 36E8 80002AE8 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 36EC 80002AEC 8FB20020 */  lw         $s2, 0x20($sp)
    /* 36F0 80002AF0 03E00008 */  jr         $ra
    /* 36F4 80002AF4 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel scThreadMain
.size scThreadMain, . - scThreadMain
