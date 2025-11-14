glabel func_800A74D8
/* 04F728 800A74D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04F72C 800A74DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 04F730 800A74E0 0C008322 */  jal   func_80020C88_ovl1
/* 04F734 800A74E4 00000000 */   nop   
/* 04F738 800A74E8 3C059999 */  lui   $a1, (0x99999999 >> 16) # lui $a1, 0x9999
/* 04F73C 800A74EC 34A59999 */  ori   $a1, (0x99999999 & 0xFFFF) # ori $a1, $a1, 0x9999
/* 04F740 800A74F0 0C029D6C */  jal   play_music
/* 04F744 800A74F4 00002025 */   move  $a0, $zero
/* 04F748 800A74F8 0C0082EE */  jal   func_80020BB8_ovl1
/* 04F74C 800A74FC 00002025 */   move  $a0, $zero
/* 04F750 800A7500 50400006 */  beql  $v0, $zero, .L800A751C_ovl1
/* 04F754 800A7504 00002025 */   move  $a0, $zero
.L800A7508_ovl1:
/* 04F758 800A7508 0C0082EE */  jal   func_80020BB8_ovl1
/* 04F75C 800A750C 00002025 */   move  $a0, $zero
/* 04F760 800A7510 1440FFFD */  bnez  $v0, .L800A7508_ovl1
/* 04F764 800A7514 00000000 */   nop   
/* 04F768 800A7518 00002025 */  move  $a0, $zero
.L800A751C_ovl1:
/* 04F76C 800A751C 0C008266 */  jal   func_80020998_ovl1
/* 04F770 800A7520 24057800 */   li    $a1, 30720
/* 04F774 800A7524 3C02800C */  lui   $v0, %hi(D_800C0530) # $v0, 0x800c
/* 04F778 800A7528 24420530 */  addiu $v0, %lo(D_800C0530) # addiu $v0, $v0, 0x530
/* 04F77C 800A752C 944E0000 */  lhu   $t6, ($v0)
/* 04F780 800A7530 3C01800D */  lui   $at, %hi(sMusicCount) # $at, 0x800d
/* 04F784 800A7534 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04F788 800A7538 25CFFFFF */  addiu $t7, $t6, -1
/* 04F78C 800A753C AC2F6B4C */  sw    $t7, %lo(sMusicCount)($at)
/* 04F790 800A7540 94580002 */  lhu   $t8, 2($v0)
/* 04F794 800A7544 3C01800D */ lui $at, %hi(sSoundCount)
/* 04F798 800A7548 27BD0018 */  addiu $sp, $sp, 0x18
/* 04F79C 800A754C 03E00008 */  jr    $ra
/* 04F7A0 800A7550 AC386B50 */ sw $t8, %lo(sSoundCount)($at)
.type func_800A74D8, @function
.size func_800A74D8, . - func_800A74D8
