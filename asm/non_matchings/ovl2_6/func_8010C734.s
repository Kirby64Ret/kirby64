glabel func_8010C734
/* 0951A4 8010C734 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0951A8 8010C738 AFB00028 */  sw    $s0, 0x28($sp)
/* 0951AC 8010C73C 3C108013 */  lui   $s0, %hi(D_8012BCA0) # $s0, 0x8013
/* 0951B0 8010C740 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0951B4 8010C744 00808825 */  move  $s1, $a0
/* 0951B8 8010C748 2610BCA0 */  addiu $s0, %lo(D_8012BCA0) # addiu $s0, $s0, -0x4360
/* 0951BC 8010C74C AFBF0034 */  sw    $ra, 0x34($sp)
/* 0951C0 8010C750 AFB20030 */  sw    $s2, 0x30($sp)
/* 0951C4 8010C754 0C041486 */  jal   func_80105218
/* 0951C8 8010C758 02002025 */   move  $a0, $s0
/* 0951CC 8010C75C 0C043182 */  jal   func_8010C608
/* 0951D0 8010C760 02202025 */   move  $a0, $s1
/* 0951D4 8010C764 C6240004 */  lwc1  $f4, 4($s1)
/* 0951D8 8010C768 26320010 */  addiu $s2, $s1, 0x10
/* 0951DC 8010C76C 3C028013 */  lui   $v0, %hi(D_8012BD00) # $v0, 0x8013
/* 0951E0 8010C770 E7A4004C */  swc1  $f4, 0x4c($sp)
/* 0951E4 8010C774 C6480000 */  lwc1  $f8, ($s2)
/* 0951E8 8010C778 C6260008 */  lwc1  $f6, 8($s1)
/* 0951EC 8010C77C 2442BD00 */  addiu $v0, %lo(D_8012BD00) # addiu $v0, $v0, -0x4300
/* 0951F0 8010C780 C4440004 */  lwc1  $f4, 4($v0)
/* 0951F4 8010C784 46083280 */  add.s $f10, $f6, $f8
/* 0951F8 8010C788 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* 0951FC 8010C78C 3C0E8013 */  lui   $t6, %hi(D_8012BCC4) # $t6, 0x8013
/* 095200 8010C790 3C0F8013 */  lui   $t7, %hi(D_8012BCC0) # $t7, 0x8013
/* 095204 8010C794 E7AA0050 */  swc1  $f10, 0x50($sp)
/* 095208 8010C798 C630000C */  lwc1  $f16, 0xc($s1)
/* 09520C 8010C79C 46049180 */  add.s $f6, $f18, $f4
/* 095210 8010C7A0 C7A80050 */  lwc1  $f8, 0x50($sp)
/* 095214 8010C7A4 E7B00054 */  swc1  $f16, 0x54($sp)
/* 095218 8010C7A8 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 09521C 8010C7AC C4500008 */  lwc1  $f16, 8($v0)
/* 095220 8010C7B0 3C188013 */  lui   $t8, %hi(D_8012BCBC) # $t8, 0x8013
/* 095224 8010C7B4 2718BCBC */  addiu $t8, %lo(D_8012BCBC) # addiu $t8, $t8, -0x4344
/* 095228 8010C7B8 46105480 */  add.s $f18, $f10, $f16
/* 09522C 8010C7BC 25EFBCC0 */  addiu $t7, %lo(D_8012BCC0) # addiu $t7, $t7, -0x4340
/* 095230 8010C7C0 25CEBCC4 */  addiu $t6, %lo(D_8012BCC4) # addiu $t6, $t6, -0x433c
/* 095234 8010C7C4 E7A60040 */  swc1  $f6, 0x40($sp)
/* 095238 8010C7C8 E7B20048 */  swc1  $f18, 0x48($sp)
/* 09523C 8010C7CC AFAE0010 */  sw    $t6, 0x10($sp)
/* 095240 8010C7D0 AFAF0014 */  sw    $t7, 0x14($sp)
/* 095244 8010C7D4 AFB80018 */  sw    $t8, 0x18($sp)
/* 095248 8010C7D8 27A4004C */  addiu $a0, $sp, 0x4c
/* 09524C 8010C7DC 27A50040 */  addiu $a1, $sp, 0x40
/* 095250 8010C7E0 00003025 */  move  $a2, $zero
/* 095254 8010C7E4 00003825 */  move  $a3, $zero
/* 095258 8010C7E8 0C0411FC */  jal   func_801047F0
/* 09525C 8010C7EC E7A80044 */   swc1  $f8, 0x44($sp)
/* 095260 8010C7F0 10400009 */  beqz  $v0, .L8010C818_ovl2
/* 095264 8010C7F4 27A4004C */   addiu $a0, $sp, 0x4c
/* 095268 8010C7F8 8E190000 */  lw    $t9, ($s0)
/* 09526C 8010C7FC 960C0000 */  lhu   $t4, ($s0)
/* 095270 8010C800 001944C2 */  srl   $t0, $t9, 0x13
/* 095274 8010C804 35090001 */  ori   $t1, $t0, 1
/* 095278 8010C808 000958C0 */  sll   $t3, $t1, 3
/* 09527C 8010C80C 318D0007 */  andi  $t5, $t4, 7
/* 095280 8010C810 016D7025 */  or    $t6, $t3, $t5
/* 095284 8010C814 A60E0000 */  sh    $t6, ($s0)
.L8010C818_ovl2:
/* 095288 8010C818 C6240008 */  lwc1  $f4, 8($s1)
/* 09528C 8010C81C C6460008 */  lwc1  $f6, 8($s2)
/* 095290 8010C820 3C0F8013 */  lui   $t7, %hi(D_8012BCC4) # $t7, 0x8013
/* 095294 8010C824 3C188013 */  lui   $t8, %hi(D_8012BCC0) # $t8, 0x8013
/* 095298 8010C828 46062200 */  add.s $f8, $f4, $f6
/* 09529C 8010C82C 3C198013 */  lui   $t9, %hi(D_8012BCBC) # $t9, 0x8013
/* 0952A0 8010C830 2739BCBC */  addiu $t9, %lo(D_8012BCBC) # addiu $t9, $t9, -0x4344
/* 0952A4 8010C834 2718BCC0 */  addiu $t8, %lo(D_8012BCC0) # addiu $t8, $t8, -0x4340
/* 0952A8 8010C838 E7A80050 */  swc1  $f8, 0x50($sp)
/* 0952AC 8010C83C C7AA0050 */  lwc1  $f10, 0x50($sp)
/* 0952B0 8010C840 25EFBCC4 */  addiu $t7, %lo(D_8012BCC4) # addiu $t7, $t7, -0x433c
/* 0952B4 8010C844 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0952B8 8010C848 AFB80014 */  sw    $t8, 0x14($sp)
/* 0952BC 8010C84C AFB90018 */  sw    $t9, 0x18($sp)
/* 0952C0 8010C850 27A50040 */  addiu $a1, $sp, 0x40
/* 0952C4 8010C854 00003025 */  move  $a2, $zero
/* 0952C8 8010C858 00003825 */  move  $a3, $zero
/* 0952CC 8010C85C 0C0411FC */  jal   func_801047F0
/* 0952D0 8010C860 E7AA0044 */   swc1  $f10, 0x44($sp)
/* 0952D4 8010C864 10400009 */  beqz  $v0, .L8010C88C_ovl2
/* 0952D8 8010C868 27A4004C */   addiu $a0, $sp, 0x4c
/* 0952DC 8010C86C 8E080000 */  lw    $t0, ($s0)
/* 0952E0 8010C870 960D0000 */  lhu   $t5, ($s0)
/* 0952E4 8010C874 00084CC2 */  srl   $t1, $t0, 0x13
/* 0952E8 8010C878 352A0004 */  ori   $t2, $t1, 4
/* 0952EC 8010C87C 000A58C0 */  sll   $t3, $t2, 3
/* 0952F0 8010C880 31AE0007 */  andi  $t6, $t5, 7
/* 0952F4 8010C884 016E7825 */  or    $t7, $t3, $t6
/* 0952F8 8010C888 A60F0000 */  sh    $t7, ($s0)
.L8010C88C_ovl2:
/* 0952FC 8010C88C C6300008 */  lwc1  $f16, 8($s1)
/* 095300 8010C890 C6520004 */  lwc1  $f18, 4($s2)
/* 095304 8010C894 3C188013 */  lui   $t8, %hi(D_8012BCC4) # $t8, 0x8013
/* 095308 8010C898 3C198013 */  lui   $t9, %hi(D_8012BCC0) # $t9, 0x8013
/* 09530C 8010C89C 46128100 */  add.s $f4, $f16, $f18
/* 095310 8010C8A0 3C088013 */  lui   $t0, %hi(D_8012BCBC) # $t0, 0x8013
/* 095314 8010C8A4 2508BCBC */  addiu $t0, %lo(D_8012BCBC) # addiu $t0, $t0, -0x4344
/* 095318 8010C8A8 2739BCC0 */  addiu $t9, %lo(D_8012BCC0) # addiu $t9, $t9, -0x4340
/* 09531C 8010C8AC E7A40050 */  swc1  $f4, 0x50($sp)
/* 095320 8010C8B0 C7A60050 */  lwc1  $f6, 0x50($sp)
/* 095324 8010C8B4 2718BCC4 */  addiu $t8, %lo(D_8012BCC4) # addiu $t8, $t8, -0x433c
/* 095328 8010C8B8 AFB80010 */  sw    $t8, 0x10($sp)
/* 09532C 8010C8BC AFB90014 */  sw    $t9, 0x14($sp)
/* 095330 8010C8C0 AFA80018 */  sw    $t0, 0x18($sp)
/* 095334 8010C8C4 27A50040 */  addiu $a1, $sp, 0x40
/* 095338 8010C8C8 00003025 */  move  $a2, $zero
/* 09533C 8010C8CC 00003825 */  move  $a3, $zero
/* 095340 8010C8D0 0C0411FC */  jal   func_801047F0
/* 095344 8010C8D4 E7A60044 */   swc1  $f6, 0x44($sp)
/* 095348 8010C8D8 10400009 */  beqz  $v0, .L8010C900_ovl2
/* 09534C 8010C8DC 27A4004C */   addiu $a0, $sp, 0x4c
/* 095350 8010C8E0 8E090000 */  lw    $t1, ($s0)
/* 095354 8010C8E4 960E0000 */  lhu   $t6, ($s0)
/* 095358 8010C8E8 000954C2 */  srl   $t2, $t1, 0x13
/* 09535C 8010C8EC 354C0002 */  ori   $t4, $t2, 2
/* 095360 8010C8F0 000C58C0 */  sll   $t3, $t4, 3
/* 095364 8010C8F4 31CF0007 */  andi  $t7, $t6, 7
/* 095368 8010C8F8 016FC025 */  or    $t8, $t3, $t7
/* 09536C 8010C8FC A6180000 */  sh    $t8, ($s0)
.L8010C900_ovl2:
/* 095370 8010C900 C6280008 */  lwc1  $f8, 8($s1)
/* 095374 8010C904 C64A0000 */  lwc1  $f10, ($s2)
/* 095378 8010C908 3C028013 */  lui   $v0, %hi(D_8012BD00) # $v0, 0x8013
/* 09537C 8010C90C 2442BD00 */  addiu $v0, %lo(D_8012BD00) # addiu $v0, $v0, -0x4300
/* 095380 8010C910 460A4400 */  add.s $f16, $f8, $f10
/* 095384 8010C914 C444000C */  lwc1  $f4, 0xc($v0)
/* 095388 8010C918 3C198013 */  lui   $t9, %hi(D_8012BCD0) # $t9, 0x8013
/* 09538C 8010C91C 3C088013 */  lui   $t0, %hi(D_8012BCCC) # $t0, 0x8013
/* 095390 8010C920 E7B00050 */  swc1  $f16, 0x50($sp)
/* 095394 8010C924 C6320004 */  lwc1  $f18, 4($s1)
/* 095398 8010C928 C7A80050 */  lwc1  $f8, 0x50($sp)
/* 09539C 8010C92C C4500010 */  lwc1  $f16, 0x10($v0)
/* 0953A0 8010C930 46049180 */  add.s $f6, $f18, $f4
/* 0953A4 8010C934 E7A80044 */  swc1  $f8, 0x44($sp)
/* 0953A8 8010C938 3C098013 */  lui   $t1, %hi(D_8012BCC8) # $t1, 0x8013
/* 0953AC 8010C93C 2529BCC8 */  addiu $t1, %lo(D_8012BCC8) # addiu $t1, $t1, -0x4338
/* 0953B0 8010C940 E7A60040 */  swc1  $f6, 0x40($sp)
/* 0953B4 8010C944 C62A000C */  lwc1  $f10, 0xc($s1)
/* 0953B8 8010C948 2508BCCC */  addiu $t0, %lo(D_8012BCCC) # addiu $t0, $t0, -0x4334
/* 0953BC 8010C94C 2739BCD0 */  addiu $t9, %lo(D_8012BCD0) # addiu $t9, $t9, -0x4330
/* 0953C0 8010C950 46105480 */  add.s $f18, $f10, $f16
/* 0953C4 8010C954 AFB90010 */  sw    $t9, 0x10($sp)
/* 0953C8 8010C958 AFA80014 */  sw    $t0, 0x14($sp)
/* 0953CC 8010C95C AFA90018 */  sw    $t1, 0x18($sp)
/* 0953D0 8010C960 E7B20048 */  swc1  $f18, 0x48($sp)
/* 0953D4 8010C964 27A50040 */  addiu $a1, $sp, 0x40
/* 0953D8 8010C968 00003025 */  move  $a2, $zero
/* 0953DC 8010C96C 0C0411FC */  jal   func_801047F0
/* 0953E0 8010C970 00003825 */   move  $a3, $zero
/* 0953E4 8010C974 10400009 */  beqz  $v0, .L8010C99C_ovl2
/* 0953E8 8010C978 27A4004C */   addiu $a0, $sp, 0x4c
/* 0953EC 8010C97C 8E0A0000 */  lw    $t2, ($s0)
/* 0953F0 8010C980 960F0000 */  lhu   $t7, ($s0)
/* 0953F4 8010C984 000A64C2 */  srl   $t4, $t2, 0x13
/* 0953F8 8010C988 358D0008 */  ori   $t5, $t4, 8
/* 0953FC 8010C98C 000D58C0 */  sll   $t3, $t5, 3
/* 095400 8010C990 31F80007 */  andi  $t8, $t7, 7
/* 095404 8010C994 0178C825 */  or    $t9, $t3, $t8
/* 095408 8010C998 A6190000 */  sh    $t9, ($s0)
.L8010C99C_ovl2:
/* 09540C 8010C99C C6240008 */  lwc1  $f4, 8($s1)
/* 095410 8010C9A0 C6460008 */  lwc1  $f6, 8($s2)
/* 095414 8010C9A4 3C088013 */  lui   $t0, %hi(D_8012BCD0) # $t0, 0x8013
/* 095418 8010C9A8 3C098013 */  lui   $t1, %hi(D_8012BCCC) # $t1, 0x8013
/* 09541C 8010C9AC 46062200 */  add.s $f8, $f4, $f6
/* 095420 8010C9B0 3C0A8013 */  lui   $t2, %hi(D_8012BCC8) # $t2, 0x8013
/* 095424 8010C9B4 254ABCC8 */  addiu $t2, %lo(D_8012BCC8) # addiu $t2, $t2, -0x4338
/* 095428 8010C9B8 2529BCCC */  addiu $t1, %lo(D_8012BCCC) # addiu $t1, $t1, -0x4334
/* 09542C 8010C9BC E7A80050 */  swc1  $f8, 0x50($sp)
/* 095430 8010C9C0 C7AA0050 */  lwc1  $f10, 0x50($sp)
/* 095434 8010C9C4 2508BCD0 */  addiu $t0, %lo(D_8012BCD0) # addiu $t0, $t0, -0x4330
/* 095438 8010C9C8 AFA80010 */  sw    $t0, 0x10($sp)
/* 09543C 8010C9CC AFA90014 */  sw    $t1, 0x14($sp)
/* 095440 8010C9D0 AFAA0018 */  sw    $t2, 0x18($sp)
/* 095444 8010C9D4 27A50040 */  addiu $a1, $sp, 0x40
/* 095448 8010C9D8 00003025 */  move  $a2, $zero
/* 09544C 8010C9DC 00003825 */  move  $a3, $zero
/* 095450 8010C9E0 0C0411FC */  jal   func_801047F0
/* 095454 8010C9E4 E7AA0044 */   swc1  $f10, 0x44($sp)
/* 095458 8010C9E8 10400009 */  beqz  $v0, .L8010CA10_ovl2
/* 09545C 8010C9EC 27A4004C */   addiu $a0, $sp, 0x4c
/* 095460 8010C9F0 8E0C0000 */  lw    $t4, ($s0)
/* 095464 8010C9F4 96180000 */  lhu   $t8, ($s0)
/* 095468 8010C9F8 000C6CC2 */  srl   $t5, $t4, 0x13
/* 09546C 8010C9FC 35AE0020 */  ori   $t6, $t5, 0x20
/* 095470 8010CA00 000E58C0 */  sll   $t3, $t6, 3
/* 095474 8010CA04 33190007 */  andi  $t9, $t8, 7
/* 095478 8010CA08 01794025 */  or    $t0, $t3, $t9
/* 09547C 8010CA0C A6080000 */  sh    $t0, ($s0)
.L8010CA10_ovl2:
/* 095480 8010CA10 C6300008 */  lwc1  $f16, 8($s1)
/* 095484 8010CA14 C6520004 */  lwc1  $f18, 4($s2)
/* 095488 8010CA18 3C098013 */  lui   $t1, %hi(D_8012BCD0) # $t1, 0x8013
/* 09548C 8010CA1C 3C0A8013 */  lui   $t2, %hi(D_8012BCCC) # $t2, 0x8013
/* 095490 8010CA20 46128100 */  add.s $f4, $f16, $f18
/* 095494 8010CA24 3C0C8013 */  lui   $t4, %hi(D_8012BCC8) # $t4, 0x8013
/* 095498 8010CA28 258CBCC8 */  addiu $t4, %lo(D_8012BCC8) # addiu $t4, $t4, -0x4338
/* 09549C 8010CA2C 254ABCCC */  addiu $t2, %lo(D_8012BCCC) # addiu $t2, $t2, -0x4334
/* 0954A0 8010CA30 E7A40050 */  swc1  $f4, 0x50($sp)
/* 0954A4 8010CA34 C7A60050 */  lwc1  $f6, 0x50($sp)
/* 0954A8 8010CA38 2529BCD0 */  addiu $t1, %lo(D_8012BCD0) # addiu $t1, $t1, -0x4330
/* 0954AC 8010CA3C AFA90010 */  sw    $t1, 0x10($sp)
/* 0954B0 8010CA40 AFAA0014 */  sw    $t2, 0x14($sp)
/* 0954B4 8010CA44 AFAC0018 */  sw    $t4, 0x18($sp)
/* 0954B8 8010CA48 27A50040 */  addiu $a1, $sp, 0x40
/* 0954BC 8010CA4C 00003025 */  move  $a2, $zero
/* 0954C0 8010CA50 00003825 */  move  $a3, $zero
/* 0954C4 8010CA54 0C0411FC */  jal   func_801047F0
/* 0954C8 8010CA58 E7A60044 */   swc1  $f6, 0x44($sp)
/* 0954CC 8010CA5C 1040000A */  beqz  $v0, .L8010CA88_ovl2
/* 0954D0 8010CA60 3C0A8013 */   lui   $t2, %hi(D_8012BCA0) # $t2, 0x8013
/* 0954D4 8010CA64 3C0D8013 */  lui   $t5, %hi(D_8012BCA0) # $t5, 0x8013
/* 0954D8 8010CA68 8DADBCA0 */  lw    $t5, %lo(D_8012BCA0)($t5)
/* 0954DC 8010CA6C 96190000 */  lhu   $t9, ($s0)
/* 0954E0 8010CA70 000D74C2 */  srl   $t6, $t5, 0x13
/* 0954E4 8010CA74 35CF0010 */  ori   $t7, $t6, 0x10
/* 0954E8 8010CA78 000F58C0 */  sll   $t3, $t7, 3
/* 0954EC 8010CA7C 33280007 */  andi  $t0, $t9, 7
/* 0954F0 8010CA80 01684825 */  or    $t1, $t3, $t0
/* 0954F4 8010CA84 A6090000 */  sh    $t1, ($s0)
.L8010CA88_ovl2:
/* 0954F8 8010CA88 8D4ABCA0 */  lw    $t2, %lo(D_8012BCA0)($t2)
/* 0954FC 8010CA8C 8FB00028 */  lw    $s0, 0x28($sp)
/* 095500 8010CA90 8FBF0034 */  lw    $ra, 0x34($sp)
/* 095504 8010CA94 000A64C2 */  srl   $t4, $t2, 0x13
/* 095508 8010CA98 318D003F */  andi  $t5, $t4, 0x3f
/* 09550C 8010CA9C 11A00003 */  beqz  $t5, .L8010CAAC_ovl2
/* 095510 8010CAA0 00001025 */   move  $v0, $zero
/* 095514 8010CAA4 10000001 */  b     .L8010CAAC_ovl2
/* 095518 8010CAA8 24020001 */   li    $v0, 1
.L8010CAAC_ovl2:
/* 09551C 8010CAAC 8FB1002C */  lw    $s1, 0x2c($sp)
/* 095520 8010CAB0 8FB20030 */  lw    $s2, 0x30($sp)
/* 095524 8010CAB4 03E00008 */  jr    $ra
/* 095528 8010CAB8 27BD0060 */   addiu $sp, $sp, 0x60
