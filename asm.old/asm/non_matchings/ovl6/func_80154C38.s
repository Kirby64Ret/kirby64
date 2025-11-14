glabel func_80154C38
/* 138FC8 80154C38 00047080 */  sll   $t6, $a0, 2
/* 138FCC 80154C3C 3C0F8016 */  lui   $t7, 0x8016
/* 138FD0 80154C40 01EE7821 */  addu  $t7, $t7, $t6
/* 138FD4 80154C44 8DEFA3B4 */  lw    $t7, -0x5c4c($t7)
/* 138FD8 80154C48 3C028016 */  lui   $v0, %hi(D_8015A564) # $v0, 0x8016
/* 138FDC 80154C4C 2442A564 */  addiu $v0, %lo(D_8015A564) # addiu $v0, $v0, -0x5a9c
/* 138FE0 80154C50 AC4F0000 */  sw    $t7, ($v0)
/* 138FE4 80154C54 8DF90000 */  lw    $t9, ($t7)
/* 138FE8 80154C58 3C018016 */  lui   $at, 0x8016
/* 138FEC 80154C5C 03E00008 */  jr    $ra
/* 138FF0 80154C60 AC39A560 */   sw    $t9, -0x5aa0($at)
.type func_80154C38, @function
.size func_80154C38, . - func_80154C38
