glabel func_8010CABC
/* 09552C 8010CABC 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 095530 8010CAC0 AFB00028 */  sw    $s0, 0x28($sp)
/* 095534 8010CAC4 3C108013 */  lui   $s0, %hi(D_8012BCA0) # $s0, 0x8013
/* 095538 8010CAC8 AFB1002C */  sw    $s1, 0x2c($sp)
/* 09553C 8010CACC 00808825 */  move  $s1, $a0
/* 095540 8010CAD0 2610BCA0 */  addiu $s0, %lo(D_8012BCA0) # addiu $s0, $s0, -0x4360
/* 095544 8010CAD4 AFBF0034 */  sw    $ra, 0x34($sp)
/* 095548 8010CAD8 AFB20030 */  sw    $s2, 0x30($sp)
/* 09554C 8010CADC 0C041486 */  jal   func_80105218_ovl2
/* 095550 8010CAE0 02002025 */   move  $a0, $s0
/* 095554 8010CAE4 0C043182 */  jal   func_8010C608_ovl2
/* 095558 8010CAE8 02202025 */   move  $a0, $s1
/* 09555C 8010CAEC C6240004 */  lwc1  $f4, 4($s1)
/* 095560 8010CAF0 26320010 */  addiu $s2, $s1, 0x10
/* 095564 8010CAF4 3C028013 */  lui   $v0, %hi(D_8012BD00) # $v0, 0x8013
/* 095568 8010CAF8 E7A4004C */  swc1  $f4, 0x4c($sp)
/* 09556C 8010CAFC C6480000 */  lwc1  $f8, ($s2)
/* 095570 8010CB00 C6260008 */  lwc1  $f6, 8($s1)
/* 095574 8010CB04 2442BD00 */  addiu $v0, %lo(D_8012BD00) # addiu $v0, $v0, -0x4300
/* 095578 8010CB08 C4440004 */  lwc1  $f4, 4($v0)
/* 09557C 8010CB0C 46083280 */  add.s $f10, $f6, $f8
/* 095580 8010CB10 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* 095584 8010CB14 3C0E8013 */  lui   $t6, %hi(D_8012BCC4) # $t6, 0x8013
/* 095588 8010CB18 3C0F8013 */  lui   $t7, %hi(D_8012BCC0) # $t7, 0x8013
/* 09558C 8010CB1C E7AA0050 */  swc1  $f10, 0x50($sp)
/* 095590 8010CB20 C630000C */  lwc1  $f16, 0xc($s1)
/* 095594 8010CB24 46049180 */  add.s $f6, $f18, $f4
/* 095598 8010CB28 C7A80050 */  lwc1  $f8, 0x50($sp)
/* 09559C 8010CB2C E7B00054 */  swc1  $f16, 0x54($sp)
/* 0955A0 8010CB30 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 0955A4 8010CB34 C4500008 */  lwc1  $f16, 8($v0)
/* 0955A8 8010CB38 3C188013 */  lui   $t8, %hi(D_8012BCBC) # $t8, 0x8013
/* 0955AC 8010CB3C 2718BCBC */  addiu $t8, %lo(D_8012BCBC) # addiu $t8, $t8, -0x4344
/* 0955B0 8010CB40 46105480 */  add.s $f18, $f10, $f16
/* 0955B4 8010CB44 25EFBCC0 */  addiu $t7, %lo(D_8012BCC0) # addiu $t7, $t7, -0x4340
/* 0955B8 8010CB48 25CEBCC4 */  addiu $t6, %lo(D_8012BCC4) # addiu $t6, $t6, -0x433c
/* 0955BC 8010CB4C E7A60040 */  swc1  $f6, 0x40($sp)
/* 0955C0 8010CB50 E7B20048 */  swc1  $f18, 0x48($sp)
/* 0955C4 8010CB54 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0955C8 8010CB58 AFAF0014 */  sw    $t7, 0x14($sp)
/* 0955CC 8010CB5C AFB80018 */  sw    $t8, 0x18($sp)
/* 0955D0 8010CB60 27A4004C */  addiu $a0, $sp, 0x4c
/* 0955D4 8010CB64 27A50040 */  addiu $a1, $sp, 0x40
/* 0955D8 8010CB68 00003025 */  move  $a2, $zero
/* 0955DC 8010CB6C 00003825 */  move  $a3, $zero
/* 0955E0 8010CB70 0C041229 */  jal   func_801048A4_ovl2
/* 0955E4 8010CB74 E7A80044 */   swc1  $f8, 0x44($sp)
/* 0955E8 8010CB78 10400009 */  beqz  $v0, .L8010CBA0_ovl2
/* 0955EC 8010CB7C 27A4004C */   addiu $a0, $sp, 0x4c
/* 0955F0 8010CB80 8E190000 */  lw    $t9, ($s0)
/* 0955F4 8010CB84 960C0000 */  lhu   $t4, ($s0)
/* 0955F8 8010CB88 001944C2 */  srl   $t0, $t9, 0x13
/* 0955FC 8010CB8C 35090001 */  ori   $t1, $t0, 1
/* 095600 8010CB90 000958C0 */  sll   $t3, $t1, 3
/* 095604 8010CB94 318D0007 */  andi  $t5, $t4, 7
/* 095608 8010CB98 016D7025 */  or    $t6, $t3, $t5
/* 09560C 8010CB9C A60E0000 */  sh    $t6, ($s0)
.L8010CBA0_ovl2:
/* 095610 8010CBA0 C6240008 */  lwc1  $f4, 8($s1)
/* 095614 8010CBA4 C6460008 */  lwc1  $f6, 8($s2)
/* 095618 8010CBA8 3C0F8013 */  lui   $t7, %hi(D_8012BCC4) # $t7, 0x8013
/* 09561C 8010CBAC 3C188013 */  lui   $t8, %hi(D_8012BCC0) # $t8, 0x8013
/* 095620 8010CBB0 46062200 */  add.s $f8, $f4, $f6
/* 095624 8010CBB4 3C198013 */  lui   $t9, %hi(D_8012BCBC) # $t9, 0x8013
/* 095628 8010CBB8 2739BCBC */  addiu $t9, %lo(D_8012BCBC) # addiu $t9, $t9, -0x4344
/* 09562C 8010CBBC 2718BCC0 */  addiu $t8, %lo(D_8012BCC0) # addiu $t8, $t8, -0x4340
/* 095630 8010CBC0 E7A80050 */  swc1  $f8, 0x50($sp)
/* 095634 8010CBC4 C7AA0050 */  lwc1  $f10, 0x50($sp)
/* 095638 8010CBC8 25EFBCC4 */  addiu $t7, %lo(D_8012BCC4) # addiu $t7, $t7, -0x433c
/* 09563C 8010CBCC AFAF0010 */  sw    $t7, 0x10($sp)
/* 095640 8010CBD0 AFB80014 */  sw    $t8, 0x14($sp)
/* 095644 8010CBD4 AFB90018 */  sw    $t9, 0x18($sp)
/* 095648 8010CBD8 27A50040 */  addiu $a1, $sp, 0x40
/* 09564C 8010CBDC 00003025 */  move  $a2, $zero
/* 095650 8010CBE0 00003825 */  move  $a3, $zero
/* 095654 8010CBE4 0C041229 */  jal   func_801048A4_ovl2
/* 095658 8010CBE8 E7AA0044 */   swc1  $f10, 0x44($sp)
/* 09565C 8010CBEC 10400009 */  beqz  $v0, .L8010CC14_ovl2
/* 095660 8010CBF0 27A4004C */   addiu $a0, $sp, 0x4c
/* 095664 8010CBF4 8E080000 */  lw    $t0, ($s0)
/* 095668 8010CBF8 960D0000 */  lhu   $t5, ($s0)
/* 09566C 8010CBFC 00084CC2 */  srl   $t1, $t0, 0x13
/* 095670 8010CC00 352A0004 */  ori   $t2, $t1, 4
/* 095674 8010CC04 000A58C0 */  sll   $t3, $t2, 3
/* 095678 8010CC08 31AE0007 */  andi  $t6, $t5, 7
/* 09567C 8010CC0C 016E7825 */  or    $t7, $t3, $t6
/* 095680 8010CC10 A60F0000 */  sh    $t7, ($s0)
.L8010CC14_ovl2:
/* 095684 8010CC14 C6300008 */  lwc1  $f16, 8($s1)
/* 095688 8010CC18 C6520004 */  lwc1  $f18, 4($s2)
/* 09568C 8010CC1C 3C188013 */  lui   $t8, %hi(D_8012BCC4) # $t8, 0x8013
/* 095690 8010CC20 3C198013 */  lui   $t9, %hi(D_8012BCC0) # $t9, 0x8013
/* 095694 8010CC24 46128100 */  add.s $f4, $f16, $f18
/* 095698 8010CC28 3C088013 */  lui   $t0, %hi(D_8012BCBC) # $t0, 0x8013
/* 09569C 8010CC2C 2508BCBC */  addiu $t0, %lo(D_8012BCBC) # addiu $t0, $t0, -0x4344
/* 0956A0 8010CC30 2739BCC0 */  addiu $t9, %lo(D_8012BCC0) # addiu $t9, $t9, -0x4340
/* 0956A4 8010CC34 E7A40050 */  swc1  $f4, 0x50($sp)
/* 0956A8 8010CC38 C7A60050 */  lwc1  $f6, 0x50($sp)
/* 0956AC 8010CC3C 2718BCC4 */  addiu $t8, %lo(D_8012BCC4) # addiu $t8, $t8, -0x433c
/* 0956B0 8010CC40 AFB80010 */  sw    $t8, 0x10($sp)
/* 0956B4 8010CC44 AFB90014 */  sw    $t9, 0x14($sp)
/* 0956B8 8010CC48 AFA80018 */  sw    $t0, 0x18($sp)
/* 0956BC 8010CC4C 27A50040 */  addiu $a1, $sp, 0x40
/* 0956C0 8010CC50 00003025 */  move  $a2, $zero
/* 0956C4 8010CC54 00003825 */  move  $a3, $zero
/* 0956C8 8010CC58 0C041229 */  jal   func_801048A4_ovl2
/* 0956CC 8010CC5C E7A60044 */   swc1  $f6, 0x44($sp)
/* 0956D0 8010CC60 10400009 */  beqz  $v0, .L8010CC88_ovl2
/* 0956D4 8010CC64 27A4004C */   addiu $a0, $sp, 0x4c
/* 0956D8 8010CC68 8E090000 */  lw    $t1, ($s0)
/* 0956DC 8010CC6C 960E0000 */  lhu   $t6, ($s0)
/* 0956E0 8010CC70 000954C2 */  srl   $t2, $t1, 0x13
/* 0956E4 8010CC74 354C0002 */  ori   $t4, $t2, 2
/* 0956E8 8010CC78 000C58C0 */  sll   $t3, $t4, 3
/* 0956EC 8010CC7C 31CF0007 */  andi  $t7, $t6, 7
/* 0956F0 8010CC80 016FC025 */  or    $t8, $t3, $t7
/* 0956F4 8010CC84 A6180000 */  sh    $t8, ($s0)
.L8010CC88_ovl2:
/* 0956F8 8010CC88 C6280008 */  lwc1  $f8, 8($s1)
/* 0956FC 8010CC8C C64A0000 */  lwc1  $f10, ($s2)
/* 095700 8010CC90 3C028013 */  lui   $v0, %hi(D_8012BD00) # $v0, 0x8013
/* 095704 8010CC94 2442BD00 */  addiu $v0, %lo(D_8012BD00) # addiu $v0, $v0, -0x4300
/* 095708 8010CC98 460A4400 */  add.s $f16, $f8, $f10
/* 09570C 8010CC9C C444000C */  lwc1  $f4, 0xc($v0)
/* 095710 8010CCA0 3C198013 */  lui   $t9, %hi(D_8012BCD0) # $t9, 0x8013
/* 095714 8010CCA4 3C088013 */  lui   $t0, %hi(D_8012BCCC) # $t0, 0x8013
/* 095718 8010CCA8 E7B00050 */  swc1  $f16, 0x50($sp)
/* 09571C 8010CCAC C6320004 */  lwc1  $f18, 4($s1)
/* 095720 8010CCB0 C7A80050 */  lwc1  $f8, 0x50($sp)
/* 095724 8010CCB4 C4500010 */  lwc1  $f16, 0x10($v0)
/* 095728 8010CCB8 46049180 */  add.s $f6, $f18, $f4
/* 09572C 8010CCBC E7A80044 */  swc1  $f8, 0x44($sp)
/* 095730 8010CCC0 3C098013 */  lui   $t1, %hi(D_8012BCC8) # $t1, 0x8013
/* 095734 8010CCC4 2529BCC8 */  addiu $t1, %lo(D_8012BCC8) # addiu $t1, $t1, -0x4338
/* 095738 8010CCC8 E7A60040 */  swc1  $f6, 0x40($sp)
/* 09573C 8010CCCC C62A000C */  lwc1  $f10, 0xc($s1)
/* 095740 8010CCD0 2508BCCC */  addiu $t0, %lo(D_8012BCCC) # addiu $t0, $t0, -0x4334
/* 095744 8010CCD4 2739BCD0 */  addiu $t9, %lo(D_8012BCD0) # addiu $t9, $t9, -0x4330
/* 095748 8010CCD8 46105480 */  add.s $f18, $f10, $f16
/* 09574C 8010CCDC AFB90010 */  sw    $t9, 0x10($sp)
/* 095750 8010CCE0 AFA80014 */  sw    $t0, 0x14($sp)
/* 095754 8010CCE4 AFA90018 */  sw    $t1, 0x18($sp)
/* 095758 8010CCE8 E7B20048 */  swc1  $f18, 0x48($sp)
/* 09575C 8010CCEC 27A50040 */  addiu $a1, $sp, 0x40
/* 095760 8010CCF0 00003025 */  move  $a2, $zero
/* 095764 8010CCF4 0C041229 */  jal   func_801048A4_ovl2
/* 095768 8010CCF8 00003825 */   move  $a3, $zero
/* 09576C 8010CCFC 10400009 */  beqz  $v0, .L8010CD24_ovl2
/* 095770 8010CD00 27A4004C */   addiu $a0, $sp, 0x4c
/* 095774 8010CD04 8E0A0000 */  lw    $t2, ($s0)
/* 095778 8010CD08 960F0000 */  lhu   $t7, ($s0)
/* 09577C 8010CD0C 000A64C2 */  srl   $t4, $t2, 0x13
/* 095780 8010CD10 358D0008 */  ori   $t5, $t4, 8
/* 095784 8010CD14 000D58C0 */  sll   $t3, $t5, 3
/* 095788 8010CD18 31F80007 */  andi  $t8, $t7, 7
/* 09578C 8010CD1C 0178C825 */  or    $t9, $t3, $t8
/* 095790 8010CD20 A6190000 */  sh    $t9, ($s0)
.L8010CD24_ovl2:
/* 095794 8010CD24 C6240008 */  lwc1  $f4, 8($s1)
/* 095798 8010CD28 C6460008 */  lwc1  $f6, 8($s2)
/* 09579C 8010CD2C 3C088013 */  lui   $t0, %hi(D_8012BCD0) # $t0, 0x8013
/* 0957A0 8010CD30 3C098013 */  lui   $t1, %hi(D_8012BCCC) # $t1, 0x8013
/* 0957A4 8010CD34 46062200 */  add.s $f8, $f4, $f6
/* 0957A8 8010CD38 3C0A8013 */  lui   $t2, %hi(D_8012BCC8) # $t2, 0x8013
/* 0957AC 8010CD3C 254ABCC8 */  addiu $t2, %lo(D_8012BCC8) # addiu $t2, $t2, -0x4338
/* 0957B0 8010CD40 2529BCCC */  addiu $t1, %lo(D_8012BCCC) # addiu $t1, $t1, -0x4334
/* 0957B4 8010CD44 E7A80050 */  swc1  $f8, 0x50($sp)
/* 0957B8 8010CD48 C7AA0050 */  lwc1  $f10, 0x50($sp)
/* 0957BC 8010CD4C 2508BCD0 */  addiu $t0, %lo(D_8012BCD0) # addiu $t0, $t0, -0x4330
/* 0957C0 8010CD50 AFA80010 */  sw    $t0, 0x10($sp)
/* 0957C4 8010CD54 AFA90014 */  sw    $t1, 0x14($sp)
/* 0957C8 8010CD58 AFAA0018 */  sw    $t2, 0x18($sp)
/* 0957CC 8010CD5C 27A50040 */  addiu $a1, $sp, 0x40
/* 0957D0 8010CD60 00003025 */  move  $a2, $zero
/* 0957D4 8010CD64 00003825 */  move  $a3, $zero
/* 0957D8 8010CD68 0C041229 */  jal   func_801048A4_ovl2
/* 0957DC 8010CD6C E7AA0044 */   swc1  $f10, 0x44($sp)
/* 0957E0 8010CD70 10400009 */  beqz  $v0, .L8010CD98_ovl2
/* 0957E4 8010CD74 27A4004C */   addiu $a0, $sp, 0x4c
/* 0957E8 8010CD78 8E0C0000 */  lw    $t4, ($s0)
/* 0957EC 8010CD7C 96180000 */  lhu   $t8, ($s0)
/* 0957F0 8010CD80 000C6CC2 */  srl   $t5, $t4, 0x13
/* 0957F4 8010CD84 35AE0020 */  ori   $t6, $t5, 0x20
/* 0957F8 8010CD88 000E58C0 */  sll   $t3, $t6, 3
/* 0957FC 8010CD8C 33190007 */  andi  $t9, $t8, 7
/* 095800 8010CD90 01794025 */  or    $t0, $t3, $t9
/* 095804 8010CD94 A6080000 */  sh    $t0, ($s0)
.L8010CD98_ovl2:
/* 095808 8010CD98 C6300008 */  lwc1  $f16, 8($s1)
/* 09580C 8010CD9C C6520004 */  lwc1  $f18, 4($s2)
/* 095810 8010CDA0 3C098013 */  lui   $t1, %hi(D_8012BCD0) # $t1, 0x8013
/* 095814 8010CDA4 3C0A8013 */  lui   $t2, %hi(D_8012BCCC) # $t2, 0x8013
/* 095818 8010CDA8 46128100 */  add.s $f4, $f16, $f18
/* 09581C 8010CDAC 3C0C8013 */  lui   $t4, %hi(D_8012BCC8) # $t4, 0x8013
/* 095820 8010CDB0 258CBCC8 */  addiu $t4, %lo(D_8012BCC8) # addiu $t4, $t4, -0x4338
/* 095824 8010CDB4 254ABCCC */  addiu $t2, %lo(D_8012BCCC) # addiu $t2, $t2, -0x4334
/* 095828 8010CDB8 E7A40050 */  swc1  $f4, 0x50($sp)
/* 09582C 8010CDBC C7A60050 */  lwc1  $f6, 0x50($sp)
/* 095830 8010CDC0 2529BCD0 */  addiu $t1, %lo(D_8012BCD0) # addiu $t1, $t1, -0x4330
/* 095834 8010CDC4 AFA90010 */  sw    $t1, 0x10($sp)
/* 095838 8010CDC8 AFAA0014 */  sw    $t2, 0x14($sp)
/* 09583C 8010CDCC AFAC0018 */  sw    $t4, 0x18($sp)
/* 095840 8010CDD0 27A50040 */  addiu $a1, $sp, 0x40
/* 095844 8010CDD4 00003025 */  move  $a2, $zero
/* 095848 8010CDD8 00003825 */  move  $a3, $zero
/* 09584C 8010CDDC 0C041229 */  jal   func_801048A4_ovl2
/* 095850 8010CDE0 E7A60044 */   swc1  $f6, 0x44($sp)
/* 095854 8010CDE4 1040000A */  beqz  $v0, .L8010CE10_ovl2
/* 095858 8010CDE8 3C0A8013 */   lui   $t2, %hi(D_8012BCA0) # $t2, 0x8013
/* 09585C 8010CDEC 3C0D8013 */  lui   $t5, %hi(D_8012BCA0) # $t5, 0x8013
/* 095860 8010CDF0 8DADBCA0 */  lw    $t5, %lo(D_8012BCA0)($t5)
/* 095864 8010CDF4 96190000 */  lhu   $t9, ($s0)
/* 095868 8010CDF8 000D74C2 */  srl   $t6, $t5, 0x13
/* 09586C 8010CDFC 35CF0010 */  ori   $t7, $t6, 0x10
/* 095870 8010CE00 000F58C0 */  sll   $t3, $t7, 3
/* 095874 8010CE04 33280007 */  andi  $t0, $t9, 7
/* 095878 8010CE08 01684825 */  or    $t1, $t3, $t0
/* 09587C 8010CE0C A6090000 */  sh    $t1, ($s0)
.L8010CE10_ovl2:
/* 095880 8010CE10 8D4ABCA0 */  lw    $t2, %lo(D_8012BCA0)($t2)
/* 095884 8010CE14 8FB00028 */  lw    $s0, 0x28($sp)
/* 095888 8010CE18 8FBF0034 */  lw    $ra, 0x34($sp)
/* 09588C 8010CE1C 000A64C2 */  srl   $t4, $t2, 0x13
/* 095890 8010CE20 318D003F */  andi  $t5, $t4, 0x3f
/* 095894 8010CE24 11A00003 */  beqz  $t5, .L8010CE34_ovl2
/* 095898 8010CE28 00001025 */   move  $v0, $zero
/* 09589C 8010CE2C 10000001 */  b     .L8010CE34_ovl2
/* 0958A0 8010CE30 24020001 */   li    $v0, 1
.L8010CE34_ovl2:
/* 0958A4 8010CE34 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0958A8 8010CE38 8FB20030 */  lw    $s2, 0x30($sp)
/* 0958AC 8010CE3C 03E00008 */  jr    $ra
/* 0958B0 8010CE40 27BD0060 */   addiu $sp, $sp, 0x60
