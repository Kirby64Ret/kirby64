glabel func_801EEFCC_ovl10
/* 1DFD3C 801EEFCC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1DFD40 801EEFD0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1DFD44 801EEFD4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1DFD48 801EEFD8 AFB20020 */  sw    $s2, 0x20($sp)
/* 1DFD4C 801EEFDC 3C10800F */  lui   $s0, %hi(D_800E98E0) # $s0, 0x800f
/* 1DFD50 801EEFE0 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1DFD54 801EEFE4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1DFD58 801EEFE8 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1DFD5C 801EEFEC 261098E0 */  addiu $s0, %lo(D_800E98E0) # addiu $s0, $s0, -0x6720
/* 1DFD60 801EEFF0 24120003 */  li    $s2, 3
.L801EEFF4_ovl10:
/* 1DFD64 801EEFF4 0C006291 */  jal   random_soft_s32_range
/* 1DFD68 801EEFF8 24040009 */   li    $a0, 9
/* 1DFD6C 801EEFFC 0052001A */  div   $zero, $v0, $s2
/* 1DFD70 801EF000 8E230000 */  lw    $v1, ($s1)
/* 1DFD74 801EF004 00002810 */  mfhi  $a1
/* 1DFD78 801EF008 24A50001 */  addiu $a1, $a1, 1
/* 1DFD7C 801EF00C 8C640000 */  lw    $a0, ($v1)
/* 1DFD80 801EF010 16400002 */  bnez  $s2, .L801EF01C_ovl10
/* 1DFD84 801EF014 00000000 */   nop   
/* 1DFD88 801EF018 0007000D */  break 7
.L801EF01C_ovl10:
/* 1DFD8C 801EF01C 2401FFFF */  li    $at, -1
/* 1DFD90 801EF020 16410004 */  bne   $s2, $at, .L801EF034_ovl10
/* 1DFD94 801EF024 3C018000 */   lui   $at, 0x8000
/* 1DFD98 801EF028 14410002 */  bne   $v0, $at, .L801EF034_ovl10
/* 1DFD9C 801EF02C 00000000 */   nop   
/* 1DFDA0 801EF030 0006000D */  break 6
.L801EF034_ovl10:
/* 1DFDA4 801EF034 00042080 */  sll   $a0, $a0, 2
/* 1DFDA8 801EF038 02043021 */  addu  $a2, $s0, $a0
/* 1DFDAC 801EF03C 8CCE0000 */  lw    $t6, ($a2)
/* 1DFDB0 801EF040 10AEFFEC */  beq   $a1, $t6, .L801EEFF4_ovl10
/* 1DFDB4 801EF044 00000000 */   nop   
/* 1DFDB8 801EF048 24010001 */  li    $at, 1
/* 1DFDBC 801EF04C 10A10007 */  beq   $a1, $at, .L801EF06C_ovl10
/* 1DFDC0 801EF050 24010002 */   li    $at, 2
/* 1DFDC4 801EF054 10A1000E */  beq   $a1, $at, .L801EF090_ovl10
/* 1DFDC8 801EF058 24080008 */   li    $t0, 8
/* 1DFDCC 801EF05C 10B20015 */  beq   $a1, $s2, .L801EF0B4_ovl10
/* 1DFDD0 801EF060 240C000C */   li    $t4, 12
/* 1DFDD4 801EF064 1000001C */  b     .L801EF0D8_ovl10
/* 1DFDD8 801EF068 8FBF0024 */   lw    $ra, 0x24($sp)
.L801EF06C_ovl10:
/* 1DFDDC 801EF06C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DFDE0 801EF070 00240821 */  addu  $at, $at, $a0
/* 1DFDE4 801EF074 AC32DC50 */ sw $s2, %lo(gEntityVtableIndexArray)($at)
/* 1DFDE8 801EF078 8C6F0000 */  lw    $t7, ($v1)
/* 1DFDEC 801EF07C 3C19800F */  lui   $t9, %hi(D_800E98E0) # $t9, 0x800f
/* 1DFDF0 801EF080 273998E0 */  addiu $t9, %lo(D_800E98E0) # addiu $t9, $t9, -0x6720
/* 1DFDF4 801EF084 000FC080 */  sll   $t8, $t7, 2
/* 1DFDF8 801EF088 10000012 */  b     .L801EF0D4_ovl10
/* 1DFDFC 801EF08C 03193021 */   addu  $a2, $t8, $t9
.L801EF090_ovl10:
/* 1DFE00 801EF090 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DFE04 801EF094 00240821 */  addu  $at, $at, $a0
/* 1DFE08 801EF098 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
/* 1DFE0C 801EF09C 8C690000 */  lw    $t1, ($v1)
/* 1DFE10 801EF0A0 3C0B800F */  lui   $t3, %hi(D_800E98E0) # $t3, 0x800f
/* 1DFE14 801EF0A4 256B98E0 */  addiu $t3, %lo(D_800E98E0) # addiu $t3, $t3, -0x6720
/* 1DFE18 801EF0A8 00095080 */  sll   $t2, $t1, 2
/* 1DFE1C 801EF0AC 10000009 */  b     .L801EF0D4_ovl10
/* 1DFE20 801EF0B0 014B3021 */   addu  $a2, $t2, $t3
.L801EF0B4_ovl10:
/* 1DFE24 801EF0B4 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DFE28 801EF0B8 00240821 */  addu  $at, $at, $a0
/* 1DFE2C 801EF0BC AC2CDC50 */ sw $t4, %lo(gEntityVtableIndexArray)($at)
/* 1DFE30 801EF0C0 8C6D0000 */  lw    $t5, ($v1)
/* 1DFE34 801EF0C4 3C0F800F */  lui   $t7, %hi(D_800E98E0) # $t7, 0x800f
/* 1DFE38 801EF0C8 25EF98E0 */  addiu $t7, %lo(D_800E98E0) # addiu $t7, $t7, -0x6720
/* 1DFE3C 801EF0CC 000D7080 */  sll   $t6, $t5, 2
/* 1DFE40 801EF0D0 01CF3021 */  addu  $a2, $t6, $t7
.L801EF0D4_ovl10:
/* 1DFE44 801EF0D4 8FBF0024 */  lw    $ra, 0x24($sp)
.L801EF0D8_ovl10:
/* 1DFE48 801EF0D8 8FB00018 */  lw    $s0, 0x18($sp)
/* 1DFE4C 801EF0DC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1DFE50 801EF0E0 8FB20020 */  lw    $s2, 0x20($sp)
/* 1DFE54 801EF0E4 ACC50000 */  sw    $a1, ($a2)
/* 1DFE58 801EF0E8 03E00008 */  jr    $ra
/* 1DFE5C 801EF0EC 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801EEFCC_ovl10, @function
.size func_801EEFCC_ovl10, . - func_801EEFCC_ovl10
