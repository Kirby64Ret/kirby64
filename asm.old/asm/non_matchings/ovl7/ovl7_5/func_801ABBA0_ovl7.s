glabel func_801ABBA0_ovl7
/* 151C10 801ABBA0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 151C14 801ABBA4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 151C18 801ABBA8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 151C1C 801ABBAC AFBF0014 */  sw    $ra, 0x14($sp)
/* 151C20 801ABBB0 AFA40028 */  sw    $a0, 0x28($sp)
/* 151C24 801ABBB4 8C620000 */  lw    $v0, ($v1)
/* 151C28 801ABBB8 3C0E800E */ lui $t6, %hi(D_800E1B50)
/* 151C2C 801ABBBC 3C0B800B */  lui   $t3, %hi(func_800B4954) # $t3, 0x800b
/* 151C30 801ABBC0 00021080 */  sll   $v0, $v0, 2
/* 151C34 801ABBC4 01C27021 */  addu  $t6, $t6, $v0
/* 151C38 801ABBC8 8DCE1B50 */ lw $t6, %lo(D_800E1B50)($t6)
/* 151C3C 801ABBCC 3C01800E */ lui $at, %hi(D_800DEF90)
/* 151C40 801ABBD0 00220821 */  addu  $at, $at, $v0
/* 151C44 801ABBD4 AFAE0024 */  sw    $t6, 0x24($sp)
/* 151C48 801ABBD8 8DD80088 */  lw    $t8, 0x88($t6)
/* 151C4C 801ABBDC 256B4954 */  addiu $t3, %lo(func_800B4954) # addiu $t3, $t3, 0x4954
/* 151C50 801ABBE0 3C05800E */  lui   $a1, %hi(D_800E0D50) # $a1, 0x800e
/* 151C54 801ABBE4 8F19000C */  lw    $t9, 0xc($t8)
/* 151C58 801ABBE8 24A50D50 */  addiu $a1, %lo(D_800E0D50) # addiu $a1, $a1, 0xd50
/* 151C5C 801ABBEC 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosXArray) # $t7, 0x800e
/* 151C60 801ABBF0 8F290004 */  lw    $t1, 4($t9)
/* 151C64 801ABBF4 25EF25D0 */  addiu $t7, %lo(gEntitiesNextPosXArray) # addiu $t7, $t7, 0x25d0
/* 151C68 801ABBF8 3C08800E */  lui   $t0, %hi(D_800E6A10) # $t0, 0x800e
/* 151C6C 801ABBFC 8D2A001C */  lw    $t2, 0x1c($t1)
/* 151C70 801ABC00 AC2BEF90 */ sw $t3, %lo(D_800DEF90)($at)
/* 151C74 801ABC04 3C01800F */ lui $at, %hi(D_800EC820)
/* 151C78 801ABC08 AFAA001C */  sw    $t2, 0x1c($sp)
/* 151C7C 801ABC0C 8C620000 */  lw    $v0, ($v1)
/* 151C80 801ABC10 25086A10 */  addiu $t0, %lo(D_800E6A10) # addiu $t0, $t0, 0x6a10
/* 151C84 801ABC14 3C06800E */  lui   $a2, %hi(D_800E5F90) # $a2, 0x800e
/* 151C88 801ABC18 00021080 */  sll   $v0, $v0, 2
/* 151C8C 801ABC1C 00A26021 */  addu  $t4, $a1, $v0
/* 151C90 801ABC20 8D8D0000 */  lw    $t5, ($t4)
/* 151C94 801ABC24 004FC821 */  addu  $t9, $v0, $t7
/* 151C98 801ABC28 3C0C800E */  lui   $t4, %hi(gEntitiesNextPosZArray) # $t4, 0x800e
/* 151C9C 801ABC2C 000D7080 */  sll   $t6, $t5, 2
/* 151CA0 801ABC30 01CFC021 */  addu  $t8, $t6, $t7
/* 151CA4 801ABC34 C7040000 */  lwc1  $f4, ($t8)
/* 151CA8 801ABC38 258C2950 */  addiu $t4, %lo(gEntitiesNextPosZArray) # addiu $t4, $t4, 0x2950
/* 151CAC 801ABC3C 24C65F90 */  addiu $a2, %lo(D_800E5F90) # addiu $a2, $a2, 0x5f90
/* 151CB0 801ABC40 E7240000 */  swc1  $f4, ($t9)
/* 151CB4 801ABC44 8C620000 */  lw    $v0, ($v1)
/* 151CB8 801ABC48 3C07800E */  lui   $a3, %hi(D_800E6BD0) # $a3, 0x800e
/* 151CBC 801ABC4C 24E76BD0 */  addiu $a3, %lo(D_800E6BD0) # addiu $a3, $a3, 0x6bd0
/* 151CC0 801ABC50 00021080 */  sll   $v0, $v0, 2
/* 151CC4 801ABC54 00220821 */  addu  $at, $at, $v0
/* 151CC8 801ABC58 C426C820 */ lwc1 $f6, %lo(D_800EC820)($at)
/* 151CCC 801ABC5C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 151CD0 801ABC60 44814000 */  mtc1  $at, $f8
/* 151CD4 801ABC64 3C01800E */  lui   $at, %hi(gEntitiesNextPosYArray) # $at, 0x800e
/* 151CD8 801ABC68 C4302790 */  lwc1  $f16, %lo(gEntitiesNextPosYArray)($at)
/* 151CDC 801ABC6C 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 151CE0 801ABC70 46083282 */  mul.s $f10, $f6, $f8
/* 151CE4 801ABC74 44819000 */  mtc1  $at, $f18
/* 151CE8 801ABC78 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 151CEC 801ABC7C 00220821 */  addu  $at, $at, $v0
/* 151CF0 801ABC80 46128100 */  add.s $f4, $f16, $f18
/* 151CF4 801ABC84 46045180 */  add.s $f6, $f10, $f4
/* 151CF8 801ABC88 E4262790 */ swc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 151CFC 801ABC8C 8C620000 */  lw    $v0, ($v1)
/* 151D00 801ABC90 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 151D04 801ABC94 44815000 */  mtc1  $at, $f10
/* 151D08 801ABC98 00021080 */  sll   $v0, $v0, 2
/* 151D0C 801ABC9C 00A24821 */  addu  $t1, $a1, $v0
/* 151D10 801ABCA0 8D2A0000 */  lw    $t2, ($t1)
/* 151D14 801ABCA4 004C7021 */  addu  $t6, $v0, $t4
/* 151D18 801ABCA8 000A5880 */  sll   $t3, $t2, 2
/* 151D1C 801ABCAC 016C6821 */  addu  $t5, $t3, $t4
/* 151D20 801ABCB0 C5A80000 */  lwc1  $f8, ($t5)
/* 151D24 801ABCB4 E5C80000 */  swc1  $f8, ($t6)
/* 151D28 801ABCB8 8C620000 */  lw    $v0, ($v1)
/* 151D2C 801ABCBC 00021080 */  sll   $v0, $v0, 2
/* 151D30 801ABCC0 00A2C021 */  addu  $t8, $a1, $v0
/* 151D34 801ABCC4 8F0F0000 */  lw    $t7, ($t8)
/* 151D38 801ABCC8 01025021 */  addu  $t2, $t0, $v0
/* 151D3C 801ABCCC 000FC880 */  sll   $t9, $t7, 2
/* 151D40 801ABCD0 01194821 */  addu  $t1, $t0, $t9
/* 151D44 801ABCD4 C5300000 */  lwc1  $f16, ($t1)
/* 151D48 801ABCD8 E5500000 */  swc1  $f16, ($t2)
/* 151D4C 801ABCDC 8C620000 */  lw    $v0, ($v1)
/* 151D50 801ABCE0 00021080 */  sll   $v0, $v0, 2
/* 151D54 801ABCE4 00A25821 */  addu  $t3, $a1, $v0
/* 151D58 801ABCE8 8D6D0000 */  lw    $t5, ($t3)
/* 151D5C 801ABCEC 00C27821 */  addu  $t7, $a2, $v0
/* 151D60 801ABCF0 000D6080 */  sll   $t4, $t5, 2
/* 151D64 801ABCF4 00CC7021 */  addu  $t6, $a2, $t4
/* 151D68 801ABCF8 8DD80000 */  lw    $t8, ($t6)
/* 151D6C 801ABCFC ADF80000 */  sw    $t8, ($t7)
/* 151D70 801ABD00 8C620000 */  lw    $v0, ($v1)
/* 151D74 801ABD04 00021080 */  sll   $v0, $v0, 2
/* 151D78 801ABD08 00A2C821 */  addu  $t9, $a1, $v0
/* 151D7C 801ABD0C 8F290000 */  lw    $t1, ($t9)
/* 151D80 801ABD10 00E26821 */  addu  $t5, $a3, $v0
/* 151D84 801ABD14 00095080 */  sll   $t2, $t1, 2
/* 151D88 801ABD18 00EA5821 */  addu  $t3, $a3, $t2
/* 151D8C 801ABD1C C5720000 */  lwc1  $f18, ($t3)
/* 151D90 801ABD20 E5B20000 */  swc1  $f18, ($t5)
/* 151D94 801ABD24 8C620000 */  lw    $v0, ($v1)
/* 151D98 801ABD28 00021080 */  sll   $v0, $v0, 2
/* 151D9C 801ABD2C 01026021 */  addu  $t4, $t0, $v0
/* 151DA0 801ABD30 C5840000 */  lwc1  $f4, ($t4)
/* 151DA4 801ABD34 46045032 */  c.eq.s $f10, $f4
/* 151DA8 801ABD38 00000000 */  nop   
/* 151DAC 801ABD3C 4500000A */  bc1f  .L801ABD68_ovl7
/* 151DB0 801ABD40 00A27021 */   addu  $t6, $a1, $v0
/* 151DB4 801ABD44 8DD80000 */  lw    $t8, ($t6)
/* 151DB8 801ABD48 3C04800E */  lui   $a0, %hi(D_800E17D0) # $a0, 0x800e
/* 151DBC 801ABD4C 248417D0 */  addiu $a0, %lo(D_800E17D0) # addiu $a0, $a0, 0x17d0
/* 151DC0 801ABD50 00187880 */  sll   $t7, $t8, 2
/* 151DC4 801ABD54 008FC821 */  addu  $t9, $a0, $t7
/* 151DC8 801ABD58 C7260000 */  lwc1  $f6, ($t9)
/* 151DCC 801ABD5C 00824821 */  addu  $t1, $a0, $v0
/* 151DD0 801ABD60 1000000D */  b     .L801ABD98_ovl7
/* 151DD4 801ABD64 E5260000 */   swc1  $f6, ($t1)
.L801ABD68_ovl7:
/* 151DD8 801ABD68 00A25021 */  addu  $t2, $a1, $v0
/* 151DDC 801ABD6C 8D4B0000 */  lw    $t3, ($t2)
/* 151DE0 801ABD70 3C04800E */  lui   $a0, %hi(D_800E17D0) # $a0, 0x800e
/* 151DE4 801ABD74 248417D0 */  addiu $a0, %lo(D_800E17D0) # addiu $a0, $a0, 0x17d0
/* 151DE8 801ABD78 000B6880 */  sll   $t5, $t3, 2
/* 151DEC 801ABD7C 008D6021 */  addu  $t4, $a0, $t5
/* 151DF0 801ABD80 3C01801D */  lui   $at, %hi(D_801CE15C) # $at, 0x801d
/* 151DF4 801ABD84 C430E15C */  lwc1  $f16, %lo(D_801CE15C)($at)
/* 151DF8 801ABD88 C5880000 */  lwc1  $f8, ($t4)
/* 151DFC 801ABD8C 00827021 */  addu  $t6, $a0, $v0
/* 151E00 801ABD90 46104480 */  add.s $f18, $f8, $f16
/* 151E04 801ABD94 E5D20000 */  swc1  $f18, ($t6)
.L801ABD98_ovl7:
/* 151E08 801ABD98 8C780000 */  lw    $t8, ($v1)
/* 151E0C 801ABD9C 3C01800F */ lui $at, %hi(D_800E8E60)
/* 151E10 801ABDA0 8FAA0024 */  lw    $t2, 0x24($sp)
/* 151E14 801ABDA4 00187880 */  sll   $t7, $t8, 2
/* 151E18 801ABDA8 002F0821 */  addu  $at, $at, $t7
/* 151E1C 801ABDAC AC208E60 */ sw $zero, %lo(D_800E8E60)($at)
/* 151E20 801ABDB0 8C790000 */  lw    $t9, ($v1)
/* 151E24 801ABDB4 3C01800E */ lui $at, %hi(D_800DF310)
/* 151E28 801ABDB8 00194880 */  sll   $t1, $t9, 2
/* 151E2C 801ABDBC 00290821 */  addu  $at, $at, $t1
/* 151E30 801ABDC0 AC20F310 */ sw $zero, %lo(D_800DF310)($at)
/* 151E34 801ABDC4 8D420034 */  lw    $v0, 0x34($t2)
/* 151E38 801ABDC8 10400003 */  beqz  $v0, .L801ABDD8_ovl7
/* 151E3C 801ABDCC 00000000 */   nop   
/* 151E40 801ABDD0 0C0288B5 */  jal   func_800A22D4
/* 151E44 801ABDD4 00402025 */   move  $a0, $v0
.L801ABDD8_ovl7:
/* 151E48 801ABDD8 0C0288C0 */  jal   func_800A2300
/* 151E4C 801ABDDC 8FA40028 */   lw    $a0, 0x28($sp)
/* 151E50 801ABDE0 8FAB0024 */  lw    $t3, 0x24($sp)
/* 151E54 801ABDE4 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 151E58 801ABDE8 3C02800E */ lui $v0, %hi(D_800E7730)
/* 151E5C 801ABDEC AD600034 */  sw    $zero, 0x34($t3)
/* 151E60 801ABDF0 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 151E64 801ABDF4 3C04800E */  lui   $a0, %hi(D_800E77A0) # $a0, 0x800e
/* 151E68 801ABDF8 248477A0 */  addiu $a0, %lo(D_800E77A0) # addiu $a0, $a0, 0x77a0
/* 151E6C 801ABDFC 8DA60000 */  lw    $a2, ($t5)
/* 151E70 801ABE00 24030006 */  li    $v1, 6
/* 151E74 801ABE04 00461021 */  addu  $v0, $v0, $a2
/* 151E78 801ABE08 90427730 */ lbu $v0, %lo(D_800E7730)($v0)
/* 151E7C 801ABE0C 00066040 */  sll   $t4, $a2, 1
/* 151E80 801ABE10 008C7021 */  addu  $t6, $a0, $t4
/* 151E84 801ABE14 1462000F */  bne   $v1, $v0, .L801ABE54_ovl7
/* 151E88 801ABE18 3C04800E */   lui   $a0, %hi(D_800E77A0) # $a0, 0x800e
/* 151E8C 801ABE1C 95C50000 */  lhu   $a1, ($t6)
/* 151E90 801ABE20 18A0000C */  blez  $a1, .L801ABE54_ovl7
/* 151E94 801ABE24 28A10008 */   slti  $at, $a1, 8
/* 151E98 801ABE28 1020000A */  beqz  $at, .L801ABE54_ovl7
/* 151E9C 801ABE2C 00000000 */   nop   
/* 151EA0 801ABE30 0C06F06B */  jal   func_801BC1AC_ovl7
/* 151EA4 801ABE34 00A02025 */   move  $a0, $a1
/* 151EA8 801ABE38 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 151EAC 801ABE3C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 151EB0 801ABE40 3C01800D */  lui   $at, %hi(D_800D7090) # $at, 0x800d
/* 151EB4 801ABE44 8C780000 */  lw    $t8, ($v1)
/* 151EB8 801ABE48 AC387090 */  sw    $t8, %lo(D_800D7090)($at)
/* 151EBC 801ABE4C 10000025 */  b     .L801ABEE4_ovl7
/* 151EC0 801ABE50 8C660000 */   lw    $a2, ($v1)
.L801ABE54_ovl7:
/* 151EC4 801ABE54 14620012 */  bne   $v1, $v0, .L801ABEA0_ovl7
/* 151EC8 801ABE58 248477A0 */   addiu $a0, %lo(D_800E77A0) # addiu $a0, $a0, 0x77a0
/* 151ECC 801ABE5C 00067840 */  sll   $t7, $a2, 1
/* 151ED0 801ABE60 008FC821 */  addu  $t9, $a0, $t7
/* 151ED4 801ABE64 97250000 */  lhu   $a1, ($t9)
/* 151ED8 801ABE68 28A10008 */  slti  $at, $a1, 8
/* 151EDC 801ABE6C 1420000C */  bnez  $at, .L801ABEA0_ovl7
/* 151EE0 801ABE70 28A10024 */   slti  $at, $a1, 0x24
/* 151EE4 801ABE74 1020000A */  beqz  $at, .L801ABEA0_ovl7
/* 151EE8 801ABE78 00000000 */   nop   
/* 151EEC 801ABE7C 0C06F113 */  jal   func_801BC44C_ovl7
/* 151EF0 801ABE80 00A02025 */   move  $a0, $a1
/* 151EF4 801ABE84 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 151EF8 801ABE88 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 151EFC 801ABE8C 3C01800D */  lui   $at, %hi(D_800D7090) # $at, 0x800d
/* 151F00 801ABE90 8C690000 */  lw    $t1, ($v1)
/* 151F04 801ABE94 AC297090 */  sw    $t1, %lo(D_800D7090)($at)
/* 151F08 801ABE98 10000012 */  b     .L801ABEE4_ovl7
/* 151F0C 801ABE9C 8C660000 */   lw    $a2, ($v1)
.L801ABEA0_ovl7:
/* 151F10 801ABEA0 14620010 */  bne   $v1, $v0, .L801ABEE4_ovl7
/* 151F14 801ABEA4 00065040 */   sll   $t2, $a2, 1
/* 151F18 801ABEA8 008A5821 */  addu  $t3, $a0, $t2
/* 151F1C 801ABEAC 95650000 */  lhu   $a1, ($t3)
/* 151F20 801ABEB0 28A10024 */  slti  $at, $a1, 0x24
/* 151F24 801ABEB4 1420000B */  bnez  $at, .L801ABEE4_ovl7
/* 151F28 801ABEB8 28A1002C */   slti  $at, $a1, 0x2c
/* 151F2C 801ABEBC 5020000A */  beql  $at, $zero, .L801ABEE8_ovl7
/* 151F30 801ABEC0 00066080 */   sll   $t4, $a2, 2
/* 151F34 801ABEC4 0C06F1CB */  jal   func_801BC72C_ovl7
/* 151F38 801ABEC8 24A4FFDC */   addiu $a0, $a1, -0x24
/* 151F3C 801ABECC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 151F40 801ABED0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 151F44 801ABED4 3C01800D */  lui   $at, %hi(D_800D7090) # $at, 0x800d
/* 151F48 801ABED8 8C6D0000 */  lw    $t5, ($v1)
/* 151F4C 801ABEDC AC2D7090 */  sw    $t5, %lo(D_800D7090)($at)
/* 151F50 801ABEE0 8C660000 */  lw    $a2, ($v1)
.L801ABEE4_ovl7:
/* 151F54 801ABEE4 00066080 */  sll   $t4, $a2, 2
.L801ABEE8_ovl7:
/* 151F58 801ABEE8 3C02800F */ lui $v0, %hi(D_800E8220)
/* 151F5C 801ABEEC 004C1021 */  addu  $v0, $v0, $t4
/* 151F60 801ABEF0 8C428220 */ lw $v0, %lo(D_800E8220)($v0)
/* 151F64 801ABEF4 24010001 */  li    $at, 1
/* 151F68 801ABEF8 3C04801D */ lui $a0, %hi(D_801CAF28)
/* 151F6C 801ABEFC 10400005 */  beqz  $v0, .L801ABF14_ovl7
/* 151F70 801ABF00 00000000 */   nop   
/* 151F74 801ABF04 10410007 */  beq   $v0, $at, .L801ABF24_ovl7
/* 151F78 801ABF08 3C04801D */   lui   $a0, %hi(D_801CAF28) # $a0, 0x801d
/* 151F7C 801ABF0C 10000007 */  b     .L801ABF2C_ovl7
/* 151F80 801ABF10 00000000 */   nop   
.L801ABF14_ovl7:
/* 151F84 801ABF14 0C068956 */  jal   func_801A2558_ovl7
/* 151F88 801ABF18 2484AF28 */   addiu $a0, %lo(D_801CAF28) # addiu $a0, $a0, -0x50d8
/* 151F8C 801ABF1C 10000003 */  b     .L801ABF2C_ovl7
/* 151F90 801ABF20 00000000 */   nop   
.L801ABF24_ovl7:
/* 151F94 801ABF24 0C068956 */  jal   func_801A2558_ovl7
/* 151F98 801ABF28 2484AF3C */   addiu $a0, $a0, -0x50c4
.L801ABF2C_ovl7:
/* 151F9C 801ABF2C 0C058738 */  jal   func_80161CE0_ovl7
/* 151FA0 801ABF30 8FA40028 */   lw    $a0, 0x28($sp)
/* 151FA4 801ABF34 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 151FA8 801ABF38 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 151FAC 801ABF3C 3C01800F */ lui $at, %hi(D_800EC660)
/* 151FB0 801ABF40 44805000 */  mtc1  $zero, $f10
/* 151FB4 801ABF44 8DC60000 */  lw    $a2, ($t6)
/* 151FB8 801ABF48 00061080 */  sll   $v0, $a2, 2
/* 151FBC 801ABF4C 00220821 */  addu  $at, $at, $v0
/* 151FC0 801ABF50 C420C660 */ lwc1 $f0, %lo(D_800EC660)($at)
/* 151FC4 801ABF54 3C01800E */ lui $at, %hi(D_800E6A10)
/* 151FC8 801ABF58 00220821 */  addu  $at, $at, $v0
/* 151FCC 801ABF5C 46005032 */  c.eq.s $f10, $f0
/* 151FD0 801ABF60 00000000 */  nop   
/* 151FD4 801ABF64 4501000B */  bc1t  .L801ABF94_ovl7
/* 151FD8 801ABF68 00000000 */   nop   
/* 151FDC 801ABF6C C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 151FE0 801ABF70 00C02025 */  move  $a0, $a2
/* 151FE4 801ABF74 46002182 */  mul.s $f6, $f4, $f0
/* 151FE8 801ABF78 44053000 */  mfc1  $a1, $f6
/* 151FEC 801ABF7C 0C03E63B */  jal   func_800F98EC
/* 151FF0 801ABF80 00000000 */   nop   
/* 151FF4 801ABF84 10400003 */  beqz  $v0, .L801ABF94_ovl7
/* 151FF8 801ABF88 00000000 */   nop   
/* 151FFC 801ABF8C 0C06B047 */  jal   func_801AC11C_ovl7
/* 152000 801ABF90 8FA40028 */   lw    $a0, 0x28($sp)
.L801ABF94_ovl7:
/* 152004 801ABF94 3C05800E */  lui   $a1, %hi(gEntitiesNextPosYArray) # $a1, 0x800e
/* 152008 801ABF98 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15200C 801ABF9C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 152010 801ABFA0 24A52790 */  addiu $a1, %lo(gEntitiesNextPosYArray) # addiu $a1, $a1, 0x2790
/* 152014 801ABFA4 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 152018 801ABFA8 44818000 */  mtc1  $at, $f16
/* 15201C 801ABFAC C4A80000 */  lwc1  $f8, ($a1)
/* 152020 801ABFB0 8C780000 */  lw    $t8, ($v1)
/* 152024 801ABFB4 3C09800F */ lui $t1, %hi(D_800E8220)
/* 152028 801ABFB8 46104480 */  add.s $f18, $f8, $f16
/* 15202C 801ABFBC 00187880 */  sll   $t7, $t8, 2
/* 152030 801ABFC0 00AFC821 */  addu  $t9, $a1, $t7
/* 152034 801ABFC4 24010001 */  li    $at, 1
/* 152038 801ABFC8 E7320000 */  swc1  $f18, ($t9)
/* 15203C 801ABFCC 8C620000 */  lw    $v0, ($v1)
/* 152040 801ABFD0 44804000 */  mtc1  $zero, $f8
/* 152044 801ABFD4 8FAA001C */  lw    $t2, 0x1c($sp)
/* 152048 801ABFD8 00021080 */  sll   $v0, $v0, 2
/* 15204C 801ABFDC 01224821 */  addu  $t1, $t1, $v0
/* 152050 801ABFE0 8D298220 */ lw $t1, %lo(D_800E8220)($t1)
/* 152054 801ABFE4 1521000C */  bne   $t1, $at, .L801AC018_ovl7
/* 152058 801ABFE8 00000000 */   nop   
/* 15205C 801ABFEC 8D4B0008 */  lw    $t3, 8($t2)
/* 152060 801ABFF0 24010001 */  li    $at, 1
/* 152064 801ABFF4 00A22021 */  addu  $a0, $a1, $v0
/* 152068 801ABFF8 15610007 */  bne   $t3, $at, .L801AC018_ovl7
/* 15206C 801ABFFC 3C0141F0 */   li    $at, 0x41F00000 # 30.000000
/* 152070 801AC000 44812000 */  mtc1  $at, $f4
/* 152074 801AC004 C48A0000 */  lwc1  $f10, ($a0)
/* 152078 801AC008 46045180 */  add.s $f6, $f10, $f4
/* 15207C 801AC00C E4860000 */  swc1  $f6, ($a0)
/* 152080 801AC010 8C620000 */  lw    $v0, ($v1)
/* 152084 801AC014 00021080 */  sll   $v0, $v0, 2
.L801AC018_ovl7:
/* 152088 801AC018 3C01800F */ lui $at, %hi(D_800EC820)
/* 15208C 801AC01C 00220821 */  addu  $at, $at, $v0
/* 152090 801AC020 C420C820 */ lwc1 $f0, %lo(D_800EC820)($at)
/* 152094 801AC024 00A22021 */  addu  $a0, $a1, $v0
/* 152098 801AC028 46004032 */  c.eq.s $f8, $f0
/* 15209C 801AC02C 00000000 */  nop   
/* 1520A0 801AC030 45030007 */  bc1tl .L801AC050_ovl7
/* 1520A4 801AC034 44800000 */   mtc1  $zero, $f0
/* 1520A8 801AC038 C4900000 */  lwc1  $f16, ($a0)
/* 1520AC 801AC03C 46008480 */  add.s $f18, $f16, $f0
/* 1520B0 801AC040 E4920000 */  swc1  $f18, ($a0)
/* 1520B4 801AC044 8C620000 */  lw    $v0, ($v1)
/* 1520B8 801AC048 00021080 */  sll   $v0, $v0, 2
/* 1520BC 801AC04C 44800000 */  mtc1  $zero, $f0
.L801AC050_ovl7:
/* 1520C0 801AC050 3C01800E */ lui $at, %hi(D_800E2090)
/* 1520C4 801AC054 00220821 */  addu  $at, $at, $v0
/* 1520C8 801AC058 E4202090 */ swc1 $f0, %lo(D_800E2090)($at)
/* 1520CC 801AC05C 8C6D0000 */  lw    $t5, ($v1)
/* 1520D0 801AC060 3C01800E */ lui $at, %hi(D_800E2250)
/* 1520D4 801AC064 8FAF0024 */  lw    $t7, 0x24($sp)
/* 1520D8 801AC068 000D6080 */  sll   $t4, $t5, 2
/* 1520DC 801AC06C 002C0821 */  addu  $at, $at, $t4
/* 1520E0 801AC070 E4202250 */ swc1 $f0, %lo(D_800E2250)($at)
/* 1520E4 801AC074 8C6E0000 */  lw    $t6, ($v1)
/* 1520E8 801AC078 3C01800E */ lui $at, %hi(D_800E2410)
/* 1520EC 801AC07C 000EC080 */  sll   $t8, $t6, 2
/* 1520F0 801AC080 00380821 */  addu  $at, $at, $t8
/* 1520F4 801AC084 E4202410 */ swc1 $f0, %lo(D_800E2410)($at)
/* 1520F8 801AC088 8DE40084 */  lw    $a0, 0x84($t7)
/* 1520FC 801AC08C 5080001A */  beql  $a0, $zero, .L801AC0F8_ovl7
/* 152100 801AC090 8C790000 */   lw    $t9, ($v1)
/* 152104 801AC094 8C790000 */  lw    $t9, ($v1)
/* 152108 801AC098 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 15210C 801AC09C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 152110 801AC0A0 00194880 */  sll   $t1, $t9, 2
/* 152114 801AC0A4 00290821 */  addu  $at, $at, $t1
/* 152118 801AC0A8 C42A25D0 */ lwc1 $f10, %lo(gEntitiesNextPosXArray)($at)
/* 15211C 801AC0AC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 152120 801AC0B0 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 152124 801AC0B4 E48A0004 */  swc1  $f10, 4($a0)
/* 152128 801AC0B8 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 15212C 801AC0BC 8D4B0000 */  lw    $t3, ($t2)
/* 152130 801AC0C0 000B6880 */  sll   $t5, $t3, 2
/* 152134 801AC0C4 00AD6021 */  addu  $t4, $a1, $t5
/* 152138 801AC0C8 C5840000 */  lwc1  $f4, ($t4)
/* 15213C 801AC0CC E4840008 */  swc1  $f4, 8($a0)
/* 152140 801AC0D0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 152144 801AC0D4 8DD80000 */  lw    $t8, ($t6)
/* 152148 801AC0D8 00187880 */  sll   $t7, $t8, 2
/* 15214C 801AC0DC 002F0821 */  addu  $at, $at, $t7
/* 152150 801AC0E0 C4262950 */ lwc1 $f6, %lo(gEntitiesNextPosZArray)($at)
/* 152154 801AC0E4 0C04146B */  jal   func_801051AC
/* 152158 801AC0E8 E486000C */   swc1  $f6, 0xc($a0)
/* 15215C 801AC0EC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 152160 801AC0F0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 152164 801AC0F4 8C790000 */  lw    $t9, ($v1)
.L801AC0F8_ovl7:
/* 152168 801AC0F8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 15216C 801AC0FC 00194880 */  sll   $t1, $t9, 2
/* 152170 801AC100 00290821 */  addu  $at, $at, $t1
/* 152174 801AC104 0C066ED6 */  jal   func_8019BB58_ovl7
/* 152178 801AC108 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 15217C 801AC10C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 152180 801AC110 27BD0028 */  addiu $sp, $sp, 0x28
/* 152184 801AC114 03E00008 */  jr    $ra
/* 152188 801AC118 00000000 */   nop   
.type func_801ABBA0_ovl7, @function
.size func_801ABBA0_ovl7, . - func_801ABBA0_ovl7
