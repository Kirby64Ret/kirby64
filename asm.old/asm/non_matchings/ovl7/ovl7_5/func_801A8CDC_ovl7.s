glabel func_801A8CDC_ovl7
/* 14ED4C 801A8CDC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 14ED50 801A8CE0 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 14ED54 801A8CE4 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 14ED58 801A8CE8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 14ED5C 801A8CEC F7B40010 */  sdc1  $f20, 0x10($sp)
/* 14ED60 801A8CF0 AFA40030 */  sw    $a0, 0x30($sp)
/* 14ED64 801A8CF4 8CA20000 */  lw    $v0, ($a1)
/* 14ED68 801A8CF8 3C06800E */ lui $a2, %hi(D_800E1B50)
/* 14ED6C 801A8CFC 3C18800B */  lui   $t8, %hi(D_800B4D70) # $t8, 0x800b
/* 14ED70 801A8D00 00021080 */  sll   $v0, $v0, 2
/* 14ED74 801A8D04 00C23021 */  addu  $a2, $a2, $v0
/* 14ED78 801A8D08 8CC61B50 */ lw $a2, %lo(D_800E1B50)($a2)
/* 14ED7C 801A8D0C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 14ED80 801A8D10 00220821 */  addu  $at, $at, $v0
/* 14ED84 801A8D14 8CCE0088 */  lw    $t6, 0x88($a2)
/* 14ED88 801A8D18 27184D70 */  addiu $t8, %lo(D_800B4D70) # addiu $t8, $t8, 0x4d70
/* 14ED8C 801A8D1C 3C19801B */  lui   $t9, %hi(D_801A8FFC) # $t9, 0x801b
/* 14ED90 801A8D20 8DC3000C */  lw    $v1, 0xc($t6)
/* 14ED94 801A8D24 27398FFC */  addiu $t9, %lo(D_801A8FFC) # addiu $t9, $t9, -0x7004
/* 14ED98 801A8D28 240B0023 */  li    $t3, 35
/* 14ED9C 801A8D2C 8C6F0000 */  lw    $t7, ($v1)
/* 14EDA0 801A8D30 AC38EF90 */ sw $t8, %lo(D_800DEF90)($at)
/* 14EDA4 801A8D34 3C01800E */ lui $at, %hi(D_800DF150)
/* 14EDA8 801A8D38 AFAF0024 */  sw    $t7, 0x24($sp)
/* 14EDAC 801A8D3C 8CA90000 */  lw    $t1, ($a1)
/* 14EDB0 801A8D40 00002025 */  move  $a0, $zero
/* 14EDB4 801A8D44 00095080 */  sll   $t2, $t1, 2
/* 14EDB8 801A8D48 002A0821 */  addu  $at, $at, $t2
/* 14EDBC 801A8D4C AC39F150 */ sw $t9, %lo(D_800DF150)($at)
/* 14EDC0 801A8D50 8CAC0000 */  lw    $t4, ($a1)
/* 14EDC4 801A8D54 3C01800E */ lui $at, %hi(D_800DDA90)
/* 14EDC8 801A8D58 AFA6002C */  sw    $a2, 0x2c($sp)
/* 14EDCC 801A8D5C 000C6880 */  sll   $t5, $t4, 2
/* 14EDD0 801A8D60 002D0821 */  addu  $at, $at, $t5
/* 14EDD4 801A8D64 0C02BEED */  jal   func_800AFBB4
/* 14EDD8 801A8D68 AC2BDA90 */ sw $t3, %lo(D_800DDA90)($at)
/* 14EDDC 801A8D6C 4480A000 */  mtc1  $zero, $f20
/* 14EDE0 801A8D70 0C02BB30 */  jal   func_800AECC0
/* 14EDE4 801A8D74 4600A306 */   mov.s $f12, $f20
/* 14EDE8 801A8D78 0C02BB48 */  jal   func_800AED20
/* 14EDEC 801A8D7C 4600A306 */   mov.s $f12, $f20
/* 14EDF0 801A8D80 8FAE002C */  lw    $t6, 0x2c($sp)
/* 14EDF4 801A8D84 8DC20034 */  lw    $v0, 0x34($t6)
/* 14EDF8 801A8D88 10400003 */  beqz  $v0, .L801A8D98_ovl7
/* 14EDFC 801A8D8C 00000000 */   nop   
/* 14EE00 801A8D90 0C0288B5 */  jal   func_800A22D4
/* 14EE04 801A8D94 00402025 */   move  $a0, $v0
.L801A8D98_ovl7:
/* 14EE08 801A8D98 0C0288C0 */  jal   func_800A2300
/* 14EE0C 801A8D9C 8FA40030 */   lw    $a0, 0x30($sp)
/* 14EE10 801A8DA0 8FAF002C */  lw    $t7, 0x2c($sp)
/* 14EE14 801A8DA4 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 14EE18 801A8DA8 3C01800E */ lui $at, %hi(D_800E2090)
/* 14EE1C 801A8DAC ADE00034 */  sw    $zero, 0x34($t7)
/* 14EE20 801A8DB0 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 14EE24 801A8DB4 3C03800E */  lui   $v1, %hi(D_800E4E10) # $v1, 0x800e
/* 14EE28 801A8DB8 24634E10 */  addiu $v1, %lo(D_800E4E10) # addiu $v1, $v1, 0x4e10
/* 14EE2C 801A8DBC 8CB80000 */  lw    $t8, ($a1)
/* 14EE30 801A8DC0 3C04800F */  lui   $a0, %hi(D_800EA6E0) # $a0, 0x800f
/* 14EE34 801A8DC4 2484A6E0 */  addiu $a0, %lo(D_800EA6E0) # addiu $a0, $a0, -0x5920
/* 14EE38 801A8DC8 00184880 */  sll   $t1, $t8, 2
/* 14EE3C 801A8DCC 00290821 */  addu  $at, $at, $t1
/* 14EE40 801A8DD0 E4342090 */ swc1 $f20, %lo(D_800E2090)($at)
/* 14EE44 801A8DD4 8CB90000 */  lw    $t9, ($a1)
/* 14EE48 801A8DD8 3C01800E */ lui $at, %hi(D_800E2250)
/* 14EE4C 801A8DDC 3C06800E */  lui   $a2, %hi(D_800E5350) # $a2, 0x800e
/* 14EE50 801A8DE0 00195080 */  sll   $t2, $t9, 2
/* 14EE54 801A8DE4 002A0821 */  addu  $at, $at, $t2
/* 14EE58 801A8DE8 E4342250 */ swc1 $f20, %lo(D_800E2250)($at)
/* 14EE5C 801A8DEC 8CAC0000 */  lw    $t4, ($a1)
/* 14EE60 801A8DF0 3C01800E */ lui $at, %hi(D_800E2410)
/* 14EE64 801A8DF4 24C65350 */  addiu $a2, %lo(D_800E5350) # addiu $a2, $a2, 0x5350
/* 14EE68 801A8DF8 000C5880 */  sll   $t3, $t4, 2
/* 14EE6C 801A8DFC 002B0821 */  addu  $at, $at, $t3
/* 14EE70 801A8E00 E4342410 */ swc1 $f20, %lo(D_800E2410)($at)
/* 14EE74 801A8E04 8CAD0000 */  lw    $t5, ($a1)
/* 14EE78 801A8E08 3C01800E */ lui $at, %hi(D_800E4C50)
/* 14EE7C 801A8E0C 3C07800E */  lui   $a3, %hi(D_800E3910) # $a3, 0x800e
/* 14EE80 801A8E10 000D7080 */  sll   $t6, $t5, 2
/* 14EE84 801A8E14 006E7821 */  addu  $t7, $v1, $t6
/* 14EE88 801A8E18 E5F40000 */  swc1  $f20, ($t7)
/* 14EE8C 801A8E1C 8CA20000 */  lw    $v0, ($a1)
/* 14EE90 801A8E20 8FA90024 */  lw    $t1, 0x24($sp)
/* 14EE94 801A8E24 24E73910 */  addiu $a3, %lo(D_800E3910) # addiu $a3, $a3, 0x3910
/* 14EE98 801A8E28 00021080 */  sll   $v0, $v0, 2
/* 14EE9C 801A8E2C 0062C021 */  addu  $t8, $v1, $v0
/* 14EEA0 801A8E30 C7040000 */  lwc1  $f4, ($t8)
/* 14EEA4 801A8E34 00220821 */  addu  $at, $at, $v0
/* 14EEA8 801A8E38 3C08800E */  lui   $t0, %hi(D_800E3E50) # $t0, 0x800e
/* 14EEAC 801A8E3C E4244C50 */ swc1 $f4, %lo(D_800E4C50)($at)
/* 14EEB0 801A8E40 8CB90000 */  lw    $t9, ($a1)
/* 14EEB4 801A8E44 C5260010 */  lwc1  $f6, 0x10($t1)
/* 14EEB8 801A8E48 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 14EEBC 801A8E4C 00195080 */  sll   $t2, $t9, 2
/* 14EEC0 801A8E50 008A6021 */  addu  $t4, $a0, $t2
/* 14EEC4 801A8E54 E5860000 */  swc1  $f6, ($t4)
/* 14EEC8 801A8E58 8CA20000 */  lw    $v0, ($a1)
/* 14EECC 801A8E5C 25083E50 */  addiu $t0, %lo(D_800E3E50) # addiu $t0, $t0, 0x3e50
/* 14EED0 801A8E60 00021080 */  sll   $v0, $v0, 2
/* 14EED4 801A8E64 00825821 */  addu  $t3, $a0, $v0
/* 14EED8 801A8E68 C5620000 */  lwc1  $f2, ($t3)
/* 14EEDC 801A8E6C 00220821 */  addu  $at, $at, $v0
/* 14EEE0 801A8E70 E42248D0 */ swc1 $f2, %lo(gEntitiesScaleZArray)($at)
/* 14EEE4 801A8E74 8CAD0000 */  lw    $t5, ($a1)
/* 14EEE8 801A8E78 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 14EEEC 801A8E7C 000D7080 */  sll   $t6, $t5, 2
/* 14EEF0 801A8E80 002E0821 */  addu  $at, $at, $t6
/* 14EEF4 801A8E84 E4224710 */ swc1 $f2, %lo(gEntitiesScaleYArray)($at)
/* 14EEF8 801A8E88 8CAF0000 */  lw    $t7, ($a1)
/* 14EEFC 801A8E8C 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 14EF00 801A8E90 000FC080 */  sll   $t8, $t7, 2
/* 14EF04 801A8E94 00380821 */  addu  $at, $at, $t8
/* 14EF08 801A8E98 E4224550 */ swc1 $f2, %lo(gEntitiesScaleXArray)($at)
/* 14EF0C 801A8E9C 8CA90000 */  lw    $t1, ($a1)
/* 14EF10 801A8EA0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 14EF14 801A8EA4 44814000 */  mtc1  $at, $f8
/* 14EF18 801A8EA8 0009C880 */  sll   $t9, $t1, 2
/* 14EF1C 801A8EAC 00D95021 */  addu  $t2, $a2, $t9
/* 14EF20 801A8EB0 E5480000 */  swc1  $f8, ($t2)
/* 14EF24 801A8EB4 8CA20000 */  lw    $v0, ($a1)
/* 14EF28 801A8EB8 3C01800E */ lui $at, %hi(D_800E5190)
/* 14EF2C 801A8EBC 00021080 */  sll   $v0, $v0, 2
/* 14EF30 801A8EC0 00C26021 */  addu  $t4, $a2, $v0
/* 14EF34 801A8EC4 C58C0000 */  lwc1  $f12, ($t4)
/* 14EF38 801A8EC8 00220821 */  addu  $at, $at, $v0
/* 14EF3C 801A8ECC E42C5190 */ swc1 $f12, %lo(D_800E5190)($at)
/* 14EF40 801A8ED0 8CAB0000 */  lw    $t3, ($a1)
/* 14EF44 801A8ED4 3C01800E */ lui $at, %hi(D_800E4FD0)
/* 14EF48 801A8ED8 000B6880 */  sll   $t5, $t3, 2
/* 14EF4C 801A8EDC 002D0821 */  addu  $at, $at, $t5
/* 14EF50 801A8EE0 E42C4FD0 */ swc1 $f12, %lo(D_800E4FD0)($at)
/* 14EF54 801A8EE4 8CAE0000 */  lw    $t6, ($a1)
/* 14EF58 801A8EE8 3C01800E */ lui $at, %hi(D_800E3750)
/* 14EF5C 801A8EEC 000E7880 */  sll   $t7, $t6, 2
/* 14EF60 801A8EF0 00EFC021 */  addu  $t8, $a3, $t7
/* 14EF64 801A8EF4 E7140000 */  swc1  $f20, ($t8)
/* 14EF68 801A8EF8 8CA20000 */  lw    $v0, ($a1)
/* 14EF6C 801A8EFC 00021080 */  sll   $v0, $v0, 2
/* 14EF70 801A8F00 00E24821 */  addu  $t1, $a3, $v0
/* 14EF74 801A8F04 C5200000 */  lwc1  $f0, ($t1)
/* 14EF78 801A8F08 00220821 */  addu  $at, $at, $v0
/* 14EF7C 801A8F0C E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 14EF80 801A8F10 8CB90000 */  lw    $t9, ($a1)
/* 14EF84 801A8F14 3C01800E */ lui $at, %hi(D_800E3590)
/* 14EF88 801A8F18 00195080 */  sll   $t2, $t9, 2
/* 14EF8C 801A8F1C 002A0821 */  addu  $at, $at, $t2
/* 14EF90 801A8F20 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 14EF94 801A8F24 8CAC0000 */  lw    $t4, ($a1)
/* 14EF98 801A8F28 3C01800E */ lui $at, %hi(D_800E33D0)
/* 14EF9C 801A8F2C 000C5880 */  sll   $t3, $t4, 2
/* 14EFA0 801A8F30 002B0821 */  addu  $at, $at, $t3
/* 14EFA4 801A8F34 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 14EFA8 801A8F38 8CAD0000 */  lw    $t5, ($a1)
/* 14EFAC 801A8F3C 3C01800E */ lui $at, %hi(D_800E3210)
/* 14EFB0 801A8F40 000D7080 */  sll   $t6, $t5, 2
/* 14EFB4 801A8F44 002E0821 */  addu  $at, $at, $t6
/* 14EFB8 801A8F48 E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 14EFBC 801A8F4C 8CAF0000 */  lw    $t7, ($a1)
/* 14EFC0 801A8F50 3C01800E */ lui $at, %hi(D_800E3050)
/* 14EFC4 801A8F54 240E0001 */  li    $t6, 1
/* 14EFC8 801A8F58 000FC080 */  sll   $t8, $t7, 2
/* 14EFCC 801A8F5C 00380821 */  addu  $at, $at, $t8
/* 14EFD0 801A8F60 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 14EFD4 801A8F64 8CA90000 */  lw    $t1, ($a1)
/* 14EFD8 801A8F68 3C01801D */  lui   $at, %hi(D_801CE08C) # $at, 0x801d
/* 14EFDC 801A8F6C C42AE08C */  lwc1  $f10, %lo(D_801CE08C)($at)
/* 14EFE0 801A8F70 0009C880 */  sll   $t9, $t1, 2
/* 14EFE4 801A8F74 01195021 */  addu  $t2, $t0, $t9
/* 14EFE8 801A8F78 E54A0000 */  swc1  $f10, ($t2)
/* 14EFEC 801A8F7C 8CA20000 */  lw    $v0, ($a1)
/* 14EFF0 801A8F80 3C01800E */ lui $at, %hi(D_800E3C90)
/* 14EFF4 801A8F84 00021080 */  sll   $v0, $v0, 2
/* 14EFF8 801A8F88 01026021 */  addu  $t4, $t0, $v0
/* 14EFFC 801A8F8C C58E0000 */  lwc1  $f14, ($t4)
/* 14F000 801A8F90 00220821 */  addu  $at, $at, $v0
/* 14F004 801A8F94 E42E3C90 */ swc1 $f14, %lo(D_800E3C90)($at)
/* 14F008 801A8F98 8CAB0000 */  lw    $t3, ($a1)
/* 14F00C 801A8F9C 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 14F010 801A8FA0 000B6880 */  sll   $t5, $t3, 2
/* 14F014 801A8FA4 002D0821 */  addu  $at, $at, $t5
/* 14F018 801A8FA8 E42E3AD0 */ swc1 $f14, %lo(D_800E3AD0)($at)
/* 14F01C 801A8FAC 8CAF0000 */  lw    $t7, ($a1)
/* 14F020 801A8FB0 3C01800F */ lui $at, %hi(D_800E8E60)
/* 14F024 801A8FB4 000FC080 */  sll   $t8, $t7, 2
/* 14F028 801A8FB8 00380821 */  addu  $at, $at, $t8
/* 14F02C 801A8FBC AC2E8E60 */ sw $t6, %lo(D_800E8E60)($at)
/* 14F030 801A8FC0 8CA90000 */  lw    $t1, ($a1)
/* 14F034 801A8FC4 3C01800F */ lui $at, %hi(D_800E8220)
/* 14F038 801A8FC8 0009C880 */  sll   $t9, $t1, 2
/* 14F03C 801A8FCC 00390821 */  addu  $at, $at, $t9
/* 14F040 801A8FD0 AC208220 */ sw $zero, %lo(D_800E8220)($at)
/* 14F044 801A8FD4 3C018013 */  lui   $at, %hi(D_8012E86C) # $at, 0x8013
/* 14F048 801A8FD8 0C02BD02 */  jal   func_800AF408
/* 14F04C 801A8FDC AC20E86C */   sw    $zero, %lo(D_8012E86C)($at)
/* 14F050 801A8FE0 0C02BE85 */  jal   func_800AFA14
/* 14F054 801A8FE4 00000000 */   nop   
/* 14F058 801A8FE8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14F05C 801A8FEC D7B40010 */  ldc1  $f20, 0x10($sp)
/* 14F060 801A8FF0 27BD0030 */  addiu $sp, $sp, 0x30
/* 14F064 801A8FF4 03E00008 */  jr    $ra
/* 14F068 801A8FF8 00000000 */   nop   
.type func_801A8CDC_ovl7, @function
.size func_801A8CDC_ovl7, . - func_801A8CDC_ovl7
