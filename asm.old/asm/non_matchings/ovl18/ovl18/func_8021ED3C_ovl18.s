glabel func_8021ED3C_ovl18
/* 2316DC 8021ED3C 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 2316E0 8021ED40 AFB1003C */  sw    $s1, 0x3c($sp)
/* 2316E4 8021ED44 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 2316E8 8021ED48 8E31A7C4 */  lw    $s1, %lo(D_8004A7C4)($s1)
/* 2316EC 8021ED4C AFBF005C */  sw    $ra, 0x5c($sp)
/* 2316F0 8021ED50 AFBE0058 */  sw    $fp, 0x58($sp)
/* 2316F4 8021ED54 AFB70054 */  sw    $s7, 0x54($sp)
/* 2316F8 8021ED58 AFB60050 */  sw    $s6, 0x50($sp)
/* 2316FC 8021ED5C AFB5004C */  sw    $s5, 0x4c($sp)
/* 231700 8021ED60 AFB40048 */  sw    $s4, 0x48($sp)
/* 231704 8021ED64 AFB30044 */  sw    $s3, 0x44($sp)
/* 231708 8021ED68 AFB20040 */  sw    $s2, 0x40($sp)
/* 23170C 8021ED6C AFB00038 */  sw    $s0, 0x38($sp)
/* 231710 8021ED70 AFA400C0 */  sw    $a0, 0xc0($sp)
/* 231714 8021ED74 8E2E0000 */  lw    $t6, ($s1)
/* 231718 8021ED78 3C18800E */ lui $t8, %hi(D_800E77A0)
/* 23171C 8021ED7C 3C028023 */  lui   $v0, %hi(D_8022BC90) # $v0, 0x8023
/* 231720 8021ED80 000E7840 */  sll   $t7, $t6, 1
/* 231724 8021ED84 030FC021 */  addu  $t8, $t8, $t7
/* 231728 8021ED88 971877A0 */ lhu $t8, %lo(D_800E77A0)($t8)
/* 23172C 8021ED8C 2442BC90 */  addiu $v0, %lo(D_8022BC90) # addiu $v0, $v0, -0x4370
/* 231730 8021ED90 3C098023 */ lui $t1, %hi(D_80229594)
/* 231734 8021ED94 001840C0 */  sll   $t0, $t8, 3
/* 231738 8021ED98 01184023 */  subu  $t0, $t0, $t8
/* 23173C 8021ED9C 00084080 */  sll   $t0, $t0, 2
/* 231740 8021EDA0 01284821 */  addu  $t1, $t1, $t0
/* 231744 8021EDA4 AC580000 */  sw    $t8, ($v0)
/* 231748 8021EDA8 91299594 */ lbu $t1, %lo(D_80229594)($t1)
/* 23174C 8021EDAC 3C168023 */  lui   $s6, %hi(D_8022BC94) # $s6, 0x8023
/* 231750 8021EDB0 26D6BC94 */  addiu $s6, %lo(D_8022BC94) # addiu $s6, $s6, -0x436c
/* 231754 8021EDB4 AEC90000 */  sw    $t1, ($s6)
/* 231758 8021EDB8 8E2A0000 */  lw    $t2, ($s1)
/* 23175C 8021EDBC 3C0B800E */ lui $t3, %hi(D_800E76C0)
/* 231760 8021EDC0 3C038023 */  lui   $v1, %hi(D_8022BC98) # $v1, 0x8023
/* 231764 8021EDC4 016A5821 */  addu  $t3, $t3, $t2
/* 231768 8021EDC8 916B76C0 */ lbu $t3, %lo(D_800E76C0)($t3)
/* 23176C 8021EDCC 2463BC98 */  addiu $v1, %lo(D_8022BC98) # addiu $v1, $v1, -0x4368
/* 231770 8021EDD0 3C0D8013 */  lui   $t5, %hi(D_801290E0) # $t5, 0x8013
/* 231774 8021EDD4 000B7880 */  sll   $t7, $t3, 2
/* 231778 8021EDD8 AC6B0000 */  sw    $t3, ($v1)
/* 23177C 8021EDDC 01EB7823 */  subu  $t7, $t7, $t3
/* 231780 8021EDE0 8DAD90E0 */  lw    $t5, %lo(D_801290E0)($t5)
/* 231784 8021EDE4 000F7880 */  sll   $t7, $t7, 2
/* 231788 8021EDE8 01EB7823 */  subu  $t7, $t7, $t3
/* 23178C 8021EDEC 000F7880 */  sll   $t7, $t7, 2
/* 231790 8021EDF0 3C0C8023 */  lui   $t4, %hi(D_8022BCA0) # $t4, 0x8023
/* 231794 8021EDF4 01AFC021 */  addu  $t8, $t5, $t7
/* 231798 8021EDF8 27090024 */  addiu $t1, $t8, 0x24
/* 23179C 8021EDFC 258CBCA0 */  addiu $t4, %lo(D_8022BCA0) # addiu $t4, $t4, -0x4360
.L8021EE00_ovl18:
/* 2317A0 8021EE00 8F080000 */  lw    $t0, ($t8)
/* 2317A4 8021EE04 2718000C */  addiu $t8, $t8, 0xc
/* 2317A8 8021EE08 258C000C */  addiu $t4, $t4, 0xc
/* 2317AC 8021EE0C AD88FFF4 */  sw    $t0, -0xc($t4)
/* 2317B0 8021EE10 8F19FFF8 */  lw    $t9, -8($t8)
/* 2317B4 8021EE14 AD99FFF8 */  sw    $t9, -8($t4)
/* 2317B8 8021EE18 8F08FFFC */  lw    $t0, -4($t8)
/* 2317BC 8021EE1C 1709FFF8 */  bne   $t8, $t1, .L8021EE00_ovl18
/* 2317C0 8021EE20 AD88FFFC */   sw    $t0, -4($t4)
/* 2317C4 8021EE24 8F080000 */  lw    $t0, ($t8)
/* 2317C8 8021EE28 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 2317CC 8021EE2C 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 2317D0 8021EE30 AD880000 */  sw    $t0, ($t4)
/* 2317D4 8021EE34 8F190004 */  lw    $t9, 4($t8)
/* 2317D8 8021EE38 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 2317DC 8021EE3C AD990004 */  sw    $t9, 4($t4)
/* 2317E0 8021EE40 8E2A0000 */  lw    $t2, ($s1)
/* 2317E4 8021EE44 000A5880 */  sll   $t3, $t2, 2
/* 2317E8 8021EE48 008B2021 */  addu  $a0, $a0, $t3
/* 2317EC 8021EE4C 0C02C7DA */  jal   func_800B1F68
/* 2317F0 8021EE50 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 2317F4 8021EE54 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 2317F8 8021EE58 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 2317FC 8021EE5C 3C0E800B */  lui   $t6, %hi(D_800B491C) # $t6, 0x800b
/* 231800 8021EE60 3C01800E */ lui $at, %hi(D_800DEF90)
/* 231804 8021EE64 8DAF0000 */  lw    $t7, ($t5)
/* 231808 8021EE68 25CE491C */  addiu $t6, %lo(D_800B491C) # addiu $t6, $t6, 0x491c
/* 23180C 8021EE6C 24040024 */  li    $a0, 36
/* 231810 8021EE70 000F4880 */  sll   $t1, $t7, 2
/* 231814 8021EE74 00290821 */  addu  $at, $at, $t1
/* 231818 8021EE78 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 23181C 8021EE7C 0C02BE6E */  jal   func_800AF9B8
/* 231820 8021EE80 24050010 */   li    $a1, 16
/* 231824 8021EE84 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 231828 8021EE88 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 23182C 8021EE8C 3C08800E */  lui   $t0, %hi(D_800DD8D0) # $t0, 0x800e
/* 231830 8021EE90 2508D8D0 */  addiu $t0, %lo(D_800DD8D0) # addiu $t0, $t0, -0x2730
/* 231834 8021EE94 8F0C0000 */  lw    $t4, ($t8)
/* 231838 8021EE98 3C048023 */  lui   $a0, %hi(D_8022BCD0) # $a0, 0x8023
/* 23183C 8021EE9C 3C028023 */  lui   $v0, %hi(D_8022BCF8) # $v0, 0x8023
/* 231840 8021EEA0 000CC880 */  sll   $t9, $t4, 2
/* 231844 8021EEA4 03282821 */  addu  $a1, $t9, $t0
/* 231848 8021EEA8 8CAA0000 */  lw    $t2, ($a1)
/* 23184C 8021EEAC 3C038023 */  lui   $v1, %hi(D_8022BCD8) # $v1, 0x8023
/* 231850 8021EEB0 2463BCD8 */  addiu $v1, %lo(D_8022BCD8) # addiu $v1, $v1, -0x4328
/* 231854 8021EEB4 354B0040 */  ori   $t3, $t2, 0x40
/* 231858 8021EEB8 ACAB0000 */  sw    $t3, ($a1)
/* 23185C 8021EEBC 3C058023 */  lui   $a1, %hi(D_8022BCF8) # $a1, 0x8023
/* 231860 8021EEC0 24A5BCF8 */  addiu $a1, %lo(D_8022BCF8) # addiu $a1, $a1, -0x4308
/* 231864 8021EEC4 2442BCF8 */  addiu $v0, %lo(D_8022BCF8) # addiu $v0, $v0, -0x4308
/* 231868 8021EEC8 2484BCD0 */  addiu $a0, %lo(D_8022BCD0) # addiu $a0, $a0, -0x4330
.L8021EECC_ovl18:
/* 23186C 8021EECC 24630004 */  addiu $v1, $v1, 4
/* 231870 8021EED0 0065082B */  sltu  $at, $v1, $a1
/* 231874 8021EED4 24840001 */  addiu $a0, $a0, 1
/* 231878 8021EED8 24420004 */  addiu $v0, $v0, 4
/* 23187C 8021EEDC A080FFFF */  sb    $zero, -1($a0)
/* 231880 8021EEE0 A040FFFD */  sb    $zero, -3($v0)
/* 231884 8021EEE4 A060FFFD */  sb    $zero, -3($v1)
/* 231888 8021EEE8 A040FFFE */  sb    $zero, -2($v0)
/* 23188C 8021EEEC A060FFFE */  sb    $zero, -2($v1)
/* 231890 8021EEF0 A040FFFF */  sb    $zero, -1($v0)
/* 231894 8021EEF4 A060FFFF */  sb    $zero, -1($v1)
/* 231898 8021EEF8 A040FFFC */  sb    $zero, -4($v0)
/* 23189C 8021EEFC 1420FFF3 */  bnez  $at, .L8021EECC_ovl18
/* 2318A0 8021EF00 A060FFFC */   sb    $zero, -4($v1)
/* 2318A4 8021EF04 3C18800C */  lui   $t8, %hi(D_800BE508) # $t8, 0x800c
/* 2318A8 8021EF08 8F18E508 */  lw    $t8, %lo(D_800BE508)($t8)
/* 2318AC 8021EF0C 3C0C800D */ lui $t4, %hi(D_800D6E20)
/* 2318B0 8021EF10 01986021 */  addu  $t4, $t4, $t8
/* 2318B4 8021EF14 918C6E20 */ lbu $t4, %lo(D_800D6E20)($t4)
/* 2318B8 8021EF18 11800015 */  beqz  $t4, .L8021EF70_ovl18
/* 2318BC 8021EF1C 00000000 */   nop   
/* 2318C0 8021EF20 0C002DAF */  jal   finish_current_thread
/* 2318C4 8021EF24 2404002D */   li    $a0, 45
/* 2318C8 8021EF28 3C198023 */  lui   $t9, %hi(D_8022BC90) # $t9, 0x8023
/* 2318CC 8021EF2C 8F39BC90 */  lw    $t9, %lo(D_8022BC90)($t9)
/* 2318D0 8021EF30 3C0A8023 */  lui   $t2, %hi(D_80229594) # $t2, 0x8023
/* 2318D4 8021EF34 254A9594 */  addiu $t2, %lo(D_80229594) # addiu $t2, $t2, -0x6a6c
/* 2318D8 8021EF38 001940C0 */  sll   $t0, $t9, 3
/* 2318DC 8021EF3C 01194023 */  subu  $t0, $t0, $t9
/* 2318E0 8021EF40 00084080 */  sll   $t0, $t0, 2
/* 2318E4 8021EF44 010A1021 */  addu  $v0, $t0, $t2
/* 2318E8 8021EF48 904B0002 */  lbu   $t3, 2($v0)
/* 2318EC 8021EF4C 3C01800D */  lui   $at, %hi(D_800D6E14) # $at, 0x800d
/* 2318F0 8021EF50 AC2B6E14 */  sw    $t3, %lo(D_800D6E14)($at)
/* 2318F4 8021EF54 904D0003 */  lbu   $t5, 3($v0)
/* 2318F8 8021EF58 3C01800D */  lui   $at, %hi(D_800D6E18) # $at, 0x800d
/* 2318FC 8021EF5C AC2D6E18 */  sw    $t5, %lo(D_800D6E18)($at)
/* 231900 8021EF60 904F0004 */  lbu   $t7, 4($v0)
/* 231904 8021EF64 3C01800D */  lui   $at, %hi(D_800D6E1C) # $at, 0x800d
/* 231908 8021EF68 0C02BE85 */  jal   func_800AFA14
/* 23190C 8021EF6C AC2F6E1C */   sw    $t7, %lo(D_800D6E1C)($at)
.L8021EF70_ovl18:
/* 231910 8021EF70 3C0E8023 */  lui   $t6, %hi(D_8022BC90) # $t6, 0x8023
/* 231914 8021EF74 8DCEBC90 */  lw    $t6, %lo(D_8022BC90)($t6)
/* 231918 8021EF78 8ECC0000 */  lw    $t4, ($s6)
/* 23191C 8021EF7C 3C188023 */  lui   $t8, %hi(D_80229594) # $t8, 0x8023
/* 231920 8021EF80 000E48C0 */  sll   $t1, $t6, 3
/* 231924 8021EF84 012E4823 */  subu  $t1, $t1, $t6
/* 231928 8021EF88 00094880 */  sll   $t1, $t1, 2
/* 23192C 8021EF8C 27189594 */  addiu $t8, %lo(D_80229594) # addiu $t8, $t8, -0x6a6c
/* 231930 8021EF90 01381021 */  addu  $v0, $t1, $t8
/* 231934 8021EF94 8C520008 */  lw    $s2, 8($v0)
/* 231938 8021EF98 11800052 */  beqz  $t4, .L8021F0E4_ovl18
/* 23193C 8021EF9C 00008025 */   move  $s0, $zero
/* 231940 8021EFA0 3C1E800E */  lui   $fp, %hi(D_800E6BD0) # $fp, 0x800e
/* 231944 8021EFA4 3C17800E */  lui   $s7, %hi(D_800E5F90) # $s7, 0x800e
/* 231948 8021EFA8 3C15800E */  lui   $s5, %hi(gEntitiesNextPosZArray) # $s5, 0x800e
/* 23194C 8021EFAC 3C14800E */  lui   $s4, %hi(gEntitiesNextPosXArray) # $s4, 0x800e
/* 231950 8021EFB0 269425D0 */  addiu $s4, %lo(gEntitiesNextPosXArray) # addiu $s4, $s4, 0x25d0
/* 231954 8021EFB4 26B52950 */  addiu $s5, %lo(gEntitiesNextPosZArray) # addiu $s5, $s5, 0x2950
/* 231958 8021EFB8 26F75F90 */  addiu $s7, %lo(D_800E5F90) # addiu $s7, $s7, 0x5f90
/* 23195C 8021EFBC 27DE6BD0 */  addiu $fp, %lo(D_800E6BD0) # addiu $fp, $fp, 0x6bd0
/* 231960 8021EFC0 24040021 */  li    $a0, 33
.L8021EFC4_ovl18:
/* 231964 8021EFC4 2405003C */  li    $a1, 60
/* 231968 8021EFC8 0C02BA99 */  jal   func_800AEA64
/* 23196C 8021EFCC 24060049 */   li    $a2, 73
/* 231970 8021EFD0 3C01800E */ lui $at, %hi(D_800E7880)
/* 231974 8021EFD4 00220821 */  addu  $at, $at, $v0
/* 231978 8021EFD8 24190001 */  li    $t9, 1
/* 23197C 8021EFDC A0397880 */ sb $t9, %lo(D_800E7880)($at)
/* 231980 8021EFE0 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 231984 8021EFE4 8E31A7C4 */  lw    $s1, %lo(D_8004A7C4)($s1)
/* 231988 8021EFE8 3C01800F */ lui $at, %hi(D_800E98E0)
/* 23198C 8021EFEC 00021880 */  sll   $v1, $v0, 2
/* 231990 8021EFF0 00230821 */  addu  $at, $at, $v1
/* 231994 8021EFF4 AC3098E0 */ sw $s0, %lo(D_800E98E0)($at)
/* 231998 8021EFF8 8E280000 */  lw    $t0, ($s1)
/* 23199C 8021EFFC 02E32021 */  addu  $a0, $s7, $v1
/* 2319A0 8021F000 03C32821 */  addu  $a1, $fp, $v1
/* 2319A4 8021F004 00085080 */  sll   $t2, $t0, 2
/* 2319A8 8021F008 02EA5821 */  addu  $t3, $s7, $t2
/* 2319AC 8021F00C 8D6D0000 */  lw    $t5, ($t3)
/* 2319B0 8021F010 00409825 */  move  $s3, $v0
/* 2319B4 8021F014 AC8D0000 */  sw    $t5, ($a0)
/* 2319B8 8021F018 8E2F0000 */  lw    $t7, ($s1)
/* 2319BC 8021F01C 000F7080 */  sll   $t6, $t7, 2
/* 2319C0 8021F020 03CE4821 */  addu  $t1, $fp, $t6
/* 2319C4 8021F024 C5240000 */  lwc1  $f4, ($t1)
/* 2319C8 8021F028 E4A40000 */  swc1  $f4, ($a1)
/* 2319CC 8021F02C 0C03E65D */  jal   func_800F9974
/* 2319D0 8021F030 8E460008 */   lw    $a2, 8($s2)
/* 2319D4 8021F034 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 2319D8 8021F038 8E31A7C4 */  lw    $s1, %lo(D_8004A7C4)($s1)
/* 2319DC 8021F03C C648000C */  lwc1  $f8, 0xc($s2)
/* 2319E0 8021F040 00131880 */  sll   $v1, $s3, 2
/* 2319E4 8021F044 8E380000 */  lw    $t8, ($s1)
/* 2319E8 8021F048 02834021 */  addu  $t0, $s4, $v1
/* 2319EC 8021F04C 3C07800E */  lui   $a3, %hi(gEntitiesNextPosYArray) # $a3, 0x800e
/* 2319F0 8021F050 00186080 */  sll   $t4, $t8, 2
/* 2319F4 8021F054 028CC821 */  addu  $t9, $s4, $t4
/* 2319F8 8021F058 C7260000 */  lwc1  $f6, ($t9)
/* 2319FC 8021F05C 24E72790 */  addiu $a3, %lo(gEntitiesNextPosYArray) # addiu $a3, $a3, 0x2790
/* 231A00 8021F060 00E37821 */  addu  $t7, $a3, $v1
/* 231A04 8021F064 46083280 */  add.s $f10, $f6, $f8
/* 231A08 8021F068 02A36021 */  addu  $t4, $s5, $v1
/* 231A0C 8021F06C 26100001 */  addiu $s0, $s0, 1
/* 231A10 8021F070 26520018 */  addiu $s2, $s2, 0x18
/* 231A14 8021F074 E50A0000 */  swc1  $f10, ($t0)
/* 231A18 8021F078 8E2A0000 */  lw    $t2, ($s1)
/* 231A1C 8021F07C C652FFF8 */  lwc1  $f18, -8($s2)
/* 231A20 8021F080 000A5880 */  sll   $t3, $t2, 2
/* 231A24 8021F084 00EB6821 */  addu  $t5, $a3, $t3
/* 231A28 8021F088 C5B00000 */  lwc1  $f16, ($t5)
/* 231A2C 8021F08C 46128100 */  add.s $f4, $f16, $f18
/* 231A30 8021F090 E5E40000 */  swc1  $f4, ($t7)
/* 231A34 8021F094 8E2E0000 */  lw    $t6, ($s1)
/* 231A38 8021F098 C648FFFC */  lwc1  $f8, -4($s2)
/* 231A3C 8021F09C 000E4880 */  sll   $t1, $t6, 2
/* 231A40 8021F0A0 02A9C021 */  addu  $t8, $s5, $t1
/* 231A44 8021F0A4 C7060000 */  lwc1  $f6, ($t8)
/* 231A48 8021F0A8 46083280 */  add.s $f10, $f6, $f8
/* 231A4C 8021F0AC E58A0000 */  swc1  $f10, ($t4)
/* 231A50 8021F0B0 8ED90000 */  lw    $t9, ($s6)
/* 231A54 8021F0B4 0219082B */  sltu  $at, $s0, $t9
/* 231A58 8021F0B8 5420FFC2 */  bnezl $at, .L8021EFC4_ovl18
/* 231A5C 8021F0BC 24040021 */   li    $a0, 33
/* 231A60 8021F0C0 3C088023 */  lui   $t0, %hi(D_8022BC90) # $t0, 0x8023
/* 231A64 8021F0C4 8D08BC90 */  lw    $t0, %lo(D_8022BC90)($t0)
/* 231A68 8021F0C8 3C0B8023 */  lui   $t3, %hi(D_80229594) # $t3, 0x8023
/* 231A6C 8021F0CC 256B9594 */  addiu $t3, %lo(D_80229594) # addiu $t3, $t3, -0x6a6c
/* 231A70 8021F0D0 000850C0 */  sll   $t2, $t0, 3
/* 231A74 8021F0D4 01485023 */  subu  $t2, $t2, $t0
/* 231A78 8021F0D8 000A5080 */  sll   $t2, $t2, 2
/* 231A7C 8021F0DC 014B1021 */  addu  $v0, $t2, $t3
/* 231A80 8021F0E0 00008025 */  move  $s0, $zero
.L8021F0E4_ovl18:
/* 231A84 8021F0E4 3C17800E */  lui   $s7, %hi(D_800E5F90) # $s7, 0x800e
/* 231A88 8021F0E8 3C1E800E */  lui   $fp, %hi(D_800E6BD0) # $fp, 0x800e
/* 231A8C 8021F0EC 27DE6BD0 */  addiu $fp, %lo(D_800E6BD0) # addiu $fp, $fp, 0x6bd0
/* 231A90 8021F0F0 26F75F90 */  addiu $s7, %lo(D_800E5F90) # addiu $s7, $s7, 0x5f90
/* 231A94 8021F0F4 0C02F07F */  jal   func_800BC1FC
/* 231A98 8021F0F8 90440001 */   lbu   $a0, 1($v0)
/* 231A9C 8021F0FC 00008825 */  move  $s1, $zero
/* 231AA0 8021F100 8EC20000 */  lw    $v0, ($s6)
.L8021F104_ovl18:
/* 231AA4 8021F104 3C048023 */  lui   $a0, %hi(D_8022BCD0) # $a0, 0x8023
/* 231AA8 8021F108 2484BCD0 */  addiu $a0, %lo(D_8022BCD0) # addiu $a0, $a0, -0x4330
/* 231AAC 8021F10C 10400009 */  beqz  $v0, .L8021F134_ovl18
/* 231AB0 8021F110 00000000 */   nop   
.L8021F114_ovl18:
/* 231AB4 8021F114 908D0000 */  lbu   $t5, ($a0)
/* 231AB8 8021F118 26100001 */  addiu $s0, $s0, 1
/* 231ABC 8021F11C 0202082B */  sltu  $at, $s0, $v0
/* 231AC0 8021F120 11A00002 */  beqz  $t5, .L8021F12C_ovl18
/* 231AC4 8021F124 00000000 */   nop   
/* 231AC8 8021F128 26310001 */  addiu $s1, $s1, 1
.L8021F12C_ovl18:
/* 231ACC 8021F12C 1420FFF9 */  bnez  $at, .L8021F114_ovl18
/* 231AD0 8021F130 24840001 */   addiu $a0, $a0, 1
.L8021F134_ovl18:
/* 231AD4 8021F134 12220006 */  beq   $s1, $v0, .L8021F150_ovl18
/* 231AD8 8021F138 24040001 */   li    $a0, 1
/* 231ADC 8021F13C 00008025 */  move  $s0, $zero
/* 231AE0 8021F140 0C002DAF */  jal   finish_current_thread
/* 231AE4 8021F144 00008825 */   move  $s1, $zero
/* 231AE8 8021F148 1000FFEE */  b     .L8021F104_ovl18
/* 231AEC 8021F14C 8EC20000 */   lw    $v0, ($s6)
.L8021F150_ovl18:
/* 231AF0 8021F150 3C0F8023 */  lui   $t7, %hi(D_8022BC90) # $t7, 0x8023
/* 231AF4 8021F154 8DEFBC90 */  lw    $t7, %lo(D_8022BC90)($t7)
/* 231AF8 8021F158 3C098023 */  lui   $t1, %hi(D_80229594) # $t1, 0x8023
/* 231AFC 8021F15C 25299594 */  addiu $t1, %lo(D_80229594) # addiu $t1, $t1, -0x6a6c
/* 231B00 8021F160 000F70C0 */  sll   $t6, $t7, 3
/* 231B04 8021F164 01CF7023 */  subu  $t6, $t6, $t7
/* 231B08 8021F168 000E7080 */  sll   $t6, $t6, 2
/* 231B0C 8021F16C 01C98021 */  addu  $s0, $t6, $t1
/* 231B10 8021F170 92180002 */  lbu   $t8, 2($s0)
/* 231B14 8021F174 3C01800D */  lui   $at, %hi(D_800D6E14) # $at, 0x800d
/* 231B18 8021F178 AC386E14 */  sw    $t8, %lo(D_800D6E14)($at)
/* 231B1C 8021F17C 920C0003 */  lbu   $t4, 3($s0)
/* 231B20 8021F180 3C01800D */  lui   $at, %hi(D_800D6E18) # $at, 0x800d
/* 231B24 8021F184 AC2C6E18 */  sw    $t4, %lo(D_800D6E18)($at)
/* 231B28 8021F188 92190004 */  lbu   $t9, 4($s0)
/* 231B2C 8021F18C 3C01800D */  lui   $at, %hi(D_800D6E1C) # $at, 0x800d
/* 231B30 8021F190 AC396E1C */  sw    $t9, %lo(D_800D6E1C)($at)
/* 231B34 8021F194 9208000C */  lbu   $t0, 0xc($s0)
/* 231B38 8021F198 1100004B */  beqz  $t0, .L8021F2C8_ovl18
/* 231B3C 8021F19C 00000000 */   nop   
/* 231B40 8021F1A0 0C087CC1 */  jal   ovl18_TamperCheck
/* 231B44 8021F1A4 00000000 */   nop   
/* 231B48 8021F1A8 10400047 */  beqz  $v0, .L8021F2C8_ovl18
/* 231B4C 8021F1AC 00000000 */   nop   
/* 231B50 8021F1B0 0C087CD7 */  jal   func_8021F35C_ovl18
/* 231B54 8021F1B4 00000000 */   nop   
/* 231B58 8021F1B8 10400043 */  beqz  $v0, .L8021F2C8_ovl18
/* 231B5C 8021F1BC 3C118005 */   lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 231B60 8021F1C0 8E31A7C4 */  lw    $s1, %lo(D_8004A7C4)($s1)
/* 231B64 8021F1C4 27A400A8 */  addiu $a0, $sp, 0xa8
/* 231B68 8021F1C8 27A500A0 */  addiu $a1, $sp, 0xa0
/* 231B6C 8021F1CC 8E2A0000 */  lw    $t2, ($s1)
/* 231B70 8021F1D0 000A5880 */  sll   $t3, $t2, 2
/* 231B74 8021F1D4 02EB6821 */  addu  $t5, $s7, $t3
/* 231B78 8021F1D8 8DAF0000 */  lw    $t7, ($t5)
/* 231B7C 8021F1DC AFAF00A8 */  sw    $t7, 0xa8($sp)
/* 231B80 8021F1E0 8E2E0000 */  lw    $t6, ($s1)
/* 231B84 8021F1E4 000E4880 */  sll   $t1, $t6, 2
/* 231B88 8021F1E8 03C9C021 */  addu  $t8, $fp, $t1
/* 231B8C 8021F1EC C7100000 */  lwc1  $f16, ($t8)
/* 231B90 8021F1F0 E7B000A0 */  swc1  $f16, 0xa0($sp)
/* 231B94 8021F1F4 0C03E65D */  jal   func_800F9974
/* 231B98 8021F1F8 8E060010 */   lw    $a2, 0x10($s0)
/* 231B9C 8021F1FC 27B1008C */  addiu $s1, $sp, 0x8c
/* 231BA0 8021F200 02202025 */  move  $a0, $s1
/* 231BA4 8021F204 8FA500A8 */  lw    $a1, 0xa8($sp)
/* 231BA8 8021F208 0C03E408 */  jal   func_800F9020
/* 231BAC 8021F20C 8FA600A0 */   lw    $a2, 0xa0($sp)
/* 231BB0 8021F210 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 231BB4 8021F214 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 231BB8 8021F218 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 231BBC 8021F21C C6040014 */  lwc1  $f4, 0x14($s0)
/* 231BC0 8021F220 8D990000 */  lw    $t9, ($t4)
/* 231BC4 8021F224 00002025 */  move  $a0, $zero
/* 231BC8 8021F228 8FA5008C */  lw    $a1, 0x8c($sp)
/* 231BCC 8021F22C 00194080 */  sll   $t0, $t9, 2
/* 231BD0 8021F230 00280821 */  addu  $at, $at, $t0
/* 231BD4 8021F234 C4322790 */ lwc1 $f18, %lo(gEntitiesNextPosYArray)($at)
/* 231BD8 8021F238 8FA70094 */  lw    $a3, 0x94($sp)
/* 231BDC 8021F23C 46049180 */  add.s $f6, $f18, $f4
/* 231BE0 8021F240 44063000 */  mfc1  $a2, $f6
/* 231BE4 8021F244 0C03F5D5 */  jal   func_800FD754
/* 231BE8 8021F248 E7A60090 */   swc1  $f6, 0x90($sp)
/* 231BEC 8021F24C 0C002DAF */  jal   finish_current_thread
/* 231BF0 8021F250 2404000A */   li    $a0, 10
/* 231BF4 8021F254 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 231BF8 8021F258 44811000 */  mtc1  $at, $f2
/* 231BFC 8021F25C 44800000 */  mtc1  $zero, $f0
/* 231C00 8021F260 240A0007 */  li    $t2, 7
/* 231C04 8021F264 240B0002 */  li    $t3, 2
/* 231C08 8021F268 AFAB0014 */  sw    $t3, 0x14($sp)
/* 231C0C 8021F26C AFAA0010 */  sw    $t2, 0x10($sp)
/* 231C10 8021F270 AFA00018 */  sw    $zero, 0x18($sp)
/* 231C14 8021F274 AFA0001C */  sw    $zero, 0x1c($sp)
/* 231C18 8021F278 E7A2007C */  swc1  $f2, 0x7c($sp)
/* 231C1C 8021F27C E7A20078 */  swc1  $f2, 0x78($sp)
/* 231C20 8021F280 E7A20074 */  swc1  $f2, 0x74($sp)
/* 231C24 8021F284 E7A00088 */  swc1  $f0, 0x88($sp)
/* 231C28 8021F288 E7A00084 */  swc1  $f0, 0x84($sp)
/* 231C2C 8021F28C E7A00080 */  swc1  $f0, 0x80($sp)
/* 231C30 8021F290 920D000C */  lbu   $t5, 0xc($s0)
/* 231C34 8021F294 27AF0080 */  addiu $t7, $sp, 0x80
/* 231C38 8021F298 27AE0074 */  addiu $t6, $sp, 0x74
/* 231C3C 8021F29C AFAE002C */  sw    $t6, 0x2c($sp)
/* 231C40 8021F2A0 AFAF0028 */  sw    $t7, 0x28($sp)
/* 231C44 8021F2A4 AFB10024 */  sw    $s1, 0x24($sp)
/* 231C48 8021F2A8 240400FF */  li    $a0, 255
/* 231C4C 8021F2AC 93A500AB */  lbu   $a1, 0xab($sp)
/* 231C50 8021F2B0 8FA600A0 */  lw    $a2, 0xa0($sp)
/* 231C54 8021F2B4 24070003 */  li    $a3, 3
/* 231C58 8021F2B8 0C03F345 */  jal   func_800FCD14
/* 231C5C 8021F2BC AFAD0020 */   sw    $t5, 0x20($sp)
/* 231C60 8021F2C0 0C029D9E */  jal   play_sound
/* 231C64 8021F2C4 24040226 */   li    $a0, 550
.L8021F2C8_ovl18:
/* 231C68 8021F2C8 3C01800D */  lui   $at, %hi(D_800D6E98) # $at, 0x800d
/* 231C6C 8021F2CC 0C02BE85 */  jal   func_800AFA14
/* 231C70 8021F2D0 AC206E98 */   sw    $zero, %lo(D_800D6E98)($at)
/* 231C74 8021F2D4 8FBF005C */  lw    $ra, 0x5c($sp)
/* 231C78 8021F2D8 8FB00038 */  lw    $s0, 0x38($sp)
/* 231C7C 8021F2DC 8FB1003C */  lw    $s1, 0x3c($sp)
/* 231C80 8021F2E0 8FB20040 */  lw    $s2, 0x40($sp)
/* 231C84 8021F2E4 8FB30044 */  lw    $s3, 0x44($sp)
/* 231C88 8021F2E8 8FB40048 */  lw    $s4, 0x48($sp)
/* 231C8C 8021F2EC 8FB5004C */  lw    $s5, 0x4c($sp)
/* 231C90 8021F2F0 8FB60050 */  lw    $s6, 0x50($sp)
/* 231C94 8021F2F4 8FB70054 */  lw    $s7, 0x54($sp)
/* 231C98 8021F2F8 8FBE0058 */  lw    $fp, 0x58($sp)
/* 231C9C 8021F2FC 03E00008 */  jr    $ra
/* 231CA0 8021F300 27BD00C0 */   addiu $sp, $sp, 0xc0
.type func_8021ED3C_ovl18, @function
.size func_8021ED3C_ovl18, . - func_8021ED3C_ovl18
