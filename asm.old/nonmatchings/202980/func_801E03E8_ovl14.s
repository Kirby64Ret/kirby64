glabel func_801E03E8_ovl14
/* 202FD8 801E03E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
glabel func_801E03EC_ovl16
/* 202FDC 801E03EC AFB00018 */  sw         $s0, 0x18($sp)
.L801E03F0_ovl15:
/* 202FE0 801E03F0 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 202FE4 801E03F4 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 202FE8 801E03F8 8E0F0000 */  lw         $t7, 0x0($s0)
/* 202FEC 801E03FC AFBF001C */  sw         $ra, 0x1C($sp)
/* 202FF0 801E0400 AFA40020 */  sw         $a0, 0x20($sp)
/* 202FF4 801E0404 8DF80000 */  lw         $t8, 0x0($t7)
/* 202FF8 801E0408 3C01800E */  lui        $at, %hi(D_800DDFD0)
glabel func_801E040C_ovl15
/* 202FFC 801E040C 240E0001 */  addiu      $t6, $zero, 0x1
/* 203000 801E0410 0018C880 */  sll        $t9, $t8, 2
/* 203004 801E0414 00390821 */  addu       $at, $at, $t9
/* 203008 801E0418 3C040001 */  lui        $a0, (0x1045C >> 16)
/* 20300C 801E041C AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
.L801E0420_ovl17:
/* 203010 801E0420 0C02A806 */  jal        func_800AA018
/* 203014 801E0424 3484045C */   ori       $a0, $a0, (0x1045C & 0xFFFF)
/* 203018 801E0428 8E080000 */  lw         $t0, 0x0($s0)
/* 20301C 801E042C 3C09800F */  lui        $t1, %hi(D_800EC2E0)
/* 203020 801E0430 3C0B800E */  lui        $t3, %hi(gEntitiesAngleYArray)
/* 203024 801E0434 8D030000 */  lw         $v1, 0x0($t0)
/* 203028 801E0438 3C0A800E */  lui        $t2, %hi(gEntitiesAngleYArray)
/* 20302C 801E043C 256B41D0 */  addiu      $t3, $t3, %lo(gEntitiesAngleYArray)
/* 203030 801E0440 00031880 */  sll        $v1, $v1, 2
/* 203034 801E0444 01234821 */  addu       $t1, $t1, $v1
/* 203038 801E0448 8D29C2E0 */  lw         $t1, %lo(D_800EC2E0)($t1)
/* 20303C 801E044C 254A41D0 */  addiu      $t2, $t2, %lo(gEntitiesAngleYArray)
.L801E0450_ovl10:
/* 203040 801E0450 006B1021 */  addu       $v0, $v1, $t3
/* 203044 801E0454 11200008 */  beqz       $t1, .L801E0478_ovl14
/* 203048 801E0458 3C01801E */   lui       $at, %hi(func_801E30BC_ovl17 + 0xC)
.L801E045C_ovl16:
/* 20304C 801E045C 006A1021 */  addu       $v0, $v1, $t2
glabel func_801E0460_ovl10
/* 203050 801E0460 3C01801E */  lui        $at, %hi(func_801E30BC_ovl17 + 0x8)
/* 203054 801E0464 C42630C4 */  lwc1       $f6, %lo(func_801E30BC_ovl17 + 0x8)($at)
/* 203058 801E0468 C4440000 */  lwc1       $f4, 0x0($v0)
.L801E046C_ovl15:
/* 20305C 801E046C 46062201 */  sub.s      $f8, $f4, $f6
/* 203060 801E0470 10000005 */  b          .L801E0488_ovl15
/* 203064 801E0474 E4480000 */   swc1      $f8, 0x0($v0)
.L801E0478_ovl14:
/* 203068 801E0478 C44A0000 */  lwc1       $f10, 0x0($v0)
.L801E047C_ovl16:
/* 20306C 801E047C C43030C8 */  lwc1       $f16, %lo(func_801E30BC_ovl17 + 0xC)($at)
/* 203070 801E0480 46105480 */  add.s      $f18, $f10, $f16
.L801E0484_ovl17:
/* 203074 801E0484 E4520000 */  swc1       $f18, 0x0($v0)
.L801E0488_ovl15:
/* 203078 801E0488 0C029D9E */  jal        play_sound
/* 20307C 801E048C 2404018C */   addiu     $a0, $zero, 0x18C
/* 203080 801E0490 8E0C0000 */  lw         $t4, 0x0($s0)
/* 203084 801E0494 3C18800F */  lui        $t8, %hi(D_800EC4A0)
/* 203088 801E0498 8D8D0000 */  lw         $t5, 0x0($t4)
/* 20308C 801E049C 000D7880 */  sll        $t7, $t5, 2
/* 203090 801E04A0 030FC021 */  addu       $t8, $t8, $t7
/* 203094 801E04A4 8F18C4A0 */  lw         $t8, %lo(D_800EC4A0)($t8)
/* 203098 801E04A8 53000004 */  beql       $t8, $zero, .L801E04BC_ovl14
/* 20309C 801E04AC 3C040001 */   lui       $a0, (0x1045B >> 16)
/* 2030A0 801E04B0 0C002DAF */  jal        finish_current_thread
.L801E04B4_ovl11:
/* 2030A4 801E04B4 2404001E */   addiu     $a0, $zero, 0x1E
/* 2030A8 801E04B8 3C040001 */  lui        $a0, (0x1045B >> 16)
.L801E04BC_ovl14:
/* 2030AC 801E04BC 0C02A806 */  jal        func_800AA018
/* 2030B0 801E04C0 3484045B */   ori       $a0, $a0, (0x1045B & 0xFFFF)
.L801E04C4_ovl15:
/* 2030B4 801E04C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 2030B8 801E04C8 44816000 */  mtc1       $at, $f12
/* 2030BC 801E04CC 0C02BB30 */  jal        func_800AECC0
.L801E04D0_ovl17:
/* 2030C0 801E04D0 00000000 */   nop
.L801E04D4_ovl9:
/* 2030C4 801E04D4 8E020000 */  lw         $v0, 0x0($s0)
/* 2030C8 801E04D8 44800000 */  mtc1       $zero, $f0
.L801E04DC_ovl15:
/* 2030CC 801E04DC 3C05800E */  lui        $a1, %hi(D_800E3590)
/* 2030D0 801E04E0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 2030D4 801E04E4 24A53590 */  addiu      $a1, $a1, %lo(D_800E3590)
/* 2030D8 801E04E8 3C01801E */  lui        $at, %hi(.L801E30CC_ovl16)
.L801E04EC_ovl11:
/* 2030DC 801E04EC 000EC880 */  sll        $t9, $t6, 2
/* 2030E0 801E04F0 C42230CC */  lwc1       $f2, %lo(.L801E30CC_ovl16)($at)
.L801E04F4_ovl16:
/* 2030E4 801E04F4 00B94021 */  addu       $t0, $a1, $t9
/* 2030E8 801E04F8 E5000000 */  swc1       $f0, 0x0($t0)
/* 2030EC 801E04FC 8C430000 */  lw         $v1, 0x0($v0)
/* 2030F0 801E0500 3C01800E */  lui        $at, %hi(D_800E3050)
.L801E0504_ovl17:
/* 2030F4 801E0504 2404000F */  addiu      $a0, $zero, 0xF
/* 2030F8 801E0508 00031880 */  sll        $v1, $v1, 2
/* 2030FC 801E050C 00A34821 */  addu       $t1, $a1, $v1
.L801E0510_ovl17:
/* 203100 801E0510 C5240000 */  lwc1       $f4, 0x0($t1)
.L801E0514_ovl16:
/* 203104 801E0514 00230821 */  addu       $at, $at, $v1
/* 203108 801E0518 E4243050 */  swc1       $f4, %lo(D_800E3050)($at)
/* 20310C 801E051C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 203110 801E0520 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801E0524_ovl16:
/* 203114 801E0524 000A5880 */  sll        $t3, $t2, 2
/* 203118 801E0528 002B0821 */  addu       $at, $at, $t3
.L801E052C_ovl16:
/* 20311C 801E052C E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
/* 203120 801E0530 8C4C0000 */  lw         $t4, 0x0($v0)
/* 203124 801E0534 3C01801E */  lui        $at, %hi(func_801E309C_ovl9 + 0x34)
/* 203128 801E0538 C42630D0 */  lwc1       $f6, %lo(func_801E309C_ovl9 + 0x34)($at)
/* 20312C 801E053C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 203130 801E0540 000C6880 */  sll        $t5, $t4, 2
.L801E0544_ovl12:
/* 203134 801E0544 002D0821 */  addu       $at, $at, $t5
/* 203138 801E0548 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
.L801E054C_ovl17:
/* 20313C 801E054C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 203140 801E0550 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 203144 801E0554 240A0001 */  addiu      $t2, $zero, 0x1
/* 203148 801E0558 000FC080 */  sll        $t8, $t7, 2
/* 20314C 801E055C 00380821 */  addu       $at, $at, $t8
/* 203150 801E0560 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* 203154 801E0564 8C4E0000 */  lw         $t6, 0x0($v0)
/* 203158 801E0568 3C01800E */  lui        $at, %hi(D_800E3910)
/* 20315C 801E056C 000EC880 */  sll        $t9, $t6, 2
/* 203160 801E0570 00390821 */  addu       $at, $at, $t9
/* 203164 801E0574 E4203910 */  swc1       $f0, %lo(D_800E3910)($at)
/* 203168 801E0578 8C480000 */  lw         $t0, 0x0($v0)
/* 20316C 801E057C 3C01800E */  lui        $at, %hi(D_800E3E50)
/* 203170 801E0580 00084880 */  sll        $t1, $t0, 2
/* 203174 801E0584 00290821 */  addu       $at, $at, $t1
/* 203178 801E0588 E4223E50 */  swc1       $f2, %lo(D_800E3E50)($at)
glabel func_801E058C_ovl9
/* 20317C 801E058C 8C4B0000 */  lw         $t3, 0x0($v0)
.L801E0590_ovl12:
/* 203180 801E0590 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 203184 801E0594 000B6080 */  sll        $t4, $t3, 2
.L801E0598_ovl16:
/* 203188 801E0598 002C0821 */  addu       $at, $at, $t4
.L801E059C_ovl15:
/* 20318C 801E059C 0C06B9F8 */  jal        func_801AE7E0_ovl7
/* 203190 801E05A0 AC2A98E0 */   sw        $t2, %lo(D_800E98E0)($at)
/* 203194 801E05A4 8E0F0000 */  lw         $t7, 0x0($s0)
glabel func_801E05A8_ovl15
/* 203198 801E05A8 3C0D0001 */  lui        $t5, (0x10634 >> 16)
/* 20319C 801E05AC 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 2031A0 801E05B0 8DF80000 */  lw         $t8, 0x0($t7)
/* 2031A4 801E05B4 35AD0634 */  ori        $t5, $t5, (0x10634 & 0xFFFF)
/* 2031A8 801E05B8 2404001E */  addiu      $a0, $zero, 0x1E
/* 2031AC 801E05BC 00187080 */  sll        $t6, $t8, 2
/* 2031B0 801E05C0 002E0821 */  addu       $at, $at, $t6
/* 2031B4 801E05C4 0C002DAF */  jal        finish_current_thread
/* 2031B8 801E05C8 AC2D9C60 */   sw        $t5, %lo(D_800E9C60)($at)
.L801E05CC_ovl13:
/* 2031BC 801E05CC 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 2031C0 801E05D0 0C02BB30 */  jal        func_800AECC0
/* 2031C4 801E05D4 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 2031C8 801E05D8 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 2031CC 801E05DC 0C02BB48 */  jal        func_800AED20
/* 2031D0 801E05E0 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
.L801E05E4_ovl13:
/* 2031D4 801E05E4 8E080000 */  lw         $t0, 0x0($s0)
glabel func_801E05E8_ovl12
/* 2031D8 801E05E8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 2031DC 801E05EC 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 2031E0 801E05F0 8D090000 */  lw         $t1, 0x0($t0)
/* 2031E4 801E05F4 24190002 */  addiu      $t9, $zero, 0x2
/* 2031E8 801E05F8 8FB00018 */  lw         $s0, 0x18($sp)
/* 2031EC 801E05FC 00095880 */  sll        $t3, $t1, 2
.L801E0600_ovl13:
/* 2031F0 801E0600 002B0821 */  addu       $at, $at, $t3
/* 2031F4 801E0604 AC39DC50 */  sw         $t9, %lo(gEntityVtableIndexArray)($at)
/* 2031F8 801E0608 03E00008 */  jr         $ra
/* 2031FC 801E060C 27BD0020 */   addiu     $sp, $sp, 0x20
