glabel func_801EC4B4_ovl16
/* 222764 801EC4B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 222768 801EC4B8 AFB10020 */  sw         $s1, 0x20($sp)
/* 22276C 801EC4BC 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 222770 801EC4C0 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 222774 801EC4C4 8E2E0000 */  lw         $t6, 0x0($s1)
/* 222778 801EC4C8 AFBF0024 */  sw         $ra, 0x24($sp)
glabel func_801EC4CC_ovl10
/* 22277C 801EC4CC AFB0001C */  sw         $s0, 0x1C($sp)
/* 222780 801EC4D0 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 222784 801EC4D4 AFA40028 */  sw         $a0, 0x28($sp)
/* 222788 801EC4D8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 22278C 801EC4DC 3C04800E */  lui        $a0, %hi(D_800E1B50)
/* 222790 801EC4E0 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 222794 801EC4E4 000FC080 */  sll        $t8, $t7, 2
/* 222798 801EC4E8 00982021 */  addu       $a0, $a0, $t8
/* 22279C 801EC4EC 8C841B50 */  lw         $a0, %lo(D_800E1B50)($a0)
/* 2227A0 801EC4F0 4481A000 */  mtc1       $at, $f20
/* 2227A4 801EC4F4 3C06800E */  lui        $a2, %hi(D_800E0D50)
/* 2227A8 801EC4F8 8C990080 */  lw         $t9, 0x80($a0)
/* 2227AC 801EC4FC 24C60D50 */  addiu      $a2, $a2, %lo(D_800E0D50)
/* 2227B0 801EC500 3C05800E */  lui        $a1, %hi(D_800E17D0)
/* 2227B4 801EC504 E7340010 */  swc1       $f20, 0x10($t9)
/* 2227B8 801EC508 8E220000 */  lw         $v0, 0x0($s1)
/* 2227BC 801EC50C 24A517D0 */  addiu      $a1, $a1, %lo(D_800E17D0)
/* 2227C0 801EC510 3C07800F */  lui        $a3, %hi(D_800E9020)
/* 2227C4 801EC514 8C430000 */  lw         $v1, 0x0($v0)
/* 2227C8 801EC518 24E79020 */  addiu      $a3, $a3, %lo(D_800E9020)
.L801EC51C_ovl10:
/* 2227CC 801EC51C 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 2227D0 801EC520 00031880 */  sll        $v1, $v1, 2
/* 2227D4 801EC524 00C34021 */  addu       $t0, $a2, $v1
/* 2227D8 801EC528 8D090000 */  lw         $t1, 0x0($t0)
.L801EC52C_ovl10:
/* 2227DC 801EC52C 00A36021 */  addu       $t4, $a1, $v1
/* 2227E0 801EC530 00095080 */  sll        $t2, $t1, 2
/* 2227E4 801EC534 00AA5821 */  addu       $t3, $a1, $t2
/* 2227E8 801EC538 C5640000 */  lwc1       $f4, 0x0($t3)
/* 2227EC 801EC53C 3C0A800B */  lui        $t2, %hi(func_800B7560)
/* 2227F0 801EC540 254A7560 */  addiu      $t2, $t2, %lo(func_800B7560)
.L801EC544_ovl10:
/* 2227F4 801EC544 E5840000 */  swc1       $f4, 0x0($t4)
/* 2227F8 801EC548 8C430000 */  lw         $v1, 0x0($v0)
/* 2227FC 801EC54C 00031880 */  sll        $v1, $v1, 2
.L801EC550_ovl10:
/* 222800 801EC550 00C36821 */  addu       $t5, $a2, $v1
/* 222804 801EC554 8DAE0000 */  lw         $t6, 0x0($t5)
/* 222808 801EC558 00E3C821 */  addu       $t9, $a3, $v1
/* 22280C 801EC55C 3C0D801F */  lui        $t5, %hi(func_801EC7E4_ovl16)
/* 222810 801EC560 000E7880 */  sll        $t7, $t6, 2
/* 222814 801EC564 00EFC021 */  addu       $t8, $a3, $t7
/* 222818 801EC568 C7060000 */  lwc1       $f6, 0x0($t8)
/* 22281C 801EC56C 25ADC7E4 */  addiu      $t5, $t5, %lo(func_801EC7E4_ovl16)
/* 222820 801EC570 E7260000 */  swc1       $f6, 0x0($t9)
/* 222824 801EC574 8C480000 */  lw         $t0, 0x0($v0)
.L801EC578_ovl10:
/* 222828 801EC578 00084880 */  sll        $t1, $t0, 2
/* 22282C 801EC57C 00290821 */  addu       $at, $at, $t1
/* 222830 801EC580 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 222834 801EC584 8C4B0000 */  lw         $t3, 0x0($v0)
/* 222838 801EC588 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 22283C 801EC58C 000B6080 */  sll        $t4, $t3, 2
/* 222840 801EC590 002C0821 */  addu       $at, $at, $t4
/* 222844 801EC594 AC2AEF90 */  sw         $t2, %lo(D_800DEF90)($at)
glabel func_801EC598_ovl9
/* 222848 801EC598 8C4E0000 */  lw         $t6, 0x0($v0)
/* 22284C 801EC59C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 222850 801EC5A0 000E7880 */  sll        $t7, $t6, 2
/* 222854 801EC5A4 002F0821 */  addu       $at, $at, $t7
/* 222858 801EC5A8 AC2DF150 */  sw         $t5, %lo(D_800DF150)($at)
/* 22285C 801EC5AC 8C580000 */  lw         $t8, 0x0($v0)
/* 222860 801EC5B0 3C01800F */  lui        $at, %hi(D_800E8920)
/* 222864 801EC5B4 0018C880 */  sll        $t9, $t8, 2
/* 222868 801EC5B8 00390821 */  addu       $at, $at, $t9
/* 22286C 801EC5BC 0C02CCFD */  jal        func_800B33F4
/* 222870 801EC5C0 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 222874 801EC5C4 8E220000 */  lw         $v0, 0x0($s1)
.L801EC5C8_ovl10:
/* 222878 801EC5C8 3C04800F */  lui        $a0, %hi(D_800E98E0)
/* 22287C 801EC5CC 3C10800D */  lui        $s0, %hi(D_800D7098)
/* 222880 801EC5D0 8C430000 */  lw         $v1, 0x0($v0)
/* 222884 801EC5D4 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
/* 222888 801EC5D8 24010001 */  addiu      $at, $zero, 0x1
/* 22288C 801EC5DC 00031880 */  sll        $v1, $v1, 2
/* 222890 801EC5E0 00832021 */  addu       $a0, $a0, $v1
/* 222894 801EC5E4 8C8498E0 */  lw         $a0, %lo(D_800E98E0)($a0)
/* 222898 801EC5E8 5080000B */  beql       $a0, $zero, .L801EC618_ovl16
/* 22289C 801EC5EC 8E080010 */   lw        $t0, 0x10($s0)
/* 2228A0 801EC5F0 10810008 */  beq        $a0, $at, .L801EC614_ovl16
/* 2228A4 801EC5F4 24010002 */   addiu     $at, $zero, 0x2
/* 2228A8 801EC5F8 10810014 */  beq        $a0, $at, .L801EC64C_ovl16
/* 2228AC 801EC5FC 3C10800D */   lui       $s0, %hi(D_800D7098)
/* 2228B0 801EC600 24010003 */  addiu      $at, $zero, 0x3
/* 2228B4 801EC604 10810011 */  beq        $a0, $at, .L801EC64C_ovl16
/* 2228B8 801EC608 00000000 */   nop
/* 2228BC 801EC60C 1000000F */  b          .L801EC64C_ovl16
/* 2228C0 801EC610 00000000 */   nop
.L801EC614_ovl16:
/* 2228C4 801EC614 8E080010 */  lw         $t0, 0x10($s0)
.L801EC618_ovl16:
/* 2228C8 801EC618 29010002 */  slti       $at, $t0, 0x2
/* 2228CC 801EC61C 5020001A */  beql       $at, $zero, .L801EC688_ovl16
/* 2228D0 801EC620 44804000 */   mtc1      $zero, $f8
.L801EC624_ovl16:
/* 2228D4 801EC624 0C002DAF */  jal        finish_current_thread
/* 2228D8 801EC628 24040001 */   addiu     $a0, $zero, 0x1
/* 2228DC 801EC62C 8E090010 */  lw         $t1, 0x10($s0)
/* 2228E0 801EC630 29210002 */  slti       $at, $t1, 0x2
/* 2228E4 801EC634 1420FFFB */  bnez       $at, .L801EC624_ovl16
/* 2228E8 801EC638 00000000 */   nop
.L801EC63C_ovl10:
/* 2228EC 801EC63C 8E220000 */  lw         $v0, 0x0($s1)
/* 2228F0 801EC640 8C430000 */  lw         $v1, 0x0($v0)
/* 2228F4 801EC644 1000000F */  b          .L801EC684_ovl16
/* 2228F8 801EC648 00031880 */   sll       $v1, $v1, 2
.L801EC64C_ovl16:
/* 2228FC 801EC64C 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
/* 222900 801EC650 8E0B0010 */  lw         $t3, 0x10($s0)
/* 222904 801EC654 29610003 */  slti       $at, $t3, 0x3
/* 222908 801EC658 5020000B */  beql       $at, $zero, .L801EC688_ovl16
/* 22290C 801EC65C 44804000 */   mtc1      $zero, $f8
.L801EC660_ovl16:
/* 222910 801EC660 0C002DAF */  jal        finish_current_thread
/* 222914 801EC664 24040001 */   addiu     $a0, $zero, 0x1
/* 222918 801EC668 8E0A0010 */  lw         $t2, 0x10($s0)
.L801EC66C_ovl10:
/* 22291C 801EC66C 29410003 */  slti       $at, $t2, 0x3
/* 222920 801EC670 1420FFFB */  bnez       $at, .L801EC660_ovl16
/* 222924 801EC674 00000000 */   nop
/* 222928 801EC678 8E220000 */  lw         $v0, 0x0($s1)
/* 22292C 801EC67C 8C430000 */  lw         $v1, 0x0($v0)
/* 222930 801EC680 00031880 */  sll        $v1, $v1, 2
.L801EC684_ovl16:
/* 222934 801EC684 44804000 */  mtc1       $zero, $f8
.L801EC688_ovl16:
/* 222938 801EC688 3C01800E */  lui        $at, %hi(D_800E3210)
/* 22293C 801EC68C 00230821 */  addu       $at, $at, $v1
/* 222940 801EC690 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 222944 801EC694 8C4C0000 */  lw         $t4, 0x0($v0)
/* 222948 801EC698 3C01801F */  lui        $at, %hi(D_801F00E0_ovl16)
/* 22294C 801EC69C C42A00E0 */  lwc1       $f10, %lo(D_801F00E0_ovl16)($at)
/* 222950 801EC6A0 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 222954 801EC6A4 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 222958 801EC6A8 000C7080 */  sll        $t6, $t4, 2
/* 22295C 801EC6AC 00AE6821 */  addu       $t5, $a1, $t6
/* 222960 801EC6B0 E5AA0000 */  swc1       $f10, 0x0($t5)
/* 222964 801EC6B4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 222968 801EC6B8 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 22296C 801EC6BC 44818000 */  mtc1       $at, $f16
.L801EC6C0_ovl10:
/* 222970 801EC6C0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 222974 801EC6C4 000FC080 */  sll        $t8, $t7, 2
.L801EC6C8_ovl10:
/* 222978 801EC6C8 00380821 */  addu       $at, $at, $t8
.L801EC6CC_ovl10:
/* 22297C 801EC6CC E4303C90 */  swc1       $f16, %lo(D_800E3C90)($at)
/* 222980 801EC6D0 8C430000 */  lw         $v1, 0x0($v0)
/* 222984 801EC6D4 3C10800E */  lui        $s0, %hi(gEntitiesNextPosYArray)
glabel func_801EC6D8_ovl10
/* 222988 801EC6D8 26102790 */  addiu      $s0, $s0, %lo(gEntitiesNextPosYArray)
/* 22298C 801EC6DC 00031880 */  sll        $v1, $v1, 2
/* 222990 801EC6E0 0203C821 */  addu       $t9, $s0, $v1
/* 222994 801EC6E4 C7320000 */  lwc1       $f18, 0x0($t9)
/* 222998 801EC6E8 4612A03C */  c.lt.s     $f20, $f18
/* 22299C 801EC6EC 00000000 */  nop
/* 2229A0 801EC6F0 4502000F */  bc1fl      .L801EC730_ovl16
/* 2229A4 801EC6F4 44803000 */   mtc1      $zero, $f6
.L801EC6F8_ovl16:
/* 2229A8 801EC6F8 0C002DAF */  jal        finish_current_thread
/* 2229AC 801EC6FC 24040001 */   addiu     $a0, $zero, 0x1
/* 2229B0 801EC700 8E220000 */  lw         $v0, 0x0($s1)
/* 2229B4 801EC704 8C430000 */  lw         $v1, 0x0($v0)
/* 2229B8 801EC708 00031880 */  sll        $v1, $v1, 2
/* 2229BC 801EC70C 02034021 */  addu       $t0, $s0, $v1
/* 2229C0 801EC710 C5040000 */  lwc1       $f4, 0x0($t0)
/* 2229C4 801EC714 4604A03C */  c.lt.s     $f20, $f4
/* 2229C8 801EC718 00000000 */  nop
/* 2229CC 801EC71C 4501FFF6 */  bc1t       .L801EC6F8_ovl16
/* 2229D0 801EC720 00000000 */   nop
/* 2229D4 801EC724 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 2229D8 801EC728 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 2229DC 801EC72C 44803000 */  mtc1       $zero, $f6
.L801EC730_ovl16:
/* 2229E0 801EC730 00A34821 */  addu       $t1, $a1, $v1
/* 2229E4 801EC734 3C01800E */  lui        $at, %hi(D_800E3210)
/* 2229E8 801EC738 E5260000 */  swc1       $f6, 0x0($t1)
/* 2229EC 801EC73C 8C430000 */  lw         $v1, 0x0($v0)
/* 2229F0 801EC740 24040001 */  addiu      $a0, $zero, 0x1
/* 2229F4 801EC744 00031880 */  sll        $v1, $v1, 2
/* 2229F8 801EC748 00A35821 */  addu       $t3, $a1, $v1
/* 2229FC 801EC74C C5680000 */  lwc1       $f8, 0x0($t3)
/* 222A00 801EC750 00230821 */  addu       $at, $at, $v1
/* 222A04 801EC754 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 222A08 801EC758 8C4A0000 */  lw         $t2, 0x0($v0)
/* 222A0C 801EC75C 3C01801F */  lui        $at, %hi(D_801F00E4_ovl16)
/* 222A10 801EC760 C42A00E4 */  lwc1       $f10, %lo(D_801F00E4_ovl16)($at)
/* 222A14 801EC764 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 222A18 801EC768 000A6080 */  sll        $t4, $t2, 2
/* 222A1C 801EC76C 002C0821 */  addu       $at, $at, $t4
/* 222A20 801EC770 E42A3C90 */  swc1       $f10, %lo(D_800E3C90)($at)
/* 222A24 801EC774 8C4E0000 */  lw         $t6, 0x0($v0)
/* 222A28 801EC778 000E6880 */  sll        $t5, $t6, 2
/* 222A2C 801EC77C 020D7821 */  addu       $t7, $s0, $t5
/* 222A30 801EC780 0C03EE45 */  jal        func_800FB914
/* 222A34 801EC784 E5F40000 */   swc1      $f20, 0x0($t7)
/* 222A38 801EC788 0C029D9E */  jal        play_sound
/* 222A3C 801EC78C 240401B5 */   addiu     $a0, $zero, 0x1B5
/* 222A40 801EC790 24040034 */  addiu      $a0, $zero, 0x34
/* 222A44 801EC794 0C06B30D */  jal        func_801ACC34_ovl7
/* 222A48 801EC798 24050001 */   addiu     $a1, $zero, 0x1
/* 222A4C 801EC79C 10400006 */  beqz       $v0, .L801EC7B8_ovl16
/* 222A50 801EC7A0 3C040001 */   lui       $a0, (0x104BF >> 16)
/* 222A54 801EC7A4 0002C880 */  sll        $t9, $v0, 2
/* 222A58 801EC7A8 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 222A5C 801EC7AC 00390821 */  addu       $at, $at, $t9
/* 222A60 801EC7B0 24180001 */  addiu      $t8, $zero, 0x1
/* 222A64 801EC7B4 AC388E60 */  sw         $t8, %lo(D_800E8E60)($at)
.L801EC7B8_ovl16:
/* 222A68 801EC7B8 0C02A855 */  jal        func_800AA154
/* 222A6C 801EC7BC 348404BF */   ori       $a0, $a0, (0x104BF & 0xFFFF)
/* 222A70 801EC7C0 8E280000 */  lw         $t0, 0x0($s1)
/* 222A74 801EC7C4 0C067656 */  jal        func_8019D958_ovl7
/* 222A78 801EC7C8 95040002 */   lhu       $a0, 0x2($t0)
/* 222A7C 801EC7CC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 222A80 801EC7D0 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 222A84 801EC7D4 8FB0001C */  lw         $s0, 0x1C($sp)
/* 222A88 801EC7D8 8FB10020 */  lw         $s1, 0x20($sp)
/* 222A8C 801EC7DC 03E00008 */  jr         $ra
/* 222A90 801EC7E0 27BD0028 */   addiu     $sp, $sp, 0x28
