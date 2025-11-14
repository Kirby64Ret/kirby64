glabel func_801ECCEC_ovl10
/* 1DDA5C 801ECCEC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DDA60 801ECCF0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DDA64 801ECCF4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DDA68 801ECCF8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DDA6C 801ECCFC AFB00018 */  sw    $s0, 0x18($sp)
/* 1DDA70 801ECD00 AFA40020 */  sw    $a0, 0x20($sp)
/* 1DDA74 801ECD04 8C620000 */  lw    $v0, ($v1)
/* 1DDA78 801ECD08 3C0E800B */  lui   $t6, %hi(D_800B79F4) # $t6, 0x800b
/* 1DDA7C 801ECD0C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DDA80 801ECD10 00021080 */  sll   $v0, $v0, 2
/* 1DDA84 801ECD14 00220821 */  addu  $at, $at, $v0
/* 1DDA88 801ECD18 25CE79F4 */  addiu $t6, %lo(D_800B79F4) # addiu $t6, $t6, 0x79f4
/* 1DDA8C 801ECD1C AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DDA90 801ECD20 8C780000 */  lw    $t8, ($v1)
/* 1DDA94 801ECD24 3C10800E */ lui $s0, %hi(D_800E1B50)
/* 1DDA98 801ECD28 02028021 */  addu  $s0, $s0, $v0
/* 1DDA9C 801ECD2C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DDAA0 801ECD30 0018C880 */  sll   $t9, $t8, 2
/* 1DDAA4 801ECD34 8E101B50 */ lw $s0, %lo(D_800E1B50)($s0)
/* 1DDAA8 801ECD38 00390821 */  addu  $at, $at, $t9
/* 1DDAAC 801ECD3C 240F0003 */  li    $t7, 3
/* 1DDAB0 801ECD40 3C08801F */  lui   $t0, %hi(D_801F4148_ovl10) # $t0, 0x801f
/* 1DDAB4 801ECD44 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 1DDAB8 801ECD48 25084148 */  addiu $t0, %lo(D_801F4148_ovl10) # addiu $t0, $t0, 0x4148
/* 1DDABC 801ECD4C 3C040001 */  lui   $a0, (0x000102B8 >> 16) # lui $a0, 1
/* 1DDAC0 801ECD50 348402B8 */  ori   $a0, (0x000102B8 & 0xFFFF) # ori $a0, $a0, 0x2b8
/* 1DDAC4 801ECD54 0C02A806 */  jal   func_800AA018
/* 1DDAC8 801ECD58 AE080098 */   sw    $t0, 0x98($s0)
/* 1DDACC 801ECD5C 3C040001 */  lui   $a0, (0x000102B9 >> 16) # lui $a0, 1
/* 1DDAD0 801ECD60 0C02A806 */  jal   func_800AA018
/* 1DDAD4 801ECD64 348402B9 */   ori   $a0, (0x000102B9 & 0xFFFF) # ori $a0, $a0, 0x2b9
/* 1DDAD8 801ECD68 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DDADC 801ECD6C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DDAE0 801ECD70 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 1DDAE4 801ECD74 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 1DDAE8 801ECD78 8C620000 */  lw    $v0, ($v1)
/* 1DDAEC 801ECD7C 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 1DDAF0 801ECD80 44813000 */  mtc1  $at, $f6
/* 1DDAF4 801ECD84 00021080 */  sll   $v0, $v0, 2
/* 1DDAF8 801ECD88 00A24821 */  addu  $t1, $a1, $v0
/* 1DDAFC 801ECD8C C5240000 */  lwc1  $f4, ($t1)
/* 1DDB00 801ECD90 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DDB04 801ECD94 00220821 */  addu  $at, $at, $v0
/* 1DDB08 801ECD98 46062202 */  mul.s $f8, $f4, $f6
/* 1DDB0C 801ECD9C 44803000 */  mtc1  $zero, $f6
/* 1DDB10 801ECDA0 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 1DDB14 801ECDA4 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 1DDB18 801ECDA8 240400B4 */  li    $a0, 180
/* 1DDB1C 801ECDAC E42864D0 */ swc1 $f8, %lo(D_800E64D0)($at)
/* 1DDB20 801ECDB0 8C620000 */  lw    $v0, ($v1)
/* 1DDB24 801ECDB4 3C01801F */  lui   $at, %hi(D_801F4BB0_ovl10) # $at, 0x801f
/* 1DDB28 801ECDB8 C4304BB0 */  lwc1  $f16, %lo(D_801F4BB0_ovl10)($at)
/* 1DDB2C 801ECDBC 00021080 */  sll   $v0, $v0, 2
/* 1DDB30 801ECDC0 00A25021 */  addu  $t2, $a1, $v0
/* 1DDB34 801ECDC4 C54A0000 */  lwc1  $f10, ($t2)
/* 1DDB38 801ECDC8 3C01800E */ lui $at, %hi(D_800E6690)
/* 1DDB3C 801ECDCC 00220821 */  addu  $at, $at, $v0
/* 1DDB40 801ECDD0 46105482 */  mul.s $f18, $f10, $f16
/* 1DDB44 801ECDD4 E4326690 */ swc1 $f18, %lo(D_800E6690)($at)
/* 1DDB48 801ECDD8 8C6B0000 */  lw    $t3, ($v1)
/* 1DDB4C 801ECDDC 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 1DDB50 801ECDE0 44812000 */  mtc1  $at, $f4
/* 1DDB54 801ECDE4 3C01800E */ lui $at, %hi(D_800E6850)
/* 1DDB58 801ECDE8 000B6080 */  sll   $t4, $t3, 2
/* 1DDB5C 801ECDEC 002C0821 */  addu  $at, $at, $t4
/* 1DDB60 801ECDF0 E4246850 */ swc1 $f4, %lo(D_800E6850)($at)
/* 1DDB64 801ECDF4 8C6D0000 */  lw    $t5, ($v1)
/* 1DDB68 801ECDF8 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DDB6C 801ECDFC 000D7080 */  sll   $t6, $t5, 2
/* 1DDB70 801ECE00 00CEC021 */  addu  $t8, $a2, $t6
/* 1DDB74 801ECE04 E7060000 */  swc1  $f6, ($t8)
/* 1DDB78 801ECE08 8C620000 */  lw    $v0, ($v1)
/* 1DDB7C 801ECE0C 00021080 */  sll   $v0, $v0, 2
/* 1DDB80 801ECE10 00C27821 */  addu  $t7, $a2, $v0
/* 1DDB84 801ECE14 C5E80000 */  lwc1  $f8, ($t7)
/* 1DDB88 801ECE18 00220821 */  addu  $at, $at, $v0
/* 1DDB8C 801ECE1C E4283210 */ swc1 $f8, %lo(D_800E3210)($at)
/* 1DDB90 801ECE20 8C790000 */  lw    $t9, ($v1)
/* 1DDB94 801ECE24 3C01801F */  lui   $at, %hi(D_801F4BB4_ovl10) # $at, 0x801f
/* 1DDB98 801ECE28 C42A4BB4 */  lwc1  $f10, %lo(D_801F4BB4_ovl10)($at)
/* 1DDB9C 801ECE2C 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1DDBA0 801ECE30 00194080 */  sll   $t0, $t9, 2
/* 1DDBA4 801ECE34 00280821 */  addu  $at, $at, $t0
/* 1DDBA8 801ECE38 0C002DAF */  jal   finish_current_thread
/* 1DDBAC 801ECE3C E42A3C90 */ swc1 $f10, %lo(D_800E3C90)($at)
/* 1DDBB0 801ECE40 9209003C */  lbu   $t1, 0x3c($s0)
/* 1DDBB4 801ECE44 11200006 */  beqz  $t1, .L801ECE60_ovl10
/* 1DDBB8 801ECE48 00000000 */   nop   
.L801ECE4C_ovl10:
/* 1DDBBC 801ECE4C 0C002DAF */  jal   finish_current_thread
/* 1DDBC0 801ECE50 24040001 */   li    $a0, 1
/* 1DDBC4 801ECE54 920A003C */  lbu   $t2, 0x3c($s0)
/* 1DDBC8 801ECE58 1540FFFC */  bnez  $t2, .L801ECE4C_ovl10
/* 1DDBCC 801ECE5C 00000000 */   nop   
.L801ECE60_ovl10:
/* 1DDBD0 801ECE60 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 1DDBD4 801ECE64 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 1DDBD8 801ECE68 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1DDBDC 801ECE6C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DDBE0 801ECE70 8D8D0000 */  lw    $t5, ($t4)
/* 1DDBE4 801ECE74 240B0001 */  li    $t3, 1
/* 1DDBE8 801ECE78 8FB00018 */  lw    $s0, 0x18($sp)
/* 1DDBEC 801ECE7C 000D7080 */  sll   $t6, $t5, 2
/* 1DDBF0 801ECE80 002E0821 */  addu  $at, $at, $t6
/* 1DDBF4 801ECE84 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 1DDBF8 801ECE88 03E00008 */  jr    $ra
/* 1DDBFC 801ECE8C 27BD0020 */   addiu $sp, $sp, 0x20
.type func_801ECCEC_ovl10, @function
.size func_801ECCEC_ovl10, . - func_801ECCEC_ovl10
