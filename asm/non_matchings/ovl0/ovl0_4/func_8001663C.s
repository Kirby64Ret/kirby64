glabel func_8001663C
/* 01723C 8001663C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 017240 80016640 AFBF0014 */  sw    $ra, 0x14($sp)
/* 017244 80016644 AFA40030 */  sw    $a0, 0x30($sp)
/* 017248 80016648 AFA50034 */  sw    $a1, 0x34($sp)
/* 01724C 8001664C AFA60038 */  sw    $a2, 0x38($sp)
/* 017250 80016650 10C00004 */  beqz  $a2, .L80016664_ovl0
/* 017254 80016654 8C830000 */   lw    $v1, ($a0)
/* 017258 80016658 24010001 */  li    $at, 1
/* 01725C 8001665C 54C10010 */  bnel  $a2, $at, .L800166A0_ovl0
/* 017260 80016660 3C19DC08 */   lui   $t9, 0xdc08
.L80016664_ovl0:
/* 017264 80016664 8FB80034 */  lw    $t8, 0x34($sp)
/* 017268 80016668 8FA40030 */  lw    $a0, 0x30($sp)
/* 01726C 8001666C 3C058005 */  lui   $a1, %hi(D_8004A446) # $a1, 0x8005
/* 017270 80016670 8F190080 */  lw    $t9, 0x80($t8)
/* 017274 80016674 332E0020 */  andi  $t6, $t9, 0x20
/* 017278 80016678 51C00009 */  beql  $t6, $zero, .L800166A0_ovl0
/* 01727C 8001667C 3C19DC08 */   lui   $t9, 0xdc08
/* 017280 80016680 0C001779 */  jal   append_microcode_load
/* 017284 80016684 94A5A446 */   lhu   $a1, %lo(D_8004A446)($a1)
/* 017288 80016688 8FB80030 */  lw    $t8, 0x30($sp)
/* 01728C 8001668C 240F0001 */  li    $t7, 1
/* 017290 80016690 3C018005 */  lui   $at, %hi(D_8004A448) # $at, 0x8005
/* 017294 80016694 A42FA448 */  sh    $t7, %lo(D_8004A448)($at)
/* 017298 80016698 8F030000 */  lw    $v1, ($t8)
/* 01729C 8001669C 3C19DC08 */  lui   $t9, (0xDC080008 >> 16) # lui $t9, 0xdc08
.L800166A0_ovl0:
/* 0172A0 800166A0 37390008 */  ori   $t9, (0xDC080008 & 0xFFFF) # ori $t9, $t9, 8
/* 0172A4 800166A4 00602025 */  move  $a0, $v1
/* 0172A8 800166A8 AC990000 */  sw    $t9, ($a0)
/* 0172AC 800166AC 8FA20034 */  lw    $v0, 0x34($sp)
/* 0172B0 800166B0 3C098005 */  lui   $t1, %hi(gCurrScreenWidth) # $t1, 0x8005
/* 0172B4 800166B4 3C0F8004 */  lui   $t7, %hi(D_8003DF18) # $t7, 0x8004
/* 0172B8 800166B8 24420008 */  addiu $v0, $v0, 8
/* 0172BC 800166BC AC820004 */  sw    $v0, 4($a0)
/* 0172C0 800166C0 84450008 */  lh    $a1, 8($v0)
/* 0172C4 800166C4 84460000 */  lh    $a2, ($v0)
/* 0172C8 800166C8 8447000A */  lh    $a3, 0xa($v0)
/* 0172CC 800166CC 84480002 */  lh    $t0, 2($v0)
/* 0172D0 800166D0 8D29A508 */  lw    $t1, %lo(gCurrScreenWidth)($t1)
/* 0172D4 800166D4 8DEFDF18 */  lw    $t7, %lo(D_8003DF18)($t7)
/* 0172D8 800166D8 24630008 */  addiu $v1, $v1, 8
/* 0172DC 800166DC 04A10002 */  bgez  $a1, .L800166E8_ovl0
/* 0172E0 800166E0 00A00821 */   addu  $at, $a1, $zero
/* 0172E4 800166E4 24A10003 */  addiu $at, $a1, 3
.L800166E8_ovl0:
/* 0172E8 800166E8 00012883 */  sra   $a1, $at, 2
/* 0172EC 800166EC 04C10002 */  bgez  $a2, .L800166F8_ovl0
/* 0172F0 800166F0 00C00821 */   addu  $at, $a2, $zero
/* 0172F4 800166F4 24C10003 */  addiu $at, $a2, 3
.L800166F8_ovl0:
/* 0172F8 800166F8 00013083 */  sra   $a2, $at, 2
/* 0172FC 800166FC 00A66023 */  subu  $t4, $a1, $a2
/* 017300 80016700 04E10002 */  bgez  $a3, .L8001670C_ovl0
/* 017304 80016704 00E00821 */   addu  $at, $a3, $zero
/* 017308 80016708 24E10003 */  addiu $at, $a3, 3
.L8001670C_ovl0:
/* 01730C 8001670C 00013883 */  sra   $a3, $at, 2
/* 017310 80016710 05010002 */  bgez  $t0, .L8001671C_ovl0
/* 017314 80016714 01000821 */   addu  $at, $t0, $zero
/* 017318 80016718 25010003 */  addiu $at, $t0, 3
.L8001671C_ovl0:
/* 01731C 8001671C 00014083 */  sra   $t0, $at, 2
/* 017320 80016720 24010140 */  li    $at, 320
/* 017324 80016724 0121001A */  div   $zero, $t1, $at
/* 017328 80016728 00005012 */  mflo  $t2
/* 01732C 8001672C 01077021 */  addu  $t6, $t0, $a3
/* 017330 80016730 00E86823 */  subu  $t5, $a3, $t0
/* 017334 80016734 014F0019 */  multu $t2, $t7
/* 017338 80016738 00C5F821 */  addu  $ra, $a2, $a1
/* 01733C 8001673C AFAE0018 */  sw    $t6, 0x18($sp)
/* 017340 80016740 3C028005 */  lui   $v0, %hi(gCurrScreenHeight) # $v0, 0x8005
/* 017344 80016744 3C188004 */  lui   $t8, %hi(D_8003DF10) # $t8, 0x8004
/* 017348 80016748 3C198004 */  lui   $t9, %hi(D_8003DF1C) # $t9, 0x8004
/* 01734C 8001674C 3C0F8004 */  lui   $t7, %hi(D_8003DF14) # $t7, 0x8004
/* 017350 80016750 00005812 */  mflo  $t3
/* 017354 80016754 018B082A */  slt   $at, $t4, $t3
/* 017358 80016758 10200002 */  beqz  $at, .L80016764_ovl0
/* 01735C 8001675C 00000000 */   nop   
/* 017360 80016760 01606025 */  move  $t4, $t3
.L80016764_ovl0:
/* 017364 80016764 8C42A50C */  lw    $v0, %lo(gCurrScreenHeight)($v0)
/* 017368 80016768 240100F0 */  li    $at, 240
/* 01736C 8001676C 8F18DF10 */  lw    $t8, %lo(D_8003DF10)($t8)
/* 017370 80016770 0041001A */  div   $zero, $v0, $at
/* 017374 80016774 00002012 */  mflo  $a0
/* 017378 80016778 448C2000 */  mtc1  $t4, $f4
/* 01737C 8001677C 8FA70018 */  lw    $a3, 0x18($sp)
/* 017380 80016780 00980019 */  multu $a0, $t8
/* 017384 80016784 468021A0 */  cvt.s.w $f6, $f4
/* 017388 80016788 00002812 */  mflo  $a1
/* 01738C 8001678C 01A5082A */  slt   $at, $t5, $a1
/* 017390 80016790 10200002 */  beqz  $at, .L8001679C_ovl0
/* 017394 80016794 00000000 */   nop   
/* 017398 80016798 00A06825 */  move  $t5, $a1
.L8001679C_ovl0:
/* 01739C 8001679C 8F39DF1C */  lw    $t9, %lo(D_8003DF1C)($t9)
/* 0173A0 800167A0 448D8000 */  mtc1  $t5, $f16
/* 0173A4 800167A4 01590019 */  multu $t2, $t9
/* 0173A8 800167A8 468084A0 */  cvt.s.w $f18, $f16
/* 0173AC 800167AC 00007012 */  mflo  $t6
/* 0173B0 800167B0 012E2823 */  subu  $a1, $t1, $t6
/* 0173B4 800167B4 00BF082A */  slt   $at, $a1, $ra
/* 0173B8 800167B8 10200002 */  beqz  $at, .L800167C4_ovl0
/* 0173BC 800167BC 00000000 */   nop   
/* 0173C0 800167C0 00A0F825 */  move  $ra, $a1
.L800167C4_ovl0:
/* 0173C4 800167C4 8DEFDF14 */  lw    $t7, %lo(D_8003DF14)($t7)
/* 0173C8 800167C8 008F0019 */  multu $a0, $t7
/* 0173CC 800167CC 0000C012 */  mflo  $t8
/* 0173D0 800167D0 00582823 */  subu  $a1, $v0, $t8
/* 0173D4 800167D4 00A7082A */  slt   $at, $a1, $a3
/* 0173D8 800167D8 50200003 */  beql  $at, $zero, .L800167E8_ovl0
/* 0173DC 800167DC 3C014080 */   lui   $at, 0x4080
/* 0173E0 800167E0 00A03825 */  move  $a3, $a1
/* 0173E4 800167E4 3C014080 */  li    $at, 0x40800000 # 4.000000
.L800167E8_ovl0:
/* 0173E8 800167E8 44810000 */  mtc1  $at, $f0
/* 0173EC 800167EC 3C01ED00 */  lui   $at, 0xed00
/* 0173F0 800167F0 00601025 */  move  $v0, $v1
/* 0173F4 800167F4 46003202 */  mul.s $f8, $f6, $f0
/* 0173F8 800167F8 24630008 */  addiu $v1, $v1, 8
/* 0173FC 800167FC 00602025 */  move  $a0, $v1
/* 017400 80016800 46009102 */  mul.s $f4, $f18, $f0
/* 017404 80016804 24630008 */  addiu $v1, $v1, 8
/* 017408 80016808 00602825 */  move  $a1, $v1
/* 01740C 8001680C 24630008 */  addiu $v1, $v1, 8
/* 017410 80016810 00603025 */  move  $a2, $v1
/* 017414 80016814 24630008 */  addiu $v1, $v1, 8
/* 017418 80016818 4600428D */  trunc.w.s $f10, $f8
/* 01741C 8001681C 449F4000 */  mtc1  $ra, $f8
/* 017420 80016820 4600218D */  trunc.w.s $f6, $f4
/* 017424 80016824 440E5000 */  mfc1  $t6, $f10
/* 017428 80016828 44872000 */  mtc1  $a3, $f4
/* 01742C 8001682C 468042A0 */  cvt.s.w $f10, $f8
/* 017430 80016830 31CF0FFF */  andi  $t7, $t6, 0xfff
/* 017434 80016834 000FC300 */  sll   $t8, $t7, 0xc
/* 017438 80016838 440F3000 */  mfc1  $t7, $f6
/* 01743C 8001683C 0301C825 */  or    $t9, $t8, $at
/* 017440 80016840 468021A0 */  cvt.s.w $f6, $f4
/* 017444 80016844 46005402 */  mul.s $f16, $f10, $f0
/* 017448 80016848 31F80FFF */  andi  $t8, $t7, 0xfff
/* 01744C 8001684C 03387025 */  or    $t6, $t9, $t8
/* 017450 80016850 AC4E0000 */  sw    $t6, ($v0)
/* 017454 80016854 3C01FF00 */  lui   $at, 0xff00
/* 017458 80016858 46003202 */  mul.s $f8, $f6, $f0
/* 01745C 8001685C 4600848D */  trunc.w.s $f18, $f16
/* 017460 80016860 4600428D */  trunc.w.s $f10, $f8
/* 017464 80016864 44199000 */  mfc1  $t9, $f18
/* 017468 80016868 00000000 */  nop   
/* 01746C 8001686C 33380FFF */  andi  $t8, $t9, 0xfff
/* 017470 80016870 44195000 */  mfc1  $t9, $f10
/* 017474 80016874 00187300 */  sll   $t6, $t8, 0xc
/* 017478 80016878 33380FFF */  andi  $t8, $t9, 0xfff
/* 01747C 8001687C 01D87825 */  or    $t7, $t6, $t8
/* 017480 80016880 AC4F0004 */  sw    $t7, 4($v0)
/* 017484 80016884 3C19E700 */  lui   $t9, 0xe700
/* 017488 80016888 AC990000 */  sw    $t9, ($a0)
/* 01748C 8001688C AC800004 */  sw    $zero, 4($a0)
/* 017490 80016890 3C0E8005 */  lui   $t6, %hi(D_8004A504) # $t6, 0x8005
/* 017494 80016894 8DCEA504 */  lw    $t6, %lo(D_8004A504)($t6)
/* 017498 80016898 00601025 */  move  $v0, $v1
/* 01749C 8001689C 31D80003 */  andi  $t8, $t6, 3
/* 0174A0 800168A0 3C0E8005 */  lui   $t6, %hi(gCurrScreenWidth) # $t6, 0x8005
/* 0174A4 800168A4 8DCEA508 */  lw    $t6, %lo(gCurrScreenWidth)($t6)
/* 0174A8 800168A8 00187CC0 */  sll   $t7, $t8, 0x13
/* 0174AC 800168AC 01E1C825 */  or    $t9, $t7, $at
/* 0174B0 800168B0 25D8FFFF */  addiu $t8, $t6, -1
/* 0174B4 800168B4 330F0FFF */  andi  $t7, $t8, 0xfff
/* 0174B8 800168B8 032F7025 */  or    $t6, $t9, $t7
/* 0174BC 800168BC 3C180F00 */  lui   $t8, 0xf00
/* 0174C0 800168C0 ACB80004 */  sw    $t8, 4($a1)
/* 0174C4 800168C4 ACAE0000 */  sw    $t6, ($a1)
/* 0174C8 800168C8 3C19E300 */  lui   $t9, (0xE3000A01 >> 16) # lui $t9, 0xe300
/* 0174CC 800168CC 37390A01 */  ori   $t9, (0xE3000A01 & 0xFFFF) # ori $t9, $t9, 0xa01
/* 0174D0 800168D0 ACD90000 */  sw    $t9, ($a2)
/* 0174D4 800168D4 ACC00004 */  sw    $zero, 4($a2)
/* 0174D8 800168D8 8FAF0038 */  lw    $t7, 0x38($sp)
/* 0174DC 800168DC 3C0EE200 */  lui   $t6, (0xE200001C >> 16) # lui $t6, 0xe200
/* 0174E0 800168E0 24010002 */  li    $at, 2
/* 0174E4 800168E4 11E00003 */  beqz  $t7, .L800168F4_ovl0
/* 0174E8 800168E8 35CE001C */   ori   $t6, (0xE200001C & 0xFFFF) # ori $t6, $t6, 0x1c
/* 0174EC 800168EC 15E10007 */  bne   $t7, $at, .L8001690C_ovl0
/* 0174F0 800168F0 3C19E200 */   lui   $t9, (0xE200001C >> 16) # lui $t9, 0xe200
.L800168F4_ovl0:
/* 0174F4 800168F4 3C180055 */  lui   $t8, (0x00552078 >> 16) # lui $t8, 0x55
/* 0174F8 800168F8 37182078 */  ori   $t8, (0x00552078 & 0xFFFF) # ori $t8, $t8, 0x2078
/* 0174FC 800168FC AC580004 */  sw    $t8, 4($v0)
/* 017500 80016900 24630008 */  addiu $v1, $v1, 8
/* 017504 80016904 10000008 */  b     .L80016928_ovl0
/* 017508 80016908 AC4E0000 */   sw    $t6, ($v0)
.L8001690C_ovl0:
/* 01750C 8001690C 00601025 */  move  $v0, $v1
/* 017510 80016910 3C0F0050 */  lui   $t7, (0x005049D8 >> 16) # lui $t7, 0x50
/* 017514 80016914 35EF49D8 */  ori   $t7, (0x005049D8 & 0xFFFF) # ori $t7, $t7, 0x49d8
/* 017518 80016918 3739001C */  ori   $t9, (0xE200001C & 0xFFFF) # ori $t9, $t9, 0x1c
/* 01751C 8001691C AC590000 */  sw    $t9, ($v0)
/* 017520 80016920 AC4F0004 */  sw    $t7, 4($v0)
/* 017524 80016924 24630008 */  addiu $v1, $v1, 8
.L80016928_ovl0:
/* 017528 80016928 8FAE0030 */  lw    $t6, 0x30($sp)
/* 01752C 8001692C ADC30000 */  sw    $v1, ($t6)
/* 017530 80016930 8FBF0014 */  lw    $ra, 0x14($sp)
/* 017534 80016934 27BD0030 */  addiu $sp, $sp, 0x30
/* 017538 80016938 03E00008 */  jr    $ra
/* 01753C 8001693C 00000000 */   nop   
