glabel func_80153A48
/* 137DD8 80153A48 3C0E8016 */  lui   $t6, %hi(D_8015A560) # $t6, 0x8016
/* 137DDC 80153A4C 8DCEA560 */  lw    $t6, %lo(D_8015A560)($t6)
/* 137DE0 80153A50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 137DE4 80153A54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 137DE8 80153A58 91CF0003 */  lbu   $t7, 3($t6)
/* 137DEC 80153A5C 3C19800E */  lui   $t9, 0x800e
/* 137DF0 80153A60 3C028016 */  lui   $v0, %hi(D_8015A668) # $v0, 0x8016
/* 137DF4 80153A64 000FC080 */  sll   $t8, $t7, 2
/* 137DF8 80153A68 0338C821 */  addu  $t9, $t9, $t8
/* 137DFC 80153A6C 8F24E350 */  lw    $a0, -0x1cb0($t9)
/* 137E00 80153A70 2442A668 */  addiu $v0, %lo(D_8015A668) # addiu $v0, $v0, -0x5998
/* 137E04 80153A74 24050010 */  li    $a1, 16
/* 137E08 80153A78 24060001 */  li    $a2, 1
/* 137E0C 80153A7C 0C002A41 */  jal   func_8000A904_ovl6
/* 137E10 80153A80 AC440000 */   sw    $a0, ($v0)
/* 137E14 80153A84 3C098016 */  lui   $t1, %hi(D_8015A668) # $t1, 0x8016
/* 137E18 80153A88 8D29A668 */  lw    $t1, %lo(D_8015A668)($t1)
/* 137E1C 80153A8C 3C088015 */  lui   $t0, %hi(D_8015374C) # $t0, 0x8015
/* 137E20 80153A90 2508374C */  addiu $t0, %lo(D_8015374C) # addiu $t0, $t0, 0x374c
/* 137E24 80153A94 AD28002C */  sw    $t0, 0x2c($t1)
/* 137E28 80153A98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 137E2C 80153A9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 137E30 80153AA0 03E00008 */  jr    $ra
/* 137E34 80153AA4 00000000 */   nop   
.type func_80153A48, @function
.size func_80153A48, . - func_80153A48
