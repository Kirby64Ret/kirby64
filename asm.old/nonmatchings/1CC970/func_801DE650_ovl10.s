glabel func_801DE650_ovl10
/* 1CF3C0 801DE650 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1CF3C4 801DE654 3C01800D */  lui        $at, %hi(D_800D6B10)
.L801DE658_ovl14:
/* 1CF3C8 801DE658 C4206B10 */  lwc1       $f0, %lo(D_800D6B10)($at)
/* 1CF3CC 801DE65C AFBF002C */  sw         $ra, 0x2C($sp)
/* 1CF3D0 801DE660 AFB20028 */  sw         $s2, 0x28($sp)
.L801DE664_ovl14:
/* 1CF3D4 801DE664 AFB10024 */  sw         $s1, 0x24($sp)
/* 1CF3D8 801DE668 AFB00020 */  sw         $s0, 0x20($sp)
.L801DE66C_ovl12:
/* 1CF3DC 801DE66C F7B40018 */  sdc1       $f20, 0x18($sp)
glabel func_801DE670_ovl16
/* 1CF3E0 801DE670 AFA40030 */  sw         $a0, 0x30($sp)
/* 1CF3E4 801DE674 0C02BB30 */  jal        func_800AECC0
glabel func_801DE678_ovl12
/* 1CF3E8 801DE678 46000300 */   add.s     $f12, $f0, $f0
/* 1CF3EC 801DE67C 3C01800D */  lui        $at, %hi(D_800D6B10)
.L801DE680_ovl11:
/* 1CF3F0 801DE680 C4206B10 */  lwc1       $f0, %lo(D_800D6B10)($at)
/* 1CF3F4 801DE684 0C02BB48 */  jal        func_800AED20
/* 1CF3F8 801DE688 46000300 */   add.s     $f12, $f0, $f0
/* 1CF3FC 801DE68C 3C108005 */  lui        $s0, %hi(D_8004A7C4)
.L801DE690_ovl17:
/* 1CF400 801DE690 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 1CF404 801DE694 8E020000 */  lw         $v0, 0x0($s0)
/* 1CF408 801DE698 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1CF40C 801DE69C 240E0007 */  addiu      $t6, $zero, 0x7
.L801DE6A0_ovl14:
/* 1CF410 801DE6A0 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1CF414 801DE6A4 3C03800E */  lui        $v1, %hi(D_800E1B50)
.L801DE6A8_ovl14:
/* 1CF418 801DE6A8 24631B50 */  addiu      $v1, $v1, %lo(D_800E1B50)
.L801DE6AC_ovl14:
/* 1CF41C 801DE6AC 000FC080 */  sll        $t8, $t7, 2
/* 1CF420 801DE6B0 00380821 */  addu       $at, $at, $t8
/* 1CF424 801DE6B4 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
.L801DE6B8_ovl17:
/* 1CF428 801DE6B8 8C480000 */  lw         $t0, 0x0($v0)
/* 1CF42C 801DE6BC 3C19801F */  lui        $t9, %hi(func_801F39E4_ovl9 + 0x34)
/* 1CF430 801DE6C0 27393A18 */  addiu      $t9, $t9, %lo(func_801F39E4_ovl9 + 0x34)
/* 1CF434 801DE6C4 00084880 */  sll        $t1, $t0, 2
glabel func_801DE6C8_ovl14
/* 1CF438 801DE6C8 00695021 */  addu       $t2, $v1, $t1
/* 1CF43C 801DE6CC 8D4B0000 */  lw         $t3, 0x0($t2)
.L801DE6D0_ovl12:
/* 1CF440 801DE6D0 3C0C801F */  lui        $t4, %hi(D_801F4094_ovl10)
/* 1CF444 801DE6D4 258C4094 */  addiu      $t4, $t4, %lo(D_801F4094_ovl10)
/* 1CF448 801DE6D8 AD79008C */  sw         $t9, 0x8C($t3)
.L801DE6DC_ovl15:
/* 1CF44C 801DE6DC 8E0D0000 */  lw         $t5, 0x0($s0)
.L801DE6E0_ovl9:
/* 1CF450 801DE6E0 8DAF0000 */  lw         $t7, 0x0($t5)
.L801DE6E4_ovl12:
/* 1CF454 801DE6E4 000F7080 */  sll        $t6, $t7, 2
/* 1CF458 801DE6E8 006EC021 */  addu       $t8, $v1, $t6
/* 1CF45C 801DE6EC 8F080000 */  lw         $t0, 0x0($t8)
/* 1CF460 801DE6F0 0C02CCFD */  jal        func_800B33F4
/* 1CF464 801DE6F4 AD0C0098 */   sw        $t4, 0x98($t0)
.L801DE6F8_ovl15:
/* 1CF468 801DE6F8 8E0A0000 */  lw         $t2, 0x0($s0)
/* 1CF46C 801DE6FC 3C12800F */  lui        $s2, %hi(D_800E8920)
.L801DE700_ovl11:
/* 1CF470 801DE700 26528920 */  addiu      $s2, $s2, %lo(D_800E8920)
/* 1CF474 801DE704 8D590000 */  lw         $t9, 0x0($t2)
.L801DE708_ovl9:
/* 1CF478 801DE708 24090001 */  addiu      $t1, $zero, 0x1
/* 1CF47C 801DE70C 3C040001 */  lui        $a0, (0x102C9 >> 16)
/* 1CF480 801DE710 00195880 */  sll        $t3, $t9, 2
.L801DE714_ovl13:
/* 1CF484 801DE714 024B6821 */  addu       $t5, $s2, $t3
/* 1CF488 801DE718 ADA90000 */  sw         $t1, 0x0($t5)
glabel func_801DE71C_ovl15
/* 1CF48C 801DE71C 0C02A806 */  jal        func_800AA018
/* 1CF490 801DE720 348402C9 */   ori       $a0, $a0, (0x102C9 & 0xFFFF)
glabel func_801DE724_ovl14
/* 1CF494 801DE724 3C040001 */  lui        $a0, (0x102C8 >> 16)
.L801DE728_ovl11:
/* 1CF498 801DE728 0C02A806 */  jal        func_800AA018
/* 1CF49C 801DE72C 348402C8 */   ori       $a0, $a0, (0x102C8 & 0xFFFF)
.L801DE730_ovl9:
/* 1CF4A0 801DE730 8E020000 */  lw         $v0, 0x0($s0)
.L801DE734_ovl9:
/* 1CF4A4 801DE734 3C04800E */  lui        $a0, %hi(gEntitiesNextPosYArray)
/* 1CF4A8 801DE738 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 1CF4AC 801DE73C 8C430000 */  lw         $v1, 0x0($v0)
.L801DE740_ovl14:
/* 1CF4B0 801DE740 44813000 */  mtc1       $at, $f6
/* 1CF4B4 801DE744 24842790 */  addiu      $a0, $a0, %lo(gEntitiesNextPosYArray)
/* 1CF4B8 801DE748 00031880 */  sll        $v1, $v1, 2
glabel func_801DE74C_ovl17
/* 1CF4BC 801DE74C 00837821 */  addu       $t7, $a0, $v1
.L801DE750_ovl16:
/* 1CF4C0 801DE750 3C014220 */  lui        $at, (0x42200000 >> 16)
/* 1CF4C4 801DE754 44815000 */  mtc1       $at, $f10
glabel func_801DE758_ovl11
/* 1CF4C8 801DE758 C5E80000 */  lwc1       $f8, 0x0($t7)
/* 1CF4CC 801DE75C C4840000 */  lwc1       $f4, 0x0($a0)
/* 1CF4D0 801DE760 3C014370 */  lui        $at, (0x43700000 >> 16)
.L801DE764_ovl16:
/* 1CF4D4 801DE764 460A4300 */  add.s      $f12, $f8, $f10
/* 1CF4D8 801DE768 46062000 */  add.s      $f0, $f4, $f6
/* 1CF4DC 801DE76C 460C003C */  c.lt.s     $f0, $f12
/* 1CF4E0 801DE770 00000000 */  nop
/* 1CF4E4 801DE774 45020005 */  bc1fl      .L801DE78C_ovl10
/* 1CF4E8 801DE778 460C0081 */   sub.s     $f2, $f0, $f12
/* 1CF4EC 801DE77C 460C0081 */  sub.s      $f2, $f0, $f12
.L801DE780_ovl12:
/* 1CF4F0 801DE780 10000002 */  b          .L801DE78C_ovl10
/* 1CF4F4 801DE784 46001087 */   neg.s     $f2, $f2
.L801DE788_ovl14:
/* 1CF4F8 801DE788 460C0081 */  sub.s      $f2, $f0, $f12
.L801DE78C_ovl10:
/* 1CF4FC 801DE78C 44810000 */  mtc1       $at, $f0
glabel func_801DE790_ovl12
/* 1CF500 801DE790 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* 1CF504 801DE794 44818000 */  mtc1       $at, $f16
/* 1CF508 801DE798 4602003C */  c.lt.s     $f0, $f2
/* 1CF50C 801DE79C 00000000 */  nop
.L801DE7A0_ovl17:
/* 1CF510 801DE7A0 45020003 */  bc1fl      .L801DE7B0_ovl10
.L801DE7A4_ovl15:
/* 1CF514 801DE7A4 4610103C */   c.lt.s    $f2, $f16
/* 1CF518 801DE7A8 46000086 */  mov.s      $f2, $f0
.L801DE7AC_ovl9:
/* 1CF51C 801DE7AC 4610103C */  c.lt.s     $f2, $f16
.L801DE7B0_ovl10:
/* 1CF520 801DE7B0 00000000 */  nop
.L801DE7B4_ovl11:
/* 1CF524 801DE7B4 45000003 */  bc1f       .L801DE7C4_ovl10
/* 1CF528 801DE7B8 3C0142A0 */   lui       $at, (0x42A00000 >> 16)
glabel func_801DE7BC_ovl11
/* 1CF52C 801DE7BC 44811000 */  mtc1       $at, $f2
/* 1CF530 801DE7C0 00000000 */  nop
.L801DE7C4_ovl10:
/* 1CF534 801DE7C4 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
glabel func_801DE7C8_ovl15
/* 1CF538 801DE7C8 44816000 */  mtc1       $at, $f12
/* 1CF53C 801DE7CC 3C014370 */  lui        $at, (0x43700000 >> 16)
/* 1CF540 801DE7D0 44819000 */  mtc1       $at, $f18
/* 1CF544 801DE7D4 02437021 */  addu       $t6, $s2, $v1
.L801DE7D8_ovl9:
/* 1CF548 801DE7D8 ADC00000 */  sw         $zero, 0x0($t6)
/* 1CF54C 801DE7DC 46121003 */  div.s      $f0, $f2, $f18
/* 1CF550 801DE7E0 8C580000 */  lw         $t8, 0x0($v0)
/* 1CF554 801DE7E4 3C01C000 */  lui        $at, (0xC0000000 >> 16)
glabel func_801DE7E8_ovl12
/* 1CF558 801DE7E8 44813000 */  mtc1       $at, $f6
/* 1CF55C 801DE7EC 3C11800E */  lui        $s1, %hi(D_800E3210)
/* 1CF560 801DE7F0 26313210 */  addiu      $s1, $s1, %lo(D_800E3210)
.L801DE7F4_ovl9:
/* 1CF564 801DE7F4 00186080 */  sll        $t4, $t8, 2
/* 1CF568 801DE7F8 022C4021 */  addu       $t0, $s1, $t4
/* 1CF56C 801DE7FC 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1CF570 801DE800 4480A000 */  mtc1       $zero, $f20
.L801DE804_ovl17:
/* 1CF574 801DE804 46006102 */  mul.s      $f4, $f12, $f0
/* 1CF578 801DE808 E5040000 */  swc1       $f4, 0x0($t0)
/* 1CF57C 801DE80C 46003202 */  mul.s      $f8, $f6, $f0
/* 1CF580 801DE810 8C4A0000 */  lw         $t2, 0x0($v0)
glabel func_801DE814_ovl9
/* 1CF584 801DE814 000AC880 */  sll        $t9, $t2, 2
/* 1CF588 801DE818 00390821 */  addu       $at, $at, $t9
/* 1CF58C 801DE81C E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
/* 1CF590 801DE820 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1CF594 801DE824 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1CF598 801DE828 000B4880 */  sll        $t1, $t3, 2
/* 1CF59C 801DE82C 00290821 */  addu       $at, $at, $t1
/* 1CF5A0 801DE830 E42C3C90 */  swc1       $f12, %lo(D_800E3C90)($at)
/* 1CF5A4 801DE834 8C4D0000 */  lw         $t5, 0x0($v0)
.L801DE838_ovl17:
/* 1CF5A8 801DE838 000D7880 */  sll        $t7, $t5, 2
/* 1CF5AC 801DE83C 022F7021 */  addu       $t6, $s1, $t7
glabel func_801DE840_ovl16
/* 1CF5B0 801DE840 C5CA0000 */  lwc1       $f10, 0x0($t6)
.L801DE844_ovl17:
/* 1CF5B4 801DE844 460AA03C */  c.lt.s     $f20, $f10
/* 1CF5B8 801DE848 00000000 */  nop
/* 1CF5BC 801DE84C 4500000C */  bc1f       .L801DE880_ovl10
glabel func_801DE850_ovl17
/* 1CF5C0 801DE850 00000000 */   nop
.L801DE854_ovl10:
/* 1CF5C4 801DE854 0C002DAF */  jal        finish_current_thread
/* 1CF5C8 801DE858 24040001 */   addiu     $a0, $zero, 0x1
/* 1CF5CC 801DE85C 8E180000 */  lw         $t8, 0x0($s0)
/* 1CF5D0 801DE860 8F0C0000 */  lw         $t4, 0x0($t8)
/* 1CF5D4 801DE864 000C4080 */  sll        $t0, $t4, 2
/* 1CF5D8 801DE868 02285021 */  addu       $t2, $s1, $t0
/* 1CF5DC 801DE86C C5500000 */  lwc1       $f16, 0x0($t2)
/* 1CF5E0 801DE870 4610A03C */  c.lt.s     $f20, $f16
/* 1CF5E4 801DE874 00000000 */  nop
/* 1CF5E8 801DE878 4501FFF6 */  bc1t       .L801DE854_ovl10
/* 1CF5EC 801DE87C 00000000 */   nop
.L801DE880_ovl10:
/* 1CF5F0 801DE880 0C029D9E */  jal        play_sound
.L801DE884_ovl11:
/* 1CF5F4 801DE884 240401D9 */   addiu     $a0, $zero, 0x1D9
.L801DE888_ovl12:
/* 1CF5F8 801DE888 3C040001 */  lui        $a0, (0x102CB >> 16)
/* 1CF5FC 801DE88C 0C02A806 */  jal        func_800AA018
/* 1CF600 801DE890 348402CB */   ori       $a0, $a0, (0x102CB & 0xFFFF)
/* 1CF604 801DE894 3C040001 */  lui        $a0, (0x102CA >> 16)
.L801DE898_ovl14:
/* 1CF608 801DE898 0C02A855 */  jal        func_800AA154
.L801DE89C_ovl12:
/* 1CF60C 801DE89C 348402CA */   ori       $a0, $a0, (0x102CA & 0xFFFF)
.L801DE8A0_ovl15:
/* 1CF610 801DE8A0 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1CF614 801DE8A4 0C02BB30 */  jal        func_800AECC0
glabel func_801DE8A8_ovl12
/* 1CF618 801DE8A8 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1CF61C 801DE8AC 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1CF620 801DE8B0 0C02BB48 */  jal        func_800AED20
/* 1CF624 801DE8B4 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1CF628 801DE8B8 3C040001 */  lui        $a0, (0x102CD >> 16)
/* 1CF62C 801DE8BC 0C02A806 */  jal        func_800AA018
/* 1CF630 801DE8C0 348402CD */   ori       $a0, $a0, (0x102CD & 0xFFFF)
/* 1CF634 801DE8C4 3C040001 */  lui        $a0, (0x102CC >> 16)
/* 1CF638 801DE8C8 0C02A806 */  jal        func_800AA018
/* 1CF63C 801DE8CC 348402CC */   ori       $a0, $a0, (0x102CC & 0xFFFF)
glabel func_801DE8D0_ovl11
/* 1CF640 801DE8D0 8E190000 */  lw         $t9, 0x0($s0)
/* 1CF644 801DE8D4 8F2B0000 */  lw         $t3, 0x0($t9)
/* 1CF648 801DE8D8 000B4880 */  sll        $t1, $t3, 2
glabel func_801DE8DC_ovl16
/* 1CF64C 801DE8DC 02496821 */  addu       $t5, $s2, $t1
/* 1CF650 801DE8E0 8DAF0000 */  lw         $t7, 0x0($t5)
/* 1CF654 801DE8E4 55E0000B */  bnel       $t7, $zero, .L801DE914_ovl14
/* 1CF658 801DE8E8 4405A000 */   mfc1      $a1, $f20
.L801DE8EC_ovl10:
/* 1CF65C 801DE8EC 0C002DAF */  jal        finish_current_thread
/* 1CF660 801DE8F0 24040001 */   addiu     $a0, $zero, 0x1
/* 1CF664 801DE8F4 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1CF668 801DE8F8 8DD80000 */  lw         $t8, 0x0($t6)
/* 1CF66C 801DE8FC 00186080 */  sll        $t4, $t8, 2
/* 1CF670 801DE900 024C4021 */  addu       $t0, $s2, $t4
/* 1CF674 801DE904 8D0A0000 */  lw         $t2, 0x0($t0)
/* 1CF678 801DE908 1140FFF8 */  beqz       $t2, .L801DE8EC_ovl10
/* 1CF67C 801DE90C 00000000 */   nop
/* 1CF680 801DE910 4405A000 */  mfc1       $a1, $f20
.L801DE914_ovl14:
/* 1CF684 801DE914 0C076FDC */  jal        func_801DBF70_ovl10
/* 1CF688 801DE918 24040005 */   addiu     $a0, $zero, 0x5
/* 1CF68C 801DE91C 0C03EE45 */  jal        func_800FB914
/* 1CF690 801DE920 24040002 */   addiu     $a0, $zero, 0x2
/* 1CF694 801DE924 0C029D9E */  jal        play_sound
/* 1CF698 801DE928 240401D6 */   addiu     $a0, $zero, 0x1D6
/* 1CF69C 801DE92C 8E020000 */  lw         $v0, 0x0($s0)
/* 1CF6A0 801DE930 3C04800E */  lui        $a0, %hi(D_800E3910)
/* 1CF6A4 801DE934 24843910 */  addiu      $a0, $a0, %lo(D_800E3910)
/* 1CF6A8 801DE938 8C590000 */  lw         $t9, 0x0($v0)
/* 1CF6AC 801DE93C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1CF6B0 801DE940 3C05800E */  lui        $a1, %hi(D_800E3E50)
glabel func_801DE944_ovl12
/* 1CF6B4 801DE944 00195880 */  sll        $t3, $t9, 2
/* 1CF6B8 801DE948 008B4821 */  addu       $t1, $a0, $t3
/* 1CF6BC 801DE94C E5340000 */  swc1       $f20, 0x0($t1)
/* 1CF6C0 801DE950 8C430000 */  lw         $v1, 0x0($v0)
/* 1CF6C4 801DE954 24A53E50 */  addiu      $a1, $a1, %lo(D_800E3E50)
/* 1CF6C8 801DE958 3C0642A0 */  lui        $a2, (0x42A00000 >> 16)
/* 1CF6CC 801DE95C 00031880 */  sll        $v1, $v1, 2
/* 1CF6D0 801DE960 00836821 */  addu       $t5, $a0, $v1
/* 1CF6D4 801DE964 C5A00000 */  lwc1       $f0, 0x0($t5)
/* 1CF6D8 801DE968 00230821 */  addu       $at, $at, $v1
/* 1CF6DC 801DE96C 24040006 */  addiu      $a0, $zero, 0x6
/* 1CF6E0 801DE970 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 1CF6E4 801DE974 8C4F0000 */  lw         $t7, 0x0($v0)
.L801DE978_ovl13:
/* 1CF6E8 801DE978 3C01800E */  lui        $at, %hi(D_800E3590)
/* 1CF6EC 801DE97C 000F7080 */  sll        $t6, $t7, 2
/* 1CF6F0 801DE980 002E0821 */  addu       $at, $at, $t6
/* 1CF6F4 801DE984 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 1CF6F8 801DE988 8C580000 */  lw         $t8, 0x0($v0)
/* 1CF6FC 801DE98C 3C01800E */  lui        $at, %hi(D_800E33D0)
.L801DE990_ovl14:
/* 1CF700 801DE990 00186080 */  sll        $t4, $t8, 2
/* 1CF704 801DE994 002C0821 */  addu       $at, $at, $t4
.L801DE998_ovl11:
/* 1CF708 801DE998 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
.L801DE99C_ovl15:
/* 1CF70C 801DE99C 8C480000 */  lw         $t0, 0x0($v0)
/* 1CF710 801DE9A0 3C01800E */  lui        $at, %hi(D_800E3050)
.L801DE9A4_ovl12:
/* 1CF714 801DE9A4 00085080 */  sll        $t2, $t0, 2
glabel func_801DE9A8_ovl17
/* 1CF718 801DE9A8 022AC821 */  addu       $t9, $s1, $t2
/* 1CF71C 801DE9AC E7200000 */  swc1       $f0, 0x0($t9)
/* 1CF720 801DE9B0 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1CF724 801DE9B4 000B4880 */  sll        $t1, $t3, 2
.L801DE9B8_ovl12:
/* 1CF728 801DE9B8 00290821 */  addu       $at, $at, $t1
.L801DE9BC_ovl11:
/* 1CF72C 801DE9BC E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 1CF730 801DE9C0 8C4D0000 */  lw         $t5, 0x0($v0)
glabel func_801DE9C4_ovl12
/* 1CF734 801DE9C4 3C01801F */  lui        $at, %hi(func_801F49B4_ovl9 + 0x20)
glabel func_801DE9C8_ovl11
/* 1CF738 801DE9C8 C43249D4 */  lwc1       $f18, %lo(func_801F49B4_ovl9 + 0x20)($at)
/* 1CF73C 801DE9CC 000D7880 */  sll        $t7, $t5, 2
.L801DE9D0_ovl13:
/* 1CF740 801DE9D0 00AF7021 */  addu       $t6, $a1, $t7
/* 1CF744 801DE9D4 E5D20000 */  swc1       $f18, 0x0($t6)
/* 1CF748 801DE9D8 8C430000 */  lw         $v1, 0x0($v0)
/* 1CF74C 801DE9DC 3C01800E */  lui        $at, %hi(D_800E3C90)
.L801DE9E0_ovl17:
/* 1CF750 801DE9E0 00031880 */  sll        $v1, $v1, 2
/* 1CF754 801DE9E4 00A3C021 */  addu       $t8, $a1, $v1
/* 1CF758 801DE9E8 C7020000 */  lwc1       $f2, 0x0($t8)
/* 1CF75C 801DE9EC 00230821 */  addu       $at, $at, $v1
/* 1CF760 801DE9F0 00002825 */  or         $a1, $zero, $zero
/* 1CF764 801DE9F4 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 1CF768 801DE9F8 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1CF76C 801DE9FC 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 1CF770 801DEA00 000C4080 */  sll        $t0, $t4, 2
/* 1CF774 801DEA04 00280821 */  addu       $at, $at, $t0
/* 1CF778 801DEA08 E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
.L801DEA0C_ovl11:
/* 1CF77C 801DEA0C 8C4A0000 */  lw         $t2, 0x0($v0)
glabel func_801DEA10_ovl15
/* 1CF780 801DEA10 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1CF784 801DEA14 44812000 */  mtc1       $at, $f4
/* 1CF788 801DEA18 3C01800E */  lui        $at, %hi(D_800E6A10)
glabel func_801DEA1C_ovl11
/* 1CF78C 801DEA1C 000AC880 */  sll        $t9, $t2, 2
/* 1CF790 801DEA20 00390821 */  addu       $at, $at, $t9
/* 1CF794 801DEA24 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* 1CF798 801DEA28 46062032 */  c.eq.s     $f4, $f6
/* 1CF79C 801DEA2C 00000000 */  nop
.L801DEA30_ovl12:
/* 1CF7A0 801DEA30 45000003 */  bc1f       .L801DEA40_ovl10
/* 1CF7A4 801DEA34 00000000 */   nop
/* 1CF7A8 801DEA38 10000001 */  b          .L801DEA40_ovl10
/* 1CF7AC 801DEA3C 24050001 */   addiu     $a1, $zero, 0x1
.L801DEA40_ovl10:
/* 1CF7B0 801DEA40 0C06B328 */  jal        func_801ACCA0
/* 1CF7B4 801DEA44 3C074170 */   lui       $a3, (0x41700000 >> 16)
/* 1CF7B8 801DEA48 3C040001 */  lui        $a0, (0x102CF >> 16)
/* 1CF7BC 801DEA4C 0C02A806 */  jal        func_800AA018
/* 1CF7C0 801DEA50 348402CF */   ori       $a0, $a0, (0x102CF & 0xFFFF)
/* 1CF7C4 801DEA54 3C040001 */  lui        $a0, (0x102CE >> 16)
.L801DEA58_ovl14:
/* 1CF7C8 801DEA58 0C02A855 */  jal        func_800AA154
glabel func_801DEA5C_ovl17
/* 1CF7CC 801DEA5C 348402CE */   ori       $a0, $a0, (0x102CE & 0xFFFF)
/* 1CF7D0 801DEA60 8E090000 */  lw         $t1, 0x0($s0)
/* 1CF7D4 801DEA64 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1CF7D8 801DEA68 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1CF7DC 801DEA6C 8D2D0000 */  lw         $t5, 0x0($t1)
/* 1CF7E0 801DEA70 240B0002 */  addiu      $t3, $zero, 0x2
/* 1CF7E4 801DEA74 8FB00020 */  lw         $s0, 0x20($sp)
/* 1CF7E8 801DEA78 000D7880 */  sll        $t7, $t5, 2
/* 1CF7EC 801DEA7C 002F0821 */  addu       $at, $at, $t7
/* 1CF7F0 801DEA80 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1CF7F4 801DEA84 8FB10024 */  lw         $s1, 0x24($sp)
/* 1CF7F8 801DEA88 8FB20028 */  lw         $s2, 0x28($sp)
/* 1CF7FC 801DEA8C AC2BDC50 */  sw         $t3, %lo(gEntityVtableIndexArray)($at)
/* 1CF800 801DEA90 03E00008 */  jr         $ra
glabel func_801DEA94_ovl16
/* 1CF804 801DEA94 27BD0030 */   addiu     $sp, $sp, 0x30
