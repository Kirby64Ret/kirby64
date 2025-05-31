glabel func_801EBC60_ovl10
/* 1DC9D0 801EBC60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DC9D4 801EBC64 AFB00014 */  sw    $s0, 0x14($sp)
/* 1DC9D8 801EBC68 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1DC9DC 801EBC6C 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1DC9E0 801EBC70 8E0E0000 */  lw    $t6, ($s0)
/* 1DC9E4 801EBC74 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DC9E8 801EBC78 AFB10018 */  sw    $s1, 0x18($sp)
/* 1DC9EC 801EBC7C AFA40020 */  sw    $a0, 0x20($sp)
/* 1DC9F0 801EBC80 8DC30000 */  lw    $v1, ($t6)
/* 1DC9F4 801EBC84 3C07800E */ lui $a3, %hi(D_800E1B50)
/* 1DC9F8 801EBC88 3C0F801F */  lui   $t7, %hi(D_801EBDE8) # $t7, 0x801f
/* 1DC9FC 801EBC8C 00031880 */  sll   $v1, $v1, 2
/* 1DCA00 801EBC90 00E33821 */  addu  $a3, $a3, $v1
/* 1DCA04 801EBC94 8CE71B50 */ lw $a3, %lo(D_800E1B50)($a3)
/* 1DCA08 801EBC98 3C01800E */ lui $at, %hi(D_800DF150)
/* 1DCA0C 801EBC9C 00230821 */  addu  $at, $at, $v1
/* 1DCA10 801EBCA0 25EFBDE8 */  addiu $t7, %lo(D_801EBDE8) # addiu $t7, $t7, -0x4218
/* 1DCA14 801EBCA4 3C18801F */  lui   $t8, %hi(D_801F41D8_ovl10) # $t8, 0x801f
/* 1DCA18 801EBCA8 AC2FF150 */ sw $t7, %lo(D_800DF150)($at)
/* 1DCA1C 801EBCAC 271841D8 */  addiu $t8, %lo(D_801F41D8_ovl10) # addiu $t8, $t8, 0x41d8
/* 1DCA20 801EBCB0 ACF80098 */  sw    $t8, 0x98($a3)
/* 1DCA24 801EBCB4 8E020000 */  lw    $v0, ($s0)
/* 1DCA28 801EBCB8 3C11800F */  lui   $s1, %hi(D_800E9E20) # $s1, 0x800f
/* 1DCA2C 801EBCBC 26319E20 */  addiu $s1, %lo(D_800E9E20) # addiu $s1, $s1, -0x61e0
/* 1DCA30 801EBCC0 8C590000 */  lw    $t9, ($v0)
/* 1DCA34 801EBCC4 3C01800F */ lui $at, %hi(D_800E9720)
/* 1DCA38 801EBCC8 240A003C */  li    $t2, 60
/* 1DCA3C 801EBCCC 00194080 */  sll   $t0, $t9, 2
/* 1DCA40 801EBCD0 02284821 */  addu  $t1, $s1, $t0
/* 1DCA44 801EBCD4 AD200000 */  sw    $zero, ($t1)
/* 1DCA48 801EBCD8 8C4B0000 */  lw    $t3, ($v0)
/* 1DCA4C 801EBCDC 3C040001 */  lui   $a0, (0x00010098 >> 16) # lui $a0, 1
/* 1DCA50 801EBCE0 34840098 */  ori   $a0, (0x00010098 & 0xFFFF) # ori $a0, $a0, 0x98
/* 1DCA54 801EBCE4 000B6080 */  sll   $t4, $t3, 2
/* 1DCA58 801EBCE8 002C0821 */  addu  $at, $at, $t4
/* 1DCA5C 801EBCEC AC2A9720 */ sw $t2, %lo(D_800E9720)($at)
/* 1DCA60 801EBCF0 8C4D0000 */  lw    $t5, ($v0)
/* 1DCA64 801EBCF4 3C01800F */ lui $at, %hi(D_800E8920)
/* 1DCA68 801EBCF8 24050023 */  li    $a1, 35
/* 1DCA6C 801EBCFC 000D7080 */  sll   $t6, $t5, 2
/* 1DCA70 801EBD00 002E0821 */  addu  $at, $at, $t6
/* 1DCA74 801EBD04 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1DCA78 801EBD08 0C02A619 */  jal   func_800A9864
/* 1DCA7C 801EBD0C 24060010 */   li    $a2, 16
/* 1DCA80 801EBD10 3C040001 */  lui   $a0, (0x00010546 >> 16) # lui $a0, 1
/* 1DCA84 801EBD14 0C02A7A9 */  jal   func_800A9EA4
/* 1DCA88 801EBD18 34840546 */   ori   $a0, (0x00010546 & 0xFFFF) # ori $a0, $a0, 0x546
/* 1DCA8C 801EBD1C 3C040001 */  lui   $a0, (0x00010545 >> 16) # lui $a0, 1
/* 1DCA90 801EBD20 0C02A7A9 */  jal   func_800A9EA4
/* 1DCA94 801EBD24 34840545 */   ori   $a0, (0x00010545 & 0xFFFF) # ori $a0, $a0, 0x545
/* 1DCA98 801EBD28 8E020000 */  lw    $v0, ($s0)
/* 1DCA9C 801EBD2C 3C01C0C0 */  li    $at, 0xC0C00000 # -6.000000
/* 1DCAA0 801EBD30 44812000 */  mtc1  $at, $f4
/* 1DCAA4 801EBD34 8C4F0000 */  lw    $t7, ($v0)
/* 1DCAA8 801EBD38 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DCAAC 801EBD3C 000FC080 */  sll   $t8, $t7, 2
/* 1DCAB0 801EBD40 00380821 */  addu  $at, $at, $t8
/* 1DCAB4 801EBD44 E4243210 */ swc1 $f4, %lo(D_800E3210)($at)
/* 1DCAB8 801EBD48 8C430000 */  lw    $v1, ($v0)
/* 1DCABC 801EBD4C 00031880 */  sll   $v1, $v1, 2
/* 1DCAC0 801EBD50 0223C821 */  addu  $t9, $s1, $v1
/* 1DCAC4 801EBD54 8F280000 */  lw    $t0, ($t9)
/* 1DCAC8 801EBD58 5500000B */  bnezl $t0, .L801EBD88_ovl10
/* 1DCACC 801EBD5C 3C01C000 */   lui   $at, 0xc000
.L801EBD60_ovl10:
/* 1DCAD0 801EBD60 0C002DAF */  jal   finish_current_thread
/* 1DCAD4 801EBD64 24040001 */   li    $a0, 1
/* 1DCAD8 801EBD68 8E020000 */  lw    $v0, ($s0)
/* 1DCADC 801EBD6C 8C430000 */  lw    $v1, ($v0)
/* 1DCAE0 801EBD70 00031880 */  sll   $v1, $v1, 2
/* 1DCAE4 801EBD74 02234821 */  addu  $t1, $s1, $v1
/* 1DCAE8 801EBD78 8D2B0000 */  lw    $t3, ($t1)
/* 1DCAEC 801EBD7C 1160FFF8 */  beqz  $t3, .L801EBD60_ovl10
/* 1DCAF0 801EBD80 00000000 */   nop   
/* 1DCAF4 801EBD84 3C01C000 */  li    $at, 0xC0000000 # -2.000000
.L801EBD88_ovl10:
/* 1DCAF8 801EBD88 44813000 */  mtc1  $at, $f6
/* 1DCAFC 801EBD8C 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DCB00 801EBD90 00230821 */  addu  $at, $at, $v1
/* 1DCB04 801EBD94 E4263210 */ swc1 $f6, %lo(D_800E3210)($at)
/* 1DCB08 801EBD98 8C4A0000 */  lw    $t2, ($v0)
/* 1DCB0C 801EBD9C 3C01801F */  lui   $at, %hi(D_801F4B80_ovl10) # $at, 0x801f
/* 1DCB10 801EBDA0 C4284B80 */  lwc1  $f8, %lo(D_801F4B80_ovl10)($at)
/* 1DCB14 801EBDA4 3C01800E */ lui $at, %hi(D_800E3750)
/* 1DCB18 801EBDA8 000A6080 */  sll   $t4, $t2, 2
/* 1DCB1C 801EBDAC 002C0821 */  addu  $at, $at, $t4
/* 1DCB20 801EBDB0 E4283750 */ swc1 $f8, %lo(D_800E3750)($at)
/* 1DCB24 801EBDB4 8C4D0000 */  lw    $t5, ($v0)
/* 1DCB28 801EBDB8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1DCB2C 801EBDBC 44815000 */  mtc1  $at, $f10
/* 1DCB30 801EBDC0 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1DCB34 801EBDC4 000D7080 */  sll   $t6, $t5, 2
/* 1DCB38 801EBDC8 002E0821 */  addu  $at, $at, $t6
/* 1DCB3C 801EBDCC 0C02BE85 */  jal   func_800AFA14
/* 1DCB40 801EBDD0 E42A3C90 */ swc1 $f10, %lo(D_800E3C90)($at)
/* 1DCB44 801EBDD4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1DCB48 801EBDD8 8FB00014 */  lw    $s0, 0x14($sp)
/* 1DCB4C 801EBDDC 8FB10018 */  lw    $s1, 0x18($sp)
/* 1DCB50 801EBDE0 03E00008 */  jr    $ra
/* 1DCB54 801EBDE4 27BD0020 */   addiu $sp, $sp, 0x20
.type func_801EBC60_ovl10, @function
.size func_801EBC60_ovl10, . - func_801EBC60_ovl10
