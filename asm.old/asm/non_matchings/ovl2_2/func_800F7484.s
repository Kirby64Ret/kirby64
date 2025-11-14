glabel func_800F7484
/* 07FEF4 800F7484 3C18800D */  lui   $t8, %hi(D_800D6D10) # $t8, 0x800d
/* 07FEF8 800F7488 27186D10 */  addiu $t8, %lo(D_800D6D10) # addiu $t8, $t8, 0x6d10
/* 07FEFC 800F748C 3C05800D */  lui   $a1, %hi(D_800D6CD0) # $a1, 0x800d
/* 07FF00 800F7490 000478C0 */  sll   $t7, $a0, 3
/* 07FF04 800F7494 3C09800D */  lui   $t1, %hi(D_800D6D10) # $t1, 0x800d
/* 07FF08 800F7498 25296D10 */  addiu $t1, %lo(D_800D6D10) # addiu $t1, $t1, 0x6d10
/* 07FF0C 800F749C 01F83021 */  addu  $a2, $t7, $t8
/* 07FF10 800F74A0 24A56CD0 */  addiu $a1, %lo(D_800D6CD0) # addiu $a1, $a1, 0x6cd0
/* 07FF14 800F74A4 24080020 */  li    $t0, 32
/* 07FF18 800F74A8 3C078000 */  lui   $a3, 0x8000
.L800F74AC_ovl2:
/* 07FF1C 800F74AC 00001025 */  move  $v0, $zero
/* 07FF20 800F74B0 00001825 */  move  $v1, $zero
/* 07FF24 800F74B4 00A02025 */  move  $a0, $a1
.L800F74B8_ovl2:
/* 07FF28 800F74B8 90990000 */  lbu   $t9, ($a0)
/* 07FF2C 800F74BC 24630004 */  addiu $v1, $v1, 4
/* 07FF30 800F74C0 00021042 */  srl   $v0, $v0, 1
/* 07FF34 800F74C4 332A0001 */  andi  $t2, $t9, 1
/* 07FF38 800F74C8 51400003 */  beql  $t2, $zero, .L800F74D8_ovl2
/* 07FF3C 800F74CC 908B0001 */   lbu   $t3, 1($a0)
/* 07FF40 800F74D0 00471025 */  or    $v0, $v0, $a3
/* 07FF44 800F74D4 908B0001 */  lbu   $t3, 1($a0)
.L800F74D8_ovl2:
/* 07FF48 800F74D8 00021042 */  srl   $v0, $v0, 1
/* 07FF4C 800F74DC 316C0001 */  andi  $t4, $t3, 1
/* 07FF50 800F74E0 51800003 */  beql  $t4, $zero, .L800F74F0_ovl2
/* 07FF54 800F74E4 908D0002 */   lbu   $t5, 2($a0)
/* 07FF58 800F74E8 00471025 */  or    $v0, $v0, $a3
/* 07FF5C 800F74EC 908D0002 */  lbu   $t5, 2($a0)
.L800F74F0_ovl2:
/* 07FF60 800F74F0 00021042 */  srl   $v0, $v0, 1
/* 07FF64 800F74F4 31AE0001 */  andi  $t6, $t5, 1
/* 07FF68 800F74F8 51C00003 */  beql  $t6, $zero, .L800F7508_ovl2
/* 07FF6C 800F74FC 908F0003 */   lbu   $t7, 3($a0)
/* 07FF70 800F7500 00471025 */  or    $v0, $v0, $a3
/* 07FF74 800F7504 908F0003 */  lbu   $t7, 3($a0)
.L800F7508_ovl2:
/* 07FF78 800F7508 00021042 */  srl   $v0, $v0, 1
/* 07FF7C 800F750C 31F80001 */  andi  $t8, $t7, 1
/* 07FF80 800F7510 13000002 */  beqz  $t8, .L800F751C_ovl2
/* 07FF84 800F7514 00000000 */   nop   
/* 07FF88 800F7518 00471025 */  or    $v0, $v0, $a3
.L800F751C_ovl2:
/* 07FF8C 800F751C 1468FFE6 */  bne   $v1, $t0, .L800F74B8_ovl2
/* 07FF90 800F7520 24840004 */   addiu $a0, $a0, 4
/* 07FF94 800F7524 24A50020 */  addiu $a1, $a1, 0x20
/* 07FF98 800F7528 24C60004 */  addiu $a2, $a2, 4
/* 07FF9C 800F752C 14A9FFDF */  bne   $a1, $t1, .L800F74AC_ovl2
/* 07FFA0 800F7530 ACC2FFFC */   sw    $v0, -4($a2)
/* 07FFA4 800F7534 03E00008 */  jr    $ra
/* 07FFA8 800F7538 00000000 */   nop   
.type func_800F7484, @function
.size func_800F7484, . - func_800F7484
