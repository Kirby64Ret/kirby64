glabel func_801DD590_ovl14
/* 200180 801DD590 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 200184 801DD594 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
glabel func_801DD598_ovl9
/* 200188 801DD598 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20018C 801DD59C AFBF0014 */  sw         $ra, 0x14($sp)
/* 200190 801DD5A0 AFA40018 */  sw         $a0, 0x18($sp)
/* 200194 801DD5A4 8DF80000 */  lw         $t8, 0x0($t7)
/* 200198 801DD5A8 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 20019C 801DD5AC 44811000 */  mtc1       $at, $f2
/* 2001A0 801DD5B0 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 2001A4 801DD5B4 0018C880 */  sll        $t9, $t8, 2
/* 2001A8 801DD5B8 00390821 */  addu       $at, $at, $t9
/* 2001AC 801DD5BC 240E0002 */  addiu      $t6, $zero, 0x2
/* 2001B0 801DD5C0 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 2001B4 801DD5C4 3C01800D */  lui        $at, %hi(D_800D7098 + 0x10)
/* 2001B8 801DD5C8 24090001 */  addiu      $t1, $zero, 0x1
.L801DD5CC_ovl12:
/* 2001BC 801DD5CC AC2970A8 */  sw         $t1, %lo(D_800D7098 + 0x10)($at)
/* 2001C0 801DD5D0 C4800040 */  lwc1       $f0, 0x40($a0)
/* 2001C4 801DD5D4 4602003C */  c.lt.s     $f0, $f2
.L801DD5D8_ovl12:
/* 2001C8 801DD5D8 00000000 */  nop
/* 2001CC 801DD5DC 45000004 */  bc1f       .L801DD5F0_ovl16
/* 2001D0 801DD5E0 3C014100 */   lui       $at, (0x41000000 >> 16)
glabel func_801DD5E4_ovl12
/* 2001D4 801DD5E4 44816000 */  mtc1       $at, $f12
/* 2001D8 801DD5E8 1000003E */  b          .L801DD6E4_ovl14
/* 2001DC 801DD5EC 00000000 */   nop
.L801DD5F0_ovl16:
/* 2001E0 801DD5F0 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 2001E4 801DD5F4 44812000 */  mtc1       $at, $f4
.L801DD5F8_ovl11:
/* 2001E8 801DD5F8 3C014140 */  lui        $at, (0x41400000 >> 16)
.L801DD5FC_ovl13:
/* 2001EC 801DD5FC 4604003C */  c.lt.s     $f0, $f4
/* 2001F0 801DD600 00000000 */  nop
.L801DD604_ovl15:
/* 2001F4 801DD604 45020006 */  bc1fl      .L801DD620_ovl14
/* 2001F8 801DD608 44813000 */   mtc1      $at, $f6
glabel func_801DD60C_ovl17
/* 2001FC 801DD60C 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 200200 801DD610 44816000 */  mtc1       $at, $f12
glabel func_801DD614_ovl13
/* 200204 801DD614 10000033 */  b          .L801DD6E4_ovl14
/* 200208 801DD618 00000000 */   nop
/* 20020C 801DD61C 44813000 */  mtc1       $at, $f6
.L801DD620_ovl14:
/* 200210 801DD620 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 200214 801DD624 4606003C */  c.lt.s     $f0, $f6
/* 200218 801DD628 00000000 */  nop
/* 20021C 801DD62C 45020004 */  bc1fl      .L801DD640_ovl14
.L801DD630_ovl15:
/* 200220 801DD630 44814000 */   mtc1      $at, $f8
/* 200224 801DD634 1000002B */  b          .L801DD6E4_ovl14
.L801DD638_ovl10:
/* 200228 801DD638 46001306 */   mov.s     $f12, $f2
glabel func_801DD63C_ovl12
/* 20022C 801DD63C 44814000 */  mtc1       $at, $f8
.L801DD640_ovl14:
/* 200230 801DD640 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
.L801DD644_ovl10:
/* 200234 801DD644 4608003C */  c.lt.s     $f0, $f8
/* 200238 801DD648 00000000 */  nop
/* 20023C 801DD64C 45020006 */  bc1fl      .L801DD668_ovl14
/* 200240 801DD650 44815000 */   mtc1      $at, $f10
/* 200244 801DD654 3C014000 */  lui        $at, (0x40000000 >> 16)
.L801DD658_ovl11:
/* 200248 801DD658 44816000 */  mtc1       $at, $f12
/* 20024C 801DD65C 10000021 */  b          .L801DD6E4_ovl14
/* 200250 801DD660 00000000 */   nop
/* 200254 801DD664 44815000 */  mtc1       $at, $f10
.L801DD668_ovl14:
/* 200258 801DD668 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
/* 20025C 801DD66C 460A003C */  c.lt.s     $f0, $f10
/* 200260 801DD670 00000000 */  nop
glabel func_801DD674_ovl10
/* 200264 801DD674 45020006 */  bc1fl      .L801DD690_ovl14
/* 200268 801DD678 44812000 */   mtc1      $at, $f4
/* 20026C 801DD67C 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 200270 801DD680 44816000 */  mtc1       $at, $f12
/* 200274 801DD684 10000017 */  b          .L801DD6E4_ovl14
/* 200278 801DD688 00000000 */   nop
/* 20027C 801DD68C 44812000 */  mtc1       $at, $f4
.L801DD690_ovl14:
/* 200280 801DD690 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* 200284 801DD694 4604003C */  c.lt.s     $f0, $f4
/* 200288 801DD698 00000000 */  nop
.L801DD69C_ovl12:
/* 20028C 801DD69C 45020006 */  bc1fl      .L801DD6B8_ovl14
/* 200290 801DD6A0 44813000 */   mtc1      $at, $f6
/* 200294 801DD6A4 3C014160 */  lui        $at, (0x41600000 >> 16)
/* 200298 801DD6A8 44816000 */  mtc1       $at, $f12
/* 20029C 801DD6AC 1000000D */  b          .L801DD6E4_ovl14
.L801DD6B0_ovl12:
/* 2002A0 801DD6B0 00000000 */   nop
.L801DD6B4_ovl16:
/* 2002A4 801DD6B4 44813000 */  mtc1       $at, $f6
.L801DD6B8_ovl14:
/* 2002A8 801DD6B8 3C014120 */  lui        $at, (0x41200000 >> 16)
glabel func_801DD6BC_ovl12
/* 2002AC 801DD6BC 4606003C */  c.lt.s     $f0, $f6
/* 2002B0 801DD6C0 00000000 */  nop
/* 2002B4 801DD6C4 45020006 */  bc1fl      .L801DD6E0_ovl14
/* 2002B8 801DD6C8 44816000 */   mtc1      $at, $f12
/* 2002BC 801DD6CC 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 2002C0 801DD6D0 44816000 */  mtc1       $at, $f12
/* 2002C4 801DD6D4 10000003 */  b          .L801DD6E4_ovl14
/* 2002C8 801DD6D8 00000000 */   nop
/* 2002CC 801DD6DC 44816000 */  mtc1       $at, $f12
.L801DD6E0_ovl14:
/* 2002D0 801DD6E0 00000000 */  nop
.L801DD6E4_ovl14:
/* 2002D4 801DD6E4 0C077DD7 */  jal        func_801DF75C_ovl14
/* 2002D8 801DD6E8 00000000 */   nop
.L801DD6EC_ovl10:
/* 2002DC 801DD6EC 3C040001 */  lui        $a0, (0x1043D >> 16)
/* 2002E0 801DD6F0 0C02A806 */  jal        func_800AA018
/* 2002E4 801DD6F4 3484043D */   ori       $a0, $a0, (0x1043D & 0xFFFF)
/* 2002E8 801DD6F8 3C040001 */  lui        $a0, (0x1043E >> 16)
/* 2002EC 801DD6FC 0C02A806 */  jal        func_800AA018
/* 2002F0 801DD700 3484043E */   ori       $a0, $a0, (0x1043E & 0xFFFF)
glabel func_801DD704_ovl17
/* 2002F4 801DD704 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 2002F8 801DD708 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 2002FC 801DD70C 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 200300 801DD710 240B0003 */  addiu      $t3, $zero, 0x3
/* 200304 801DD714 8C6C0000 */  lw         $t4, 0x0($v1)
/* 200308 801DD718 3C0F801E */  lui        $t7, %hi(func_801D9D1C_ovl9 + 0x64)
.L801DD71C_ovl9:
/* 20030C 801DD71C 25EF9D80 */  addiu      $t7, $t7, %lo(func_801D9D1C_ovl9 + 0x64)
.L801DD720_ovl11:
/* 200310 801DD720 000C6880 */  sll        $t5, $t4, 2
.L801DD724_ovl11:
/* 200314 801DD724 002D0821 */  addu       $at, $at, $t5
/* 200318 801DD728 AC2B9AA0 */  sw         $t3, %lo(D_800E9AA0)($at)
/* 20031C 801DD72C 8C780000 */  lw         $t8, 0x0($v1)
glabel func_801DD730_ovl11
/* 200320 801DD730 3C01800F */  lui        $at, %hi(D_800EA360)
/* 200324 801DD734 24040024 */  addiu      $a0, $zero, 0x24
/* 200328 801DD738 00187080 */  sll        $t6, $t8, 2
/* 20032C 801DD73C 002E0821 */  addu       $at, $at, $t6
/* 200330 801DD740 0C002DAF */  jal        finish_current_thread
/* 200334 801DD744 AC2FA360 */   sw        $t7, %lo(D_800EA360)($at)
.L801DD748_ovl9:
/* 200338 801DD748 0C029D9E */  jal        play_sound
glabel func_801DD74C_ovl15
/* 20033C 801DD74C 2404018A */   addiu     $a0, $zero, 0x18A
.L801DD750_ovl10:
/* 200340 801DD750 0C002DAF */  jal        finish_current_thread
/* 200344 801DD754 2404000F */   addiu     $a0, $zero, 0xF
/* 200348 801DD758 24040006 */  addiu      $a0, $zero, 0x6
/* 20034C 801DD75C 24050003 */  addiu      $a1, $zero, 0x3
glabel func_801DD760_ovl10
/* 200350 801DD760 0C02A08D */  jal        func_800A8234
/* 200354 801DD764 24060006 */   addiu     $a2, $zero, 0x6
/* 200358 801DD768 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 20035C 801DD76C 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 200360 801DD770 8D030000 */  lw         $v1, 0x0($t0)
/* 200364 801DD774 3C07800F */  lui        $a3, %hi(D_800EC4A0)
/* 200368 801DD778 24E7C4A0 */  addiu      $a3, $a3, %lo(D_800EC4A0)
/* 20036C 801DD77C 8C790000 */  lw         $t9, 0x0($v1)
/* 200370 801DD780 00194880 */  sll        $t1, $t9, 2
/* 200374 801DD784 00E95021 */  addu       $t2, $a3, $t1
/* 200378 801DD788 AD420000 */  sw         $v0, 0x0($t2)
/* 20037C 801DD78C 8C650000 */  lw         $a1, 0x0($v1)
/* 200380 801DD790 00052880 */  sll        $a1, $a1, 2
/* 200384 801DD794 00E56021 */  addu       $t4, $a3, $a1
/* 200388 801DD798 8D840000 */  lw         $a0, 0x0($t4)
/* 20038C 801DD79C 8C86004C */  lw         $a2, 0x4C($a0)
/* 200390 801DD7A0 10C00036 */  beqz       $a2, .L801DD87C_ovl15
/* 200394 801DD7A4 3C01800E */   lui       $at, %hi(D_800E6A10)
/* 200398 801DD7A8 00250821 */  addu       $at, $at, $a1
.L801DD7AC_ovl12:
/* 20039C 801DD7AC C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* 2003A0 801DD7B0 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 2003A4 801DD7B4 44815000 */  mtc1       $at, $f10
.L801DD7B8_ovl13:
/* 2003A8 801DD7B8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 2003AC 801DD7BC 00250821 */  addu       $at, $at, $a1
glabel func_801DD7C0_ovl15
/* 2003B0 801DD7C0 460A4102 */  mul.s      $f4, $f8, $f10
/* 2003B4 801DD7C4 C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
glabel func_801DD7C8_ovl15
/* 2003B8 801DD7C8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
glabel func_801DD7CC_ovl12
/* 2003BC 801DD7CC 46062200 */  add.s      $f8, $f4, $f6
/* 2003C0 801DD7D0 E4C80004 */  swc1       $f8, 0x4($a2)
glabel func_801DD7D4_ovl11
/* 2003C4 801DD7D4 8D0B0000 */  lw         $t3, 0x0($t0)
/* 2003C8 801DD7D8 8C8F004C */  lw         $t7, 0x4C($a0)
/* 2003CC 801DD7DC 8D6D0000 */  lw         $t5, 0x0($t3)
.L801DD7E0_ovl9:
/* 2003D0 801DD7E0 000DC080 */  sll        $t8, $t5, 2
/* 2003D4 801DD7E4 00380821 */  addu       $at, $at, $t8
/* 2003D8 801DD7E8 C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* 2003DC 801DD7EC 3C01432A */  lui        $at, (0x432A0000 >> 16)
/* 2003E0 801DD7F0 44812000 */  mtc1       $at, $f4
.L801DD7F4_ovl13:
/* 2003E4 801DD7F4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 2003E8 801DD7F8 46045180 */  add.s      $f6, $f10, $f4
/* 2003EC 801DD7FC E5E60008 */  swc1       $f6, 0x8($t7)
/* 2003F0 801DD800 8D0E0000 */  lw         $t6, 0x0($t0)
/* 2003F4 801DD804 8C8A004C */  lw         $t2, 0x4C($a0)
/* 2003F8 801DD808 8DD90000 */  lw         $t9, 0x0($t6)
/* 2003FC 801DD80C 00194880 */  sll        $t1, $t9, 2
/* 200400 801DD810 00290821 */  addu       $at, $at, $t1
/* 200404 801DD814 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
glabel func_801DD818_ovl9
/* 200408 801DD818 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 20040C 801DD81C E548000C */  swc1       $f8, 0xC($t2)
/* 200410 801DD820 8D0C0000 */  lw         $t4, 0x0($t0)
/* 200414 801DD824 8C98004C */  lw         $t8, 0x4C($a0)
/* 200418 801DD828 8D8B0000 */  lw         $t3, 0x0($t4)
/* 20041C 801DD82C 000B6880 */  sll        $t5, $t3, 2
.L801DD830_ovl11:
/* 200420 801DD830 002D0821 */  addu       $at, $at, $t5
/* 200424 801DD834 C42A4010 */  lwc1       $f10, %lo(gEntitiesAngleXArray)($at)
.L801DD838_ovl15:
/* 200428 801DD838 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 20042C 801DD83C E70A0010 */  swc1       $f10, 0x10($t8)
glabel func_801DD840_ovl11
/* 200430 801DD840 8D0F0000 */  lw         $t7, 0x0($t0)
.L801DD844_ovl13:
/* 200434 801DD844 8C89004C */  lw         $t1, 0x4C($a0)
/* 200438 801DD848 8DEE0000 */  lw         $t6, 0x0($t7)
/* 20043C 801DD84C 000EC880 */  sll        $t9, $t6, 2
/* 200440 801DD850 00390821 */  addu       $at, $at, $t9
/* 200444 801DD854 C42441D0 */  lwc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* 200448 801DD858 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
.L801DD85C_ovl13:
/* 20044C 801DD85C E5240014 */  swc1       $f4, 0x14($t1)
.L801DD860_ovl12:
/* 200450 801DD860 8D0A0000 */  lw         $t2, 0x0($t0)
/* 200454 801DD864 8C8D004C */  lw         $t5, 0x4C($a0)
/* 200458 801DD868 8D4C0000 */  lw         $t4, 0x0($t2)
/* 20045C 801DD86C 000C5880 */  sll        $t3, $t4, 2
/* 200460 801DD870 002B0821 */  addu       $at, $at, $t3
.L801DD874_ovl17:
/* 200464 801DD874 C4264390 */  lwc1       $f6, %lo(gEntitiesAngleZArray)($at)
/* 200468 801DD878 E5A60018 */  swc1       $f6, 0x18($t5)
.L801DD87C_ovl15:
/* 20046C 801DD87C 0C02BC9F */  jal        func_800AF27C
/* 200470 801DD880 00000000 */   nop
/* 200474 801DD884 3C040001 */  lui        $a0, (0x1043F >> 16)
glabel func_801DD888_ovl13
/* 200478 801DD888 0C02A806 */  jal        func_800AA018
glabel func_801DD88C_ovl17
/* 20047C 801DD88C 3484043F */   ori       $a0, $a0, (0x1043F & 0xFFFF)
/* 200480 801DD890 3C040001 */  lui        $a0, (0x10440 >> 16)
/* 200484 801DD894 0C02A806 */  jal        func_800AA018
/* 200488 801DD898 34840440 */   ori       $a0, $a0, (0x10440 & 0xFFFF)
/* 20048C 801DD89C 0C02BC9F */  jal        func_800AF27C
/* 200490 801DD8A0 00000000 */   nop
.L801DD8A4_ovl15:
/* 200494 801DD8A4 8FB80018 */  lw         $t8, 0x18($sp)
/* 200498 801DD8A8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 20049C 801DD8AC 44814000 */  mtc1       $at, $f8
/* 2004A0 801DD8B0 C7000040 */  lwc1       $f0, 0x40($t8)
/* 2004A4 801DD8B4 4608003C */  c.lt.s     $f0, $f8
/* 2004A8 801DD8B8 00000000 */  nop
glabel func_801DD8BC_ovl9
/* 2004AC 801DD8BC 45000004 */  bc1f       .L801DD8D0_ovl14
.L801DD8C0_ovl15:
/* 2004B0 801DD8C0 3C014180 */   lui       $at, (0x41800000 >> 16)
/* 2004B4 801DD8C4 44816000 */  mtc1       $at, $f12
/* 2004B8 801DD8C8 10000081 */  b          .L801DDAD0_ovl14
/* 2004BC 801DD8CC 00000000 */   nop
.L801DD8D0_ovl14:
/* 2004C0 801DD8D0 3C014080 */  lui        $at, (0x40800000 >> 16)
.L801DD8D4_ovl13:
/* 2004C4 801DD8D4 44811000 */  mtc1       $at, $f2
/* 2004C8 801DD8D8 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
.L801DD8DC_ovl17:
/* 2004CC 801DD8DC 4602003C */  c.lt.s     $f0, $f2
/* 2004D0 801DD8E0 00000000 */  nop
/* 2004D4 801DD8E4 45020006 */  bc1fl      func_801DD900_ovl15
.L801DD8E8_ovl11:
/* 2004D8 801DD8E8 44815000 */   mtc1      $at, $f10
/* 2004DC 801DD8EC 3C014140 */  lui        $at, (0x41400000 >> 16)
glabel func_801DD8F0_ovl17
/* 2004E0 801DD8F0 44816000 */  mtc1       $at, $f12
.L801DD8F4_ovl15:
/* 2004E4 801DD8F4 10000076 */  b          .L801DDAD0_ovl14
.L801DD8F8_ovl15:
/* 2004E8 801DD8F8 00000000 */   nop
glabel func_801DD8FC_ovl12
/* 2004EC 801DD8FC 44815000 */  mtc1       $at, $f10
glabel func_801DD900_ovl15
/* 2004F0 801DD900 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 2004F4 801DD904 460A003C */  c.lt.s     $f0, $f10
/* 2004F8 801DD908 00000000 */  nop
.L801DD90C_ovl15:
/* 2004FC 801DD90C 45020006 */  bc1fl      .L801DD928_ovl14
.L801DD910_ovl15:
/* 200500 801DD910 44812000 */   mtc1      $at, $f4
/* 200504 801DD914 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 200508 801DD918 44816000 */  mtc1       $at, $f12
.L801DD91C_ovl16:
/* 20050C 801DD91C 1000006C */  b          .L801DDAD0_ovl14
/* 200510 801DD920 00000000 */   nop
glabel func_801DD924_ovl12
/* 200514 801DD924 44812000 */  mtc1       $at, $f4
.L801DD928_ovl14:
/* 200518 801DD928 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 20051C 801DD92C 4604003C */  c.lt.s     $f0, $f4
/* 200520 801DD930 00000000 */  nop
/* 200524 801DD934 45020004 */  bc1fl      .L801DD948_ovl14
/* 200528 801DD938 44813000 */   mtc1      $at, $f6
/* 20052C 801DD93C 10000064 */  b          .L801DDAD0_ovl14
.L801DD940_ovl13:
/* 200530 801DD940 46001306 */   mov.s     $f12, $f2
/* 200534 801DD944 44813000 */  mtc1       $at, $f6
.L801DD948_ovl14:
/* 200538 801DD948 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 20053C 801DD94C 4606003C */  c.lt.s     $f0, $f6
glabel func_801DD950_ovl15
/* 200540 801DD950 00000000 */  nop
/* 200544 801DD954 45020005 */  bc1fl      func_801DD96C_ovl14
/* 200548 801DD958 44818000 */   mtc1      $at, $f16
/* 20054C 801DD95C 44806000 */  mtc1       $zero, $f12
/* 200550 801DD960 1000005B */  b          .L801DDAD0_ovl14
glabel func_801DD964_ovl17
/* 200554 801DD964 00000000 */   nop
/* 200558 801DD968 44818000 */  mtc1       $at, $f16
glabel func_801DD96C_ovl14
/* 20055C 801DD96C 3C014160 */  lui        $at, (0x41600000 >> 16)
/* 200560 801DD970 4610003C */  c.lt.s     $f0, $f16
/* 200564 801DD974 00000000 */  nop
/* 200568 801DD978 45020006 */  bc1fl      .L801DD994_ovl14
/* 20056C 801DD97C 44814000 */   mtc1      $at, $f8
/* 200570 801DD980 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* 200574 801DD984 44816000 */  mtc1       $at, $f12
/* 200578 801DD988 10000051 */  b          .L801DDAD0_ovl14
/* 20057C 801DD98C 00000000 */   nop
/* 200580 801DD990 44814000 */  mtc1       $at, $f8
.L801DD994_ovl14:
/* 200584 801DD994 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 200588 801DD998 4608003C */  c.lt.s     $f0, $f8
/* 20058C 801DD99C 00000000 */  nop
/* 200590 801DD9A0 45020006 */  bc1fl      .L801DD9BC_ovl16
/* 200594 801DD9A4 44817000 */   mtc1      $at, $f14
/* 200598 801DD9A8 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
.L801DD9AC_ovl10:
/* 20059C 801DD9AC 44816000 */  mtc1       $at, $f12
/* 2005A0 801DD9B0 10000047 */  b          .L801DDAD0_ovl14
/* 2005A4 801DD9B4 00000000 */   nop
/* 2005A8 801DD9B8 44817000 */  mtc1       $at, $f14
.L801DD9BC_ovl16:
/* 2005AC 801DD9BC 3C014190 */  lui        $at, (0x41900000 >> 16)
.L801DD9C0_ovl13:
/* 2005B0 801DD9C0 460E003C */  c.lt.s     $f0, $f14
.L801DD9C4_ovl13:
/* 2005B4 801DD9C4 00000000 */  nop
glabel func_801DD9C8_ovl11
/* 2005B8 801DD9C8 45020006 */  bc1fl      .L801DD9E4_ovl14
/* 2005BC 801DD9CC 44815000 */   mtc1      $at, $f10
/* 2005C0 801DD9D0 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
.L801DD9D4_ovl15:
/* 2005C4 801DD9D4 44816000 */  mtc1       $at, $f12
/* 2005C8 801DD9D8 1000003D */  b          .L801DDAD0_ovl14
.L801DD9DC_ovl9:
/* 2005CC 801DD9DC 00000000 */   nop
/* 2005D0 801DD9E0 44815000 */  mtc1       $at, $f10
.L801DD9E4_ovl14:
/* 2005D4 801DD9E4 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 2005D8 801DD9E8 460A003C */  c.lt.s     $f0, $f10
.L801DD9EC_ovl9:
/* 2005DC 801DD9EC 00000000 */  nop
/* 2005E0 801DD9F0 45020004 */  bc1fl      .L801DDA04_ovl14
/* 2005E4 801DD9F4 44819000 */   mtc1      $at, $f18
/* 2005E8 801DD9F8 10000035 */  b          .L801DDAD0_ovl14
glabel func_801DD9FC_ovl16
/* 2005EC 801DD9FC 46007306 */   mov.s     $f12, $f14
/* 2005F0 801DDA00 44819000 */  mtc1       $at, $f18
.L801DDA04_ovl14:
/* 2005F4 801DDA04 3C0141B0 */  lui        $at, (0x41B00000 >> 16)
/* 2005F8 801DDA08 4612003C */  c.lt.s     $f0, $f18
/* 2005FC 801DDA0C 00000000 */  nop
.L801DDA10_ovl9:
/* 200600 801DDA10 45020004 */  bc1fl      .L801DDA24_ovl14
/* 200604 801DDA14 44812000 */   mtc1      $at, $f4
/* 200608 801DDA18 1000002D */  b          .L801DDAD0_ovl14
/* 20060C 801DDA1C 46008306 */   mov.s     $f12, $f16
/* 200610 801DDA20 44812000 */  mtc1       $at, $f4
.L801DDA24_ovl14:
/* 200614 801DDA24 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
.L801DDA28_ovl15:
/* 200618 801DDA28 4604003C */  c.lt.s     $f0, $f4
/* 20061C 801DDA2C 00000000 */  nop
glabel func_801DDA30_ovl13
/* 200620 801DDA30 45020006 */  bc1fl      func_801DDA4C_ovl14
/* 200624 801DDA34 44817000 */   mtc1      $at, $f14
/* 200628 801DDA38 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 20062C 801DDA3C 44816000 */  mtc1       $at, $f12
.L801DDA40_ovl11:
/* 200630 801DDA40 10000023 */  b          .L801DDAD0_ovl14
/* 200634 801DDA44 00000000 */   nop
/* 200638 801DDA48 44817000 */  mtc1       $at, $f14
glabel func_801DDA4C_ovl14
/* 20063C 801DDA4C 3C0141D0 */  lui        $at, (0x41D00000 >> 16)
/* 200640 801DDA50 460E003C */  c.lt.s     $f0, $f14
/* 200644 801DDA54 00000000 */  nop
.L801DDA58_ovl9:
/* 200648 801DDA58 45020004 */  bc1fl      .L801DDA6C_ovl14
/* 20064C 801DDA5C 44813000 */   mtc1      $at, $f6
/* 200650 801DDA60 1000001B */  b          .L801DDAD0_ovl14
.L801DDA64_ovl15:
/* 200654 801DDA64 46001306 */   mov.s     $f12, $f2
/* 200658 801DDA68 44813000 */  mtc1       $at, $f6
.L801DDA6C_ovl14:
/* 20065C 801DDA6C 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* 200660 801DDA70 4606003C */  c.lt.s     $f0, $f6
/* 200664 801DDA74 00000000 */  nop
glabel func_801DDA78_ovl12
/* 200668 801DDA78 45020005 */  bc1fl      .L801DDA90_ovl15
/* 20066C 801DDA7C 44811000 */   mtc1      $at, $f2
/* 200670 801DDA80 44806000 */  mtc1       $zero, $f12
/* 200674 801DDA84 10000012 */  b          .L801DDAD0_ovl14
.L801DDA88_ovl9:
/* 200678 801DDA88 00000000 */   nop
.L801DDA8C_ovl10:
/* 20067C 801DDA8C 44811000 */  mtc1       $at, $f2
.L801DDA90_ovl15:
/* 200680 801DDA90 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
.L801DDA94_ovl10:
/* 200684 801DDA94 4602003C */  c.lt.s     $f0, $f2
glabel func_801DDA98_ovl16
/* 200688 801DDA98 00000000 */  nop
/* 20068C 801DDA9C 45020004 */  bc1fl      .L801DDAB0_ovl14
glabel func_801DDAA0_ovl10
/* 200690 801DDAA0 44814000 */   mtc1      $at, $f8
/* 200694 801DDAA4 1000000A */  b          .L801DDAD0_ovl14
/* 200698 801DDAA8 46001306 */   mov.s     $f12, $f2
/* 20069C 801DDAAC 44814000 */  mtc1       $at, $f8
.L801DDAB0_ovl14:
/* 2006A0 801DDAB0 00000000 */  nop
/* 2006A4 801DDAB4 4608003C */  c.lt.s     $f0, $f8
.L801DDAB8_ovl15:
/* 2006A8 801DDAB8 00000000 */  nop
/* 2006AC 801DDABC 45020004 */  bc1fl      .L801DDAD0_ovl14
/* 2006B0 801DDAC0 46009306 */   mov.s     $f12, $f18
.L801DDAC4_ovl13:
/* 2006B4 801DDAC4 10000002 */  b          .L801DDAD0_ovl14
glabel func_801DDAC8_ovl10
/* 2006B8 801DDAC8 46007306 */   mov.s     $f12, $f14
/* 2006BC 801DDACC 46009306 */  mov.s      $f12, $f18
.L801DDAD0_ovl14:
/* 2006C0 801DDAD0 0C077D60 */  jal        func_801DF580_ovl14
/* 2006C4 801DDAD4 00000000 */   nop
/* 2006C8 801DDAD8 3C040001 */  lui        $a0, (0x10441 >> 16)
glabel func_801DDADC_ovl13
/* 2006CC 801DDADC 0C02A806 */  jal        func_800AA018
/* 2006D0 801DDAE0 34840441 */   ori       $a0, $a0, (0x10441 & 0xFFFF)
/* 2006D4 801DDAE4 3C040001 */  lui        $a0, (0x10442 >> 16)
glabel func_801DDAE8_ovl12
/* 2006D8 801DDAE8 0C02A806 */  jal        func_800AA018
/* 2006DC 801DDAEC 34840442 */   ori       $a0, $a0, (0x10442 & 0xFFFF)
.L801DDAF0_ovl15:
/* 2006E0 801DDAF0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 2006E4 801DDAF4 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 2006E8 801DDAF8 3C19800F */  lui        $t9, %hi(D_800E9AA0)
/* 2006EC 801DDAFC 27399AA0 */  addiu      $t9, $t9, %lo(D_800E9AA0)
/* 2006F0 801DDB00 8C6F0000 */  lw         $t7, 0x0($v1)
/* 2006F4 801DDB04 3C0C801E */  lui        $t4, %hi(D_801D9CCC)
/* 2006F8 801DDB08 3C01800F */  lui        $at, %hi(D_800EA360)
/* 2006FC 801DDB0C 000F7080 */  sll        $t6, $t7, 2
/* 200700 801DDB10 01D91021 */  addu       $v0, $t6, $t9
/* 200704 801DDB14 8C490000 */  lw         $t1, 0x0($v0)
/* 200708 801DDB18 258C9CCC */  addiu      $t4, $t4, %lo(D_801D9CCC)
/* 20070C 801DDB1C 2404018B */  addiu      $a0, $zero, 0x18B
/* 200710 801DDB20 352A0008 */  ori        $t2, $t1, 0x8
/* 200714 801DDB24 AC4A0000 */  sw         $t2, 0x0($v0)
.L801DDB28_ovl10:
/* 200718 801DDB28 8C6B0000 */  lw         $t3, 0x0($v1)
/* 20071C 801DDB2C 000B6880 */  sll        $t5, $t3, 2
.L801DDB30_ovl12:
/* 200720 801DDB30 002D0821 */  addu       $at, $at, $t5
/* 200724 801DDB34 0C029D9E */  jal        play_sound
/* 200728 801DDB38 AC2CA360 */   sw        $t4, %lo(D_800EA360)($at)
/* 20072C 801DDB3C 0C02BC9F */  jal        func_800AF27C
/* 200730 801DDB40 00000000 */   nop
/* 200734 801DDB44 0C02BC9F */  jal        func_800AF27C
/* 200738 801DDB48 00000000 */   nop
/* 20073C 801DDB4C 0C02BC9F */  jal        func_800AF27C
.L801DDB50_ovl9:
/* 200740 801DDB50 00000000 */   nop
.L801DDB54_ovl13:
/* 200744 801DDB54 3C040001 */  lui        $a0, (0x10443 >> 16)
/* 200748 801DDB58 0C02A806 */  jal        func_800AA018
.L801DDB5C_ovl10:
/* 20074C 801DDB5C 34840443 */   ori       $a0, $a0, (0x10443 & 0xFFFF)
/* 200750 801DDB60 3C040001 */  lui        $a0, (0x10444 >> 16)
.L801DDB64_ovl16:
/* 200754 801DDB64 0C02A806 */  jal        func_800AA018
/* 200758 801DDB68 34840444 */   ori       $a0, $a0, (0x10444 & 0xFFFF)
/* 20075C 801DDB6C 0C002DAF */  jal        finish_current_thread
/* 200760 801DDB70 24040005 */   addiu     $a0, $zero, 0x5
.L801DDB74_ovl16:
/* 200764 801DDB74 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 200768 801DDB78 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 20076C 801DDB7C 3C19800F */  lui        $t9, %hi(D_800E9AA0)
/* 200770 801DDB80 27399AA0 */  addiu      $t9, $t9, %lo(D_800E9AA0)
.L801DDB84_ovl9:
/* 200774 801DDB84 8F0F0000 */  lw         $t7, 0x0($t8)
glabel func_801DDB88_ovl10
/* 200778 801DDB88 2401FFF7 */  addiu      $at, $zero, -0x9
glabel func_801DDB8C_ovl17
/* 20077C 801DDB8C 000F7080 */  sll        $t6, $t7, 2
.L801DDB90_ovl9:
/* 200780 801DDB90 01D91021 */  addu       $v0, $t6, $t9
.L801DDB94_ovl12:
/* 200784 801DDB94 8C490000 */  lw         $t1, 0x0($v0)
/* 200788 801DDB98 01215024 */  and        $t2, $t1, $at
glabel func_801DDB9C_ovl11
/* 20078C 801DDB9C 0C02BC9F */  jal        func_800AF27C
/* 200790 801DDBA0 AC4A0000 */   sw        $t2, 0x0($v0)
glabel func_801DDBA4_ovl11
/* 200794 801DDBA4 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
glabel func_801DDBA8_ovl15
/* 200798 801DDBA8 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
.L801DDBAC_ovl9:
/* 20079C 801DDBAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2007A0 801DDBB0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 2007A4 801DDBB4 8D8D0000 */  lw         $t5, 0x0($t4)
.L801DDBB8_ovl12:
/* 2007A8 801DDBB8 240B0001 */  addiu      $t3, $zero, 0x1
/* 2007AC 801DDBBC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2007B0 801DDBC0 000DC080 */  sll        $t8, $t5, 2
glabel func_801DDBC4_ovl12
/* 2007B4 801DDBC4 00380821 */  addu       $at, $at, $t8
.L801DDBC8_ovl13:
/* 2007B8 801DDBC8 03E00008 */  jr         $ra
/* 2007BC 801DDBCC AC2BDC50 */   sw        $t3, %lo(gEntityVtableIndexArray)($at)
